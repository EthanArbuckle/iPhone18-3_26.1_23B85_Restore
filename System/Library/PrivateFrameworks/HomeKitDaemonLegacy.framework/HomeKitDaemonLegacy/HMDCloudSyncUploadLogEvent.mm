@interface HMDCloudSyncUploadLogEvent
+ (id)uploadCompletedWithError:(id)error;
@end

@implementation HMDCloudSyncUploadLogEvent

+ (id)uploadCompletedWithError:(id)error
{
  errorCopy = error;
  v4 = [(HMDCloudSyncOperationLogEvent *)[HMDCloudSyncUploadLogEvent alloc] initWithError:errorCopy];

  return v4;
}

@end