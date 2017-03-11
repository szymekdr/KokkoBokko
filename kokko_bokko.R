## Kokko - Modelling for field biologists an other interesting people


# Chapter 1 ---------------------------------------------------------------

# shape of y in relation to x

m <- 10
curve(m*x/(m*x+1-x), xlim=c(0,1), ylim=c(0,1),
      xlab="Frequency of A allele, x", ylab="Probability that a mating male has A, y")

m <- 5
curve(m*x/(m*x+1-x), add=T)
m <- 1.5
curve(m*x/(m*x+1-x), add=T)

# future frequency of A for different values of m and b

x <- seq(0,1,0.01)
y <- m*x/(m*x+(1-x))

N <- 1000
B <- 20

b <- 0.9
m <- 5

nA <- N*(x*y*b*B + 0.5*x*(1-y)*B+0.5*(1-x)*y*b*B)
na <- N*(0.5*x*(1-y)*B+0.5*(1-x)*y*b*B+(1-x)*(1-y)*B)

x_pr <- nA/(na+nA)

plot(x, x_pr, type="l", xlim=c(0,1), ylim=c(0,1), xlab="Current frequency of A",
     ylab="Future frequency of A")
abline(a=0,b=1,lty=2)



b <- 0.1
m <- 5

nA <- N*(x*y*b*B + 0.5*x*(1-y)*B+0.5*(1-x)*y*b*B)
na <- N*(0.5*x*(1-y)*B+0.5*(1-x)*y*b*B+(1-x)*(1-y)*B)

x_pr <- nA/(na+nA)

plot(x, x_pr, type="l", xlim=c(0,1), ylim=c(0,1), xlab="Current frequency of A",
     ylab="Future frequency of A")
abline(a=0,b=1,lty=2)



# overall condition for fixation/loss of allele
# the curve b=1/m describes the equilibrium where every frequency of A is stable

# in the function we substitute 1/m with 1/x
curve(1/x, ylim=c(0,1), xlim=c(1,5),xlab="A allele advantage, m", ylab="Fecundity cost, b")
