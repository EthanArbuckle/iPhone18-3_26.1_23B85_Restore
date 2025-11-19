@interface BiometricMatchOperation
- (BiometricMatchOperation)init;
@end

@implementation BiometricMatchOperation

- (BiometricMatchOperation)init
{
  v3.receiver = self;
  v3.super_class = BiometricMatchOperation;
  result = [(BiometricOperation *)&v3 init];
  if (result)
  {
    result->_userID = -1;
    result->_noBioLockoutUserID = -1;
  }

  return result;
}

@end