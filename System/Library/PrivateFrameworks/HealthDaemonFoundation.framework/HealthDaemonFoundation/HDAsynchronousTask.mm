@interface HDAsynchronousTask
- (void)setQueue:(uint64_t)a1;
@end

@implementation HDAsynchronousTask

- (void)setQueue:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

@end