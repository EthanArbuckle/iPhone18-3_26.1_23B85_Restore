@interface HMBCloudZonePullResult
- (HMBCloudZonePullResult)initWithProcessingFuture:(id)future;
@end

@implementation HMBCloudZonePullResult

- (HMBCloudZonePullResult)initWithProcessingFuture:(id)future
{
  futureCopy = future;
  v9.receiver = self;
  v9.super_class = HMBCloudZonePullResult;
  v6 = [(HMBCloudZonePullResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processingFuture, future);
  }

  return v7;
}

@end