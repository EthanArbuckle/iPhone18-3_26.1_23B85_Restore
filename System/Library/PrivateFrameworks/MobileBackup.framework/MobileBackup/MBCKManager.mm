@interface MBCKManager
+ (MBCKManager)sharedInstance;
+ (double)inexpensiveCellularBalance;
+ (id)_removeIncompatibleSnapshotsWithAccountType:(int64_t)type device:(id)device snapshots:(id)snapshots;
+ (id)loadBackupStateInfoForInitialMegaBackup:(BOOL)backup account:(id)account;
+ (id)loadRestoreStateInfoWithAccount:(id)account;
+ (id)restoreInfoForAccount:(id)account;
+ (void)insufficientFreeSpaceToRestoreForAccount:(id)account;
+ (void)saveBackupStateInfo:(id)info forInitialMegaBackup:(BOOL)backup account:(id)account;
+ (void)saveRestoreStateInfo:(id)info account:(id)account;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivity;
- (BOOL)_ckStartBackgroundRestoreWithSettingsContext:(id)context delegateContext:(id)delegateContext error:(id *)error;
- (BOOL)_discountCameraRollQuotaForBackupUDID:(id)d account:(id)account operationTracker:(id)tracker error:(id *)error;
- (BOOL)_isInitialMegaBackupCompleted;
- (BOOL)_isMegaBackupMode;
- (BOOL)_refreshLockdownLastBackupDateWithAccount:(id)account;
- (BOOL)_restoreFileWithPath:(id)path isBatch:(BOOL)batch context:(id)context account:(id)account error:(id *)error;
- (BOOL)_restoreSyncSettingsEnabledForMegaBackup:(id *)backup;
- (BOOL)_startScanWithSettingsContext:(id)context error:(id *)error;
- (BOOL)acquireLockWithBackupUDID:(id)d account:(id)account owner:(id)owner timeout:(double)timeout connection:(id)connection error:(id *)error;
- (BOOL)allowiTunesBackup;
- (BOOL)cancelDeviceTransferWithTaskType:(int64_t)type connection:(id)connection error:(id *)error;
- (BOOL)closeRestorePlanForAccount:(id)account snapshotUUID:(id)d error:(id *)error;
- (BOOL)countCameraRollQuota;
- (BOOL)countCameraRollQuotaForBackupUDID:(id)d error:(id *)error;
- (BOOL)deleteAccountWithServiceAccount:(id)account error:(id *)error;
- (BOOL)deleteBackupUDID:(id)d disableIfCurrentDevice:(BOOL)device account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)discountCameraRollQuotaForBackupUDID:(id)d account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)discountCameraRollQuotaWithAccount:(id)account connection:(id)connection error:(id *)error;
- (BOOL)hardwareModelNeedsH8Workaround:(id)workaround;
- (BOOL)inheritSnapshotWithAccount:(id)account fromSnapshot:(id)snapshot fromDevice:(id)device error:(id *)error;
- (BOOL)isBackgroundRestoringAccount:(id)account;
- (BOOL)isBackgroundRestoringAnyAccount;
- (BOOL)isBackupEnabledForDomainName:(id)name account:(id)account;
- (BOOL)isEngineInProgressForBundleID:(id)d percentComplete:(double)complete;
- (BOOL)isPrebuddyBackupInProgress:(id)progress;
- (BOOL)isPrebuddyMode;
- (BOOL)isRestoringAccount:(id)account;
- (BOOL)mergeSnapshots:(id)snapshots backupUUID:(id)d account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)pinSnapshotID:(unint64_t)d backupUDID:(id)iD account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)prepareForBackgroundRestoreWithAccount:(id)account error:(id *)error;
- (BOOL)releaseLockWithBackupUDID:(id)d account:(id)account owner:(id)owner connection:(id)connection error:(id *)error;
- (BOOL)removeDomainName:(id)name account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)requestMegaBackupExpirationDate:(id)date account:(id)account error:(id *)error;
- (BOOL)resetCacheWithAccount:(id)account error:(id *)error;
- (BOOL)restoreApplicationWithBundleID:(id)d failed:(BOOL)failed qos:(id)qos context:(id)context account:(id)account error:(id *)error;
- (BOOL)restoreBookWithPath:(id)path context:(id)context account:(id)account error:(id *)error;
- (BOOL)restoreDataExistsForApplicationWithBundleID:(id)d size:(unint64_t *)size account:(id)account;
- (BOOL)restoreFileExistsWithPath:(id)path account:(id)account;
- (BOOL)restoreFilesWithPaths:(id)paths context:(id)context account:(id)account error:(id *)error;
- (BOOL)restorePreviousSettingsEnabledForMegaBackup:(id)backup error:(id *)error;
- (BOOL)saveBackgroundRestoreCellularAccess:(id)access account:(id)account error:(id *)error;
- (BOOL)setupBackupWithPasscode:(id)passcode account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)setupRestorePlanForAccount:(id)account snapshotUUID:(id)d error:(id *)error;
- (BOOL)shouldInheritBackupsFromDevice:(id)device toDevice:(id)toDevice error:(id *)error;
- (BOOL)startBackupWithOptions:(id)options reason:(int64_t)reason xpcActivity:(id)activity account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)startDeviceTransferWithTaskType:(int64_t)type sessionInfo:(id)info connection:(id)connection error:(id *)error;
- (BOOL)startRestoreForSnapshot:(id)snapshot options:(id)options account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)startScanForBundleIDs:(id)ds account:(id)account error:(id *)error;
- (BOOL)startScanWithAccount:(id)account error:(id *)error;
- (BOOL)unpinSnapshotID:(unint64_t)d backupUDID:(id)iD account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)wasBackupEnabledForMegaBackup:(id)backup;
- (MBCKManager)init;
- (id)_backupEngineWithReason:(int64_t)reason settingsContext:(id)context account:(id)account;
- (id)_cacheTrackerWithAccount:(id)account;
- (id)_ckSettingsContextForBackupUDID:(id)d account:(id)account;
- (id)_ckSettingsContextForRestoreWithDeviceUUID:(id)d account:(id)account delegateContext:(id)context;
- (id)_defaultMegaBackupExpirationDate;
- (id)_domainDisplayNamesForFailedDomainsWithAccount:(id)account;
- (id)_findTargetDeviceTransferEngineWithConnection:(id)connection error:(id *)error;
- (id)_getBackupListWithOperationTracker:(id)tracker shouldFilter:(BOOL)filter error:(id *)error;
- (id)_megaBackupExpirationDate;
- (id)_restoreEngineWithRestoreType:(int)type settingsContext:(id)context debugContext:(id)debugContext excludedAppBundleIDs:(id)ds;
- (id)_startNetworkPathMonitor;
- (id)allRestrictedDomainNames:(id)names account:(id)account;
- (id)backgroundRestoreInfoWithAccount:(id)account;
- (id)backupStateInfoForInitialMegaBackup:(BOOL)backup account:(id)account;
- (id)cellularAccessForRestoreType:(int)type account:(id)account;
- (id)deviceLockInfosWithAccount:(id)account connection:(id)connection error:(id *)error;
- (id)disabledDomainInfosForAccount:(id)account;
- (id)fetchBackgroundRestoreCellularAccessForAccount:(id)account error:(id *)error;
- (id)fetchDeviceForRestoreWithUUID:(id)d tracker:(id)tracker isForegroundRestore:(BOOL)restore cache:(id)cache error:(id *)error;
- (id)fetchPluginFieldsForLockManger:(id)manger;
- (id)fetchRestorableSnapshotsForAccount:(id)account connection:(id)connection error:(id *)error;
- (id)filesForSnapshotID:(unint64_t)d backupUDID:(id)iD account:(id)account connection:(id)connection error:(id *)error;
- (id)getAppleIDsMapForBackupUDID:(id)d account:(id)account snapshotID:(unint64_t)iD activeAppleID:(id *)appleID connection:(id)connection error:(id *)error;
- (id)getBuddyDataStashForBackupUDID:(id)d snapshotID:(unint64_t)iD account:(id)account connection:(id)connection error:(id *)error;
- (id)journalForBackupUUID:(id)d account:(id)account connection:(id)connection error:(id *)error;
- (id)journalLastModifiedForBackupUUID:(id)d account:(id)account connection:(id)connection error:(id *)error;
- (id)loadRestoreStateWithAccount:(id)account;
- (id)nextBackupSizeInfoWithAccount:(id)account;
- (id)pendingSnapshotForCurrentDeviceAndAccount:(id)account error:(id *)error;
- (id)prebuddyFollowUpTimerForAccount:(id)account;
- (id)reservedBackupSizeListWithAccount:(id)account connection:(id)connection error:(id *)error;
- (id)restorePlanForAccount:(id)account snapshotUUID:(id)d error:(id *)error;
- (id)restoreStateWithError:(id *)error;
- (id)serviceStates;
- (id)synchronizeFileListsWithDeviceUUID:(id)d commitID:(id)iD account:(id)account error:(id *)error;
- (unint64_t)_snapshotIDForSnapshotUUID:(id)d backupUDID:(id)iD operationTracker:(id)tracker error:(id *)error;
- (unint64_t)nextBackupSizeWithAccount:(id)account;
- (void)_airTrafficFinishedRestoring;
- (void)_alertUserOfFinishedRestoreForAccount:(id)account;
- (void)_cancelBackgroundRestoreTTRTimerWithAccount:(id)account;
- (void)_cancelBackupAndScanEnginesWithAccount:(id)account timeout:(unint64_t)timeout completion:(id)completion;
- (void)_cancelBackupAndScanEnginesWithTimeout:(unint64_t)timeout completion:(id)completion;
- (void)_cancelBackupEngineWithError:(id)error account:(id)account connection:(id)connection;
- (void)_cancelDelayedBackgroundRestoreTimerWithAccount:(id)account;
- (void)_ckClearRestoreSessionWithAccount:(id)account;
- (void)_clearMegaBackupTelemetries;
- (void)_clearPreferencesForRestoringSettingsEnabledForMegaBackup;
- (void)_clearRestoreSessionWithAccount:(id)account;
- (void)_deviceIsLockingWithAccount:(id)account;
- (void)_didUpdateBackupProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining bytesRemaining:(int64_t)bytesRemaining engineState:(id)state stateInfo:(id)info account:(id)account shouldUpdatePrebuddyFollowUp:(BOOL)up;
- (void)_disableKeychainSync:(id)sync;
- (void)_finishRestoreWithAccount:(id)account cancelled:(BOOL)cancelled;
- (void)_finishedRestoreWithAccount:(id)account reason:(SEL)reason;
- (void)_handleAccountAvailable;
- (void)_handleNetworkPathUpdateWithPathType:(int)type state:(id)state;
- (void)_keychainSyncStatusDidChange;
- (void)_loadRestoreState;
- (void)_migrateMobileBackupDatabaseFromRootToMobile;
- (void)_restoreBackupDomainsEnabledForMegaBackup:(id)backup;
- (void)_restoreBackupEnabledForMegaBackup:(id)backup;
- (void)_retryAppDataDownloadsWithConnectivity:(id)connectivity account:(id)account;
- (void)_saveBackupInProgressMarkerStateWithAccount:(id)account;
- (void)_saveForegroundRestoreCellularAccess:(id)access account:(id)account;
- (void)_scheduleBackgroundRestoreTimeoutTTRWithAccount:(id)account;
- (void)_scheduleDelayedBackgroundRestoreTimerWithAccount:(id)account;
- (void)_setMegaBackupExpirationDate:(id)date account:(id)account;
- (void)_startBackupWithEngine:(id)engine account:(id)account;
- (void)_startEngine:(id)engine delegateContext:(id)context;
- (void)_startRestoreWithEngine:(id)engine delegateContext:(id)context;
- (void)_startSourceDeviceTransferWithSessionInfo:(id)info connection:(id)connection personaIdentifier:(id)identifier completion:(id)completion;
- (void)_startTargetDeviceTransferWithSessionInfo:(id)info connection:(id)connection personaIdentifier:(id)identifier completion:(id)completion;
- (void)_syncBackupEnabledWithAccount:(id)account connection:(id)connection;
- (void)_updateLockdownKeysForAccountState:(id)state;
- (void)_updateMegaBackupStatus:(int64_t)status account:(id)account;
- (void)_waitForRestoreConditions:(id)conditions;
- (void)_warnUserOfPowerBudgetSuspendingRestoreForAccount:(id)account;
- (void)accountChanged:(id)changed;
- (void)beginPrebuddyBackupWithAccount:(id)account connection:(id)connection fromManualSignal:(BOOL)signal;
- (void)boostBackgroundRestoreWithAccount:(id)account completionHandler:(id)handler;
- (void)boostManualBackupWithAccount:(id)account completionHandler:(id)handler;
- (void)cancelBackgroundRestoreWithAccount:(id)account;
- (void)cancelBackupEngineWithError:(id)error connection:(id)connection;
- (void)cancelDeviceTransferWithConnection:(id)connection;
- (void)cancelEnginesWithAccount:(id)account connection:(id)connection;
- (void)cancelRestoreEnginesWithReason:(int64_t)reason connection:(id)connection;
- (void)clearPrebuddyWithAccount:(id)account accountSignOut:(BOOL)out;
- (void)clearRestoreSessionWithAccount:(id)account;
- (void)dealloc;
- (void)deviceIsLocking;
- (void)deviceIsUnlocked;
- (void)deviceIsUnlockedWithAccount:(id)account completion:(id)completion;
- (void)exitMegaBackupModeWithAccount:(id)account;
- (void)fetchNetworkConnectivityWithBlock:(id)block;
- (void)finishAirTrafficRestoreWithAccount:(id)account;
- (void)lockManager:(id)manager failedToReleaseLockWithError:(id)error;
- (void)lockManagerDidReleaseLock:(id)lock;
- (void)postFollowUpForRestoreFailedForAccount:(id)account failedDomainNames:(id)names;
- (void)prebuddyBackupDeletedWithAccount:(id)account;
- (void)prioritizeRestoreFileWithPath:(id)path account:(id)account;
- (void)retryAppDataDownloadsWithNetworkConnectivity:(id)connectivity;
- (void)saveBackupDomainsEnabledForMegaBackup:(id)backup;
- (void)saveBackupEnabledForMegaBackup;
- (void)saveSyncSettingsEnabledForMegaBackup:(id)backup;
- (void)setRestoreQualityOfService:(int64_t)service account:(id)account connection:(id)connection;
- (void)setServiceDelegate:(id)delegate;
- (void)setUpXPCEventHandler;
- (void)signalPrebuddy:(id)prebuddy account:(id)account;
- (void)startDataTransferWithPreflightInfo:(id)info connection:(id)connection completion:(id)completion;
- (void)startKeychainDataImportWithKeychainInfo:(id)info connection:(id)connection completion:(id)completion;
- (void)startKeychainDataTransferWithConnection:(id)connection completion:(id)completion;
- (void)startPreflightWithConnection:(id)connection completion:(id)completion;
- (void)submitMegaLifeCycleTelemetriesWithAccount:(id)account;
- (void)syncBackupEnabledWithAccount:(id)account connection:(id)connection;
- (void)updateMegaBackupExpirationDate:(id)date account:(id)account;
- (void)updatePrebuddyFollowUp:(id)up;
- (void)userLanguageDidChange;
@end

@implementation MBCKManager

+ (MBCKManager)sharedInstance
{
  if (qword_100421678 != -1)
  {
    dispatch_once(&qword_100421678, &stru_1003BCF28);
  }

  v3 = qword_100421670;

  return v3;
}

- (MBCKManager)init
{
  v35.receiver = self;
  v35.super_class = MBCKManager;
  v2 = [(MBServiceManager *)&v35 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    engines = v2->_engines;
    v2->_engines = v3;

    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(Name, v7);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v8;

    v10 = dispatch_group_create();
    serviceGroup = v2->_serviceGroup;
    v2->_serviceGroup = v10;

    v12 = objc_opt_new();
    personaState = v2->_personaState;
    v2->_personaState = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("_ICQMegaBackupManager queue", v14);
    quotaManagerQueue = v2->_quotaManagerQueue;
    v2->_quotaManagerQueue = v15;

    v17 = objc_opt_new();
    databaseManager = v2->_databaseManager;
    v2->_databaseManager = v17;

    v19 = objc_opt_new();
    cacheTrackersByPersonaID = v2->_cacheTrackersByPersonaID;
    v2->_cacheTrackersByPersonaID = v19;

    v2->_restoreTelemetryID = arc4random_uniform(0xFFFFu);
    v21 = v2->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100092300;
    block[3] = &unk_1003BC0B0;
    v22 = v2;
    v34 = v22;
    dispatch_sync(v21, block);
    v23 = objc_opt_new();
    prebuddyFollowUpController = v22->_prebuddyFollowUpController;
    v22->_prebuddyFollowUpController = v23;

    if ([(MBCKManager *)v22 isPrebuddyMode])
    {
      _megaBackupExpirationDate = [(MBCKManager *)v22 _megaBackupExpirationDate];
      prebuddyFollowUpController = [(MBCKManager *)v22 prebuddyFollowUpController];
      megaBackupExpirationDate = [prebuddyFollowUpController megaBackupExpirationDate];

      if (!megaBackupExpirationDate && _megaBackupExpirationDate)
      {
        prebuddyFollowUpController2 = [(MBCKManager *)v22 prebuddyFollowUpController];
        [prebuddyFollowUpController2 setMegaBackupExpirationDate:_megaBackupExpirationDate];
      }

      account = [(MBServiceManager *)v22 account];
      v30 = [(MBCKManager *)v22 prebuddyFollowUpTimerForAccount:account];
      prebuddyFollowUpTimer = v22->_prebuddyFollowUpTimer;
      v22->_prebuddyFollowUpTimer = v30;
    }
  }

  return v2;
}

- (void)dealloc
{
  if (self->_accountObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_accountObserver];
  }

  account = [(MBServiceManager *)self account];
  [(MBCKManager *)self _cancelDelayedBackgroundRestoreTimerWithAccount:account];

  account2 = [(MBServiceManager *)self account];
  [(MBCKManager *)self _cancelBackgroundRestoreTTRTimerWithAccount:account2];

  v6.receiver = self;
  v6.super_class = MBCKManager;
  [(MBServiceManager *)&v6 dealloc];
}

- (void)_migrateMobileBackupDatabaseFromRootToMobile
{
  v2 = [NSMutableArray arrayWithObject:@"cloudkit_cache.db"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = MBSQLiteJournalSuffixes();
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [@"cloudkit_cache.db" stringByAppendingString:*(*(&v21 + 1) + 8 * v7)];
        [v2 addObject:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }

  v9 = +[NSFileManager defaultManager];
  v10 = MBGetCacheDir();
  v20 = 0;
  v11 = [v9 mb_migrateIfNeededFromSource:@"/var/root/Library/Caches/Backup" sourceSubPaths:v2 toDestination:v10 destinationSubPaths:v2 error:&v20];
  v12 = v20;

  if ((v11 & 1) == 0)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v26 = @"cloudkit_cache.db";
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Error migrating %@ from root to mobile: %@", buf, 0x16u);
      v17 = @"cloudkit_cache.db";
      v18 = v12;
      _MBLog();
    }
  }

  v19 = v12;
  v14 = [v9 mb_migrateIfNeededFromSource:@"/var/root/Library/Preferences" sourceSubPaths:&off_1003E1FA0 toDestination:@"/var/mobile/Library/Preferences" destinationSubPaths:&off_1003E1FB8 error:{&v19, v17, v18}];
  v15 = v19;

  if ((v14 & 1) == 0)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v26 = @"com.apple.MobileBackup.plist";
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Error migrating %@ from root to mobile: %@", buf, 0x16u);
      _MBLog();
    }
  }
}

- (void)_clearRestoreSessionWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _clearRestoreSessionWithAccount:]", "MBCKManager.m", 206, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_V2(self->_stateQueue);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [v5 accountIdentifier];
    persona = [v5 persona];
    personaIdentifier = [persona personaIdentifier];
    *buf = 138543618;
    v15 = accountIdentifier;
    v16 = 2114;
    v17 = personaIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Clearing the restore session for account %{public}@(%{public}@)", buf, 0x16u);

    accountIdentifier2 = [v5 accountIdentifier];
    persona2 = [v5 persona];
    personaIdentifier2 = [persona2 personaIdentifier];
    _MBLog();
  }

  v12 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v5];
  [v12 clearRestoreSession];
  [v12 setServiceState:0];
}

- (void)clearRestoreSessionWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager clearRestoreSessionWithAccount:]", "MBCKManager.m", 218, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100092CDC;
  v8[3] = &unk_1003BC060;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(stateQueue, v8);
}

+ (id)loadRestoreStateInfoWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKManager loadRestoreStateInfoWithAccount:]", "MBCKManager.m", 227, "account");
  }

  v4 = accountCopy;
  persona = [accountCopy persona];
  v6 = [persona copyPreferencesValueForKey:@"RestoreStateInfo" class:objc_opt_class()];

  if (v6)
  {
    v7 = [[MBStateInfo alloc] initWithDictionaryRepresentation:v6];
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      accountIdentifier = [v4 accountIdentifier];
      persona2 = [v4 persona];
      personaIdentifier = [persona2 personaIdentifier];
      *buf = 138543874;
      v17 = accountIdentifier;
      v18 = 2114;
      v19 = personaIdentifier;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Loaded restore state for account %{public}@(%{public}@): %{public}@", buf, 0x20u);

      accountIdentifier2 = [v4 accountIdentifier];
      persona3 = [v4 persona];
      personaIdentifier2 = [persona3 personaIdentifier];
      _MBLog();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)saveRestoreStateInfo:(id)info account:(id)account
{
  infoCopy = info;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKManager saveRestoreStateInfo:account:]", "MBCKManager.m", 237, "account");
  }

  v7 = accountCopy;
  if (infoCopy)
  {
    dictionaryRepresentation = [infoCopy dictionaryRepresentation];
    persona = [v7 persona];
    [persona setPreferencesValue:dictionaryRepresentation forKey:@"RestoreStateInfo"];

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      accountIdentifier = [v7 accountIdentifier];
      *buf = 138543618;
      v14 = dictionaryRepresentation;
      v15 = 2114;
      v16 = accountIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Saved the restore state for account %{public}@: %{public}@", buf, 0x16u);

      accountIdentifier2 = [v7 accountIdentifier];
      _MBLog();
    }
  }
}

- (id)restoreStateWithError:(id *)error
{
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v18 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v18];
  v8 = v18;

  if (v7)
  {
    dispatch_assert_queue_not_V2(self->_stateQueue);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3032000000;
    v21 = sub_100093324;
    v22 = sub_100093334;
    v23 = 0;
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009333C;
    block[3] = &unk_1003BCAE8;
    p_buf = &buf;
    block[4] = self;
    v16 = v7;
    dispatch_sync(stateQueue, block);
    v10 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else if ([MBError isError:v8 withCode:210])
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No account found, returning idle restore state", &buf, 2u);
      _MBLog();
    }

    v10 = [[MBStateInfo alloc] initWithState:0 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
  }

  else
  {
    if (error)
    {
      v12 = v8;
      *error = v8;
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed fetching account for -restoreStateWithError: %@", &buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  return v10;
}

- (id)loadRestoreStateWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager loadRestoreStateWithAccount:]", "MBCKManager.m", 268, "account");
  }

  v6 = accountCopy;
  v99 = a2;
  dispatch_assert_queue_V2(self->_stateQueue);
  accountIdentifier = [v6 accountIdentifier];
  persona = [v6 persona];
  personaIdentifier = [persona personaIdentifier];

  isPrimaryAccount = [v6 isPrimaryAccount];
  v11 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v6];
  serviceState = [v11 serviceState];
  restore = [v11 restore];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    *v104 = accountIdentifier;
    *&v104[8] = 2114;
    *&v104[10] = personaIdentifier;
    v105 = 1024;
    *v106 = serviceState;
    *&v106[4] = 2048;
    *&v106[6] = restore;
    v107 = 2114;
    v108 = restore;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=restore-boot= Loading restore session for account %{public}@(%{public}@): (%d) (%p) %{public}@", buf, 0x30u);
    v82 = restore;
    v83 = restore;
    v78 = personaIdentifier;
    v81 = serviceState;
    v75 = accountIdentifier;
    _MBLog();
  }

  if (restore)
  {
    v15 = [restore copy];
    goto LABEL_60;
  }

  v16 = [MBServiceRestoreSession currentRestoreSessionWithAccount:v6];
  if (v16)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      propertyList = [v16 propertyList];
      *buf = 138543874;
      *v104 = accountIdentifier;
      *&v104[8] = 2114;
      *&v104[10] = personaIdentifier;
      v105 = 2114;
      *v106 = propertyList;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=restore-boot= Loaded restore session for account %{public}@(%{public}@): %{public}@", buf, 0x20u);

      [v16 propertyList];
      v81 = v78 = personaIdentifier;
      v75 = accountIdentifier;
      _MBLog();
    }
  }

  [v11 setRestoreSession:{v16, v75, v78, v81, v82, v83}];
  restore = [objc_opt_class() loadRestoreStateInfoWithAccount:v6];
  if (v16)
  {
    if ([v16 telemetryID])
    {
      self->_restoreTelemetryID = [v16 telemetryID];
    }

    v19 = os_transaction_create();
    [v11 setRestoreTransaction:v19];

    isFinishing = [v16 isFinishing];
    v94 = personaIdentifier;
    v95 = accountIdentifier;
    if (isFinishing)
    {
      v20 = 3;
      v21 = 6;
    }

    else
    {
      v24 = MBBackgroundRestoreSignpostHandle();
      if (os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BackgroundRestore", " enableTelemetry=YES ", buf, 2u);
      }

      v20 = 2;
      v21 = 5;
    }

    [v11 setServiceState:v21];
    v25 = MBGetDefaultLog();
    v93 = isPrimaryAccount;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      persona2 = [v6 persona];
      personaIdentifier2 = [persona2 personaIdentifier];
      *buf = 67109378;
      *v104 = v21;
      *&v104[4] = 2112;
      *&v104[6] = personaIdentifier2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=restore-boot= Setting service state to %u for persona %@", buf, 0x12u);

      persona3 = [v6 persona];
      [persona3 personaIdentifier];
      v79 = v76 = v21;
      _MBLog();
    }

    if (restore)
    {
      if ([restore isBackground] && objc_msgSend(restore, "state") == v20)
      {
        [v11 setRestore:restore];
LABEL_34:
        _startNetworkPathMonitor = [(MBCKManager *)self _startNetworkPathMonitor];
        snapshotUUID = [v16 snapshotUUID];
        v32 = [MBBackgroundRestoreProgressMonitor alloc];
        thermalPressureMonitor = [(MBCKManager *)self thermalPressureMonitor];
        v34 = [(MBBackgroundRestoreProgressMonitor *)v32 initWithAccount:v6 serviceManager:self thermalPressureMonitor:thermalPressureMonitor snapshotUUID:snapshotUUID];

        [v11 setBackgroundRestoreProgressMonitor:v34];
        v91 = v34;
        [(MBBackgroundRestoreProgressMonitor *)v34 start];
        v35 = +[MBCKOperationPolicy expensiveCellularPolicy];
        v36 = [MBEngine stringForRestoreType:2];
        capitalizedString = [v36 capitalizedString];

        v89 = capitalizedString;
        v90 = v35;
        v88 = [[NSString alloc] initWithFormat:@"%@ Restore", capitalizedString];
        [v35 operationGroupWithName:?];
        v39 = v38 = v16;
        v40 = [MBCKLockManager alloc];
        v98 = v38;
        backupUDID = [v38 backupUDID];
        databaseManager = [(MBCKManager *)self databaseManager];
        thermalPressureMonitor2 = [(MBCKManager *)self thermalPressureMonitor];
        v97 = snapshotUUID;
        v87 = v39;
        v44 = [(MBCKLockManager *)v40 initWithAccount:v6 restoreType:2 backupUDID:backupUDID databaseManager:databaseManager delegate:self operationGroup:v39 thermalPressureMonitor:thermalPressureMonitor2 snapshotUUID:snapshotUUID];

        [v11 setLockManager:v44];
        persona4 = [v6 persona];
        if (MBIsInternalInstall())
        {
          v46 = +[MBBehaviorOptions sharedOptions];
          useRestoreOperationLog = [v46 useRestoreOperationLog];

          if (useRestoreOperationLog)
          {
            v48 = MBGetDefaultLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "=restore-boot= Using restore operation log for background restore", buf, 2u);
              _MBLog();
            }

            v49 = [MBRestoreOperationLogger alloc];
            restoreOperationLogPath = [persona4 restoreOperationLogPath];
            v51 = [(MBRestoreOperationLogger *)v49 initWithPath:restoreOperationLogPath];
            [v11 setRestoreLogger:v51];
          }
        }

        if ([v98 isFinishing])
        {
          [(MBCKLockManager *)v44 releaseLockAsync];
        }

        else
        {
          [(MBCKLockManager *)v44 startRenewingLock];
        }

        v52 = v97;
        v102 = 0;
        v53 = [MBCKEncryptionManager loadRestoreKeyBagsWithAccount:v6 error:&v102];
        v96 = v102;
        v86 = v44;
        v84 = v53;
        if (v53)
        {
          [v11 setRestoreKeyBagsByID:v53];
        }

        else
        {
          v54 = MBGetDefaultLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v104 = v96;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=restore-boot= Failed to load restore keybags while loading restore session: %@", buf, 0xCu);
            personaIdentifier4 = v96;
            _MBLog();
          }

          [persona4 setPreferencesValue:&__kCFBooleanTrue forKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked"];
          v52 = v97;
        }

        v55 = MBGetDefaultLog();
        v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
        v85 = persona4;
        if (isFinishing)
        {
          if (v56)
          {
            persona5 = [v6 persona];
            personaIdentifier3 = [persona5 personaIdentifier];
            *buf = 138412290;
            *v104 = personaIdentifier3;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "=restore-boot= Not setting up app restore manager for persona %@", buf, 0xCu);

            persona6 = [v6 persona];
            personaIdentifier4 = [persona6 personaIdentifier];
            _MBLog();
          }

          [v11 setFinishedAppRestores:1];
        }

        else
        {
          if (v56)
          {
            persona7 = [v6 persona];
            personaIdentifier5 = [persona7 personaIdentifier];
            *buf = 138412290;
            *v104 = personaIdentifier5;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "=restore-boot= Setting up app restore manager for persona %@", buf, 0xCu);

            persona8 = [v6 persona];
            personaIdentifier4 = [persona8 personaIdentifier];
            _MBLog();
          }

          v63 = +[_TtC7backupd20AppRestoreDispatcher shared];
          stateQueue = self->_stateQueue;
          v101 = 0;
          v65 = [v63 appRestorerForAccount:v6 stateQueue:stateQueue delegate:self error:&v101];
          v66 = v101;

          if (v65)
          {
            [v11 setFinishedAppRestores:0];
            [v65 startObservingInstallCoordinators];
          }

          else
          {
            v69 = MBGetDefaultLog();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v104 = v6;
              *&v104[8] = 2112;
              *&v104[10] = v66;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "=restore-boot= Failed to find the app restore manager for %@: %@", buf, 0x16u);
              personaIdentifier4 = v6;
              v80 = v66;
              _MBLog();
            }

            [v11 setFinishedAppRestores:1];
            v52 = v97;
          }
        }

        v70 = v52;
        [(MBCKManager *)self _scheduleDelayedBackgroundRestoreTimerWithAccount:v6, personaIdentifier4, v80];
        [(MBCKManager *)self _scheduleBackgroundRestoreTimeoutTTRWithAccount:v6];
        personaIdentifier = v94;
        accountIdentifier = v95;
        if (([v11 isHoldingWorkAssertionForBackgroundRestore] & 1) == 0)
        {
          v71 = +[MBDaemon sharedDaemon];
          [v71 holdWorkAssertion:v99];

          [v11 setIsHoldingWorkAssertionForBackgroundRestore:1];
        }

        v100 = v96;
        v72 = [v11 openOrUseExistingPlanWithPersona:v85 snapshotUUID:v52 error:&v100];
        v73 = v100;

        if (!v72)
        {
          v74 = MBGetDefaultLog();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *v104 = v73;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_FAULT, "Failed to open plan while loading restore session: %@", buf, 0xCu);
            v76 = v73;
            _MBLog();
          }

          v70 = v97;
        }

        v16 = v98;
        if (!v93)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      [restore setState:{v20, v76, v79}];
      [restore setIsBackground:1];
    }

    else
    {
      restore = [[MBStateInfo alloc] initWithState:v20 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
      [restore setIsBackground:1];
      v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 snapshotBackupPolicy]);
      [restore setRestoredSnapshotBackupPolicy:v29];

      if (!restore)
      {
        __assert_rtn("[MBCKManager loadRestoreStateWithAccount:]", "MBCKManager.m", 317, "restoreState");
      }
    }

    [v11 setRestore:{restore, v76}];
    [objc_opt_class() saveRestoreStateInfo:restore account:v6];
    goto LABEL_34;
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=restore-boot= No restore session found", buf, 2u);
    _MBLog();
  }

  if (restore)
  {
    if ([restore isBackground] && objc_msgSend(restore, "state") != 4 && objc_msgSend(restore, "state") != 6)
    {
      [restore setState:4];
      [restore setIsBackground:1];
      LODWORD(v23) = 1.0;
      [restore setProgress:v23];
      [restore setEstimatedTimeRemaining:0];
      [objc_opt_class() saveRestoreStateInfo:restore account:v6];
    }
  }

  else
  {
    restore = [[MBStateInfo alloc] initWithState:0 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
  }

  [v11 setRestore:restore];
  [v11 setFinishedAppRestores:1];
  if (!restore)
  {
    __assert_rtn("[MBCKManager loadRestoreStateWithAccount:]", "MBCKManager.m", 414, "restoreState");
  }

  if (!isPrimaryAccount)
  {
    goto LABEL_59;
  }

LABEL_58:
  v67 = +[MBNotificationCenter sharedNotificationCenter];
  [v67 postNotification:kMBManagerRestoreStateChangedNotification ifStateChanged:{objc_msgSend(restore, "state")}];

LABEL_59:
  v15 = [restore copy];

LABEL_60:

  return v15;
}

- (void)_loadRestoreState
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[MBServiceAccount allServiceAccounts];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(MBCKManager *)self loadRestoreStateWithAccount:*(*(&v9 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_cancelBackgroundRestoreTTRTimerWithAccount:(id)account
{
  accountCopy = account;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  restoreTTRTimer = [v5 restoreTTRTimer];
  if (restoreTTRTimer)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = accountCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cancelling background restore TTR Timer for %@", buf, 0xCu);
      _MBLog();
    }

    dispatch_source_cancel(restoreTTRTimer);
    [v5 setRestoreTTRTimer:0];
  }
}

- (void)_cancelDelayedBackgroundRestoreTimerWithAccount:(id)account
{
  accountCopy = account;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  delayedRestoreTimer = [v5 delayedRestoreTimer];
  if (delayedRestoreTimer)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = accountCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cancelling delayed background restore timer for %@", buf, 0xCu);
      _MBLog();
    }

    dispatch_source_cancel(delayedRestoreTimer);
    [v5 setDelayedRestoreTimer:0];
  }
}

