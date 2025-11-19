@interface IMDCKSyncController
+ (IMDCKSyncController)sharedInstance;
- (BOOL)_accountHasMultipleDevices;
- (BOOL)_chatSyncedRecently;
- (BOOL)_completedPeriodicSyncSinceFirstFullSyncForLastSyncDate:(id)a3 firstFullSyncCompletedDate:(id)a4;
- (BOOL)_didUpgradeOrRestoreFromBackup;
- (BOOL)_errorIndicatesDeviceNotGoodForSync:(id)a3;
- (BOOL)_handleSyncFailureType:(int64_t)a3 step:(int64_t)a4 activity:(id)a5 attemptCount:(unint64_t)a6 startTime:(id)a7 error:(id)a8 retry:(id)a9;
- (BOOL)_hasTriedToEnableMiCByDefault;
- (BOOL)_serverAllowsUIRefreshTimerWhileSyncing;
- (BOOL)_serverAllowsUIRefreshWhileSyncing;
- (BOOL)_serverDoesNotAllowComingBackOnlineChatSync;
- (BOOL)_serverDoesNotSingleDeviceLimitation;
- (BOOL)_shouldEnableMiCByDefaultUponReinstallation;
- (BOOL)_syncNotCompletedRecently;
- (BOOL)logCloudKitAnalytics;
- (BOOL)shouldMarkAllIncompatibleMessagesForDeletion;
- (BOOL)verifyAccountsMatchForMoc;
- (IMDCKSyncController)init;
- (double)_IMAHDAgentFallbackIntervalInSeconds;
- (double)_minimumChatComingOnlineSyncInterval;
- (id)_dailySyncStateDictionary;
- (id)_dateForNext24LogDumpAtHour:(int64_t)a3 timeNow:(id)a4 dumpNow:(BOOL *)a5;
- (id)_keychainErrorWithCause:(id)a3;
- (id)_periodicSyncStateDictionary;
- (id)_stringForDate:(id)a3 withFormatter:(id)a4;
- (id)_stringForObject:(id)a3;
- (id)attachmentSyncController;
- (id)initialAttachmentSyncController;
- (id)initialMessageSyncController;
- (id)messageSyncController;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)syncStateDebuggingInfo:(id)a3;
- (id)updateSyncController;
- (int)_maxRetryAttemptsToEnableMiCByDefault;
- (int64_t)_manualSyncAttemptCount;
- (int64_t)_periodicSyncAttemptCount;
- (unint64_t)_maxTimeToDeferInSeconds;
- (void)_addDatesDefaultsIfNeededToDictionary:(id)a3;
- (void)_addDatesDefaultsIfNeededToDictionary:(id)a3 keys:(id)a4;
- (void)_attemptToEnableMiCByDefaultOnceAttempt:(int)a3;
- (void)_autoBugCaptureWithSubType:(id)a3 debugDescription:(id)a4;
- (void)_beginExitStateCleanupIfNeededWithActivity:(id)a3;
- (void)_callSyncWithCompletion:(id)a3 activity:(id)a4;
- (void)_clearTombstonesWithActivity:(id)a3;
- (void)_didPassAccountAndIdentityUpdateNeeds;
- (void)_iCloudAccountDidChange:(id)a3;
- (void)_ifCloudKitAbleToSyncWithActivity:(id)a3 callBlock:(id)a4;
- (void)_needsSyncOnAccountUpdate;
- (void)_needsSyncOnIdentityUpdate;
- (void)_noteMetricsForSyncStartFrom:(id)a3 fullSync:(BOOL)a4;
- (void)_noteSyncStarted:(BOOL)a3;
- (void)_nukeCKData;
- (void)_postMetricsToCloudKitOnAutomaticHistoryDeletionAgentLaunch;
- (void)_refreshUIWhileSyncing;
- (void)_reloadChatRegistryOnMainThread;
- (void)_resetSyncStateAndAttemptCounts;
- (void)_setHasTriedToEnableMiCByDefault;
- (void)_submitCloudKitAnalyticWithOperationGroupName:(id)a3 analyticDictionary:(id)a4;
- (void)_writeDownSyncDate;
- (void)beginInitialSyncWithActivity:(id)a3;
- (void)beginPeriodicSyncWithActivity:(id)a3;
- (void)beginPeriodicSyncWithChecks:(unint64_t)a3 priority:(const char *)a4 reason:(id)a5;
- (void)beginUserInitiatedSync;
- (void)clearAnalyticDefaultsAndLocalSyncState;
- (void)clearCKRelatedDefaults;
- (void)clearLocalCloudKitSyncState;
- (void)dealloc;
- (void)eventStreamHandler:(id)a3 didReceiveEventWithName:(id)a4 userInfo:(id)a5;
- (void)handleAKUserInfoChangedNotification:(id)a3;
- (void)idsAccountsDidChange;
- (void)kickOffEagerSyncIfApplicable;
- (void)performOneTimeAccountUpgradeCheckIfNeeded;
- (void)recordMetricIsCloudKitEnabled;
- (void)refreshUIIfApplicableWithBatchCount:(unint64_t)a3;
- (void)registerCloudSyncDependencies;
- (void)registerForAccountNotifications;
- (void)resumeSyncOnLaunchIfNeeded;
- (void)scheduleAttachmentAssetDownload;
- (void)syncAttachmentMetadataFirstSyncWithActivity:(id)a3 deviceConditionsToCheck:(unint64_t)a4 completionBlock:(id)a5;
- (void)syncCoordinatorFinishedFetchingRecordsOfType:(int64_t)a3 name:(id)a4 identifier:(id)a5 count:(int64_t)a6 error:(id)a7;
- (void)syncCoordinatorFinishedSyncWithName:(id)a3 identifier:(id)a4 error:(id)a5;
- (void)syncCoordinatorStartedSyncWithName:(id)a3 identifier:(id)a4;
- (void)syncCoordinatorWaitingForImportToFinishWithName:(id)a3 identifier:(id)a4;
- (void)syncDeletesToCloudKitWithActivity:(id)a3 completion:(id)a4;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)systemDidUnlock;
- (void)updateSecurityLevelDowngradedIfNeeded:(id)a3;
@end

@implementation IMDCKSyncController

+ (IMDCKSyncController)sharedInstance
{
  if (qword_2814211C0 != -1)
  {
    sub_22B7D8700();
  }

  v3 = qword_281421048;

  return v3;
}

- (void)resumeSyncOnLaunchIfNeeded
{
  v3 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v4 = [v3 cloudKitSyncingEnabled];

  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Attempting to resume sync on launch of imagent", v9, 2u);
      }
    }

    v7 = [(IMDCKSyncController *)self syncResumer];
    [v7 attemptToResumeSyncIfAppropriate];
  }

  else
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not syncing chats from coming back online -- clearing tombstones for deletes only ", buf, 2u);
      }
    }

    [(IMDCKSyncController *)self _clearTombstonesWithActivity:0];
  }
}

- (void)systemDidUnlock
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "systemDidUnlock", buf, 2u);
    }
  }

  if ([(IMDCKSyncController *)self shouldReloadConversations])
  {
    [(IMDCKSyncController *)self setShouldReloadConversations:0];
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Refreshing UI after unlock", v5, 2u);
      }
    }

    [(IMDCKSyncController *)self _refreshUIWhileSyncing];
  }
}

- (void)syncCoordinatorStartedSyncWithName:(id)a3 identifier:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Kicked off sync with name: %@, identifier: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinatorFinishedSyncWithName:(id)a3 identifier:(id)a4 error:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Finished sync with name: %@, identifier: %@, and error: %@", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinatorFinishedFetchingRecordsOfType:(int64_t)a3 name:(id)a4 identifier:(id)a5 count:(int64_t)a6 error:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 134219010;
      v17 = a6;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2048;
      v23 = a3;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Finished fetching (%ld) records for sync with name: %@, identifier %@ of type %ld (%@)", &v16, 0x34u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinatorWaitingForImportToFinishWithName:(id)a3 identifier:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Sync waiting for importer to finish with name: %@, identifier: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)messageSyncController
{
  v3 = +[IMDCKMessageSyncController sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B66A128;
  v7[3] = &unk_278702FA0;
  v4 = v3;
  v8 = v4;
  v9 = self;
  if (qword_281421268 != -1)
  {
    dispatch_once(&qword_281421268, v7);
  }

  v5 = v4;

  return v4;
}

- (id)initialMessageSyncController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B66A1C8;
  block[3] = &unk_278702FF0;
  block[4] = self;
  if (qword_27D8CFFE0 != -1)
  {
    dispatch_once(&qword_27D8CFFE0, block);
  }

  return qword_27D8CFFD8;
}

