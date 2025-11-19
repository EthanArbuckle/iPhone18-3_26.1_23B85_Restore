@interface HMDCloudSyncLegacyUploadLogEvent
+ (id)uploadCompletedWithError:(id)a3;
@end

@implementation HMDCloudSyncLegacyUploadLogEvent

+ (id)uploadCompletedWithError:(id)a3
{
  v3 = a3;
  v4 = [(HMDCloudSyncOperationLogEvent *)[HMDCloudSyncLegacyUploadLogEvent alloc] initWithError:v3];

  return v4;
}

@end