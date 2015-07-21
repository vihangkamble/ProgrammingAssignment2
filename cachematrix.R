## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
### This function has denitions for setting, accessing the matrix as well as
### setting, accessing the matrix inverse. 
makeCacheMatrix <- function(x = matrix()) {
  # Set the inverse to be NULL matrix
  inverseMatrix <<-matrix()
  # function definition for seting the matrix
  setMatrix <- function(y){
    x<<-y
    inverseMatrix <<-matrix()
  }  
  # function definition for geting the matrix
  getMatrix <- function() x
  # function definition for storing the matrix inverse
  setMatrixInverse <- function(matrixInv){
    inverseMatrix <<-matrixInv
  }
  getMatrixInverse <- function() inverseMatrix
  
  list(setMatrix = setMatrix, getMatrix= getMatrix, 
       setMatrixInverse = setMatrixInverse, getMatrixInverse = getMatrixInverse)
}


## Write a short comment describing this function
### This function first accesses the Inverse of the matrix and 
### if it NULL then it calculates the matrix inverse by using solve function.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrixInv <-x$getMatrixInverse()
  ### Check if all the elements of matrixInv are NULL, if so then calculate 
  ### the inverse using solve function
  if(isTRUE(all.equal(is.na(matrixInv),
                      matrix(TRUE,dim(matrixInv)[1],dim(matrixInv)[2])))) {
    message("Calculating Matrix Inverse ")
    inverseMat <-solve(x$getMatrix())
    ### Set the matrix inverse
    x$setMatrixInverse(inverseMat)
    }
  # Return Matrix inverse
  x$getMatrixInverse()
}
