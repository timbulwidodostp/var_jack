# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Jackknife variance estimates of regression coefficients Use var.jack (pls) With (In) R Software
install.packages("pls")
library("pls")
var_jack = read.csv("https://raw.githubusercontent.com/timbulwidodostp/var_jack/main/var_jack/var_jack.csv",sep = ";")
# Estimation Jackknife variance estimates of regression coefficients Use var.jack (pls) With (In) R Software
Y <- cbind(var_jack$Y_1, var_jack$Y_2, var_jack$Y_3, var_jack$Y_4, var_jack$Y_5, var_jack$Y_6)
X <- cbind(var_jack$X_1, var_jack$X_2, var_jack$X_3, var_jack$X_4, var_jack$X_5)
var_jack <- pcr(Y ~ X, data = var_jack, validation = "LOO", jackknife = TRUE)
var.jack <- var.jack(var_jack, ncomp = 2)
var.jack
# Jackknife variance estimates of regression coefficients Use var.jack (pls) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
