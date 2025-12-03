@interface HDAsynchronousTask
- (void)setQueue:(uint64_t)queue;
@end

@implementation HDAsynchronousTask

- (void)setQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 24), a2);
  }
}

@end