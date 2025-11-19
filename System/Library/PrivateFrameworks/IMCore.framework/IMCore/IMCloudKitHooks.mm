@interface IMCloudKitHooks
+ (id)logHandle;
+ (id)sharedInstance;
- (BOOL)eligibleForTruthZone;
- (BOOL)isDisablingDevices;
- (BOOL)isEnabled;
- (BOOL)isInExitState;
- (BOOL)isStartingSync;
- (BOOL)isSyncing;
- (BOOL)mocAccountsMatch;
- (BOOL)rampedIntoTruthZone;
- (BOOL)removedFromiCloudBackup;
- (BOOL)serverBagAllowsOnboarding;
- (BOOL)shouldShowCloudKitUI;
- (IMCloudKitHooks)init;
- (id)exitDate;
- (id)lastSyncDate;
- (id)logHandle;
- (int64_t)isChangingEnabledState;
- (void)_didAttemptToDisableAllDevicesResult:(BOOL)a3;
- (void)_didAttemptToSetEnabledTo:(BOOL)a3 result:(BOOL)a4;
- (void)_didPerformAdditionalStorageRequiredCheckWithSuccess:(BOOL)a3 additionalStorageRequired:(unint64_t)a4 forAccountId:(id)a5 error:(id)a6;
- (void)_updateCloudKitProgressWithDictionary:(id)a3;
- (void)_updateCloudKitState;
- (void)_updateCloudKitStateWithDictionary:(id)a3;
- (void)broadcastCloudKitState;
- (void)broadcastCloudKitStateAfterClearingErrors;
- (void)broadcastCloudKitStateAfterFetchingAccountStatus;
- (void)cancelSync:(id)a3;
- (void)clearAnalyticDefaultsAndLocalSyncState;
- (void)clearChatZoneSyncToken;
- (void)clearDataFromCloudKit;
- (void)clearLocalSyncState;
- (void)createAttachmentZone;
- (void)createChatZone;
- (void)currentStorageOnDeviceWithReply:(id)a3;
- (void)deleteAttachmentZone;
- (void)deleteChatZone;
- (void)deleteExitRecord;
- (void)deleteMessagesZone;
- (void)deleteSalt;
- (void)downloadAttachmentAssets;
- (void)fetchAccountStatusAndUpdateMiCSwitchEligibility;
- (void)fetchCloudKitSyncStateDebuggingInfo:(id)a3;
- (void)fetchExitRecord;
- (void)fetchLatestRampState;
- (void)fetchLatestSalt;
- (void)fetchSyncStateStatistics;
- (void)initiatePeriodicSync;
- (void)loadDeletedMessagesWithLimit:(int64_t)a3;
- (void)loadDirtyMessagesWithLimit:(int64_t)a3;
- (void)markAllChatsAsDirty;
- (void)metricAttachments:(int64_t)a3;
- (void)performAdditionalStorageRequiredCheck;
- (void)printCachedRampState;
- (void)printCachedSalt;
- (void)purgeAttachments:(int64_t)a3;
- (void)removePathFromiCloudBackups:(id)a3;
- (void)reportMetricToCK:(id)a3 withDict:(id)a4;
- (void)setupIMCloudKitHooks;
- (void)simulateCloudKitSyncWithSyncState:(id)a3;
- (void)startUserInitiatedSync;
- (void)syncAttachments;
- (void)syncDeletesToCloudKit;
- (void)syncMessages;
- (void)toggleiCloudBackupsIfNeeded;
- (void)tryToDisableAllDevices;
- (void)updateAttachmentFileSizes;
- (void)uploadDailyAnalyticstoCloudKit;
- (void)writeAttachments;
- (void)writeCloudKitSyncCounts:(id)a3;
- (void)writeDirtyChats;
- (void)writeDirtyMessages;
- (void)writeExitRecord;
@end

@implementation IMCloudKitHooks

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8246858;
  block[3] = &unk_1E78102B8;
  block[4] = a1;
  if (qword_1ED767740 != -1)
  {
    dispatch_once(&qword_1ED767740, block);
  }

  v2 = qword_1ED767758;

  return v2;
}

- (BOOL)isEnabled
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6E00];
  v4 = IMGetDomainBoolForKeyWithDefaultValue();
  v5 = *MEMORY[0x1E69A6D58];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v4)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      if (v6)
      {
        v8 = @"YES";
      }

      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "isEnabled returning = isCloudKitEnabled = %@ isInExitState(%@) ", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (IMCloudKitHooks)init
{
  v4.receiver = self;
  v4.super_class = IMCloudKitHooks;
  v2 = [(IMCloudKitHooks *)&v4 init];
  if (v2)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &unk_1F1B6FE20);
  }

  return v2;
}

