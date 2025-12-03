@interface HMDCloudSyncLegacyFetchLogEvent
+ (id)fetchCompletedWithError:(id)error;
@end

@implementation HMDCloudSyncLegacyFetchLogEvent

+ (id)fetchCompletedWithError:(id)error
{
  errorCopy = error;
  v4 = [(HMDCloudSyncOperationLogEvent *)[HMDCloudSyncLegacyFetchLogEvent alloc] initWithError:errorCopy];

  return v4;
}

@end