- (id)attachmentSyncController
{
  v3 = +[IMDCKAttachmentSyncController sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B66A2F8;
  v7[3] = &unk_278702FA0;
  v4 = v3;
  v8 = v4;
  v9 = self;
  if (qword_281421368 != -1)
  {
    dispatch_once(&qword_281421368, v7);
  }

  v5 = v4;

  return v4;
}

- (id)updateSyncController
{
  v3 = +[IMDCKUpdateSyncController sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B66A3C8;
  v7[3] = &unk_278702FA0;
  v4 = v3;
  v8 = v4;
  v9 = self;
  if (qword_27D8CFFE8 != -1)
  {
    dispatch_once(&qword_27D8CFFE8, v7);
  }

  v5 = v4;

  return v4;
}

- (id)initialAttachmentSyncController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B66A474;
  block[3] = &unk_278702FF0;
  block[4] = self;
  if (qword_27D8CFFF8 != -1)
  {
    dispatch_once(&qword_27D8CFFF8, block);
  }

  return qword_27D8CFFF0;
}

- (unint64_t)_maxTimeToDeferInSeconds
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-client-max-time-to-defer-nightly-sync"];
  v4 = [v3 unsignedIntegerValue];
  if (v4)
  {
    v5 = arc4random() % v4;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Max Time to defer from server bag %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Max Time to defer default value %@", &v12, 0xCu);
      }
    }

    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_postMetricsToCloudKitOnAutomaticHistoryDeletionAgentLaunch
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "_postMetricsToCloudKitOnAutomaticHistoryDeletionAgentLaunch", v5, 2u);
    }
  }

  if (![(IMDCKAbstractSyncController *)self isSyncing])
  {
    v4 = [(IMDCKSyncController *)self exitManager];
    [v4 sendCloudKitZoneFetchRequestToNoteFeatureIsOn];
  }
}

- (void)idsAccountsDidChange
{
  if ([(IMDCKSyncController *)self verifyAccountsMatchForMoc])
  {
    v3 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v4 = [v3 cloudKitSyncingEnabled];

    if ((v4 & 1) == 0)
    {
      [(IMDCKSyncController *)self _attemptToEnableMiCByDefaultOnce];
    }

    [(IMDCKSyncController *)self _attemptToMigrateACAccountEnablementOnce];
  }
}

- (void)_iCloudAccountDidChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v6 = [v5 cloudKitSyncingEnabled];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Received iCloud Account change notification, syncing enabled: %@", buf, 0xCu);
    }
  }

  v9 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B66A974;
  v11[3] = &unk_278707460;
  v12 = v6;
  v11[4] = self;
  [v9 fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_didUpgradeOrRestoreFromBackup
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [v2 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A00]];

  return v3;
}

- (BOOL)_hasTriedToEnableMiCByDefault
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [v2 getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A18]];

  if (v3)
  {
    v4 = [v3 intValue] > 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setHasTriedToEnableMiCByDefault
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setValue:&unk_283F4EC60 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A18]];
}

- (void)_attemptToEnableMiCByDefaultOnceAttempt:(int)a3
{
  v45 = *MEMORY[0x277D85DE8];
  if ([(IMDCKSyncController *)self _hasTriedToEnableMiCByDefault])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Enable MiC by default: already tried, skipping", buf, 2u);
      }

LABEL_51:

      goto LABEL_63;
    }

    goto LABEL_63;
  }

  v6 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v7 = [v6 signedIntoiCloudAccount];

  if ((v7 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Enable MiC by default: needs icloud login, skipping", buf, 2u);
      }

      goto LABEL_51;
    }

    goto LABEL_63;
  }

  v8 = [(IMDCKAbstractSyncController *)self ckUtilities];
  if ([v8 deviceIsPhoneOrWatch])
  {
  }

  else
  {
    v9 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v10 = [v9 signedIntoiMessageAccount];

    if ((v10 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Enable MiC by default: needs iMessage login, skipping", buf, 2u);
        }

        goto LABEL_51;
      }

      goto LABEL_63;
    }
  }

  v11 = [MEMORY[0x277D1ACB8] sharedInstance];
  v12 = [v11 isUnderFirstDataProtectionLock];

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Enable MiC by default: isUnderFirstUnlock, deferring to unlock", buf, 2u);
      }
    }

    v14 = [MEMORY[0x277D1A990] sharedInstance];
    [v14 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D199F0]];

    goto LABEL_63;
  }

  v15 = +[IMDCKUtilities sharedInstance];
  v16 = [v15 shouldAttemptMiCOnByDefault];

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v36) = v16;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Enable MiC by default: shouldAttemptMiCOnByDefault %d", buf, 8u);
    }
  }

  if ((v16 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Enable MiC by default: we are not onboarding new users, we won't check again", buf, 2u);
      }
    }

    goto LABEL_62;
  }

  v18 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v19 = [v18 cloudKitSyncingEnabled];

  v20 = [(IMDCKSyncController *)self _didUpgradeOrRestoreFromBackup];
  v21 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v22 = [v21 iCloudAccountMatchesiMessageAccount];

  v23 = [(IMDCKSyncController *)self _shouldEnableMiCByDefaultUponReinstallation];
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = @"YES";
      if (v19)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      *buf = 138413314;
      v36 = v26;
      if (v20)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v37 = 2112;
      v38 = v27;
      if (v22)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v39 = 2112;
      v40 = v28;
      if (!v23)
      {
        v25 = @"NO";
      }

      v41 = 2112;
      v42 = @"NO";
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Enable MiC by default: isSyncingEnabled %@ didRestore %@ accountsMatch %@ hasEnabled %@, MiC was enabled before uninstalling %@", buf, 0x34u);
    }
  }

  if (((v19 | v20) & 1) != 0 || ((v22 ^ 1) & 1) != 0 || !v23)
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v36) = a3;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Enable MiC by default: criteria do not allow enablement on attempt %d, will not enable, won't try again.", buf, 8u);
      }
    }

LABEL_62:
    [(IMDCKSyncController *)self _setHasTriedToEnableMiCByDefault];
    goto LABEL_63;
  }

  if (![(IMDCKSyncController *)self isFetchingExitForEnablement])
  {
    [(IMDCKSyncController *)self setIsFetchingExitForEnablement:1];
    v30 = +[IMDCKExitManager sharedInstance];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_22B66B3D4;
    v33[3] = &unk_2787074B0;
    v33[4] = self;
    v34 = a3;
    [v30 exitRecordDateWithCompletion:v33];

    goto LABEL_63;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Enable MiC by default: Already fetching exit record, exiting early", buf, 2u);
    }

    goto LABEL_51;
  }

LABEL_63:
  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldEnableMiCByDefaultUponReinstallation
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Messages.InstallationState"];
  v3 = [v2 BOOLForKey:@"micWasEnabled"];
  v4 = v3 | ~[v2 BOOLForKey:*MEMORY[0x277D19A00]];

  return v4 & 1;
}

- (int)_maxRetryAttemptsToEnableMiCByDefault
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:*MEMORY[0x277D19A48]];

  if (v3 && [v3 intValue] >= 1)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (void)registerForAccountNotifications
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Registering for account notifications", buf, 2u);
    }
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__iCloudAccountDidChange_ name:*MEMORY[0x277CBBF00] object:0];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Registered for cloudkit account change notifications", v6, 2u);
    }
  }
}

- (id)_dateForNext24LogDumpAtHour:(int64_t)a3 timeNow:(id)a4 dumpNow:(BOOL *)a5
{
  v5 = 0;
  if (a3 <= 0x18 && a4)
  {
    v8 = MEMORY[0x277CBEA80];
    v9 = a4;
    v10 = [v8 currentCalendar];
    v11 = [MEMORY[0x277CBEAA8] date];
    v5 = [v10 dateBySettingHour:a3 minute:0 second:0 ofDate:v11 options:0];

    [v5 timeIntervalSinceDate:v9];
    v13 = v12;

    if (v13 <= 0.0)
    {
      v14 = [v5 dateByAddingTimeInterval:86400.0];

      *a5 = v13 > -3600.0;
      v5 = v14;
    }
  }

  return v5;
}

