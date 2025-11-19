@interface HMDResidentSyncClientDefaultDataSource
- (void)performWithDelay:(unsigned int)a3 block:(id)a4;
@end

@implementation HMDResidentSyncClientDefaultDataSource

- (void)performWithDelay:(unsigned int)a3 block:(id)a4
{
  v4 = 1000000000 * a3;
  v5 = a4;
  v6 = dispatch_time(0, v4);
  v7 = dispatch_get_global_queue(0, 0);
  dispatch_after(v6, v7, v5);
}

@end