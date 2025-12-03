@interface NoOpBackupController
- (void)sendDeviceIDToCloudKitWithCompletion:(id)completion;
- (void)toggleiCloudBackupsIfNeeded:(id)needed;
@end

@implementation NoOpBackupController

- (void)toggleiCloudBackupsIfNeeded:(id)needed
{
  if (needed)
  {
    (*(needed + 2))(needed, 0, 0);
  }
}

- (void)sendDeviceIDToCloudKitWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

@end