- (double)_IMAHDAgentFallbackIntervalInSeconds
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-imahd-sync-interval"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4 * 60.0 * 60.0;
  }

  else
  {
    v5 = 43200.0;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_IMAHDAgentFallbackInterval %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_syncNotCompletedRecently
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  v4 = [v3 lastSyncDate];

  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;
  v9 = 1;
  if (v4)
  {
    [(IMDCKSyncController *)self _IMAHDAgentFallbackIntervalInSeconds];
    if (v7 <= v8)
    {
      v9 = 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
      v12 = v11;
      v13 = @"NO";
      v16 = 138412802;
      v17 = v4;
      v18 = 2112;
      if (v9)
      {
        v13 = @"YES";
      }

      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Last synced date %@ timeInterval %@, syncNotCompletedRecently %@", &v16, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)kickOffEagerSyncIfApplicable
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v3 = [v2 cloudKitSyncingEnabled];

  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [MEMORY[0x277CCABB0] numberWithDouble:10.0];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "attempting to kick off an eager sync in %@ seconds", &v9, 0xCu);
      }
    }

    im_dispatch_after();
  }

  else if (v4)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ignoring request to kick off of eager sync, since syncing is disabled", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (IMDCKSyncController)init
{
  v27.receiver = self;
  v27.super_class = IMDCKSyncController;
  v2 = [(IMDCKSyncController *)&v27 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Init IMDCKSyncController", v26, 2u);
      }
    }

    v4 = [(IMDCKAbstractSyncController *)v2 syncState];
    [v4 clearLocalCloudKitSyncState];

    [(IMDCKSyncController *)v2 registerForAccountNotifications];
    v5 = objc_alloc(MEMORY[0x277D1AC68]);
    v6 = [v5 initWithObject:v2 title:@"MiC State" queue:MEMORY[0x277D85CD0]];
    [(IMDCKSyncController *)v2 setStateCaptureAssistant:v6];

    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      v7 = +[IMDDistributedNotificationXPCEventStreamHandler sharedInstance];
      v8 = MEMORY[0x277D85CD0];
      [v7 addDelegate:v2 queue:MEMORY[0x277D85CD0]];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_22B66C61C, @"com.apple.protectedcloudstorage.roll.Messages3", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, v2, sub_22B66C6C8, @"com.apple.ProtectedCloudStorage.mobileBackupStateChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v11, v2, sub_22B66C908, @"com.apple.ProtectedCloudStorage.test.mobileBackupStateChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, v2, sub_22B66CA5C, @"com.apple.ProtectedCloudStorage.test.mobileBackupStateChange.success", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v13 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v13, v2, sub_22B66CB8C, @"com.apple.ProtectedCloudStorage.PendingKeyRoll", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v14, v2, sub_22B66CCBC, *MEMORY[0x277CBC908], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v15 = [MEMORY[0x277D1ACB8] sharedInstance];
    [v15 addListener:v2];

    v16 = objc_alloc(MEMORY[0x277D28698]);
    v17 = [(IMDCKAbstractSyncController *)v2 syncState];
    v18 = [v16 initWithDelegate:v2 syncStateManager:v17];
    [(IMDCKSyncController *)v2 setSyncResumer:v18];

    v19 = [MEMORY[0x277D1ACB8] sharedInstance];
    v20 = [(IMDCKSyncController *)v2 syncResumer];
    v21 = [v20 systemMonitorListener];
    [v19 addListener:v21];

    if (IMIsRunningInUnitTesting() & 1) != 0 || ([MEMORY[0x277D1ACB8] sharedInstance], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isSystemLocked"), v22, (v23))
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v26 = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Not doing account check on launch as device is locked", v26, 2u);
        }
      }
    }

    else
    {
      [(IMDCKSyncController *)v2 performOneTimeAccountUpgradeCheckIfNeeded];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(IMDCKSyncController *)self longRunningSyncTimer];

  if (v4)
  {
    v5 = [(IMDCKSyncController *)self longRunningSyncTimer];
    [v5 invalidate];

    [(IMDCKSyncController *)self setLongRunningSyncTimer:0];
  }

  v6 = [MEMORY[0x277D1ACB8] sharedInstance];
  [v6 removeListener:self];

  v7 = [(IMDCKSyncController *)self reloadTimer];

  if (v7)
  {
    v8 = [(IMDCKSyncController *)self reloadTimer];
    [v8 invalidate];

    [(IMDCKSyncController *)self setReloadTimer:0];
  }

  v9.receiver = self;
  v9.super_class = IMDCKSyncController;
  [(IMDCKSyncController *)&v9 dealloc];
}

- (void)_needsSyncOnIdentityUpdate
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A88]];
}

- (void)_needsSyncOnAccountUpdate
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A78]];
}

- (void)_didPassAccountAndIdentityUpdateNeeds
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  v3 = *MEMORY[0x277D19A08];
  [v2 setValue:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A88]];

  v4 = [MEMORY[0x277D1A990] sharedInstance];
  [v4 setValue:0 forDomain:v3 forKey:*MEMORY[0x277D19A78]];
}

- (void)registerCloudSyncDependencies
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B66D1DC;
  block[3] = &unk_278702FF0;
  block[4] = self;
  if (qword_281421248 != -1)
  {
    dispatch_once(&qword_281421248, block);
  }
}

- (void)scheduleAttachmentAssetDownload
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D28688] scheduleAttachmentAssetDownloadWithDelegate:self];
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Failed to schedule attachment asset download with error %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)beginInitialSyncWithActivity:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(IMDCKSyncController *)self registerCloudSyncDependencies];
  v5 = [MEMORY[0x277D28688] startInitialSyncWithDelegate:self];
  if (v5 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Failed to schedule initial sync with error %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldMarkAllIncompatibleMessagesForDeletion
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D19A08];
  v3 = *MEMORY[0x277D19A38];
  v4 = IMGetDomainIntForKey();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134218240;
      v9 = v4;
      v10 = 1024;
      v11 = 1;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Request to determine if we should mark all incompatibleMessagesForDeletion, set version (%ld) current version (%d)", &v8, 0x12u);
    }
  }

  result = v4 != 1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)beginPeriodicSyncWithChecks:(unint64_t)a3 priority:(const char *)a4 reason:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a5;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v14 = a3;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Request to begin full sync checks %lu (reason %@)", buf, 0x16u);
    }
  }

  v9 = [@"com.apple.Messages.PeriodicSync." stringByAppendingString:v7];
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, *MEMORY[0x277D86340], a4);
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86398], 1);
  [IMDCKUtilities addConditionChecks:a3 toCriteria:v10];
  v11 = v9;
  [v9 UTF8String];
  IMRegisterSADAwareXPCActivity();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)beginPeriodicSyncWithActivity:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D28688] scheduleBackfillSyncWithDelegate:self];
  if (v5 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[IMDCKSyncController beginPeriodicSyncWithActivity:]";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%s: Tried to kick off backfill sync but encountered error %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)beginUserInitiatedSync
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isMessagesIniCloudVersion2];

  if (v4)
  {
    v5 = [MEMORY[0x277D28688] startUserInitiatedSyncWithDelegate:self];
    if (v5 && IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 136315394;
        v11 = "[IMDCKSyncController beginUserInitiatedSync]";
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%s: Tried to kick off user initiated sync but encountered error %@", &v10, 0x16u);
      }
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];
    v9 = *MEMORY[0x277D86350];

    [(IMDCKSyncController *)self beginPeriodicSyncWithChecks:2 priority:v9 reason:@"User Initiated"];
  }
}

- (BOOL)_serverDoesNotAllowComingBackOnlineChatSync
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-stop-online-sync"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (double)_minimumChatComingOnlineSyncInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-chat-sync-interval"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1800.0;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_minimumChatComingOnlineSyncInterval %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_chatSyncedRecently
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D19A08];
  v4 = *MEMORY[0x277D19B58];
  v5 = IMGetCachedDomainValueForKey();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Last coming online chat sync date %@", &v15, 0xCu);
    }
  }

  if ([(IMDCKSyncController *)self _serverDoesNotAllowComingBackOnlineChatSync])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Server override prevents us from syncing chats when coming back online", &v15, 2u);
      }
    }
  }

  else if (!v5 || ([MEMORY[0x277CBEAA8] date], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "timeIntervalSinceDate:", v5), v10 = v9, v8, v10 <= 0.0) || (-[IMDCKSyncController _minimumChatComingOnlineSyncInterval](self, "_minimumChatComingOnlineSyncInterval"), v10 >= v11))
  {
    v12 = 0;
    goto LABEL_15;
  }

  v12 = 1;
LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_serverDoesNotSingleDeviceLimitation
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-block-single-device-limitation"];
  v4 = [v3 BOOLValue];

  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = @"YES";
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "The server is not allowing us to block chat syncing for iMessage accounts with only one device: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_accountHasMultipleDevices
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.madrid"];
  v4 = [v3 devices];
  v5 = [v4 count];

  v6 = [(IMDCKSyncController *)self _serverDoesNotSingleDeviceLimitation];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [v3 devices];
      v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Number of devices for iMessage account: %@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5 != 0 && !v6;
}

