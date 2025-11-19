@interface IMDCKUtilities
+ (id)_idsAccountController;
+ (id)calculateAliasesForDefaults;
+ (id)im_AKSecurityLevelKey;
+ (id)logHandle;
+ (id)readAliasesFromDefaults;
+ (id)sharedInstance;
+ (void)addConditionChecks:(unint64_t)a3 toCriteria:(id)a4;
+ (void)calculateAndSaveAliasesToDefaults;
- (BOOL)PCSKeyRollPending;
- (BOOL)_accountNeedsRepairOverride;
- (BOOL)_checkIfEnabledByServerBagOrDefault:(id)a3;
- (BOOL)_deviceActive;
- (BOOL)_isInExitState;
- (BOOL)_isSyncingPausedOverride;
- (BOOL)_mocFeatureEnabled;
- (BOOL)_serverAllowsCacheDelete;
- (BOOL)_serverAllowsRemovalFromBackUp;
- (BOOL)_serverAllowsSync;
- (BOOL)_shouldDisplayPopUpForResettingKeepMessages;
- (BOOL)_shouldiCloudSwitchBeEnabled;
- (BOOL)accountIsVerifiedForMOCAndSafeForCacheDelete;
- (BOOL)cacheDeleteEnabled;
- (BOOL)cloudKitSyncDownloadAssetsOnly;
- (BOOL)cloudKitSyncingEnabled;
- (BOOL)deviceConditionsAllowPeriodicSync;
- (BOOL)deviceIsPhoneOrWatch;
- (BOOL)enableAttachmentMetricCollection;
- (BOOL)iCloudAccountMatchesiMessageAccount;
- (BOOL)isCKPartialError:(id)a3;
- (BOOL)isDeviceCharging;
- (BOOL)isDeviceOnWifi;
- (BOOL)isInCloudKitDemoMode;
- (BOOL)isLocalCachedSaltPresent;
- (BOOL)isSyncingPaused;
- (BOOL)readServerBagBoolForKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)removeFromBackUpAllowed;
- (BOOL)serverAllowsAnalyticDetailsSubmission;
- (BOOL)serverAllowsAnalyticSubmission;
- (BOOL)serverAllowsMetricSubmission;
- (BOOL)shouldAttemptMiCOnByDefault;
- (BOOL)shouldForceArchivedMessagesSync;
- (BOOL)shouldPresentTTROnCloudKitError;
- (BOOL)shouldRepairAccountWithAccountStatus:(int64_t)a3 securityLevel:(unint64_t)a4;
- (BOOL)shouldUseDevContainer;
- (BOOL)shouldUseDevNickNameContainer;
- (BOOL)signedIntoiCloudAccount;
- (BOOL)signedIntoiCloudAndiMessageAndiCloudAccountMatchesiMessageAccount;
- (BOOL)signedIntoiMessageAccount;
- (FTDeviceSupport)deviceSupport;
- (IDSServerBag)serverBag;
- (IMDCKSyncState)syncState;
- (IMDCKUtilities)initWithServerBag:(id)a3 lockDownmanager:(id)a4 deviceSupport:(id)a5 imDefaults:(id)a6;
- (IMDSyncTelemetryReporter)telemetryReporter;
- (IMDefaults)imDefaults;
- (IMLockdownManager)lockdownManager;
- (id)_accountManager;
- (id)_accountStore;
- (id)_authenticationController;
- (id)_createAccountError:(id)a3;
- (id)_getKeepMessagesValue;
- (id)_primaryAccountCountryCode;
- (id)_primaryiCloudAccount;
- (id)_primaryiCloudAccountAltDSID;
- (id)_truthContainer;
- (id)_truthDatabase;
- (id)deviceActiveString;
- (id)deviceConditions;
- (id)dsid;
- (id)extractServerRecordFromCKServerErrorRecordChanged:(id)a3;
- (id)finalSyncStateFor:(int64_t)a3;
- (id)findRootCauses:(id)a3;
- (id)internalQueue;
- (id)lastDeviceBackUpDate;
- (id)logHandle;
- (id)newfilteredArrayRemovingCKRecordDupes:(id)a3;
- (id)newfilteredArrayRemovingCKRecordIDDupes:(id)a3;
- (id)recordNameForMessageWithGUID:(id)a3 usingSalt:(id)a4;
- (id)simplifiedError:(id)a3;
- (id)syncFailureMetricString:(id)a3 isRecoverable:(BOOL)a4 error:(id)a5;
- (int64_t)_mininimumServerBagClientValue;
- (int64_t)overrideNumberOfChatsToFetch;
- (int64_t)overrideNumberOfChatsToWrite;
- (unint64_t)_primaryiCloudAccountSecurityLevel;
- (unint64_t)currentStorageOnDevice;
- (unint64_t)messageDatabaseSize;
- (unsigned)PCSReportManateeStatus;
- (void)PCSKeyRollPendingAsync:(id)a3 timeout:(double)a4;
- (void)PCSReportManateeStatusAsync:(id)a3 timeout:(double)a4;
- (void)_askToTapToRadarWithString:(id)a3 internalOnly:(BOOL)a4;
- (void)_fetchPrimaryAccountWithCompletion:(id)a3;
- (void)_resetKeepMessagesSettingandBroadcastToAllDevices;
- (void)_showCKLogNotificationWithCompletion:(id)a3;
- (void)broadcastCloudKitState;
- (void)broadcastCloudKitStateAfterClearingErrors;
- (void)broadcastCloudKitStateAfterFetchingAccountStatus;
- (void)checkiCloudQuota:(id)a3;
- (void)clearLocalCloudKitSyncState:(unint64_t)a3;
- (void)disableAllDevicesWithCompletion:(id)a3;
- (void)downgradingFromHSA2AndDisablingMOC;
- (void)eligibleForTruthZoneWithCompletion:(id)a3;
- (void)estimateQuotaAvailability:(id)a3;
- (void)evalToggleiCloudSettingsSwitch;
- (void)fetchAccountStatusAndUpdateMiCSwitchEligibilityIfNeededOnImagentLaunch;
- (void)fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion:(id)a3;
- (void)fetchCloudKitAccountStatusWithCompletion:(id)a3;
- (void)fetchiCloudAccountPersonID:(id)a3;
- (void)isFirstSyncWithActivity:(id)a3 completion:(id)a4;
- (void)keyRollPendingStateDidChange;
- (void)postSyncStateToCloudKit:(id)a3;
- (void)postSyncStateToRTC:(id)a3 category:(int64_t)a4 reportDictionary:(id)a5;
- (void)primaryAccountHasiCloudBackupEnabledWithCompletion:(id)a3;
- (void)repairACAccountEnablementStatusIfNeeded;
- (void)reportErrorForSyncType:(int64_t)a3 syncStep:(id)a4 response:(int64_t)a5 error:(id)a6;
- (void)reportZoneCreation:(id)a3;
- (void)resetLastSyncDate;
- (void)setCloudKitEnabled:(BOOL)a3;
- (void)syncStateWillUpdate:(id)a3;
@end

@implementation IMDCKUtilities

