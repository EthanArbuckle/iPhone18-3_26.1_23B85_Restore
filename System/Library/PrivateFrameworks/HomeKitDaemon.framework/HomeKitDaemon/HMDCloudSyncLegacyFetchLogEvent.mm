@interface HMDCloudSyncLegacyFetchLogEvent
+ (id)fetchCompletedWithError:(id)a3;
@end

@implementation HMDCloudSyncLegacyFetchLogEvent

+ (id)fetchCompletedWithError:(id)a3
{
  v3 = a3;
  v4 = [(HMDCloudSyncOperationLogEvent *)[HMDCloudSyncLegacyFetchLogEvent alloc] initWithError:v3];

  return v4;
}

@end