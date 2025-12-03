@interface HMDCloudSyncFetchLogEvent
+ (id)fetchCompletedWithError:(id)error;
@end

@implementation HMDCloudSyncFetchLogEvent

+ (id)fetchCompletedWithError:(id)error
{
  errorCopy = error;
  v4 = [(HMDCloudSyncOperationLogEvent *)[HMDCloudSyncFetchLogEvent alloc] initWithError:errorCopy];

  return v4;
}

@end