- (BOOL)_serverAllowsSync
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKUtilities *)self _mininimumServerBagClientValue];
  if (v2 >= 1 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109376;
      v6[1] = 0;
      v7 = 2048;
      v8 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Madrid server bag does not allow us to sync. Our client version %d server client version %ld", v6, 0x12u);
    }
  }

  result = v2 < 1;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)cloudKitSyncingEnabled
{
  if (IMAllowMessagesIniCloud())
  {
    v3 = [(IMDCKUtilities *)self _serverAllowsSync];
    v4 = *MEMORY[0x277D19A08];
    if (v3)
    {
      v5 = *MEMORY[0x277D19B40];
      v6 = *MEMORY[0x277D19A08];
      if ((IMGetCachedDomainBoolForKey() & 1) == 0)
      {
        v7 = [(IMDCKUtilities *)self syncState];
        v8 = [v7 isFeatureEnabled];

        return v8;
      }
    }

    else
    {
      v11 = *MEMORY[0x277D19760];
      v12 = *MEMORY[0x277D19A08];
      if ((IMGetDomainBoolForKey() & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v15 = 0;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Putting user back into backup as Madrid server has turned off the feature", v15, 2u);
          }
        }

        v14 = +[IMDCKBackupController sharedInstance];
        [v14 setICloudBackupsDisabled:0];

        IMSetDomainBoolForKey();
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "**** cloudKitSyncingEnabled is turned off in this build", buf, 2u);
    }
  }

  return 0;
}

- (int64_t)_mininimumServerBagClientValue
{
  v2 = [(IMDCKUtilities *)self serverBag];
  v3 = [v2 objectForKey:@"ck-client-min-version"];

  v4 = [v3 integerValue];
  return v4;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4EF168;
  block[3] = &unk_278702AF8;
  block[4] = a1;
  if (qword_281421090 != -1)
  {
    dispatch_once(&qword_281421090, block);
  }

  v2 = qword_281420F60;

  return v2;
}

- (IDSServerBag)serverBag
{
  serverBag = self->_serverBag;
  if (!serverBag)
  {
    v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v5 = self->_serverBag;
    self->_serverBag = v4;

    serverBag = self->_serverBag;
  }

  return serverBag;
}

- (IMDCKSyncState)syncState
{
  syncState = self->_syncState;
  if (!syncState)
  {
    v4 = objc_alloc(MEMORY[0x277D1AA30]);
    v5 = [v4 initWithDomain:*MEMORY[0x277D19A08]];
    v6 = [objc_alloc(MEMORY[0x277D1A8E0]) initWithKeyValueStorage:v5];
    v7 = [[IMDCKSyncState alloc] initWithKeyValueCollection:v6];
    v8 = self->_syncState;
    self->_syncState = v7;

    [(IMDCKSyncState *)self->_syncState setDelegate:self];
    v9 = [(IMDCKUtilities *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_22B7CF6B4(v9);
    }

    syncState = self->_syncState;
  }

  return syncState;
}

- (id)_truthContainer
{
  v2 = +[IMDCKDatabaseManager sharedInstance];
  v3 = [v2 truthContainer];

  return v3;
}

- (BOOL)_isSyncingPausedOverride
{
  if (qword_281421398 != -1)
  {
    sub_22B7CF8FC();
  }

  return byte_27D8CFD18;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

+ (id)logHandle
{
  if (qword_2814212A0 != -1)
  {
    sub_22B7CF6A0();
  }

  v3 = qword_281421290;

  return v3;
}

- (void)broadcastCloudKitStateAfterFetchingAccountStatus
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22B4D44F0;
  v2[3] = &unk_278702B48;
  v2[4] = self;
  [(IMDCKUtilities *)self fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion:v2];
}

- (unint64_t)_primaryiCloudAccountSecurityLevel
{
  v3 = [(IMDCKUtilities *)self _primaryiCloudAccountAltDSID];
  if ([v3 length])
  {
    v4 = [(IMDCKUtilities *)self _accountManager];
    v5 = [v4 authKitAccountWithAltDSID:v3];

    if (v5)
    {
      v6 = [(IMDCKUtilities *)self _accountManager];
      v7 = [v6 securityLevelForAccount:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_primaryiCloudAccountAltDSID
{
  v3 = [(IMDCKUtilities *)self _primaryiCloudAccount];
  if (v3)
  {
    v4 = [(IMDCKUtilities *)self _accountManager];
    v5 = [v4 altDSIDForAccount:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_primaryiCloudAccount
{
  v2 = [(IMDCKUtilities *)self _accountStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

- (id)_accountStore
{
  if (qword_2814213E0 != -1)
  {
    sub_22B7CF8E8();
  }

  v3 = qword_2814213E8;

  return v3;
}

- (BOOL)_accountNeedsRepairOverride
{
  if (qword_2814213F0 != -1)
  {
    sub_22B7CF8C0();
  }

  return byte_27D8CFD00;
}

- (BOOL)isSyncingPaused
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(IMDCKUtilities *)self _isSyncingPausedOverride])
  {
    v5 = [(IMDCKUtilities *)self syncState];
    if ([v5 isSyncingEnabled])
    {
      v6 = [v5 lastSyncDate];

      if (v6)
      {
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            LOWORD(v16) = 0;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "syncing not paused because we have a valid sync date", &v16, 2u);
          }

LABEL_16:
        }
      }

      else
      {
        if ([v5 isSyncing])
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_17;
          }

          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            LOWORD(v16) = 0;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "syncing not paused because we are syncing", &v16, 2u);
          }

          goto LABEL_16;
        }

        v10 = [(IMDCKUtilities *)self isDeviceCharging];
        v11 = [(IMDCKUtilities *)self isDeviceOnWifi];
        v12 = IMOSLoggingEnabled();
        if (!v10 || !v11)
        {
          if (v12)
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = @"NO";
              if (v11)
              {
                v15 = @"YES";
              }

              else
              {
                v15 = @"NO";
              }

              if (v10)
              {
                v14 = @"YES";
              }

              v16 = 138412546;
              v17 = v15;
              v18 = 2112;
              v19 = v14;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "syncing paused: connected to Wifi: %@, device is charging: %@", &v16, 0x16u);
            }
          }

          v4 = 1;
          goto LABEL_18;
        }

        if (v12)
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            LOWORD(v16) = 0;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "syncing not paused because we are connected wifi and device is charging", &v16, 2u);
          }

          goto LABEL_16;
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "syncing not paused because syncing not enabled", &v16, 2u);
      }

      goto LABEL_16;
    }

LABEL_17:
    v4 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "syncing paused because syncing override is YES", &v16, 2u);
    }
  }

  v4 = 1;
LABEL_19:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)broadcastCloudKitState
{
  v3 = [(IMDCKUtilities *)self syncState];
  v4 = [(IMDCKUtilities *)self logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7CF784(v3);
  }

  [v3 broadcastSyncState];
}

- (id)_accountManager
{
  if (qword_2814213F8 != -1)
  {
    sub_22B7CF960();
  }

  v3 = qword_281421400;

  return v3;
}

- (IMLockdownManager)lockdownManager
{
  lockdownManager = self->_lockdownManager;
  if (!lockdownManager)
  {
    v4 = [MEMORY[0x277D19268] sharedInstance];
    v5 = self->_lockdownManager;
    self->_lockdownManager = v4;

    lockdownManager = self->_lockdownManager;
  }

  return lockdownManager;
}

- (FTDeviceSupport)deviceSupport
{
  deviceSupport = self->_deviceSupport;
  if (!deviceSupport)
  {
    v4 = [MEMORY[0x277D07DB0] sharedInstance];
    v5 = self->_deviceSupport;
    self->_deviceSupport = v4;

    deviceSupport = self->_deviceSupport;
  }

  return deviceSupport;
}

- (id)_truthDatabase
{
  v2 = +[IMDCKDatabaseManager sharedInstance];
  v3 = [v2 truthDatabase];

  return v3;
}

- (IMDefaults)imDefaults
{
  imDefaults = self->_imDefaults;
  if (!imDefaults)
  {
    v4 = objc_alloc_init(MEMORY[0x277D1A990]);
    v5 = self->_imDefaults;
    self->_imDefaults = v4;

    imDefaults = self->_imDefaults;
  }

  return imDefaults;
}

