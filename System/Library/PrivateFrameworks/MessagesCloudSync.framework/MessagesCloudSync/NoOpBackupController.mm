@interface NoOpBackupController
- (void)sendDeviceIDToCloudKitWithCompletion:(id)a3;
- (void)toggleiCloudBackupsIfNeeded:(id)a3;
@end

@implementation NoOpBackupController

- (void)toggleiCloudBackupsIfNeeded:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)sendDeviceIDToCloudKitWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

@end