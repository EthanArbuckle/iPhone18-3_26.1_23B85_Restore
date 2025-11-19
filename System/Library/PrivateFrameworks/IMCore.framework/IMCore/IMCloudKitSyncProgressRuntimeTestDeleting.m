@interface IMCloudKitSyncProgressRuntimeTestDeleting
- (void)willUpdateSyncState:(id)a3;
@end

@implementation IMCloudKitSyncProgressRuntimeTestDeleting

- (void)willUpdateSyncState:(id)a3
{
  v6 = a3;
  objc_msgSend_setIMCloudKitSyncDate_(v6, v3, 0);
  objc_msgSend_setIMCloudKitSyncControllerSyncState_(v6, v4, 3);
  objc_msgSend_setIMCloudKitSyncControllerSyncRecordType_(v6, v5, 1);
}

@end