- (IMDSyncTelemetryReporter)telemetryReporter
{
  telemetryReporter = self->_telemetryReporter;
  if (!telemetryReporter)
  {
    v4 = objc_alloc_init(MEMORY[0x277D28690]);
    v5 = self->_telemetryReporter;
    self->_telemetryReporter = v4;

    telemetryReporter = self->_telemetryReporter;
  }

  return telemetryReporter;
}

- (IMDCKUtilities)initWithServerBag:(id)a3 lockDownmanager:(id)a4 deviceSupport:(id)a5 imDefaults:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = IMDCKUtilities;
  v15 = [(IMDCKUtilities *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serverBag, a3);
    objc_storeStrong(&v16->_lockdownManager, a4);
    objc_storeStrong(&v16->_deviceSupport, a5);
    objc_storeStrong(&v16->_imDefaults, a6);
    v17 = [(IMDCKUtilities *)v16 _authenticationController];
  }

  return v16;
}

- (void)syncStateWillUpdate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setSyncingEnabled:{-[IMDCKUtilities cloudKitSyncingEnabled](self, "cloudKitSyncingEnabled")}];
  [v4 setSyncingPaused:{-[IMDCKUtilities isSyncingPaused](self, "isSyncingPaused")}];
  v5 = [(IMDCKUtilities *)self backupController];
  [v4 setRemovedFromBackup:{objc_msgSend(v5, "iCloudBackupsDisabled")}];

  v6 = [(IMDCKUtilities *)self cloudKitSyncingEnabled];
  if ([(IMDCKUtilities *)self didKeyRollPendingCheck]|| !v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(IMDCKUtilities *)self didKeyRollPendingCheck];
        v10 = @"NO";
        if (v9)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if (v6)
        {
          v10 = @"YES";
        }

        *buf = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not performing key roll check didKeyRollPendingCheck %@ cloudKitSyncingEnabled %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [(IMDCKUtilities *)self setDidKeyRollPendingCheck:1];
    v7 = +[IMDCKUtilities sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B4EF4E0;
    v14[3] = &unk_278702B20;
    v15 = v4;
    [v7 PCSKeyRollPendingAsync:v14 timeout:10.0];
  }

  v12 = [(IMDCKUtilities *)self logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7CF6F8(v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)broadcastCloudKitStateAfterClearingErrors
{
  v3 = [(IMDCKUtilities *)self syncState];
  [v3 clearSyncErrors];
  [(IMDCKUtilities *)self broadcastCloudKitStateAfterFetchingAccountStatus];
}

- (void)keyRollPendingStateDidChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "updating key roll pending state", v4, 2u);
    }
  }

  [(IMDCKUtilities *)self setDidKeyRollPendingCheck:0];
  [(IMDCKUtilities *)self broadcastCloudKitStateAfterFetchingAccountStatus];
}

- (BOOL)shouldUseDevContainer
{
  v3 = *MEMORY[0x277D19A08];
  v4 = *MEMORY[0x277D19BE8];
  v5 = IMGetCachedDomainBoolForKey();
  if (v5)
  {
    v6 = [(IMDCKUtilities *)self lockdownManager];
    v7 = [v6 isInternalInstall];

    LOBYTE(v5) = v7;
  }

  return v5;
}

- (BOOL)shouldUseDevNickNameContainer
{
  v3 = *MEMORY[0x277D19A08];
  v4 = *MEMORY[0x277D19BF0];
  v5 = IMGetCachedDomainBoolForKey();
  if (v5)
  {
    v6 = [(IMDCKUtilities *)self lockdownManager];
    v7 = [v6 isInternalInstall];

    LOBYTE(v5) = v7;
  }

  return v5;
}

- (BOOL)shouldForceArchivedMessagesSync
{
  if (!IMIsRunningInAutomation() || !IMGetCachedDomainBoolForKey())
  {
    return 0;
  }

  v3 = [(IMDCKUtilities *)self lockdownManager];
  v4 = [v3 isInternalInstall];

  return v4;
}

- (int64_t)overrideNumberOfChatsToFetch
{
  v2 = [(IMDCKUtilities *)self lockdownManager];
  if ([v2 isInternalInstall])
  {
    v3 = IMIsRunningInUnitTesting();

    if (v3)
    {
      return -1;
    }

    v4 = *MEMORY[0x277D19A08];
    v5 = *MEMORY[0x277D19B98];
    v6 = IMGetCachedDomainValueForKey();
    if (!v6)
    {
      return -1;
    }

    v2 = v6;
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)overrideNumberOfChatsToWrite
{
  v2 = [(IMDCKUtilities *)self lockdownManager];
  if ([v2 isInternalInstall])
  {
    v3 = IMIsRunningInUnitTesting();

    if (v3)
    {
      return -1;
    }

    v4 = *MEMORY[0x277D19A08];
    v5 = *MEMORY[0x277D19BA0];
    v6 = IMGetCachedDomainValueForKey();
    if (!v6)
    {
      return -1;
    }

    v2 = v6;
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)isFirstSyncWithActivity:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDCKChatSyncController sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EFA48;
  v9[3] = &unk_278702930;
  v10 = v5;
  v8 = v5;
  [v7 anyChatExistsOnServerWithActivity:v6 completion:v9];
}

- (unint64_t)messageDatabaseSize
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = IMSharedHelperMessagesRootFolderPath();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Get file size on path: %@", &v7, 0xCu);
    }
  }

  v4 = IMLegacyCalculateFileSizeForPath();

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)currentStorageOnDevice
{
  v22 = self;
  v41[3] = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "[IMDCKUtilities currentStorageOnDevice]";
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "%s: retrieving current storage for CloudKit storage calculation", buf, 0xCu);
    }
  }

  v27 = IMSMSDirectoryURL();
  v26 = [@"sms.db" stringByAppendingString:@"-wal"];
  v25 = [v27 URLByAppendingPathComponent:@"sms.db"];
  v24 = [v27 URLByAppendingPathComponent:v26];
  v23 = IMAttachmentsDirectoryURL();
  v41[0] = v25;
  v41[1] = v24;
  v41[2] = v23;
  [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v4)
  {
    v5 = *v31;
    v6 = *MEMORY[0x277CBE868];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v29 = 0;
        v9 = [v8 getResourceValue:&v29 forKey:v6 error:{0, v22}];
        v10 = v29;
        v11 = v10;
        if (v9)
        {
          [v10 BOOLValue];
        }

        v12 = [v8 path];
        v13 = IMCalculateFileSizeForPath();

        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v8 path];
            *buf = 138412546;
            v35 = v15;
            v36 = 2048;
            v37 = v13;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Calculated file size on path %@ as: %llu", buf, 0x16u);
          }
        }

        v3 += v13;
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v4);
  }

  [(IMDCKUtilities *)v22 _iCloudStorageSizeFudgeFactorBagValue];
  v17 = v16;
  v18 = (v16 * v3);
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v35 = *&v17;
      v36 = 2048;
      v37 = v3;
      v38 = 2048;
      v39 = v18;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "fudge factor (%f) total size (%llu) final size (%llu)", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)estimateQuotaAvailability:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDCKBackupController sharedInstance];
  v5 = [v4 iCloudBackupsDisabled];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"YES";
      if (v5)
      {
        v7 = @"NO";
      }

      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "performAdditionalStorageRequiredCheckWithMessageContext , backup exists: %@", buf, 0xCu);
    }
  }

  if (v5)
  {
    v8 = +[IMDCKUtilities sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22B4F0108;
    v10[3] = &unk_278702930;
    v11 = v3;
    [v8 isFirstSyncWithActivity:0 completion:v10];
  }

  else if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)checkiCloudQuota:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Check if there is enough iCloud quota", buf, 2u);
    }
  }

  v6 = objc_alloc_init(MEMORY[0x277CBC420]);
  v7 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v7 setQualityOfService:17];
  [v7 setAllowsCellularAccess:1];
  [v6 setConfiguration:v7];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_22B4F04F0;
  v13 = &unk_278702B98;
  v14 = self;
  v15 = v4;
  v8 = v4;
  [v6 setFetchUserQuotaCompletionBlock:&v10];
  v9 = [(IMDCKUtilities *)self _truthDatabase:v10];
  [v9 addOperation:v6];
}

