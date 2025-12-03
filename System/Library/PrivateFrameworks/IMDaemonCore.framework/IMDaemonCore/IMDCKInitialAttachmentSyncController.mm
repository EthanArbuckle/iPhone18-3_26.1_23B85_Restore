@interface IMDCKInitialAttachmentSyncController
- (BOOL)_deviceConditionsAllowsMessageSync;
- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)enabled;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion;
@end

@implementation IMDCKInitialAttachmentSyncController

- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities:count];
  cloudKitSyncingEnabled = [v5 cloudKitSyncingEnabled];

  ckUtilities = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
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
  ckUtilities = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  ckUtilities2 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
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

- (BOOL)_deviceConditionsAllowsMessageSync
{
  v8 = *MEMORY[0x277D85DE8];
  ckUtilities = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = cloudKitSyncingEnabled;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Initial sync device conditions check if CloudKit sync is enabled: %d", v7, 8u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return cloudKitSyncingEnabled;
}

- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)enabled
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Initial sync device conditions ignoring feature enabled: always TRUE", v5, 2u);
    }
  }

  return 1;
}

- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Initial sync. Not writing up attachments", v10, 2u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  return 0;
}

@end