- (BOOL)mocAccountsMatch
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6A70];
  v4 = IMGetDomainBoolForKey();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "iCloud and iMessage accounts match ? %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)broadcastCloudKitState
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_broadcastCloudKitState(v5, v6, v7);
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return objc_msgSend_logHandle(v2, v3, v4);
}

+ (id)logHandle
{
  if (qword_1ED767788 != -1)
  {
    sub_1A825C444();
  }

  v3 = qword_1ED767770;

  return v3;
}

- (void)uploadDailyAnalyticstoCloudKit
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_uploadDailyAnalyticstoCloudKit(v5, v6, v7);
}

- (void)clearAnalyticDefaultsAndLocalSyncState
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_clearAnalyticDefaultsAndLocalSyncState(v5, v6, v7);
}

- (void)setupIMCloudKitHooks
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2);
  v16 = objc_msgSend_bundleIdentifier(v3, v4, v5);

  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"%@-CloudKitHooks", v16);
  v9 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  objc_msgSend_addListenerID_capabilities_(v9, v10, v6, *MEMORY[0x1E69A6250] | 0x40000000u);

  v13 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
  objc_msgSend_blockUntilConnected(v13, v14, v15);
}

- (void)createChatZone
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_createChatZone(v5, v6, v7);
}

- (void)writeDirtyChats
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_writeDirtyChats(v5, v6, v7);
}

- (void)deleteChatZone
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_deleteChatZone(v5, v6, v7);
}

- (void)markAllChatsAsDirty
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_markAllChatsAsDirty(v5, v6, v7);
}

- (void)clearChatZoneSyncToken
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_clearChatZoneSyncToken(v5, v6, v7);
}

- (void)createAttachmentZone
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_createAttachmentZone(v5, v6, v7);
}

- (void)writeAttachments
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_writeAttachments(v5, v6, v7);
}

- (void)syncAttachments
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_syncAttachments(v5, v6, v7);
}

- (void)deleteAttachmentZone
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_deleteAttachmentZone(v5, v6, v7);
}

- (void)writeDirtyMessages
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_writeDirtyMessages(v5, v6, v7);
}

- (void)deleteMessagesZone
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_deleteMessagesZone(v5, v6, v7);
}

- (void)writeExitRecord
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_writeExitRecord(v5, v6, v7);
}

- (void)fetchExitRecord
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_fetchExitRecord(v5, v6, v7);
}

- (void)deleteExitRecord
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_deleteExitRecord(v5, v6, v7);
}

- (void)syncMessages
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_syncMessages(v5, v6, v7);
}

- (void)downloadAttachmentAssets
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_downloadAttachmentAssets(v5, v6, v7);
}

- (void)initiatePeriodicSync
{
  v3 = *MEMORY[0x1E69A6D10];
  v4 = *MEMORY[0x1E69A6DA0];
  IMSetDomainBoolForKey();
  objc_msgSend__updateCloudKitState(self, v5, v6);
  v14 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  v11 = objc_msgSend_remoteDaemon(v14, v9, v10);
  objc_msgSend_initiatePeriodicSync(v11, v12, v13);
}

- (void)startUserInitiatedSync
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_startUserInitiatedSync(v5, v6, v7);
}

- (void)loadDirtyMessagesWithLimit:(int64_t)a3
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, a3);
  v6 = objc_msgSend_remoteDaemon(v8, v4, v5);
  objc_msgSend_loadDirtyMessagesWithLimit_(v6, v7, a3);
}

- (void)clearLocalSyncState
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_clearLocalCloudKitSyncState(v5, v6, v7);
}

- (void)clearDataFromCloudKit
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_clearDataFromCloudKit(v5, v6, v7);
}

- (BOOL)shouldShowCloudKitUI
{
  v23 = *MEMORY[0x1E69E9840];
  isEnabled = objc_msgSend_isEnabled(self, a2, v2);
  v7 = objc_msgSend_eligibleForTruthZone(self, v5, v6);
  v10 = objc_msgSend_rampedIntoTruthZone(self, v8, v9);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      if (isEnabled)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v17 = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      if (v10)
      {
        v12 = @"YES";
      }

      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "shouldShowCloudKitUI - isEnabled(%@) eligibleForTruthZone(%@), rampedIntoTruthZone(%@)", &v17, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return (isEnabled ^ 1) & v7 & v10;
}

- (void)currentStorageOnDeviceWithReply:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Calculating current storage on device for iCloud", v12, 2u);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
  objc_msgSend_currentStorageOnDeviceWithReply_(v10, v11, v3);
}

- (void)performAdditionalStorageRequiredCheck
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Request to check if additinal storage is required to store all messages", v11, 2u);
    }
  }

  v5 = objc_msgSend_sharedController(IMDaemonController, v2, v3);
  v8 = objc_msgSend_remoteDaemon(v5, v6, v7);
  objc_msgSend_performAdditionalStorageRequiredCheck(v8, v9, v10);
}