- (BOOL)_isInExitState
{
  v2 = *MEMORY[0x277D19A08];
  v3 = *MEMORY[0x277D19B40];
  return IMGetCachedDomainBoolForKey();
}

- (BOOL)_mocFeatureEnabled
{
  v2 = [(IMDCKUtilities *)self syncState];
  v3 = [v2 isFeatureEnabled];

  return v3;
}

- (BOOL)_shouldiCloudSwitchBeEnabled
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(IMDCKUtilities *)self iCloudAccountMatchesiMessageAccount])
  {
    v10 = *MEMORY[0x277D19A08];
    v11 = *MEMORY[0x277D19758];
    IMSetDomainBoolForKey();
    v12 = [(IMDCKUtilities *)self syncState];
    [v12 setFeatureEnabled:0];

    v13 = [(IMDCKUtilities *)self backupController];
    [v13 setICloudBackupsDisabled:0];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_shouldiCloudSwitchBeEnabled is FALSE as iCloud and iMessage accounts do not match up", &v19, 2u);
      }

      goto LABEL_15;
    }

LABEL_16:
    LOBYTE(v5) = 0;
    goto LABEL_17;
  }

  v3 = [(IMDCKUtilities *)self _serverAllowsSync];
  v4 = [(IMDCKUtilities *)self _mocFeatureEnabled];
  if (!v3)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_shouldiCloudSwitchBeEnabled is FALSE because server does not allow sync", &v19, 2u);
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v5 = v4;
  v6 = [(IMDCKUtilities *)self _isInExitState];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
        v19 = 138412290;
        v20 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "_shouldiCloudSwitchBeEnabled is FALSE because we are in exit state. Is moc feature enabled %@", &v19, 0xCu);
      }
    }

    goto LABEL_16;
  }

  if (v7)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithBool:v5];
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "We are not in exit state, _shouldiCloudSwitchBeEnabled is based on whether feature is enabled or not: %@", &v19, 0xCu);
    }
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)cloudKitSyncDownloadAssetsOnly
{
  v2 = [(IMDCKUtilities *)self syncState];
  v3 = [v2 isFeatureEnabled];

  return v3 ^ 1;
}

- (void)setCloudKitEnabled:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Request to set cloudkit enabled %@", buf, 0xCu);
    }
  }

  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v9 = *MEMORY[0x277D19A08];
  v10 = *MEMORY[0x277D19C00];
  IMSetDomainValueForKey();

  if (v3)
  {
    v11 = *MEMORY[0x277D19A50];
    v12 = *MEMORY[0x277D19A60];
    if ((IMGetDomainBoolForKeyWithDefaultValue() & 1) == 0)
    {
      v13 = +[IMDCKSyncController sharedInstance];
      [v13 setBroadcastedSyncStateStateToStarting];
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Setting priority defaults", buf, 2u);
      }
    }

    v15 = *MEMORY[0x277D19BC8];
    IMSetDomainBoolForKey();
    v16 = +[IMDCKExitManager sharedInstance];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B4F0CF4;
    v19[3] = &unk_278702BE8;
    v19[4] = self;
    v20 = v3;
    [v16 exitRecordDateWithCompletion:v19];
  }

  else
  {
    [(IMDCKUtilities *)self setCloudKitSyncingEnabled:0];
    [(IMDCKUtilities *)self _didAttemptToUpdateCloudKitEnablementTo:0 result:1];
    v17 = +[IMDCKBackupController sharedInstance];
    [v17 setICloudBackupsDisabled:0];

    [(IMDCKUtilities *)self clearLocalCloudKitSyncState:17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clearLocalCloudKitSyncState:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = a3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Clearing local sync state, flags %x", v14, 8u);
    }
  }

  v5 = +[IMDCKChatSyncController sharedInstance];
  [v5 clearLocalSyncState:a3];

  v6 = +[IMDCKMessageSyncController sharedInstance];
  [v6 clearLocalSyncState:a3];

  v7 = +[IMDCKAttachmentSyncController sharedInstance];
  [v7 clearLocalSyncState:a3];

  v8 = +[IMDCKUpdateSyncController sharedInstance];
  [v8 clearLocalSyncState:a3];

  v9 = +[IMDCKRecoverableMessageSyncController sharedInstance];
  [v9 clearLocalSyncState:a3];

  v10 = +[IMDCKRecordSaltManager sharedInstance];
  [v10 clearLocalSyncState];

  v11 = +[IMDCKSyncController sharedInstance];
  [v11 clearCKRelatedDefaults];

  v12 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(v9) = [v12 isMessagesIniCloudVersion2];

  if (v9)
  {
    [MEMORY[0x277D28688] clearSyncStoreWhenSafe];
    [MEMORY[0x277D28688] clearLocalCountsWhenSafe];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)serverAllowsMetricSubmission
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-submit-metrics-min-version"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 3;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      v8 = v7;
      v9 = @"NO";
      if (v5 < 3)
      {
        v9 = @"YES";
      }

      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = &unk_283F4E438;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "server allows submitting metrics result %@ clientVersion %@ serverVersion %@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 < 3;
}

- (BOOL)serverAllowsAnalyticSubmission
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-submit-analytics-min-version"];
  v4 = [v3 unsignedIntegerValue];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      v7 = v6;
      v8 = @"NO";
      if (v4 < 3)
      {
        v8 = @"YES";
      }

      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = &unk_283F4E438;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "server allows submitting analytics result %@ clientVersion %@ serverVersion %@", &v11, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 < 3;
}

- (BOOL)serverAllowsAnalyticDetailsSubmission
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"ck-submit-analytics-details-min-version"];
  v4 = [v3 unsignedIntegerValue];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      v7 = v6;
      v8 = @"NO";
      if (v4 < 3)
      {
        v8 = @"YES";
      }

      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = &unk_283F4E438;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "server allows submitting analytics details result %@ clientVersion %@ serverVersion %@", &v11, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 < 3;
}

- (id)_getKeepMessagesValue
{
  v2 = *MEMORY[0x277D1A6C0];
  v3 = *MEMORY[0x277D1A6C8];
  return IMGetCachedDomainValueForKey();
}

- (BOOL)_shouldDisplayPopUpForResettingKeepMessages
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKUtilities *)self _getKeepMessagesValue];
  v3 = [v2 integerValue];
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Keep Messages value should be altered from %@ to 0", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 != 0;
}

- (void)_resetKeepMessagesSettingandBroadcastToAllDevices
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D1A6C0];
  v4 = *MEMORY[0x277D1A6E0];
  v5 = IMGetCachedDomainValueForKey();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue] + 1;
  }

  else
  {
    v7 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Resetting Keep Message setting to Keep forever.  VersionID: %ld", &v16, 0xCu);
    }
  }

  if ([(IMDCKUtilities *)self _shouldDisplayPopUpForResettingKeepMessages])
  {
    v9 = *MEMORY[0x277D1A6D0];
    IMSetDomainValueForKey();
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  IMSetDomainValueForKey();

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v12 = *MEMORY[0x277D1A6C8];
  IMSetDomainValueForKey();

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D1A6B8], 0, 0, 1u);
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v14, *MEMORY[0x277D1A6E8], 0, 0, 1u);
  notify_post(*MEMORY[0x277D1A6D8]);

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_serverAllowsCacheDelete
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKUtilities *)self serverBag];
  v3 = [v2 objectForKey:@"ck-cache-delete-version-V3"];

  v4 = [v3 unsignedIntegerValue];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (v4 >= 2)
      {
        v6 = @"NO";
      }

      else
      {
        v6 = @"YES";
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      v11 = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "server allows cached delete check result %@ clientVersion %@ serverVersion %@", &v11, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 < 2;
}

