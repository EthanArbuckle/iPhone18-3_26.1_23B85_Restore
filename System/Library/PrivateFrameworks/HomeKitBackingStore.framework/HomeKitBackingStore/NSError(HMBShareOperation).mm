@interface NSError(HMBShareOperation)
- (BOOL)hmbIsRetryShareOperationError;
@end

@implementation NSError(HMBShareOperation)

- (BOOL)hmbIsRetryShareOperationError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"HMBShareOperationErrorDomain"])
  {
    v3 = [a1 code] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end