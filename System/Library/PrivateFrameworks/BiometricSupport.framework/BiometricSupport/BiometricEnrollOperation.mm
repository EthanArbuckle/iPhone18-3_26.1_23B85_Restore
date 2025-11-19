@interface BiometricEnrollOperation
- (BiometricEnrollOperation)init;
@end

@implementation BiometricEnrollOperation

- (BiometricEnrollOperation)init
{
  v3.receiver = self;
  v3.super_class = BiometricEnrollOperation;
  result = [(BiometricOperation *)&v3 init];
  if (result)
  {
    result->_userID = -1;
  }

  return result;
}

@end