- (void)_clearTombstonesWithActivity:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v6 = [v5 cloudKitSyncingEnabled];

  if ((v6 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Cleaning up tombstone table as CloudKit syncing is off", v8, 2u);
      }
    }

    IMDMessageRecordClearDeleteTombStones();
    IMDAttachmentRecordClearDeleteTombStones();
  }
}

- (void)clearCKRelatedDefaults
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  [v3 setLastSyncDate:0];

  v4 = [(IMDCKAbstractSyncController *)self syncState];
  [v4 setAnalyticSyncDatesDictionary:0];

  v5 = *MEMORY[0x277D19A50];
  v6 = *MEMORY[0x277D19A68];
  IMSetDomainBoolForKey();
  v7 = *MEMORY[0x277D19A60];
  IMSetDomainBoolForKey();
  v8 = *MEMORY[0x277D19A58];
  IMSetDomainBoolForKey();
  v9 = *MEMORY[0x277D19A08];
  v10 = *MEMORY[0x277D19750];

  IMSetDomainBoolForKey();
}

- (void)clearLocalCloudKitSyncState
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "clearLocalCloudKitSyncState", v22, 2u);
    }
  }

  v4 = [(IMDCKAbstractSyncController *)self syncState];
  [v4 _startBatchChange];
  v5 = [MEMORY[0x277D1A990] sharedInstance];
  v6 = *MEMORY[0x277D19A08];
  [v5 setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];

  v7 = [MEMORY[0x277D1A990] sharedInstance];
  [v7 setBool:0 forDomain:v6 forKey:*MEMORY[0x277D19A40]];

  v8 = [MEMORY[0x277D1A990] sharedInstance];
  [v8 setBool:0 forDomain:v6 forKey:*MEMORY[0x277D19A28]];

  [(IMDCKSyncController *)self clearCKRelatedDefaults];
  v9 = [(IMDCKAbstractSyncController *)self ckUtilities];
  [v9 reportMOCDebuggingErrorWithString:@"ResetSyncDate" internalOnly:1 initialSync:0 reasonString:@"ResetSyncDate"];

  v10 = +[IMDCKChatSyncController sharedInstance];
  [v10 deleteChatSyncToken];

  v11 = +[IMDCKChatSyncController sharedInstance];
  [v11 deleteChat1SyncToken];

  v12 = +[IMDCKMessageSyncController sharedInstance];
  [v12 deleteMessageSyncToken];

  v13 = +[IMDCKAttachmentSyncController sharedInstance];
  [v13 deleteAttachmentSyncToken];

  v14 = +[IMDCKUpdateSyncController sharedInstance];
  [v14 deleteSyncToken];

  v15 = +[IMDCKRecoverableMessageSyncController sharedInstance];
  [v15 deleteSyncToken];

  v16 = +[IMDCKMessageSyncController sharedInstance];
  [v16 deleteChatBotMessageSyncToken];

  v17 = +[IMDCKAttachmentSyncController sharedInstance];
  [v17 deleteChatBotAttachmentSyncToken];

  v18 = +[IMDCKRecoverableMessageSyncController sharedInstance];
  [v18 deleteChatBotRecoverableMessageSyncToken];

  v19 = +[IMDCKRecordSaltManager sharedInstance];
  [v19 clearLocalSyncState];

  v20 = [(IMDCKAbstractSyncController *)self syncState];
  [v20 clearLocalCloudKitSyncState];

  v21 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(v19) = [v21 isMessagesIniCloudVersion2];

  if (v19)
  {
    [MEMORY[0x277D28688] clearLocalCountsWhenSafe];
  }

  [v4 _finishBatchChange];
}

- (BOOL)_serverAllowsUIRefreshWhileSyncing
{
  v2 = 1;
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"disable-mic-ui-refresh-during-sync"];
  v5 = v4;
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Server disallows refreshing UI while syncing", v8, 2u);
        }
      }

      v2 = 0;
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

- (BOOL)_serverAllowsUIRefreshTimerWhileSyncing
{
  v2 = 1;
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"disable-mic-ui-refresh-timer-during-sync"];
  v5 = v4;
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Server disallows refreshing UI while syncing using timer", v8, 2u);
        }
      }

      v2 = 0;
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

- (void)refreshUIIfApplicableWithBatchCount:(unint64_t)a3
{
  if (a3 && [(IMDCKSyncController *)self _serverAllowsUIRefreshWhileSyncing])
  {
    [(IMDCKSyncController *)self setShouldReloadConversations:1];
    if ([(IMDCKSyncController *)self _serverAllowsUIRefreshTimerWhileSyncing])
    {
      v4 = [MEMORY[0x277CCACC8] mainThread];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = sub_22B66ED04;
      v5[3] = &unk_278702FF0;
      v5[4] = self;
      [v4 __im_performBlock:v5];
    }
  }
}

- (void)_refreshUIWhileSyncing
{
  v3 = [MEMORY[0x277CCACC8] mainThread];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B66F02C;
  v4[3] = &unk_278702FF0;
  v4[4] = self;
  [v3 __im_performBlock:v4];
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "systemDidLeaveFirstDataProtection", v9, 2u);
    }
  }

  v4 = [MEMORY[0x277D1A990] sharedInstance];
  v5 = *MEMORY[0x277D19A08];
  v6 = *MEMORY[0x277D199F0];
  v7 = [v4 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D199F0]];

  if (v7)
  {
    v8 = [MEMORY[0x277D1A990] sharedInstance];
    [v8 setValue:0 forDomain:v5 forKey:v6];

    [(IMDCKSyncController *)self _attemptToEnableMiCByDefaultOnce];
  }
}

- (void)recordMetricIsCloudKitEnabled
{
  v6 = [MEMORY[0x277D1AAA8] sharedInstance];
  v3 = *MEMORY[0x277D1A0C0];
  v4 = [(IMDCKAbstractSyncController *)self ckUtilities];
  if ([v4 cloudKitSyncingEnabled])
  {
    v5 = &unk_283F4EC60;
  }

  else
  {
    v5 = &unk_283F4EC78;
  }

  [v6 trackEvent:v3 withCount:v5];
}