- (void)_scheduleDelayedBackgroundRestoreTimerWithAccount:(id)account
{
  accountCopy = account;
  personaState = self->_personaState;
  persona = [accountCopy persona];
  personaIdentifier = [persona personaIdentifier];
  v8 = [(MBPersonaStateManager *)personaState restoreSessionForPersonaID:personaIdentifier];
  startDate = [v8 startDate];

  if (startDate)
  {
    persona2 = [accountCopy persona];
    v11 = [persona2 copyPreferencesValueForKey:@"DelayedRestoreWarningTimeout" class:objc_opt_class()];

    v12 = MBIsInternalInstall();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
    }

    else
    {
      v13 = 1209600.0;
      if (v12)
      {
        v13 = 604800.0;
      }
    }

    accountIdentifier2 = [startDate dateByAddingTimeInterval:v13];
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = MBStringWithDate();
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Restore will time out on %{public}@", buf, 0xCu);

      v24 = MBStringWithDate();
      _MBLog();
    }

    v18 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
    delayedRestoreTimer = [v18 delayedRestoreTimer];

    if (!delayedRestoreTimer)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Starting delayed restore timer", buf, 2u);
        _MBLog();
      }

      v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      [accountIdentifier2 timeIntervalSinceReferenceDate];
      v23 = dispatch_walltime(0, (v22 * 1000000000.0));
      dispatch_source_set_timer(v21, v23, 0x4E94914F0000uLL, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000948A0;
      handler[3] = &unk_1003BC0B0;
      v26 = accountCopy;
      dispatch_source_set_event_handler(v21, handler);
      [v18 setDelayedRestoreTimer:v21];
      dispatch_resume(v21);
    }

    goto LABEL_15;
  }

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543362;
    v28 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "nil start date for the restore session for account %{public}@", buf, 0xCu);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog();
LABEL_15:
  }
}

- (void)_scheduleBackgroundRestoreTimeoutTTRWithAccount:(id)account
{
  accountCopy = account;
  if (MBIsInternalInstall())
  {
    persona = [accountCopy persona];
    if (!persona)
    {
      __assert_rtn("[MBCKManager _scheduleBackgroundRestoreTimeoutTTRWithAccount:]", "MBCKManager.m", 486, "persona");
    }

    v6 = persona;
    personaState = self->_personaState;
    personaIdentifier = [persona personaIdentifier];
    v9 = [(MBPersonaStateManager *)personaState restoreSessionForPersonaID:personaIdentifier];
    startDate = [v9 startDate];

    if (startDate)
    {
      v11 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
      v12 = [v6 copyPreferencesValueForKey:@"BackgroundRestoreTimeoutTTRInterval" class:objc_opt_class()];
      accountIdentifier2 = v12;
      if (v12)
      {
        [v12 doubleValue];
      }

      else
      {
        v14 = 172800.0;
      }

      v16 = [startDate dateByAddingTimeInterval:v14];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = MBStringWithDate();
        *buf = 138543362;
        v29 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Background Restore TTR timer will fire on %{public}@", buf, 0xCu);

        v24 = MBStringWithDate();
        _MBLog();
      }

      restoreTTRTimer = [v11 restoreTTRTimer];

      if (!restoreTTRTimer)
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Starting background restore TTR timer", buf, 2u);
          _MBLog();
        }

        v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
        [v16 timeIntervalSinceReferenceDate];
        v23 = dispatch_walltime(0, (v22 * 1000000000.0));
        dispatch_source_set_timer(v21, v23, 0x4E94914F0000uLL, 0);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100094D44;
        handler[3] = &unk_1003BC060;
        v26 = startDate;
        v27 = v6;
        dispatch_source_set_event_handler(v21, handler);
        [v11 setRestoreTTRTimer:v21];
        dispatch_resume(v21);
      }
    }

    else
    {
      v11 = MBGetDefaultLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        goto LABEL_18;
      }

      accountIdentifier = [accountCopy accountIdentifier];
      *buf = 138543362;
      v29 = accountIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "nil start date for the restore session for account %{public}@", buf, 0xCu);

      accountIdentifier2 = [accountCopy accountIdentifier];
      _MBLog();
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (id)_ckSettingsContextForBackupUDID:(id)d account:(id)account
{
  dCopy = d;
  accountCopy = account;
  debugContext = [(MBCKManager *)self debugContext];
  v9 = [debugContext valueForName:@"SettingsContext"];

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = objc_alloc_init(MBCKSettingsContext);

    v11 = MBGetCacheDir();
    [(MBServiceSettingsContext *)v10 setCacheDir:v11];

    v9 = v10;
  }

  if (accountCopy)
  {
    [v9 setAccount:accountCopy];
  }

  [v9 setBackupUDID:dCopy];

  return v9;
}

- (id)_ckSettingsContextForRestoreWithDeviceUUID:(id)d account:(id)account delegateContext:(id)context
{
  accountCopy = account;
  v8 = [(MBCKManager *)self _ckSettingsContextForBackupUDID:d account:accountCopy];
  debugContext = [(MBCKManager *)self debugContext];
  v10 = [debugContext valueForName:@"SettingsContext"];

  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    persona = [accountCopy persona];
    [v8 setShouldRestoreSystemFiles:{objc_msgSend(persona, "shouldRestoreToSharedVolume")}];
  }

  return v8;
}

- (void)_saveBackupInProgressMarkerStateWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _saveBackupInProgressMarkerStateWithAccount:]", "MBCKManager.m", 547, "account");
  }

  v11 = accountCopy;
  persona = [accountCopy persona];
  v5 = [persona copyPreferencesValueForKey:@"BackupStateInfo" class:objc_opt_class()];

  if (v5)
  {
    v6 = [[MBStateInfo alloc] initWithDictionaryRepresentation:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MBStateInfo alloc];
  v8 = [MBError errorWithCode:1 format:@"Backup in progress. This marker will be removed after the engine completes unless backupd is killed mid-attempt"];
  errors = [v6 errors];
  v10 = [v7 initWithState:6 progress:0 estimatedTimeRemaining:v8 error:errors errors:0.0];

  [objc_opt_class() saveBackupStateInfo:v10 forInitialMegaBackup:0 account:v11];
}

- (unint64_t)_snapshotIDForSnapshotUUID:(id)d backupUDID:(id)iD operationTracker:(id)tracker error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKManager _snapshotIDForSnapshotUUID:backupUDID:operationTracker:error:]", "MBCKManager.m", 634, "tracker");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedBackupsByUDID = [(MBCKManager *)selfCopy cachedBackupsByUDID];
  v13 = [cachedBackupsByUDID copy];

  objc_sync_exit(selfCopy);
  if (![v13 count])
  {
    v14 = [(MBCKManager *)selfCopy _getBackupListWithOperationTracker:trackerCopy shouldFilter:0 error:error];

    if (!v14)
    {
      snapshotID = 0;
      goto LABEL_19;
    }
  }

  v15 = [v13 objectForKeyedSubscript:{iDCopy, trackerCopy}];
  v16 = v15;
  if (v15)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    snapshots = [v15 snapshots];
    v18 = [snapshots countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = *v29;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(snapshots);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          snapshotUUID = [v21 snapshotUUID];
          v23 = [snapshotUUID isEqualToString:dCopy];

          if (v23)
          {
            snapshotID = [v21 snapshotID];

            goto LABEL_18;
          }
        }

        v18 = [snapshots countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_17;
  }

  if (!error)
  {
LABEL_17:
    snapshotID = 0;
    goto LABEL_18;
  }

  [MBError errorWithCode:204 format:@"Backup does not exist"];
  *error = snapshotID = 0;
LABEL_18:

LABEL_19:
  return snapshotID;
}

- (void)_waitForRestoreConditions:(id)conditions
{
  conditionsCopy = conditions;
  while (1)
  {
    v4 = MKBDeviceUnlockedSinceBoot();
    if (v4 == 1)
    {
      break;
    }

    v9 = v4;
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Unable to service background restore request before the first unlock (%d)", buf, 8u);
      _MBLog();
    }

    v8 = 60;
LABEL_11:

    sleep(v8);
  }

  reloaded = [conditionsCopy reloaded];
  isAuthenticated = [reloaded isAuthenticated];

  if ((isAuthenticated & 1) == 0 && BYSetupAssistantNeedsToRun())
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to service background restore request while Setup is active", buf, 2u);
      _MBLog();
    }

    v8 = 10;
    goto LABEL_11;
  }
}

- (id)_domainDisplayNamesForFailedDomainsWithAccount:(id)account
{
  accountCopy = account;
  persona = [accountCopy persona];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    personaIdentifier = [persona personaIdentifier];
    *buf = 138543618;
    v26 = accountIdentifier;
    v27 = 2114;
    v28 = personaIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checking for an incomplete restore for account %{public}@%{public}@", buf, 0x16u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    personaIdentifier2 = [persona personaIdentifier];
    _MBLog();
  }

  v24 = 0;
  v10 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v13 = [[MBDomainManager alloc] initWithPersona:persona];
    v23 = v12;
    v14 = [v10 domainNamesForRestoreFailures:&v23];
    v15 = v23;

    v16 = MBGetDefaultLog();
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v14 count];
        *buf = 134218242;
        v26 = v18;
        v27 = 2114;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found %ld failed domains: %{public}@", buf, 0x16u);
        [v14 count];
        _MBLog();
      }

      v19 = [MBMobileInstallation displayNamesForDomainNames:v14 domainManager:v13];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v19 count];
        *buf = 134218242;
        v26 = v20;
        v27 = 2114;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found %ld display names: %{public}@", buf, 0x16u);
        [v19 count];
        _MBLog();
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to fetch the failed domain names: %@", buf, 0xCu);
        _MBLog();
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v15 = v11;
  }

  return v19;
}

- (void)_alertUserOfFinishedRestoreForAccount:(id)account
{
  accountCopy = account;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _alertUserOfFinishedRestoreForAccount:]", "MBCKManager.m", 708, "account");
  }

  v5 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v6 = [(MBCKManager *)self _domainDisplayNamesForFailedDomainsWithAccount:accountCopy];
  if (![v6 count])
  {
    restoreSession = [v5 restoreSession];
    wasCancelled = [restoreSession wasCancelled];

    isPrimaryAccount = [accountCopy isPrimaryAccount];
    restore = [v5 restore];
    restoredSnapshotBackupPolicy = [restore restoredSnapshotBackupPolicy];
    integerValue = [restoredSnapshotBackupPolicy integerValue];

    v16 = MBGetDefaultLog();
    v9 = v16;
    if ((wasCancelled & 1) != 0 || !isPrimaryAccount || integerValue == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        v19 = wasCancelled;
        v20 = 1024;
        v21 = isPrimaryAccount;
        v22 = 1024;
        v23 = integerValue == 1;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not alerting user of restore finished cancelled:%d isPrimaryAccount:%d isRestoreFromMegaBackup:%d", buf, 0x14u);
        _MBLog();
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Alerting user of restore finished", buf, 2u);
        _MBLog();
      }

      v9 = +[MBFollowUpManager sharedManager];
      v17 = [v9 postFollowUpForRestoreFinishedForAccount:accountCopy skipiCloudQuotaOffer:0];
    }

    goto LABEL_15;
  }

  v7 = +[MBFollowUpManager sharedManager];
  v8 = [v7 postFollowUpForRestoreFailedForAccount:accountCopy failedDomainDisplayNames:v6];

  if (MBIsInternalInstall() && !dword_100421660 && !atomic_fetch_add_explicit(&dword_100421660, 1u, memory_order_relaxed))
  {
    v24 = @"failedDomainNames";
    v25 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    _MBCreateDiagnosticReport(@"Restore Incomplete", v9);
LABEL_15:
  }
}

- (void)postFollowUpForRestoreFailedForAccount:(id)account failedDomainNames:(id)names
{
  accountCopy = account;
  namesCopy = names;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager postFollowUpForRestoreFailedForAccount:failedDomainNames:]", "MBCKManager.m", 738, "account");
  }

  v6 = [MBDomainManager alloc];
  persona = [accountCopy persona];
  v8 = [(MBDomainManager *)v6 initWithPersona:persona];

  v9 = [MBMobileInstallation displayNamesForDomainNames:namesCopy domainManager:v8];
  v10 = +[MBFollowUpManager sharedManager];
  v11 = [v10 postFollowUpForRestoreFailedForAccount:accountCopy failedDomainDisplayNames:v9];
}

- (void)_warnUserOfPowerBudgetSuspendingRestoreForAccount:(id)account
{
  accountCopy = account;
  v8 = +[MBUserNotification notification];
  [v8 setIdentifier:@"RestoreOverBudget"];
  [v8 setInterval:86400.0];
  v4 = MBLocalizedStringFromTable();
  [v8 setTitle:v4];

  v5 = MBLocalizedStringFromTable();
  [v8 setBody:v5];

  v6 = MBLocalizedStringFromTable();
  [v8 setButton:v6];

  v7 = +[MBUserNotificationManager sharedManager];
  [v7 presentUserNotification:v8 account:accountCopy];
}

- (BOOL)isPrebuddyBackupInProgress:(id)progress
{
  _isMegaBackupMode = [(MBCKManager *)self _isMegaBackupMode];
  if (_isMegaBackupMode)
  {
    LOBYTE(_isMegaBackupMode) = ![(MBCKManager *)self _isInitialMegaBackupCompleted];
  }

  return _isMegaBackupMode;
}

- (void)_keychainSyncStatusDidChange
{
  account = [(MBServiceManager *)self account];
  [(MBCKManager *)self updatePrebuddyFollowUp:account];
}

- (BOOL)setupBackupWithPasscode:(id)passcode account:(id)account connection:(id)connection error:(id *)error
{
  passcodeCopy = passcode;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager setupBackupWithPasscode:account:connection:error:]", "MBCKManager.m", 781, "serviceAccount");
  }

  v12 = connectionCopy;
  v13 = passcodeCopy;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100093324;
  v64 = sub_100093334;
  v65 = 0;
  v14 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096BF8;
  block[3] = &unk_1003BCFA0;
  v16 = v14;
  v57 = v16;
  v58 = &v60;
  v59 = &v66;
  dispatch_sync(stateQueue, block);
  if (v67[3])
  {
    *(v67 + 24) = 0;
    v17 = self->_stateQueue;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100096CE0;
    v52[3] = &unk_1003BCFA0;
    v18 = v16;
    v53 = v18;
    v54 = &v60;
    v55 = &v66;
    dispatch_sync(v17, v52);
    if (v67[3])
    {
      v42 = v18;
      *(v67 + 24) = 0;
      v19 = v61;
      obj = v61[5];
      v20 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:&obj];
      passcodeCopy = v13;
      objc_storeStrong(v19 + 5, obj);
      v21 = v12;
      v22 = v20;
      if (v20)
      {
        v43 = +[MBCKOperationPolicy expensiveCellularPolicy];
        databaseManager = [(MBCKManager *)self databaseManager];
        v24 = v61;
        v50 = v61[5];
        v44 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v43 error:&v50];
        objc_storeStrong(v24 + 5, v50);

        if (v44)
        {
          processName = [v21 processName];
          v26 = [v43 operationGroupWithName:@"setupBackup" processName:processName];
          [v44 setCkOperationGroup:v26];

          ckOperationPolicy = [v44 ckOperationPolicy];
          [ckOperationPolicy setQualityOfService:25];

          v28 = v61;
          v49 = v61[5];
          v41 = [MBCKAccount fetchAccountWithOperationTracker:v44 cache:v22 create:1 error:&v49];
          objc_storeStrong(v28 + 5, v49);
          if (v41)
          {
            v29 = MBDeviceUUID();
            v30 = v61;
            v48 = v61[5];
            v31 = [v41 setupDeviceWithOperationTracker:v44 deviceUUID:v29 passcode:passcodeCopy error:&v48];
            objc_storeStrong(v30 + 5, v48);

            if (v31)
            {
              *(v67 + 24) = 1;
            }

            else
            {
              v35 = MBGetDefaultLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v36 = v61[5];
                *buf = 138412290;
                v71 = v36;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to setup backup: %@", buf, 0xCu);
                v40 = v61[5];
                _MBLog();
              }
            }
          }

          else
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = v61[5];
              *buf = 138412290;
              v71 = v34;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to fetch account: %@", buf, 0xCu);
              v39 = v61[5];
              _MBLog();
            }
          }
        }
      }

      v37 = self->_stateQueue;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100096E58;
      v46[3] = &unk_1003BC0B0;
      v47 = v42;
      dispatch_sync(v37, v46);
      v32 = *(v67 + 24);
      if (error && (v67[3] & 1) == 0)
      {
        *error = v61[5];
      }
    }

    else
    {
      passcodeCopy = v13;
      if (error)
      {
        v21 = v12;
        v32 = 0;
        *error = v61[5];
      }

      else
      {
        v32 = 0;
        v21 = v12;
      }
    }
  }

  else if (error)
  {
    v21 = v12;
    v32 = 0;
    *error = v61[5];
  }

  else
  {
    v32 = 0;
    v21 = v12;
  }

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  return v32;
}

- (void)syncBackupEnabledWithAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager syncBackupEnabledWithAccount:connection:]", "MBCKManager.m", 904, "account");
  }

  v9 = connectionCopy;
  v10 = os_transaction_create();
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Syncing backup enabled", buf, 2u);
    _MBLog();
  }

  v12 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000975C4;
  block[3] = &unk_1003BCFF0;
  v26 = buf;
  v14 = v12;
  v25 = v14;
  dispatch_sync(stateQueue, block);
  if ((*(v28 + 6) - 4) > 2)
  {
    v16 = +[MBDaemon sharedDaemon];
    [v16 holdWorkAssertion:a2];

    v17 = dispatch_get_global_queue(17, 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000975F8;
    v18[3] = &unk_1003BD018;
    v18[4] = self;
    v19 = accountCopy;
    v20 = v9;
    v22 = a2;
    v21 = v10;
    dispatch_async(v17, v18);
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Ignoring syncBackupEnabled during restore", v23, 2u);
      _MBLog();
    }
  }

  _Block_object_dispose(buf, 8);
}

- (BOOL)allowiTunesBackup
{
  v2 = +[UMUserPersona currentPersona];
  v9 = 0;
  v3 = [MBPersona personaWithUMPersona:v2 error:&v9];
  v4 = v9;

  if (v3)
  {
    buf[0] = 0;
    if ([v3 getBooleanValueForKey:@"AllowiTunesBackup" keyExists:buf])
    {
      v5 = buf[0] == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Failed to fetch current persona for fetching AllowiTunesBackup: %@", buf, 0xCu);
      _MBLog();
    }

    v6 = 0;
  }

  return v6;
}

- (id)backupStateInfoForInitialMegaBackup:(BOOL)backup account:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager backupStateInfoForInitialMegaBackup:account:]", "MBCKManager.m", 963, "account");
  }

  v7 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100093324;
  v20 = sub_100093334;
  v21 = 0;
  stateQueue = self->_stateQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100097B44;
  v12[3] = &unk_1003BD040;
  v13 = v7;
  v14 = &v16;
  backupCopy = backup;
  v12[4] = self;
  v9 = v7;
  dispatch_sync(stateQueue, v12);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)loadBackupStateInfoForInitialMegaBackup:(BOOL)backup account:(id)account
{
  backupCopy = backup;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKManager loadBackupStateInfoForInitialMegaBackup:account:]", "MBCKManager.m", 974, "account");
  }

  v6 = accountCopy;
  persona = [accountCopy persona];
  if (backupCopy)
  {
    v8 = @"InitialMegaBackupInfo";
  }

  else
  {
    v8 = @"BackupStateInfo";
  }

  v9 = [persona copyPreferencesValueForKey:v8 class:objc_opt_class()];

  if (v9)
  {
    v10 = [[MBStateInfo alloc] initWithDictionaryRepresentation:v9];
    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        dictionaryRepresentation = [v10 dictionaryRepresentation];
        *buf = 138412290;
        v16 = dictionaryRepresentation;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Loaded backup state: %@", buf, 0xCu);

        dictionaryRepresentation2 = [v10 dictionaryRepresentation];
        _MBLog();
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)saveBackupStateInfo:(id)info forInitialMegaBackup:(BOOL)backup account:(id)account
{
  backupCopy = backup;
  infoCopy = info;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKManager saveBackupStateInfo:forInitialMegaBackup:account:]", "MBCKManager.m", 983, "account");
  }

  v9 = accountCopy;
  if (infoCopy)
  {
    dictionaryRepresentation = [infoCopy dictionaryRepresentation];
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      accountIdentifier = [v9 accountIdentifier];
      *buf = 138543618;
      v19 = accountIdentifier;
      v20 = 2112;
      v21 = dictionaryRepresentation;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Saving backup state for account %{public}@: %@", buf, 0x16u);

      accountIdentifier2 = [v9 accountIdentifier];
      v17 = dictionaryRepresentation;
      _MBLog();
    }

    persona = [v9 persona];
    v14 = persona;
    if (backupCopy)
    {
      v15 = @"InitialMegaBackupInfo";
    }

    else
    {
      v15 = @"BackupStateInfo";
    }

    [persona setPreferencesValue:dictionaryRepresentation forKey:{v15, accountIdentifier2, v17}];
  }
}

+ (id)_removeIncompatibleSnapshotsWithAccountType:(int64_t)type device:(id)device snapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100098118;
  v11[3] = &unk_1003BD060;
  canRestoreSystemFiles = [device canRestoreSystemFiles];
  v11[4] = type;
  v8 = [NSPredicate predicateWithBlock:v11];
  v9 = [snapshotsCopy filteredArrayUsingPredicate:v8];

  return v9;
}

- (id)_getBackupListWithOperationTracker:(id)tracker shouldFilter:(BOOL)filter error:(id *)error
{
  filterCopy = filter;
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]", "MBCKManager.m", 1043, "tracker");
  }

  v7 = trackerCopy;
  account = [trackerCopy account];
  v45 = account;
  if (!account)
  {
    __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]", "MBCKManager.m", 1045, "serviceAccount");
  }

  persona = [account persona];
  accountType = [persona accountType];

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [v45 accountIdentifier];
    persona2 = [v45 persona];
    personaIdentifier = [persona2 personaIdentifier];
    *buf = 138544130;
    *&buf[4] = accountIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = personaIdentifier;
    *&buf[22] = 1024;
    LODWORD(v99) = filterCopy;
    WORD2(v99) = 2048;
    *(&v99 + 6) = accountType;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetching iCloud backups for account %{public}@(%{public}@), filter:%d, accountType:%ld", buf, 0x26u);

    accountIdentifier2 = [v45 accountIdentifier];
    persona3 = [v45 persona];
    personaIdentifier2 = [persona3 personaIdentifier];
    _MBLog();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v18 = objc_opt_new();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v99 = sub_100093324;
  *(&v99 + 1) = sub_100093334;
  v100 = 0;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = sub_100093324;
  v91[4] = sub_100093334;
  v92 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_100093324;
  v85 = sub_100093334;
  v86 = 0;
  v19 = dispatch_group_create();
  v20 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098B9C;
  block[3] = &unk_1003BD0B0;
  v40 = v7;
  v74 = v40;
  v77 = &v87;
  v78 = &v81;
  v79 = buf;
  v21 = v18;
  v75 = v21;
  v76 = v19;
  v80 = v91;
  group = v76;
  dispatch_group_async(v76, v20, block);

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_100093324;
  v71 = sub_100093334;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100093324;
  v65 = sub_100093334;
  v66 = 0;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100099054;
  v51[3] = &unk_1003BD118;
  v54 = &v87;
  v55 = buf;
  v56 = v91;
  v41 = v21;
  v52 = v41;
  selfCopy = self;
  v58 = &v61;
  v59 = accountType;
  v60 = filterCopy;
  v57 = &v67;
  v44 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v51);
  dispatch_group_notify(group, v20, v44);

  dispatch_block_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
  if (v88[3])
  {
    v22 = CFAbsoluteTimeGetCurrent();
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22 - Current;
      v25 = v23;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v62[5] count];
        *v94 = 134218240;
        v95 = v26;
        v96 = 2048;
        v97 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found %lu iCloud backups, t:%.3fs", v94, 0x16u);
      }

      [v62[5] count];
      _MBLog();
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = v62[5];
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v93 count:16];
    if (v28)
    {
      v29 = *v48;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v48 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v47 + 1) + 8 * i);
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 138412290;
            v95 = v31;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Found %@", v94, 0xCu);
            _MBLog();
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v47 objects:v93 count:16];
      }

      while (v28);
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    [(MBCKManager *)selfCopy2 setCachedBackupsByUDID:v68[5]];
    objc_sync_exit(selfCopy2);

    v34 = v62[5];
  }

  else
  {
    if (!v82[5])
    {
      __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]", "MBCKManager.m", 1175, "fetchError");
    }

    v35 = MBGetDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v82[5];
      *v94 = 138412290;
      v95 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to fetch the iCloud backups: %@", v94, 0xCu);
      v38 = v82[5];
      _MBLog();
    }

    v34 = 0;
    if (error)
    {
      *error = v82[5];
    }
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(v91, 8);

  _Block_object_dispose(buf, 8);

  return v34;
}

- (BOOL)hardwareModelNeedsH8Workaround:(id)workaround
{
  workaroundCopy = workaround;
  if ([workaroundCopy hasPrefix:@"N66"] & 1) != 0 || (objc_msgSend(workaroundCopy, "hasPrefix:", @"N71") & 1) != 0 || (objc_msgSend(workaroundCopy, "hasPrefix:", @"J98"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [workaroundCopy hasPrefix:@"J99"];
  }

  return v4;
}

- (BOOL)shouldInheritBackupsFromDevice:(id)device toDevice:(id)toDevice error:(id *)error
{
  deviceCopy = device;
  toDeviceCopy = toDevice;
  v10 = toDeviceCopy;
  if (!deviceCopy)
  {
    if (error)
    {
      v13 = @"Reference to the old device is nil";
      goto LABEL_9;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_42;
  }

  if (!toDeviceCopy)
  {
    deviceClass = [deviceCopy deviceClass];
    v16 = MBDeviceClass();
    if (deviceClass)
    {
      if ([deviceClass isEqualToString:v16])
      {
        hardwareModel = [deviceCopy hardwareModel];
        v18 = MBHardwareModel();
        if (hardwareModel)
        {
          if ([(MBCKManager *)self hardwareModelNeedsH8Workaround:hardwareModel])
          {
            v19 = MBGetDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Snapshot was made on a device model that was potentially affected by 23631672. Not inheriting", buf, 2u);
              _MBLog();
            }

            if (error)
            {
              v20 = @"Inheritance is not supported for backups made on devices that were affected by 23631672";
LABEL_38:
              [MBError errorWithCode:1 format:v20];
              *error = v14 = 0;
              goto LABEL_40;
            }
          }

          else
          {
            if (![(MBCKManager *)self hardwareModelNeedsH8Workaround:v18])
            {
              v14 = 1;
              goto LABEL_40;
            }

            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Restoring to a device model that was affected by 23631672. Not inheriting", buf, 2u);
              _MBLog();
            }

            if (error)
            {
              v20 = @"Inheritance is not supported when restoring to devices that were affected by 23631672";
              goto LABEL_38;
            }
          }
        }

        else
        {
          v25 = MBGetDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            deviceUUID = [deviceCopy deviceUUID];
            *buf = 138412290;
            v34 = deviceUUID;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Couldn't determine the hardware model of the device %@ that made the backup snapshot", buf, 0xCu);

            deviceUUID2 = [deviceCopy deviceUUID];
            _MBLog();
          }

          if (error)
          {
            deviceUUID3 = [deviceCopy deviceUUID];
            *error = [MBError errorWithCode:1 format:@"Couldn't determine the hardware model of old device %@. Not inheriting backups", deviceUUID3];
          }
        }

        v14 = 0;
LABEL_40:

        goto LABEL_41;
      }

      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = deviceClass;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Not inheriting backups for cross-device restore. Old device class: %@, inheriting device class: %@", buf, 0x16u);
        _MBLog();
      }

      if (error)
      {
        [MBError errorWithCode:1 format:@"Inheriting backups is not supported across cross-device restores. Old device class: %@, Restoring device class: %@ ", deviceClass, v16];
        *error = v14 = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        deviceUUID4 = [deviceCopy deviceUUID];
        *buf = 138412290;
        v34 = deviceUUID4;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Couldn't determine the device class of the old device %@", buf, 0xCu);

        deviceUUID5 = [deviceCopy deviceUUID];
        _MBLog();
      }

      if (error)
      {
        deviceUUID6 = [deviceCopy deviceUUID];
        *error = [MBError errorWithCode:1 format:@"Couldn't determine the device class of old device %@. Not inheriting backups", deviceUUID6];
      }
    }

    v14 = 0;
    goto LABEL_41;
  }

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    deviceUUID7 = [v10 deviceUUID];
    *buf = 138412290;
    v34 = deviceUUID7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Device record already exists for the device being restored to (%@). Can't inherit", buf, 0xCu);

    deviceUUID8 = [v10 deviceUUID];
    _MBLog();
  }

  if (!error)
  {
    goto LABEL_10;
  }

  v13 = @"Device record already exists for the currently restoring device. Not inheriting snapshot";
LABEL_9:
  [MBError errorWithCode:1 format:v13, deviceUUID8];
  *error = v14 = 0;
LABEL_42:

  return v14;
}

- (BOOL)inheritSnapshotWithAccount:(id)account fromSnapshot:(id)snapshot fromDevice:(id)device error:(id *)error
{
  accountCopy = account;
  snapshotCopy = snapshot;
  deviceCopy = device;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager inheritSnapshotWithAccount:fromSnapshot:fromDevice:error:]", "MBCKManager.m", 1272, "serviceAccount");
  }

  v13 = deviceCopy;
  if (![accountCopy isBeneficiaryAccount])
  {
    if (!snapshotCopy || !v13)
    {
      if (error)
      {
        v15 = [MBError errorWithCode:1 format:@"Both snapshotID and deviceUUID need to be specified to inherit backups"];
        goto LABEL_27;
      }

LABEL_28:
      v32 = 0;
      goto LABEL_113;
    }

    v111 = +[MBCKOperationPolicy expensiveCellularPolicy];
    databaseManager = [(MBCKManager *)self databaseManager];
    v112 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v111 error:error];

    if (!v112)
    {
      v32 = 0;
LABEL_112:

      goto LABEL_113;
    }

    v17 = [v111 operationGroupWithName:@"inheritBackup"];
    [v112 setCkOperationGroup:v17];

    v110 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
    if (!v110)
    {
      v32 = 0;
LABEL_111:

      goto LABEL_112;
    }

    *buf = 0;
    v129 = buf;
    v130 = 0x3032000000;
    v131 = sub_100093324;
    v132 = sub_100093334;
    v133 = 0;
    v108 = v13;
    v107 = MBDeviceUUID();
    v18 = (v129 + 40);
    obj = *(v129 + 5);
    v109 = [MBCKAccount fetchAccountWithOperationTracker:v112 cache:v110 error:&obj];
    objc_storeStrong(v18, obj);
    if (v109)
    {
      v19 = (v129 + 40);
      v126 = *(v129 + 5);
      v20 = [v109 fetchDevicesWithOperationTracker:v112 error:&v126];
      objc_storeStrong(v19, v126);
      if (v20)
      {
        v21 = [v109 deviceForUUID:v107];
        v22 = [v109 deviceForUUID:v108];
        v105 = v21;
        if (!v22)
        {
          v38 = MBGetDefaultLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *v134 = 138412290;
            *&v134[4] = v108;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Couldn't find device record for old device %@ under the account. Not inheriting backups", v134, 0xCu);
            _MBLog();
          }

          if (error)
          {
            [MBError errorWithCode:1 format:@"Couldn't find device record for old device %@. Can't inherit backups from this device", v108];
            *error = v32 = 0;
          }

          else
          {
            v32 = 0;
          }

          v22 = 0;
          goto LABEL_109;
        }

        if (![(MBCKManager *)self shouldInheritBackupsFromDevice:v22 toDevice:v21 error:error])
        {
          v32 = 0;
LABEL_109:

          goto LABEL_110;
        }

        v23 = (v129 + 40);
        v125 = *(v129 + 5);
        v24 = [v22 fetchSnapshotsWithOperationTracker:v112 retry:1 error:&v125];
        v102 = v22;
        objc_storeStrong(v23, v125);
        if ((v24 & 1) == 0)
        {
          v39 = MBGetDefaultLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = *(v129 + 5);
            *v134 = 138412546;
            *&v134[4] = v108;
            *&v134[12] = 2112;
            *&v134[14] = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Couldn't fetch snapshot records for old device %@ - %@", v134, 0x16u);
            v93 = *(v129 + 5);
            _MBLog();
          }

          v32 = 0;
          if (error)
          {
            *error = *(v129 + 5);
          }

          goto LABEL_108;
        }

        v124 = 0u;
        v122 = 0u;
        v123 = 0u;
        v121 = 0u;
        snapshots = [v22 snapshots];
        v26 = [snapshots countByEnumeratingWithState:&v121 objects:v136 count:16];
        if (v26)
        {
          v27 = *v122;
          v103 = snapshots;
LABEL_18:
          v28 = 0;
          while (1)
          {
            if (*v122 != v27)
            {
              objc_enumerationMutation(v103);
            }

            v29 = *(*(&v121 + 1) + 8 * v28);
            snapshotID = [v29 snapshotID];
            v31 = [snapshotID isEqualToString:snapshotCopy];

            if (v31)
            {
              break;
            }

            if (v26 == ++v28)
            {
              snapshots = v103;
              v26 = [v103 countByEnumeratingWithState:&v121 objects:v136 count:16];
              if (v26)
              {
                goto LABEL_18;
              }

              goto LABEL_24;
            }
          }

          productVersion = [v29 productVersion];
          if (!productVersion || (MBProductVersion(), v42 = objc_claimAutoreleasedReturnValue(), v43 = MBCompareVersionStrings() == -1, v42, !v43))
          {
            v44 = v29;

            if (!v44)
            {
              goto LABEL_62;
            }

            [v44 snapshotFormat];
            if (MBSnapshotFormatContainsFileLists())
            {
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = v45;
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  v47 = MBStringForSnapshotFormat();
                  *v134 = 138412290;
                  *&v134[4] = v47;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Not inheriting snapshot with format %@", v134, 0xCu);
                }

                v92 = MBStringForSnapshotFormat();
                _MBLog();
              }

              if (error)
              {
                v48 = MBStringForSnapshotFormat();
                *error = [MBError errorWithCode:1 format:@"Not enabling inheriting snapshot with format %@", v48];
              }

              goto LABEL_84;
            }

            v50 = MBGetDefaultLog();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *v134 = 138412290;
              *&v134[4] = v107;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Creating new device record for device %@", v134, 0xCu);
              _MBLog();
            }

            v51 = [MBCKDevice alloc];
            account = [v112 account];
            v104 = -[MBCKDevice initWithUUID:cache:backupEnabled:](v51, "initWithUUID:cache:backupEnabled:", v107, 0, [account isEnabled]);

            v53 = (v129 + 40);
            v120 = *(v129 + 5);
            [v109 addDevice:v104 error:&v120];
            objc_storeStrong(v53, v120);
            v54 = (v129 + 40);
            v119 = *(v129 + 5);
            LOBYTE(v51) = [(MBCKModel *)v104 saveWithOperationTracker:v112 error:&v119];
            objc_storeStrong(v54, v119);
            if (v51)
            {
              v55 = (v129 + 40);
              v118 = *(v129 + 5);
              v56 = [v109 saveWithOperationTracker:v112 error:&v118];
              objc_storeStrong(v55, v118);
              if (v56)
              {
                snapshotFormat = [v44 snapshotFormat];
                v58 = MBRandomUUID();
                v59 = [MBCKSnapshot snapshotForDevice:v104 reason:0 type:4 snapshotFormat:snapshotFormat snapshotID:v58];

                [v59 setIsInherited:1];
                backupProperties = [v44 backupProperties];
                [v59 setBackupProperties:backupProperties];

                v61 = MBGetDefaultLog();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  v62 = v61;
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                  {
                    backupProperties2 = [v59 backupProperties];
                    v64 = [backupProperties2 length];
                    *v134 = 134217984;
                    *&v134[4] = v64;
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Found %lu bytes for buddy stash data on the old snapshot. Copied it over to the inheriting snapshot record", v134, 0xCu);
                  }

                  backupProperties3 = [v59 backupProperties];
                  [backupProperties3 length];
                  _MBLog();
                }

                v66 = (v129 + 40);
                v117 = *(v129 + 5);
                v67 = [v59 saveWithOperationTracker:v112 error:&v117];
                objc_storeStrong(v66, v117);
                if (v67)
                {
                  v68 = [CKReference alloc];
                  recordID = [v102 recordID];
                  v106 = [v68 initWithRecordID:recordID action:0];

                  v70 = [CKReference alloc];
                  recordID2 = [(MBCKModel *)v104 recordID];
                  v101 = [v70 initWithRecordID:recordID2 action:0];

                  v72 = [CKReference alloc];
                  recordID3 = [v44 recordID];
                  v100 = [v72 initWithRecordID:recordID3 action:0];

                  v74 = [CKReference alloc];
                  recordID4 = [v59 recordID];
                  v99 = [v74 initWithRecordID:recordID4 action:0];

                  v76 = [NSPredicate predicateWithFormat:@"oldDevice==%@ AND newDevice==%@ AND restoreSnapshot==%@ AND inheritedSnapshot==%@", v106, v101, v100, v99];
                  v98 = [[CKQuery alloc] initWithRecordType:@"InheritBackup" predicate:v76];
                  v97 = v76;
                  v77 = dispatch_semaphore_create(0);
                  *v134 = 0;
                  *&v134[8] = v134;
                  *&v134[16] = 0x2020000000;
                  v135 = 0;
                  v78 = [[CKQueryOperation alloc] initWithQuery:v98];
                  [v78 setFetchAllResults:1];
                  [v78 setRecordFetchedBlock:&stru_1003BD158];
                  v113[0] = _NSConcreteStackBlock;
                  v113[1] = 3221225472;
                  v113[2] = sub_10009B0C8;
                  v113[3] = &unk_1003BD180;
                  v115 = buf;
                  v116 = v134;
                  v79 = v77;
                  v114 = v79;
                  [v78 setQueryCompletionBlock:v113];
                  [v112 addDatabaseOperation:v78];
                  MBSemaphoreWaitForever();
                  v96 = v79;
                  if (*(*&v134[8] + 24) == 1)
                  {
                    v80 = +[MBXPCServer sharedInstance];
                    scheduler = [v80 scheduler];
                    [scheduler clearNilBackupDateFetchDateForAccount:accountCopy];

                    v32 = *(*&v134[8] + 24);
                  }

                  else
                  {
                    v32 = 0;
                  }

                  if (error && (v32 & 1) == 0)
                  {
                    *error = *(v129 + 5);
                    v32 = *(*&v134[8] + 24);
                  }

                  _Block_object_dispose(v134, 8);
                }

                else
                {
                  v88 = MBGetDefaultLog();
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                  {
                    *v134 = 0;
                    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "Couldn't save new snapshot record to inherit to", v134, 2u);
                    _MBLog();
                  }

                  v32 = 0;
                  if (error)
                  {
                    *error = *(v129 + 5);
                  }
                }

                goto LABEL_106;
              }

              v86 = MBGetDefaultLog();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                v87 = *(v129 + 5);
                *v134 = 138412546;
                *&v134[4] = v107;
                *&v134[12] = 2112;
                *&v134[14] = v87;
                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Couldn't add new device to account record for device %@ - %@", v134, 0x16u);
                v95 = *(v129 + 5);
                _MBLog();
              }

              if (error)
              {
                v85 = *(v129 + 5);
                goto LABEL_94;
              }
            }

            else
            {
              v83 = MBGetDefaultLog();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                v84 = *(v129 + 5);
                *v134 = 138412546;
                *&v134[4] = v107;
                *&v134[12] = 2112;
                *&v134[14] = v84;
                _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "Couldn't save new device record for device %@ - %@", v134, 0x16u);
                v94 = *(v129 + 5);
                _MBLog();
              }

              if (error)
              {
                v85 = *(v129 + 5);
LABEL_94:
                v32 = 0;
                *error = v85;
LABEL_106:
                v105 = v104;
                goto LABEL_107;
              }
            }

            v32 = 0;
            goto LABEL_106;
          }

          v82 = MBGetDefaultLog();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *v134 = 138412546;
            *&v134[4] = snapshotCopy;
            *&v134[12] = 2112;
            *&v134[14] = v108;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Ignoring snapshot %@ from the old device %@ since it was created on a newer OS version", v134, 0x16u);
            _MBLog();
          }

          if (error)
          {
            *error = [MBError errorWithCode:1 format:@"The snapshot record was created on a newer OS version"];
          }
        }

        else
        {
LABEL_24:

LABEL_62:
          v49 = MBGetDefaultLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *v134 = 138412546;
            *&v134[4] = snapshotCopy;
            *&v134[12] = 2112;
            *&v134[14] = v108;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Couldn't find snapshot record for snapshot ID %@ on the old device %@", v134, 0x16u);
            _MBLog();
          }

          if (error)
          {
            [MBError errorWithCode:1 format:@"Couldn't find snapshot record for snapshot %@ under device %@", snapshotCopy, v108];
            v44 = 0;
            *error = v32 = 0;
LABEL_107:

LABEL_108:
            v22 = v102;
            goto LABEL_109;
          }
        }

        v44 = 0;
