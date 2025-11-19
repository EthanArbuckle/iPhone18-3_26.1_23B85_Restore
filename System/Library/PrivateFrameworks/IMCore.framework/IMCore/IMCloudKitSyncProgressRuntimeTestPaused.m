@interface IMCloudKitSyncProgressRuntimeTestPaused
- (void)willUpdateSyncState:(id)a3;
@end

@implementation IMCloudKitSyncProgressRuntimeTestPaused

- (void)willUpdateSyncState:(id)a3
{
  v6 = a3;
  objc_msgSend_setIMCloudKitSyncDate_(v6, v3, 0);
  objc_msgSend_setIMCloudKitSyncPaused_(v6, v4, 1);
  objc_msgSend_setIMCloudKitIsSyncing_(v6, v5, 0);
}

@end