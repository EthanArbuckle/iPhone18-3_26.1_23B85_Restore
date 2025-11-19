@interface HMDCloudSyncFetchLogEvent
+ (id)fetchCompletedWithError:(id)a3;
@end

@implementation HMDCloudSyncFetchLogEvent

+ (id)fetchCompletedWithError:(id)a3
{
  v3 = a3;
  v4 = [(HMDCloudSyncOperationLogEvent *)[HMDCloudSyncFetchLogEvent alloc] initWithError:v3];

  return v4;
}

@end