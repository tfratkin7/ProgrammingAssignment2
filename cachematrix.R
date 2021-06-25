## The purpose of the functions below are to cache the inverse of a matrix.

## makeCacheMatrix creates a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
              m <- x$getmean()
              if(!is.null(m)) {
              message("get cached data")
              return(m)
  }
              data <- x$get()
              m <- mean(data, ...)
              x$setmean(m)
              m
}


## cacheSolve computes the inverse of the special matrix returned by 
## makeCacheMatrix

cacheSolve <- function(x, ...) {
         solve(x)
        ## Return a matrix that is the inverse of 'x'
}
