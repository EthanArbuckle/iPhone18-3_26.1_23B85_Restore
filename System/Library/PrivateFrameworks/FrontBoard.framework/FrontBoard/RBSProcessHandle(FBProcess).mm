@interface RBSProcessHandle(FBProcess)
- (uint64_t)fb_canTaskSuspend;
@end

@implementation RBSProcessHandle(FBProcess)

- (uint64_t)fb_canTaskSuspend
{
  result = [self isManaged];
  if (result)
  {
    return [self isDaemon] ^ 1;
  }

  return result;
}

@end