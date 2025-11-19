@interface IMDCKInitialAttachmentSyncController
- (BOOL)_deviceConditionsAllowsMessageSync;
- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)a3 deviceConditionsToCheck:(unint64_t)a4 currentBatchCount:(int64_t)a5 maxBatchCount:(int64_t)a6;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4;
- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)a3;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)a3 activity:(id)a4 completion:(id)a5;
@end

@implementation IMDCKInitialAttachmentSyncController

- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities:a3];
  v6 = [v5 cloudKitSyncingEnabled];

  v7 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
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
  v8 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
  v9 = [v8 cloudKitSyncingEnabled];

  v10 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
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

- (BOOL)_deviceConditionsAllowsMessageSync
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
  v3 = [v2 cloudKitSyncingEnabled];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Initial sync device conditions check if CloudKit sync is enabled: %d", v7, 8u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)a3
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

- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)a3 activity:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Initial sync. Not writing up attachments", v10, 2u);
    }
  }

  if (v7)
  {
    v7[2](v7, 1, 0);
  }

  return 0;
}

@end