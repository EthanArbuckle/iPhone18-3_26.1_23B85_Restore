@interface NSError(BSServiceConnection)
- (uint64_t)isBSServiceConnectionError;
@end

@implementation NSError(BSServiceConnection)

- (uint64_t)isBSServiceConnectionError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"BSServiceConnectionErrorDomain"];

  return v2;
}

@end