- (void)fetchAccountStatusAndUpdateMiCSwitchEligibility
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_fetchAccountStatusAndUpdateMiCSwitchEligibility(v5, v6, v7);
}

- (void)tryToDisableAllDevices
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to try and disable cloudkit on all devices", v16, 2u);
    }
  }

  v4 = *MEMORY[0x1E69A6D10];
  v5 = *MEMORY[0x1E69A6D88];
  IMSetDomainBoolForKey();
  objc_msgSend__updateCloudKitState(self, v6, v7);
  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v13 = objc_msgSend_remoteDaemon(v10, v11, v12);
  objc_msgSend_tryToDisableAllDevices(v13, v14, v15);
}

- (BOOL)removedFromiCloudBackup
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6D60];
  v4 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "removedFromiCloudBackup returning = %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)rampedIntoTruthZone
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "rampedIntoTruthZone always returning YES, this shouldn't be called anymore.", v4, 2u);
    }
  }

  return 1;
}

- (BOOL)eligibleForTruthZone
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6D50];
  v4 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "eligibleForTruthZone returning = %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)cancelSync:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Sync cancellation requested", v12, 2u);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
  objc_msgSend_cancelSync_(v10, v11, v3);
}

- (BOOL)isStartingSync
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6D98];
  if (IMGetDomainBoolForKeyWithDefaultValue())
  {
    v4 = 1;
  }

  else
  {
    v5 = *MEMORY[0x1E69A6DA0];
    v4 = IMGetDomainBoolForKeyWithDefaultValue();
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "isStartingSync returning = %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isSyncing
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isMessagesIniCloudVersion2 = objc_msgSend_isMessagesIniCloudVersion2(v3, v4, v5);

  v7 = *MEMORY[0x1E69A6D10];
  if (isMessagesIniCloudVersion2)
  {
    v8 = *MEMORY[0x1E69A6DE0];
    v9 = IMGetCachedDomainValueForKey();
    v12 = objc_msgSend_unsignedIntegerValue(v9, v10, v11);
    LOBYTE(v13) = v12 != 0;
    v14 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "isSyncing returning = YES", &v20, 2u);
        }

LABEL_16:
      }
    }

    else if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "isSyncing returning = NO", &v20, 2u);
      }

      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v16 = *MEMORY[0x1E69A6D68];
  v13 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (v13)
      {
        v17 = @"YES";
      }

      v20 = 138412290;
      v21 = v17;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "isSyncing returning = %@", &v20, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)lastSyncDate
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6DC8];
  v4 = IMGetCachedDomainValueForKey();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Requesting last sync date: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_didAttemptToSetEnabledTo:(BOOL)a3 result:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v5)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (v4)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "didAttemptToSetEnabledTo returned: targetEnabled:%@ result%@ clients should update values", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E7F34;
  block[3] = &unk_1E7814DC8;
  v11 = v4;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v9 = *MEMORY[0x1E69E9840];
}

- (int64_t)isChangingEnabledState
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6D90];
  v4 = IMGetCachedDomainValueForKey();
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_integerValue(v4, v5, v6);
  }

  else
  {
    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = IMStringFromCloudKitChangingSettingState();
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "isChangingEnabledState returning = %@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_didPerformAdditionalStorageRequiredCheckWithSuccess:(BOOL)a3 additionalStorageRequired:(unint64_t)a4 forAccountId:(id)a5 error:(id)a6
{
  v8 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      *buf = 138413058;
      if (v8)
      {
        v12 = @"YES";
      }

      v22 = v12;
      v23 = 2048;
      v24 = a4;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "didPerformAdditionalStorageRequiredCheck returned with success: %@, additionalStorageRequired %llu for iCloud account id %@, error: %@", buf, 0x2Au);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A83E8314;
  v16[3] = &unk_1E7814E10;
  v20 = v8;
  v18 = v10;
  v19 = a4;
  v17 = v9;
  v13 = v10;
  v14 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isDisablingDevices
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6D88];
  v4 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "isDisabling devices returning = %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_didAttemptToDisableAllDevicesResult:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "_didAttemptToDisableAllDevicesResult returned: result:%@ clients should update values", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E8674;
  block[3] = &unk_1E7813DC0;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)isInExitState
{
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6D58];
  return IMGetDomainBoolForKeyWithDefaultValue();
}

- (id)exitDate
{
  v2 = *MEMORY[0x1E69A6D10];
  v3 = *MEMORY[0x1E69A6D18];
  return IMGetCachedDomainValueForKey();
}

