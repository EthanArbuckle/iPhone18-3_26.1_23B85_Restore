@interface RBSProcessHandle(FBProcess)
- (uint64_t)fb_canTaskSuspend;
@end

@implementation RBSProcessHandle(FBProcess)

- (uint64_t)fb_canTaskSuspend
{
  result = [a1 isManaged];
  if (result)
  {
    return [a1 isDaemon] ^ 1;
  }

  return result;
}

@end