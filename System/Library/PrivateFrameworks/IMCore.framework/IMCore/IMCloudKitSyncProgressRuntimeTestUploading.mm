@interface IMCloudKitSyncProgressRuntimeTestUploading
- (void)setUp;
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestUploading

- (void)setUp
{
  v7.receiver = self;
  v7.super_class = IMCloudKitSyncProgressRuntimeTestUploading;
  [(IMCloudKitSyncProgressRuntimeTest *)&v7 setUp];
  objc_msgSend_setProgressRescheduleDelay_(self, v3, v4, 0.0);
  objc_msgSend_setProgressCount_(self, v5, 0);
  objc_msgSend_setMaxProgressCount_(self, v6, 5);
}

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  objc_msgSend_setIMCloudKitSyncDate_(stateCopy, v3, 0);
  objc_msgSend_setIMCloudKitSyncControllerSyncState_(stateCopy, v4, 4);
  objc_msgSend_setIMCloudKitSyncControllerSyncRecordType_(stateCopy, v5, 1);
}

@end