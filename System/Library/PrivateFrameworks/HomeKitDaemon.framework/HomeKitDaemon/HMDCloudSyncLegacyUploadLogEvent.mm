@interface HMDCloudSyncLegacyUploadLogEvent
+ (id)uploadCompletedWithError:(id)error;
@end

@implementation HMDCloudSyncLegacyUploadLogEvent

+ (id)uploadCompletedWithError:(id)error
{
  errorCopy = error;
  v4 = [(HMDCloudSyncOperationLogEvent *)[HMDCloudSyncLegacyUploadLogEvent alloc] initWithError:errorCopy];

  return v4;
}

@end