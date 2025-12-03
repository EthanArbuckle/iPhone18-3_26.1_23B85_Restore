@interface IMCloudKitSyncProgressRuntimeTestDownloading
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitSyncProgressRuntimeTestDownloading

- (void)willUpdateSyncState:(id)state
{
  stateCopy = state;
  objc_msgSend_setIMCloudKitSyncDate_(stateCopy, v3, 0);
  objc_msgSend_setIMCloudKitSyncControllerSyncState_(stateCopy, v4, 2);
  objc_msgSend_setIMCloudKitSyncControllerSyncRecordType_(stateCopy, v5, 1);
}

@end