LABEL_84:
        v32 = 0;
        goto LABEL_107;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = *(v129 + 5);
        *v134 = 138412290;
        *&v134[4] = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Couldn't fetch device records - %@", v134, 0xCu);
        v91 = *(v129 + 5);
        _MBLog();
      }

      if (error)
      {
        v35 = *(v129 + 5);
        goto LABEL_39;
      }
    }

    else
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *(v129 + 5);
        *v134 = 138412290;
        *&v134[4] = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Couldn't fetch account record - %@", v134, 0xCu);
        v90 = *(v129 + 5);
        _MBLog();
      }

      if (error)
      {
        v35 = *(v129 + 5);
LABEL_39:
        v32 = 0;
        *error = v35;
LABEL_110:

        _Block_object_dispose(buf, 8);
        goto LABEL_111;
      }
    }

    v32 = 0;
    goto LABEL_110;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not inheriting backup because account is beneficiary", buf, 2u);
    _MBLog();
  }

  if (!error)
  {
    goto LABEL_28;
  }

  v15 = [MBError errorWithCode:1 format:@"No inheritance backup for beneficiary account"];
LABEL_27:
  v32 = 0;
  *error = v15;
LABEL_113:

  return v32 & 1;
}

- (unint64_t)nextBackupSizeWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager nextBackupSizeWithAccount:]", "MBCKManager.m", 1433, "account");
  }

  v5 = accountCopy;
  v6 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100093324;
  v21 = sub_100093334;
  v22 = 0;
  stateQueue = self->_stateQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10009B340;
  v14 = &unk_1003BCFF0;
  v16 = &v17;
  v8 = v6;
  v15 = v8;
  dispatch_sync(stateQueue, &v11);
  unsignedLongLongValue = [v18[5] unsignedLongLongValue];

  _Block_object_dispose(&v17, 8);
  return unsignedLongLongValue;
}

- (id)nextBackupSizeInfoWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager nextBackupSizeInfoWithAccount:]", "MBCKManager.m", 1445, "account");
  }

  v5 = accountCopy;
  v6 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v7 = objc_opt_new();
  stateQueue = self->_stateQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009B4AC;
  v14[3] = &unk_1003BC060;
  v15 = v6;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  dispatch_sync(stateQueue, v14);
  v11 = v16;
  v12 = v9;

  return v9;
}

- (id)_backupEngineWithReason:(int64_t)reason settingsContext:(id)context account:(id)account
{
  contextCopy = context;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _backupEngineWithReason:settingsContext:account:]", "MBCKManager.m", 1465, "account");
  }

  v10 = accountCopy;
  if (MBBackupReasonIsManual())
  {
    v11 = 25;
  }

  else if (MBBackupReasonIsScheduled())
  {
    v12 = +[MBBehaviorOptions sharedOptions];
    useBackgroundOperationsForBackup = [v12 useBackgroundOperationsForBackup];

    if (useBackgroundOperationsForBackup)
    {
      v11 = 9;
    }

    else
    {
      v11 = 17;
    }
  }

  else
  {
    v11 = 17;
  }

  if ([v10 isPrimaryAccount] && -[MBCKManager _isMegaBackupMode](self, "_isMegaBackupMode"))
  {
    [contextCopy setBackupPolicy:1];
  }

  v14 = [MBCKBackupEngine alloc];
  debugContext = [(MBCKManager *)self debugContext];
  v16 = [(MBCKBackupEngine *)v14 initWithReason:reason settingsContext:contextCopy debugContext:debugContext serviceManager:self];

  [(MBCKEngine *)v16 cache];
  if (objc_claimAutoreleasedReturnValue())
  {
    __assert_rtn("[MBCKManager _backupEngineWithReason:settingsContext:account:]", "MBCKManager.m", 1480, "!engine.cache");
  }

  [(MBCKEngine *)v16 setQualityOfService:v11];
  v17 = MBAllCKPlugins();
  context = [(MBCKEngine *)v16 context];
  [context setPlugins:v17];

  v19 = objc_alloc_init(MBWatchdog);
  [(MBWatchdog *)v19 setTimeout:14400.0];
  [(MBWatchdog *)v19 setTimeoutBlock:&stru_1003BD1A0];
  [(MBEngine *)v16 setWatchdog:v19];

  return v16;
}

- (BOOL)startBackupWithOptions:(id)options reason:(int64_t)reason xpcActivity:(id)activity account:(id)account connection:(id)connection error:(id *)error
{
  optionsCopy = options;
  activityCopy = activity;
  accountCopy = account;
  connectionCopy = connection;
  if (!optionsCopy)
  {
    __assert_rtn("[MBCKManager startBackupWithOptions:reason:xpcActivity:account:connection:error:]", "MBCKManager.m", 1497, "options");
  }

  if (!reason)
  {
    __assert_rtn("[MBCKManager startBackupWithOptions:reason:xpcActivity:account:connection:error:]", "MBCKManager.m", 1498, "reason != kMBBackupReasonUnspecified");
  }

  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager startBackupWithOptions:reason:xpcActivity:account:connection:error:]", "MBCKManager.m", 1499, "account");
  }

  accountIdentifier = [accountCopy accountIdentifier];
  if (!accountIdentifier)
  {
    __assert_rtn("[MBCKManager startBackupWithOptions:reason:xpcActivity:account:connection:error:]", "MBCKManager.m", 1501, "accountIdentifier");
  }

  dispatch_assert_queue_not_V2(self->_stateQueue);
  v49 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  [(MBCKManager *)self networkConnectivity];
  v17 = v16;
  if (MBBackupReasonIsManual() && (v17 & 1) != 0)
  {
    cellularAccess = [optionsCopy cellularAccess];
    if (!cellularAccess)
    {
      if (![accountCopy isBackupOnCellularEnabled])
      {
        goto LABEL_11;
      }

      cellularAccess = +[MBCellularAccess inexpensiveCellularAccess];
      [optionsCopy setCellularAccess:cellularAccess];
    }
  }

LABEL_11:
  v52 = MBStringForBackupReason();
  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = v52;
    *&buf[12] = 2048;
    *&buf[14] = reason;
    *&buf[22] = 2114;
    v77 = accountIdentifier;
    LOWORD(v78) = 2114;
    *(&v78 + 2) = optionsCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Starting backup, reason:%{public}@(%ld), account:%{public}@, options:%{public}@", buf, 0x2Au);
    _MBLog();
  }

  if (BYSetupAssistantNeedsToRun())
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Refusing request to start backup while Buddy is active", buf, 2u);
      _MBLog();
    }

    if (error)
    {
      [MBError errorWithCode:212 format:@"Refusing to backup while buddy is active"];
      *error = v21 = 0;
      goto LABEL_37;
    }

LABEL_25:
    v21 = 0;
    goto LABEL_37;
  }

  if ([optionsCopy backupPolicy] == 1)
  {
    [(MBCKManager *)self _setMegaBackupMode:1];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v77 = sub_100093324;
    *&v78 = sub_100093334;
    *(&v78 + 1) = 0;
    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_10009C15C;
    v70[3] = &unk_1003BC160;
    v72 = buf;
    v23 = v22;
    v71 = v23;
    [(MBCKManager *)self _cancelBackupAndScanEnginesWithAccount:accountCopy timeout:300 completion:v70];
    MBGroupWaitForever();
    if (*(*&buf[8] + 40))
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(*&buf[8] + 40);
        LODWORD(v73) = 138412290;
        *(&v73 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to cancel already in-progress backup: %@", &v73, 0xCu);
        v42 = *(*&buf[8] + 40);
        _MBLog();
      }

      if (error)
      {
        *error = *(*&buf[8] + 40);
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_25;
    }

    _Block_object_dispose(buf, 8);
  }

  v48 = objc_opt_new();
  cellularAccess2 = [optionsCopy cellularAccess];
  [v48 setCellularAccess:cellularAccess2];

  databaseManager = [(MBCKManager *)self databaseManager];
  v28 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v48 error:error];

  if (v28)
  {
    [v28 setXpcActivity:activityCopy];
    v29 = [NSString alloc];
    capitalizedString = [v52 capitalizedString];
    v46 = [v29 initWithFormat:@"%@ Backup", capitalizedString];

    processName = [connectionCopy processName];
    v47 = [v48 operationGroupWithName:v46 processName:processName];

    [v28 setCkOperationGroup:v47];
    v32 = MBDeviceUUID();
    v45 = [(MBCKManager *)self _ckSettingsContextForBackupUDID:v32 account:accountCopy];

    v44 = activityCopy;
    v33 = dispatch_group_create();
    dispatch_group_enter(v33);
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009C1BC;
    block[3] = &unk_1003BC5B8;
    v35 = v49;
    v66 = v35;
    selfCopy = self;
    v36 = accountCopy;
    v68 = v36;
    v37 = v33;
    v69 = v37;
    dispatch_async(stateQueue, block);
    v43 = v37;
    MBGroupWaitForever();
    *&v73 = 0;
    *(&v73 + 1) = &v73;
    v74 = 0x2020000000;
    v75 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v77 = sub_100093324;
    *&v78 = sub_100093334;
    *(&v78 + 1) = 0;
    v38 = self->_stateQueue;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10009C2F4;
    v54[3] = &unk_1003BD1C8;
    v62 = buf;
    v63 = &v73;
    v55 = v35;
    selfCopy2 = self;
    reasonCopy = reason;
    v39 = v45;
    v57 = v39;
    v58 = v36;
    v40 = v47;
    v59 = v40;
    v60 = v48;
    v61 = v28;
    dispatch_sync(v38, v54);
    if (*(*(&v73 + 1) + 24))
    {
      v21 = 1;
      activityCopy = v44;
    }

    else
    {
      if (!*(*&buf[8] + 40))
      {
        __assert_rtn("[MBCKManager startBackupWithOptions:reason:xpcActivity:account:connection:error:]", "MBCKManager.m", 1600, "success || localError");
      }

      activityCopy = v44;
      if (error)
      {
        *error = [(MBCKManager *)self _sanitizeError:?];
        v21 = *(*(&v73 + 1) + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v73, 8);
  }

  else
  {
    v21 = 0;
  }

LABEL_37:
  return v21 & 1;
}

- (void)_didUpdateBackupProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining bytesRemaining:(int64_t)bytesRemaining engineState:(id)state stateInfo:(id)info account:(id)account shouldUpdatePrebuddyFollowUp:(BOOL)up
{
  upCopy = up;
  infoCopy = info;
  accountCopy = account;
  stateCopy = state;
  serviceDelegate = [(MBCKManager *)self serviceDelegate];
  *&v20 = progress;
  [serviceDelegate manager:self didUpdateProgress:remaining estimatedTimeRemaining:bytesRemaining bytesRemaining:stateCopy state:0 context:v20];

  if (upCopy)
  {
    prebuddyFollowUpController = self->_prebuddyFollowUpController;
    if (prebuddyFollowUpController)
    {
      [(MBPrebuddyFollowUpController *)prebuddyFollowUpController updateFollowupWithBackupProgress:infoCopy account:accountCopy];
    }

    else
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Cannot update backup progress with nil controller", v23, 2u);
        _MBLog();
      }
    }
  }
}

- (void)_startBackupWithEngine:(id)engine account:(id)account
{
  engineCopy = engine;
  accountCopy = account;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!engineCopy)
  {
    __assert_rtn("[MBCKManager _startBackupWithEngine:account:]", "MBCKManager.m", 1631, "engine");
  }

  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _startBackupWithEngine:account:]", "MBCKManager.m", 1632, "account");
  }

  accountIdentifier = [accountCopy accountIdentifier];
  if (!accountIdentifier)
  {
    __assert_rtn("[MBCKManager _startBackupWithEngine:account:]", "MBCKManager.m", 1634, "accountIdentifier");
  }

  v9 = accountIdentifier;
  context = [engineCopy context];
  if (!context)
  {
    __assert_rtn("[MBCKManager _startBackupWithEngine:account:]", "MBCKManager.m", 1636, "settingsContext");
  }

  v11 = context;
  v12 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  isPrimaryAccount = [accountCopy isPrimaryAccount];
  _isMegaBackupMode = [(MBCKManager *)self _isMegaBackupMode];
  v15 = _isMegaBackupMode;
  v40 = v11;
  v41 = v9;
  v39 = v12;
  if (!isPrimaryAccount || (_isMegaBackupMode & 1) == 0)
  {
    isPrebuddyMode = [(MBCKManager *)self isPrebuddyMode];
    goto LABEL_10;
  }

  _isInitialMegaBackupCompleted = [(MBCKManager *)self _isInitialMegaBackupCompleted];
  isPrebuddyMode = [(MBCKManager *)self isPrebuddyMode];
  if (_isInitialMegaBackupCompleted)
  {
LABEL_10:
    v19 = isPrebuddyMode;
    v18 = [(MBCKManager *)self _copyBackupStateInfoForInitialMegaBackup:0 account:accountCopy];
    isPrebuddyMode = 0;
    v42 = 0;
    goto LABEL_11;
  }

  v42 = 1;
  v18 = [[MBStateInfo alloc] initWithState:1 progress:-1 estimatedTimeRemaining:0 error:0 errors:0.0];
  v19 = isPrebuddyMode;
LABEL_11:
  backupAttemptCount = [v18 backupAttemptCount];
  telemetry = [engineCopy telemetry];
  [telemetry setBackupAttemptCount:backupAttemptCount + 1];

  [engineCopy backupReason];
  if (isPrimaryAccount && MBBackupReasonIsManual())
  {
    v22 = +[MBNotificationCenter sharedNotificationCenter];
    [v22 postNotification:kMBManagerManualBackupStartedNotification];
  }

  v23 = MBStringForBackupReason();
  [engineCopy qualityOfService];
  v43 = MBLogStringForNSQualityOfService();
  v24 = MBGetDefaultLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if ((v15 | v19))
  {
    v26 = v41;
    if (v25)
    {
      *buf = 138544898;
      v56 = v23;
      v57 = 2114;
      v58 = v43;
      v59 = 2114;
      v60 = v41;
      v61 = 1024;
      v62 = v15;
      v63 = 1024;
      v64 = v42;
      v65 = 1024;
      v66 = v19;
      v67 = 1024;
      v68 = isPrebuddyMode;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Starting backup, reason:%{public}@, qos:%{public}@, account:%{public}@ isMega:%d(%d) isPrebuddy:%d(%d)", buf, 0x38u);
LABEL_19:
      _MBLog();
    }
  }

  else
  {
    v26 = v41;
    if (v25)
    {
      *buf = 138543874;
      v56 = v23;
      v57 = 2114;
      v58 = v43;
      v59 = 2114;
      v60 = v41;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Starting backup, reason:%{public}@, qos:%{public}@, account:%{public}@", buf, 0x20u);
      goto LABEL_19;
    }
  }

  _startNetworkPathMonitor = [(MBCKManager *)self _startNetworkPathMonitor];
  [(MBCKManager *)self _saveBackupInProgressMarkerStateWithAccount:accountCopy];
  estimator = [engineCopy estimator];
  progressModel = [engineCopy progressModel];
  LODWORD(v30) = 1048911544;
  [estimator setProgressHysteresis:v30];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10009CC4C;
  v44[3] = &unk_1003BD1F0;
  v45 = engineCopy;
  selfCopy = self;
  v47 = v18;
  v48 = v23;
  v53 = v42;
  v54 = isPrebuddyMode;
  v49 = accountCopy;
  v50 = estimator;
  v51 = progressModel;
  v52 = v39;
  v31 = v39;
  v32 = progressModel;
  v33 = estimator;
  v34 = accountCopy;
  v35 = v23;
  v36 = v18;
  v37 = engineCopy;
  v38 = objc_retainBlock(v44);
  [v37 setStateChange:v38];
  [(MBCKManager *)self _startEngine:v37 delegateContext:0];
}

- (void)submitMegaLifeCycleTelemetriesWithAccount:(id)account
{
  persona = [account persona];
  v4 = +[NSMutableDictionary dictionary];
  v40 = 0;
  v5 = [persona getBooleanValueForKey:@"MegaBackupTurnOniCloudBackup" keyExists:&v40];
  if (v40)
  {
    v6 = [NSNumber numberWithUnsignedChar:v5];
    [v4 setObject:v6 forKeyedSubscript:@"MegaBackupTurnOniCloudBackup"];
  }

  v40 = 0;
  v7 = [persona getBooleanValueForKey:@"MegaBackupTurnOnAllAppsSync" keyExists:&v40];
  if (v40)
  {
    v8 = [NSNumber numberWithUnsignedChar:v7];
    [v4 setObject:v8 forKeyedSubscript:@"MegaBackupTurnOnAllAppsSync"];
  }

  v40 = 0;
  v9 = [persona copyPreferencesValueForKey:@"MegaBackupEntryPoint" class:objc_opt_class()];
  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"MegaBackupEntryPoint"];
  }

  v38 = v9;
  v10 = [persona copyPreferencesValueForKey:@"SyncSettingsEnabledForMegaBackup" class:objc_opt_class()];
  if ([v10 count])
  {
    [v4 setObject:v10 forKeyedSubscript:@"SyncSettingsEnabledForMegaBackup"];
  }

  v37 = v10;
  v11 = [persona copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];
  v12 = v11;
  if (v11)
  {
    [v11 timeIntervalSince1970];
    v14 = [NSNumber numberWithLongLong:v13];
    [v4 setObject:v14 forKeyedSubscript:@"MegaBackupFlowStartDate"];
  }

  v36 = v12;
  v15 = [persona copyPreferencesValueForKey:@"EnterPrebuddyUIDateDelta" class:objc_opt_class()];
  if (v15)
  {
    [v4 setObject:v15 forKeyedSubscript:@"EnterPrebuddyUIDateDelta"];
  }

  v16 = [persona copyPreferencesValueForKey:@"InitialMegaBackupStartDateDelta" class:objc_opt_class()];

  if (v16)
  {
    [v4 setObject:v16 forKeyedSubscript:@"InitialMegaBackupStartDateDelta"];
  }

  v17 = [persona copyPreferencesValueForKey:@"InitialMegaBackupFinishedDateDelta" class:objc_opt_class()];

  if (v17)
  {
    [v4 setObject:v17 forKeyedSubscript:@"InitialMegaBackupFinishedDateDelta"];
  }

  v18 = [persona copyPreferencesValueForKey:@"RestoreAfterMegaBackupDateDelta" class:objc_opt_class()];

  if (v18)
  {
    [v4 setObject:v18 forKeyedSubscript:@"RestoreAfterMegaBackupDateDelta"];
  }

  v19 = [persona copyPreferencesValueForKey:@"RestoreFinishedAfterMegaBackupDateDelta" class:objc_opt_class()];

  if (v19)
  {
    [v4 setObject:v19 forKeyedSubscript:@"RestoreFinishedAfterMegaBackupDateDelta"];
  }

  v20 = [persona copyPreferencesValueForKey:@"MegaBackupRefreshDelta" class:objc_opt_class()];

  if (v20)
  {
    [v4 setObject:v20 forKeyedSubscript:@"MegaBackupRefreshDelta"];
  }

  v21 = [persona copyPreferencesValueForKey:@"PrebuddyFlowStep" class:objc_opt_class()];
  if (v21)
  {
    [v4 setObject:v21 forKeyedSubscript:@"PrebuddyFlowStep"];
  }

  v22 = [persona copyPreferencesValueForKey:@"MegaBackupSourceDeviceUUID" class:objc_opt_class()];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = MBDeviceUUID();
  }

  v25 = v24;

  [v4 setObject:v25 forKeyedSubscript:@"DeviceID"];
  v45[0] = kRTCReportingSessionInfoClientType;
  v45[1] = kRTCReportingSessionInfoClientVersion;
  v46[0] = &off_1003E0D38;
  v46[1] = &off_1003E0D50;
  v45[2] = kRTCReportingSessionInfoSessionID;
  v26 = [NSNumber numberWithUnsignedInt:arc4random()];
  v46[2] = v26;
  v46[3] = &__kCFBooleanTrue;
  v45[3] = kRTCReportingSessionInfoBatchEvent;
  v45[4] = kRTCReportingSessionInfoContainsRealtimeEvents;
  v45[5] = kRTCReportingSessionInfoSamplingUUIID;
  v46[4] = &__kCFBooleanFalse;
  v46[5] = v25;
  v27 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:6];

  v43[0] = kRTCReportingUserInfoClientName;
  v43[1] = kRTCReportingUserInfoServiceName;
  v44[0] = @"backupd";
  v44[1] = @"mega-backup";
  v28 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v29 = +[NSDate date];
  [v29 timeIntervalSince1970];
  v31 = [NSNumber numberWithLongLong:v30];
  [v4 setObject:v31 forKeyedSubscript:@"RTCEventSubmitTime"];

  v32 = [v4 copy];
  v39 = 0;
  v33 = [RTCReporting sendOneMessageWithSessionInfo:v27 userInfo:v28 category:1 type:0 payload:v32 error:&v39];
  v34 = v39;

  if ((v33 & 1) == 0)
  {
    v35 = MBGetDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "RTCReporting send one message failed: %@", buf, 0xCu);
      _MBLog();
    }
  }
}

- (id)prebuddyFollowUpTimerForAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  if (MBIsInternalInstall())
  {
    persona = [accountCopy persona];
    v6 = [persona copyPreferencesValueForKey:@"PrebuddyFollowupTimerInterval" class:objc_opt_class()];

    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 86400.0;
    }
  }

  else
  {
    unsignedIntegerValue = 86400.0;
  }

  v8 = [MBXPCActivityTimer alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009DF5C;
  v13[3] = &unk_1003BD218;
  objc_copyWeak(&v15, &location);
  v9 = accountCopy;
  v14 = v9;
  v10 = [(MBXPCActivityTimer *)v8 initWithName:@"com.apple.PrebuddyFollowUpTimer" timeInterval:1 priority:8707 options:v13 block:unsignedIntegerValue];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Finished setting up prebuddy followup timer: %@", buf, 0xCu);
    _MBLog();
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

- (BOOL)deleteBackupUDID:(id)d disableIfCurrentDevice:(BOOL)device account:(id)account connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager deleteBackupUDID:disableIfCurrentDevice:account:connection:error:]", "MBCKManager.m", 1975, "serviceAccount");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager deleteBackupUDID:disableIfCurrentDevice:account:connection:error:]", "MBCKManager.m", 1976, "error");
  }

  deviceCopy = device;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v42 = os_transaction_create();
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting all backups for %{public}@", &buf, 0xCu);
    _MBLog();
  }

  v15 = dCopy;
  v16 = MBDeviceUDID_Legacy();
  v17 = [v15 isEqualToString:v16];

  v18 = v15;
  if (v17)
  {
    v18 = MBDeviceUUID();
  }

  v19 = MBDeviceUUID();
  v20 = [v18 isEqualToString:v19];

  v21 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKManager *)self databaseManager];
  v23 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v21 error:error];

  if (v23)
  {
    processName = [connectionCopy processName];
    v25 = [v21 operationGroupWithName:@"deleteBackup" processName:processName];
    [v23 setCkOperationGroup:v25];

    if (v20)
    {
      [(MBCKManager *)self _cancelBackupAndScanEnginesWithAccount:accountCopy timeout:0 completion:&stru_1003BD258];
    }

    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Fetching the account record", &buf, 2u);
      _MBLog();
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v70 = 0x3032000000;
    v71 = sub_100093324;
    v72 = sub_100093334;
    v73 = 0;
    v61 = 0;
    v27 = [MBCKAccount fetchAccountWithOperationTracker:v23 cache:0 error:&v61];
    objc_storeStrong(&v73, v61);
    if (v27)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v66) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Fetching the device records", &v66, 2u);
        _MBLog();
      }

      if ([v27 fetchDevicesWithOperationTracker:v23 error:error])
      {
        v40 = [v27 deviceForUUID:v18];
        if (v40)
        {
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v66) = 138543362;
            *(&v66 + 4) = v18;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Found the device record for %{public}@", &v66, 0xCu);
            _MBLog();
          }

          *&v66 = 0;
          *(&v66 + 1) = &v66;
          v67 = 0x2020000000;
          v68 = 0;
          v30 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = 0;

          if (v20)
          {
            v31 = dispatch_group_create();
            dispatch_group_enter(v31);
            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_10009E8D8;
            v50[3] = &unk_1003BD280;
            v50[4] = self;
            v51 = v40;
            v52 = v18;
            v60 = deviceCopy;
            v53 = v23;
            p_buf = &buf;
            v54 = accountCopy;
            v55 = connectionCopy;
            v56 = v27;
            v59 = &v66;
            v32 = v31;
            v57 = v32;
            [(MBCKManager *)self _cancelBackupAndScanEnginesWithAccount:v54 timeout:60 completion:v50];
            MBGroupWaitForever();
          }

          else
          {
            stateQueue = self->_stateQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10009ED60;
            block[3] = &unk_1003BDA00;
            v45 = v27;
            v46 = v23;
            v47 = v18;
            v48 = &buf;
            v49 = &v66;
            dispatch_sync(stateQueue, block);

            v32 = v45;
          }

          if (*(*(&v66 + 1) + 24) == 1)
          {
            v36 = MBGetDefaultLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *v62 = 138543362;
              v63 = v15;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Deleted all backups for %{public}@", v62, 0xCu);
              _MBLog();
            }
          }

          else
          {
            v36 = MBGetDefaultLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = *(*(&buf + 1) + 40);
              *v62 = 138543618;
              v63 = v15;
              v64 = 2112;
              v65 = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to delete all backups for %{public}@: %@", v62, 0x16u);
              v39 = *(*(&buf + 1) + 40);
              _MBLog();
            }
          }

          if (*(*(&v66 + 1) + 24))
          {
            v33 = 1;
          }

          else
          {
            *error = *(*(&buf + 1) + 40);
            v33 = *(*(&v66 + 1) + 24);
          }

          _Block_object_dispose(&v66, 8);
        }

        else
        {
          v34 = MBGetDefaultLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v66) = 138412290;
            *(&v66 + 4) = v18;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Couldn't find the device record for %@", &v66, 0xCu);
            _MBLog();
          }

          v33 = 1;
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
      *error = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

- (id)synchronizeFileListsWithDeviceUUID:(id)d commitID:(id)iD account:(id)account error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  accountCopy = account;
  if (!error)
  {
    __assert_rtn("[MBCKManager synchronizeFileListsWithDeviceUUID:commitID:account:error:]", "MBCKManager.m", 2085, "error");
  }

  v13 = accountCopy;
  v14 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKManager *)self databaseManager];
  v16 = [MBCKOperationTracker operationTrackerWithAccount:v13 databaseManager:databaseManager policy:v14 error:error];

  if (v16)
  {
    v17 = [v14 operationGroupWithName:@"synchronizeFileLists" processName:0];
    [v16 setCkOperationGroup:v17];
    v18 = [MBCKAccount fetchDeviceRecordAndSnapshots:dCopy account:v13 manager:self tracker:v16 error:error];
    if (v18)
    {
      persona = [v13 persona];
      snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];
      v21 = [v18 synchronizeFileListsWithOperationTracker:v16 snapshotDirectory:snapshotDatabaseDirectory commitID:iDCopy error:error fetchedFileListBlock:&stru_1003BD2A0];

      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Synchronized to %@", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)backgroundRestoreInfoWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager backgroundRestoreInfoWithAccount:]", "MBCKManager.m", 2149, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v6 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v5];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100093324;
  v26[4] = sub_100093334;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100093324;
  v24 = sub_100093334;
  v25 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F784;
  block[3] = &unk_1003BD2C8;
  v17 = v26;
  v8 = v6;
  v16 = v8;
  v18 = &v28;
  v19 = &v20;
  dispatch_sync(stateQueue, block);
  v9 = v21[5];
  if (v9)
  {
    v10 = atomic_load(&self->super._airTrafficDidFinishRestore);
    v11 = [MBBackgroundRestoreInfo backgroundRestoreInfoWithMonitor:v9 account:v5 finishedAirTrafficRestore:v10 & 1 appDataDidFinishRestore:*(v29 + 24)];
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Background restore progress monitor is not running", v14, 2u);
      _MBLog();
    }

    v11 = 0;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(&v28, 8);

  return v11;
}

- (void)setRestoreQualityOfService:(int64_t)service account:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager setRestoreQualityOfService:account:connection:]", "MBCKManager.m", 2177, "account");
  }

  if (!connectionCopy)
  {
    __assert_rtn("[MBCKManager setRestoreQualityOfService:account:connection:]", "MBCKManager.m", 2178, "connection");
  }

  v9 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  restoreQosByContext = [v9 restoreQosByContext];
  v11 = [NSNumber numberWithInteger:service];
  [restoreQosByContext setObject:v11 forKey:connectionCopy];
}

- (void)_saveForegroundRestoreCellularAccess:(id)access account:(id)account
{
  accountCopy = account;
  dictionaryRepresentation = [access dictionaryRepresentation];
  persona = [accountCopy persona];

  [persona setPreferencesValue:dictionaryRepresentation forKey:@"ForegroundRestoreCellularAccess"];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saved foreground restore cellular access: %{public}@", buf, 0xCu);
    _MBLog();
  }
}

- (BOOL)saveBackgroundRestoreCellularAccess:(id)access account:(id)account error:(id *)error
{
  accessCopy = access;
  accountCopy = account;
  v10 = [(MBCKManager *)self fetchBackgroundRestoreCellularAccessForAccount:accountCopy error:error];
  v11 = v10;
  if (accessCopy | v10 && ([v10 isEqual:accessCopy] & 1) == 0)
  {
    dictionaryRepresentation = [accessCopy dictionaryRepresentation];
    persona = [accountCopy persona];
    [persona setPreferencesValue:dictionaryRepresentation forKey:@"BackgroundRestoreCellularAccess"];

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      accountIdentifier = [accountCopy accountIdentifier];
      *buf = 138412546;
      v26 = accountIdentifier;
      v27 = 2114;
      v28 = dictionaryRepresentation;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Saved background restore cellular access for account %@ %{public}@", buf, 0x16u);

      accountIdentifier2 = [accountCopy accountIdentifier];
      _MBLog();
    }

    v16 = MBGetDefaultLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    v18 = kMBBackgroundRestoreCellularAccessChangedNotification;
    if (v17)
    {
      *buf = 138543362;
      v26 = kMBBackgroundRestoreCellularAccessChangedNotification;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Posting %{public}@", buf, 0xCu);
      _MBLog();
    }

    v19 = +[MBNotificationCenter sharedNotificationCenter];
    [v19 postNotification:v18];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10009FCB0;
    v22[3] = &unk_1003BD2F0;
    v23 = accountCopy;
    selfCopy = self;
    [(MBCKManager *)self fetchNetworkConnectivityWithBlock:v22];
  }

  return 1;
}

- (id)fetchBackgroundRestoreCellularAccessForAccount:(id)account error:(id *)error
{
  v4 = [(MBCKManager *)self cellularAccessForRestoreType:2 account:account];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Fetched background restore cellular access: %{public}@", buf, 0xCu);
    _MBLog();
  }

  return v4;
}