- (BOOL)enableAttachmentMetricCollection
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D19268] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (v4 && (-[IMDCKUtilities serverBag](self, "serverBag"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKey:@"ck-enable-attachment-validation"], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "enableAttachmentMetricCollection overridden by iMessage server", &v13, 2u);
      }
    }

    v8 = 1;
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
      v10 = @"NO";
      if (v8)
      {
        v10 = @"YES";
      }

      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Should enable attachment metric-ing %@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)cacheDeleteEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(IMDCKUtilities *)self _allowDestructiveMOCFeaturesBasedOnDSID])
  {
    v3 = [(IMDCKUtilities *)self _serverAllowsCacheDelete];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277D19268] sharedInstance];
  v5 = [v4 isInternalInstall];

  v6 = ((v5 | v3) & 1) != 0 && [(IMDCKUtilities *)self cloudKitSyncingEnabled];
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

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "CacheDeleteEnabled %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_serverAllowsRemovalFromBackUp
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKUtilities *)self serverBag];
  v3 = [v2 objectForKey:@"ck-remove-from-backup-version-V3"];

  v4 = [v3 unsignedIntegerValue];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      v7 = v6;
      v8 = @"NO";
      if (v4)
      {
        v8 = @"YES";
      }

      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "server allows removal from backup result %@ serverVersion %@", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (BOOL)removeFromBackUpAllowed
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(IMDCKUtilities *)self _allowDestructiveMOCFeaturesBasedOnDSID]&& [(IMDCKUtilities *)self _serverAllowsRemovalFromBackUp]&& [(IMDCKUtilities *)self cloudKitSyncingEnabled];
  v4 = [MEMORY[0x277D19268] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "This is an internal install so overriding server bag check and defaulting to yes", &v11, 2u);
      }
    }

    v3 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v3)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Removal from back up allowed %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)internalQueue
{
  if (qword_2814212F8 != -1)
  {
    sub_22B7CF898();
  }

  v3 = qword_281421300;

  return v3;
}

- (BOOL)accountIsVerifiedForMOCAndSafeForCacheDelete
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v4 startTimingForKey:@"accountIsVerifiedForMOCAndSafeForCacheDelete"];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Checking if account is verified", buf, 2u);
    }
  }

  v6 = [(IMDCKUtilities *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F2904;
  block[3] = &unk_278702C50;
  block[4] = self;
  v17 = &v18;
  v7 = v3;
  v16 = v7;
  dispatch_async(v6, block);

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "About to wait for accountIsVerifiedForMOCAndSafeForCacheDelete call", buf, 2u);
    }
  }

  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v7, v9);
  [v4 stopTimingForKey:@"accountIsVerifiedForMOCAndSafeForCacheDelete"];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (*(v19 + 24))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 138412546;
      v23 = v4;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Finished blocking accountIsVerifiedForMOCAndSafeForCacheDelete with time: %@ and accountValidForCD %@", buf, 0x16u);
    }
  }

  v12 = *(v19 + 24) == 1 && [(IMDCKUtilities *)self cacheDeleteEnabled];

  _Block_object_dispose(&v18, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_authenticationController
{
  if (qword_2814213D0 != -1)
  {
    sub_22B7CF8AC();
  }

  v3 = qword_2814213D8;

  return v3;
}

- (id)_createAccountError:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9 = *MEMORY[0x277CCA450];
    v10[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDCKUtilitiesErrorDomain" code:1 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)fetchCloudKitAccountStatusWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"isEligibleForTruthZoneOverride", *MEMORY[0x277D19A08], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"YES";
        if (!v6)
        {
          v8 = @"NO";
        }

        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Overriding isEligibleForTruthZone: %@", buf, 0xCu);
      }
    }

    if (keyExistsAndHasValidFormat)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    v4[2](v4, v9, 0);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B4F2F4C;
    aBlock[3] = &unk_278702C78;
    v22 = v4;
    v10 = _Block_copy(aBlock);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Fetching cloud kit account info with cloudkit api", buf, 2u);
      }
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B4F3118;
    v19[3] = &unk_278702CA0;
    v19[4] = self;
    v20 = v10;
    v12 = v10;
    v13 = _Block_copy(v19);
    v14 = [(IMDCKUtilities *)self _truthContainer];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B4F3600;
    v17[3] = &unk_278702CF0;
    v18 = v13;
    v15 = v13;
    [v14 accountInfoWithCompletionHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRepairAccountWithAccountStatus:(int64_t)a3 securityLevel:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(IMDCKUtilities *)self _accountNeedsRepairOverride])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "account repair overridden", &v19, 2u);
      }
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    v9 = [(IMDCKUtilities *)self syncState];
    v10 = [v9 isSyncingEnabled];

    if (v10)
    {
      v8 = a3 == 3 && a4 == 4 || a3 == 2;
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = @"NO";
          if (v8)
          {
            v14 = @"YES";
          }

          if (a3 > 4)
          {
            v15 = 0;
          }

          else
          {
            v15 = off_278702EC0[a3];
          }

          v19 = 138412546;
          v20 = v14;
          v21 = 2112;
          v22 = v15;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Account needs repair: %@ (account status: %@)", &v19, 0x16u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "MiC is disabled, does not need repair", &v19, 2u);
        }
      }

      LOBYTE(v8) = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKUtilities *)self _primaryiCloudAccountSecurityLevel];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 6)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"AKAppleIDSecurityLevel(%ld)", v5];
      }

      else
      {
        v7 = off_278702EE8[v5];
      }

      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Got local account security level %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B4F3C10;
  aBlock[3] = &unk_278702D18;
  v12 = v4;
  v13 = v5;
  aBlock[4] = self;
  v8 = v4;
  v9 = _Block_copy(aBlock);
  [(IMDCKUtilities *)self fetchCloudKitAccountStatusWithCompletion:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchAccountStatusAndUpdateMiCSwitchEligibilityIfNeededOnImagentLaunch
{
  v3 = *MEMORY[0x277D19A08];
  v4 = *MEMORY[0x277D199D8];
  if ((IMGetCachedDomainBoolForKeyWithDefaultValue() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Fetching security level and updating mic switch eligible on imagent launch", v6, 2u);
      }
    }

    [(IMDCKUtilities *)self fetchAccountStatusAndUpdateMiCSwitchEligibility];
  }
}

- (BOOL)_checkIfEnabledByServerBagOrDefault:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKUtilities *)self serverBag];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v7)
      {
        v9 = @"YES";
      }

      v18 = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Server allowing %@: %@", &v18, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D19A08];
  v11 = IMGetCachedDomainBoolForKey();
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (v11)
      {
        v13 = @"YES";
      }

      v18 = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Defaults over allowing %@: %@", &v18, 0x16u);
    }
  }

  v14 = [(IMDCKUtilities *)self lockdownManager];
  if (![v14 isInternalInstall])
  {

    goto LABEL_20;
  }

  if (((v7 | v11) & 1) == 0)
  {
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v15 = 1;
LABEL_21:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)shouldPresentTTROnCloudKitError
{
  if (IMIsRunningInAutomation())
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel__checkIfEnabledByServerBagOrDefault_);
}