- (BOOL)_handleSyncFailureType:(int64_t)a3 step:(int64_t)a4 activity:(id)a5 attemptCount:(unint64_t)a6 startTime:(id)a7 error:(id)a8 retry:(id)a9
{
  v65 = *MEMORY[0x277D85DE8];
  activity = a5;
  v54 = a7;
  v15 = a8;
  v53 = a9;
  v55 = IMStringFromCloudKitSyncStep();
  v16 = [v55 stringByAppendingString:@"Sync"];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v62 = v55;
      v63 = 2112;
      v64 = v15;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Failed syncing %@ with error %@", buf, 0x16u);
    }
  }

  [(IMDCKSyncController *)self _reloadChatRegistryOnMainThread];
  if (!v15)
  {
    v18 = MEMORY[0x277CCA9B8];
    v59 = @"syncStep";
    v60 = v55;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v15 = [v18 errorWithDomain:@"IMDCKSyncDomain" code:0 userInfo:v19];
  }

  v20 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v20 autoBugCaptureWithSubType:v16 errorPayload:v15];

  v21 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v58 = 0;
  v22 = [v21 responseForError:v15 attempt:a6 retryInterval:&v58];
  v52 = v58;

  v23 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v24 = [v16 stringByAppendingString:@"Failed"];
  [v23 reportErrorForSyncType:a3 syncStep:v24 response:v22 error:v15];

  v25 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v26 = activity != 0;
  v27 = [MEMORY[0x277CBEAA8] now];
  [v27 timeIntervalSinceDate:v54];
  [v25 reportCompletionForSyncType:a3 isCoreDuetSync:v26 onAttempt:a6 wasSuccessful:0 duration:?];

  v28 = [(IMDCKAbstractSyncController *)self ckUtilities];
  BYTE3(v51) = a4 > 6;
  BYTE2(v51) = a4 > 5;
  BYTE1(v51) = a4 > 5;
  LOBYTE(v51) = a4 > 4;
  [v28 logCloudKitSyncToPowerLogForSyncType:a3 isCoreDuetSync:v26 didCompleteChatSync:a4 > 1 didSucceedSyncingChats:a4 > 2 didCompleteMessageSync:a4 > 2 didSucceedSyncingMessages:a4 > 3 didCompleteAttachmentSync:v51 didSucceedSyncingAttachments:a6 didCompleteRecoverableMessageSync:? didSucceedSyncingRecoverableMessageSync:? syncAttemptCount:?];

  if (![(IMDCKSyncController *)self _errorIndicatesDeviceNotGoodForSync:v15])
  {
    v29 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v29 autoBugCaptureWithSubType:v16 errorPayload:v15];

    v30 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed syncing Messages %@, please file a radar", v55];
    [v30 reportMOCDebuggingErrorWithString:v31 internalOnly:0];
  }

  v32 = 5;
  if (v22 <= 3)
  {
    if (v22 == 2)
    {
      v32 = 4;
    }

    else if (v22 == 3)
    {
      v32 = 3;
    }
  }

  else
  {
    switch(v22)
    {
      case 4:
        [(IMDCKSyncController *)self _needsSyncOnAccountUpdate];
        goto LABEL_19;
      case 5:
        [(IMDCKSyncController *)self _needsSyncOnIdentityUpdate];
        goto LABEL_19;
      case 6:
        v33 = [(IMDCKAbstractSyncController *)self syncState];
        v34 = [MEMORY[0x277CBEAA8] date];
        [v33 setAnalyticSyncDatesDictionaryObject:v34 forKey:*MEMORY[0x277D19CC0] shouldOverrideIfExists:1];

        [(IMDCKSyncController *)self _nukeCKData];
LABEL_19:
        v32 = 5;
        break;
    }
  }

  if (activity)
  {
    v35 = xpc_activity_set_state(activity, v32);
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = @"NO";
        if (v35)
        {
          v37 = @"YES";
        }

        *buf = 134218242;
        v62 = v32;
        v63 = 2112;
        v64 = v37;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Set activity to state %ld success %@", buf, 0x16u);
      }
    }
  }

  if (v22 == 2)
  {
    if (v53 && v52)
    {
      [v52 integerValue];
      v57 = v53;
      im_dispatch_after();
      v38 = v57;
LABEL_36:
    }
  }

  else
  {
    [(IMDCKAbstractSyncController *)self setIsSyncing:0];
    [(IMDCKSyncController *)self _noteMeticsForSyncEndedWithSuccces:0];
    v39 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v40 = [v39 errorIndicatesDeviceConditionsDontAllowSync:v15];

    if ((v40 & 1) == 0)
    {
      v41 = [(IMDCKAbstractSyncController *)self ckUtilities];
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed syncing Messages %@, please file a radar", v55];
      [v41 reportMOCDebuggingErrorWithString:v42 internalOnly:0 initialSync:a3 == 0];

      v43 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v43 forceAutoBugCaptureWithSubType:@"Restore Fail" errorPayload:v15];
    }

    if (a3 == 1)
    {
      v44 = [MEMORY[0x277D1A970] sharedInstance];
      [v44 postCoreAutomationNotificationFinishedPeriodicSyncNotificationWithStartTime:v54 chatsDidsync:a4 > 2 messagesDidSync:a4 > 3 attachmentsDidSync:a4 > 5 recoverableMessagesDidSync:a4 > 6];

      v38 = [MEMORY[0x277D1AAA8] sharedInstance];
      v45 = MEMORY[0x277CCABB0];
      v46 = [MEMORY[0x277CBEAA8] date];
      v47 = [(IMDCKSyncController *)self syncStartDate];
      [v46 timeIntervalSinceDate:v47];
      v48 = [v45 numberWithDouble:?];
      [v38 trackEvent:*MEMORY[0x277D1A0B8] withStatistic:v48];

      goto LABEL_36;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return v22 == 2;
}

- (id)_keychainErrorWithCause:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Caused by: %@", a3, *MEMORY[0x277CCA450]];
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDCKRestoreDomain" code:0 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_errorIndicatesDeviceNotGoodForSync:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v6 = [v5 errorIndicatesDeviceConditionsDontAllowSync:v4];

  return v6;
}

- (void)_nukeCKData
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "******** Nuking CloudKit data ******", v7, 2u);
    }
  }

  v4 = [(IMDCKAbstractSyncController *)self ckUtilities];
  [v4 reportMOCDebuggingErrorWithString:@"Deleting CloudKit Data" internalOnly:1];

  v5 = [(IMDCKAbstractSyncController *)self syncState];
  [v5 setDeletedZones:1];

  v6 = +[IMDRecordZoneManager sharedInstance];
  [v6 deleteAllZones];

  [(IMDCKSyncController *)self clearLocalCloudKitSyncState];
}

- (void)_reloadChatRegistryOnMainThread
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = +[IMDChatRegistry sharedInstance];
    [v3 _forceReloadChats:1];
  }

  else
  {
    v2 = MEMORY[0x277D85CD0];

    dispatch_async(v2, &unk_283F1AB48);
  }
}

- (void)syncAttachmentMetadataFirstSyncWithActivity:(id)a3 deviceConditionsToCheck:(unint64_t)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IMDCKAbstractSyncController *)self _fetchedAllChangesFromCloudKit];
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "First full sync has completed - lets just do a normal sync flows", buf, 2u);
      }
    }

    v9[2](v9, 1, 0);
  }

  else
  {
    if (v11)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Doing an attachment metadata only sync before we continue with the full sync", buf, 2u);
      }
    }

    v14 = [(IMDCKSyncController *)self attachmentSyncController];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B66FF9C;
    v15[3] = &unk_278702930;
    v16 = v9;
    [v14 syncAttachmentsWithSyncType:5 deviceConditionsToCheck:a4 activity:v8 completionBlock:v15];
  }
}

- (void)syncDeletesToCloudKitWithActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Kicking off delete sync to CloudKit", buf, 2u);
    }
  }

  v9 = [(IMDCKSyncController *)self chatSyncController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B670238;
  v12[3] = &unk_278707520;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 syncPendingDeletionWithCompletion:v12];
}

- (void)_callSyncWithCompletion:(id)a3 activity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMDCKSyncController *)self backupController];
  [v8 sendDeviceIDToCloudKitWithCompletion:0];

  v9 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v10 = [v9 cloudKitSyncDownloadAssetsOnly];

  v11 = [(IMDCKSyncController *)self exitManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22B6708E0;
  v14[3] = &unk_278707548;
  v17 = v10;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v12 = v6;
  v13 = v7;
  [v11 exitRecordDateWithCompletion:v14];
}

- (void)_ifCloudKitAbleToSyncWithActivity:(id)a3 callBlock:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
  {
    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else if ([(IMDCKAbstractSyncController *)self isSyncing])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v26.receiver = self;
        v26.super_class = IMDCKSyncController;
        if ([(IMDCKAbstractSyncController *)&v26 isSyncing])
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        v24 = v9;
        v25 = [(IMDCKSyncController *)self chatSyncController];
        if ([v25 isSyncing])
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v23 = v10;
        v11 = [(IMDCKSyncController *)self messageSyncController];
        if ([v11 isSyncing])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v13 = [(IMDCKSyncController *)self attachmentSyncController];
        if ([v13 isSyncing])
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v15 = [(IMDCKSyncController *)self exitManager];
        if ([v15 isSyncing])
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        *buf = 138413314;
        v28 = v24;
        v29 = 2112;
        v30 = v23;
        v31 = 2112;
        v32 = v12;
        v33 = 2112;
        v34 = v14;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "** We are already performing a sync.  Ignoring current request to sync.\n Syncing Self:%@ Chat:%@ Message:%@ Attachment:%@ Exit:%@", buf, 0x34u);
      }
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {
    v17 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v18 = [v17 iCloudAccountMatchesiMessageAccount];

    v19 = [MEMORY[0x277D1A990] sharedInstance];
    [v19 setBool:v18 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19758]];

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = @"NO";
        if (v18)
        {
          v21 = @"YES";
        }

        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "iCloud and iMessage accounts match up ? %@", buf, 0xCu);
      }
    }

    if (v18)
    {
      [(IMDCKSyncController *)self _callSyncWithCompletion:v7 activity:v6];
    }

    else if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_beginExitStateCleanupIfNeededWithActivity:(id)a3
{
  v4 = a3;
  v5 = +[IMDCKRecordSaltManager sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B670FF0;
  v7[3] = &unk_2787038A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:v7 forceFetch:1];
}

- (void)_autoBugCaptureWithSubType:(id)a3 debugDescription:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = [v6 dictionaryWithObjectsAndKeys:{a4, @"NSDebugDescription", 0}];
  v10 = [v5 errorWithDomain:@"IMDCKSyncController" code:100 userInfo:v8];

  v9 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v9 autoBugCaptureWithSubType:v7 errorPayload:v10];
}

