@interface HMBCloudDatabaseDataSource
- (void)performAfterDelay:(double)a3 block:(id)a4;
@end

@implementation HMBCloudDatabaseDataSource

- (void)performAfterDelay:(double)a3 block:(id)a4
{
  v4 = (a3 * 1000000000.0);
  v5 = a4;
  v6 = dispatch_time(0, v4);
  v7 = dispatch_get_global_queue(21, 0);
  dispatch_after(v6, v7, v5);
}

@end