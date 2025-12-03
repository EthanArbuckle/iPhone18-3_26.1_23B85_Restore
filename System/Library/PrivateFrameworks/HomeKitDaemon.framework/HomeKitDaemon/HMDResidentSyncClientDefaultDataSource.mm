@interface HMDResidentSyncClientDefaultDataSource
- (void)performWithDelay:(unsigned int)delay block:(id)block;
@end

@implementation HMDResidentSyncClientDefaultDataSource

- (void)performWithDelay:(unsigned int)delay block:(id)block
{
  v4 = 1000000000 * delay;
  blockCopy = block;
  v6 = dispatch_time(0, v4);
  v7 = dispatch_get_global_queue(0, 0);
  dispatch_after(v6, v7, blockCopy);
}

@end