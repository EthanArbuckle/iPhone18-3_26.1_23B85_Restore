@interface CKDWalrusCheckResult
- (CKDWalrusCheckResult)initWithIsWalrusEnabled:(BOOL)enabled;
@end

@implementation CKDWalrusCheckResult

- (CKDWalrusCheckResult)initWithIsWalrusEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = CKDWalrusCheckResult;
  result = [(CKDWalrusCheckResult *)&v5 init];
  if (result)
  {
    result->_isWalrusEnabled = enabled;
  }

  return result;
}

@end