- (void)_askToTapToRadarWithString:(id)a3 internalOnly:(BOOL)a4
{
  v4 = a3;
  if (qword_27D8CFD10 != -1)
  {
    sub_22B7CF8D4();
  }

  v5 = v4;
  v6 = MEMORY[0x277D192D0];
  v7 = [MEMORY[0x277CCACA8] stringGUID];
  v8 = [v6 userNotificationWithIdentifier:v7 title:@"Messages on iCloud Debug UI" message:v5 defaultButton:@"File a radar" alternateButton:@"Dismiss" otherButton:0];

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "We present a CK UI", buf, 2u);
      }
    }

    v10 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v10 trackEvent:*MEMORY[0x277D1A1E0]];

    [v8 setUsesNotificationCenter:0];
    [v8 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
    v11 = [MEMORY[0x277D192D8] sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B4F44D8;
    v12[3] = &unk_278702D40;
    v13 = v5;
    [v11 addUserNotification:v8 listener:0 completionHandler:v12];
  }
}

- (id)recordNameForMessageWithGUID:(id)a3 usingSalt:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, v6];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
        *buf = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "IMDCKUtilities recordNameForMessageWithGUID invalid parameters [key length] %@ guid %@", buf, 0x16u);
      }
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)syncFailureMetricString:(id)a3 isRecoverable:(BOOL)a4 error:(id)a5
{
  v6 = MEMORY[0x277CCACA8];
  if (a4)
  {
    v7 = @"RecoverableError";
  }

  else
  {
    v7 = @"NonRecoverableError";
  }

  v8 = a5;
  v9 = a3;
  v10 = [v8 domain];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v8 code];

  v13 = [v11 numberWithInteger:v12];
  v14 = [v6 stringWithFormat:@"%@-%@-%@-%@", v9, v7, v10, v13];

  return v14;
}

- (id)extractServerRecordFromCKServerErrorRecordChanged:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 code] == 14)
  {
    v4 = [v3 userInfo];
    v5 = [v4 valueForKey:*MEMORY[0x277CBBFE8]];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "******** IMDCKUtilities not a partial error %@", &v9, 0xCu);
      }
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)resetLastSyncDate
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting last sync date to nil", v5, 2u);
    }
  }

  v4 = [(IMDCKUtilities *)self syncState];
  [v4 removeObjectFromAnalyticSyncDatesDictionaryForKey:*MEMORY[0x277D199E0]];

  [(IMDCKUtilities *)self reportMOCDebuggingErrorWithString:@"Last sync date was reset to nil" internalOnly:0 initialSync:0];
}

- (void)repairACAccountEnablementStatusIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[IMDServiceController sharedController];
  v4 = [v3 serviceWithName:*MEMORY[0x277D1A620]];

  v5 = +[IMDAccountController sharedInstance];
  v6 = [v5 accountsForService:v4];

  if ([v6 count])
  {
    v7 = *MEMORY[0x277D19A08];
    v8 = *MEMORY[0x277D19C88];
    IMGetDomainBoolForKey();
    v9 = *MEMORY[0x277D199A0];
    if (IMGetCachedDomainIntForKeyWithDefaultValue() < 1)
    {
      v11 = [(IMDCKUtilities *)self _shouldiCloudSwitchBeEnabled];
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = @"NO";
          if (v11)
          {
            v13 = @"YES";
          }

          v15 = 138412290;
          v16 = v13;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Needs to repair ACAccount enablement; force switching ACAccount switch to %@.", &v15, 0xCu);
        }
      }

      [(IMDCKUtilities *)self _setiCloudSettingsSwitchEnabled:v11];
      IMSetDomainIntForKey();
    }

    else if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No need to try to repair ACAccount dataclass enablement status.", &v15, 2u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)evalToggleiCloudSettingsSwitch
{
  v3 = [(IMDCKUtilities *)self _shouldiCloudSwitchBeEnabled];

  [(IMDCKUtilities *)self _setiCloudSettingsSwitchEnabled:v3];
}

- (void)_fetchPrimaryAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKUtilities *)self _accountStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B4F509C;
  v7[3] = &unk_278702D88;
  v8 = v4;
  v6 = v4;
  [v5 aa_primaryAppleAccountWithCompletion:v7];
}

- (void)fetchiCloudAccountPersonID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B4F5268;
  v6[3] = &unk_278702DB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(IMDCKUtilities *)self _fetchPrimaryAccountWithCompletion:v6];
}

- (void)primaryAccountHasiCloudBackupEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B4F54E0;
  v6[3] = &unk_278702D88;
  v7 = v4;
  v5 = v4;
  [(IMDCKUtilities *)self _fetchPrimaryAccountWithCompletion:v6];
}

- (BOOL)isDeviceCharging
{
  v2 = [MEMORY[0x277D1A998] sharedInstance];
  v3 = [v2 isDeviceCharging];

  return v3;
}

- (BOOL)isDeviceOnWifi
{
  v2 = [MEMORY[0x277D1A998] sharedInstance];
  v3 = [v2 isDeviceOnWifi];

  return v3;
}

- (id)deviceConditions
{
  v3 = [(IMDCKUtilities *)self isDeviceCharging];
  v4 = [(IMDCKUtilities *)self isDeviceOnWifi];
  v5 = [(IMDCKUtilities *)self syncState];
  v6 = [v5 lastSyncDate];

  v7 = [(IMDCKUtilities *)self syncState];
  v8 = [v7 getAnalyticSyncDatesObjectForKey:*MEMORY[0x277D199E0]];

  v9 = @"NO";
  if (v3 && v4)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (v3)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (v4)
  {
    v9 = @"YES";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"isOnWifiAndPower %@, Is charging %@, isOnWifi %@, lastSyncDate %@ lastCompleteSyncedDBDate %@", v10, v11, v9, v6, v8];

  return v12;
}

- (BOOL)deviceConditionsAllowPeriodicSync
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(IMDCKUtilities *)self isDeviceCharging];
  v4 = [(IMDCKUtilities *)self isDeviceOnWifi];
  v5 = v4;
  v6 = v3 && v4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v6)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      if (v3)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      if (v5)
      {
        v8 = @"YES";
      }

      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "isOnWifiAndPower %@, Is charging %@ , isOnWifi %@ ", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)newfilteredArrayRemovingCKRecordDupes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v9 = *v19;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 recordID];
        v13 = [v12 recordName];

        if (v13 && ([v4 containsObject:v13] & 1) == 0)
        {
          [v5 addObject:v11];
          [v4 addObject:v13];
        }

        else if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = v17;
            v23 = v11;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found duplicate record while syncing or record does not have a record name. Dropping record: %@", buf, 0xCu);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)newfilteredArrayRemovingCKRecordIDDupes:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v9 = *v18;
    *&v8 = 138412290;
    v16 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 recordName];
        if (v12 && ([v4 containsObject:v12] & 1) == 0)
        {
          [v5 addObject:v11];
          [v4 addObject:v12];
        }

        else if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found duplicate recordID while syncing or recordID does not have a record name. Dropping record: %@", buf, 0xCu);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)lastDeviceBackUpDate
{
  v2 = +[IMDCKBackupController sharedInstance];
  v3 = [v2 dateOfLastBackUp];

  return v3;
}

- (id)deviceActiveString
{
  if ([(IMDCKUtilities *)self _deviceActive])
  {
    return @"active";
  }

  else
  {
    return @"inActive";
  }
}

- (BOOL)_deviceActive
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D19A08];
  v3 = *MEMORY[0x277D19B60];
  v4 = IMGetCachedDomainValueForKey();
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:v4];
    v7 = v6 > 86400.0;
  }

  else
  {
    v7 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"YES";
      if (v7)
      {
        v9 = @"NO";
      }

      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Active state %@ last activity date %@", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return !v7;
}

