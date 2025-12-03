@interface IMDCKInitialMessageSyncController
- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion;
- (void)syncMessagesWithSyncType:(int64_t)type deviceConditionsToCheck:(unint64_t)check activity:(id)activity completionBlock:(id)block;
@end

@implementation IMDCKInitialMessageSyncController

- (void)syncMessagesWithSyncType:(int64_t)type deviceConditionsToCheck:(unint64_t)check activity:(id)activity completionBlock:(id)block
{
  blockCopy = block;
  activityCopy = activity;
  [(IMDCKInitialMessageSyncController *)self setSyncToken:0];
  v12.receiver = self;
  v12.super_class = IMDCKInitialMessageSyncController;
  [(IMDCKMessageSyncController *)&v12 syncMessagesWithSyncType:type deviceConditionsToCheck:check activity:activityCopy completionBlock:blockCopy];
}

- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(IMDCKInitialMessageSyncController *)self ckUtilities:count];
  cloudKitSyncingEnabled = [v5 cloudKitSyncingEnabled];

  ckUtilities = [(IMDCKInitialMessageSyncController *)self ckUtilities];
  iCloudAccountMatchesiMessageAccount = [ckUtilities iCloudAccountMatchesiMessageAccount];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (cloudKitSyncingEnabled)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (iCloudAccountMatchesiMessageAccount)
      {
        v10 = @"YES";
      }

      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Initial sync device conditions check if CloudKit sync is enabled: %@ has accounts %@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return cloudKitSyncingEnabled & iCloudAccountMatchesiMessageAccount;
}

- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v21 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  ckUtilities = [(IMDCKInitialMessageSyncController *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  ckUtilities2 = [(IMDCKInitialMessageSyncController *)self ckUtilities];
  iCloudAccountMatchesiMessageAccount = [ckUtilities2 iCloudAccountMatchesiMessageAccount];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (cloudKitSyncingEnabled)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (iCloudAccountMatchesiMessageAccount)
      {
        v13 = @"YES";
      }

      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Initial sync device conditions check if CloudKit sync is enabled: %@, hasAccounts %@", &v17, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return cloudKitSyncingEnabled & iCloudAccountMatchesiMessageAccount;
}

- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B6CC440;
  v9[3] = &unk_2787028B0;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  return 0;
}

@end