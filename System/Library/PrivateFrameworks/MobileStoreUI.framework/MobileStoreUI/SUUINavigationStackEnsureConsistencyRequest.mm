@interface SUUINavigationStackEnsureConsistencyRequest
- (BOOL)isEqual:(id)equal;
- (SUUINavigationStackEnsureConsistencyRequest)initWithNavigationControllerOperation:(int64_t)operation operationDidComplete:(BOOL)complete;
@end

@implementation SUUINavigationStackEnsureConsistencyRequest

- (SUUINavigationStackEnsureConsistencyRequest)initWithNavigationControllerOperation:(int64_t)operation operationDidComplete:(BOOL)complete
{
  v7.receiver = self;
  v7.super_class = SUUINavigationStackEnsureConsistencyRequest;
  result = [(SUUINavigationStackEnsureConsistencyRequest *)&v7 init];
  if (result)
  {
    result->_navigationControllerOperation = operation;
    result->_operationDidComplete = complete;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_navigationControllerOperation == equalCopy->_navigationControllerOperation && self->_operationDidComplete == equalCopy->_operationDidComplete;
  }

  return v5;
}

@end