- (void)_updateCloudKitStateWithDictionary:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_logHandle(self, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E5108(v4, v7);
  }

  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend_postNotificationName_object_userInfo_(v10, v11, @"com.apple.IMCore.IMCloudKitHooks.ValuesChanged", self, v4);
}

- (void)_updateCloudKitProgressWithDictionary:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_logHandle(self, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E5180(v4, v7);
  }

  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend_postNotificationName_object_userInfo_(v10, v11, @"com.apple.IMCore.IMCloudKitHooks.ProgressChanged", self, v4);
}

- (void)_updateCloudKitState
{
  v4 = objc_msgSend_logHandle(self, a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E51F8(v4);
  }

  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isMessagesIniCloudVersion2 = objc_msgSend_isMessagesIniCloudVersion2(v7, v8, v9);

  if ((isMessagesIniCloudVersion2 & 1) == 0)
  {
    v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
    v16 = objc_msgSend_syncStateDictionary(self, v14, v15);
    objc_msgSend_postNotificationName_object_userInfo_(v13, v17, @"com.apple.IMCore.IMCloudKitHooks.ValuesChanged", self, v16);
  }
}

- (void)loadDeletedMessagesWithLimit:(int64_t)a3
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, a3);
  v6 = objc_msgSend_remoteDaemon(v8, v4, v5);
  objc_msgSend_loadDeletedMessagesWithLimit_(v6, v7, a3);
}

- (void)fetchLatestSalt
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_fetchLatestSalt(v5, v6, v7);
}

- (void)printCachedSalt
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_printCachedSalt(v5, v6, v7);
}

- (void)deleteSalt
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_deleteSalt(v5, v6, v7);
}

- (void)metricAttachments:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = a3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Metric attachments in cloudkit hooks bytes: %lld", &v13, 0xCu);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
  objc_msgSend_metricAttachments_(v10, v11, a3);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)purgeAttachments:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = a3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Purge attachments in cloudkit hooks bytes: %lld", &v13, 0xCu);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
  objc_msgSend_purgeAttachments_(v10, v11, a3);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateAttachmentFileSizes
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Update attachment file sizes", v11, 2u);
    }
  }

  v5 = objc_msgSend_sharedController(IMDaemonController, v2, v3);
  v8 = objc_msgSend_remoteDaemon(v5, v6, v7);
  objc_msgSend_updateAttachmentFileSizes(v8, v9, v10);
}

- (void)fetchSyncStateStatistics
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_fetchSyncStateStatistics(v5, v6, v7);
}

- (void)writeCloudKitSyncCounts:(id)a3
{
  v3 = a3;
  v10 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v10, v6, v7);
  objc_msgSend_writeCloudKitSyncCounts_(v8, v9, v3);
}

- (void)toggleiCloudBackupsIfNeeded
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_toggleiCloudBackupsIfNeeded(v5, v6, v7);
}

- (void)removePathFromiCloudBackups:(id)a3
{
  v3 = a3;
  v10 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v10, v6, v7);
  objc_msgSend_removePathFromiCloudBackups_(v8, v9, v3);
}

- (void)fetchLatestRampState
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_fetchLatestRampState(v5, v6, v7);
}

- (void)printCachedRampState
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_printCachedRampState(v5, v6, v7);
}

- (void)syncDeletesToCloudKit
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_syncDeletesToCloudKit(v5, v6, v7);
}

- (void)fetchCloudKitSyncStateDebuggingInfo:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Fetching sync state debugging info…", v12, 2u);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
  objc_msgSend_fetchCloudKitSyncStateDebuggingInfo_(v10, v11, v3);
}

- (void)simulateCloudKitSyncWithSyncState:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Simulating sync with sync state", v12, 2u);
    }
  }

  v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
  objc_msgSend_simulateCloudKitSyncWithSyncState_(v10, v11, v3);
}

- (void)broadcastCloudKitStateAfterFetchingAccountStatus
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_broadcastCloudKitStateAfterFetchingAccountStatus(v5, v6, v7);
}

- (void)broadcastCloudKitStateAfterClearingErrors
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_broadcastCloudKitStateAfterClearingErrors(v5, v6, v7);
}

- (void)reportMetricToCK:(id)a3 withDict:(id)a4
{
  v5 = a4;
  v6 = a3;
  v13 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  v11 = objc_msgSend_remoteDaemon(v13, v9, v10);
  objc_msgSend_reportMetricToCK_withDict_(v11, v12, v6, v5);
}

- (BOOL)serverBagAllowsOnboarding
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IMBagIntValueWithDefault();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v4, v2);
      v8 = 138412546;
      v9 = &unk_1F1BA18C0;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Onboarding local version: %@, server version: %@", &v8, 0x16u);
    }
  }

  result = v2 < 2;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end