- (void)_noteSyncStarted:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D19BA8];
  v4 = *MEMORY[0x277D19B80];
  if (a3)
  {
    v5 = *MEMORY[0x277D19BA8];
  }

  else
  {
    v5 = *MEMORY[0x277D19B80];
  }

  if (a3)
  {
    v6 = *MEMORY[0x277D19B80];
  }

  else
  {
    v6 = *MEMORY[0x277D19BA8];
  }

  v7 = v5;
  v8 = v6;
  v9 = *MEMORY[0x277D19A08];
  v10 = IMGetCachedDomainIntForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Noting down sync started. Initial value Key %@ value %@", &v16, 0x16u);
    }
  }

  IMSetDomainIntForKey();
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:IMGetCachedDomainIntForKeyWithDefaultValue()];
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Noting down sync started. After setting value Key %@ value %@", &v16, 0x16u);
    }
  }

  IMSetDomainIntForKey();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_noteMetricsForSyncStartFrom:(id)a3 fullSync:(BOOL)a4
{
  v5 = a3;
  [(IMDCKSyncController *)self recordMetricIsCloudKitEnabled];
  v6 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v7 = [v6 cloudKitSyncingEnabled];

  if (v7)
  {
    v8 = [(IMDCKSyncController *)self syncStartDate];
    if (v8)
    {
    }

    else
    {
      v9 = [(IMDCKSyncController *)self longRunningSyncTimer];

      if (!v9)
      {
LABEL_9:
        objc_initWeak(buf, self);
        v11 = MEMORY[0x277CBEBB8];
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = sub_22B671600;
        v17 = &unk_278707570;
        v18 = v5;
        objc_copyWeak(&v19, buf);
        v12 = [v11 scheduledTimerWithTimeInterval:0 repeats:&v14 block:28800.0];
        [(IMDCKSyncController *)self setLongRunningSyncTimer:v12, v14, v15, v16, v17];
        v13 = [MEMORY[0x277CBEAA8] date];
        [(IMDCKSyncController *)self setSyncStartDate:v13];

        objc_destroyWeak(&v19);
        objc_destroyWeak(buf);
        goto LABEL_10;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "IMDCKSyncController: We started a second sync before a previous one was finished.  Likely there is an exit path that isn't calling _noteMeticsForSyncEndedWithSuccces", buf, 2u);
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_resetSyncStateAndAttemptCounts
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting sync state, and attempt counts", v7, 2u);
    }
  }

  [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateStateToFinished];
  v4 = *MEMORY[0x277D19A08];
  v5 = *MEMORY[0x277D19B80];
  IMSetDomainIntForKey();
  v6 = *MEMORY[0x277D19BA8];
  IMSetDomainIntForKey();
}

- (int64_t)_periodicSyncAttemptCount
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = IMOSLoggingEnabled();
  v3 = MEMORY[0x277D19A08];
  v4 = MEMORY[0x277D19BA8];
  if (v2)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *v3;
      v7 = *v4;
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:IMGetCachedDomainIntForKeyWithDefaultValue()];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_periodicSyncAttemptCount %@", &v13, 0xCu);
    }
  }

  v9 = *v3;
  v10 = *v4;
  result = IMGetCachedDomainIntForKeyWithDefaultValue();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_manualSyncAttemptCount
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = IMOSLoggingEnabled();
  v3 = MEMORY[0x277D19A08];
  v4 = MEMORY[0x277D19B80];
  if (v2)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *v3;
      v7 = *v4;
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:IMGetCachedDomainIntForKeyWithDefaultValue()];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_manualSyncAttemptCount %@", &v13, 0xCu);
    }
  }

  v9 = *v3;
  v10 = *v4;
  result = IMGetCachedDomainIntForKeyWithDefaultValue();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_writeDownSyncDate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Chats, messages, and attachments have synced successfully, sync time: %@", &v10, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Updating sync date for Manatee sync %@", &v10, 0xCu);
    }
  }

  v6 = [(IMDCKAbstractSyncController *)self syncState];
  [v6 setLastSyncDate:v3];

  v7 = [(IMDCKAbstractSyncController *)self syncState];
  [v7 setAnalyticSyncDatesDictionaryObject:v3 forKey:*MEMORY[0x277D19C40] shouldOverrideIfExists:1];

  v8 = [(IMDCKSyncController *)self exitManager];
  [v8 writeSyncCompletedRecordWithDate:v3 completion:&unk_283F1AB68];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)syncStateDebuggingInfo:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(IMDCKAbstractSyncController *)self syncState];
  v7 = [v6 serializedRepresentation];
  [v5 setObject:v7 forKey:@"sync-state-user-defaults"];

  v39.receiver = self;
  v39.super_class = IMDCKSyncController;
  v8 = [(IMDCKAbstractSyncController *)&v39 syncStateDebuggingInfo:v4];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v5 setObject:v8 forKey:v10];

  v11 = [(IMDCKSyncController *)self attachmentSyncController];
  v12 = [v11 syncStateDebuggingInfo:v4];
  v13 = [(IMDCKSyncController *)self attachmentSyncController];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v5 setObject:v12 forKey:v15];

  v16 = [(IMDCKSyncController *)self exitManager];
  v17 = [v16 syncStateDebuggingInfo:v4];
  v18 = [(IMDCKSyncController *)self exitManager];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  [v5 setObject:v17 forKey:v20];

  v21 = [(IMDCKSyncController *)self chatSyncController];
  v22 = [v21 syncStateDebuggingInfo:v4];
  v23 = [(IMDCKSyncController *)self chatSyncController];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [v5 setObject:v22 forKey:v25];

  v26 = [(IMDCKSyncController *)self messageSyncController];
  v27 = [v26 syncStateDebuggingInfo:v4];
  v28 = [(IMDCKSyncController *)self messageSyncController];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  [v5 setObject:v27 forKey:v30];

  v31 = +[IMDCKBackupController sharedInstance];
  v32 = [v31 syncStateDebuggingInfo:v4];
  v33 = +[IMDCKBackupController sharedInstance];
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  [v5 setObject:v32 forKey:v35];

  if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v5;
      _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "assembled sync state debugging info: %@", buf, 0xCu);
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)eventStreamHandler:(id)a3 didReceiveEventWithName:(id)a4 userInfo:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D1A888] IMAKUserInfoChangedNotification];
  v12 = [v11 isEqualToString:v9];

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 138412546;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Handling event with name %@ userInfo %@", &v18, 0x16u);
      }
    }

    [(IMDCKSyncController *)self handleAKUserInfoChangedNotification:v10];
  }

  if ([v9 isEqualToString:*MEMORY[0x277D19CC8]])
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Got user signed into HSA2 account notification", &v18, 2u);
      }
    }

    v15 = [MEMORY[0x277D1ACB8] sharedInstance];
    v16 = [v15 isUnderFirstDataProtectionLock];

    if ((v16 & 1) == 0)
    {
      [(IMDCKSyncController *)self verifyAccountsMatchForMoc];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateSecurityLevelDowngradedIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKSyncController *)self exitManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B67233C;
  v7[3] = &unk_2787075C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 exitRecordDateWithCompletion:v7];
}

- (void)handleAKUserInfoChangedNotification:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling AKUserInfoChangedNotification with user info: %@", &v21, 0xCu);
    }
  }

  if (v4)
  {
    v6 = [MEMORY[0x277D1A888] IMAKUserInfoChangedAltDSIDKey];
    v7 = [MEMORY[0x277D1A888] IMAKUserInfoChangedSecurityLevelKey];
    v8 = v7;
    if (v6)
    {
      v9 = [v4 objectForKeyedSubscript:v6];
      if (v8)
      {
LABEL_8:
        v10 = [v4 objectForKeyedSubscript:v8];
LABEL_11:
        v11 = [(IMDCKAbstractSyncController *)self ckUtilities];
        v12 = [v11 _primaryiCloudAccountAltDSID];
        v13 = [v9 isEqualToString:v12];

        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue")}];
              v21 = 138412290;
              v22 = v15;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Account level changed to %@", &v21, 0xCu);
            }
          }

          if ([v10 unsignedIntegerValue])
          {
            if ([v10 unsignedIntegerValue] != 4)
            {
              if (IMOSLoggingEnabled())
              {
                v16 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  LOWORD(v21) = 0;
                  _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "We are downgrading from HSA2 -- turning off messages on iCloud", &v21, 2u);
                }
              }

              v17 = [(IMDCKSyncController *)self backupController];
              [v17 setICloudBackupsDisabled:0];

              v18 = [(IMDCKAbstractSyncController *)self ckUtilities];
              [v18 downgradingFromHSA2AndDisablingMOC];
            }

            [(IMDCKSyncController *)self updateSecurityLevelDowngradedIfNeeded:&unk_283F1AB88];
          }

          else if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              LOWORD(v21) = 0;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Account level changed to unknown, not turning off messages in iCloud or refreshing values associated with IMCloudKitAppleIDSecurityLevelHSA2.", &v21, 2u);
            }
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
      v9 = 0;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

