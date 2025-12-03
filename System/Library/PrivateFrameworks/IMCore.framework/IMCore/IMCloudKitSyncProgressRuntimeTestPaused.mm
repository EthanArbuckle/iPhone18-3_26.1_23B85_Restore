@interface IMCloudKitSyncProgressRuntimeTestPaused
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestPaused

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  objc_msgSend_setIMCloudKitSyncDate_(stateCopy, v3, 0);
  objc_msgSend_setIMCloudKitSyncPaused_(stateCopy, v4, 1);
  objc_msgSend_setIMCloudKitIsSyncing_(stateCopy, v5, 0);
}

@end