- (id)cellularAccessForRestoreType:(int)type account:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager cellularAccessForRestoreType:account:]", "MBCKManager.m", 2219, "account");
  }

  v6 = accountCopy;
  if (type == 1)
  {
    v7 = @"ForegroundRestoreCellularAccess";
  }

  else
  {
    if (type != 2)
    {
      __assert_rtn("[MBCKManager cellularAccessForRestoreType:account:]", "MBCKManager.m", 2230, "key");
    }

    v7 = @"BackgroundRestoreCellularAccess";
  }

  persona = [accountCopy persona];
  v9 = [persona copyPreferencesValueForKey:v7 class:objc_opt_class()];

  if (v9)
  {
    v10 = [[MBCellularAccess alloc] initWithDictionaryRepresentation:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_restoreFileWithPath:(id)path isBatch:(BOOL)batch context:(id)context account:(id)account error:(id *)error
{
  batchCopy = batch;
  pathCopy = path;
  contextCopy = context;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _restoreFileWithPath:isBatch:context:account:error:]", "MBCKManager.m", 2243, "account");
  }

  v14 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v15 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v14];
  [(MBCKManager *)self _waitForRestoreConditions:v14];
  if ([(MBCKManager *)self isPowerBudgetAvailableForRestore])
  {
    *v46 = 0;
    v47 = v46;
    v48 = 0x3032000000;
    v49 = sub_100093324;
    v50 = sub_100093334;
    v51 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_100093324;
    v44 = sub_100093334;
    v45 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_100093324;
    v38 = sub_100093334;
    v39 = 0;
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A04C0;
    block[3] = &unk_1003BD318;
    v31 = &v40;
    v29 = v15;
    v32 = &v34;
    v33 = v46;
    v17 = contextCopy;
    v30 = v17;
    dispatch_sync(stateQueue, block);
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v54 = pathCopy;
      v55 = 1024;
      v56 = batchCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=atc= Requesting restore of: %@ [%d]", buf, 0x12u);
      _MBLog();
    }

    backupUDID = [v41[5] backupUDID];
    v20 = [(MBCKManager *)self _ckSettingsContextForRestoreWithDeviceUUID:backupUDID account:v14 delegateContext:v17];

    [v20 setLockManager:v35[5]];
    [v20 setQos:*(v47 + 5)];
    [v20 setSnapshotID:{objc_msgSend(v41[5], "snapshotID")}];
    snapshotUUID = [v41[5] snapshotUUID];
    [v20 setSnapshotUUID:snapshotUUID];

    if (batchCopy)
    {
      v52 = pathCopy;
      v22 = [NSArray arrayWithObjects:&v52 count:1];
      v23 = [MBServiceRestoreMode backgroundFilesRestoreModeWithPaths:v22];
      [v20 setRestoreMode:v23];
    }

    else
    {
      v22 = [MBServiceRestoreMode backgroundFileRestoreModeWithPath:pathCopy];
      [v20 setRestoreMode:v22];
    }

    v25 = [(MBCKManager *)self _ckStartBackgroundRestoreWithSettingsContext:v20 delegateContext:v17 error:error];
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(v46, 8);
  }

  else
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Restore power budget exhausted. Refusing restore request.", v46, 2u);
      _MBLog();
    }

    [(MBCKManager *)self _warnUserOfPowerBudgetSuspendingRestoreForAccount:v14];
    if (error)
    {
      [MBError errorWithCode:23 format:@"Restore over budget"];
      *error = v25 = 0;
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (BOOL)restoreFilesWithPaths:(id)paths context:(id)context account:(id)account error:(id *)error
{
  pathsCopy = paths;
  contextCopy = context;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager restoreFilesWithPaths:context:account:error:]", "MBCKManager.m", 2282, "account");
  }

  v13 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v14 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v13];
  [(MBCKManager *)self _waitForRestoreConditions:v13];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100093324;
  v50 = sub_100093334;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100093324;
  v44 = sub_100093334;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100093324;
  v38 = sub_100093334;
  v39 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A0A34;
  block[3] = &unk_1003BD318;
  v31 = &v46;
  v16 = v14;
  v29 = v16;
  v32 = &v40;
  v33 = &v34;
  v17 = contextCopy;
  v30 = v17;
  dispatch_sync(stateQueue, block);
  if ([(MBCKManager *)self isPowerBudgetAvailableForRestore])
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [pathsCopy count];
        *buf = 134217984;
        v53 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=atc= Requesting restore of %ld files", buf, 0xCu);
      }

      [pathsCopy count];
      _MBLog();
    }

    backupUDID = [v47[5] backupUDID];
    v22 = [(MBCKManager *)self _ckSettingsContextForRestoreWithDeviceUUID:backupUDID account:v13 delegateContext:v17];

    [v22 setLockManager:v41[5]];
    [v22 setQos:v35[5]];
    [v22 setSnapshotID:{objc_msgSend(v47[5], "snapshotID")}];
    snapshotUUID = [v47[5] snapshotUUID];
    [v22 setSnapshotUUID:snapshotUUID];

    v24 = [MBServiceRestoreMode backgroundFilesRestoreModeWithPaths:pathsCopy];
    [v22 setRestoreMode:v24];

    v25 = [(MBCKManager *)self _ckStartBackgroundRestoreWithSettingsContext:v22 delegateContext:v17 error:error];
  }

  else
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Restore power budget exhausted. Refusing restore request.", buf, 2u);
      _MBLog();
    }

    [(MBCKManager *)self _warnUserOfPowerBudgetSuspendingRestoreForAccount:v13];
    if (error)
    {
      [MBError errorWithCode:23 format:@"Restore over budget"];
      *error = v25 = 0;
    }

    else
    {
      v25 = 0;
    }
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  return v25;
}

- (BOOL)restoreBookWithPath:(id)path context:(id)context account:(id)account error:(id *)error
{
  pathCopy = path;
  contextCopy = context;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager restoreBookWithPath:context:account:error:]", "MBCKManager.m", 2318, "account");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager restoreBookWithPath:context:account:error:]", "MBCKManager.m", 2319, "error");
  }

  v11 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v11];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = sub_100093324;
  v50[4] = sub_100093334;
  v51 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1078;
  block[3] = &unk_1003BCFF0;
  v49 = v50;
  v37 = v12;
  v48 = v37;
  dispatch_sync(stateQueue, block);
  v14 = [MBDomainManager alloc];
  persona = [v11 persona];
  v41 = [(MBDomainManager *)v14 initWithPersona:persona];

  systemDomainsByName = [(MBDomainManager *)v41 systemDomainsByName];
  v40 = [systemDomainsByName objectForKeyedSubscript:@"BooksDomain"];

  rootPath = [v40 rootPath];
  v18 = [rootPath length];

  v36 = [pathCopy substringFromIndex:v18 + 1];
  v19 = [MBCKManager restoreFilesForDomain:"restoreFilesForDomain:relativePath:pendingOnly:range:account:error:" relativePath:@"BooksDomain" pendingOnly:error range:? account:? error:?];
  v38 = v19;
  if (v19)
  {
    v20 = [v19 count];
    if (v20)
    {
      v35 = v20;
      serviceDelegate = [NSMutableArray arrayWithCapacity:?];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v22 = v38;
      v23 = 0;
      v24 = [v22 countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (v24)
      {
        v25 = *v44;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v44 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v43 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              path = [v27 path];
              [serviceDelegate addObject:path];
            }

            else
            {
              ++v23;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v43 objects:v58 count:16];
        }

        while (v24);
      }

      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v53 = &v35[-v23];
        v54 = 2048;
        v55 = v35;
        v56 = 2112;
        v57 = pathCopy;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Restoring %llu/%llu books files with absolutePath: %@", buf, 0x20u);
        _MBLog();
      }

      v30 = [(MBCKManager *)self restoreFilesWithPaths:serviceDelegate context:contextCopy account:v11 error:error];
    }

    else
    {
      serviceDelegate = [(MBCKManager *)self serviceDelegate];
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = pathCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Restore for book at %@ has no pending restore files", buf, 0xCu);
        _MBLog();
      }

      v32 = [MBError errorWithCode:4 path:pathCopy format:@"No pending restore files found"];
      v33 = v32;
      *error = v32;
      [serviceDelegate manager:self didFailRestoreWithContext:contextCopy error:v32];
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  _Block_object_dispose(v50, 8);
  return v30;
}

- (BOOL)restoreApplicationWithBundleID:(id)d failed:(BOOL)failed qos:(id)qos context:(id)context account:(id)account error:(id *)error
{
  dCopy = d;
  qosCopy = qos;
  contextCopy = context;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager restoreApplicationWithBundleID:failed:qos:context:account:error:]", "MBCKManager.m", 2365, "account");
  }

  v15 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  persona = [v15 persona];
  isDataSeparatedPersona = [persona isDataSeparatedPersona];

  v18 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v15];
  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = dCopy;
    *&buf[12] = 1024;
    *&buf[14] = isDataSeparatedPersona;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Starting background restore for %@ (%d)", buf, 0x12u);
    v35 = dCopy;
    v36 = isDataSeparatedPersona;
    _MBLog();
  }

  [(MBCKManager *)self _waitForRestoreConditions:v15];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v56 = sub_100093324;
  v57 = sub_100093334;
  v58 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100093324;
  v49 = sub_100093334;
  v50 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1758;
  block[3] = &unk_1003BD340;
  v43 = buf;
  v37 = v18;
  v42 = v37;
  v44 = &v45;
  dispatch_sync(stateQueue, block);
  if (!qosCopy || [qosCopy integerValue] == 25 || objc_msgSend(qosCopy, "integerValue") == 33 || -[MBCKManager isPowerBudgetAvailableForRestore](self, "isPowerBudgetAvailableForRestore"))
  {
    v21 = [_TtC7backupd20AppRestoreDispatcher shared:v35];
    v22 = [v21 appRestorerForAccount:v15 stateQueue:self->_stateQueue delegate:self error:0];

    if (v22)
    {
      v40 = 0;
      v23 = [v22 setUpDataPromiseForBundleID:dCopy error:&v40];
      v24 = v40;
      if (v23)
      {
        backupUDID = [*(*&buf[8] + 40) backupUDID];
        v26 = [(MBCKManager *)self _ckSettingsContextForRestoreWithDeviceUUID:backupUDID account:v15 delegateContext:contextCopy];

        [v26 setLockManager:v46[5]];
        [v26 setQos:qosCopy];
        [v26 setSnapshotID:{objc_msgSend(*(*&buf[8] + 40), "snapshotID")}];
        snapshotUUID = [*(*&buf[8] + 40) snapshotUUID];
        [v26 setSnapshotUUID:snapshotUUID];

        if (isDataSeparatedPersona)
        {
          [MBServiceRestoreMode backgroundDataSeparatedAppRestoreModeWithBundleID:dCopy];
        }

        else
        {
          [MBServiceRestoreMode backgroundAppRestoreModeWithBundleID:dCopy];
        }
        v32 = ;
        [v26 setRestoreMode:v32];

        [v26 setInstallCoordinator:v23];
        v29 = [(MBCKManager *)self _ckStartBackgroundRestoreWithSettingsContext:v26 delegateContext:contextCopy error:error];
      }

      else
      {
        v30 = MBGetDefaultLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *v51 = 138412546;
          v52 = dCopy;
          v53 = 2112;
          v54 = v24;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to setup data promise for %@: %@", v51, 0x16u);
          _MBLog();
        }

        if (error)
        {
          v31 = v24;
          v29 = 0;
          *error = v24;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v51 = 138412546;
        v52 = v15;
        v53 = 2112;
        v54 = dCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to find the app restore manager for %@ while trying to restore %@", v51, 0x16u);
        _MBLog();
      }

      if (error)
      {
        [MBError errorWithCode:1 format:@"nil app restore manager"];
        *error = v29 = 0;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Restore power budget exhausted. Refusing restore request.", v51, 2u);
      _MBLog();
    }

    [(MBCKManager *)self _warnUserOfPowerBudgetSuspendingRestoreForAccount:v15];
    if (error)
    {
      [MBError errorWithCode:23 format:@"Restore over budget"];
      *error = v29 = 0;
    }

    else
    {
      v29 = 0;
    }
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(buf, 8);

  return v29;
}

- (id)_restoreEngineWithRestoreType:(int)type settingsContext:(id)context debugContext:(id)debugContext excludedAppBundleIDs:(id)ds
{
  contextCopy = context;
  debugContextCopy = debugContext;
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!contextCopy)
  {
    __assert_rtn("[MBCKManager _restoreEngineWithRestoreType:settingsContext:debugContext:excludedAppBundleIDs:]", "MBCKManager.m", 2426, "settingsContext");
  }

  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKManager _restoreEngineWithRestoreType:settingsContext:debugContext:excludedAppBundleIDs:]", "MBCKManager.m", 2428, "serviceAccount");
  }

  v14 = account;
  v15 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:account];
  v16 = [[MBCKRestoreEngine alloc] initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:0 serviceManager:self excludedAppBundleIDs:dsCopy];
  [(MBCKEngine *)v16 cache];
  if (objc_claimAutoreleasedReturnValue())
  {
    __assert_rtn("[MBCKManager _restoreEngineWithRestoreType:settingsContext:debugContext:excludedAppBundleIDs:]", "MBCKManager.m", 2434, "!engine.cache");
  }

  if (type == 1)
  {
    v17 = 25;
  }

  else
  {
    v17 = 17;
  }

  [(MBCKEngine *)v16 setQualityOfService:v17];
  restoreKeyBagsByID = [v15 restoreKeyBagsByID];
  [(MBCKRestoreEngine *)v16 setStoredKeybagsByUUIDString:restoreKeyBagsByID];

  v19 = MBAllCKPlugins();
  context = [(MBCKEngine *)v16 context];
  [context setPlugins:v19];

  encryptionManager = [v15 encryptionManager];
  [(MBCKRestoreEngine *)v16 setEncryptionManager:encryptionManager];

  return v16;
}

- (BOOL)_ckStartBackgroundRestoreWithSettingsContext:(id)context delegateContext:(id)delegateContext error:(id *)error
{
  contextCopy = context;
  delegateContextCopy = delegateContext;
  if (!contextCopy)
  {
    __assert_rtn("[MBCKManager _ckStartBackgroundRestoreWithSettingsContext:delegateContext:error:]", "MBCKManager.m", 2444, "settingsContext");
  }

  v10 = delegateContextCopy;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKManager _ckStartBackgroundRestoreWithSettingsContext:delegateContext:error:]", "MBCKManager.m", 2446, "account");
  }

  v12 = account;
  v13 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:account];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100093324;
  v50 = sub_100093334;
  v51 = 0;
  _isRestoreOnCellularSupported = [(MBCKManager *)self _isRestoreOnCellularSupported];
  v15 = objc_opt_new();
  if (_isRestoreOnCellularSupported)
  {
    v16 = v47;
    v45 = v47[5];
    v17 = [(MBCKManager *)self fetchBackgroundRestoreCellularAccessForAccount:v12 error:&v45];
    objc_storeStrong(v16 + 5, v45);
    [v15 setCellularAccess:v17];
  }

  v18 = [MBEngine stringForRestoreType:2];
  capitalizedString = [v18 capitalizedString];

  v20 = [[NSString alloc] initWithFormat:@"%@ Restore", capitalizedString];
  errorCopy = error;
  v21 = [v15 operationGroupWithName:v20];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1D48;
  block[3] = &unk_1003BD368;
  v23 = v13;
  v33 = v23;
  v24 = contextCopy;
  v34 = v24;
  v39 = &v46;
  v25 = v10;
  v35 = v25;
  selfCopy = self;
  v26 = v21;
  v37 = v26;
  v27 = v15;
  v38 = v27;
  v40 = &v41;
  dispatch_sync(stateQueue, block);
  if (v42[3])
  {
    v28 = 1;
  }

  else
  {
    v29 = v47[5];
    if (!v29)
    {
      __assert_rtn("[MBCKManager _ckStartBackgroundRestoreWithSettingsContext:delegateContext:error:]", "MBCKManager.m", 2498, "success || error");
    }

    if (errorCopy)
    {
      *errorCopy = v29;
      v28 = *(v42 + 24);
    }

    else
    {
      v28 = 0;
    }
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v46, 8);

  return v28 & 1;
}

- (BOOL)startRestoreForSnapshot:(id)snapshot options:(id)options account:(id)account connection:(id)connection error:(id *)error
{
  snapshotCopy = snapshot;
  optionsCopy = options;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager startRestoreForSnapshot:options:account:connection:error:]", "MBCKManager.m", 2504, "account");
  }

  if (!snapshotCopy)
  {
    __assert_rtn("[MBCKManager startRestoreForSnapshot:options:account:connection:error:]", "MBCKManager.m", 2505, "snapshotIdentifier");
  }

  v47 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  if ([(MBCKManager *)self _isRestoreOnCellularSupported])
  {
    cellularAccess = [optionsCopy cellularAccess];
  }

  else
  {
    cellularAccess = 0;
  }

  v14 = objc_opt_new();
  [v14 setQualityOfService:25];
  v48 = cellularAccess;
  [v14 setCellularAccess:cellularAccess];
  databaseManager = [(MBCKManager *)self databaseManager];
  v16 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v14 error:error];

  if (v16)
  {
    persona = [accountCopy persona];
    isDataSeparatedPersona = [persona isDataSeparatedPersona];
    if (isDataSeparatedPersona)
    {
      +[MBServiceRestoreMode foregroundDataSeparatedRestoreMode];
    }

    else
    {
      +[MBServiceRestoreMode foregroundRestoreMode];
    }
    v44 = ;
    v18 = [MBEngine stringForRestoreType:1];
    capitalizedString = [v18 capitalizedString];

    v42 = [[NSString alloc] initWithFormat:@"%@ Restore", capitalizedString];
    v46 = [v14 operationGroupWithName:?];
    [v16 setCkOperationGroup:v46];
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = snapshotCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received snapshot identifier:%@", buf, 0xCu);
      v39 = snapshotCopy;
      _MBLog();
    }

    backupUDID = [snapshotCopy backupUDID];

    if (backupUDID)
    {
      snapshotID = [snapshotCopy snapshotID];
      backupUDID2 = [snapshotCopy backupUDID];
      v23 = [(MBCKManager *)self snapshotForSnapshotID:snapshotID backupUDID:backupUDID2 operationTracker:v16 error:error];

      if (!v23)
      {
        v17 = 0;
LABEL_34:

        goto LABEL_35;
      }

      backupUDID3 = [snapshotCopy backupUDID];
      backupUDID4 = [snapshotCopy backupUDID];
      v26 = MBDeviceUDID_Legacy();
      v27 = [backupUDID4 isEqualToString:v26];

      if (v27)
      {
        v28 = MBDeviceUUID();

        backupUDID3 = v28;
      }

      snapshotUUID = [v23 snapshotUUID];
      snapshotID2 = [snapshotCopy snapshotID];
    }

    else
    {
      backupUDID3 = [snapshotCopy backupUUID];
      snapshotUUID = [snapshotCopy snapshotUUID];
      snapshotID2 = 0;
    }

    v30 = MBGetDefaultLog();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (isDataSeparatedPersona)
    {
      if (v31)
      {
        accountIdentifier = [accountCopy accountIdentifier];
        personaIdentifier = [persona personaIdentifier];
        *buf = 138413570;
        *&buf[4] = backupUDID3;
        *&buf[12] = 2112;
        *&buf[14] = snapshotUUID;
        *&buf[22] = 2048;
        v74 = snapshotID2;
        *v75 = 2114;
        *&v75[2] = optionsCopy;
        *&v75[10] = 2114;
        *&v75[12] = accountIdentifier;
        v76 = 2114;
        v77 = personaIdentifier;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Starting EDS restore for backupUUID:%@, snapshotUUID:%@, snapshotID:%lu, options:%{public}@, account:%{public}@(%{public}@)", buf, 0x3Eu);

        accountIdentifier2 = [accountCopy accountIdentifier];
        personaIdentifier2 = [persona personaIdentifier];
        _MBLog();
      }
    }

    else if (v31)
    {
      *buf = 138413058;
      *&buf[4] = backupUDID3;
      *&buf[12] = 2112;
      *&buf[14] = snapshotUUID;
      *&buf[22] = 2048;
      v74 = snapshotID2;
      *v75 = 2114;
      *&v75[2] = optionsCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Starting restore for backupUUID:%@, snapshotUUID:%@, snapshotID:%lu, options:%{public}@", buf, 0x2Au);
      _MBLog();
    }

    if (!backupUDID3)
    {
      __assert_rtn("[MBCKManager startRestoreForSnapshot:options:account:connection:error:]", "MBCKManager.m", 2552, "backupUUID");
    }

    if (!snapshotUUID)
    {
      __assert_rtn("[MBCKManager startRestoreForSnapshot:options:account:connection:error:]", "MBCKManager.m", 2553, "snapshotUUID");
    }

    [(MBCKManager *)self _saveForegroundRestoreCellularAccess:v48 account:accountCopy];
    [persona setPreferencesValue:backupUDID3 forKey:@"MegaBackupSourceDeviceUUID"];
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v74 = sub_100093324;
    *v75 = sub_100093334;
    *&v75[8] = 0;
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A2A60;
    block[3] = &unk_1003BD390;
    v54 = v47;
    v66 = buf;
    v55 = accountCopy;
    v36 = backupUDID3;
    v56 = v36;
    selfCopy = self;
    v58 = v46;
    v37 = snapshotUUID;
    v59 = v37;
    v68 = snapshotID2;
    v60 = v44;
    v61 = persona;
    v62 = optionsCopy;
    v63 = v14;
    v64 = v16;
    v65 = connectionCopy;
    v67 = &v69;
    dispatch_sync(stateQueue, block);
    if (v70[3])
    {
      v17 = 1;
    }

    else
    {
      if (!*(*&buf[8] + 40))
      {
        __assert_rtn("[MBCKManager startRestoreForSnapshot:options:account:connection:error:]", "MBCKManager.m", 2624, "success || error");
      }

      if (error)
      {
        *error = [(MBCKManager *)self _sanitizeError:?];
        v17 = *(v70 + 24);
      }

      else
      {
        v17 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v69, 8);

    goto LABEL_34;
  }

  v17 = 0;
LABEL_35:

  return v17 & 1;
}

- (BOOL)setupRestorePlanForAccount:(id)account snapshotUUID:(id)d error:(id *)error
{
  accountCopy = account;
  dCopy = d;
  if (!error)
  {
    __assert_rtn("[MBCKManager setupRestorePlanForAccount:snapshotUUID:error:]", "MBCKManager.m", 2630, "error");
  }

  v10 = dCopy;
  v11 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  persona = [accountCopy persona];
  v13 = [v11 createRestorePlanWithPersona:persona snapshotUUID:v10 error:error];

  v14 = MBGetDefaultLog();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      restorePlan = [v11 restorePlan];
      *buf = 138412290;
      v22 = restorePlan;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Set up new restore plan: %@", buf, 0xCu);

      restorePlan2 = [v11 restorePlan];
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = *error;
    *buf = 138412290;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to set up new restore plan: %@", buf, 0xCu);
    v20 = *error;
    _MBLog();
  }

  return v13;
}

- (id)fetchDeviceForRestoreWithUUID:(id)d tracker:(id)tracker isForegroundRestore:(BOOL)restore cache:(id)cache error:(id *)error
{
  dCopy = d;
  trackerCopy = tracker;
  cacheCopy = cache;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKManager fetchDeviceForRestoreWithUUID:tracker:isForegroundRestore:cache:error:]", "MBCKManager.m", 2645, "tracker");
  }

  if (!cacheCopy)
  {
    __assert_rtn("[MBCKManager fetchDeviceForRestoreWithUUID:tracker:isForegroundRestore:cache:error:]", "MBCKManager.m", 2646, "cache");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager fetchDeviceForRestoreWithUUID:tracker:isForegroundRestore:cache:error:]", "MBCKManager.m", 2647, "error");
  }

  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKManager fetchDeviceForRestoreWithUUID:tracker:isForegroundRestore:cache:error:]", "MBCKManager.m", 2650, "serviceAccount");
  }

  v16 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:account];
  if (qword_100421688 != -1)
  {
    dispatch_once(&qword_100421688, &stru_1003BD3B0);
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100093324;
  v50 = sub_100093334;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100093324;
  v44 = sub_100093334;
  v45 = 0;
  v17 = qword_100421680;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A36D4;
  block[3] = &unk_1003BD3D8;
  block[4] = self;
  v37 = &v46;
  v18 = v16;
  v33 = v18;
  restoreCopy = restore;
  v19 = dCopy;
  v34 = v19;
  v20 = trackerCopy;
  v35 = v20;
  v21 = cacheCopy;
  v36 = v21;
  v38 = &v40;
  dispatch_sync(v17, block);
  v22 = v47[5];
  if (v22)
  {
    deviceUUID = [v22 deviceUUID];
    if (([deviceUUID isEqualToString:v19] & 1) == 0)
    {
      v29 = "!device || [device.deviceUUID isEqualToString:deviceUUID]";
      v30 = 2716;
      goto LABEL_23;
    }

    v24 = v47[5];
    if (v24)
    {
      goto LABEL_14;
    }
  }

  if (!v41[5])
  {
    v29 = "device || fetchError";
    v30 = 2717;
LABEL_23:
    __assert_rtn("[MBCKManager fetchDeviceForRestoreWithUUID:tracker:isForegroundRestore:cache:error:]", "MBCKManager.m", v30, v29);
  }

  v25 = MBGetDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = v41[5];
    *buf = 138412290;
    v53 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to fetch device for restore %@", buf, 0xCu);
    v31 = v41[5];
    _MBLog();
  }

  *error = v41[5];
  v24 = v47[5];
LABEL_14:
  v27 = v24;

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v27;
}

- (void)_startRestoreWithEngine:(id)engine delegateContext:(id)context
{
  engineCopy = engine;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!engineCopy)
  {
    __assert_rtn("[MBCKManager _startRestoreWithEngine:delegateContext:]", "MBCKManager.m", 2728, "engine");
  }

  context = [engineCopy context];
  v8 = context;
  if (!context)
  {
    __assert_rtn("[MBCKManager _startRestoreWithEngine:delegateContext:]", "MBCKManager.m", 2730, "settingsContext");
  }

  account = [context account];
  if (!account)
  {
    __assert_rtn("[MBCKManager _startRestoreWithEngine:delegateContext:]", "MBCKManager.m", 2732, "serviceAccount");
  }

  v10 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:account];
  debugContext = [(MBCKManager *)self debugContext];
  v12 = [debugContext BOOLForName:@"ShouldSkipRestore"];

  if (v12)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not running restore as requested by delegate context", buf, 2u);
      _MBLog();
    }

    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A4500;
    block[3] = &unk_1003BC0B0;
    v59 = v10;
    dispatch_async(stateQueue, block);
    v15 = v59;
  }

  else
  {
    restoreType = [engineCopy restoreType];
    [engineCopy qualityOfService];
    v44 = MBLogStringForNSQualityOfService();
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (restoreType == 1)
      {
        v18 = "fg";
      }

      else
      {
        v18 = "bg";
      }

      *buf = 136446466;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Starting %{public}s restore, qos:%{public}@", buf, 0x16u);
      v39 = v18;
      v40 = v44;
      _MBLog();
    }

    isPrimaryAccount = [account isPrimaryAccount];
    persona = [account persona];
    isDataSeparatedPersona = [persona isDataSeparatedPersona];

    restoreMode = [v8 restoreMode];
    isForeground = [restoreMode isForeground];

    if ((([engineCopy backupPolicy] == 1) & isForeground) == 1)
    {
      persona2 = [account persona];
      v23 = [persona2 copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];

      persona3 = [account persona];
      v25 = [persona3 copyPreferencesValueForKey:@"RestoreAfterMegaBackupDateDelta" class:objc_opt_class()];

      if (v23 && !v25)
      {
        persona4 = [account persona];
        v26 = +[NSDate now];
        [v26 timeIntervalSinceDate:v23];
        v28 = [NSNumber numberWithInt:v27];
        [persona4 setPreferencesValue:v28 forKey:@"RestoreAfterMegaBackupDateDelta"];
      }

      [(MBCKManager *)self submitMegaLifeCycleTelemetriesWithAccount:account, v39, v40];
    }

    v29 = [(MBCKManager *)self _startNetworkPathMonitor:v39];
    estimator = [engineCopy estimator];
    v31 = estimator;
    if (isForeground)
    {
      [estimator setEstimationHysteresis:600.0];
      LODWORD(v32) = 1036831949;
      [v31 setProgressHysteresis:v32];
    }

    restore = [v10 restore];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v61 = 0;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000A4558;
    v46[3] = &unk_1003BD450;
    v46[4] = self;
    v55 = isForeground;
    v34 = restore;
    v47 = v34;
    v35 = contextCopy;
    v48 = v35;
    v49 = v8;
    v54 = buf;
    v36 = v31;
    v50 = v36;
    v56 = isDataSeparatedPersona;
    v51 = v10;
    v52 = account;
    v37 = engineCopy;
    v53 = v37;
    v57 = isPrimaryAccount;
    v38 = objc_retainBlock(v46);
    [v37 setStateChange:v38];
    [(MBCKManager *)self _startEngine:v37 delegateContext:v35];

    _Block_object_dispose(buf, 8);
    v15 = v44;
  }
}

- (void)boostBackgroundRestoreWithAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager boostBackgroundRestoreWithAccount:completionHandler:]", "MBCKManager.m", 2961, "account");
  }

  v8 = handlerCopy;
  v9 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  stateQueue = self->_stateQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A5990;
  v13[3] = &unk_1003BD478;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_sync(stateQueue, v13);
}

- (void)boostManualBackupWithAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager boostManualBackupWithAccount:completionHandler:]", "MBCKManager.m", 2976, "account");
  }

  v8 = handlerCopy;
  v9 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  stateQueue = self->_stateQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A5B64;
  v13[3] = &unk_1003BD478;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_sync(stateQueue, v13);
}

- (id)fetchRestorableSnapshotsForAccount:(id)account connection:(id)connection error:(id *)error
{
  accountCopy = account;
  connectionCopy = connection;
  v10 = +[MBCKOperationPolicy expensiveCellularPolicy];
  [v10 setQualityOfService:25];
  databaseManager = [(MBCKManager *)self databaseManager];
  v12 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v10 error:error];

  v40 = v12;
  if (v12)
  {
    processName = [connectionCopy processName];
    v14 = [v10 operationGroupWithName:@"fetchRestorableSnapshots" processName:processName];
    [v12 setCkOperationGroup:v14];

    v15 = MBDeviceClass();
    v39 = MBDeviceUUID();
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = v39;
      v60 = 2112;
      v61 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Current uuid:%@ class:%@", buf, 0x16u);
      v34 = v39;
      v35 = v15;
      _MBLog();
    }

    v17 = [(MBCKManager *)self _getBackupListWithOperationTracker:v12 shouldFilter:1 error:error];
    if (v17)
    {
      v37 = connectionCopy;
      v38 = accountCopy;
      v12 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v36 = v17;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v53;
        v41 = *v53;
        v42 = v15;
        do
        {
          v21 = 0;
          v43 = v19;
          do
          {
            if (*v53 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v45 = v21;
            v22 = *(*(&v52 + 1) + 8 * v21);
            deviceClass = [v22 deviceClass];
            v24 = [deviceClass isEqualToString:v15];

            if (v24)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              snapshots = [v22 snapshots];
              v26 = [snapshots countByEnumeratingWithState:&v48 objects:v56 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v49;
                do
                {
                  for (i = 0; i != v27; i = i + 1)
                  {
                    if (*v49 != v28)
                    {
                      objc_enumerationMutation(snapshots);
                    }

                    v30 = *(*(&v48 + 1) + 8 * i);
                    if ([v30 isCompatible])
                    {
                      [v12 addObject:v30];
                    }

                    else
                    {
                      v31 = MBGetDefaultLog();
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v59 = v30;
                        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Excluding %@", buf, 0xCu);
                        v34 = v30;
                        _MBLog();
                      }
                    }
                  }

                  v27 = [snapshots countByEnumeratingWithState:&v48 objects:v56 count:16];
                }

                while (v27);
                v20 = v41;
                v15 = v42;
                v19 = v43;
              }
            }

            else
            {
              snapshots = MBGetDefaultLog();
              if (os_log_type_enabled(snapshots, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v59 = v22;
                _os_log_impl(&_mh_execute_header, snapshots, OS_LOG_TYPE_DEFAULT, "Excluding %@", buf, 0xCu);
                v34 = v22;
                _MBLog();
              }
            }

            v21 = v45 + 1;
          }

          while ((v45 + 1) != v19);
          v19 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v19);
      }

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000A610C;
      v46[3] = &unk_1003BD4A0;
      v32 = v39;
      v47 = v39;
      [v12 sortUsingComparator:v46];

      connectionCopy = v37;
      accountCopy = v38;
      v17 = v36;
    }

    else
    {
      v12 = 0;
      v32 = v39;
    }
  }

  return v12;
}

- (void)_finishRestoreWithAccount:(id)account cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _finishRestoreWithAccount:cancelled:]", "MBCKManager.m", 3034, "account");
  }

  v7 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  persona = [v7 persona];
  v9 = persona;
  if (!persona)
  {
    __assert_rtn("[MBCKManager _finishRestoreWithAccount:cancelled:]", "MBCKManager.m", 3038, "persona");
  }

  isDataSeparatedPersona = [persona isDataSeparatedPersona];
  v11 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v7];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100093324;
  v35[4] = sub_100093334;
  v36 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A65B0;
  block[3] = &unk_1003BCFF0;
  v34 = v35;
  v13 = v11;
  v33 = v13;
  dispatch_sync(stateQueue, block);
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = isDataSeparatedPersona;
      accountIdentifier = [v7 accountIdentifier];
      personaIdentifier = [v9 personaIdentifier];
      *buf = 138543874;
      v38 = accountIdentifier;
      v39 = 2114;
      v40 = personaIdentifier;
      v41 = 1024;
      v42 = cancelledCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Finishing restore for account %{public}@(%{public}@) (%d)", buf, 0x1Cu);

      isDataSeparatedPersona = v24;
    }

    accountIdentifier2 = [v7 accountIdentifier];
    personaIdentifier2 = [v9 personaIdentifier];
    _MBLog();
  }

  v19 = self->_stateQueue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000A65FC;
  v25[3] = &unk_1003BD4C8;
  v30 = cancelledCopy;
  v26 = v13;
  selfCopy = self;
  v28 = v7;
  v29 = v9;
  v31 = isDataSeparatedPersona;
  v20 = v9;
  v21 = v7;
  v22 = v13;
  dispatch_sync(v19, v25);

  _Block_object_dispose(v35, 8);
}

- (void)_airTrafficFinishedRestoring
{
  if ((atomic_exchange(&self->super._airTrafficDidFinishRestore, 1u) & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AirTraffic finished restoring", v6, 2u);
      _MBLog();
    }

    account = [(MBServiceManager *)self account];
    persona = [account persona];
    [persona setPreferencesValue:&__kCFBooleanTrue forKey:@"AirTrafficFinishedRestoring"];
  }
}

- (void)finishAirTrafficRestoreWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager finishAirTrafficRestoreWithAccount:]", "MBCKManager.m", 3173, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v6 = os_transaction_create();
  [(MBCKManager *)self _airTrafficFinishedRestoring];
  if (BYSetupAssistantNeedsToRun())
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Can't finish restore until mini-buddy is done", buf, 2u);
      _MBLog();
    }

    v8 = dispatch_time(0, 10000000000);
    v9 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A73EC;
    block[3] = &unk_1003BC2E0;
    block[4] = self;
    v11 = v5;
    v12 = v6;
    dispatch_after(v8, v9, block);
  }

  else
  {
    [(MBCKManager *)self _finishRestoreWithAccount:v5 cancelled:0];
  }
}

