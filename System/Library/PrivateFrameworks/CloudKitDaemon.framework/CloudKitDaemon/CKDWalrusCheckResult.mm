@interface CKDWalrusCheckResult
- (CKDWalrusCheckResult)initWithIsWalrusEnabled:(BOOL)a3;
@end

@implementation CKDWalrusCheckResult

- (CKDWalrusCheckResult)initWithIsWalrusEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKDWalrusCheckResult;
  result = [(CKDWalrusCheckResult *)&v5 init];
  if (result)
  {
    result->_isWalrusEnabled = a3;
  }

  return result;
}

@end