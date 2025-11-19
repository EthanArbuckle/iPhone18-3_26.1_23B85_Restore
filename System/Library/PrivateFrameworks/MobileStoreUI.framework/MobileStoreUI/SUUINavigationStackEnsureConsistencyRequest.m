@interface SUUINavigationStackEnsureConsistencyRequest
- (BOOL)isEqual:(id)a3;
- (SUUINavigationStackEnsureConsistencyRequest)initWithNavigationControllerOperation:(int64_t)a3 operationDidComplete:(BOOL)a4;
@end

@implementation SUUINavigationStackEnsureConsistencyRequest

- (SUUINavigationStackEnsureConsistencyRequest)initWithNavigationControllerOperation:(int64_t)a3 operationDidComplete:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = SUUINavigationStackEnsureConsistencyRequest;
  result = [(SUUINavigationStackEnsureConsistencyRequest *)&v7 init];
  if (result)
  {
    result->_navigationControllerOperation = a3;
    result->_operationDidComplete = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_navigationControllerOperation == v4->_navigationControllerOperation && self->_operationDidComplete == v4->_operationDidComplete;
  }

  return v5;
}

@end