- (void)_finishedRestoreWithAccount:(id)account reason:(SEL)reason
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _finishedRestoreWithAccount:reason:]", "MBCKManager.m", 3196, "account");
  }

  v8 = accountCopy;
  v97 = a2;
  dispatch_assert_queue_V2(self->_stateQueue);
  isPrimaryAccount = [v8 isPrimaryAccount];
  v10 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v8];
  persona = [v8 persona];
  if (!persona)
  {
    __assert_rtn("[MBCKManager _finishedRestoreWithAccount:reason:]", "MBCKManager.m", 3202, "persona");
  }

  v12 = persona;
  serviceState = [v10 serviceState];
  v14 = MBGetDefaultLog();
  v102 = v12;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [v8 accountIdentifier];
    personaIdentifier = [v12 personaIdentifier];
    *buf = 138544130;
    *&buf[4] = accountIdentifier;
    v120 = 2114;
    v121 = personaIdentifier;
    v122 = 1024;
    v123 = serviceState;
    v124 = 2080;
    Name = sel_getName(reason);
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Finished restore for account %{public}@/%{public}@ (%d): %s", buf, 0x26u);

    accountIdentifier2 = [v8 accountIdentifier];
    personaIdentifier2 = [v102 personaIdentifier];
    v87 = serviceState;
    v88 = sel_getName(reason);
    v78 = accountIdentifier2;
    v86 = personaIdentifier2;
    _MBLog();

    v12 = v102;
  }

  if (serviceState)
  {
    [v10 setServiceState:0];
    restore = [v10 restore];
    restoreSession = [v10 restoreSession];
    [restore setState:4];
    LODWORD(v21) = 1.0;
    [restore setProgress:v21];
    [restore setIsBackground:1];
    [objc_opt_class() saveRestoreStateInfo:restore account:v8];
    if (isPrimaryAccount)
    {
      v22 = +[MBNotificationCenter sharedNotificationCenter];
      [v22 postNotification:kMBManagerRestoreStateChangedNotification ifStateChanged:{-[NSObject state](restore, "state")}];
    }

    [(MBCKManager *)self _alertUserOfFinishedRestoreForAccount:v8, v78, v86, v87, v88];
    v23 = MBBackgroundRestoreSignpostHandle();
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BackgroundRestore", "", buf, 2u);
    }

    startDate = [restoreSession startDate];
    if (!startDate)
    {
      v27 = NAN;
      goto LABEL_23;
    }

    v25 = +[NSDate date];
    [v25 timeIntervalSinceDate:startDate];
    v27 = v26;

    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    wasCancelled = [restoreSession wasCancelled];
    v29 = MBGetDefaultLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (wasCancelled)
    {
      if (v30)
      {
        *buf = 134217984;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Restore cancelled after %g seconds", buf, 0xCu);
LABEL_21:
        v79 = v27;
        _MBLog();
      }
    }

    else if (v30)
    {
      *buf = 134217984;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Successful restore took %g seconds", buf, 0xCu);
      goto LABEL_21;
    }

LABEL_23:
    v95 = startDate;
    v118 = 0;
    v90 = [MBRestoreCloudFormatPolicy snapshotFormatForCurrentRestore:v12, *&v79];
    if (MBSnapshotFormatContainsFileLists())
    {
      v117 = 0;
      v32 = [MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v118 persona:v12 error:&v117];
      v33 = v117;
      if ((v32 & 1) == 0)
      {
        v34 = MBGetDefaultLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          *&buf[4] = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Could not determine if restoring using file lists: %@", buf, 0xCu);
          v80 = v33;
          _MBLog();
        }
      }
    }

    v101 = v8;
    v35 = objc_opt_new();
    restorePlan = [v10 restorePlan];
    v100 = v10;
    v92 = restorePlan;
    if ([restorePlan isPopulated])
    {
      +[NSMutableSet set];
      v116 = 0;
      v113[0] = _NSConcreteStackBlock;
      v113[1] = 3221225472;
      v113[2] = sub_1000A8160;
      v37 = v113[3] = &unk_1003BD4F0;
      v114 = v37;
      v115 = v35;
      v38 = [restorePlan enumerateRestoreFailuresOfType:2 isFatal:1 error:&v116 enumerator:v113];
      v39 = v116;
      if ((v38 & 1) == 0)
      {
        v40 = MBGetDefaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to fetch fatal restore errors from restore plan %@", buf, 0xCu);
          v80 = v39;
          _MBLog();
        }
      }

      if ([v37 count])
      {
        allObjects = [v37 allObjects];
      }

      else
      {
        allObjects = 0;
      }

      v112 = v39;
      v43 = [restorePlan topDomainsByAssetBytes:5 error:{&v112, v80}];
      v46 = v112;

      v111 = v46;
      v48 = restorePlan;
      v47 = &v111;
      v98 = [v48 topDomainsByItemCount:5 error:&v111];
    }

    else
    {
      v110 = 0;
      v37 = [(MBCKManager *)self openCacheWithAccount:v101 accessType:2 error:&v110];
      v41 = v110;
      v42 = v41;
      if (!v37)
      {
        v98 = 0;
        allObjects = 0;
        v43 = 0;
        goto LABEL_41;
      }

      v109 = v41;
      v43 = [v37 fetchDomainsWithTopNSizes:5 error:&v109];
      v44 = restoreSession;
      v45 = v109;

      v108 = v45;
      v98 = [v37 fetchDomainsWithTopNFileCounts:5 error:&v108];
      v46 = v108;

      restoreSession = v44;
      v107 = v46;
      v47 = &v107;
      allObjects = [v37 domainNamesForRestoreFailures:&v107];
    }

    v42 = *v47;

    v12 = v102;
LABEL_41:

    v49 = [MBRestoreCloudFormatPolicy commitIDForCurrentRestore:v12];
    v50 = v49;
    if (v49)
    {
      snapshotUUID = v49;
    }

    else
    {
      snapshotUUID = [restoreSession snapshotUUID];
    }

    v52 = snapshotUUID;

    restoreTelemetryID = [(MBCKManager *)self restoreTelemetryID];
    v54 = v118;
    error = [restore error];
    v89 = v43;
    v91 = v52;
    [MBTelemetry sendBackgroundRestoreCompletion:restoreTelemetryID snapshotIdentifier:v52 snapshotFormat:v90 isRestoringUsingFileLists:v54 duration:error error:v35 fatalErrors:v27 domainsTopNSizes:v43 domainsTopNFileCount:v98 failedDomains:allObjects];

    selfCopy = self;
    databaseManager = [(MBCKManager *)self databaseManager];
    backupUDID = [restoreSession backupUDID];
    snapshotUUID2 = [restoreSession snapshotUUID];
    snapshotID = [restoreSession snapshotID];
    v60 = restore;
    v61 = v118;
    restorePlan2 = [v100 restorePlan];
    v93 = v60;
    error2 = [v60 error];
    v94 = v35;
    LOBYTE(v81) = v61;
    [MBCKStatusRequest sendStatusRequestForBackgroundRestoreCompletionWithAccount:v101 databaseManager:databaseManager sourceDeviceID:backupUDID snapshotUUID:snapshotUUID2 snapshotIndex:snapshotID snapshotFormat:v90 isRestoringUsingFileLists:v27 fatalErrors:v81 plan:v35 duration:restorePlan2 error:error2];

    v64 = +[MBLockdown connect];
    v106 = 0;
    LOBYTE(error2) = [v64 setObject:@"RestoredFromiCloudBackup" forDomain:@"com.apple.purplebuddy" andKey:@"SetupState" withError:&v106];
    v65 = v106;
    if ((error2 & 1) == 0)
    {
      v66 = MBGetDefaultLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v65;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Error setting lockdown setup state key: %@", buf, 0xCu);
        v82 = v65;
        _MBLog();
      }
    }

    v105 = v65;
    v67 = [v64 setObject:@"RestoredFromiCloudBackup" forDomain:@"com.apple.purplebuddy" andKey:@"RestoreState" withError:{&v105, v82}];
    v68 = v105;

    v10 = v100;
    v8 = v101;
    v31 = v93;
    if ((v67 & 1) == 0)
    {
      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v68;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Error setting lockdown restore state key: %@", buf, 0xCu);
        v83 = v68;
        _MBLog();
      }
    }

    v104 = v68;
    v70 = [v64 removeObjectWithDomain:@"com.apple.mobile.backup" andKey:@"LastCloudBackupDate" withError:{&v104, v83}];
    v71 = v104;

    if ((v70 & 1) == 0)
    {
      v72 = MBGetDefaultLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v71;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Failed to remove last backup date from lockdown: %@", buf, 0xCu);
        v84 = v71;
        _MBLog();
      }
    }

    [v64 disconnect];
    [(MBCKManager *)selfCopy _cancelDelayedBackgroundRestoreTimerWithAccount:v101];
    [(MBCKManager *)selfCopy _cancelBackgroundRestoreTTRTimerWithAccount:v101];
    [(MBCKManager *)selfCopy _ckClearRestoreSessionWithAccount:v101];
    v73 = MBGetDefaultLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Resetting the cache since we finished restoring", buf, 2u);
      _MBLog();
    }

    v103 = 0;
    v74 = [(MBCKManager *)selfCopy resetCacheWithAccount:v101 error:&v103];
    v75 = v103;
    if ((v74 & 1) == 0)
    {
      v76 = MBGetDefaultLog();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v75;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Failed to reset cache after finishing restore: %@", buf, 0xCu);
        v85 = v75;
        _MBLog();
      }
    }

    v12 = v102;
    [v102 removeRestorePrefetchCachesOlderThanDate:{0, v85}];
    if ([v100 isHoldingWorkAssertionForBackgroundRestore])
    {
      v77 = +[MBDaemon sharedDaemon];
      [v77 releaseWorkAssertion:v97];

      [v100 setIsHoldingWorkAssertionForBackgroundRestore:0];
    }

    goto LABEL_65;
  }

  v31 = MBGetDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "_finishedRestoreWithAccount called with an invalid service state (%d)", buf, 8u);
    _MBLog();
  }

LABEL_65:
}

- (void)_ckClearRestoreSessionWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _ckClearRestoreSessionWithAccount:]", "MBCKManager.m", 3341, "account");
  }

  v5 = accountCopy;
  v6 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [v5 accountIdentifier];
    persona = [v5 persona];
    personaIdentifier = [persona personaIdentifier];
    *buf = 138543618;
    v17 = accountIdentifier;
    v18 = 2114;
    v19 = personaIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing restore session for account %{public}@(%{public}@)", buf, 0x16u);

    accountIdentifier2 = [v5 accountIdentifier];
    persona2 = [v5 persona];
    personaIdentifier2 = [persona2 personaIdentifier];
    _MBLog();
  }

  deviceForRestore = [v6 deviceForRestore];
  [MBCKEncryptionManager removeRestoreKeyBagsWithAccount:v5 device:deviceForRestore];
  [MBServiceRestoreSession clearCurrentRestoreSessionWithAccount:v5];
  v14 = +[MBFollowUpManager sharedManager];
  [v14 clearPendingFollowUpsWithAccount:v5 identifiers:&off_1003E1FD0];

  [v6 clearRestoreSession];
}

- (BOOL)restoreFileExistsWithPath:(id)path account:(id)account
{
  pathCopy = path;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager restoreFileExistsWithPath:account:]", "MBCKManager.m", 3356, "account");
  }

  v8 = accountCopy;
  v9 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  restoreSession = [v9 restoreSession];

  v11 = [(MBCKManager *)self restorePlanForAccount:v8 snapshotUUID:0 error:0];
  if (([v11 isPopulated] & 1) == 0)
  {

    v11 = 0;
  }

  v33 = 0;
  v12 = [(MBCKManager *)self openCacheWithAccount:v8 accessType:1 error:&v33];
  v13 = v33;
  if (v12)
  {
    v14 = [MBDomainManager alloc];
    persona = [v8 persona];
    v16 = [(MBDomainManager *)v14 initWithPersona:persona];

    v17 = MBStandardizePath();

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A8610;
    block[3] = &unk_1003BD540;
    v23 = restoreSession;
    pathCopy = v17;
    v24 = pathCopy;
    v25 = v16;
    v26 = v11;
    v28 = &v29;
    v27 = v12;
    v19 = v16;
    dispatch_sync(stateQueue, block);
    v20 = *(v30 + 24);

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

- (BOOL)restoreDataExistsForApplicationWithBundleID:(id)d size:(unint64_t *)size account:(id)account
{
  dCopy = d;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager restoreDataExistsForApplicationWithBundleID:size:account:]", "MBCKManager.m", 3415, "account");
  }

  v10 = accountCopy;
  v11 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  restoreSession = [v11 restoreSession];

  v32 = 0;
  v13 = [(MBCKManager *)self openCacheWithAccount:v10 accessType:1 error:&v32];
  v14 = v32;
  if (v13)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    stateQueue = self->_stateQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A8B88;
    v18[3] = &unk_1003BDA00;
    v19 = restoreSession;
    v20 = dCopy;
    v21 = v13;
    v22 = &v28;
    v23 = &v24;
    dispatch_sync(stateQueue, v18);
    if (size)
    {
      *size = v25[3];
    }

    v16 = *(v29 + 24);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (void)prioritizeRestoreFileWithPath:(id)path account:(id)account
{
  pathCopy = path;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager prioritizeRestoreFileWithPath:account:]", "MBCKManager.m", 3528, "account");
  }

  v8 = accountCopy;
  v9 = MBStandardizePath();

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Prioritizing restore file: %@", buf, 0xCu);
    v26 = v9;
    _MBLog();
  }

  v32 = 0;
  v11 = [(MBCKManager *)self openCacheWithAccount:v8 accessType:1 error:&v32];
  v12 = v32;
  if (v11)
  {
    v13 = [MBDomainManager alloc];
    persona = [v8 persona];
    v15 = [(MBDomainManager *)v13 initWithPersona:persona];

    v31 = 0;
    v16 = [(MBDomainManager *)v15 domainForPath:v9 relativePath:&v31];
    v17 = v31;
    if (v16)
    {
      name = [v16 name];
      v19 = [v11 prioritizeRestoreFileWithDomain:name relativePath:v17];

      if (v19)
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v34 = v9;
          v35 = 2112;
          v36 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to set cache priority for path %@: %@", buf, 0x16u);
          v26 = v9;
          v28 = v19;
          _MBLog();
        }
      }

      v30 = v19;
      v21 = [(MBCKManager *)self restorePlanForAccount:v8 snapshotUUID:0 error:&v30, v26, v28];
      v22 = v30;

      if (!v21)
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get plan to set priority: %@", buf, 0xCu);
          v27 = v22;
          _MBLog();
        }
      }

      v29 = v22;
      v24 = [v21 incrementPriorityOfRestorableForDomain:v16 relativePath:v17 error:&v29, v27];
      v12 = v29;

      if ((v24 & 1) == 0)
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v34 = v9;
          v35 = 2112;
          v36 = v12;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to set priority in plan for path %@: %@", buf, 0x16u);
          _MBLog();
        }
      }
    }

    else
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Domain not found for request to prioritize restore file: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }
}

- (id)getBuddyDataStashForBackupUDID:(id)d snapshotID:(unint64_t)iD account:(id)account connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager getBuddyDataStashForBackupUDID:snapshotID:account:connection:error:]", "MBCKManager.m", 3564, "serviceAccount");
  }

  v13 = connectionCopy;
  v14 = dCopy;
  v15 = MBDeviceUDID_Legacy();
  v16 = [v14 isEqualToString:v15];

  v17 = v14;
  if (v16)
  {
    v17 = MBDeviceUUID();
  }

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    iDCopy3 = v14;
    v98 = 2112;
    v99 = v17;
    v100 = 2048;
    iDCopy5 = iD;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fetching the buddy data stash, backupUDID:%@, backupUUID:%@, snapshotID:%lu", buf, 0x20u);
    v67 = v17;
    iDCopy2 = iD;
    v66 = v14;
    _MBLog();
  }

  v80 = v17;

  v19 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKManager *)self databaseManager];
  v95 = 0;
  v21 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v19 error:&v95];
  selfCopy = self;
  v23 = v95;

  v72 = v19;
  v73 = v13;
  if (!v21)
  {
    v76 = 0;
LABEL_39:
    v38 = 0;
    v83 = 0;
    v43 = 0;
    v28 = 0;
    goto LABEL_53;
  }

  processName = [v13 processName];
  v25 = [v19 operationGroupWithName:@"getBuddyDataStash" processName:processName];
  [v21 setCkOperationGroup:v25];

  v94 = v23;
  v79 = selfCopy;
  v26 = [(MBCKManager *)selfCopy openCacheWithAccount:accountCopy accessType:1 error:&v94];
  v27 = v94;

  v76 = v26;
  if (!v26)
  {
    v76 = 0;
    v23 = v27;
    goto LABEL_39;
  }

  v70 = accountCopy;
  v83 = 0;
  v84 = 0;
  v28 = 0;
  v29 = 1;
  v30 = v80;
  v74 = v14;
  v75 = v21;
  do
  {
    v31 = v28;
    context = objc_autoreleasePoolPush();
    v93 = v27;
    v28 = [(MBCKManager *)v79 _snapshotForSnapshotID:iD backupUDID:v14 cached:v29 & 1 operationTracker:v21 error:&v93];
    v23 = v93;

    if (!v28 || ([v28 snapshotUUID], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
    {
      iDCopy2 = [MBError errorWithCode:204 format:@"Specified snapshot %lu not found in backup %@", iD, v14, iDCopy2];
      accountCopy = v70;
      v38 = v84;
LABEL_48:
      v62 = context;

      v23 = iDCopy2;
      goto LABEL_52;
    }

    if (v84)
    {
      goto LABEL_14;
    }

    v92 = v23;
    v33 = [MBCKAccount fetchAccountWithOperationTracker:v21 cache:v76 error:&v92];
    iDCopy2 = v92;

    if (!v33)
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        iDCopy3 = iDCopy2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to fetch the account record: %@", buf, 0xCu);
        _MBLog();
      }

      v38 = 0;
LABEL_47:
      accountCopy = v70;
      goto LABEL_48;
    }

    v91 = iDCopy2;
    v84 = v33;
    v35 = [v33 fetchDevicesWithOperationTracker:v21 error:&v91];
    v23 = v91;

    if (!v35)
    {
      goto LABEL_51;
    }

LABEL_14:
    v36 = v83;
    if (v83)
    {
      v37 = v23;
      goto LABEL_18;
    }

    v38 = v84;
    v39 = [v84 deviceForUUID:v30];
    if (!v39)
    {
      v61 = MBGetDefaultLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        iDCopy3 = v14;
        v98 = 2112;
        v99 = v30;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "No device found for backupUDID:%@, backupUUID:%@", buf, 0x16u);
        _MBLog();
      }

      iDCopy2 = [MBError errorWithCode:1 format:@"No device found for %@", v14];
      v83 = 0;
      goto LABEL_47;
    }

    v36 = v39;
    v90 = v23;
    v40 = [v39 fetchSnapshotsWithOperationTracker:v21 retry:1 error:&v90];
    v37 = v90;

    if (!v40)
    {
      v83 = v36;
      v23 = v37;
LABEL_51:
      accountCopy = v70;
      v38 = v84;
      v62 = context;
LABEL_52:
      objc_autoreleasePoolPop(v62);
      v43 = 0;
      goto LABEL_53;
    }

LABEL_18:
    snapshotUUID = [v28 snapshotUUID];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v83 = v36;
    snapshots = [v36 snapshots];
    v43 = [snapshots countByEnumeratingWithState:&v86 objects:v104 count:16];
    if (v43)
    {
      v77 = v28;
      v44 = *v87;
      while (2)
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v87 != v44)
          {
            objc_enumerationMutation(snapshots);
          }

          v46 = *(*(&v86 + 1) + 8 * i);
          snapshotID = [v46 snapshotID];
          v48 = [snapshotID isEqualToString:snapshotUUID];

          if (v48)
          {
            v43 = v46;
            goto LABEL_28;
          }
        }

        v43 = [snapshots countByEnumeratingWithState:&v86 objects:v104 count:16];
        if (v43)
        {
          continue;
        }

        break;
      }

LABEL_28:
      v14 = v74;
      v21 = v75;
      v30 = v80;
      v28 = v77;
    }

    objc_autoreleasePoolPop(context);
    v49 = v29 & (v43 == 0);
    v29 = 0;
    v27 = v37;
  }

  while ((v49 & 1) != 0);
  if (v43)
  {
    v78 = v28;
    v50 = MBGetDefaultLog();
    accountCopy = v70;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      snapshotID2 = [v43 snapshotID];
      *buf = 134218498;
      iDCopy3 = iD;
      v98 = 2112;
      v99 = snapshotID2;
      v100 = 2112;
      iDCopy5 = v14;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Found snapshot %lu (%@) in backup %@", buf, 0x20u);

      snapshotID3 = [v43 snapshotID];
      _MBLog();
    }

    v52 = [MBCKProperties alloc];
    backupProperties = [v43 backupProperties];
    v85 = v27;
    v54 = [(MBProperties *)v52 initWithData:backupProperties error:&v85];
    v23 = v85;

    v55 = MBGetDefaultLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      buddyStashData = [(MBProperties *)v54 buddyStashData];
      v57 = [buddyStashData length];
      *buf = 134218754;
      iDCopy3 = v57;
      v98 = 2112;
      v99 = v14;
      v100 = 2112;
      iDCopy5 = v80;
      v102 = 2048;
      iDCopy4 = iD;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Found %lu bytes for the buddy data stash, backupUDID:%@, backupUUID:%@, snapshotID:%lu", buf, 0x2Au);

      buddyStashData2 = [(MBProperties *)v54 buddyStashData];
      [buddyStashData2 length];
      _MBLog();
    }

    if (v54)
    {
      buddyStashData3 = [(MBProperties *)v54 buddyStashData];

      v60 = v73;
      v28 = v78;
      goto LABEL_59;
    }

    v28 = v78;
  }

  else
  {
    v23 = [MBError errorWithCode:1 format:@"Specified snapshot %lu not found in backup %@", iD, v14];

    accountCopy = v70;
  }

  v38 = v84;
LABEL_53:
  v63 = MBGetDefaultLog();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    iDCopy3 = v14;
    v98 = 2112;
    v99 = v80;
    v100 = 2048;
    iDCopy5 = iD;
    v102 = 2112;
    iDCopy4 = v23;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to fetch buddy data stash for backupUDID:%@, backupUUID:%@, snapshotID:%lu: %@", buf, 0x2Au);
    _MBLog();
  }

  v84 = v38;

  if (error)
  {
    v64 = v23;
    buddyStashData3 = 0;
    *error = v23;
  }

  else
  {
    buddyStashData3 = 0;
  }

  v60 = v73;
LABEL_59:

  return buddyStashData3;
}

+ (id)restoreInfoForAccount:(id)account
{
  persona = [account persona];
  v4 = [persona copyPreferencesValueForKey:@"RestoreInfo" class:objc_opt_class()];

  if (v4)
  {
    v5 = [[MBRestoreInfo alloc] initWithDictionaryRepresentation:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getAppleIDsMapForBackupUDID:(id)d account:(id)account snapshotID:(unint64_t)iD activeAppleID:(id *)appleID connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  v17 = dCopy;
  v18 = MBDeviceUDID_Legacy();
  LODWORD(account) = [v17 isEqualToString:v18];

  v19 = v17;
  if (account)
  {
    v19 = MBDeviceUUID();
  }

  v20 = MBGetDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    iDCopy4 = v17;
    v103 = 2112;
    v104 = v19;
    v105 = 2048;
    iDCopy7 = iD;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fetching the iCloud Apple IDs for backupUDID:%@, backupUUID:%@, snapshotID:%lu", buf, 0x20u);
    v72 = v19;
    iDCopy2 = iD;
    v71 = v17;
    _MBLog();
  }

  v83 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (!v83)
  {
    v27 = 0;
    v64 = 0;
    activeAppleID = 0;
    v63 = 0;
    v24 = 0;
    goto LABEL_66;
  }

  v82 = v19;
  errorCopy = error;
  v21 = +[MBCKOperationPolicy expensiveCellularPolicy];
  selfCopy = self;
  databaseManager = [(MBCKManager *)self databaseManager];
  v100 = 0;
  v23 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v21 error:&v100];
  v24 = v100;

  v79 = connectionCopy;
  if (!v23)
  {
    v87 = 0;
    v44 = 0;
    v27 = 0;
    v90 = 0;
    goto LABEL_60;
  }

  appleIDCopy = appleID;
  v77 = accountCopy;
  processName = [connectionCopy processName];
  v76 = v21;
  v26 = [v21 operationGroupWithName:@"getAppleIDsMap" processName:processName];
  [v23 setCkOperationGroup:v26];

  v89 = v24;
  v90 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  iDCopy3 = iD;
  v81 = v23;
  do
  {
    v30 = v28;
    v31 = objc_autoreleasePoolPush();
    v99 = v89;
    v28 = [(MBCKManager *)selfCopy _snapshotForSnapshotID:iD backupUDID:v17 cached:v29 & 1 operationTracker:v23 error:&v99];
    v24 = v99;

    if (!v28)
    {
      v87 = 0;
      v21 = v76;
      accountCopy = v77;
LABEL_59:
      objc_autoreleasePoolPop(v31);
      v44 = 0;
      goto LABEL_60;
    }

    context = v31;
    snapshotUUID = [v28 snapshotUUID];

    if (!snapshotUUID)
    {
      goto LABEL_44;
    }

    v33 = v90;
    if (!v90)
    {
      v98 = v24;
      v34 = [MBCKAccount fetchAccountWithOperationTracker:v23 cache:v83 error:&v98];
      v35 = v98;

      if (!v34)
      {
        v87 = v28;
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          iDCopy4 = v35;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
          _MBLog();
        }

        v90 = 0;
        goto LABEL_58;
      }

      v97 = v35;
      v90 = v34;
      v36 = [v34 fetchDevicesWithOperationTracker:v23 error:&v97];
      v24 = v97;

      v33 = v34;
      if (!v36)
      {
LABEL_44:
        v87 = v28;
LABEL_53:
        v21 = v76;
        accountCopy = v77;
        v31 = context;
        goto LABEL_59;
      }
    }

    v90 = v33;
    if (v27)
    {
      v89 = v24;
      goto LABEL_18;
    }

    v37 = [v33 deviceForUUID:v82];
    if (!v37)
    {
      v87 = v28;
      v65 = MBGetDefaultLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        iDCopy4 = v17;
        v103 = 2112;
        v104 = v82;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "No device found for backupUDID:%@, backupUUID:%@,", buf, 0x16u);
        _MBLog();
      }

      v35 = [MBError errorWithCode:1 format:@"No device found for %@", v17];
      v27 = 0;
LABEL_58:
      v21 = v76;
      accountCopy = v77;
      v31 = context;

      v24 = v35;
      goto LABEL_59;
    }

    v27 = v37;
    v96 = v24;
    v38 = [v37 fetchSnapshotsWithOperationTracker:v23 retry:1 error:&v96];
    v39 = v96;

    if (!v38)
    {
      v87 = v28;
      v24 = v39;
      goto LABEL_53;
    }

    v89 = v39;
    snapshots = [v27 snapshots];
    v41 = [snapshots count];

    if (!v41)
    {
      v87 = v28;
      v66 = MBGetDefaultLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        iDCopy4 = v17;
        v103 = 2112;
        v104 = v82;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "No snapshots found for backupUDID:%@, backupUUID:%@", buf, 0x16u);
        _MBLog();
      }

      v35 = [MBError errorWithCode:1 format:@"No snapshots found for %@", v17];
      v24 = v89;
      goto LABEL_58;
    }

LABEL_18:
    snapshotUUID2 = [v28 snapshotUUID];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    snapshots2 = [v27 snapshots];
    v44 = [snapshots2 countByEnumeratingWithState:&v92 objects:v111 count:16];
    if (v44)
    {
      v84 = v27;
      v86 = v28;
      v45 = v17;
      v46 = *v93;
      while (2)
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v93 != v46)
          {
            objc_enumerationMutation(snapshots2);
          }

          v48 = *(*(&v92 + 1) + 8 * i);
          snapshotID = [v48 snapshotID];
          v50 = [snapshotID isEqualToString:snapshotUUID2];

          if (v50)
          {
            v44 = v48;
            goto LABEL_28;
          }
        }

        v44 = [snapshots2 countByEnumeratingWithState:&v92 objects:v111 count:16];
        if (v44)
        {
          continue;
        }

        break;
      }

LABEL_28:
      v17 = v45;
      iD = iDCopy3;
      v23 = v81;
      v28 = v86;
      v27 = v84;
    }

    objc_autoreleasePoolPop(context);
    v51 = v29 & (v44 == 0);
    v29 = 0;
  }

  while ((v51 & 1) != 0);
  v87 = v28;
  if (v44)
  {
    v52 = MBGetDefaultLog();
    accountCopy = v77;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      snapshotID2 = [v44 snapshotID];
      *buf = 134218498;
      iDCopy4 = iD;
      v103 = 2112;
      v104 = snapshotID2;
      v105 = 2112;
      iDCopy7 = v17;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Found snapshot %lu (%@) in backup %@", buf, 0x20u);

      snapshotID3 = [v44 snapshotID];
      _MBLog();
    }

    v54 = [MBCKProperties alloc];
    backupProperties = [v44 backupProperties];
    v91 = v89;
    v56 = [(MBProperties *)v54 initWithData:backupProperties error:&v91];
    v24 = v91;

    v57 = v56;
    if (v56)
    {
      appleIDs = [(MBProperties *)v56 appleIDs];
      activeAppleID = [(MBProperties *)v56 activeAppleID];
      if (appleIDs)
      {
        v60 = appleIDs;
      }

      else
      {
        v60 = &__NSDictionary0__struct;
      }

      v61 = MBGetDefaultLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        iDCopy4 = v17;
        v103 = 2112;
        v104 = v82;
        v105 = 2048;
        iDCopy7 = iD;
        v107 = 2112;
        v108 = v60;
        v109 = 2112;
        v110 = activeAppleID;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Fetched the iCloud Apple IDs for backupUDID:%@, backupUUID:%@, snapshotID:%lu: %@, active Apple ID = %@", buf, 0x34u);
        _MBLog();
      }

      if (appleIDCopy)
      {
        v62 = activeAppleID;
        *appleIDCopy = activeAppleID;
      }

      v63 = v60;

      v21 = v76;
      v23 = v81;
      goto LABEL_65;
    }

    v70 = MBGetDefaultLog();
    v23 = v81;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      iDCopy4 = v17;
      v103 = 2112;
      v104 = v82;
      v105 = 2048;
      iDCopy7 = iD;
      v107 = 2112;
      v108 = v24;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Failed to fetch the snapshot properties for backupUDID:%@, backupUUID:%@, snapshotID:%lu: %@", buf, 0x2Au);
      _MBLog();
    }
  }

  else
  {
    v24 = [MBError errorWithCode:1 format:@"Specified snapshot %lu not found in backup %@", iD, v17];

    accountCopy = v77;
  }

  v21 = v76;
LABEL_60:
  v67 = MBGetDefaultLog();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    iDCopy4 = v17;
    v103 = 2112;
    v104 = v82;
    v105 = 2048;
    iDCopy7 = iD;
    v107 = 2112;
    v108 = v24;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Failed to fetch the iCloud Apple IDs for backupUDID:%@, backupUUID:%@, snapshotID:%lu: %@", buf, 0x2Au);
    _MBLog();
  }

  if (errorCopy)
  {
    v68 = v24;
    activeAppleID = 0;
    v63 = 0;
    *errorCopy = v24;
  }

  else
  {
    activeAppleID = 0;
    v63 = 0;
  }

LABEL_65:

  connectionCopy = v79;
  v64 = v90;
  v19 = v82;
LABEL_66:

  return v63;
}

- (BOOL)prepareForBackgroundRestoreWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager prepareForBackgroundRestoreWithAccount:error:]", "MBCKManager.m", 3763, "account");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager prepareForBackgroundRestoreWithAccount:error:]", "MBCKManager.m", 3764, "error");
  }

  v7 = accountCopy;
  v8 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100093324;
  v28 = sub_100093334;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AB25C;
  block[3] = &unk_1003BD5B8;
  v10 = v8;
  v15 = v10;
  v18 = &v20;
  v11 = v7;
  v16 = v11;
  selfCopy = self;
  v19 = &v24;
  dispatch_sync(stateQueue, block);
  if (v21[3])
  {
    v12 = 1;
  }

  else
  {
    *error = v25[5];
    v12 = *(v21 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12 & 1;
}

- (BOOL)startScanForBundleIDs:(id)ds account:(id)account error:(id *)error
{
  accountCopy = account;
  dsCopy = ds;
  v10 = MBDeviceUUID();
  v11 = [(MBCKManager *)self _ckSettingsContextForBackupUDID:v10 account:accountCopy];

  v12 = [v11 copy];
  [v12 setBundleIDs:dsCopy];

  LOBYTE(error) = [(MBCKManager *)self _startScanWithSettingsContext:v12 error:error];
  return error;
}

- (BOOL)startScanWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager startScanWithAccount:error:]", "MBCKManager.m", 3803, "account");
  }

  v7 = accountCopy;
  v8 = MBDeviceUUID();
  v9 = [(MBCKManager *)self _ckSettingsContextForBackupUDID:v8 account:v7];

  v10 = [(MBCKManager *)self _startScanWithSettingsContext:v9 error:error];
  return v10;
}

- (BOOL)_startScanWithSettingsContext:(id)context error:(id *)error
{
  contextCopy = context;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKManager _startScanWithSettingsContext:error:]", "MBCKManager.m", 3811, "account");
  }

  v9 = account;
  v10 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:account];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100093324;
  v29 = sub_100093334;
  v30 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AB7D4;
  block[3] = &unk_1003BD608;
  v12 = v10;
  v18 = v12;
  v22 = &v25;
  v23 = &v31;
  v13 = v9;
  v19 = v13;
  v14 = contextCopy;
  v20 = v14;
  selfCopy = self;
  v24 = a2;
  dispatch_sync(stateQueue, block);
  if (error && v26[5])
  {
    *error = [(MBCKManager *)self _sanitizeError:?];
  }

  v15 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

