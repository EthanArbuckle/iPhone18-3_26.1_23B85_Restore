@interface NSError(BSServiceConnection)
- (uint64_t)isBSServiceConnectionError;
@end

@implementation NSError(BSServiceConnection)

- (uint64_t)isBSServiceConnectionError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"BSServiceConnectionErrorDomain"];

  return v2;
}

@end