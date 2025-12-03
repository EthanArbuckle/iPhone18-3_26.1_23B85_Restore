@interface HMBCloudDatabaseDataSource
- (void)performAfterDelay:(double)delay block:(id)block;
@end

@implementation HMBCloudDatabaseDataSource

- (void)performAfterDelay:(double)delay block:(id)block
{
  v4 = (delay * 1000000000.0);
  blockCopy = block;
  v6 = dispatch_time(0, v4);
  v7 = dispatch_get_global_queue(21, 0);
  dispatch_after(v6, v7, blockCopy);
}

@end