- (void)_showCKLogNotificationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D192D0];
  v5 = [MEMORY[0x277CCACA8] stringGUID];
  v6 = [v4 userNotificationWithIdentifier:v5 title:@"Messages on iCloud Debug UI" message:@"Messages will automatically send Apple a sysdiagnose when Messages detects an issue with Messages on iCloud.  You will be notified if a radar is created defaultButton:otherwise the data will be automatically deleted after seven days.  You may turn this off in Internal Settings > Messages" alternateButton:@"Just send" otherButton:{@"Notify me each time", 0}];

  if (v6)
  {
    v7 = [MEMORY[0x277D192D8] sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B4F6160;
    v8[3] = &unk_278702DD8;
    v9 = v3;
    [v7 addUserNotification:v6 listener:0 completionHandler:v8];
  }
}

- (BOOL)isLocalCachedSaltPresent
{
  v2 = +[IMDCKRecordSaltManager sharedInstance];
  v3 = [v2 cachedSalt];
  v4 = [v3 length] != 0;

  return v4;
}

- (BOOL)readServerBagBoolForKey:(id)a3 defaultValue:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(IMDCKUtilities *)self serverBag];
  v8 = [v7 objectForKey:v6];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v8 BOOLValue];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v4)
        {
          v10 = @"YES";
        }

        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Read server bag BOOL: [%@] for key: [%@]", &v14, 0x16u);
      }

LABEL_14:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (v4)
      {
        v11 = @"YES";
      }

      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Server bag BOOL default: [%@] for key: [%@]", &v14, 0x16u);
    }

    goto LABEL_14;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)postSyncStateToCloudKit:(id)a3
{
  v9 = a3;
  if ([(IMDCKUtilities *)self shouldReportToRTC])
  {
    v4 = [(IMDCKUtilities *)self syncState];
    v5 = [v4 syncReportDictionary];
    [(IMDCKUtilities *)self postSyncStateToRTC:v9 category:2 reportDictionary:v5];
  }

  if ([(IMDCKUtilities *)self shouldReportToAnalytics]&& [(IMDCKUtilities *)self serverAllowsAnalyticDetailsSubmission])
  {
    v6 = [(IMDCKUtilities *)self exitManager];
    v7 = [(IMDCKUtilities *)self syncState];
    v8 = [v7 syncReportDictionary];
    [v6 submitCloudKitAnalyticWithOperationGroupName:v9 analyticDictionary:v8];
  }
}

- (void)postSyncStateToRTC:(id)a3 category:(int64_t)a4 reportDictionary:(id)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"groupName";
  v15[1] = @"deviceState";
  v16[0] = a3;
  v8 = a5;
  v9 = a3;
  v10 = [(IMDCKUtilities *)self deviceActiveString];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [v11 mutableCopy];
  [v12 addEntriesFromDictionary:v8];

  v13 = [(IMDCKUtilities *)self telemetryReporter];
  [v13 postMessage:v12 category:a4];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportZoneCreation:(id)a3
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ZoneCreateDate-%@", a3];
  v4 = [(IMDCKUtilities *)self syncState];
  v5 = [MEMORY[0x277CBEAA8] date];
  [v4 setAnalyticSyncDatesDictionaryObject:v5 forKey:v6 shouldOverrideIfExists:0];
}

- (void)reportErrorForSyncType:(int64_t)a3 syncStep:(id)a4 response:(int64_t)a5 error:(id)a6
{
  if (a6)
  {
    v7 = a6;
    v8 = [(IMDCKUtilities *)self syncState];
    [v8 addSyncError:v7];
  }
}

- (id)finalSyncStateFor:(int64_t)a3
{
  if (a3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_278702F18[a3];
  }

  return v4;
}

- (BOOL)isCKPartialError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v5 = [v3 code] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)findRootCauses:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (![(IMDCKUtilities *)self isCKPartialError:v4])
  {
    goto LABEL_18;
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v19 = v7;
  v20 = v4;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v22;
  v12 = *MEMORY[0x277CBBF50];
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = [v8 objectForKeyedSubscript:{*(*(&v21 + 1) + 8 * i), v19, v20, v21}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 domain];
        if (![v15 isEqualToString:v12])
        {

LABEL_13:
          [v5 addObject:v14];
          goto LABEL_14;
        }

        v16 = [v14 code];

        if (v16 != 22)
        {
          goto LABEL_13;
        }
      }

LABEL_14:
    }

    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v10);
LABEL_16:

  v7 = v19;
  v4 = v20;
LABEL_17:

LABEL_18:
  if (![v5 count])
  {
    [v5 addObject:v4];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)simplifiedError:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 localizedDescription];
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x277CCA450];
LABEL_4:
    v14 = v6;
    v15[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    goto LABEL_5;
  }

  v7 = [v3 userInfo];
  v6 = *MEMORY[0x277CCA450];
  v5 = [v7 objectForKey:*MEMORY[0x277CCA450]];

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:
  v9 = MEMORY[0x277CCA9B8];
  v10 = [v3 domain];
  v11 = [v9 errorWithDomain:v10 code:objc_msgSend(v3 userInfo:{"code"), v8}];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)PCSKeyRollPending
{
  if (qword_281421470 != -1)
  {
    sub_22B7CF938();
  }

  v3 = off_281421478;
  if (!off_281421478)
  {
    return 0;
  }

  return v3(@"Messages3");
}

