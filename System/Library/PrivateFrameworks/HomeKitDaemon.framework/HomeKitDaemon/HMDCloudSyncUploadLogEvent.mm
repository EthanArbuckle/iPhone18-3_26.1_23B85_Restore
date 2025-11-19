@interface HMDCloudSyncUploadLogEvent
+ (id)uploadCompletedWithError:(id)a3;
@end

@implementation HMDCloudSyncUploadLogEvent

+ (id)uploadCompletedWithError:(id)a3
{
  v3 = a3;
  v4 = [(HMDCloudSyncOperationLogEvent *)[HMDCloudSyncUploadLogEvent alloc] initWithError:v3];

  return v4;
}

@end