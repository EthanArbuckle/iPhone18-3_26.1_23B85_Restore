@interface NSCoder(HMDUtilities)
- (uint64_t)hmd_isForLocalStore;
@end

@implementation NSCoder(HMDUtilities)

- (uint64_t)hmd_isForLocalStore
{
  if ([self hmd_isForXPCTransport])
  {
    return 0;
  }

  else
  {
    return [self hmd_isForRemoteTransport] ^ 1;
  }
}

@end