- (void)PCSKeyRollPendingAsync:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v7 = dispatch_time(0, (a4 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F75E8;
  block[3] = &unk_278702E00;
  v16 = v17;
  v8 = v6;
  v15 = v8;
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
  v9 = [(IMDCKUtilities *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B4F7620;
  v11[3] = &unk_278702E50;
  v12 = v8;
  v13 = v17;
  v11[4] = self;
  v10 = v8;
  dispatch_async(v9, v11);

  _Block_object_dispose(v17, 8);
}

- (unsigned)PCSReportManateeStatus
{
  if (qword_27D8CFD48 != -1)
  {
    sub_22B7CF94C();
  }

  v2 = off_27D8CFD40;
  if (off_27D8CFD40)
  {

    return v2(@"Engram");
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to weak link ProtectedCloudStorage, this should not happen", v5, 2u);
      }
    }

    return 0;
  }
}

- (void)PCSReportManateeStatusAsync:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v7 = dispatch_time(0, (a4 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F7A9C;
  block[3] = &unk_278702E00;
  v16 = v17;
  v8 = v6;
  v15 = v8;
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
  v9 = [(IMDCKUtilities *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B4F7AD4;
  v11[3] = &unk_278702E50;
  v12 = v8;
  v13 = v17;
  v11[4] = self;
  v10 = v8;
  dispatch_async(v9, v11);

  _Block_object_dispose(v17, 8);
}

- (id)dsid
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(IMDCKUtilities *)self _accountStore];
  v5 = [v4 aa_primaryAppleAccount];

  v6 = [v5 aa_personID];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)_primaryAccountCountryCode
{
  v3 = [(IMDCKUtilities *)self _accountManager];
  v4 = [v3 primaryAuthKitAccount];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [(IMDCKUtilities *)self _accountManager];
    v6 = [v7 appleIDCountryCodeForAccount:v5];
  }

  return v6;
}

- (BOOL)deviceIsPhoneOrWatch
{
  v2 = [MEMORY[0x277D07DB0] sharedInstance];
  v3 = [v2 deviceType] != 4;

  return v3;
}

- (BOOL)shouldAttemptMiCOnByDefault
{
  v2 = [(IMDCKUtilities *)self serverBag];
  v3 = [v2 objectForKey:*MEMORY[0x277D19A10]];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (BOOL)iCloudAccountMatchesiMessageAccount
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = [(IMDCKUtilities *)self deviceIsPhoneOrWatch];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v31)
      {
        v4 = @"YES";
      }

      *buf = 138412290;
      v39 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "is phone or watch: [%@]", buf, 0xCu);
    }
  }

  v30 = [(IMDCKUtilities *)self _primaryiCloudAccount];
  v5 = [(IMDCKUtilities *)self dsid];
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"D:%@", v5];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v33;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "iCloud DSID %@", buf, 0xCu);
    }
  }

  if (v30 && [(__CFString *)v33 length])
  {
    v7 = +[IMDServiceController sharedController];
    v29 = [v7 serviceWithName:*MEMORY[0x277D1A620]];

    v8 = +[IMDAccountController sharedInstance];
    v9 = [v8 accountsForService:v29];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v11)
    {
      v12 = *v35;
      v32 = v31;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 idsAccount];
            v16 = [v15 profileID];
            if (v16 && [v15 accountType] == 1)
            {
              if (IMOSLoggingEnabled())
              {
                v17 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v39 = v16;
                  _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "iMessage account DSID %@", buf, 0xCu);
                }
              }

              v18 = [(__CFString *)v16 isEqualToString:v33];
              v19 = IMOSLoggingEnabled();
              if (v18)
              {
                if (v19)
                {
                  v20 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    v21 = [v15 profileID];
                    v22 = [v14 isActive];
                    *buf = 138412802;
                    v23 = @"NO";
                    if (v22)
                    {
                      v23 = @"YES";
                    }

                    v39 = v33;
                    v40 = 2112;
                    v41 = v21;
                    v42 = 2112;
                    v43 = v23;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "We found one that matches up (icloud: %@, iMessage: %@), the ids account is active: [%@]", buf, 0x20u);
                  }
                }

                if (v31 || [v14 isActive])
                {

                  v26 = 1;
                  goto LABEL_47;
                }
              }

              else
              {
                if (v19)
                {
                  v24 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    v25 = [v15 profileID];
                    *buf = 138412546;
                    v39 = v33;
                    v40 = 2112;
                    v41 = v25;
                    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "iCloud account %@ and iMessage account %@ DO NOT match up", buf, 0x16u);
                  }
                }

                v32 = 0;
              }
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = v31;
LABEL_47:
      v32 = v26;
    }
  }

  else
  {
    v32 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

- (BOOL)signedIntoiCloudAccount
{
  v2 = [(IMDCKUtilities *)self _primaryiCloudAccount];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)signedIntoiMessageAccount
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[IMDServiceController sharedController];
  v3 = [v2 serviceWithName:*MEMORY[0x277D1A620]];

  v4 = +[IMDAccountController sharedInstance];
  v5 = [v4 accountsForService:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 idsAccount];
          if ([v11 accountType] == 1 && (objc_msgSend(v11, "isActive") & 1) != 0)
          {

            LOBYTE(v7) = 1;
            goto LABEL_14;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)signedIntoiCloudAndiMessageAndiCloudAccountMatchesiMessageAccount
{
  v3 = [(IMDCKUtilities *)self _primaryiCloudAccount];
  if (v3)
  {
    v4 = [(IMDCKUtilities *)self dsid];
    v5 = [v4 length] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(IMDCKUtilities *)self signedIntoiMessageAccount];
  if (v5 || !v6)
  {
    return 0;
  }

  return [(IMDCKUtilities *)self iCloudAccountMatchesiMessageAccount];
}

- (void)downgradingFromHSA2AndDisablingMOC
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "/**---DISABLING MESSAGES ON ICLOUD---**/", v6, 2u);
    }
  }

  v4 = *MEMORY[0x277D19A20];
  v5 = *MEMORY[0x277D19B20];
  IMSetDomainBoolForKey();
  [(IMDCKUtilities *)self setCloudKitSyncingEnabled:0];
}

- (void)eligibleForTruthZoneWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Fetching eligibility for truth zone before attempting to sync", buf, 2u);
    }
  }

  v6 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B4F8970;
  v13[3] = &unk_278702C28;
  v15 = &v16;
  v7 = v6;
  v14 = v7;
  [(IMDCKUtilities *)self fetchCloudKitAccountStatusWithCompletion:v13];
  v8 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    *(v17 + 24) = 0;
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "***** Timed out checking truth zone eligibility *******", buf, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (*(v17 + 24))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "eligibleForTruthZone %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4, *(v17 + 24));
  }

  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInCloudKitDemoMode
{
  if (qword_27D8CFD58 != -1)
  {
    sub_22B7CF974();
  }

  return byte_27D8CFD50;
}

- (void)disableAllDevicesWithCompletion:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Attempt to disable MiC across all devices", buf, 2u);
    }
  }

  v6 = *MEMORY[0x277D19A08];
  v7 = *MEMORY[0x277D19BF8];
  IMSetDomainBoolForKey();
  v8 = [(IMDCKUtilities *)self exitManager];
  v9 = [MEMORY[0x277CBEAA8] date];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B4F8C0C;
  v11[3] = &unk_278702EA0;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v8 writeExitRecordWithDate:v9 completion:v11];
}

+ (id)im_AKSecurityLevelKey
{
  if (qword_27D8CFD68 != -1)
  {
    sub_22B7CF988();
  }

  v3 = qword_27D8CFD60;

  return v3;
}

+ (id)_idsAccountController
{
  if (qword_2814213A0 != -1)
  {
    sub_22B7CF99C();
  }

  v3 = qword_2814213A8;

  return v3;
}

+ (id)readAliasesFromDefaults
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"IMD-IDS-Aliases" inDomain:*MEMORY[0x277D19A08]];

  if (v3)
  {
    v4 = [v3 allKeys];
    if ([v4 containsObject:@"allAliases"])
    {
      v5 = [v3 allKeys];
      if ([v5 containsObject:@"selectedAliases"])
      {
        v15[0] = @"allAliases";
        v6 = MEMORY[0x277CBEB98];
        v7 = [v3 objectForKey:@"allAliases"];
        v8 = [v6 setWithArray:v7];
        v15[1] = @"selectedAliases";
        v16[0] = v8;
        v9 = MEMORY[0x277CBEB98];
        v10 = [v3 objectForKey:@"selectedAliases"];
        v11 = [v9 setWithArray:v10];
        v16[1] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)calculateAliasesForDefaults
{
  v29 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Calculating selected/all aliases", buf, 2u);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [MEMORY[0x277D1A8F8] IMPhoneNumbersEnabledForMultipleSubscriptionDevice];
  if ([v6 count])
  {
    [v4 addObjectsFromArray:v6];
    [v5 addObjectsFromArray:v6];
  }

  v7 = [a1 _idsAccountController];
  v8 = [v7 accounts];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 im_registeredURIs];
        if ([v14 count])
        {
          [v4 addObjectsFromArray:v14];
        }

        v15 = [v13 vettedAliases];
        if ([v15 count])
        {
          [v5 addObjectsFromArray:v15];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v10);
  }

  v26[0] = @"allAliases";
  v16 = [v5 allObjects];
  v26[1] = @"selectedAliases";
  v27[0] = v16;
  v17 = [v4 allObjects];
  v27[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (void)calculateAndSaveAliasesToDefaults
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 calculateAliasesForDefaults];
  v3 = IMOSLoggingEnabled();
  v4 = MEMORY[0x277D19A08];
  if (v3)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *v4;
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v2;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Saving (domain %@) selected aliases %@", &v9, 0x16u);
    }
  }

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 setObject:v2 forKey:@"IMD-IDS-Aliases" inDomain:*v4];

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)addConditionChecks:(unint64_t)a3 toCriteria:(id)a4
{
  v5 = a4;
  xdict = v5;
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_5;
    }

    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86390], 1);
  }

  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86230], 0);
  v5 = xdict;
LABEL_5:
}

@end