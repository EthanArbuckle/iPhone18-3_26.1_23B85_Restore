@interface IMDCKBackupControllerProxy
+ (id)sharedInstance;
- (void)sendDeviceIDToCloudKitWithCompletion:(id)a3;
- (void)setFirstSyncDateToNow;
- (void)toggleiCloudBackupsIfNeeded:(id)a3;
@end

@implementation IMDCKBackupControllerProxy

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5A74F8;
  block[3] = &unk_278702AF8;
  block[4] = a1;
  if (qword_2814210B8 != -1)
  {
    dispatch_once(&qword_2814210B8, block);
  }

  v2 = qword_281420FC0;

  return v2;
}

- (void)setFirstSyncDateToNow
{
  v2 = +[IMDCKBackupController sharedInstance];
  [v2 setFirstSyncDateToNow];
}

- (void)toggleiCloudBackupsIfNeeded:(id)a3
{
  v3 = a3;
  v4 = +[IMDCKBackupController sharedInstance];
  [v4 toggleiCloudBackupsIfNeeded:v3];
}

- (void)sendDeviceIDToCloudKitWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[IMDCKBackupController sharedInstance];
  [v4 sendDeviceIDToCloudKitWithCompletion:v3];
}

@end