- (id)filesForSnapshotID:(unint64_t)d backupUDID:(id)iD account:(id)account connection:(id)connection error:(id *)error
{
  iDCopy = iD;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager filesForSnapshotID:backupUDID:account:connection:error:]", "MBCKManager.m", 3863, "serviceAccount");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager filesForSnapshotID:backupUDID:account:connection:error:]", "MBCKManager.m", 3864, "error");
  }

  v66 = accountCopy;
  errorCopy = error;
  v67 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (!v67)
  {
    v38 = 0;
    goto LABEL_57;
  }

  v62 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKManager *)self databaseManager];
  v64 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v62 error:error];

  if (v64)
  {
    processName = [connectionCopy processName];
    v15 = [v62 operationGroupWithName:@"getFilesForSnapshot" processName:processName];
    [v64 setCkOperationGroup:v15];

    v16 = [(MBCKManager *)self snapshotForSnapshotID:d backupUDID:iDCopy operationTracker:v64 error:errorCopy];
    v17 = v16;
    if (!v16 || ([v16 snapshotUUID], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
    {
      [MBError errorWithCode:1 format:@"Failed to find snapshot"];
      *errorCopy = v38 = 0;
LABEL_55:

      goto LABEL_56;
    }

    v19 = iDCopy;
    v20 = MBDeviceUDID_Legacy();
    v21 = v19;
    v22 = [v19 isEqualToString:v20];

    if (v22)
    {
      v21 = MBDeviceUUID();
    }

    v56 = v21;
    v58 = [(MBCKManager *)self _ckSettingsContextForBackupUDID:v21 account:v66];
    v60 = [(MBCKManager *)self _backupEngineWithReason:1 settingsContext:v58 account:v66];
    [v60 setCache:v67];
    context = [v60 context];
    [context setPlugins:0];

    [v60 setCkOperationPolicy:v62];
    [v60 setCkOperationTracker:v64];
    v79 = 0;
    v59 = [MBCKAccount fetchAccountWithOperationTracker:v64 cache:v67 error:&v79];
    v57 = v79;
    if (!v59)
    {
      v39 = MBGetDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v57;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", &buf, 0xCu);
        _MBLog();
      }

      v40 = v57;
      v38 = 0;
      *errorCopy = v57;
      goto LABEL_54;
    }

    if (![v59 fetchDevicesWithOperationTracker:v64 error:errorCopy])
    {
      v38 = 0;
LABEL_54:

      goto LABEL_55;
    }

    v24 = [v59 deviceForUUID:v21];
    v55 = v24;
    if (!v24)
    {
      v41 = MBGetDefaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v21;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "No backups for device %@", &buf, 0xCu);
        _MBLog();
      }

      [MBError errorWithCode:1 format:@"No backups for device"];
      *errorCopy = v38 = 0;
      goto LABEL_53;
    }

    if (![v24 fetchSnapshotsWithOperationTracker:v64 retry:1 error:errorCopy] || (objc_msgSend(v60, "setDevice:", v55), (objc_msgSend(v55, "validateCache") & 1) == 0) && !objc_msgSend(v60, "refreshCacheWithError:", errorCopy))
    {
      v38 = 0;
LABEL_53:

      goto LABEL_54;
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    snapshots = [v55 snapshots];
    v26 = 0;
    v27 = [snapshots countByEnumeratingWithState:&v75 objects:v86 count:16];
    if (v27)
    {
      v28 = *v76;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v76 != v28)
          {
            objc_enumerationMutation(snapshots);
          }

          v30 = *(*(&v75 + 1) + 8 * i);
          snapshotID = [v30 snapshotID];
          snapshotUUID = [v17 snapshotUUID];
          v33 = [snapshotID isEqualToString:snapshotUUID];

          if (v33)
          {
            v34 = v30;

            v26 = v34;
          }
        }

        v27 = [snapshots countByEnumeratingWithState:&v75 objects:v86 count:16];
      }

      while (v27);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v82 = 0x3032000000;
    v83 = sub_100093324;
    v84 = sub_100093334;
    v85 = objc_alloc_init(NSMutableArray);
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1000AC6A8;
    v74[3] = &unk_1003BD630;
    v74[4] = &buf;
    v35 = [v67 enumerateManifestsForSnapshot:v26 foundManifest:v74];
    if (v35)
    {
      v36 = v35;
      v37 = v35;
      v38 = 0;
      *errorCopy = v36;
LABEL_52:

      _Block_object_dispose(&buf, 8);
      goto LABEL_53;
    }

    v42 = objc_opt_new();
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = *(*(&buf + 1) + 40);
    v43 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v43)
    {
      v44 = v43;
      v36 = 0;
      v45 = *v71;
LABEL_39:
      v46 = 0;
      while (1)
      {
        if (*v71 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v70 + 1) + 8 * v46);
        v48 = objc_autoreleasePoolPush();
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1000AC6D4;
        v68[3] = &unk_1003BD658;
        v69 = v42;
        v49 = [v67 enumerateFilesForManifest:v47 foundFile:v68];
        v50 = v49;
        if (v49)
        {
          v51 = v49;

          v36 = v51;
        }

        objc_autoreleasePoolPop(v48);
        if (v50)
        {
          break;
        }

        if (v44 == ++v46)
        {
          v44 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
          if (v44)
          {
            goto LABEL_39;
          }

          break;
        }
      }

      if (v36)
      {
        v52 = v36;
        v38 = 0;
        *errorCopy = v36;
LABEL_51:

        goto LABEL_52;
      }
    }

    else
    {
    }

    v38 = v42;
    v36 = 0;
    goto LABEL_51;
  }

  v38 = 0;
LABEL_56:

LABEL_57:

  return v38;
}

- (BOOL)mergeSnapshots:(id)snapshots backupUUID:(id)d account:(id)account connection:(id)connection error:(id *)error
{
  snapshotsCopy = snapshots;
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager mergeSnapshots:backupUUID:account:connection:error:]", "MBCKManager.m", 3983, "serviceAccount");
  }

  v16 = connectionCopy;
  v17 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v17)
  {
    v18 = +[MBCKOperationPolicy expensiveCellularPolicy];
    databaseManager = [(MBCKManager *)self databaseManager];
    v20 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v18 error:error];

    if (!v20)
    {
      v37 = 0;
LABEL_37:

      goto LABEL_38;
    }

    processName = [v16 processName];
    v22 = [v18 operationGroupWithName:@"mergeSnapshots" processName:processName];
    [v20 setCkOperationGroup:v22];

    v56 = 0;
    v23 = [MBCKAccount fetchAccountWithOperationTracker:v20 cache:v17 error:&v56];
    v50 = v56;
    if (v23)
    {
      if ([v23 fetchDevicesWithOperationTracker:v20 error:error])
      {
        v24 = [v23 deviceForUUID:dCopy];
        v49 = v24;
        if (v24)
        {
          v25 = v24;
          if ([v24 fetchSnapshotsWithOperationTracker:v20 error:error])
          {
            v42 = v23;
            v43 = v20;
            errorCopy = error;
            v45 = v18;
            v46 = v17;
            v47 = v16;
            v48 = accountCopy;
            v26 = [MBCKSnapshotMergeRequest snapshotMergeRequestForDevice:v25];
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            obj = [v25 snapshots];
            v27 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
            if (!v27)
            {
              goto LABEL_22;
            }

            v28 = v27;
            v29 = *v53;
            while (1)
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v53 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v52 + 1) + 8 * i);
                recordIDString = [v31 recordIDString];
                if ([snapshotsCopy indexOfObject:recordIDString] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  snapshotID = [v31 snapshotID];
                  v34 = [snapshotsCopy indexOfObject:snapshotID];

                  if (v34 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    continue;
                  }
                }

                else
                {
                }

                v35 = MBGetDefaultLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  recordIDString2 = [v31 recordIDString];
                  *buf = 138543362;
                  v59 = recordIDString2;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Found snapshot to merge: %{public}@", buf, 0xCu);

                  recordIDString3 = [v31 recordIDString];
                  _MBLog();
                }

                [v26 addSnapshotToMerge:v31];
              }

              v28 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
              if (!v28)
              {
LABEL_22:

                v37 = [v26 saveWithOperationTracker:v43 error:errorCopy];
                v20 = v43;
                accountCopy = v48;
                v17 = v46;
                v16 = v47;
                v18 = v45;
                v23 = v42;
                goto LABEL_35;
              }
            }
          }
        }

        else
        {
          v39 = MBGetDefaultLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = dCopy;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "No backups for device %@", buf, 0xCu);
            _MBLog();
          }

          if (error)
          {
            [MBError errorWithCode:1 format:@"No backups for device"];
            *error = v37 = 0;
LABEL_35:

            goto LABEL_36;
          }
        }

        v37 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v50;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v37 = 0;
        *error = v50;
LABEL_36:

        goto LABEL_37;
      }
    }

    v37 = 0;
    goto LABEL_36;
  }

  v37 = 0;
LABEL_38:

  return v37;
}

- (BOOL)pinSnapshotID:(unint64_t)d backupUDID:(id)iD account:(id)account connection:(id)connection error:(id *)error
{
  iDCopy = iD;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager pinSnapshotID:backupUDID:account:connection:error:]", "MBCKManager.m", 4030, "serviceAccount");
  }

  v15 = connectionCopy;
  v16 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v16)
  {
    v17 = +[MBCKOperationPolicy expensiveCellularPolicy];
    databaseManager = [(MBCKManager *)self databaseManager];
    v19 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v17 error:error];

    if (!v19)
    {
      v27 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v35 = v15;
    processName = [v15 processName];
    v21 = [v17 operationGroupWithName:@"pinSnapshot" processName:processName];
    [v19 setCkOperationGroup:v21];

    v22 = [(MBCKManager *)self snapshotForSnapshotID:d backupUDID:iDCopy operationTracker:v19 error:error];
    if (!v22)
    {
      if (error)
      {
        [MBError errorWithCode:1 format:@"Invalid snapshot"];
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }

      v15 = v35;
      goto LABEL_29;
    }

    v36 = 0;
    v23 = [MBCKAccount fetchAccountWithOperationTracker:v19 cache:v16 error:&v36];
    v34 = v36;
    if (v23)
    {
      v15 = v35;
      if ([v23 fetchDevicesWithOperationTracker:v19 error:error])
      {
        v24 = [v23 deviceForUUID:iDCopy];
        v33 = v24;
        if (v24)
        {
          v25 = v24;
          snapshotUUID = [v22 snapshotUUID];
          v26 = [MBCKSnapshot snapshotForDevice:v25 reason:1 type:0 snapshotFormat:0 snapshotID:snapshotUUID];

          v32 = v26;
          if ([v25 pinSnapshot:v26 error:error])
          {
            v27 = [v25 saveWithOperationTracker:v19 error:error];
          }

          else
          {
            v27 = 0;
          }

          v15 = v35;
        }

        else
        {
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v38 = iDCopy;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "No backups for device %@", buf, 0xCu);
            _MBLog();
          }

          if (error)
          {
            [MBError errorWithCode:1 format:@"No backups for device"];
            *error = v27 = 0;
          }

          else
          {
            v27 = 0;
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
      v28 = MBGetDefaultLog();
      v15 = v35;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v34;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v27 = 0;
        *error = v34;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }
    }

    v27 = 0;
    goto LABEL_28;
  }

  v27 = 0;
LABEL_31:

  return v27;
}

- (BOOL)unpinSnapshotID:(unint64_t)d backupUDID:(id)iD account:(id)account connection:(id)connection error:(id *)error
{
  iDCopy = iD;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager unpinSnapshotID:backupUDID:account:connection:error:]", "MBCKManager.m", 4074, "serviceAccount");
  }

  v15 = connectionCopy;
  v16 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v16)
  {
    v17 = +[MBCKOperationPolicy expensiveCellularPolicy];
    databaseManager = [(MBCKManager *)self databaseManager];
    v19 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v17 error:error];

    if (!v19)
    {
      v27 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v35 = v15;
    processName = [v15 processName];
    v21 = [v17 operationGroupWithName:@"unpinSnapshot" processName:processName];
    [v19 setCkOperationGroup:v21];

    v22 = [(MBCKManager *)self snapshotForSnapshotID:d backupUDID:iDCopy operationTracker:v19 error:error];
    if (!v22)
    {
      if (error)
      {
        [MBError errorWithCode:1 format:@"Invalid snapshot"];
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }

      v15 = v35;
      goto LABEL_29;
    }

    v36 = 0;
    v23 = [MBCKAccount fetchAccountWithOperationTracker:v19 cache:v16 error:&v36];
    v34 = v36;
    if (v23)
    {
      v15 = v35;
      if ([v23 fetchDevicesWithOperationTracker:v19 error:error])
      {
        v24 = [v23 deviceForUUID:iDCopy];
        v33 = v24;
        if (v24)
        {
          v25 = v24;
          snapshotUUID = [v22 snapshotUUID];
          v26 = [MBCKSnapshot snapshotForDevice:v25 reason:1 type:0 snapshotFormat:0 snapshotID:snapshotUUID];

          v32 = v26;
          if ([v25 unpinSnapshot:v26 error:error])
          {
            v27 = [v25 saveWithOperationTracker:v19 error:error];
          }

          else
          {
            v27 = 0;
          }

          v15 = v35;
        }

        else
        {
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v38 = iDCopy;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "No backups for device %@", buf, 0xCu);
            _MBLog();
          }

          if (error)
          {
            [MBError errorWithCode:1 format:@"No backups for device"];
            *error = v27 = 0;
          }

          else
          {
            v27 = 0;
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
      v28 = MBGetDefaultLog();
      v15 = v35;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v34;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v27 = 0;
        *error = v34;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }
    }

    v27 = 0;
    goto LABEL_28;
  }

  v27 = 0;
LABEL_31:

  return v27;
}

- (id)journalForBackupUUID:(id)d account:(id)account connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager journalForBackupUUID:account:connection:error:]", "MBCKManager.m", 4118, "serviceAccount");
  }

  v13 = connectionCopy;
  v14 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v14)
  {
    v15 = +[MBCKOperationPolicy expensiveCellularPolicy];
    databaseManager = [(MBCKManager *)self databaseManager];
    v17 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v15 error:error];

    if (v17)
    {
      processName = [v13 processName];
      v19 = [v15 operationGroupWithName:@"getJournal" processName:processName];
      [v17 setCkOperationGroup:v19];

      v40 = 0;
      v20 = [MBCKAccount fetchAccountWithOperationTracker:v17 cache:v14 error:&v40];
      v21 = v40;
      v22 = v21;
      if (v20)
      {
        if ([v20 fetchDevicesWithOperationTracker:v17 error:error])
        {
          v38 = v22;
          v23 = [v20 deviceForUUID:dCopy];
          v37 = v23;
          if (v23)
          {
            v24 = v23;
            v25 = objc_opt_new();
            v26 = [MBCKJournal journalForDevice:v24 cache:v14 engine:0];
            [v26 fetchFromServerWithOperationTracker:v17 error:error];
            snapshotActions = [v26 snapshotActions];

            if (snapshotActions)
            {
              snapshotActions2 = [v26 snapshotActions];
            }

            else
            {
              snapshotActions2 = objc_opt_new();
            }

            v32 = snapshotActions2;
            [v25 setObject:snapshotActions2 forKeyedSubscript:@"snapshotActions"];

            processedSnapshotActions = [v26 processedSnapshotActions];

            if (processedSnapshotActions)
            {
              processedSnapshotActions2 = [v26 processedSnapshotActions];
            }

            else
            {
              processedSnapshotActions2 = objc_opt_new();
            }

            v35 = processedSnapshotActions2;
            [v25 setObject:processedSnapshotActions2 forKeyedSubscript:@"processedSnapshotActions"];
          }

          else
          {
            v31 = MBGetDefaultLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v42 = dCopy;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "No backups for device %@", buf, 0xCu);
              _MBLog();
            }

            if (error)
            {
              [MBError errorWithCode:1 format:@"No backups for device"];
              *error = v25 = 0;
            }

            else
            {
              v25 = 0;
            }
          }

          v22 = v38;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v39 = v21;
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = v39;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
          _MBLog();
        }

        if (error)
        {
          v22 = v39;
          v30 = v39;
          v25 = 0;
          *error = v39;
        }

        else
        {
          v25 = 0;
          v22 = v39;
        }
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)journalLastModifiedForBackupUUID:(id)d account:(id)account connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager journalLastModifiedForBackupUUID:account:connection:error:]", "MBCKManager.m", 4166, "serviceAccount");
  }

  v13 = connectionCopy;
  v14 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (!v14)
  {
    modificationDate = 0;
    goto LABEL_27;
  }

  v15 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKManager *)self databaseManager];
  v17 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v15 error:error];

  if (v17)
  {
    processName = [v13 processName];
    v19 = [v15 operationGroupWithName:@"getLastModifiedDateFromJournal" processName:processName];
    [v17 setCkOperationGroup:v19];

    v35 = 0;
    v20 = [MBCKAccount fetchAccountWithOperationTracker:v17 cache:v14 error:&v35];
    v21 = v35;
    if (v20)
    {
      if ([v20 fetchDevicesWithOperationTracker:v17 error:error])
      {
        v22 = [v20 deviceForUUID:dCopy];
        v33 = v22;
        if (v22)
        {
          v23 = [MBCKJournal journalForDevice:v22 cache:v14 engine:0];

          v34 = 0;
          [v23 fetchFromServerWithOperationTracker:v17 error:&v34];
          v21 = v34;
          if (!v23)
          {
            v24 = MBGetDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v37 = v21;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to fetch journal record: %@", buf, 0xCu);
              v31 = v21;
              _MBLog();
            }
          }

          [v23 recordRepresentation];
          v25 = v32 = v23;
          modificationDate = [v25 modificationDate];
        }

        else
        {
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = dCopy;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "No backups for device %@", buf, 0xCu);
            _MBLog();
          }

          if (error)
          {
            [MBError errorWithCode:1 format:@"No backups for device"];
            *error = modificationDate = 0;
          }

          else
          {
            modificationDate = 0;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v28 = v21;
        modificationDate = 0;
        *error = v21;
LABEL_25:

        goto LABEL_26;
      }
    }

    modificationDate = 0;
    goto LABEL_25;
  }

  modificationDate = 0;
LABEL_26:

LABEL_27:

  return modificationDate;
}

- (void)cancelBackgroundRestoreWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager cancelBackgroundRestoreWithAccount:]", "MBCKManager.m", 4211, "account");
  }

  v5 = accountCopy;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [v5 accountIdentifier];
    persona = [v5 persona];
    personaIdentifier = [persona personaIdentifier];
    *buf = 138543618;
    v17 = accountIdentifier;
    v18 = 2114;
    v19 = personaIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Canceling background restore for account %{public}@(%{public}@)", buf, 0x16u);

    accountIdentifier2 = [v5 accountIdentifier];
    persona2 = [v5 persona];
    [persona2 personaIdentifier];
    v15 = v14 = accountIdentifier2;
    _MBLog();
  }

  if (BYSetupAssistantNeedsToRun())
  {
    do
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Can't cancel restore until mini-buddy is done", buf, 2u);
        _MBLog();
      }

      sleep(0xAu);
    }

    while ((BYSetupAssistantNeedsToRun() & 1) != 0);
  }

  v13 = [_TtC7backupd20AppRestoreDispatcher shared:v14];
  [v13 cancelAndUninstallRestorerForAccount:v5];

  [(MBCKManager *)self _airTrafficFinishedRestoring];
  [(MBCKManager *)self _finishRestoreWithAccount:v5 cancelled:1];
}

- (void)cancelRestoreEnginesWithReason:(int64_t)reason connection:(id)connection
{
  connectionCopy = connection;
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v19 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v19];
  v10 = v19;

  if (v9)
  {
    v11 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v9];
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AE2E4;
    block[3] = &unk_1003BDB10;
    v16 = v11;
    v17 = connectionCopy;
    reasonCopy = reason;
    v13 = v11;
    v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
    dispatch_async(stateQueue, v14);
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to cancel the restore engines due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }
}

- (void)cancelEnginesWithAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  v6 = os_transaction_create();
  v7 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];

  stateQueue = self->_stateQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AE540;
  v11[3] = &unk_1003BC060;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(stateQueue, v11);
}

- (void)_cancelBackupEngineWithError:(id)error account:(id)account connection:(id)connection
{
  errorCopy = error;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _cancelBackupEngineWithError:account:connection:]", "MBCKManager.m", 4259, "account");
  }

  v11 = connectionCopy;
  v12 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v13 = os_transaction_create();
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AE76C;
  block[3] = &unk_1003BD680;
  v21 = v12;
  v22 = accountCopy;
  v23 = v11;
  v24 = errorCopy;
  v25 = v13;
  v15 = v13;
  v16 = errorCopy;
  v17 = v11;
  v18 = accountCopy;
  v19 = v12;
  dispatch_async(stateQueue, block);
}

- (void)cancelBackupEngineWithError:(id)error connection:(id)connection
{
  errorCopy = error;
  connectionCopy = connection;
  +[MBServiceAccount allServiceAccounts];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        [(MBCKManager *)self _cancelBackupEngineWithError:errorCopy account:v13 connection:connectionCopy, v15];
        objc_autoreleasePoolPop(v14);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_cancelBackupAndScanEnginesWithTimeout:(unint64_t)timeout completion:(id)completion
{
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000AED5C;
  v32 = sub_1000AED88;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000AED5C;
  v26 = sub_1000AED88;
  v27 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AED90;
  block[3] = &unk_1003BD6A8;
  v20 = &v28;
  v21 = &v22;
  block[4] = self;
  completionCopy = completion;
  v19 = completionCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v8 = v23[5];
  v23[5] = v7;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000AEF00;
  v12[3] = &unk_1003BD6D0;
  v14 = &v28;
  v15 = v34;
  v16 = &v22;
  timeoutCopy = timeout;
  v12[4] = self;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v12);
  v11 = v29[5];
  v29[5] = v10;

  dispatch_async(self->_stateQueue, v29[5]);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v34, 8);
}

- (void)_cancelBackupAndScanEnginesWithAccount:(id)account timeout:(unint64_t)timeout completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _cancelBackupAndScanEnginesWithAccount:timeout:completion:]", "MBCKManager.m", 4372, "account");
  }

  v10 = completionCopy;
  [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1000AED5C;
  v42 = sub_1000AED88;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000AED5C;
  v36 = sub_1000AED88;
  v37 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF5D4;
  block[3] = &unk_1003BD6A8;
  v11 = v30 = &v38;
  v28 = v11;
  v31 = &v32;
  v12 = v10;
  v29 = v12;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v14 = v33[5];
  v33[5] = v13;

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AF674;
  v19[3] = &unk_1003BD6F8;
  v25 = &v32;
  timeoutCopy = timeout;
  v20 = v11;
  selfCopy = self;
  v23 = &v38;
  v24 = v44;
  v22 = v12;
  v15 = v12;
  v16 = v11;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v19);
  v18 = v39[5];
  v39[5] = v17;

  dispatch_async(self->_stateQueue, v39[5]);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v44, 8);
}

- (BOOL)deleteAccountWithServiceAccount:(id)account error:(id *)error
{
  accountCopy = account;
  databaseManager = [(MBCKManager *)self databaseManager];
  if (!databaseManager)
  {
    __assert_rtn("[MBCKManager deleteAccountWithServiceAccount:error:]", "MBCKManager.m", 4428, "databaseManager");
  }

  v8 = databaseManager;
  v9 = +[MBCKOperationPolicy expensiveCellularPolicy];
  v10 = [v9 operationGroupWithName:@"deleteAccount" processName:0];
  if ([v8 resetDatabaseWithAccount:accountCopy policy:v9 operationGroup:v10 error:error])
  {
    v11 = +[MBLockdown connect];
    v12 = v11;
    if (v11)
    {
      v19 = 0;
      v13 = [v11 removeObjectWithDomain:@"com.apple.mobile.backup" andKey:@"LastCloudBackupDate" withError:&v19];
      v14 = v19;
      if ((v13 & 1) == 0)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to remove last backup date from lockdown: %@", buf, 0xCu);
          v18 = v14;
          _MBLog();
        }
      }
    }

    [v12 disconnect];
    v16 = [(MBCKManager *)self resetCacheWithAccount:accountCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_syncBackupEnabledWithAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _syncBackupEnabledWithAccount:connection:]", "MBCKManager.m", 4449, "serviceAccount");
  }

  v8 = connectionCopy;
  v25 = 0;
  v9 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:2 error:&v25];
  v10 = v25;
  if (v9)
  {
    v11 = +[MBCKOperationPolicy expensiveCellularPolicy];
    databaseManager = [(MBCKManager *)self databaseManager];
    v24 = v10;
    v13 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v11 error:&v24];
    v14 = v24;

    if (!v13)
    {
LABEL_15:

      v10 = v14;
      goto LABEL_16;
    }

    processName = [v8 processName];
    v16 = [v11 operationGroupWithName:@"syncBackupEnabled" processName:processName];
    [v13 setCkOperationGroup:v16];

    v23 = v14;
    v17 = [MBCKAccount fetchAccountWithOperationTracker:v13 cache:v9 error:&v23];
    v18 = v23;

    if (v17)
    {
      v22 = v18;
      v19 = [v17 fetchDevicesWithOperationTracker:v13 error:&v22];
      v14 = v22;

      if (!v19)
      {
LABEL_14:

        goto LABEL_15;
      }

      v20 = MBDeviceUUID();
      if ([v17 backupsDisabledFromAnotherDeviceForUUID:v20])
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Disabling backup because the backup for this device was deleted", buf, 2u);
          _MBLog();
        }

        [(MBCKManager *)self setBackupEnabled:0 account:accountCopy connection:v8];
      }
    }

    else
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
        _MBLog();
      }

      v14 = v18;
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (id)allRestrictedDomainNames:(id)names account:(id)account
{
  namesCopy = names;
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager allRestrictedDomainNames:account:]", "MBCKManager.m", 4481, "account");
  }

  v7 = accountCopy;
  isManagedAppleID = [accountCopy isManagedAppleID];
  v9 = objc_opt_new();
  allRestrictedDomainNames = [namesCopy allRestrictedDomainNames];
  if (allRestrictedDomainNames)
  {
    [v9 setSet:allRestrictedDomainNames];
  }

  if (isManagedAppleID)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Managed AppleID - restricting health related domains", buf, 2u);
      _MBLog();
    }

    v12 = MBGetHealthRelatedDomains();
    [v9 unionSet:v12];
  }

  v29 = allRestrictedDomainNames;
  v30 = namesCopy;
  context = objc_autoreleasePoolPush();
  v13 = +[MBRemoteConfiguration sharedInstance];
  v14 = [v13 valueForKey:@"ServerRestrictedDomains" account:v7];

  v15 = [v14 componentsSeparatedByString:@"|"];
  v16 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v23 = +[NSCharacterSet whitespaceCharacterSet];
        v24 = [v22 stringByTrimmingCharactersInSet:v23];
        [v16 addObject:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v19);
  }

  if ([v16 count])
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Server restricted domains: %@", buf, 0xCu);
      _MBLog();
    }

    [v9 unionSet:v16];
  }

  objc_autoreleasePoolPop(context);
  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Restricted domains: %@", buf, 0xCu);
    _MBLog();
  }

  return v9;
}

- (BOOL)isBackupEnabledForDomainName:(id)name account:(id)account
{
  accountCopy = account;
  nameCopy = name;
  v7 = +[MBAppManager appManager];
  persona = [accountCopy persona];

  LOBYTE(accountCopy) = [v7 isDomainNameEnabled:nameCopy forPersona:persona];
  return accountCopy;
}

- (id)disabledDomainInfosForAccount:(id)account
{
  accountCopy = account;
  v4 = +[MBAppManager appManager];
  persona = [accountCopy persona];
  v6 = [v4 allDisabledDomainNamesForPersona:persona];

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [MBDomainInfo alloc];
        v15 = [v14 initWithDomainName:v13 systemApp:0 remoteSize:0 localSize:0 enabled:0 restricted:{0, v17}];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (BOOL)removeDomainName:(id)name account:(id)account connection:(id)connection error:(id *)error
{
  nameCopy = name;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager removeDomainName:account:connection:error:]", "MBCKManager.m", 4533, "serviceAccount");
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100093324;
  v26 = sub_100093334;
  v27 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B0714;
  block[3] = &unk_1003BD720;
  block[4] = self;
  v18 = accountCopy;
  v20 = connectionCopy;
  v21 = &v22;
  v19 = nameCopy;
  v13 = connectionCopy;
  v14 = nameCopy;
  v15 = accountCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(stateQueue) = v23[5] == 0;

  _Block_object_dispose(&v22, 8);
  return stateQueue;
}

- (id)reservedBackupSizeListWithAccount:(id)account connection:(id)connection error:(id *)error
{
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager reservedBackupSizeListWithAccount:connection:error:]", "MBCKManager.m", 4567, "serviceAccount");
  }

  v10 = connectionCopy;
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetching quota reservations for all devices", buf, 2u);
    _MBLog();
  }

  v12 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v12)
  {
    v13 = +[MBCKOperationPolicy expensiveCellularPolicy];
    databaseManager = [(MBCKManager *)self databaseManager];
    v15 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v13 error:error];

    if (v15)
    {
      processName = [v10 processName];
      v17 = [v13 operationGroupWithName:@"getPendingSnapshotQuotaReserved" processName:processName];
      [v15 setCkOperationGroup:v17];

      v18 = [MBCKAccount fetchAccountWithOperationTracker:v15 cache:v12 error:error];
      v19 = v18;
      if (v18 && [v18 fetchDevicesWithOperationTracker:v15 error:error])
      {
        v31 = v13;
        v32 = v12;
        v33 = v10;
        v34 = accountCopy;
        v20 = objc_opt_new();
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        devicesByUUID = [v19 devicesByUUID];
        v22 = [devicesByUUID countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(devicesByUUID);
              }

              v26 = *(*(&v35 + 1) + 8 * i);
              devicesByUUID2 = [v19 devicesByUUID];
              v28 = [devicesByUUID2 objectForKeyedSubscript:v26];

              v29 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v28 pendingSnapshotQuotaReserved]);
              [v20 setObject:v29 forKeyedSubscript:v26];
            }

            v23 = [devicesByUUID countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v23);
        }

        v10 = v33;
        accountCopy = v34;
        v13 = v31;
        v12 = v32;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)pendingSnapshotForCurrentDeviceAndAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching pending snapshot for current device", buf, 2u);
    _MBLog();
  }

  v8 = objc_opt_new();
  databaseManager = [(MBCKManager *)self databaseManager];
  v10 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v8 error:error];

  if (!v10)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v11 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v11)
  {
    v12 = [MBCKAccount fetchAccountWithOperationTracker:v10 cache:v11 error:error];
    v13 = v12;
    if (!v12 || ![v12 fetchDevicesWithOperationTracker:v10 error:error])
    {
      v22 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v14 = MBDeviceUUID();
    devicesByUUID = [v13 devicesByUUID];
    v33 = v14;
    v16 = [devicesByUUID objectForKeyedSubscript:v14];

    if (v16)
    {
      pendingSnapshotRecordID = [v16 pendingSnapshotRecordID];

      if (pendingSnapshotRecordID)
      {
        pendingSnapshotRecordID2 = [v16 pendingSnapshotRecordID];
        v32 = [MBCKSnapshot snapshotIDFromSnapshotRecordID:pendingSnapshotRecordID2];

        v31 = [MBSnapshot alloc];
        deviceUUID = [v16 deviceUUID];
        pendingSnapshotFormat = [v16 pendingSnapshotFormat];
        deviceName = [v16 deviceName];
        pendingSnapshotBuildVersion = [v16 pendingSnapshotBuildVersion];
        pendingSnapshotQuotaReserved = [v16 pendingSnapshotQuotaReserved];
        pendingSnapshotType = [v16 pendingSnapshotType];
        pendingSnapshotBackupPolicy = [v16 pendingSnapshotBackupPolicy];
        persona = [accountCopy persona];
        BYTE4(v25) = 1;
        LODWORD(v25) = 2;
        v22 = [v31 initWithSnapshotID:0 backupUUID:deviceUUID snapshotUUID:v32 commitID:v32 format:pendingSnapshotFormat deviceName:deviceName date:0 created:0 modified:0 state:v25 isCompatible:@"N/A" systemVersion:pendingSnapshotBuildVersion buildVersion:pendingSnapshotQuotaReserved quotaReserved:pendingSnapshotType type:pendingSnapshotBackupPolicy backupPolicy:objc_msgSend(persona accountType:"accountType")];

LABEL_19:
        goto LABEL_20;
      }

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No pending snapshot found for %@", buf, 0xCu);
        _MBLog();
      }
    }

    else if (error)
    {
      [MBError errorWithCode:4 format:@"No device record found for %@", v14];
      *error = v22 = 0;
      goto LABEL_19;
    }

    v22 = 0;
    goto LABEL_19;
  }

  v22 = 0;
LABEL_21:

LABEL_22:

  return v22;
}

- (BOOL)countCameraRollQuota
{
  v3 = MBDeviceUDID_Legacy();
  LOBYTE(self) = [(MBCKManager *)self countCameraRollQuotaForBackupUDID:v3 error:0];

  return self;
}

- (BOOL)countCameraRollQuotaForBackupUDID:(id)d error:(id *)error
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NOTE: Counting camera roll against iCloud quota is an unsupported operation (no-op)", v6, 2u);
    _MBLog();
  }

  return 0;
}

- (BOOL)discountCameraRollQuotaWithAccount:(id)account connection:(id)connection error:(id *)error
{
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager discountCameraRollQuotaWithAccount:connection:error:]", "MBCKManager.m", 4654, "account");
  }

  v10 = connectionCopy;
  v11 = MBDeviceUUID();
  v12 = [(MBCKManager *)self discountCameraRollQuotaForBackupUDID:v11 account:accountCopy connection:v10 error:error];

  return v12;
}

- (BOOL)discountCameraRollQuotaForBackupUDID:(id)d account:(id)account connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  v14 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKManager *)self databaseManager];
  v16 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v14 error:error];

  if (v16)
  {
    processName = [connectionCopy processName];
    v18 = [v14 operationGroupWithName:@"discountCameraRollQuota" processName:processName];
    [v16 setCkOperationGroup:v18];

    v19 = +[MBDaemon sharedDaemon];
    [v19 holdWorkAssertion:a2];

    v20 = [(MBCKManager *)self _discountCameraRollQuotaForBackupUDID:dCopy account:accountCopy operationTracker:v16 error:error];
    v21 = +[MBDaemon sharedDaemon];
    [v21 releaseWorkAssertion:a2];
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

- (BOOL)_discountCameraRollQuotaForBackupUDID:(id)d account:(id)account operationTracker:(id)tracker error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  trackerCopy = tracker;
  if (!dCopy)
  {
    __assert_rtn("[MBCKManager _discountCameraRollQuotaForBackupUDID:account:operationTracker:error:]", "MBCKManager.m", 4676, "backupUDID");
  }

  v13 = trackerCopy;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKManager _discountCameraRollQuotaForBackupUDID:account:operationTracker:error:]", "MBCKManager.m", 4677, "tracker");
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not counting camera roll against iCloud quota, backupUDID:%@", &buf, 0xCu);
    v49 = dCopy;
    _MBLog();
  }

  v15 = [(MBCKManager *)self openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v15)
  {
    v61 = 0;
    v16 = [MBCKAccount fetchAccountWithOperationTracker:v13 cache:v15 error:&v61];
    v17 = v61;
    v18 = v17;
    if (v16)
    {
      v60 = v17;
      v19 = [v16 fetchDevicesWithOperationTracker:v13 error:&v60];
      v20 = v60;

      if (v19)
      {
        v56 = dCopy;
        v21 = MBDeviceUDID_Legacy();
        v22 = [v56 isEqualToString:v21];

        if (v22)
        {
          v23 = MBDeviceUUID();

          v56 = v23;
        }

        devicesByUUID = [v16 devicesByUUID];
        v55 = [devicesByUUID objectForKeyedSubscript:v56];

        if (!v55)
        {
          persona = [accountCopy persona];
          [persona setPreferencesValue:0 forKey:@"HasDeferredDiscountingQuota"];

          v40 = MBGetDefaultLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "No device record found to discount camera roll quota for", &buf, 2u);
            _MBLog();
          }

          v31 = 1;
          goto LABEL_52;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v65 = 0x3032000000;
        v66 = sub_100093324;
        v67 = sub_100093334;
        v68 = 0;
        hmacKey = [v55 hmacKey];
        v54 = [MBCKManifest domainHmac:@"CameraRollDomain" key:hmacKey];

        v26 = dispatch_semaphore_create(0);
        v53 = [MBCKEnableCameraRollGraceRequest requestWithDevice:v55 domainHMAC:v54];
        recordRepresentation = [v53 recordRepresentation];
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_1000B1D04;
        v57[3] = &unk_1003BD748;
        p_buf = &buf;
        v52 = v26;
        v58 = v52;
        [v13 saveRecord:recordRepresentation delegate:0 completion:v57];

        MBSemaphoreWaitForever();
        if (*(*(&buf + 1) + 40))
        {
          if ([MBRetryStrategy couldRetryError:?])
          {
            persona2 = [accountCopy persona];
            [persona2 setPreferencesValue:&__kCFBooleanTrue forKey:@"HasDeferredDiscountingQuota"];

            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = *(*(&buf + 1) + 40);
              *v62 = 138412290;
              v63 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Deferring camera roll discount after receiving retryable error: %@", v62, 0xCu);
              v50 = *(*(&buf + 1) + 40);
              _MBLog();
            }
          }

          else
          {
            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v46 = *(*(&buf + 1) + 40);
              *v62 = 138412290;
              v63 = v46;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to discount camera roll from iCloud quota: %@", v62, 0xCu);
              v51 = *(*(&buf + 1) + 40);
              _MBLog();
            }
          }

          if (error)
          {
            v45 = *(*(&buf + 1) + 40);
            goto LABEL_48;
          }
        }

        else
        {
          debugContext = [(MBCKManager *)self debugContext];
          v43 = [debugContext isFlagSet:@"SimulateErrorDiscountingCameraRollQuota"];

          if (!v43)
          {
            persona3 = [accountCopy persona];
            [persona3 setPreferencesValue:0 forKey:@"HasDeferredDiscountingQuota"];

            v31 = 1;
            goto LABEL_51;
          }

          persona4 = [accountCopy persona];
          [persona4 setPreferencesValue:&__kCFBooleanTrue forKey:@"HasDeferredDiscountingQuota"];

          if (error)
          {
            v45 = [MBError errorWithCode:555 format:@"Simulated error discounting camera roll quota"];
LABEL_48:
            v31 = 0;
            *error = v45;
LABEL_51:

            _Block_object_dispose(&buf, 8);
LABEL_52:

LABEL_53:
            v18 = v20;
LABEL_54:

            goto LABEL_55;
          }
        }

        v31 = 0;
        goto LABEL_51;
      }

      if ([MBRetryStrategy couldRetryError:v20])
      {
        persona5 = [accountCopy persona];
        [persona5 setPreferencesValue:&__kCFBooleanTrue forKey:@"HasDeferredDiscountingQuota"];

        v35 = MBGetDefaultLog();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Deferring camera roll discount after failing to fetch device records: %@", &buf, 0xCu);
      }

      else
      {
        v35 = MBGetDefaultLog();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to fetch devices when trying to discount camera roll quota: %@", &buf, 0xCu);
      }

      _MBLog();