LABEL_29:

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)verifyAccountsMatchForMoc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v4 = [v3 iCloudAccountMatchesiMessageAccount];

  v5 = *MEMORY[0x277D19A08];
  v6 = *MEMORY[0x277D19758];
  IMSetDomainBoolForKey();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v4)
      {
        v8 = @"YES";
      }

      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "iCloud and iMessage account match up ? %@", &v15, 0xCu);
    }
  }

  v9 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v10 = [v9 cloudKitSyncingEnabled];

  if (!(v4 & 1 | ((v10 & 1) == 0)))
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "iCloud and iMessage accounts do not match up.", &v15, 2u);
      }
    }

    v12 = [(IMDCKSyncController *)self backupController];
    [v12 setICloudBackupsDisabled:0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)performOneTimeAccountUpgradeCheckIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "performOneTimeAccountUpgradeCheckIfNeeded", buf, 2u);
    }
  }

  v4 = *MEMORY[0x277D19A08];
  v5 = *MEMORY[0x277D19B90];
  if ((IMGetDomainBoolForKey() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v11 = 0x403E000000000000;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Will performing MOIC account check on upgrade after %f seconds", buf, 0xCu);
      }
    }

    v7 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B672EAC;
    block[3] = &unk_278702FF0;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearAnalyticDefaultsAndLocalSyncState
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Clear analytic defaults and local sync state", v5, 2u);
    }
  }

  v4 = [(IMDCKAbstractSyncController *)self syncState];
  [v4 setAnalyticSyncDatesDictionary:MEMORY[0x277CBEC10]];

  [(IMDCKSyncController *)self clearLocalCloudKitSyncState];
}

- (void)_addDatesDefaultsIfNeededToDictionary:(id)a3 keys:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v5 objectForKey:v11];

        if (!v12)
        {
          [v5 setObject:&unk_283F4EC90 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_addDatesDefaultsIfNeededToDictionary:(id)a3
{
  v12[8] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D19AF8];
  v12[0] = *MEMORY[0x277D19C40];
  v12[1] = v4;
  v5 = *MEMORY[0x277D19B18];
  v12[2] = *MEMORY[0x277D19B00];
  v12[3] = v5;
  v6 = *MEMORY[0x277D199E0];
  v12[4] = *MEMORY[0x277D19B28];
  v12[5] = v6;
  v7 = *MEMORY[0x277D19B08];
  v12[6] = *MEMORY[0x277D19B30];
  v12[7] = v7;
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = [v8 arrayWithObjects:v12 count:8];
  [(IMDCKSyncController *)self _addDatesDefaultsIfNeededToDictionary:v9 keys:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_dailySyncStateDictionary
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [(IMDCKAbstractSyncController *)self syncState];
  v5 = [v4 analyticSyncDatesDictionary];
  v6 = [v3 initWithDictionary:v5];

  [v6 setObject:@"1" forKeyedSubscript:@"version"];
  v7 = [(IMDCKAbstractSyncController *)self syncState];
  v8 = [v7 syncUserType];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D19CB8]];

  [(IMDCKSyncController *)self _addDatesDefaultsIfNeededToDictionary:v6];
  v9 = [(IMDCKAbstractSyncController *)self syncState];
  v10 = [v9 micDeviceIdentifier];

  if (v10)
  {
    v11 = [(IMDCKAbstractSyncController *)self syncState];
    v12 = [v11 micDeviceIdentifier];
    [v6 setObject:v12 forKeyedSubscript:@"deviceID"];
  }

  v13 = [MEMORY[0x277D1A990] sharedInstance];
  v14 = *MEMORY[0x277D19A08];
  v15 = [v13 getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19D00]];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D19D38]];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 bucket];
      [v6 setObject:v19 forKeyedSubscript:*MEMORY[0x277D19C98]];
    }

    v20 = [v16 objectForKeyedSubscript:*MEMORY[0x277D19D48]];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 bucket];
      [v6 setObject:v22 forKeyedSubscript:*MEMORY[0x277D19CA8]];
    }

    v23 = [v16 objectForKeyedSubscript:*MEMORY[0x277D19D30]];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 bucket];
      [v6 setObject:v25 forKeyedSubscript:*MEMORY[0x277D19C90]];
    }

    v47 = v24;
    v48 = v21;
    v26 = [v16 objectForKeyedSubscript:*MEMORY[0x277D19D40]];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 bucket];
      [v6 setObject:v28 forKeyedSubscript:*MEMORY[0x277D19CA0]];
    }

    v29 = [v13 getValueFromDomain:v14 forKey:@"Server.TotalRecords.chatManateeZone"];
    v30 = v29;
    v49 = v18;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:0];
    }

    v32 = v31;

    v33 = [v13 getValueFromDomain:v14 forKey:@"Server.TotalRecords.chatManateeZone"];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:0];
    }

    v36 = v35;

    v37 = [v13 getValueFromDomain:v14 forKey:@"Server.TotalRecords.chatManateeZone"];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:0];
    }

    v40 = v39;

    v41 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v36, "longLongValue") + objc_msgSend(v32, "longLongValue") + objc_msgSend(v40, "longLongValue")}];
    v42 = [v41 bucket];
    [v6 setObject:v42 forKeyedSubscript:*MEMORY[0x277D19CB0]];
  }

  v43 = [(IMDCKAbstractSyncController *)self syncState];
  v44 = [v43 describeErrors];

  if ([v44 length])
  {
    [v6 setObject:v44 forKeyedSubscript:@"syncErrors"];
  }

  v45 = [v6 copy];

  return v45;
}

- (BOOL)_completedPeriodicSyncSinceFirstFullSyncForLastSyncDate:(id)a3 firstFullSyncCompletedDate:(id)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      return [a3 isEqualToDate:a4] ^ 1;
    }
  }

  return result;
}

- (id)_periodicSyncStateDictionary
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  v4 = [v3 getAnalyticSyncDatesObjectForKey:*MEMORY[0x277D19B08]];

  if (![v4 intValue])
  {
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(v4, "longLongValue")}];
  if (!v5)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "User has completed a first full sync so device has started doing periodic syncs. Logging full periodic sync metric.", v20, 2u);
    }
  }

  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = [(IMDCKAbstractSyncController *)self syncState];
  v9 = [v8 analyticSyncDatesDictionary];
  v10 = [v7 initWithDictionary:v9];

  v11 = [(IMDCKAbstractSyncController *)self syncState];
  v12 = [v11 getAnalyticSyncDatesObjectForKey:*MEMORY[0x277D19C40]];

  [(IMDCKSyncController *)self _addDatesDefaultsIfNeededToDictionary:v10];
  [v10 setObject:@"1" forKey:@"version"];
  v13 = [(IMDCKAbstractSyncController *)self syncState];
  v14 = [v13 syncUserType];
  [v10 setObject:v14 forKey:*MEMORY[0x277D19CB8]];

  if (!v12 || [v12 intValue] == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(v12, "longLongValue")}];
  }

  v16 = [(IMDCKSyncController *)self _completedPeriodicSyncSinceFirstFullSyncForLastSyncDate:v15 firstFullSyncCompletedDate:v5];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [v10 setObject:v17 forKey:@"completedPeriodicSyncSinceFirstFullSync"];

LABEL_14:
  v18 = [v10 copy];

  return v18;
}

- (void)_submitCloudKitAnalyticWithOperationGroupName:(id)a3 analyticDictionary:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v8 = [v7 shouldReportToRTC];

  if (v8)
  {
    v9 = +[IMDCKUtilities sharedInstance];
    [v9 postSyncStateToRTC:v13 category:1 reportDictionary:v6];
  }

  v10 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v11 = [v10 shouldReportToAnalytics];

  if (v11)
  {
    v12 = +[IMDCKExitManager sharedInstance];
    [v12 submitCloudKitAnalyticWithOperationGroupName:v13 analyticDictionary:v6];
  }
}

