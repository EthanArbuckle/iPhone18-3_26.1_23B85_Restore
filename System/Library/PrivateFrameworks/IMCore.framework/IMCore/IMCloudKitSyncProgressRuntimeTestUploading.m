@interface IMCloudKitSyncProgressRuntimeTestUploading
- (void)setUp;
- (void)willUpdateSyncState:(id)a3;
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

- (void)willUpdateSyncState:(id)a3
{
  v6 = a3;
  objc_msgSend_setIMCloudKitSyncDate_(v6, v3, 0);
  objc_msgSend_setIMCloudKitSyncControllerSyncState_(v6, v4, 4);
  objc_msgSend_setIMCloudKitSyncControllerSyncRecordType_(v6, v5, 1);
}

@end