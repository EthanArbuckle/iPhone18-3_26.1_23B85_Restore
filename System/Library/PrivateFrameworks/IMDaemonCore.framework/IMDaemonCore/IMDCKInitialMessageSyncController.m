@interface IMDCKInitialMessageSyncController
- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)a3 deviceConditionsToCheck:(unint64_t)a4 currentBatchCount:(int64_t)a5 maxBatchCount:(int64_t)a6;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)a3 activity:(id)a4 completion:(id)a5;
- (void)syncMessagesWithSyncType:(int64_t)a3 deviceConditionsToCheck:(unint64_t)a4 activity:(id)a5 completionBlock:(id)a6;
@end

@implementation IMDCKInitialMessageSyncController

- (void)syncMessagesWithSyncType:(int64_t)a3 deviceConditionsToCheck:(unint64_t)a4 activity:(id)a5 completionBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  [(IMDCKInitialMessageSyncController *)self setSyncToken:0];
  v12.receiver = self;
  v12.super_class = IMDCKInitialMessageSyncController;
  [(IMDCKMessageSyncController *)&v12 syncMessagesWithSyncType:a3 deviceConditionsToCheck:a4 activity:v11 completionBlock:v10];
}

- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(IMDCKInitialMessageSyncController *)self ckUtilities:a3];
  v6 = [v5 cloudKitSyncingEnabled];

  v7 = [(IMDCKInitialMessageSyncController *)self ckUtilities];
  v8 = [v7 iCloudAccountMatchesiMessageAccount];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v6)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (v8)
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
  return v6 & v8;
}

- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)a3 deviceConditionsToCheck:(unint64_t)a4 currentBatchCount:(int64_t)a5 maxBatchCount:(int64_t)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(IMDCKInitialMessageSyncController *)self ckUtilities];
  v9 = [v8 cloudKitSyncingEnabled];

  v10 = [(IMDCKInitialMessageSyncController *)self ckUtilities];
  v11 = [v10 iCloudAccountMatchesiMessageAccount];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (v9)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (v11)
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
  return v9 & v11;
}

- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)a3 activity:(id)a4 completion:(id)a5
{
  v6 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B6CC440;
  v9[3] = &unk_2787028B0;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  return 0;
}

@end