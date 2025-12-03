@interface IMCloudKitSyncProgressRuntimeTestPreparing
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestPreparing

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  objc_msgSend_setIMCloudKitSyncControllerSyncState_(stateCopy, v3, 1);
  objc_msgSend_setIMCloudKitSyncControllerSyncRecordType_(stateCopy, v4, 1);
  objc_msgSend_setIMCloudKitSyncDate_(stateCopy, v5, 0);
}

@end