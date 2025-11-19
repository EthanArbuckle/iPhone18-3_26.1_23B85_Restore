@interface IMCloudKitSyncProgressRuntimeTestPreparing
- (void)willUpdateSyncState:(id)a3;
@end

@implementation IMCloudKitSyncProgressRuntimeTestPreparing

- (void)willUpdateSyncState:(id)a3
{
  v6 = a3;
  objc_msgSend_setIMCloudKitSyncControllerSyncState_(v6, v3, 1);
  objc_msgSend_setIMCloudKitSyncControllerSyncRecordType_(v6, v4, 1);
  objc_msgSend_setIMCloudKitSyncDate_(v6, v5, 0);
}

@end