LABEL_29:

      if (error)
      {
        v38 = v20;
        v31 = 0;
        *error = v20;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_53;
    }

    if ([MBError isError:v17 withCode:204])
    {
      persona6 = [accountCopy persona];
      [persona6 setPreferencesValue:0 forKey:@"HasDeferredDiscountingQuota"];

      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No account record found to discount camera roll quota for", &buf, 2u);
        _MBLog();
      }

      v31 = 1;
      goto LABEL_54;
    }

    if ([MBRetryStrategy couldRetryError:v18])
    {
      persona7 = [accountCopy persona];
      [persona7 setPreferencesValue:&__kCFBooleanTrue forKey:@"HasDeferredDiscountingQuota"];

      v37 = MBGetDefaultLog();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Deferring camera roll discount after failing to fetching account record: %@", &buf, 0xCu);
    }

    else
    {
      v37 = MBGetDefaultLog();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to fetch account when trying to discount camera roll quota: %@", &buf, 0xCu);
    }

    _MBLog();
LABEL_38:

    if (error)
    {
      v41 = v18;
      v31 = 0;
      *error = v18;
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_54;
  }

  v31 = 0;
LABEL_55:

  return v31;
}

- (BOOL)wasBackupEnabledForMegaBackup:(id)backup
{
  v7 = 0;
  persona = [backup persona];
  v4 = [persona getBooleanValueForKey:@"BackupEnabledForMegaBackup" keyExists:&v7];

  if (v4)
  {
    v5 = v7 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (BOOL)_isMegaBackupMode
{
  v7 = 0;
  account = [(MBServiceManager *)self account];
  persona = [account persona];
  v4 = [persona getBooleanValueForKey:@"IsMegaBackupMode" keyExists:&v7];

  if (v4)
  {
    v5 = v7 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (BOOL)_isInitialMegaBackupCompleted
{
  v7 = 0;
  account = [(MBServiceManager *)self account];
  persona = [account persona];
  v4 = [persona getBooleanValueForKey:@"IsInitialMegaBackupModeCompleted" keyExists:&v7];

  if (v4)
  {
    v5 = v7 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (id)_megaBackupExpirationDate
{
  account = [(MBServiceManager *)self account];
  persona = [account persona];
  v4 = [persona copyPreferencesValueForKey:@"MegaBackupModeExpirationDate" class:objc_opt_class()];

  return v4;
}

- (void)_setMegaBackupExpirationDate:(id)date account:(id)account
{
  dateCopy = date;
  accountCopy = account;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = dateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setMegaBackupExpirationDate: %{public}@", buf, 0xCu);
    _MBLog();
  }

  persona = [accountCopy persona];
  [persona setPreferencesValue:dateCopy forKey:@"MegaBackupModeExpirationDate"];

  prebuddyFollowUpController = [(MBCKManager *)self prebuddyFollowUpController];
  [prebuddyFollowUpController setMegaBackupExpirationDate:dateCopy];

  [(MBCKManager *)self updatePrebuddyFollowUp:accountCopy];
}

- (id)_defaultMegaBackupExpirationDate
{
  v2 = +[NSDate date];
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:21 toDate:v2 options:0];

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Default mega backup expiration date: %{public}@", buf, 0xCu);
    _MBLog();
  }

  return v4;
}

- (void)_updateMegaBackupStatus:(int64_t)status account:(id)account
{
  accountCopy = account;
  if (!status)
  {
    _defaultMegaBackupExpirationDate = [(MBCKManager *)self _defaultMegaBackupExpirationDate];
    [(MBCKManager *)self _setMegaBackupExpirationDate:_defaultMegaBackupExpirationDate account:accountCopy];
  }

  if ([(MBCKManager *)self isPrebuddyMode])
  {
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      statusCopy = status;
      v26 = 2112;
      v27 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating Mega Backup Status (%ld): %@", buf, 0x16u);
      _MBLog();
    }

    v11 = +[ACAccountStore defaultStore];
    accountIdentifier = [accountCopy accountIdentifier];
    v13 = [v11 accountWithIdentifier:accountIdentifier];

    v14 = MBDeviceUUID();
    mb_backupIDByAddingCKPrefix = [v14 mb_backupIDByAddingCKPrefix];

    v16 = objc_alloc_init(_ICQMegaBackupManager);
    quotaManagerQueue = self->_quotaManagerQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B2688;
    v19[3] = &unk_1003BD770;
    v20 = uUIDString;
    selfCopy = self;
    v22 = accountCopy;
    statusCopy2 = status;
    v18 = uUIDString;
    [v16 updateMegaBackupStatusForAccount:v13 deviceBackupUUID:mb_backupIDByAddingCKPrefix status:status queue:quotaManagerQueue completion:v19];
  }
}

- (void)signalPrebuddy:(id)prebuddy account:(id)account
{
  prebuddyFollowUpController = self->_prebuddyFollowUpController;
  accountCopy = account;
  [(MBPrebuddyFollowUpController *)prebuddyFollowUpController startFollowup:prebuddy];
  persona = [accountCopy persona];
  [persona setPreferencesValue:&off_1003E0D68 forKey:@"MegaBackupEntryPoint"];

  persona2 = [accountCopy persona];
  v9 = +[NSDate now];
  [persona2 setPreferencesValue:v9 forKey:@"MegaBackupFlowStartDate"];

  [(MBCKManager *)self submitMegaLifeCycleTelemetriesWithAccount:accountCopy];
}

- (BOOL)isPrebuddyMode
{
  v7 = 0;
  account = [(MBServiceManager *)self account];
  persona = [account persona];
  v4 = [persona getBooleanValueForKey:@"IsPrebuddyMode" keyExists:&v7];

  if (v4)
  {
    v5 = v7 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)saveBackupEnabledForMegaBackup
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving backup enabled for mega backup.", v6, 2u);
    _MBLog();
  }

  account = [(MBServiceManager *)self account];
  persona = [account persona];
  [persona setPreferencesValue:&__kCFBooleanTrue forKey:@"BackupEnabledForMegaBackup"];
}

- (void)saveSyncSettingsEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = backupCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving sync settings enabled for mega backup: %@", buf, 0xCu);
    _MBLog();
  }

  account = [(MBServiceManager *)self account];
  persona = [account persona];
  [persona setPreferencesValue:backupCopy forKey:@"SyncSettingsEnabledForMegaBackup"];
}

- (void)beginPrebuddyBackupWithAccount:(id)account connection:(id)connection fromManualSignal:(BOOL)signal
{
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager beginPrebuddyBackupWithAccount:connection:fromManualSignal:]", "MBCKManager.m", 4886, "account");
  }

  v9 = connectionCopy;
  [(MBCKManager *)self setPrebuddyMode:1];
  v10 = objc_opt_new();
  [v10 setBackupPolicy:1];
  v15 = 0;
  v11 = [(MBCKManager *)self startBackupWithOptions:v10 reason:1 xpcActivity:0 account:accountCopy connection:v9 error:&v15];
  v12 = v15;
  if (v11)
  {
    prebuddyFollowUpController = self->_prebuddyFollowUpController;
    v14 = [(MBCKManager *)self backupStateInfoForInitialMegaBackup:1 account:accountCopy];
    [(MBPrebuddyFollowUpController *)prebuddyFollowUpController updateFollowupWithBackupProgress:v14 account:accountCopy];
  }
}

- (void)saveBackupDomainsEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(backupCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = backupCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        domainName = [*(*(&v15 + 1) + 8 * v10) domainName];
        [v5 addObject:domainName];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving backup domains enabled for mega backup: %@", buf, 0xCu);
    _MBLog();
  }

  account = [(MBServiceManager *)self account];
  persona = [account persona];
  [persona setPreferencesValue:v5 forKey:@"BackupDomainsEnabledForMegaBackup"];
}

- (BOOL)restorePreviousSettingsEnabledForMegaBackup:(id)backup error:(id *)error
{
  backupCopy = backup;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restoring previous settings enabled for mega backup.", v10, 2u);
    _MBLog();
  }

  [(MBCKManager *)self _restoreBackupEnabledForMegaBackup:backupCopy];
  v8 = [(MBCKManager *)self _restoreSyncSettingsEnabledForMegaBackup:error];
  [(MBCKManager *)self _restoreBackupDomainsEnabledForMegaBackup:backupCopy];

  [(MBCKManager *)self _clearPreferencesForRestoringSettingsEnabledForMegaBackup];
  return v8;
}

- (void)_restoreBackupEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  v9 = 0;
  persona = [backupCopy persona];
  v6 = [persona getBooleanValueForKey:@"BackupEnabledForMegaBackup" keyExists:&v9];

  if (v9)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = backupCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restoring backup enabled setting that was previously enabled for mega backup: %@", buf, 0xCu);
      _MBLog();
    }

    [(MBCKManager *)self setBackupEnabled:0 account:backupCopy connection:0];
  }
}

- (BOOL)_restoreSyncSettingsEnabledForMegaBackup:(id *)backup
{
  if (!backup)
  {
    __assert_rtn("[MBCKManager _restoreSyncSettingsEnabledForMegaBackup:]", "MBCKManager.m", 4940, "error != nil");
  }

  account = [(MBServiceManager *)self account];
  persona = [account persona];
  v7 = [persona copyPreferencesValueForKey:@"SyncSettingsEnabledForMegaBackup" class:objc_opt_class()];

  if (v7)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restoring sync settings enabled for mega backup: %@", &buf, 0xCu);
      v24 = v7;
      _MBLog();
    }

    v9 = +[ACAccountStore defaultStore];
    aa_primaryAppleAccount = [v9 aa_primaryAppleAccount];
    if (aa_primaryAppleAccount)
    {
      v11 = dispatch_group_create();
      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v53 = 1;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v56 = 0x3032000000;
      v57 = sub_100093324;
      v58 = sub_100093334;
      v59 = 0;
      if ([v7 containsObject:ACAccountDataclassKeychainSync])
      {
        dispatch_group_enter(v11);
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1000B375C;
        v46[3] = &unk_1003BD798;
        v48 = &v50;
        p_buf = &buf;
        v47 = v11;
        [(MBCKManager *)self _disableKeychainSync:v46];
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v13)
      {
        v14 = *v43;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(v12);
            }

            [aa_primaryAppleAccount setEnabled:0 forDataclass:{*(*(&v42 + 1) + 8 * i), v24}];
          }

          v13 = [v12 countByEnumeratingWithState:&v42 objects:v54 count:16];
        }

        while (v13);
      }

      v41 = 0;
      v16 = [v9 dataclassActionsForAccountSave:aa_primaryAppleAccount error:&v41];
      v17 = v41;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000B37CC;
      v39[3] = &unk_1003BD7C0;
      v18 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
      v40 = v18;
      [v16 enumerateKeysAndObjectsUsingBlock:v39];
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_100093324;
      v33 = sub_100093334;
      v34 = 0;
      dispatch_group_enter(v11);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000B3860;
      v25[3] = &unk_1003BD798;
      v27 = &v35;
      v28 = &v29;
      v19 = v11;
      v26 = v19;
      [v9 saveAccount:aa_primaryAppleAccount withDataclassActions:v18 completion:v25];
      dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      v20 = *(*(&buf + 1) + 40);
      if (v20)
      {
        *backup = v20;
      }

      v21 = v30[5];
      if (v21)
      {
        *backup = v21;
      }

      if (*(v51 + 24) == 1)
      {
        v22 = *(v36 + 24);
      }

      else
      {
        v22 = 0;
      }

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v35, 8);

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(&v50, 8);
    }

    else
    {
      [MBError errorWithCode:1 format:@"Couldn't get the Apple Account."];
      *backup = v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  return v22 & 1;
}

- (void)_disableKeychainSync:(id)sync
{
  syncCopy = sync;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling Keychain Sync.", buf, 2u);
    _MBLog();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3AA4;
  v6[3] = &unk_1003BD7E8;
  v7 = syncCopy;
  v5 = syncCopy;
  [CDPKeychainSync setUserVisibleKeychainSyncEnabled:0 withCompletion:v6];
}

- (void)_restoreBackupDomainsEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  account = [(MBServiceManager *)self account];
  persona = [account persona];
  v7 = [persona copyPreferencesValueForKey:@"BackupDomainsEnabledForMegaBackup" class:objc_opt_class()];

  if (v7)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = backupCopy;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restoring backup domains enabled for mega backup: %@, domainNames: %@", buf, 0x16u);
      v14 = backupCopy;
      v15 = v7;
      _MBLog();
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(MBCKManager *)self setBackupEnabled:0 forDomainName:*(*(&v16 + 1) + 8 * v13) account:backupCopy, v14, v15, v16];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)_clearPreferencesForRestoringSettingsEnabledForMegaBackup
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting preferences for restoring settings enabled for mega backup", buf, 2u);
    _MBLog();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&off_1003E1FE8 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&off_1003E1FE8);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        account = [(MBServiceManager *)self account];
        persona = [account persona];
        [persona setPreferencesValue:0 forKey:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_1003E1FE8 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_clearMegaBackupTelemetries
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting preferences for mega backup telemetries", buf, 2u);
    _MBLog();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&off_1003E2000 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&off_1003E2000);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        account = [(MBServiceManager *)self account];
        persona = [account persona];
        [persona setPreferencesValue:0 forKey:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_1003E2000 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)clearPrebuddyWithAccount:(id)account accountSignOut:(BOOL)out
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager clearPrebuddyWithAccount:accountSignOut:]", "MBCKManager.m", 5047, "account");
  }

  v7 = accountCopy;
  [(MBCKManager *)self exitMegaBackupModeWithAccount:accountCopy];
  if (!out)
  {
    v8 = dispatch_get_global_queue(9, 0);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000B4214;
    v15 = &unk_1003BC060;
    selfCopy = self;
    v17 = v7;
    dispatch_async(v8, &v12);
  }

  v9 = [(MBCKManager *)self prebuddyFollowUpTimer:v12];

  if (v9)
  {
    prebuddyFollowUpTimer = [(MBCKManager *)self prebuddyFollowUpTimer];
    [prebuddyFollowUpTimer invalidate];

    [(MBCKManager *)self setPrebuddyFollowUpTimer:0];
  }

  [(MBCKManager *)self _clearPreferencesForRestoringSettingsEnabledForMegaBackup];
  [(MBCKManager *)self _clearMegaBackupTelemetries];
  [(MBCKManager *)self setPrebuddyMode:0];
  prebuddyFollowUpController = [(MBCKManager *)self prebuddyFollowUpController];
  [prebuddyFollowUpController reset];
}

- (void)exitMegaBackupModeWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager exitMegaBackupModeWithAccount:]", "MBCKManager.m", 5072, "account");
  }

  v5 = accountCopy;
  v6 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Exiting Mega Backup Mode: %@", buf, 0xCu);
    _MBLog();
  }

  [v6 setInitialMegaBackup:0];
  persona = [v5 persona];
  [persona setPreferencesValue:0 forKey:@"InitialMegaBackupInfo"];

  [(MBCKManager *)self _setIsInitialMegaBackupCompleted:0];
  [(MBCKManager *)self _setMegaBackupMode:0];
  [(MBCKManager *)self _clearMegaBackupTelemetries];
  prebuddyFollowUpController = [(MBCKManager *)self prebuddyFollowUpController];
  [prebuddyFollowUpController reset];
}

- (BOOL)_refreshLockdownLastBackupDateWithAccount:(id)account
{
  accountCopy = account;
  v5 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKManager *)self databaseManager];
  v32 = 0;
  v7 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v5 error:&v32];
  v8 = v32;

  if (v7)
  {
    v9 = [v5 operationGroupWithName:@"refreshLockdownLastBackupDate" processName:0];
    [v7 setCkOperationGroup:v9];

    v10 = [MBCKDevice alloc];
    v11 = MBDeviceUUID();
    v12 = -[MBCKDevice initWithUUID:cache:backupEnabled:](v10, "initWithUUID:cache:backupEnabled:", v11, 0, [accountCopy isEnabledForBackup]);

    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = sub_100093324;
    v38 = sub_100093334;
    v39 = 0;
    v13 = dispatch_semaphore_create(0);
    recordID = [(MBCKModel *)v12 recordID];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B4998;
    v28[3] = &unk_1003BD810;
    v15 = v12;
    v29 = v15;
    p_buf = &buf;
    v16 = v13;
    v30 = v16;
    [v7 fetchRecordWithID:recordID completion:v28];

    MBSemaphoreWaitForever();
    if (*(*(&buf + 1) + 40))
    {
      v17 = 0;
    }

    else
    {
      dateOfLastBackup = [v15 dateOfLastBackup];
      if (dateOfLastBackup)
      {
        v19 = +[MBLockdown connect];
        if (v19)
        {
          [dateOfLastBackup timeIntervalSinceReferenceDate];
          v20 = [NSNumber numberWithDouble:?];
          v27 = 0;
          v21 = [v19 setObject:v20 forDomain:@"com.apple.mobile.backup" andKey:@"LastCloudBackupDate" withError:&v27];
          v26 = v27;

          if (v21)
          {
            [v19 disconnect];
            v22 = MBGetDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *v33 = 138412290;
              v34 = dateOfLastBackup;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully refreshed lockdown last backup date key to: %@", v33, 0xCu);
              _MBLog();
            }

            v17 = 1;
          }

          else
          {
            v24 = MBGetDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v33 = 138412290;
              v34 = v26;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to set lockdown last backup date key: %@", v33, 0xCu);
              _MBLog();
            }

            [v19 disconnect];
            v17 = 0;
          }

          v23 = v26;
        }

        else
        {
          v23 = MBGetDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to connect to lockdown to set last backup date key", v33, 2u);
            _MBLog();
          }

          v17 = 0;
        }
      }

      else
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to refresh lockdown last backup date key because of nil date in device record", v33, 2u);
          _MBLog();
        }

        v17 = 0;
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to refresh last backup date from server: %@", &buf, 0xCu);
      _MBLog();
    }

    v17 = 0;
  }

  return v17;
}

- (void)prebuddyBackupDeletedWithAccount:(id)account
{
  [(MBCKManager *)self exitMegaBackupModeWithAccount:account];

  [(MBCKManager *)self setPrebuddyMode:0];
}

- (BOOL)requestMegaBackupExpirationDate:(id)date account:(id)account error:(id *)error
{
  dateCopy = date;
  accountCopy = account;
  if (!error)
  {
    __assert_rtn("[MBCKManager requestMegaBackupExpirationDate:account:error:]", "MBCKManager.m", 5141, "error != nil");
  }

  v10 = accountCopy;
  v11 = +[ACAccountStore defaultStore];
  altDSID = [v10 altDSID];
  v13 = [v11 aa_appleAccountWithAltDSID:altDSID];

  if (v13)
  {
    v14 = MBDeviceUUID();
    mb_backupIDByAddingCKPrefix = [v14 mb_backupIDByAddingCKPrefix];

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_100093324;
    v32 = sub_100093334;
    v33 = 0;
    v16 = dispatch_semaphore_create(0);
    v17 = objc_alloc_init(_ICQMegaBackupManager);
    quotaManagerQueue = self->_quotaManagerQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B4DD4;
    v22[3] = &unk_1003BD838;
    v26 = &v28;
    v22[4] = self;
    v23 = v10;
    v27 = &v34;
    v24 = dateCopy;
    v19 = v16;
    v25 = v19;
    [v17 extendExpirationForAccount:v13 deviceBackupUUID:mb_backupIDByAddingCKPrefix requestedExpirationDate:v24 queue:quotaManagerQueue completion:v22];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    *error = v29[5];
    v20 = *(v35 + 24);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    [MBError errorWithCode:1 format:@"Couldn't get account for service account: %@", v10];
    *error = v20 = 0;
  }

  return v20 & 1;
}

- (void)updateMegaBackupExpirationDate:(id)date account:(id)account
{
  if (date)
  {

    [MBCKManager _setMegaBackupExpirationDate:"_setMegaBackupExpirationDate:account:" account:?];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot update with a nil mega backup expiration date.", v7, 2u);
      _MBLog();
    }
  }
}

- (void)updatePrebuddyFollowUp:(id)up
{
  upCopy = up;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  if ([(MBCKManager *)self isPrebuddyMode]&& [(MBCKManager *)self _isMegaBackupMode])
  {
    prebuddyFollowUpController = [(MBCKManager *)self prebuddyFollowUpController];
    v5 = [(MBCKManager *)self backupStateInfoForInitialMegaBackup:1 account:upCopy];
    [prebuddyFollowUpController updateFollowupWithBackupProgress:v5 account:upCopy];
  }
}

- (void)userLanguageDidChange
{
  v3 = [MBServiceAccount alloc];
  v4 = +[UMUserPersona currentPersona];
  v9 = 0;
  v5 = [(MBServiceAccount *)v3 initWithPersona:v4 error:&v9];
  v6 = v9;

  if (!v5)
  {
    prebuddyFollowUpController2 = MBGetDefaultLog();
    if (os_log_type_enabled(prebuddyFollowUpController2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, prebuddyFollowUpController2, OS_LOG_TYPE_ERROR, "Unable to get account to update prebuddy follow up: %@", buf, 0xCu);
      _MBLog();
    }

    goto LABEL_8;
  }

  if (![(MBCKManager *)self isPrebuddyMode])
  {
    if (!+[MBPrebuddyManager hasPrebuddyFollowUp])
    {
      goto LABEL_9;
    }

    prebuddyFollowUpController = [(MBCKManager *)self prebuddyFollowUpController];
    [prebuddyFollowUpController reset];

    prebuddyFollowUpController2 = [(MBCKManager *)self prebuddyFollowUpController];
    [prebuddyFollowUpController2 startFollowup:&__NSDictionary0__struct];
LABEL_8:

    goto LABEL_9;
  }

  [(MBCKManager *)self updatePrebuddyFollowUp:v5];
LABEL_9:
}

- (void)_deviceIsLockingWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _deviceIsLockingWithAccount:]", "MBCKManager.m", 5219, "account");
  }

  v6 = accountCopy;
  v7 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  v8 = os_transaction_create();
  v9 = +[MBDaemon sharedDaemon];
  [v9 holdWorkAssertion:a2];

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B52DC;
  block[3] = &unk_1003BD018;
  v15 = v7;
  v16 = v6;
  v18 = v8;
  v19 = a2;
  selfCopy = self;
  v11 = v8;
  v12 = v6;
  v13 = v7;
  dispatch_async(stateQueue, block);
}

- (void)deviceIsLocking
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Device is locking", buf, 2u);
    _MBLog();
  }

  v4 = +[MBServiceAccount allServiceAccounts];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MBCKManager *)self _deviceIsLockingWithAccount:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)deviceIsUnlockedWithAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKManager deviceIsUnlockedWithAccount:completion:]", "MBCKManager.m", 5255, "completion");
  }

  v9 = completionCopy;
  v10 = os_transaction_create();
  v24 = a2;
  v11 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  persona = [accountCopy persona];
  v13 = dispatch_group_create();
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B59BC;
  block[3] = &unk_1003BC5B8;
  v33 = v11;
  v15 = accountCopy;
  v34 = v15;
  v35 = persona;
  v16 = v10;
  v36 = v16;
  v17 = persona;
  v18 = v11;
  dispatch_group_async(v13, stateQueue, block);
  v19 = +[MBDaemon sharedDaemon];
  [v19 holdWorkAssertion:v24];

  v20 = dispatch_get_global_queue(17, 0);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B5B20;
  v29[3] = &unk_1003BC060;
  v30 = v15;
  selfCopy = self;
  v21 = v15;
  dispatch_group_async(v13, v20, v29);

  [v17 setPreferencesValue:&__kCFBooleanFalse forKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B5B6C;
  v25[3] = &unk_1003BD860;
  v27 = v9;
  v28 = v24;
  v26 = v16;
  v22 = v16;
  v23 = v9;
  dispatch_group_notify(v13, v20, v25);
}

- (void)deviceIsUnlocked
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Device is unlocked", buf, 2u);
    _MBLog();
  }

  v4 = +[MBServiceAccount allServiceAccounts];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        buf[0] = 0;
        persona = [v9 persona];
        v11 = [persona getBooleanValueForKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked" keyExists:buf];

        if (buf[0] && v11)
        {
          [(MBCKManager *)self deviceIsUnlockedWithAccount:v9 completion:&stru_1003BD880];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_updateLockdownKeysForAccountState:(id)state
{
  v24 = 0;
  stateCopy = state;
  persona = [stateCopy persona];
  v5 = [persona getBooleanValueForKey:@"AllowiTunesBackup" keyExists:&v24];

  LODWORD(persona) = v24;
  isEnabled = [stateCopy isEnabled];

  v7 = +[MBLockdown connect];
  if (persona && v5)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing cloud backup lockdown key because the iTunes backup pref is set", buf, 2u);
      _MBLog();
    }

    isEnabled = 0;
  }

  v9 = [v7 objectForDomain:@"com.apple.mobile.backup" andKey:@"CloudBackupEnabled"];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = @"CloudBackupEnabled";
    v27 = 2112;
    v28 = v9;
    v29 = 1024;
    v30 = isEnabled;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ was %@, setting it to %d", buf, 0x1Cu);
    v20 = v9;
    v21 = isEnabled;
    v19 = @"CloudBackupEnabled";
    _MBLog();
  }

  v11 = [NSNumber numberWithBool:isEnabled];
  v23 = 0;
  v12 = [v7 setObject:v11 forDomain:@"com.apple.mobile.backup" andKey:@"CloudBackupEnabled" withError:&v23];
  v13 = v23;

  if ((v12 & 1) == 0)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error setting lockdown cloud backup enabled key: %@", buf, 0xCu);
      v19 = v13;
      _MBLog();
    }
  }

  if ((isEnabled & 1) == 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Clearing last backup date from lockdown", buf, 2u);
      _MBLog();
    }

    v22 = 0;
    v16 = [v7 removeObjectWithDomain:@"com.apple.mobile.backup" andKey:@"LastCloudBackupDate" withError:&v22];
    v17 = v22;
    if ((v16 & 1) == 0)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to remove last backup date from lockdown: %@", buf, 0xCu);
        v19 = v17;
        _MBLog();
      }
    }
  }

  [v7 disconnect];
}

- (void)_handleAccountAvailable
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = os_transaction_create();
  +[MBServiceAccount allServiceAccounts];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v8)];
        serviceState = [v9 serviceState];

        if (serviceState == 5)
        {

          if ((atomic_exchange(&self->_pendingAccountAvailableHandler, 1u) & 1) == 0)
          {
            v11 = MBGetDefaultLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Account became available during background restore - retrying pending downloads if necessary", buf, 2u);
              _MBLog();
            }

            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_1000B6368;
            v12[3] = &unk_1003BD2F0;
            v12[4] = self;
            v13 = v3;
            [(MBCKManager *)self fetchNetworkConnectivityWithBlock:v12];
          }

          goto LABEL_14;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  v6 = os_transaction_create();
  stateQueue = self->_stateQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B6490;
  v10[3] = &unk_1003BD8C8;
  v11 = changedCopy;
  selfCopy = self;
  v13 = v6;
  v14 = a2;
  v8 = v6;
  v9 = changedCopy;
  dispatch_sync(stateQueue, v10);
}

- (void)lockManagerDidReleaseLock:(id)lock
{
  lockCopy = lock;
  account = [lockCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKManager lockManagerDidReleaseLock:]", "MBCKManager.m", 5550, "account");
  }

  v7 = account;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [v7 accountIdentifier];
    persona = [v7 persona];
    personaIdentifier = [persona personaIdentifier];
    *buf = 138543618;
    v21 = accountIdentifier;
    v22 = 2114;
    v23 = personaIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "-lockManagerDidReleaseLock called for account %{public}@(%{public}@)", buf, 0x16u);

    accountIdentifier2 = [v7 accountIdentifier];
    persona2 = [v7 persona];
    personaIdentifier2 = [persona2 personaIdentifier];
    _MBLog();
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B7B2C;
  block[3] = &unk_1003BDB10;
  block[4] = self;
  v18 = v7;
  v19 = a2;
  v15 = v7;
  dispatch_async(stateQueue, block);
}

- (void)lockManager:(id)manager failedToReleaseLockWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  account = [managerCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKManager lockManager:failedToReleaseLockWithError:]", "MBCKManager.m", 5564, "account");
  }

  v10 = account;
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [v10 accountIdentifier];
    persona = [v10 persona];
    personaIdentifier = [persona personaIdentifier];
    *buf = 138543874;
    v24 = accountIdentifier;
    v25 = 2114;
    v26 = personaIdentifier;
    v27 = 2114;
    v28 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "-lockManager:failedToReleaseLockWithError: called for account %{public}@(%{public}@): %{public}@", buf, 0x20u);

    accountIdentifier2 = [v10 accountIdentifier];
    persona2 = [v10 persona];
    personaIdentifier2 = [persona2 personaIdentifier];
    _MBLog();
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B7D6C;
  block[3] = &unk_1003BDB10;
  block[4] = self;
  v21 = v10;
  v22 = a2;
  v18 = v10;
  dispatch_async(stateQueue, block);
}

- (id)fetchPluginFieldsForLockManger:(id)manger
{
  mangerCopy = manger;
  if (!mangerCopy)
  {
    __assert_rtn("[MBCKManager fetchPluginFieldsForLockManger:]", "MBCKManager.m", 5578, "lockManager");
  }

  v5 = mangerCopy;
  account = [mangerCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKManager fetchPluginFieldsForLockManger:]", "MBCKManager.m", 5580, "account");
  }

  v7 = account;
  persona = [account persona];
  if (!persona)
  {
    __assert_rtn("[MBCKManager fetchPluginFieldsForLockManger:]", "MBCKManager.m", 5582, "persona");
  }

  v9 = persona;
  v84 = v7;
  v81 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v7];
  finishedAppRestores = [v81 finishedAppRestores];
  airTrafficDidFinishRestore = [(MBCKManager *)self airTrafficDidFinishRestore];
  v12 = BYSetupAssistantNeedsToRun();
  v13 = [MBRestoreCloudFormatPolicy snapshotFormatForCurrentRestore:v9];
  v118 = 0;
  v117 = 0;
  v83 = v9;
  LOBYTE(v9) = [MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v118 persona:v9 error:&v117];
  v14 = v117;
  if ((v9 & 1) == 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v122 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Failed to determine if restoring from file lists: %@", buf, 0xCu);
      v76 = v14;
      _MBLog();
    }
  }

  v80 = v14;
  v104 = [NSMutableDictionary alloc];
  v132[0] = @"appRestoreComplete";
  v16 = MBError_ptr;
  v17 = [NSNumber numberWithBool:finishedAppRestores];
  v133[0] = v17;
  v132[1] = @"atRestoreComplete";
  v18 = [NSNumber numberWithBool:airTrafficDidFinishRestore];
  v133[1] = v18;
  v132[2] = @"setupAssistantFinished";
  v19 = [NSNumber numberWithBool:v12 ^ 1u];
  v133[2] = v19;
  v132[3] = @"thermalPressureLevel";
  thermalPressureMonitor = [v5 thermalPressureMonitor];
  v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [thermalPressureMonitor thermalPressureLevel]);
  v133[3] = v21;
  v132[4] = @"snapshotUUID";
  v82 = v5;
  snapshotUUID = [v5 snapshotUUID];
  v133[4] = snapshotUUID;
  v132[5] = @"snapshotFormat";
  v23 = [NSNumber numberWithLongLong:v13];
  v133[5] = v23;
  v132[6] = @"isRestoringWithFileLists";
  v24 = [NSNumber numberWithBool:v118];
  v133[6] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:7];
  v85 = [v104 initWithDictionary:v25];

  v26 = v84;
  v27 = v83;
  if ([v84 isPrimaryAccount])
  {
    v28 = objc_opt_new();
    v29 = [ATSession sessionsWithSessionTypeIdentifier:ATSessionTypeRestore];
    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v29 count]);
    [v85 setObject:v30 forKeyedSubscript:@"atRestoreSessionsCount"];

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = v29;
    v88 = [obj countByEnumeratingWithState:&v113 objects:v131 count:16];
    v97 = v28;
    if (!v88)
    {
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      goto LABEL_64;
    }

    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v87 = *v114;
    while (1)
    {
      v31 = 0;
      do
      {
        if (*v114 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v89 = v31;
        sessionTasks = [*(*(&v113 + 1) + 8 * v31) sessionTasks];
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v98 = sessionTasks;
        v100 = [v98 countByEnumeratingWithState:&v109 objects:v130 count:16];
        if (v100)
        {
          v99 = *v110;
          do
          {
            v33 = 0;
            do
            {
              if (*v110 != v99)
              {
                objc_enumerationMutation(v98);
              }

              v103 = v33;
              v101 = *(*(&v109 + 1) + 8 * v33);
              context = objc_autoreleasePoolPush();
              recentlyFailedAssets = [v101 recentlyFailedAssets];
              v35 = objc_opt_new();
              v105 = 0u;
              v106 = 0u;
              v107 = 0u;
              v108 = 0u;
              v36 = recentlyFailedAssets;
              v37 = [v36 countByEnumeratingWithState:&v105 objects:v129 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v106;
                do
                {
                  for (i = 0; i != v38; i = i + 1)
                  {
                    if (*v106 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = *(*(&v105 + 1) + 8 * i);
                    error = [v41 error];
                    if (error)
                    {
                      v43 = MBGetDefaultLog();
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v122 = v41;
                        v123 = 2112;
                        v124 = error;
                        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "ATSessionTask recentlyFailedAsset:%@, error:%@", buf, 0x16u);
                        _MBLog();
                      }

                      domain = [error domain];
                      code = [error code];
                      localizedDescription = [error localizedDescription];
                      v47 = [NSString stringWithFormat:@"%@|%ld|%@", domain, code, localizedDescription];
                      [v35 addObject:v47];
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v105 objects:v129 count:16];
                }

                while (v38);
              }

              totalItemCount = [v101 totalItemCount];
              completedItemCount = [v101 completedItemCount];
              totalItemCount2 = [v101 totalItemCount];
              if (totalItemCount2 >= [v101 completedItemCount])
              {
                totalItemCount5 = (totalItemCount - completedItemCount);
              }

              else
              {
                v51 = MBGetDefaultLog();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  localizedDescription2 = [v101 localizedDescription];
                  completedItemCount2 = [v101 completedItemCount];
                  totalItemCount3 = [v101 totalItemCount];
                  *buf = 138412802;
                  v122 = localizedDescription2;
                  v123 = 2048;
                  v124 = completedItemCount2;
                  v125 = 2048;
                  v126 = totalItemCount3;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Pending AirTraffic Restore: %@ completed: %lu > total: %lu [inconsistent]", buf, 0x20u);

                  localizedDescription3 = [v101 localizedDescription];
                  completedItemCount3 = [v101 completedItemCount];
                  totalItemCount4 = [v101 totalItemCount];
                  v76 = localizedDescription3;
                  _MBLog();
                }

                totalItemCount5 = [v101 totalItemCount];
              }

              if ([v101 totalItemCount] && totalItemCount5)
              {
                dataClass = [v101 dataClass];
                if ([dataClass isEqualToString:@"Book"])
                {
                  v58 = @"bookRecentErrors";
                  v96 = totalItemCount5;
LABEL_51:
                  if ([v35 count])
                  {
                    [v97 setValue:v35 forKey:v58];
                  }
                }

                else
                {
                  if ([dataClass isEqualToString:@"Photo"])
                  {
                    v58 = @"photoRecentErrors";
                    v95 = totalItemCount5;
                    goto LABEL_51;
                  }

                  if ([dataClass isEqualToString:@"Ringtone"])
                  {
                    v58 = @"ringtoneRecentErrors";
                    v94 = totalItemCount5;
                    goto LABEL_51;
                  }

                  if ([dataClass isEqualToString:@"Media"])
                  {
                    v93 = totalItemCount5;
                    v58 = @"mediaRecentErrors";
                    goto LABEL_51;
                  }

                  if ([dataClass isEqualToString:@"MessagePart"])
                  {
                    v92 = totalItemCount5;
                    v58 = @"messagePartRecentErrors";
                    goto LABEL_51;
                  }

                  if ([dataClass isEqualToString:@"VoiceMemo"])
                  {
                    v91 = totalItemCount5;
                    v58 = @"voiceMemoRecentErrors";
                    goto LABEL_51;
                  }

                  if ([dataClass isEqualToString:@"File"])
                  {
                    v90 = totalItemCount5;
                    v58 = @"localFilesRecentErrors";
                    goto LABEL_51;
                  }

                  [v35 count];
                }
              }

              v59 = MBGetDefaultLog();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                localizedDescription4 = [v101 localizedDescription];
                completedItemCount4 = [v101 completedItemCount];
                totalItemCount6 = [v101 totalItemCount];
                *buf = 138413058;
                v122 = localizedDescription4;
                v123 = 2048;
                v124 = completedItemCount4;
                v125 = 2048;
                v126 = totalItemCount6;
                v127 = 2048;
                v128 = totalItemCount5;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Pending AirTraffic Restore: %@ completed: %lu total: %lu remaining: %lu", buf, 0x2Au);

                localizedDescription5 = [v101 localizedDescription];
                completedItemCount5 = [v101 completedItemCount];
                totalItemCount4 = [v101 totalItemCount];
                v79 = totalItemCount5;
                v76 = localizedDescription5;
                completedItemCount3 = completedItemCount5;
                _MBLog();
              }

              objc_autoreleasePoolPop(context);
              v33 = v103 + 1;
            }

            while ((v103 + 1) != v100);
            v65 = [v98 countByEnumeratingWithState:&v109 objects:v130 count:16];
            v100 = v65;
          }

          while (v65);
        }

        v31 = v89 + 1;
        v16 = MBError_ptr;
      }

      while ((v89 + 1) != v88);
      v88 = [obj countByEnumeratingWithState:&v113 objects:v131 count:16];
      if (!v88)
      {
LABEL_64:

        v119[0] = @"bookPendingItemCount";
        v66 = [v16[91] numberWithUnsignedInteger:v96];
        v120[0] = v66;
        v119[1] = @"photoPendingItemCount";
        v67 = [v16[91] numberWithUnsignedInteger:v95];
        v120[1] = v67;
        v119[2] = @"ringtonePendingItemCount";
        [v16[91] numberWithUnsignedInteger:v94];
        v69 = v68 = v16;
        v120[2] = v69;
        v119[3] = @"mediaPendingItemCount";
        v70 = [v16[91] numberWithUnsignedInteger:v93];
        v120[3] = v70;
        v119[4] = @"messagePartPendingItemCount";
        v71 = [v68[91] numberWithUnsignedInteger:v92];
        v120[4] = v71;
        v119[5] = @"voiceMemoPendingItemCount";
        v72 = [v68[91] numberWithUnsignedInteger:v91];
        v120[5] = v72;
        v119[6] = @"localFilesPendingItemCount";
        v73 = [v68[91] numberWithUnsignedInteger:v90];
        v120[6] = v73;
        v74 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:7];
        [v85 addEntriesFromDictionary:v74];

        if ([v97 count])
        {
          [v85 addEntriesFromDictionary:v97];
        }

        v27 = v83;
        v26 = v84;
        break;
      }
    }
  }

  return v85;
}