- (BOOL)logCloudKitAnalytics
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  if ([v3 isSyncingEnabled])
  {
    v4 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v5 = [v4 serverAllowsAnalyticSubmission];

    if (v5)
    {
      v6 = [(IMDCKSyncController *)self _dailySyncStateDictionary];
      v7 = v6 != 0;
      if (v6)
      {
        v8 = [(IMDCKAbstractSyncController *)self syncState];
        v9 = [v8 createdChatZone];

        v10 = [(IMDCKAbstractSyncController *)self syncState];
        v11 = [v10 deletedZones];

        v12 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        v13 = [v12 isMessagesIniCloudVersion2];

        if (v13)
        {
          v14 = @"daily_status";
        }

        else
        {
          v17 = [(IMDCKAbstractSyncController *)self syncState];
          v18 = [v17 syncUserType];
          v14 = [@"dailySyncState-" stringByAppendingString:v18];
        }

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = @"NO";
            *v28 = 138413058;
            *&v28[4] = v14;
            if (v9)
            {
              v21 = @"YES";
            }

            else
            {
              v21 = @"NO";
            }

            *&v28[12] = 2112;
            *&v28[14] = v6;
            if (v11)
            {
              v20 = @"YES";
            }

            *&v28[22] = 2112;
            v29 = v21;
            v30 = 2112;
            v31 = v20;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Device will be uploading %@ analytic dict %@ to CK. CreatedZones: %@ DeletedZones:%@", v28, 0x2Au);
          }
        }

        [(IMDCKSyncController *)self _submitCloudKitAnalyticWithOperationGroupName:v14 analyticDictionary:v6, *v28, *&v28[16]];
      }

      else if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v28 = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Not uploading daily sync state.", v28, 2u);
        }
      }

      v22 = [(IMDCKSyncController *)self _periodicSyncStateDictionary];
      v23 = IMOSLoggingEnabled();
      if (v22)
      {
        if (v23)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *v28 = 138412290;
            *&v28[4] = v22;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Will be uploading dailySyncState-PeriodicSync analytic dict %@ to CK.", v28, 0xCu);
          }
        }

        [(IMDCKSyncController *)self _submitCloudKitAnalyticWithOperationGroupName:@"dailySyncState-PeriodicSync" analyticDictionary:v22];
        v7 = 1;
      }

      else if (v23)
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v28 = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Not uploading periodic sync activity.", v28, 2u);
        }
      }

      goto LABEL_38;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Not logging analytics", v28, 2u);
    }
  }

  v7 = 0;
LABEL_38:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_stringForDate:(id)a3 withFormatter:(id)a4
{
  v5 = a3;
  v6 = @"nil";
  if (v5 && a4)
  {
    v7 = MEMORY[0x277CBEAA8];
    v8 = a4;
    v9 = [v7 alloc];
    [v5 doubleValue];
    v10 = [v9 initWithTimeIntervalSince1970:?];
    v11 = [v8 stringFromDate:v10];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"error formatting %@", v5];
    }

    v6 = v12;
  }

  return v6;
}

- (id)_stringForObject:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"nil";
  }

  return v5;
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v75[7] = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Gathering stats for sysdiagnose", buf, 2u);
    }
  }

  v64 = [MEMORY[0x277D1A990] sharedInstance];
  v74[0] = @"micDeviceID";
  v4 = *MEMORY[0x277D19B88];
  v61 = *MEMORY[0x277D19A08];
  v62 = [v64 getValueFromDomain:? forKey:?];
  v5 = [(IMDCKSyncController *)self _stringForObject:v62];
  v75[0] = v5;
  v74[1] = @"enabled";
  v6 = MEMORY[0x277CCABB0];
  v7 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v8 = [v6 numberWithBool:{objc_msgSend(v7, "cloudKitSyncingEnabled")}];
  v75[1] = v8;
  v74[2] = @"syncing";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D28688], "isSyncing")}];
  v75[2] = v9;
  v74[3] = @"outOfBackup";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v64, "getBoolFromDomain:forKey:", v61, *MEMORY[0x277D19B48])}];
  v75[3] = v10;
  v74[4] = @"accountStatus";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v64, "getBoolFromDomain:forKey:", v61, *MEMORY[0x277D199A8])}];
  v75[4] = v11;
  v74[5] = @"accountsMatch";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v64, "getBoolFromDomain:forKey:", v61, *MEMORY[0x277D19758])}];
  v75[5] = v12;
  v74[6] = @"errors";
  v13 = [(IMDCKAbstractSyncController *)self syncState];
  v14 = [v13 describeErrors];
  v15 = v14;
  v16 = @"no errors";
  if (v14)
  {
    v16 = v14;
  }

  v75[6] = v16;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:7];

  v63 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v63 setDateFormat:@"MM/dd/YYYY hh:mm:ss a"];
  v17 = [(IMDCKAbstractSyncController *)self syncState];
  v60 = [v17 analyticSyncDatesDictionary];

  v72[0] = @"initStart";
  v58 = [v60 objectForKeyedSubscript:*MEMORY[0x277D19B18]];
  v57 = [(IMDCKSyncController *)self _stringForDate:v58 withFormatter:v63];
  v73[0] = v57;
  v72[1] = @"initEnd";
  v56 = [v60 objectForKeyedSubscript:*MEMORY[0x277D19B28]];
  v55 = [(IMDCKSyncController *)self _stringForDate:v56 withFormatter:v63];
  v73[1] = v55;
  v72[2] = @"restoreStart";
  v54 = [v60 objectForKeyedSubscript:*MEMORY[0x277D19AD8]];
  v53 = [(IMDCKSyncController *)self _stringForDate:v54 withFormatter:v63];
  v73[2] = v53;
  v72[3] = @"restoreEnd";
  v52 = [v60 objectForKeyedSubscript:*MEMORY[0x277D19AE0]];
  v18 = [(IMDCKSyncController *)self _stringForDate:v52 withFormatter:v63];
  v73[3] = v18;
  v72[4] = @"fullFirstEnd";
  v19 = [v60 objectForKeyedSubscript:*MEMORY[0x277D19B08]];
  v20 = [(IMDCKSyncController *)self _stringForDate:v19 withFormatter:v63];
  v73[4] = v20;
  v72[5] = @"fullStart";
  v21 = [v60 objectForKeyedSubscript:*MEMORY[0x277D19AF8]];
  v22 = [(IMDCKSyncController *)self _stringForDate:v21 withFormatter:v63];
  v73[5] = v22;
  v72[6] = @"fullEnd";
  v23 = [v60 objectForKeyedSubscript:*MEMORY[0x277D19B00]];
  v24 = [(IMDCKSyncController *)self _stringForDate:v23 withFormatter:v63];
  v73[6] = v24;
  v72[7] = @"last";
  v25 = [v60 objectForKeyedSubscript:*MEMORY[0x277D19C40]];
  v26 = [(IMDCKSyncController *)self _stringForDate:v25 withFormatter:v63];
  v73[7] = v26;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:8];

  v70[0] = @"chat";
  v27 = [v64 getValueFromDomain:v61 forKey:@"Server.TotalRecords.chatManateeZone"];
  v28 = [(IMDCKSyncController *)self _stringForObject:v27];
  v71[0] = v28;
  v70[1] = @"msg";
  v29 = [v64 getValueFromDomain:v61 forKey:@"Server.TotalRecords.messageManateeZone"];
  v30 = [(IMDCKSyncController *)self _stringForObject:v29];
  v71[1] = v30;
  v70[2] = @"att";
  v31 = [v64 getValueFromDomain:v61 forKey:@"Server.TotalRecords.attachmentManateeZone"];
  v32 = [(IMDCKSyncController *)self _stringForObject:v31];
  v71[2] = v32;
  v70[3] = @"upd";
  v33 = [v64 getValueFromDomain:v61 forKey:@"Server.TotalRecords.messageUpdateZone"];
  v34 = [(IMDCKSyncController *)self _stringForObject:v33];
  v71[3] = v34;
  v70[4] = @"rdel";
  v35 = [v64 getValueFromDomain:v61 forKey:@"Server.TotalRecords.recoverableMessageDeleteZone"];
  v36 = [(IMDCKSyncController *)self _stringForObject:v35];
  v71[4] = v36;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:5];

  v37 = [v64 getValueFromDomain:v61 forKey:*MEMORY[0x277D19D00]];
  v38 = [v64 getValueFromDomain:v61 forKey:@"IMD-IDS-Aliases"];
  v68[0] = @"total";
  v39 = MEMORY[0x277CCABB0];
  v40 = [v38 objectForKey:@"allAliases"];
  v41 = [v39 numberWithUnsignedInteger:{objc_msgSend(v40, "count")}];
  v68[1] = @"active";
  v69[0] = v41;
  v42 = MEMORY[0x277CCABB0];
  v43 = [v38 objectForKey:@"selectedAliases"];
  v44 = [v42 numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
  v69[1] = v44;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];

  v66[0] = @"summary";
  v66[1] = @"syncDates";
  v66[2] = @"serverCounts";
  v66[3] = @"dbSummary";
  if (v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = MEMORY[0x277CBEC10];
  }

  v67[2] = v59;
  v67[3] = v46;
  v66[5] = @"aliasesSummary";
  v67[0] = v51;
  v67[1] = v50;
  v66[4] = @"syncDbSummary";
  v67[4] = MEMORY[0x277CBEC10];
  v67[5] = v45;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:6];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

@end