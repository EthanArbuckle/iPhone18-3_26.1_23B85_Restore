@interface NSError(HMBShareOperation)
- (BOOL)hmbIsRetryShareOperationError;
@end

@implementation NSError(HMBShareOperation)

- (BOOL)hmbIsRetryShareOperationError
{
  domain = [self domain];
  if ([domain isEqualToString:@"HMBShareOperationErrorDomain"])
  {
    v3 = [self code] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end