- (BOOL)acquireLockWithBackupUDID:(id)d account:(id)account owner:(id)owner timeout:(double)timeout connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  ownerCopy = owner;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager acquireLockWithBackupUDID:account:owner:timeout:connection:error:]", "MBCKManager.m", 5694, "account");
  }

  if (!dCopy)
  {
    __assert_rtn("[MBCKManager acquireLockWithBackupUDID:account:owner:timeout:connection:error:]", "MBCKManager.m", 5695, "backupUDID");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager acquireLockWithBackupUDID:account:owner:timeout:connection:error:]", "MBCKManager.m", 5696, "error");
  }

  v18 = connectionCopy;
  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = dCopy;
    v35 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Acquiring CK lock for device:%@, timeout:%.3f", buf, 0x16u);
    _MBLog();
  }

  v20 = +[MBCKOperationPolicy expensiveCellularPolicy];
  v21 = [MBCKLock alloc];
  databaseManager = [(MBCKManager *)self databaseManager];
  v23 = [(MBCKLock *)v21 initWithDeviceUUID:dCopy databaseManager:databaseManager];

  [(MBCKLock *)v23 setOwner:ownerCopy];
  processName = [v18 processName];
  v25 = [v20 operationGroupWithName:@"acquireLock" processName:processName];
  [(MBCKLock *)v23 setCkOperationGroup:v25];

  v32 = 0;
  v26 = [(MBCKLock *)v23 saveLockWithAccount:accountCopy timeout:&__NSDictionary0__struct pluginFields:&v32 error:timeout];
  v27 = v32;
  v28 = MBGetDefaultLog();
  v29 = v28;
  if (v26)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = dCopy;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Acquired the CK lock for device:%@", buf, 0xCu);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v34 = dCopy;
      v35 = 2112;
      timeoutCopy = *&v27;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to acquire the CK lock for device:%@: %@", buf, 0x16u);
      _MBLog();
    }

    v30 = v27;
    *error = v27;
  }

  return v26;
}

- (BOOL)releaseLockWithBackupUDID:(id)d account:(id)account owner:(id)owner connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  ownerCopy = owner;
  connectionCopy = connection;
  if (!error)
  {
    __assert_rtn("[MBCKManager releaseLockWithBackupUDID:account:owner:connection:error:]", "MBCKManager.m", 5717, "error");
  }

  if (!dCopy)
  {
    __assert_rtn("[MBCKManager releaseLockWithBackupUDID:account:owner:connection:error:]", "MBCKManager.m", 5718, "backupUDID");
  }

  v16 = connectionCopy;
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = dCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Releasing the CK lock for device:%@", buf, 0xCu);
    _MBLog();
  }

  v18 = +[MBCKOperationPolicy expensiveCellularPolicy];
  v19 = [MBCKLock alloc];
  databaseManager = [(MBCKManager *)self databaseManager];
  v21 = [(MBCKLock *)v19 initWithDeviceUUID:dCopy databaseManager:databaseManager];

  [(MBCKLock *)v21 setOwner:ownerCopy];
  processName = [v16 processName];
  v23 = [v18 operationGroupWithName:@"releaseLock" processName:processName];
  [(MBCKLock *)v21 setCkOperationGroup:v23];

  v30 = 0;
  v24 = [(MBCKLock *)v21 clearLockWithAccount:accountCopy pluginFields:&__NSDictionary0__struct error:&v30];
  v25 = v30;
  v26 = MBGetDefaultLog();
  v27 = v26;
  if (v24)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = dCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Released CK lock for device:%@", buf, 0xCu);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v32 = dCopy;
      v33 = 2112;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to release the CK lock for device:%@: %@", buf, 0x16u);
      _MBLog();
    }

    v28 = v25;
    *error = v25;
  }

  return v24;
}

- (id)deviceLockInfosWithAccount:(id)account connection:(id)connection error:(id *)error
{
  accountCopy = account;
  connectionCopy = connection;
  v38 = accountCopy;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager deviceLockInfosWithAccount:connection:error:]", "MBCKManager.m", 5739, "serviceAccount");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager deviceLockInfosWithAccount:connection:error:]", "MBCKManager.m", 5740, "error");
  }

  errorCopy = error;
  v39 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKManager *)self databaseManager];
  v43 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v39 error:error];

  if (!v43)
  {
    v31 = 0;
    goto LABEL_25;
  }

  processName = [connectionCopy processName];
  v10 = [v39 operationGroupWithName:@"fetchDeviceLocks" processName:processName];
  [v43 setCkOperationGroup:v10];

  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_100093324;
  v67 = sub_100093334;
  v68 = 0;
  obj = 0;
  v35 = [MBCKAccount fetchAccountWithOperationTracker:v43 cache:0 error:&obj];
  objc_storeStrong(&v68, obj);
  if (v35)
  {
    v11 = (v64 + 5);
    v61 = v64[5];
    v12 = [v35 fetchDevicesWithOperationTracker:v43 error:&v61];
    objc_storeStrong(v11, v61);
    if (v12)
    {
      devicesByUUID = [v35 devicesByUUID];
      allValues = [devicesByUUID allValues];
      v41 = devicesByUUID;
      v15 = objc_opt_new();
      v34 = dispatch_group_create();
      dispatch_group_enter(v34);
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v60 = 0;
      startBatchFetch = [v43 startBatchFetch];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v40 = allValues;
      v17 = [v40 countByEnumeratingWithState:&v53 objects:v69 count:16];
      if (v17)
      {
        v18 = *v54;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v54 != v18)
            {
              objc_enumerationMutation(v40);
            }

            v20 = *(*(&v53 + 1) + 8 * i);
            deviceName = [v20 deviceName];
            deviceUUID = [v20 deviceUUID];
            v23 = [MBCKLock recordNameWithDeviceUUID:deviceUUID];
            v24 = [CKRecordID alloc];
            syncZoneID = [v43 syncZoneID];
            v26 = [v24 initWithRecordName:v23 zoneID:syncZoneID];

            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_1000B9638;
            v47[3] = &unk_1003BD8F0;
            v47[4] = self;
            v52 = &v57;
            v48 = v41;
            v27 = deviceName;
            v49 = v27;
            v28 = deviceUUID;
            v50 = v28;
            v51 = v15;
            [startBatchFetch fetchRecordWithID:v26 completion:v47];
          }

          v17 = [v40 countByEnumeratingWithState:&v53 objects:v69 count:16];
        }

        while (v17);
      }

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000B9B64;
      v44[3] = &unk_1003BC160;
      v46 = &v63;
      v29 = v34;
      v45 = v29;
      [v43 finishBatchFetch:startBatchFetch completion:v44];
      MBGroupWaitForever();
      if (v64[5] && (v30 = v58[3], v30 != [v40 count]))
      {
        v31 = 0;
        *errorCopy = v64[5];
      }

      else
      {
        v31 = v15;
      }

      _Block_object_dispose(&v57, 8);
      goto LABEL_24;
    }

    v32 = v64[5];
    goto LABEL_21;
  }

  if (([MBError isError:v64[5] withCode:204]& 1) == 0)
  {
    v32 = v64[5];
LABEL_21:
    v31 = 0;
    *error = v32;
    goto LABEL_24;
  }

  v31 = &__NSArray0__struct;
LABEL_24:

  _Block_object_dispose(&v63, 8);
LABEL_25:

  return v31;
}

- (void)_retryAppDataDownloadsWithConnectivity:(id)connectivity account:(id)account
{
  var4 = connectivity.var4;
  v5 = *&connectivity.var0;
  accountCopy = account;
  v8 = 0;
  if (v5)
  {
    goto LABEL_2;
  }

  if ((v5 & 0x100) != 0 && (var4 & 4) != 0)
  {
    v15 = 0;
    v8 = [(MBCKManager *)self fetchBackgroundRestoreCellularAccessForAccount:accountCopy error:&v15];
    v11 = v15;
    if (v11)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = accountCopy;
        v18 = 2112;
        *v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error fetching cellular access for account (%@): %@", buf, 0x16u);
        _MBLog();
      }

      goto LABEL_11;
    }

    if (!v8)
    {
LABEL_11:

      goto LABEL_12;
    }

    if (v5 & 0x10000) == 0 || ([v8 allowsExpensiveNetworkAccess])
    {
LABEL_2:
      if (qword_100421698 != -1)
      {
        dispatch_once(&qword_100421698, &stru_1003BD910);
      }

      v9 = qword_100421690;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B9EC4;
      block[3] = &unk_1003BC0B0;
      v14 = accountCopy;
      dispatch_async(v9, block);
      v10 = v14;
      goto LABEL_14;
    }
  }

LABEL_12:
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v17 = accountCopy;
    v18 = 1024;
    *v19 = v5 & 1;
    *&v19[4] = 1024;
    *&v19[6] = (v5 >> 8) & 1;
    v20 = 1024;
    v21 = HIWORD(v5) & 1;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not retrying app downloads for account %@, isOnWiFi:%d, isOnCellular:%d(%d), cellularAccess:%{public}@", buf, 0x28u);
    _MBLog();
  }

LABEL_14:
}

- (void)retryAppDataDownloadsWithNetworkConnectivity:(id)connectivity
{
  var4 = connectivity.var4;
  v4 = *&connectivity.var0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = +[MBServiceAccount allServiceAccounts];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(MBCKManager *)self _retryAppDataDownloadsWithConnectivity:v4 account:var4, *(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_startEngine:(id)engine delegateContext:(id)context
{
  engineCopy = engine;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!engineCopy)
  {
    __assert_rtn("[MBCKManager _startEngine:delegateContext:]", "MBCKManager.m", 5869, "engine");
  }

  serviceAccount = [engineCopy serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKManager _startEngine:delegateContext:]", "MBCKManager.m", 5871, "serviceAccount");
  }

  v29 = serviceAccount;
  v10 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:serviceAccount];
  v11 = objc_opt_class();
  class_getName(v11);
  v12 = os_transaction_create();
  v13 = +[MBDaemon sharedDaemon];
  [v13 holdWorkAssertion:a2];

  engines = [v10 engines];
  v15 = [engines arrayByAddingObject:engineCopy];
  [v10 setEngines:v15];

  if (contextCopy)
  {
    enginesByContext = [v10 enginesByContext];
    [enginesByContext setObject:engineCopy forKey:contextCopy];
  }

  watchdog = [engineCopy watchdog];
  [watchdog resume];

  powerAssertionName = [engineCopy powerAssertionName];
  if (powerAssertionName)
  {
    v19 = [[MBPowerAssertion alloc] initWithName:powerAssertionName timeout:0.0];
  }

  else
  {
    v19 = 0;
  }

  [(MBPowerAssertion *)v19 hold];
  v20 = __ROR8__([engineCopy qualityOfService] - 9, 3);
  if (v20 > 3)
  {
    v21 = 21;
  }

  else
  {
    v21 = qword_1002B9E00[v20];
  }

  serviceGroup = [v10 serviceGroup];
  v23 = dispatch_get_global_queue(v21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA328;
  block[3] = &unk_1003BD938;
  v31 = engineCopy;
  v32 = v19;
  v36 = v12;
  v37 = a2;
  selfCopy = self;
  v34 = contextCopy;
  v35 = v10;
  v24 = v12;
  v25 = v10;
  v26 = contextCopy;
  v27 = v19;
  v28 = engineCopy;
  dispatch_group_async(serviceGroup, v23, block);
}

- (BOOL)startDeviceTransferWithTaskType:(int64_t)type sessionInfo:(id)info connection:(id)connection error:(id *)error
{
  infoCopy = info;
  connectionCopy = connection;
  if ((type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    __assert_rtn("[MBCKManager startDeviceTransferWithTaskType:sessionInfo:connection:error:]", "MBCKManager.m", 5910, "taskType == MBDeviceTransferTaskTypeSource || taskType == MBDeviceTransferTaskTypeTarget");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager startDeviceTransferWithTaskType:sessionInfo:connection:error:]", "MBCKManager.m", 5911, "error");
  }

  v12 = connectionCopy;
  v13 = os_transaction_create();
  v14 = [MBPersona personalPersonaWithError:error];
  v15 = v14;
  if (v14)
  {
    personaIdentifier = [v14 personaIdentifier];
    v17 = dispatch_group_create();
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = sub_100093324;
    v36 = sub_100093334;
    v37 = 0;
    dispatch_group_enter(v17);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000BA8A8;
    v24[3] = &unk_1003BD960;
    v30 = buf;
    v18 = v17;
    typeCopy = type;
    v25 = v18;
    selfCopy = self;
    v27 = infoCopy;
    v28 = v12;
    v19 = personaIdentifier;
    v29 = v19;
    [(MBCKManager *)self _cancelBackupAndScanEnginesWithTimeout:300 completion:v24];
    MBGroupWaitForever();
    v20 = objc_opt_self();
    v21 = *(v33 + 5);
    if (v21)
    {
      *error = v21;
      v22 = *(v33 + 5) == 0;
    }

    else
    {
      v22 = 1;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to fetch the persona identifier", buf, 2u);
      _MBLog();
    }

    v22 = 0;
  }

  return v22;
}

- (void)_startSourceDeviceTransferWithSessionInfo:(id)info connection:(id)connection personaIdentifier:(id)identifier completion:(id)completion
{
  infoCopy = info;
  connectionCopy = connection;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!infoCopy)
  {
    __assert_rtn("[MBCKManager _startSourceDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5951, "sessionInfo");
  }

  if (!connectionCopy)
  {
    __assert_rtn("[MBCKManager _startSourceDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5952, "connection");
  }

  if (!completionCopy)
  {
    __assert_rtn("[MBCKManager _startSourceDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5953, "completion");
  }

  if (!identifierCopy)
  {
    __assert_rtn("[MBCKManager _startSourceDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5954, "personaIdentifier");
  }

  delegate = [(MBCKManager *)self delegate];
  if (!delegate)
  {
    __assert_rtn("[MBCKManager _startSourceDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5956, "delegate");
  }

  v16 = delegate;
  v17 = [(MBPersonaStateManager *)self->_personaState personaStateForPersonaID:identifierCopy];
  if ([v17 serviceState])
  {
    __assert_rtn("[MBCKManager _startSourceDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5959, "personaState.serviceState == kMBServiceManagerStateIdle");
  }

  [v17 setServiceState:3];
  v18 = +[MBDaemon sharedDaemon];
  [v18 holdWorkAssertion:a2];

  v19 = [[MBSourceDeviceTransferEngine alloc] initWithSessionInfo:infoCopy];
  [(MBSourceDeviceTransferEngine *)v19 setConnection:connectionCopy];
  [(MBSourceDeviceTransferEngine *)v19 setDelegate:v16];
  objc_initWeak(location, v19);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BAE80;
  v29[3] = &unk_1003BD988;
  objc_copyWeak(v31, location);
  v29[4] = self;
  v20 = v17;
  v30 = v20;
  v31[1] = a2;
  [(MBSourceDeviceTransferEngine *)v19 setCompletionHandler:v29];
  v21 = infoCopy;
  [(NSMutableArray *)self->_engines addObject:v19];
  serviceGroup = self->_serviceGroup;
  v23 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BAFD0;
  block[3] = &unk_1003BD9B0;
  v27 = v19;
  v28 = completionCopy;
  block[4] = self;
  v24 = v19;
  v25 = completionCopy;
  dispatch_group_async(serviceGroup, v23, block);

  objc_destroyWeak(v31);
  objc_destroyWeak(location);
}

- (void)_startTargetDeviceTransferWithSessionInfo:(id)info connection:(id)connection personaIdentifier:(id)identifier completion:(id)completion
{
  infoCopy = info;
  connectionCopy = connection;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!infoCopy)
  {
    __assert_rtn("[MBCKManager _startTargetDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5989, "sessionInfo");
  }

  if (!connectionCopy)
  {
    __assert_rtn("[MBCKManager _startTargetDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5990, "connection");
  }

  if (!completionCopy)
  {
    __assert_rtn("[MBCKManager _startTargetDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5991, "completion");
  }

  if (!identifierCopy)
  {
    __assert_rtn("[MBCKManager _startTargetDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5992, "personaIdentifier");
  }

  delegate = [(MBCKManager *)self delegate];
  if (!delegate)
  {
    __assert_rtn("[MBCKManager _startTargetDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5994, "delegate");
  }

  v16 = delegate;
  v17 = [(MBPersonaStateManager *)self->_personaState personaStateForPersonaID:identifierCopy];
  if ([v17 serviceState])
  {
    __assert_rtn("[MBCKManager _startTargetDeviceTransferWithSessionInfo:connection:personaIdentifier:completion:]", "MBCKManager.m", 5997, "personaState.serviceState == kMBServiceManagerStateIdle");
  }

  [v17 setServiceState:3];
  v18 = +[MBDaemon sharedDaemon];
  [v18 holdWorkAssertion:a2];

  v19 = [[MBTargetDeviceTransferEngine alloc] initWithSessionInfo:infoCopy];
  [(MBTargetDeviceTransferEngine *)v19 setConnection:connectionCopy];
  [(MBTargetDeviceTransferEngine *)v19 setDelegate:v16];
  objc_initWeak(location, v19);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BB3B4;
  v29[3] = &unk_1003BD988;
  objc_copyWeak(v31, location);
  v29[4] = self;
  v20 = v17;
  v30 = v20;
  v31[1] = a2;
  [(MBTargetDeviceTransferEngine *)v19 setCompletionHandler:v29];
  v21 = infoCopy;
  [(NSMutableArray *)self->_engines addObject:v19];
  serviceGroup = self->_serviceGroup;
  v23 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB504;
  block[3] = &unk_1003BD9D8;
  block[4] = self;
  v27 = v19;
  v28 = completionCopy;
  v24 = completionCopy;
  v25 = v19;
  dispatch_group_async(serviceGroup, v23, block);

  objc_destroyWeak(v31);
  objc_destroyWeak(location);
}

- (BOOL)cancelDeviceTransferWithTaskType:(int64_t)type connection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  if ((type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    __assert_rtn("[MBCKManager cancelDeviceTransferWithTaskType:connection:error:]", "MBCKManager.m", 6026, "taskType == MBDeviceTransferTaskTypeSource || taskType == MBDeviceTransferTaskTypeTarget");
  }

  v9 = connectionCopy;
  if (!connectionCopy)
  {
    __assert_rtn("[MBCKManager cancelDeviceTransferWithTaskType:connection:error:]", "MBCKManager.m", 6027, "connection");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager cancelDeviceTransferWithTaskType:connection:error:]", "MBCKManager.m", 6028, "error");
  }

  v10 = [MBPersona personalPersonaWithError:error];
  v11 = v10;
  if (v10)
  {
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BB6D4;
    block[3] = &unk_1003BC2E0;
    block[4] = self;
    v15 = v10;
    v16 = v9;
    dispatch_sync(stateQueue, block);
  }

  return v11 != 0;
}

- (void)cancelDeviceTransferWithConnection:(id)connection
{
  v8 = 0;
  connectionCopy = connection;
  [(MBCKManager *)self cancelDeviceTransferWithTaskType:1 connection:connectionCopy error:&v8];
  v5 = v8;
  v7 = v5;
  [(MBCKManager *)self cancelDeviceTransferWithTaskType:2 connection:connectionCopy error:&v7];

  v6 = v7;
}

- (id)_findTargetDeviceTransferEngineWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    __assert_rtn("[MBCKManager _findTargetDeviceTransferEngineWithConnection:error:]", "MBCKManager.m", 6065, "connection");
  }

  if (!error)
  {
    __assert_rtn("[MBCKManager _findTargetDeviceTransferEngineWithConnection:error:]", "MBCKManager.m", 6066, "error");
  }

  v7 = connectionCopy;
  v8 = [MBPersona personalPersonaWithError:error];
  v9 = v8;
  if (v8)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_100093324;
    v40 = sub_100093334;
    v41 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_100093324;
    v34 = sub_100093334;
    v35 = 0;
    stateQueue = self->_stateQueue;
    block = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000BBCB0;
    v24 = &unk_1003BDA00;
    selfCopy = self;
    v26 = v8;
    v28 = &v30;
    v27 = v7;
    v29 = &v36;
    dispatch_sync(stateQueue, &block);
    v11 = v37[5];
    if (!v11)
    {
      v12 = v31[5];
      if (!v12)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = v13;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = objc_opt_class();
            *buf = 138412290;
            v43 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to find an %@ instance", buf, 0xCu);
          }

          objc_opt_class();
          _MBLog();
        }

        v16 = [MBError errorWithCode:1 format:@"Failed to find an %@ instance", objc_opt_class(), block, v22, v23, v24, selfCopy, v26];
        v17 = v31[5];
        v31[5] = v16;

        v12 = v31[5];
      }

      v18 = v12;
      *error = v18;
      v11 = v37[5];
      if (!v11)
      {
        if (!v18)
        {
          __assert_rtn("[MBCKManager _findTargetDeviceTransferEngineWithConnection:error:]", "MBCKManager.m", 6098, "dtEngine || *error");
        }

        v11 = 0;
      }
    }

    v19 = v11;

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)startPreflightWithConnection:(id)connection completion:(id)completion
{
  v9 = 0;
  completionCopy = completion;
  v7 = [(MBCKManager *)self _findTargetDeviceTransferEngineWithConnection:connection error:&v9];
  v8 = v9;
  if (v7)
  {
    [v7 startPreflightWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (void)startKeychainDataTransferWithConnection:(id)connection completion:(id)completion
{
  v9 = 0;
  completionCopy = completion;
  v7 = [(MBCKManager *)self _findTargetDeviceTransferEngineWithConnection:connection error:&v9];
  v8 = v9;
  if (v7)
  {
    [v7 startKeychainDataTransferWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (void)startKeychainDataImportWithKeychainInfo:(id)info connection:(id)connection completion:(id)completion
{
  infoCopy = info;
  v12 = 0;
  completionCopy = completion;
  v10 = [(MBCKManager *)self _findTargetDeviceTransferEngineWithConnection:connection error:&v12];
  v11 = v12;
  if (v10)
  {
    [v10 startKeychainDataImportWithKeychainInfo:infoCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)startDataTransferWithPreflightInfo:(id)info connection:(id)connection completion:(id)completion
{
  infoCopy = info;
  v12 = 0;
  completionCopy = completion;
  v10 = [(MBCKManager *)self _findTargetDeviceTransferEngineWithConnection:connection error:&v12];
  v11 = v12;
  if (v10)
  {
    [v10 startDataTransferWithPreflightInfo:infoCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (BOOL)isEngineInProgressForBundleID:(id)d percentComplete:(double)complete
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_engines;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          restoringBundleID = [v11 restoringBundleID];
          if (restoringBundleID && [dCopy isEqualToString:restoringBundleID])
          {
            v8 = MBGetDefaultLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v19 = dCopy;
              v20 = 2048;
              completeCopy = complete;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "IX: Restore engine already ongoing for app %@. Progress: %.2f", buf, 0x16u);
              _MBLog();
            }

            LOBYTE(v8) = 1;
            goto LABEL_16;
          }
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v8;
}

+ (void)insufficientFreeSpaceToRestoreForAccount:(id)account
{
  accountCopy = account;
  v9 = +[MBUserNotification notification];
  [v9 setIdentifier:@"InsufficientSpaceForRestore"];
  [v9 setInterval:86400.0];
  v4 = MBLocalizedStringFromTable();
  [v9 setTitle:v4];

  v5 = MBLocalizedStringFromTable();
  [v9 setBody:v5];

  v6 = MBLocalizedStringFromTable();
  [v9 setButton:v6];

  v7 = MBLocalizedStringFromTable();
  [v9 setAlternateButton:v7];

  [v9 setCompletionBlock:&stru_1003BDA20];
  v8 = +[MBUserNotificationManager sharedManager];
  [v8 presentUserNotification:v9 account:accountCopy];
}

- (id)_cacheTrackerWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager _cacheTrackerWithAccount:]", "MBCKManager.m", 6203, "account");
  }

  v5 = accountCopy;
  persona = [accountCopy persona];
  personaIdentifier = [persona personaIdentifier];

  if (!personaIdentifier)
  {
    __assert_rtn("[MBCKManager _cacheTrackerWithAccount:]", "MBCKManager.m", 6205, "personaID");
  }

  cacheTrackersByPersonaID = [(MBCKManager *)self cacheTrackersByPersonaID];
  objc_sync_enter(cacheTrackersByPersonaID);
  cacheTrackersByPersonaID2 = [(MBCKManager *)self cacheTrackersByPersonaID];
  v10 = [cacheTrackersByPersonaID2 objectForKeyedSubscript:personaIdentifier];

  if (!v10)
  {
    persona2 = [v5 persona];
    cacheDirectory = [persona2 cacheDirectory];

    v10 = [[MBCKCacheTracker alloc] initWithCacheDirectory:cacheDirectory];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = personaIdentifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Associating cache tracker %@ with personaID %@", buf, 0x16u);
      _MBLog();
    }

    cacheTrackersByPersonaID3 = [(MBCKManager *)self cacheTrackersByPersonaID];
    [cacheTrackersByPersonaID3 setObject:v10 forKeyedSubscript:personaIdentifier];
  }

  objc_sync_exit(cacheTrackersByPersonaID);

  if (!v10)
  {
    __assert_rtn("[MBCKManager _cacheTrackerWithAccount:]", "MBCKManager.m", 6217, "cacheTracker");
  }

  return v10;
}

- (BOOL)resetCacheWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager resetCacheWithAccount:error:]", "MBCKManager.m", 6233, "account");
  }

  v7 = accountCopy;
  accountIdentifier = [accountCopy accountIdentifier];
  if (!accountIdentifier)
  {
    __assert_rtn("[MBCKManager resetCacheWithAccount:error:]", "MBCKManager.m", 6235, "accountIdentifier");
  }

  v21 = accountIdentifier;
  v9 = [[NSMutableArray alloc] initWithCapacity:2];
  v10 = [(MBCKManager *)self _cacheTrackerWithAccount:v7];
  v23 = 0;
  v11 = [v10 resetDatabaseForAccount:v7 error:&v23];
  v12 = v23;
  if ((v11 & 1) == 0)
  {
    [v9 addObject:v12];

    v12 = 0;
  }

  v13 = +[NSFileManager defaultManager];
  persona = [v7 persona];
  snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];
  v22 = v12;
  v16 = [v13 mb_moveToTmpDirThenRemoveItemAtPath:snapshotDatabaseDirectory error:&v22];
  v17 = v22;

  if ((v16 & 1) == 0)
  {
    [v9 addObject:v17];
  }

  v18 = [v9 count];
  v19 = v18;
  if (error && v18)
  {
    *error = [MBError errorWithErrors:v9];
  }

  return v19 == 0;
}

- (void)_handleNetworkPathUpdateWithPathType:(int)type state:(id)state
{
  stateQueue = self->_stateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BCBCC;
  v5[3] = &unk_1003BDAE8;
  v5[4] = self;
  typeCopy = type;
  stateCopy = state;
  dispatch_async(stateQueue, v5);
}

- (id)_startNetworkPathMonitor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_networkPathMonitor;
  if (!v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting the network path monitor", buf, 2u);
      _MBLog();
    }

    v5 = objc_opt_new();
    networkPathMonitor = selfCopy->_networkPathMonitor;
    selfCopy->_networkPathMonitor = v5;

    v3 = v5;
    objc_initWeak(buf, selfCopy);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BCEAC;
    v8[3] = &unk_1003BDA48;
    objc_copyWeak(&v9, buf);
    [(MBNetworkPathMonitor *)selfCopy->_networkPathMonitor setNetworkPathUpdateHandler:v8];
    [(MBNetworkPathMonitor *)selfCopy->_networkPathMonitor start];
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)fetchNetworkConnectivityWithBlock:(id)block
{
  blockCopy = block;
  _startNetworkPathMonitor = [(MBCKManager *)self _startNetworkPathMonitor];
  [_startNetworkPathMonitor fetchNetworkConnectivityWithBlock:blockCopy];
}

- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivity
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v16 = 0;
  v17 = 0;
  v15 = &unk_10036457D;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000BD06C;
  v9[3] = &unk_1003BDA70;
  v11 = &v12;
  v4 = v3;
  v10 = v4;
  [(MBCKManager *)self fetchNetworkConnectivityWithBlock:v9];
  MBGroupWaitForever();
  v5 = v13[4];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  v7 = v5;
  v8 = v6;
  result.var4 = v8;
  result.var0 = v7;
  result.var1 = BYTE1(v7);
  result.var2 = BYTE2(v7);
  result.var3 = HIDWORD(v7);
  return result;
}

- (void)setUpXPCEventHandler
{
  objc_initWeak(&location, self);
  v2 = &_dispatch_main_q;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BD158;
  v3[3] = &unk_1003BDA98;
  objc_copyWeak(&v4, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)setServiceDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy && (![delegateCopy conformsToProtocol:&OBJC_PROTOCOL___MBServiceManagerDelegate] || (objc_msgSend(delegateCopy, "conformsToProtocol:", &OBJC_PROTOCOL___MBManagerDelegate) & 1) == 0))
  {
    __assert_rtn("[MBCKManager setServiceDelegate:]", "MBCKManager.m", 6351, "!delegate || ([delegate conformsToProtocol:@protocol(MBServiceManagerDelegate)] && [delegate conformsToProtocol:@protocol(MBManagerDelegate)])");
  }

  [(MBCKManager *)self setDelegate:delegateCopy];
}

+ (double)inexpensiveCellularBalance
{
  v2 = +[_DASScheduler sharedScheduler];
  [v2 balanceForBudgetWithName:@"com.apple.dasd.systemCellular"];
  v4 = v3 * 20.0;

  return v4;
}

- (BOOL)isBackgroundRestoringAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager isBackgroundRestoringAccount:]", "MBCKManager.m", 6370, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BD54C;
  block[3] = &unk_1003BDAC0;
  block[4] = self;
  v10 = v5;
  v11 = &v12;
  v7 = v5;
  dispatch_sync(stateQueue, block);
  LOBYTE(v5) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v5;
}

- (BOOL)isRestoringAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKManager isRestoringAccount:]", "MBCKManager.m", 6382, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BD6C8;
  block[3] = &unk_1003BDAC0;
  block[4] = self;
  v10 = v5;
  v11 = &v12;
  v7 = v5;
  dispatch_sync(stateQueue, block);
  LOBYTE(v5) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v5;
}

- (BOOL)isBackgroundRestoringAnyAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BD7F4;
  v5[3] = &unk_1003BC088;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)serviceStates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100093324;
  v11 = sub_100093334;
  v12 = +[NSMutableArray array];
  stateQueue = self->_stateQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000BDA24;
  v6[3] = &unk_1003BC088;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)restorePlanForAccount:(id)account snapshotUUID:(id)d error:(id *)error
{
  accountCopy = account;
  dCopy = d;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100093324;
  v31 = sub_100093334;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100093324;
  v25 = sub_100093334;
  v26 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BDD38;
  block[3] = &unk_1003BDA00;
  block[4] = self;
  v11 = accountCopy;
  v17 = v11;
  v19 = &v27;
  v12 = dCopy;
  v18 = v12;
  v20 = &v21;
  dispatch_sync(stateQueue, block);
  if (error)
  {
    v13 = v22[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

- (BOOL)closeRestorePlanForAccount:(id)account snapshotUUID:(id)d error:(id *)error
{
  accountCopy = account;
  dCopy = d;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100093324;
  v25 = sub_100093334;
  v26 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BDF84;
  block[3] = &unk_1003BDA00;
  block[4] = self;
  v11 = accountCopy;
  v17 = v11;
  v19 = &v27;
  v12 = dCopy;
  v18 = v12;
  v20 = &v21;
  dispatch_sync(stateQueue, block);
  if (error)
  {
    v13 = v22[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

@end