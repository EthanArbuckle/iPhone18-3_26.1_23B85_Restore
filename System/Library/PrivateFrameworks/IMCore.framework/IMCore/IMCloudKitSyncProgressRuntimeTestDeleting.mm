@interface IMCloudKitSyncProgressRuntimeTestDeleting
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestDeleting

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  objc_msgSend_setIMCloudKitSyncDate_(stateCopy, v3, 0);
  objc_msgSend_setIMCloudKitSyncControllerSyncState_(stateCopy, v4, 3);
  objc_msgSend_setIMCloudKitSyncControllerSyncRecordType_(stateCopy, v5, 1);
}

@end