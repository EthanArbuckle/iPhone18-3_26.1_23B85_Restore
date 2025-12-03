@interface MBXPCClient
- (BOOL)_isBackupAgent2Running;
- (BOOL)acquireLockWithBackupUDID:(id)d owner:(id)owner timeout:(double)timeout error:(id *)error;
- (BOOL)allowiTunesBackup;
- (BOOL)archiveLogsTo:(id)to error:(id *)error;
- (BOOL)cancelApplicationRestoreWithBundleID:(id)d error:(id *)error;
- (BOOL)cancelDeviceTransferWithTaskType:(int64_t)type error:(id *)error;
- (BOOL)clearAllPendingFollowUpsWithError:(id *)error;
- (BOOL)countCameraRollQuota;
- (BOOL)countCameraRollQuotaForBackupUDID:(id)d error:(id *)error;
- (BOOL)deleteAccountWithError:(id *)error;
- (BOOL)deleteBackupUDID:(id)d error:(id *)error;
- (BOOL)discountCameraRollQuota;
- (BOOL)discountCameraRollQuotaForBackupUDID:(id)d error:(id *)error;
- (BOOL)exitMegaBackupMode:(id *)mode;
- (BOOL)inheritSnapshot:(id)snapshot fromDevice:(id)device error:(id *)error;
- (BOOL)isBackupEnabled;
- (BOOL)isBackupEnabledForDomainName:(id)name;
- (BOOL)isBackupOnCellularAllowedWithAccount:(id)account error:(id *)error;
- (BOOL)isBackupOnCellularEnabledWithError:(id *)error;
- (BOOL)isInitialMegaBackupCompleted:(id *)completed;
- (BOOL)isLocalBackupPasswordSetWithError:(id *)error;
- (BOOL)isManualBackupOnCellularAllowedWithAccount:(id)account error:(id *)error;
- (BOOL)logPrebuddyFlowTelemetry:(int64_t)telemetry error:(id *)error;
- (BOOL)mergeSnapshots:(id)snapshots backupUUID:(id)d error:(id *)error;
- (BOOL)pinSnapshotID:(unint64_t)d backupUDID:(id)iD error:(id *)error;
- (BOOL)postFollowUpForBackgroundRestoreProgress:(id)progress error:(id *)error;
- (BOOL)postFollowUpForRestoreFailedWithDomainNames:(id)names error:(id *)error;
- (BOOL)postFollowUpForRestoreTimeoutWithError:(id *)error;
- (BOOL)prepareForBackgroundRestoreWithError:(id *)error;
- (BOOL)recordRestoreFailure:(id)failure error:(id *)error;
- (BOOL)releaseLockWithBackupUDID:(id)d owner:(id)owner error:(id *)error;
- (BOOL)removeDomainName:(id)name error:(id *)error;
- (BOOL)requestMegaBackupExpirationDate:(id)date error:(id *)error;
- (BOOL)restoreBookWithPath:(id)path context:(id)context error:(id *)error;
- (BOOL)restoreDataExistsForApplicationWithBundleID:(id)d size:(unint64_t *)size;
- (BOOL)restoreFileExistsWithPath:(id)path;
- (BOOL)restoreFileWithPath:(id)path context:(id)context error:(id *)error;
- (BOOL)restoreFilesWithPaths:(id)paths context:(id)context error:(id *)error;
- (BOOL)restorePreviousSettingsEnabledForMegaBackup:(id *)backup;
- (BOOL)restoreSupportsBatching;
- (BOOL)setEntryPointForMegaBackupTelemetry:(int64_t)telemetry error:(id *)error;
- (BOOL)setPrebuddyUIDeltaTelemetry:(id)telemetry date:(id)date error:(id *)error;
- (BOOL)setupBackupWithPasscode:(id)passcode error:(id *)error;
- (BOOL)startBackupWithError:(id *)error;
- (BOOL)startBackupWithOptions:(id)options error:(id *)error;
- (BOOL)startDeviceTransferWithTaskType:(int64_t)type sessionInfo:(id)info error:(id *)error;
- (BOOL)startRestoreForBackupUDID:(id)d snapshotID:(unint64_t)iD error:(id *)error;
- (BOOL)startScanForBundleIDs:(id)ds error:(id *)error;
- (BOOL)startScanWithError:(id *)error;
- (BOOL)unpinSnapshotID:(unint64_t)d backupUDID:(id)iD error:(id *)error;
- (BOOL)unsetLocalBackupPasswordWithError:(id *)error;
- (BOOL)updateMegaBackupExpirationDate:(id)date error:(id *)error;
- (BOOL)wasBackupEnabledForMegaBackup:(id *)backup;
- (MBXPCClient)initWithAccount:(id)account delegate:(id)delegate eventQueue:(id)queue error:(id *)error;
- (MBXPCClient)initWithDelegate:(id)delegate eventQueue:(id)queue personaIdentifier:(id)identifier;
- (id)_makeConnection;
- (id)_sendRequest:(id)request arguments:(id)arguments error:(id *)error;
- (id)backgroundRestoreCellularAccessWithError:(id *)error;
- (id)backgroundRestoreInfo;
- (id)backupDeviceUUID;
- (id)backupState;
- (id)dateOfLastBackupWithError:(id *)error;
- (id)dateOfNextScheduledBackupWithError:(id *)error;
- (id)deviceLockInfosWithError:(id *)error;
- (id)disabledDomainInfos;
- (id)domainInfoForName:(id)name;
- (id)domainInfoList;
- (id)filesForSnapshotID:(unint64_t)d backupUDID:(id)iD error:(id *)error;
- (id)getAppleIDsMapForBackupUDID:(id)d snapshotID:(unint64_t)iD activeAppleID:(id *)appleID error:(id *)error;
- (id)getBuddyDataStashForBackupUDID:(id)d snapshotID:(unint64_t)iD error:(id *)error;
- (id)journalForBackupUUID:(id)d error:(id *)error;
- (id)journalLastModifiedForBackupUUID:(id)d error:(id *)error;
- (id)nextBackupSizeInfo;
- (id)pendingSnapshotForCurrentDeviceWithError:(id *)error;
- (id)personalPersonaIdentifier;
- (id)reservedBackupSizeListWithError:(id *)error;
- (id)restoreFailuresForDataclass:(id)dataclass assetType:(id)type range:(_NSRange)range;
- (id)restoreInfo;
- (id)restoreStateWithError:(id *)error;
- (id)synchronizeFileListsWithDeviceUUID:(id)d commitID:(id)iD error:(id *)error;
- (unint64_t)_backupOnCellularSupport;
- (unint64_t)backupOnCellularSupportWithAccount:(id)account error:(id *)error;
- (unint64_t)countOfRestoreFailuresForDataclass:(id)dataclass assetType:(id)type;
- (unint64_t)nextBackupSize;
- (void)accountChanged:(id)changed;
- (void)boostBackgroundRestoreWithCompletionHandler:(id)handler;
- (void)boostManualBackupWithCompletionHandler:(id)handler;
- (void)cancel;
- (void)cancelRestore;
- (void)clearRestoreSession;
- (void)connection:(id)connection didReceiveMessage:(id)message;
- (void)connectionWasInterrupted:(id)interrupted;
- (void)connectionWasInvalidated:(id)invalidated;
- (void)dealloc;
- (void)deviceIsLocking;
- (void)deviceIsUnlocked;
- (void)fetchAppBundleIDsForSnapshot:(id)snapshot completion:(id)completion;
- (void)fetchBackgroundRestoreCellularAccessWithCompletion:(id)completion;
- (void)fetchRestorableSnapshotsWithCompletion:(id)completion;
- (void)fetchiCloudRestoreIsCompleteWithCompletion:(id)completion;
- (void)finishRestore;
- (void)insufficientFreeSpaceToRestore;
- (void)passcodeChanged;
- (void)prioritizeRestoreFileWithPath:(id)path;
- (void)repair;
- (void)saveBackgroundRestoreCellularAccess:(id)access completion:(id)completion;
- (void)saveBackupDomainsEnabledForMegaBackup:(id)backup;
- (void)saveBackupEnabledForMegaBackup;
- (void)saveSyncSettingsEnabledForMegaBackup:(id)backup;
- (void)setRestoreQualityOfService:(int64_t)service;
- (void)setSupportsiTunes:(BOOL)tunes;
- (void)startDataTransferWithPreflightInfo:(id)info completionHandler:(id)handler;
- (void)startKeychainDataImportWithKeychainInfo:(id)info completionHandler:(id)handler;
- (void)startKeychainDataTransferWithCompletionHandler:(id)handler;
- (void)startPreflightWithCompletionHandler:(id)handler;
- (void)startRestoreForBackupUDID:(id)d snapshotID:(unint64_t)iD options:(id)options completion:(id)completion;
- (void)startRestoreForSnapshot:(id)snapshot options:(id)options completion:(id)completion;
- (void)startWatchingBackupAgent2;
- (void)syncBackupEnabled;
- (void)wakeUp;
@end

@implementation MBXPCClient

- (id)_makeConnection
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [(MBXPCClient *)selfCopy connection];
  if (!connection)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = selfCopy;
      v15 = 2112;
      v16 = @"com.apple.backupd";
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_INFO, "%@ connecting to %@", buf, 0x16u);
      _MBLog(@"I ", "%@ connecting to %@", v5, v6, v7, v8, v9, v10, selfCopy);
    }

    connection = [[MBConnection alloc] initWithServiceName:@"com.apple.backupd" delegate:selfCopy delegateQueue:selfCopy->_eventQueue];
    [(MBXPCClient *)selfCopy setConnection:connection];
    [(MBConnection *)connection resume];
  }

  objc_sync_exit(selfCopy);

  if (!connection)
  {
    [MBXPCClient _makeConnection];
  }

  v11 = *MEMORY[0x1E69E9840];

  return connection;
}

- (MBXPCClient)initWithDelegate:(id)delegate eventQueue:(id)queue personaIdentifier:(id)identifier
{
  delegateCopy = delegate;
  queueCopy = queue;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = MBXPCClient;
  _init = [(MBManager *)&v16 _init];
  if (_init)
  {
    if (!queueCopy)
    {
      v12 = objc_opt_class();
      Name = class_getName(v12);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      queueCopy = dispatch_queue_create(Name, v14);
    }

    objc_storeStrong(&_init->_eventQueue, queueCopy);
    _init->_enabledToken = -1;
    _init->_enabledOverCellularToken = -1;
    objc_storeStrong(&_init->_personaIdentifier, identifier);
    [(MBManager *)_init setDelegate:delegateCopy];
  }

  return _init;
}

- (MBXPCClient)initWithAccount:(id)account delegate:(id)delegate eventQueue:(id)queue error:(id *)error
{
  accountCopy = account;
  delegateCopy = delegate;
  queueCopy = queue;
  if (!accountCopy)
  {
    [MBXPCClient initWithAccount:delegate:eventQueue:error:];
  }

  v13 = queueCopy;
  personaIdentifier = [accountCopy personaIdentifier];
  if ([accountCopy isDataSeparatedAccount])
  {
    if (!personaIdentifier)
    {
      if (error)
      {
        v15 = [MBError errorWithCode:1 format:@"Nil persona identifier for Data Separated account"];
        personaIdentifier = 0;
LABEL_11:
        selfCopy = 0;
        *error = v15;
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (![accountCopy aa_isAccountClass:*MEMORY[0x1E698B760]])
    {
      if (error)
      {
        v15 = [MBError errorWithCode:1 format:@"ACAccount not eligible for backup"];
        goto LABEL_11;
      }

LABEL_24:
      selfCopy = 0;
      goto LABEL_25;
    }

    if (!personaIdentifier)
    {
      v17 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
      v18 = v17;
      if (v17)
      {
        userPersonaUniqueString = [v17 userPersonaUniqueString];
        if (userPersonaUniqueString)
        {
          personaIdentifier = userPersonaUniqueString;

          goto LABEL_8;
        }

        if (error)
        {
          *error = [MBError errorWithCode:1 format:@"Nil persona identifier for Primary account"];
        }
      }

      else
      {
        if (error)
        {
          *error = [MBError errorWithCode:1 format:@"Failed to fetch the attributes for personal persona"];
        }

        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_1DEB5D000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for personal persona", &v28, 2u);
          _MBLog(@"E ", "Failed to fetch the attributes for personal persona", v21, v22, v23, v24, v25, v26, v28);
        }
      }

LABEL_23:
      personaIdentifier = 0;
      goto LABEL_24;
    }
  }

LABEL_8:
  self = [(MBXPCClient *)self initWithDelegate:delegateCopy eventQueue:v13 personaIdentifier:personaIdentifier];
  selfCopy = self;
LABEL_25:

  return selfCopy;
}

- (void)dealloc
{
  connection = [(MBXPCClient *)self connection];
  [connection cancel];

  [(MBXPCClient *)self setConnection:0];
  iTunesRestoreStartedNotificationToken = self->_iTunesRestoreStartedNotificationToken;
  if (iTunesRestoreStartedNotificationToken)
  {
    notify_cancel(iTunesRestoreStartedNotificationToken);
  }

  iTunesRestoreEndedNotificationToken = self->_iTunesRestoreEndedNotificationToken;
  if (iTunesRestoreEndedNotificationToken)
  {
    notify_cancel(iTunesRestoreEndedNotificationToken);
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  enabledToken = self->_enabledToken;
  if (enabledToken != -1)
  {
    notify_cancel(enabledToken);
  }

  enabledOverCellularToken = self->_enabledOverCellularToken;
  if (enabledOverCellularToken != -1)
  {
    notify_cancel(enabledOverCellularToken);
  }

  v9.receiver = self;
  v9.super_class = MBXPCClient;
  [(MBXPCClient *)&v9 dealloc];
}

- (BOOL)_isBackupAgent2Running
{
  v20 = *MEMORY[0x1E69E9840];
  *v18 = xmmword_1DEB93E70;
  v19 = 0;
  size = 0;
  if (sysctl(v18, 3u, 0, &size, 0, 0))
  {
    v2 = MBGetDefaultLog();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      goto LABEL_9;
    }

    LOWORD(v16) = 0;
    _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_ERROR, "Error obtaining process list size", &v16, 2u);
    v9 = 0;
    v10 = "Error obtaining process list size";
    goto LABEL_7;
  }

  v9 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
  if (sysctl(v18, 3u, v9, &size, 0, 0))
  {
    v2 = MBGetDefaultLog();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    LOWORD(v16) = 0;
    _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_ERROR, "Error obtaining process list", &v16, 2u);
    v10 = "Error obtaining process list";
LABEL_7:
    _MBLog(@"E ", v10, v3, v4, v5, v6, v7, v8, v16);
    goto LABEL_9;
  }

  if ((size / 0x288uLL) < 1)
  {
    goto LABEL_10;
  }

  v14 = (size / 0x288uLL) & 0x7FFFFFFF;
  v15 = v9 + 243;
  while (*(v15 - 203) < 1 || !strstr(v15, [@"BackupAgent2" UTF8String]))
  {
    v15 += 648;
    if (!--v14)
    {
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_11:
  free(v9);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)startWatchingBackupAgent2
{
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_eventQueue);
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  if (v5)
  {
    v6 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v5, v6, 0x12A05F200uLL, 5uLL);
    v7 = self->_timer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__MBXPCClient_startWatchingBackupAgent2__block_invoke;
    handler[3] = &unk_1E8684358;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_timer);
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "Failed to create timer to monitor BackupAgent2", buf, 2u);
      _MBLog(@"E ", "Failed to create timer to monitor BackupAgent2", v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

void __40__MBXPCClient_startWatchingBackupAgent2__block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = [MBPersona personalPersonaWithError:0];
  v3 = [v2 getBooleanValueForKey:@"DriveRestoreInProgress" keyExists:&v6];
  v4 = *(a1 + 32);
  if ((v4[32] & 1) != 0 || v3)
  {
    if (([v4 _isBackupAgent2Running] & 1) == 0)
    {
      *(*(a1 + 32) + 32) = 0;
      [v2 setPreferencesValue:0 forKey:@"DriveRestoreInProgress"];
      v5 = [*(a1 + 32) delegate];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v5 managerDidFinishRestore:*(a1 + 32)];
      }
    }
  }

  else
  {
    [v4 startWatchingBackupAgent2];
  }
}

- (void)setSupportsiTunes:(BOOL)tunes
{
  tunesCopy = tunes;
  [(MBXPCClient *)self setShouldSupportiTunes:?];
  if (tunesCopy)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_INFO, "MBManager is now monitoring iTunes restores", buf, 2u);
      _MBLog(@"I ", "MBManager is now monitoring iTunes restores", v6, v7, v8, v9, v10, v11, v32[0]);
    }

    uTF8String = [@"com.apple.private.restrict-post.MobileBackup.Drive.RestoreStarted" UTF8String];
    eventQueue = self->_eventQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __33__MBXPCClient_setSupportsiTunes___block_invoke;
    handler[3] = &unk_1E8684618;
    handler[4] = self;
    if (notify_register_dispatch(uTF8String, &self->_iTunesRestoreStartedNotificationToken, eventQueue, handler))
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEB5D000, v14, OS_LOG_TYPE_ERROR, "Failed to start monitoring for iTunes restore session start", buf, 2u);
        _MBLog(@"E ", "Failed to start monitoring for iTunes restore session start", v15, v16, v17, v18, v19, v20, v32[0]);
      }
    }

    uTF8String2 = [@"com.apple.private.restrict-post.MobileBackup.Drive.RestoreEnded" UTF8String];
    v22 = self->_eventQueue;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __33__MBXPCClient_setSupportsiTunes___block_invoke_38;
    v32[3] = &unk_1E8684618;
    v32[4] = self;
    if (notify_register_dispatch(uTF8String2, &self->_iTunesRestoreEndedNotificationToken, v22, v32))
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEB5D000, v23, OS_LOG_TYPE_ERROR, "Failed to start monitoring for iTunes restore session end", buf, 2u);
        _MBLog(@"E ", "Failed to start monitoring for iTunes restore session end", v24, v25, v26, v27, v28, v29, v32[0]);
      }
    }

    [(MBXPCClient *)self startWatchingBackupAgent2];
  }

  else
  {
    iTunesRestoreStartedNotificationToken = self->_iTunesRestoreStartedNotificationToken;
    if (iTunesRestoreStartedNotificationToken)
    {
      notify_cancel(iTunesRestoreStartedNotificationToken);
      self->_iTunesRestoreStartedNotificationToken = 0;
    }

    iTunesRestoreEndedNotificationToken = self->_iTunesRestoreEndedNotificationToken;
    if (iTunesRestoreEndedNotificationToken)
    {
      notify_cancel(iTunesRestoreEndedNotificationToken);
      self->_iTunesRestoreEndedNotificationToken = 0;
    }
  }
}

uint64_t __33__MBXPCClient_setSupportsiTunes___block_invoke_38(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 managerDidFinishRestore:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

- (BOOL)setupBackupWithPasscode:(id)passcode error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v7 = _os_activity_create(&dword_1DEB5D000, "setupBackupWithPasscode:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  if (passcodeCopy)
  {
    v14[0] = passcodeCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSetupBackup" arguments:v8 error:error];
  bOOLValue = [v9 BOOLValue];

  os_activity_scope_leave(&v13);
  v11 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)isBackupEnabled
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1DEB5D000, "isBackupEnabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = +[MBManagedPolicy sharedPolicy];
  v5 = [v4 checkIfCloudBackupIsAllowed:0];

  if ((v5 & 1) == 0)
  {
    LOBYTE(bOOLValue) = 0;
    goto LABEL_8;
  }

  currentPersona = [MEMORY[0x1E69DF078] currentPersona];
  v7 = currentPersona;
  if (self->_personaIdentifier || ([currentPersona isPersonalPersona] & 1) == 0 && (objc_msgSend(v7, "isDefaultPersona") & 1) == 0 && !objc_msgSend(v7, "isSystemPersona"))
  {
    goto LABEL_3;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabledToken = selfCopy->_enabledToken;
  if (enabledToken == -1)
  {
    v21 = notify_register_check("com.apple.private.restrict-post.MobileBackup.EnabledState", &selfCopy->_enabledToken);
    if (v21)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v47 = v21;
        _os_log_impl(&dword_1DEB5D000, v22, OS_LOG_TYPE_ERROR, "notify_register_check failed: %lu", buf, 0xCu);
        _MBLog(@"E ", "notify_register_check failed: %lu", v23, v24, v25, v26, v27, v28, v21);
      }

      enabledToken = -1;
      selfCopy->_enabledToken = -1;
    }

    else
    {
      enabledToken = selfCopy->_enabledToken;
    }
  }

  objc_sync_exit(selfCopy);

  if (enabledToken == -1)
  {
    goto LABEL_3;
  }

  state64 = 0;
  v29 = notify_get_state(enabledToken, &state64);
  if (v29)
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v47 = v29;
      _os_log_impl(&dword_1DEB5D000, v30, OS_LOG_TYPE_ERROR, "notify_get_state failed: %lu", buf, 0xCu);
      _MBLog(@"E ", "notify_get_state failed: %lu", v31, v32, v33, v34, v35, v36, v29);
    }

    state64 = 0;
  }

  v37 = MBGetDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v47 = state64;
    _os_log_impl(&dword_1DEB5D000, v37, OS_LOG_TYPE_INFO, "Fetched the backup enabled notify state: 0x%llx", buf, 0xCu);
    _MBLog(@"I ", "Fetched the backup enabled notify state: 0x%llx", v38, v39, v40, v41, v42, v43, state64);
  }

  if (state64 == 1)
  {
    LOBYTE(bOOLValue) = 1;
    goto LABEL_6;
  }

  if (state64 != -1)
  {
LABEL_3:
    v8 = [(MBXPCClient *)self _sendRequest:@"kMBMessageIsBackupEnabled" arguments:0];
    bOOLValue = [v8 BOOLValue];
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v47) = bOOLValue;
      _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_INFO, "isBackupEnabled:%d", buf, 8u);
      _MBLog(@"I ", "isBackupEnabled:%d", v11, v12, v13, v14, v15, v16, bOOLValue);
    }

    goto LABEL_6;
  }

  LOBYTE(bOOLValue) = 0;
LABEL_6:

LABEL_8:
  os_activity_scope_leave(&state);

  v17 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (void)syncBackupEnabled
{
  v3 = _os_activity_create(&dword_1DEB5D000, "syncBackupEnabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSyncBackupEnabled" arguments:0];
  os_activity_scope_leave(&v5);
}

- (BOOL)isLocalBackupPasswordSetWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "isLocalBackupPasswordSetWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageIsLocalBackupPasswordSet" arguments:0 error:error];
  LOBYTE(error) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return error;
}

- (BOOL)unsetLocalBackupPasswordWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "unsetLocalBackupPasswordWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageUnsetLocalBackupPassword" arguments:0 error:error];
  LOBYTE(error) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return error;
}

- (BOOL)inheritSnapshot:(id)snapshot fromDevice:(id)device error:(id *)error
{
  v16[2] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  deviceCopy = device;
  v10 = _os_activity_create(&dword_1DEB5D000, "inheritSnapshot:snapshotID:fromDevice:error", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v16[0] = snapshotCopy;
  v16[1] = deviceCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MBXPCClient *)self _sendRequest:@"kMBMessageInheritBackup" arguments:v11 error:error];

  LOBYTE(error) = [v12 BOOLValue];
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)backupState
{
  v3 = _os_activity_create(&dword_1DEB5D000, "backupState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageBackupState" arguments:0];
  os_activity_scope_leave(&v6);

  return v4;
}

- (id)backupDeviceUUID
{
  v3 = _os_activity_create(&dword_1DEB5D000, "backupDeviceUUID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v3, &v7);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageGetBackupDeviceUUID" arguments:0];
  mb_backupIDByAddingCKPrefix = [v4 mb_backupIDByAddingCKPrefix];

  os_activity_scope_leave(&v7);

  return mb_backupIDByAddingCKPrefix;
}

- (BOOL)startBackupWithOptions:(id)options error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = _os_activity_create(&dword_1DEB5D000, "startBackupWithOptions:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v7, &v12);
  v13[0] = optionsCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageStartBackup" arguments:v8 error:error];

  LOBYTE(error) = [v9 BOOLValue];
  os_activity_scope_leave(&v12);

  v10 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)startBackupWithError:(id *)error
{
  v5 = objc_opt_new();
  LOBYTE(error) = [(MBXPCClient *)self startBackupWithOptions:v5 error:error];

  return error;
}

- (void)cancel
{
  v3 = _os_activity_create(&dword_1DEB5D000, "cancel", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageCancel" arguments:0];
  os_activity_scope_leave(&v5);
}

- (void)cancelRestore
{
  v3 = _os_activity_create(&dword_1DEB5D000, "cancelRestore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageCancelRestore" arguments:0];
  os_activity_scope_leave(&v5);
}

- (id)restoreStateWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1DEB5D000, "restoreState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  if ([(MBXPCClient *)self shouldSupportiTunes])
  {
    v22 = 0;
    v6 = [MBPersona personalPersonaWithError:0];
    v7 = [v6 getBooleanValueForKey:@"DriveRestoreInProgress" keyExists:&v22];
    v8 = v7;
    if ((self->_iTunesRestoreStarted || v7) && [(MBXPCClient *)self _isBackupAgent2Running])
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        iTunesRestoreStarted = self->_iTunesRestoreStarted;
        *buf = 67109376;
        v25 = iTunesRestoreStarted;
        v26 = 1024;
        v27 = v8;
        _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_INFO, "iTunes restore in progress (%d, %d)", buf, 0xEu);
        _MBLog(@"I ", "iTunes restore in progress (%d, %d)", v11, v12, v13, v14, v15, v16, self->_iTunesRestoreStarted);
      }

      v17 = [[MBStateInfo alloc] initWithState:2 progress:0 estimatedTimeRemaining:0 isCloud:0 isBackground:0 error:0 errors:0.0 backupAttemptCount:0];
      goto LABEL_13;
    }
  }

  v21 = 0;
  v17 = [(MBXPCClient *)self _sendRequest:@"kMBMessageRestoreState" arguments:0 error:&v21];
  v18 = v21;
  if (error && !v17)
  {
    v18 = v18;
    *error = v18;
  }

LABEL_13:
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)fetchiCloudRestoreIsCompleteWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MBXPCClient fetchiCloudRestoreIsCompleteWithCompletion:];
  }

  v5 = completionCopy;
  v6 = dispatch_get_global_queue(17, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__MBXPCClient_fetchiCloudRestoreIsCompleteWithCompletion___block_invoke;
  v8[3] = &unk_1E86843F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __58__MBXPCClient_fetchiCloudRestoreIsCompleteWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "fetchiCloudRestoreIsCompleteWithCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = *(a1 + 32);
  v8 = 0;
  v5 = [v4 _sendRequest:@"kMBMessageRestoreState" arguments:0 error:&v8];
  v6 = v8;
  v7 = v6;
  if (v5)
  {

    [v5 state];
    v7 = 0;
  }

  else if (!v6)
  {
    __assert_rtn("[MBXPCClient fetchiCloudRestoreIsCompleteWithCompletion:]_block_invoke", "MBXPCClient.m", 420, "error");
  }

  (*(*(a1 + 40) + 16))();

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
}

- (id)backgroundRestoreInfo
{
  v3 = _os_activity_create(&dword_1DEB5D000, "backgroundRestoreInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageBackgroundRestoreInfo" arguments:0];
  os_activity_scope_leave(&v6);

  return v4;
}

- (BOOL)restoreFileExistsWithPath:(id)path
{
  v12[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Null path"];
  }

  v5 = _os_activity_create(&dword_1DEB5D000, "restoreFileExistsWithPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  v12[0] = pathCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [(MBXPCClient *)self _sendRequest:@"kMBMessageFileExists" arguments:v6];

  bOOLValue = [v7 BOOLValue];
  os_activity_scope_leave(&v11);

  v9 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)restoreDataExistsForApplicationWithBundleID:(id)d size:(unint64_t *)size
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = _os_activity_create(&dword_1DEB5D000, "restoreDataExistsForApplicationWithBundleID:size:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v7, &v16);
  v17[0] = dCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDataExistsForApp" arguments:v8];

  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v9 objectAtIndexedSubscript:1];
  v12 = v11;
  if (size)
  {
    *size = [v11 unsignedLongLongValue];
  }

  bOOLValue = [v10 BOOLValue];

  os_activity_scope_leave(&v16);
  v14 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

void __74__MBXPCClient_restoreFilesForDomain_relativePath_pendingOnly_range_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v3 addObjectsFromArray:v7];
}

- (void)prioritizeRestoreFileWithPath:(id)path
{
  v10[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = _os_activity_create(&dword_1DEB5D000, "prioritizeRestoreFileWithPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v5, &v9);
  v10[0] = pathCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(MBXPCClient *)self _sendRequest:@"kMBMessagePrioritizeRestoreFile" arguments:v6];

  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)recordRestoreFailure:(id)failure error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  identifier = [failureCopy identifier];

  if (!identifier)
  {
    [MBXPCClient recordRestoreFailure:error:];
  }

  dataclass = [failureCopy dataclass];

  if (!dataclass)
  {
    [MBXPCClient recordRestoreFailure:error:];
  }

  v9 = _os_activity_create(&dword_1DEB5D000, "recordRestoreFailure:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v9, &v15);
  v16[0] = failureCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11 = [(MBXPCClient *)self _sendRequest:@"kMBMessageReportRestoreFailure" arguments:v10 error:error];

  bOOLValue = [v11 BOOLValue];
  os_activity_scope_leave(&v15);

  v13 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (id)restoreFailuresForDataclass:(id)dataclass assetType:(id)type range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v20[3] = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  typeCopy = type;
  v11 = _os_activity_create(&dword_1DEB5D000, "restoreFailuresForDataclass:assetType:range:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v11, &v19);
  null = dataclassCopy;
  if (!dataclassCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20[0] = null;
  null2 = typeCopy;
  if (!typeCopy)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = null2;
  v22.location = location;
  v22.length = length;
  v14 = NSStringFromRange(v22);
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v16 = [(MBXPCClient *)self _sendRequest:@"kMBMessageListRestoreFailures" arguments:v15 error:0];

  if (!typeCopy)
  {
  }

  if (!dataclassCopy)
  {
  }

  os_activity_scope_leave(&v19);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (unint64_t)countOfRestoreFailuresForDataclass:(id)dataclass assetType:(id)type
{
  v17[2] = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  typeCopy = type;
  v8 = _os_activity_create(&dword_1DEB5D000, "countOfRestoreFailuresForDataclass:assetType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  null = dataclassCopy;
  if (!dataclassCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  null2 = typeCopy;
  if (!typeCopy)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [(MBXPCClient *)self _sendRequest:@"kMBMessageCountRestoreFailures" arguments:v11 error:0];

  if (!typeCopy)
  {
  }

  if (!dataclassCopy)
  {
  }

  unsignedIntegerValue = [v12 unsignedIntegerValue];

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (id)dateOfLastBackupWithError:(id *)error
{
  if (dateOfLastBackupWithError__onceToken != -1)
  {
    [MBXPCClient dateOfLastBackupWithError:];
  }

  dispatch_semaphore_wait(dateOfLastBackupWithError__dateOfLastBackupSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v5 = _os_activity_create(&dword_1DEB5D000, "dateOfLastBackup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDateOfLastBackup" arguments:0 error:error];
  os_activity_scope_leave(&v8);

  dispatch_semaphore_signal(dateOfLastBackupWithError__dateOfLastBackupSemaphore);

  return v6;
}

uint64_t __41__MBXPCClient_dateOfLastBackupWithError___block_invoke()
{
  dateOfLastBackupWithError__dateOfLastBackupSemaphore = dispatch_semaphore_create(2);

  return MEMORY[0x1EEE66BB8]();
}

- (id)dateOfNextScheduledBackupWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "dateOfNextScheduledBackup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDateOfNextBackup" arguments:0 error:error];
  os_activity_scope_leave(&v8);

  return v6;
}

- (BOOL)restoreSupportsBatching
{
  v3 = _os_activity_create(&dword_1DEB5D000, "restoreSupportsBatching:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageRestoreSupportsBatching" arguments:0];
  LOBYTE(self) = [v4 BOOLValue];

  os_activity_scope_leave(&v6);
  return self;
}

- (void)setRestoreQualityOfService:(int64_t)service
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1DEB5D000, "setRestoreQualityOfService:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:service];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSetRestoreQualityOfService" arguments:v7];

  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveBackgroundRestoreCellularAccess:(id)access completion:(id)completion
{
  accessCopy = access;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MBXPCClient_saveBackgroundRestoreCellularAccess_completion___block_invoke;
  block[3] = &unk_1E8684668;
  block[4] = self;
  v12 = accessCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = accessCopy;
  dispatch_async(v8, block);
}

void __62__MBXPCClient_saveBackgroundRestoreCellularAccess_completion___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "saveBackgroundRestoreCellularAccess:completion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = a1[4];
  v11[0] = a1[5];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = 0;
  v6 = [v4 _sendRequest:@"kMBMessageSaveBackgroundRestoreCellularAccess" arguments:v5 error:&v9];
  v7 = v9;

  (*(a1[6] + 16))();
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchBackgroundRestoreCellularAccessWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MBXPCClient_fetchBackgroundRestoreCellularAccessWithCompletion___block_invoke;
  v7[3] = &unk_1E86843F8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

void __66__MBXPCClient_fetchBackgroundRestoreCellularAccessWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "fetchBackgroundRestoreCellularAccessWithCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = *(a1 + 32);
  v7 = 0;
  v5 = [v4 backgroundRestoreCellularAccessWithError:&v7];
  v6 = v7;
  (*(*(a1 + 40) + 16))();

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
}

- (id)backgroundRestoreCellularAccessWithError:(id *)error
{
  v4 = _os_activity_create(&dword_1DEB5D000, "backgroundRestoreCellularAccessWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v7 = 0;
  v5 = [(MBXPCClient *)self _sendRequest:@"kMBMessageFetchBackgroundRestoreCellularAccess" arguments:0 error:&v7];
  os_activity_scope_leave(&state);

  return v5;
}

- (BOOL)startRestoreForBackupUDID:(id)d snapshotID:(unint64_t)iD error:(id *)error
{
  dCopy = d;
  v9 = objc_opt_new();
  [v9 cellularAccess];
  if (objc_claimAutoreleasedReturnValue())
  {
    [MBXPCClient startRestoreForBackupUDID:snapshotID:error:];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__MBXPCClient_startRestoreForBackupUDID_snapshotID_error___block_invoke;
  v15[3] = &unk_1E8684690;
  v17 = &v18;
  v11 = v10;
  v16 = v11;
  [(MBXPCClient *)self startRestoreForBackupUDID:dCopy snapshotID:iD options:v9 completion:v15];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v19[5];
  if (error && v12)
  {
    *error = v12;
    v12 = v19[5];
  }

  v13 = v12 == 0;

  _Block_object_dispose(&v18, 8);
  return v13;
}

void __58__MBXPCClient_startRestoreForBackupUDID_snapshotID_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)startRestoreForBackupUDID:(id)d snapshotID:(unint64_t)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup UDID"];
  }

  v13 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MBXPCClient_startRestoreForBackupUDID_snapshotID_options_completion___block_invoke;
  block[3] = &unk_1E86846B8;
  v21 = completionCopy;
  iDCopy = iD;
  v18 = dCopy;
  selfCopy = self;
  v20 = optionsCopy;
  v14 = completionCopy;
  v15 = optionsCopy;
  v16 = dCopy;
  dispatch_async(v13, block);
}

void __71__MBXPCClient_startRestoreForBackupUDID_snapshotID_options_completion___block_invoke(void *a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "startRestoreForBackupUDID:snapshotID:options:completion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = [[MBSnapshotIdentifier alloc] initWithBackupUDID:a1[4] snapshotID:a1[8]];
  v6 = a1[5];
  v5 = a1[6];
  v13[0] = v4;
  v13[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = 0;
  v8 = [v6 _sendRequest:@"kMBMessageStartRestore" arguments:v7 error:&v11];
  v9 = v11;

  (*(a1[7] + 16))();
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)startRestoreForSnapshot:(id)snapshot options:(id)options completion:(id)completion
{
  snapshotCopy = snapshot;
  optionsCopy = options;
  completionCopy = completion;
  if (!snapshotCopy)
  {
    [MBXPCClient startRestoreForSnapshot:options:completion:];
  }

  v11 = completionCopy;
  v12 = dispatch_get_global_queue(17, 0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__MBXPCClient_startRestoreForSnapshot_options_completion___block_invoke;
  v16[3] = &unk_1E86846E0;
  v16[4] = self;
  v17 = snapshotCopy;
  v18 = optionsCopy;
  v19 = v11;
  v13 = v11;
  v14 = optionsCopy;
  v15 = snapshotCopy;
  dispatch_async(v12, v16);
}

void __58__MBXPCClient_startRestoreForSnapshot_options_completion___block_invoke(void *a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "startRestoreForSnapshot:options:completion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = a1[4];
  v5 = a1[6];
  v12[0] = a1[5];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = 0;
  v7 = [v4 _sendRequest:@"kMBMessageStartRestore" arguments:v6 error:&v10];
  v8 = v10;

  (*(a1[7] + 16))();
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)restoreFileWithPath:(id)path context:(id)context error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  contextCopy = context;
  if (!pathCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid file path"];
  }

  v10 = _os_activity_create(&dword_1DEB5D000, "restoreFileWithPath:context:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v10, &v16);
  v17[0] = pathCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v12 = [(MBXPCClient *)self _sendRequest:@"kMBMessageStartFileRestore" arguments:v11 error:error];

  bOOLValue = [v12 BOOLValue];
  os_activity_scope_leave(&v16);

  v14 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)restoreFilesWithPaths:(id)paths context:(id)context error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  contextCopy = context;
  if (!pathsCopy || ![pathsCopy count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid array of file paths"];
  }

  v10 = _os_activity_create(&dword_1DEB5D000, "restoreFilesWithPaths:context:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v10, &v16);
  v17[0] = pathsCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v12 = [(MBXPCClient *)self _sendRequest:@"kMBMessageStartFilesRestore" arguments:v11 error:error];

  bOOLValue = [v12 BOOLValue];
  os_activity_scope_leave(&v16);

  v14 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)restoreBookWithPath:(id)path context:(id)context error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  contextCopy = context;
  v10 = _os_activity_create(&dword_1DEB5D000, "restoreBookWithPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v10, &v15);
  v16[0] = pathCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [(MBXPCClient *)self _sendRequest:@"kMBMessageStartBookRestore" arguments:v11 error:error];

  LOBYTE(error) = [v12 BOOLValue];
  os_activity_scope_leave(&v15);

  v13 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)cancelApplicationRestoreWithBundleID:(id)d error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid bundle id"];
  }

  v7 = _os_activity_create(&dword_1DEB5D000, "cancelApplicationRestoreWithBundleID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  v14[0] = dCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageCancelAppRestore" arguments:v8 error:error];
  bOOLValue = [v9 BOOLValue];

  os_activity_scope_leave(&v13);
  v11 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (void)finishRestore
{
  v3 = _os_activity_create(&dword_1DEB5D000, "finishRestore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageFinishRestore" arguments:0];
  os_activity_scope_leave(&v5);
}

- (void)insufficientFreeSpaceToRestore
{
  v3 = _os_activity_create(&dword_1DEB5D000, "insufficientFreeSpaceToRestore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageInsufficientFreeSpaceToRestore" arguments:0];
  os_activity_scope_leave(&v5);
}

- (void)wakeUp
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1DEB5D000, "wakeUp", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v14 = 0;
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageWakeUp" arguments:0 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_ERROR, "Failed to send WakeUp message to backupd: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to send WakeUp message to backupd: %@", v7, v8, v9, v10, v11, v12, v5);
    }
  }

  os_activity_scope_leave(&state);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)accountChanged:(id)changed
{
  v21[1] = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = _os_activity_create(&dword_1DEB5D000, "accountChanged", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v21[0] = changedCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v17 = 0;
  v7 = [(MBXPCClient *)self _sendRequest:@"kMBMessageAccountChanged" arguments:v6 error:&v17];
  v8 = v17;

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_ERROR, "Failed to send AccountChanged message to backupd: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to send AccountChanged message to backupd: %@", v10, v11, v12, v13, v14, v15, v8);
    }
  }

  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)passcodeChanged
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1DEB5D000, "passcodeChanged", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v14 = 0;
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessagePasscodeChanged" arguments:MEMORY[0x1E695E0F0] error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_ERROR, "Failed to send passcode message to backupd: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to send passcode message to backupd: %@", v7, v8, v9, v10, v11, v12, v5);
    }
  }

  os_activity_scope_leave(&state);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)deviceIsLocking
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1DEB5D000, "deviceIsLocking", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v14 = 0;
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDeviceIsLocking" arguments:0 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_ERROR, "Failed to send DeviceIsLocking message to backupd: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to send DeviceIsLocking message to backupd: %@", v7, v8, v9, v10, v11, v12, v5);
    }
  }

  os_activity_scope_leave(&state);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)deviceIsUnlocked
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyValue(@"NotifyDaemonNextTimeKeyBagIsUnlocked", @"com.apple.MobileBackup", @"mobile", *MEMORY[0x1E695E8B0]);
  bOOLValue = [v3 BOOLValue];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = bOOLValue;
    LOWORD(v27[0]) = 2112;
    *(v27 + 2) = v3;
    _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_INFO, "kMBNotifyDaemonNextTimeDeviceIsUnlocked %d (%@)", buf, 0x12u);
    _MBLog(@"I ", "kMBNotifyDaemonNextTimeDeviceIsUnlocked %d (%@)", v6, v7, v8, v9, v10, v11, bOOLValue);
  }

  if (bOOLValue)
  {
    v12 = _os_activity_create(&dword_1DEB5D000, "deviceIsUnlocked", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    v27[0] = 0;
    os_activity_scope_enter(v12, buf);
    v23 = 0;
    v13 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDeviceIsUnlocked" arguments:0 error:&v23];
    v14 = v23;
    if (v14)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 138412290;
        v25 = v14;
        _os_log_impl(&dword_1DEB5D000, v15, OS_LOG_TYPE_DEFAULT, "Failed to send DeviceIsUnlocked message to backupd: %@", v24, 0xCu);
        _MBLog(@"Df", "Failed to send DeviceIsUnlocked message to backupd: %@", v16, v17, v18, v19, v20, v21, v14);
      }
    }

    os_activity_scope_leave(buf);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)deleteAccountWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "deleteAccountWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDeleteAccount" arguments:0 error:error];
  LOBYTE(error) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return error;
}

- (BOOL)deleteBackupUDID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup"];
  }

  v7 = _os_activity_create(&dword_1DEB5D000, "deleteBackupUDID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v7, &v14);
  mb_backupIDByRemovingCKPrefix = [dCopy mb_backupIDByRemovingCKPrefix];

  v15[0] = mb_backupIDByRemovingCKPrefix;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v10 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDeleteBackup" arguments:v9 error:error];

  bOOLValue = [v10 BOOLValue];
  os_activity_scope_leave(&v14);

  v12 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (id)journalLastModifiedForBackupUUID:(id)d error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = dCopy;
  if (!dCopy || ![dCopy length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup UDID"];
  }

  v8 = _os_activity_create(&dword_1DEB5D000, "journalLastModifiedForBackupUUID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  mb_backupIDByRemovingCKPrefix = [v7 mb_backupIDByRemovingCKPrefix];

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = mb_backupIDByRemovingCKPrefix;
    _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_DEFAULT, "journalLastModifiedForBackupUUID: %@", buf, 0xCu);
    _MBLog(@"Df", "journalLastModifiedForBackupUUID: %@", v11, v12, v13, v14, v15, v16, mb_backupIDByRemovingCKPrefix);
  }

  v22 = mb_backupIDByRemovingCKPrefix;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v18 = [(MBXPCClient *)self _sendRequest:@"kMBMessageJournalLastModified" arguments:v17 error:error];

  os_activity_scope_leave(&state);
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)journalForBackupUUID:(id)d error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = dCopy;
  if (!dCopy || ![dCopy length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup UDID"];
  }

  v8 = _os_activity_create(&dword_1DEB5D000, "journalForBackupUUID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  mb_backupIDByRemovingCKPrefix = [v7 mb_backupIDByRemovingCKPrefix];

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = mb_backupIDByRemovingCKPrefix;
    _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_DEFAULT, "journalForBackup: backupUDID: %@", buf, 0xCu);
    _MBLog(@"Df", "journalForBackup: backupUDID: %@", v11, v12, v13, v14, v15, v16, mb_backupIDByRemovingCKPrefix);
  }

  v22 = mb_backupIDByRemovingCKPrefix;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v18 = [(MBXPCClient *)self _sendRequest:@"kMBListJournalActions" arguments:v17 error:error];

  os_activity_scope_leave(&state);
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)filesForSnapshotID:(unint64_t)d backupUDID:(id)iD error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  v9 = iDCopy;
  if (!iDCopy || ![iDCopy length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup UDID"];
  }

  v10 = _os_activity_create(&dword_1DEB5D000, "filesForSnapshotID:backupUDID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  mb_backupIDByRemovingCKPrefix = [v9 mb_backupIDByRemovingCKPrefix];

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    dCopy = d;
    v28 = 2112;
    v29 = mb_backupIDByRemovingCKPrefix;
    _os_log_impl(&dword_1DEB5D000, v12, OS_LOG_TYPE_DEFAULT, "filesForSnapshot (client): %ld backupUDID: %@", buf, 0x16u);
    _MBLog(@"Df", "filesForSnapshot (client): %ld backupUDID: %@", v13, v14, v15, v16, v17, v18, d);
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  v25[0] = v19;
  v25[1] = mb_backupIDByRemovingCKPrefix;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v21 = [(MBXPCClient *)self _sendRequest:@"kMBMessageListSnapshotFiles" arguments:v20 error:error];

  os_activity_scope_leave(&state);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)mergeSnapshots:(id)snapshots backupUUID:(id)d error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  snapshotsCopy = snapshots;
  dCopy = d;
  v10 = _os_activity_create(&dword_1DEB5D000, "mergeSnapshots:backupUUID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v10, &v17);
  mb_backupIDByRemovingCKPrefix = [dCopy mb_backupIDByRemovingCKPrefix];

  v18[0] = mb_backupIDByRemovingCKPrefix;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v13 = [v12 arrayByAddingObjectsFromArray:snapshotsCopy];
  v14 = [(MBXPCClient *)self _sendRequest:@"kMBMessageMergeSnapshots" arguments:v13 error:error];
  LOBYTE(error) = [v14 BOOLValue];

  os_activity_scope_leave(&v17);
  v15 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)acquireLockWithBackupUDID:(id)d owner:(id)owner timeout:(double)timeout error:(id *)error
{
  v21[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  ownerCopy = owner;
  if (!dCopy)
  {
    [MBXPCClient acquireLockWithBackupUDID:owner:timeout:error:];
  }

  if (!ownerCopy)
  {
    [MBXPCClient acquireLockWithBackupUDID:owner:timeout:error:];
  }

  v12 = _os_activity_create(&dword_1DEB5D000, "acquireLockWithBackupUDID:owner:timeout:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v20.opaque[0] = 0;
  v20.opaque[1] = 0;
  os_activity_scope_enter(v12, &v20);
  mb_backupIDByRemovingCKPrefix = [dCopy mb_backupIDByRemovingCKPrefix];

  v21[0] = mb_backupIDByRemovingCKPrefix;
  v21[1] = ownerCopy;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
  v21[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v16 = [(MBXPCClient *)self _sendRequest:@"kMBMessageAcquireLock" arguments:v15 error:error];

  bOOLValue = [v16 BOOLValue];
  os_activity_scope_leave(&v20);

  v18 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)releaseLockWithBackupUDID:(id)d owner:(id)owner error:(id *)error
{
  v18[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  ownerCopy = owner;
  if (!dCopy)
  {
    [MBXPCClient releaseLockWithBackupUDID:owner:error:];
  }

  if (!ownerCopy)
  {
    [MBXPCClient releaseLockWithBackupUDID:owner:error:];
  }

  v10 = _os_activity_create(&dword_1DEB5D000, "releaseLockWithBackupUDID:account:owner:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  mb_backupIDByRemovingCKPrefix = [dCopy mb_backupIDByRemovingCKPrefix];

  v18[0] = mb_backupIDByRemovingCKPrefix;
  v18[1] = ownerCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v13 = [(MBXPCClient *)self _sendRequest:@"kMBMessageReleaseLock" arguments:v12 error:error];

  bOOLValue = [v13 BOOLValue];
  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (id)deviceLockInfosWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "deviceLockInfosWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageFetchDeviceLockInfos" arguments:0 error:error];
  os_activity_scope_leave(&v8);

  return v6;
}

- (BOOL)startScanWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "startScanWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageStartScan" arguments:0 error:error];
  LOBYTE(error) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return error;
}

- (BOOL)startScanForBundleIDs:(id)ds error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!dsCopy)
  {
    [MBXPCClient startScanForBundleIDs:error:];
  }

  v7 = _os_activity_create(&dword_1DEB5D000, "startScanForBundleIDs:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  v14[0] = dsCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageStartScanForBundleIDs" arguments:v8 error:error];

  bOOLValue = [v9 BOOLValue];
  os_activity_scope_leave(&v13);

  v11 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (unint64_t)nextBackupSize
{
  v3 = _os_activity_create(&dword_1DEB5D000, "nextBackupSize", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v3, &v7);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageNextBackupSize" arguments:0];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  os_activity_scope_leave(&v7);
  return unsignedLongLongValue;
}

- (id)nextBackupSizeInfo
{
  v3 = _os_activity_create(&dword_1DEB5D000, "nextBackupSizeInfo:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageNextBackupSizeInfo" arguments:0];
  os_activity_scope_leave(&v6);

  return v4;
}

- (id)domainInfoForName:(id)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = _os_activity_create(&dword_1DEB5D000, "domainInfoForName:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);
  v11[0] = nameCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDomainInfo" arguments:v6];

  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)domainInfoList
{
  v3 = _os_activity_create(&dword_1DEB5D000, "domainInfoList", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  if (domainInfoList_onceToken != -1)
  {
    [MBXPCClient domainInfoList];
  }

  dispatch_semaphore_wait(domainInfoList_domainInfosSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDomainInfoList" arguments:0 error:0];
  dispatch_semaphore_signal(domainInfoList_domainInfosSemaphore);
  os_activity_scope_leave(&v6);

  return v4;
}

uint64_t __29__MBXPCClient_domainInfoList__block_invoke()
{
  domainInfoList_domainInfosSemaphore = dispatch_semaphore_create(2);

  return MEMORY[0x1EEE66BB8]();
}

- (id)disabledDomainInfos
{
  v3 = _os_activity_create(&dword_1DEB5D000, "disabledDomainInfos", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDisabledDomainInfos" arguments:0 error:0];
  os_activity_scope_leave(&v6);

  return v4;
}

- (BOOL)removeDomainName:(id)name error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (removeDomainName_error__onceToken != -1)
  {
    [MBXPCClient removeDomainName:error:];
  }

  dispatch_semaphore_wait(removeDomainName_error__removeDomainSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v7 = _os_activity_create(&dword_1DEB5D000, "removeDomainName:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  v14[0] = nameCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageRemoveDomain" arguments:v8 error:error];

  bOOLValue = [v9 BOOLValue];
  os_activity_scope_leave(&v13);

  dispatch_semaphore_signal(removeDomainName_error__removeDomainSemaphore);
  v11 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

uint64_t __38__MBXPCClient_removeDomainName_error___block_invoke()
{
  removeDomainName_error__removeDomainSemaphore = dispatch_semaphore_create(3);

  return MEMORY[0x1EEE66BB8]();
}

- (id)reservedBackupSizeListWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "reservedBackupSizeList:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageReservedBackupSizeList" arguments:0 error:error];
  os_activity_scope_leave(&v8);

  return v6;
}

- (BOOL)isBackupEnabledForDomainName:(id)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = _os_activity_create(&dword_1DEB5D000, "isBackupEnabledForDomainName:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);
  v11[0] = nameCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(MBXPCClient *)self _sendRequest:@"kMBMessageIsDomainEnabled" arguments:v6];

  LOBYTE(self) = [v7 BOOLValue];
  os_activity_scope_leave(&v10);

  v8 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)getAppleIDsMapForBackupUDID:(id)d snapshotID:(unint64_t)iD activeAppleID:(id *)appleID error:(id *)error
{
  v26[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup UDID"];
  }

  v11 = _os_activity_create(&dword_1DEB5D000, "getAppleIDsMapForBackupUDID:snapshotID:activeAppleID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  mb_backupIDByRemovingCKPrefix = [dCopy mb_backupIDByRemovingCKPrefix];

  v26[0] = mb_backupIDByRemovingCKPrefix;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:iD];
  v26[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v15 = [(MBXPCClient *)self _sendRequest:@"kMBMessageGetAppleIDsMap" arguments:v14 error:error];

  firstObject = [v15 firstObject];
  null = [MEMORY[0x1E695DFB0] null];
  if (firstObject == null)
  {
    firstObject2 = 0;
  }

  else
  {
    firstObject2 = [v15 firstObject];
  }

  lastObject = [v15 lastObject];
  null2 = [MEMORY[0x1E695DFB0] null];
  if (lastObject == null2)
  {
    lastObject2 = 0;
  }

  else
  {
    lastObject2 = [v15 lastObject];
  }

  if (appleID)
  {
    v22 = lastObject2;
    *appleID = lastObject2;
  }

  os_activity_scope_leave(&state);
  v23 = *MEMORY[0x1E69E9840];

  return firstObject2;
}

- (id)getBuddyDataStashForBackupUDID:(id)d snapshotID:(unint64_t)iD error:(id *)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup UDID"];
  }

  v9 = _os_activity_create(&dword_1DEB5D000, "getBuddyDataStashForBackupUDID:snapshotID:activeAppleID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  mb_backupIDByRemovingCKPrefix = [dCopy mb_backupIDByRemovingCKPrefix];

  v17[0] = mb_backupIDByRemovingCKPrefix;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:iD];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [(MBXPCClient *)self _sendRequest:@"kMBMessageGetBuddyData" arguments:v12 error:error];

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)restoreInfo
{
  v3 = _os_activity_create(&dword_1DEB5D000, "restoreInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageRestoreInfo" arguments:0];
  os_activity_scope_leave(&v6);

  return v4;
}

- (void)clearRestoreSession
{
  v3 = _os_activity_create(&dword_1DEB5D000, "clearRestoreSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageClearRestoreSession" arguments:0];
  os_activity_scope_leave(&v5);
}

- (BOOL)allowiTunesBackup
{
  v3 = _os_activity_create(&dword_1DEB5D000, "allowiTunesBackup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageGetAllowiTunesBackup" arguments:0];
  LOBYTE(self) = [v4 BOOLValue];

  os_activity_scope_leave(&v6);
  return self;
}

- (void)repair
{
  v3 = _os_activity_create(&dword_1DEB5D000, "repair", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageRepair" arguments:0];
  os_activity_scope_leave(&v5);
}

- (BOOL)countCameraRollQuota
{
  v3 = _os_activity_create(&dword_1DEB5D000, "countCameraRollQuota", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageCountCameraRollQuota" arguments:0];
  LOBYTE(self) = [v4 BOOLValue];

  os_activity_scope_leave(&v6);
  return self;
}

- (BOOL)countCameraRollQuotaForBackupUDID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = _os_activity_create(&dword_1DEB5D000, "countCameraRollQuotaForBackupUDID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v7, &v10);
  v8 = [(MBXPCClient *)self _sendRequest:@"kMBMessageCountCameraRollQuota" arguments:0 error:error];
  LOBYTE(error) = [v8 BOOLValue];

  os_activity_scope_leave(&v10);
  return error;
}

- (BOOL)discountCameraRollQuota
{
  v3 = _os_activity_create(&dword_1DEB5D000, "discountCameraRollQuota", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDiscountCameraRollQuota" arguments:0];
  LOBYTE(self) = [v4 BOOLValue];

  os_activity_scope_leave(&v6);
  return self;
}

- (BOOL)discountCameraRollQuotaForBackupUDID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = _os_activity_create(&dword_1DEB5D000, "discountCameraRollQuotaForBackupUDID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v7, &v10);
  v8 = [(MBXPCClient *)self _sendRequest:@"kMBMessageDiscountCameraRollQuota" arguments:0 error:error];
  LOBYTE(error) = [v8 BOOLValue];

  os_activity_scope_leave(&v10);
  return error;
}

- (BOOL)prepareForBackgroundRestoreWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "prepareForBackgroundRestoreWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessagePrepareForBackgroundRestore" arguments:0 error:error];
  LOBYTE(error) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return error;
}

- (BOOL)archiveLogsTo:(id)to error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  toCopy = to;
  v7 = _os_activity_create(&dword_1DEB5D000, "archiveLogsTo:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v7, &v16);
  v19[0] = toCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageArchiveLogs" arguments:v8 error:error];
  intValue = [v9 intValue];

  if (error && intValue)
  {
    v11 = MEMORY[0x1E696ABC0];
    v17 = @"status";
    v12 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
    v18 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *error = [v11 errorWithDomain:@"MBErrorDomain" code:1 userInfo:v13];
  }

  os_activity_scope_leave(&v16);

  v14 = *MEMORY[0x1E69E9840];
  return intValue == 0;
}

- (BOOL)pinSnapshotID:(unint64_t)d backupUDID:(id)iD error:(id *)error
{
  v18[2] = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  if (!iDCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup UDID"];
  }

  v9 = _os_activity_create(&dword_1DEB5D000, "pinSnapshotID:backupUDID:error", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  mb_backupIDByRemovingCKPrefix = [iDCopy mb_backupIDByRemovingCKPrefix];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  v18[0] = v11;
  v18[1] = mb_backupIDByRemovingCKPrefix;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v13 = [(MBXPCClient *)self _sendRequest:@"kMBMessagePinSnapshot" arguments:v12 error:error];

  bOOLValue = [v13 BOOLValue];
  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)unpinSnapshotID:(unint64_t)d backupUDID:(id)iD error:(id *)error
{
  v18[2] = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  if (!iDCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"must provide a valid backup UDID"];
  }

  v9 = _os_activity_create(&dword_1DEB5D000, "unpinSnapshotID:backupUDID:error", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  mb_backupIDByRemovingCKPrefix = [iDCopy mb_backupIDByRemovingCKPrefix];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  v18[0] = v11;
  v18[1] = mb_backupIDByRemovingCKPrefix;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v13 = [(MBXPCClient *)self _sendRequest:@"kMBMessageUnpinSnapshot" arguments:v12 error:error];

  bOOLValue = [v13 BOOLValue];
  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (void)boostBackgroundRestoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MBXPCClient_boostBackgroundRestoreWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E86843F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __59__MBXPCClient_boostBackgroundRestoreWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "boostRunningBackgroundRestore:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = *(a1 + 32);
  v7 = 0;
  v5 = [v4 _sendRequest:@"kMBMessageBoostBackgroundRestore" arguments:0 error:&v7];
  v6 = v7;
  (*(*(a1 + 40) + 16))();

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
}

- (void)boostManualBackupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MBXPCClient_boostManualBackupWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E86843F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __54__MBXPCClient_boostManualBackupWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "boostManualBackup:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = *(a1 + 32);
  v7 = 0;
  v5 = [v4 _sendRequest:@"kMBMessageBoostManualBackup" arguments:0 error:&v7];
  v6 = v7;
  (*(*(a1 + 40) + 16))();

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
}

- (void)fetchAppBundleIDsForSnapshot:(id)snapshot completion:(id)completion
{
  snapshotCopy = snapshot;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MBXPCClient_fetchAppBundleIDsForSnapshot_completion___block_invoke;
  block[3] = &unk_1E8684668;
  block[4] = self;
  v12 = snapshotCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = snapshotCopy;
  dispatch_async(v8, block);
}

void __55__MBXPCClient_fetchAppBundleIDsForSnapshot_completion___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "fetchAppBundleIDs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = a1[4];
  v11[0] = a1[5];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = 0;
  v6 = [v4 _sendRequest:@"kMBMessageFetchBundleIDs" arguments:v5 error:&v9];
  v7 = v9;

  (*(a1[6] + 16))();
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchRestorableSnapshotsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MBXPCClient_fetchRestorableSnapshotsWithCompletion___block_invoke;
  v7[3] = &unk_1E86843F8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

void __54__MBXPCClient_fetchRestorableSnapshotsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "fetchRestorableSnapshots", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = *(a1 + 32);
  v7 = 0;
  v5 = [v4 _sendRequest:@"kMBMessageFetchRestorableSnapshots" arguments:0 error:&v7];
  v6 = v7;
  (*(*(a1 + 40) + 16))();

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
}

- (id)pendingSnapshotForCurrentDeviceWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "pendingSnapshotForCurrentDeviceWithError", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessagePendingSnapshotForCurrentDevice" arguments:0 error:error];
  os_activity_scope_leave(&v8);

  return v6;
}

- (unint64_t)_backupOnCellularSupport
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cellularDataSubscriptionMonitor = [(MBXPCClient *)selfCopy cellularDataSubscriptionMonitor];
  if (cellularDataSubscriptionMonitor)
  {
    initialBackupOnCellularSupportGroup = [(MBXPCClient *)selfCopy initialBackupOnCellularSupportGroup];
  }

  else
  {
    objc_initWeak(&location, selfCopy);
    initialBackupOnCellularSupportGroup = dispatch_group_create();
    [(MBXPCClient *)selfCopy setInitialBackupOnCellularSupportGroup:initialBackupOnCellularSupportGroup];
    dispatch_group_enter(initialBackupOnCellularSupportGroup);
    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(Name, v7);

    cellularDataSubscriptionMonitor = [[MBCellularDataSubscriptionMonitor alloc] initWithQueue:v8 timeout:30];
    [(MBXPCClient *)selfCopy setCellularDataSubscriptionMonitor:cellularDataSubscriptionMonitor];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __39__MBXPCClient__backupOnCellularSupport__block_invoke;
    v14 = &unk_1E86843A8;
    objc_copyWeak(&v15, &location);
    [(MBCellularDataSubscriptionMonitor *)cellularDataSubscriptionMonitor setBackupOnCellularSupportHandler:&v11];
    [(MBCellularDataSubscriptionMonitor *)cellularDataSubscriptionMonitor start:v11];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  if (initialBackupOnCellularSupportGroup)
  {
    dispatch_group_wait(initialBackupOnCellularSupportGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  backupOnCellularSupport = [(MBCellularDataSubscriptionMonitor *)cellularDataSubscriptionMonitor backupOnCellularSupport];

  return backupOnCellularSupport;
}

void __39__MBXPCClient__backupOnCellularSupport__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained initialBackupOnCellularSupportGroup];
    if (v2)
    {
      [v3 setInitialBackupOnCellularSupportGroup:0];
      dispatch_group_leave(v2);
    }

    WeakRetained = v3;
  }
}

- (BOOL)isBackupOnCellularAllowedWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v6 = accountCopy;
  if (accountCopy && [accountCopy aa_useCellularForDataclass:*MEMORY[0x1E6959600]])
  {
    v7 = ([(MBXPCClient *)self _backupOnCellularSupport]>> 1) & 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isManualBackupOnCellularAllowedWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v6 = accountCopy;
  if (accountCopy && [accountCopy aa_useCellularForDataclass:*MEMORY[0x1E6959600]])
  {
    v7 = [(MBXPCClient *)self _backupOnCellularSupport]& 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (unint64_t)backupOnCellularSupportWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v6 = accountCopy;
  if (accountCopy && [accountCopy aa_useCellularForDataclass:*MEMORY[0x1E6959600]])
  {
    _backupOnCellularSupport = [(MBXPCClient *)self _backupOnCellularSupport];
  }

  else
  {
    _backupOnCellularSupport = 0;
  }

  return _backupOnCellularSupport;
}

- (BOOL)isBackupOnCellularEnabledWithError:(id *)error
{
  state64[1] = *MEMORY[0x1E69E9840];
  currentPersona = [MEMORY[0x1E69DF078] currentPersona];
  if (([currentPersona isPersonalPersona] & 1) == 0 && (objc_msgSend(currentPersona, "isDefaultPersona") & 1) == 0 && !objc_msgSend(currentPersona, "isSystemPersona"))
  {
    goto LABEL_20;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabledOverCellularToken = selfCopy->_enabledOverCellularToken;
  if (enabledOverCellularToken == -1)
  {
    v8 = notify_register_check("com.apple.private.restrict-post.MobileBackup.BackupOverCellularEnabledState", &selfCopy->_enabledOverCellularToken);
    if (v8)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.opaque[0]) = 134217984;
        *(buf.opaque + 4) = v8;
        _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_ERROR, "notify_register_check failed: %lu", &buf, 0xCu);
        _MBLog(@"E ", "notify_register_check failed: %lu", v10, v11, v12, v13, v14, v15, v8);
      }

      enabledOverCellularToken = -1;
      selfCopy->_enabledOverCellularToken = -1;
    }

    else
    {
      enabledOverCellularToken = selfCopy->_enabledOverCellularToken;
    }
  }

  objc_sync_exit(selfCopy);

  if (enabledOverCellularToken == -1)
  {
    goto LABEL_20;
  }

  state64[0] = 0;
  state = notify_get_state(enabledOverCellularToken, state64);
  if (state)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.opaque[0]) = 134217984;
      *(buf.opaque + 4) = state;
      _os_log_impl(&dword_1DEB5D000, v17, OS_LOG_TYPE_ERROR, "notify_get_state failed: %lu", &buf, 0xCu);
      _MBLog(@"E ", "notify_get_state failed: %lu", v18, v19, v20, v21, v22, v23, state);
    }
  }

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.opaque[0]) = 134217984;
    *(buf.opaque + 4) = state64[0];
    _os_log_impl(&dword_1DEB5D000, v24, OS_LOG_TYPE_INFO, "Fetched backup enabled over cellular notify state: 0x%llx", &buf, 0xCu);
    _MBLog(@"I ", "Fetched backup enabled over cellular notify state: 0x%llx", v25, v26, v27, v28, v29, v30, state64[0]);
  }

  if (state64[0] == 1)
  {
    LOBYTE(bOOLValue) = 1;
    goto LABEL_24;
  }

  if (state64[0] == -1)
  {
    LOBYTE(bOOLValue) = 0;
  }

  else
  {
LABEL_20:
    v32 = _os_activity_create(&dword_1DEB5D000, "isBackupOnCellularEnabledWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(v32, &buf);
    v33 = [(MBXPCClient *)self _sendRequest:@"kMBMessageIsBackupOnCellularEnabled" arguments:0 error:error];
    bOOLValue = [v33 BOOLValue];
    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      LODWORD(state64[0]) = 67109120;
      HIDWORD(state64[0]) = bOOLValue;
      _os_log_impl(&dword_1DEB5D000, v34, OS_LOG_TYPE_INFO, "Fetched backup enabled over cellular via XPC: %d", state64, 8u);
      _MBLog(@"I ", "Fetched backup enabled over cellular via XPC: %d", v35, v36, v37, v38, v39, v40, bOOLValue);
    }

    os_activity_scope_leave(&buf);
  }

LABEL_24:

  v41 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)setEntryPointForMegaBackupTelemetry:(int64_t)telemetry error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_1DEB5D000, "setEntryPointForMegaBackupTelemetry:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:telemetry];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSetEntryPointForMegaBackupTelemetry" arguments:v9 error:error];

  LOBYTE(error) = [v10 BOOLValue];
  os_activity_scope_leave(&v13);

  v11 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)setPrebuddyUIDeltaTelemetry:(id)telemetry date:(id)date error:(id *)error
{
  v16[2] = *MEMORY[0x1E69E9840];
  telemetryCopy = telemetry;
  dateCopy = date;
  v10 = _os_activity_create(&dword_1DEB5D000, "setPrebuddyUIDeltaTelemetry:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v16[0] = telemetryCopy;
  v16[1] = dateCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSetPrebuddyUIDeltaTelemetry" arguments:v11 error:error];

  LOBYTE(error) = [v12 BOOLValue];
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)logPrebuddyFlowTelemetry:(int64_t)telemetry error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_1DEB5D000, "logPrebuddyFlowTelemetry:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:telemetry];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [(MBXPCClient *)self _sendRequest:@"kMBMessageLogPrebuddyFlowTelemetry" arguments:v9 error:error];

  LOBYTE(error) = [v10 BOOLValue];
  os_activity_scope_leave(&v13);

  v11 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)synchronizeFileListsWithDeviceUUID:(id)d commitID:(id)iD error:(id *)error
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = d;
  v15[1] = iD;
  v8 = MEMORY[0x1E695DEC8];
  iDCopy = iD;
  dCopy = d;
  v11 = [v8 arrayWithObjects:v15 count:2];

  v12 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSynchronizeFileLists" arguments:v11 error:error];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)startDeviceTransferWithTaskType:(int64_t)type sessionInfo:(id)info error:(id *)error
{
  v18[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (!type)
  {
    [MBXPCClient startDeviceTransferWithTaskType:sessionInfo:error:];
  }

  v9 = infoCopy;
  if (!infoCopy)
  {
    [MBXPCClient startDeviceTransferWithTaskType:sessionInfo:error:];
  }

  if (!error)
  {
    [MBXPCClient startDeviceTransferWithTaskType:sessionInfo:error:];
  }

  v10 = _os_activity_create(&dword_1DEB5D000, "startDeviceTransfer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v18[0] = v11;
  v18[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v13 = [(MBXPCClient *)self _sendRequest:@"kMBMessageStartDeviceTransfer" arguments:v12 error:error];

  bOOLValue = [v13 BOOLValue];
  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)cancelDeviceTransferWithTaskType:(int64_t)type error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!type)
  {
    [MBXPCClient cancelDeviceTransferWithTaskType:error:];
  }

  if (!error)
  {
    [MBXPCClient cancelDeviceTransferWithTaskType:error:];
  }

  v7 = _os_activity_create(&dword_1DEB5D000, "cancelDeviceTransfer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v7, &v14);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v10 = [(MBXPCClient *)self _sendRequest:@"kMBMessageCancelDeviceTransfer" arguments:v9 error:error];

  bOOLValue = [v10 BOOLValue];
  os_activity_scope_leave(&v14);

  v12 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (void)startPreflightWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MBXPCClient_startPreflightWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E86843F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __51__MBXPCClient_startPreflightWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "preflight", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v4 _sendRequest:@"kMBMessageStartPreflight" arguments:MEMORY[0x1E695E0F0] error:&v9];
  v6 = v9;
  if (!(v5 | v6))
  {
    __assert_rtn("[MBXPCClient startPreflightWithCompletionHandler:]_block_invoke", "MBXPCClient.m", 1547, "preflightInfo || error");
  }

  v7 = v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v7);
  }

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
}

- (void)startKeychainDataTransferWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MBXPCClient_startKeychainDataTransferWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E86843F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __62__MBXPCClient_startKeychainDataTransferWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "keychainDataTransfer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v4 _sendRequest:@"kMBMessageStarKeychainDataTransfer" arguments:MEMORY[0x1E695E0F0] error:&v9];
  v6 = v9;
  if (!(v5 | v6))
  {
    __assert_rtn("[MBXPCClient startKeychainDataTransferWithCompletionHandler:]_block_invoke", "MBXPCClient.m", 1561, "keychainInfo || error");
  }

  v7 = v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v7);
  }

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
}

- (void)startKeychainDataImportWithKeychainInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    [MBXPCClient startKeychainDataImportWithKeychainInfo:completionHandler:];
  }

  v8 = handlerCopy;
  v9 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MBXPCClient_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke;
  block[3] = &unk_1E8684668;
  block[4] = self;
  v13 = infoCopy;
  v14 = v8;
  v10 = v8;
  v11 = infoCopy;
  dispatch_async(v9, block);
}

void __73__MBXPCClient_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "keychainDataImport", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = a1[4];
  v12[0] = a1[5];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = 0;
  v6 = [v4 _sendRequest:@"kMBMessageStarKeychainDataImport" arguments:v5 error:&v10];
  v7 = v10;

  if (!(v6 | v7))
  {
    __assert_rtn("[MBXPCClient startKeychainDataImportWithKeychainInfo:completionHandler:]_block_invoke", "MBXPCClient.m", 1576, "result || error");
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)startDataTransferWithPreflightInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    [MBXPCClient startDataTransferWithPreflightInfo:completionHandler:];
  }

  v8 = handlerCopy;
  v9 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MBXPCClient_startDataTransferWithPreflightInfo_completionHandler___block_invoke;
  block[3] = &unk_1E8684668;
  block[4] = self;
  v13 = infoCopy;
  v14 = v8;
  v10 = v8;
  v11 = infoCopy;
  dispatch_async(v9, block);
}

void __68__MBXPCClient_startDataTransferWithPreflightInfo_completionHandler___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1DEB5D000, "dataTransfer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = a1[4];
  v12[0] = a1[5];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = 0;
  v6 = [v4 _sendRequest:@"kMBMessageStartDataTransfer" arguments:v5 error:&v10];
  v7 = v10;

  if (!(v6 | v7))
  {
    __assert_rtn("[MBXPCClient startDataTransferWithPreflightInfo:completionHandler:]_block_invoke", "MBXPCClient.m", 1591, "result || error");
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (id)personalPersonaIdentifier
{
  v3 = _os_activity_create(&dword_1DEB5D000, "personalPersonaIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageFetchPersonalPersonaIdentifier" arguments:0];
  os_activity_scope_leave(&v6);

  return v4;
}

- (id)_sendRequest:(id)request arguments:(id)arguments error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v9 = [MBMessage messageWithName:requestCopy arguments:arguments personaIdentifier:self->_personaIdentifier];
  _makeConnection = [(MBXPCClient *)self _makeConnection];
  v44 = 0;
  v11 = [_makeConnection sendMessageWithReplyAndSync:v9 error:&v44];
  v12 = v44;

  if (v11)
  {
    goto LABEL_2;
  }

  v19 = [MBError isError:v12 withCode:19];
  v20 = MBGetDefaultLog();
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v46 = requestCopy;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_1DEB5D000, v21, OS_LOG_TYPE_DEFAULT, "Failed to send %@ message - retrying once: %@", buf, 0x16u);
      _MBLog(@"Df", "Failed to send %@ message - retrying once: %@", v22, v23, v24, v25, v26, v27, requestCopy);
    }

    _makeConnection2 = [(MBXPCClient *)self _makeConnection];
    v43 = v12;
    v11 = [_makeConnection2 sendMessageWithReplyAndSync:v9 error:&v43];
    v29 = v43;

    if (v11)
    {
      v12 = v29;
LABEL_2:
      replyError = [v11 replyError];
      v14 = replyError;
      if (error && replyError)
      {
        v15 = replyError;
        *error = v14;
      }

      reply = [v11 reply];

      goto LABEL_6;
    }

    v36 = MBGetDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v46 = requestCopy;
      v47 = 2112;
      v48 = v29;
      _os_log_impl(&dword_1DEB5D000, v36, OS_LOG_TYPE_ERROR, "Failed to send %@ message on retry: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to send %@ message on retry: %@", v37, v38, v39, v40, v41, v42, requestCopy);
    }

    if (error)
    {
      [MBError errorWithCode:19 error:v29 format:@"Connection to backupd interrupted"];
      *error = reply = 0;
    }

    else
    {
      reply = 0;
    }

    v12 = v29;
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v46 = requestCopy;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_1DEB5D000, v21, OS_LOG_TYPE_ERROR, "Failed to send %@ message: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to send %@ message: %@", v30, v31, v32, v33, v34, v35, requestCopy);
    }

    if (error)
    {
      [MBError errorWithCode:20 error:v12 format:@"Connection to backupd invalid"];
      *error = reply = 0;
    }

    else
    {
      reply = 0;
    }
  }

LABEL_6:

  v17 = *MEMORY[0x1E69E9840];

  return reply;
}

- (void)connection:(id)connection didReceiveMessage:(id)message
{
  v61 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  delegate = [(MBManager *)self delegate];
  if (delegate)
  {
    dispatch_assert_queue_V2(self->_eventQueue);
    name = [messageCopy name];
    arguments = [messageCopy arguments];
    error = [messageCopy error];
    if ([(__CFString *)name isEqualToString:@"kMBMessageDidFinishBackup"])
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate managerDidFinishBackup:self];
      }

      goto LABEL_31;
    }

    if ([(__CFString *)name isEqualToString:@"kMBMessageDidFinishScan"])
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [arguments objectAtIndexedSubscript:0];
        unsignedLongLongValue = [v10 unsignedLongLongValue];

        [delegate managerDidFinishScan:self bytesUsed:unsignedLongLongValue];
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate managerDidFinishScan:self];
      }

      goto LABEL_31;
    }

    if ([(__CFString *)name isEqualToString:@"kMBMessageDidFinishVerification"])
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate managerDidFinishVerification:self];
      }

      goto LABEL_31;
    }

    if ([(__CFString *)name isEqualToString:@"kMBMessageDidFinishRestore"])
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate managerDidFinishRestore:self];
      }

      goto LABEL_31;
    }

    if ([(__CFString *)name isEqualToString:@"kMBMessageDidFinishFileRestore"])
    {
      if (objc_opt_respondsToSelector())
      {
        firstObject = [arguments objectAtIndexedSubscript:0];
        [delegate manager:self didFinishRestoreForPath:firstObject];
LABEL_30:
      }

LABEL_31:

      goto LABEL_32;
    }

    if ([(__CFString *)name isEqualToString:@"kMBMessageDidScanBundle"])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_31;
      }

      firstObject = [arguments objectAtIndexedSubscript:0];
      v13 = [arguments objectAtIndexedSubscript:1];
      [delegate manager:self didScanBundleWithID:firstObject bytesUsed:{objc_msgSend(v13, "unsignedLongLongValue")}];
    }

    else
    {
      if ([(__CFString *)name isEqualToString:@"kMBMessageDidScanDomainForBundle"])
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_31;
        }

        firstObject = [arguments objectAtIndexedSubscript:0];
        v13 = [arguments objectAtIndexedSubscript:1];
        v14 = [arguments objectAtIndexedSubscript:2];
        [delegate manager:self didScanDomainWithName:firstObject forBundleID:v13 bytesUsed:{objc_msgSend(v14, "unsignedLongLongValue")}];
      }

      else
      {
        if (![(__CFString *)name isEqualToString:@"kMBMessageDidScanFilesForBundle"])
        {
          if ([(__CFString *)name isEqualToString:@"kMBMessageDidFailBackup"])
          {
            if (objc_opt_respondsToSelector())
            {
              [delegate manager:self didFailBackupWithError:error];
            }

            goto LABEL_31;
          }

          if ([(__CFString *)name isEqualToString:@"kMBMessageDidFailScan"])
          {
            if (objc_opt_respondsToSelector())
            {
              [delegate manager:self didFailScanWithError:error];
            }

            goto LABEL_31;
          }

          if ([(__CFString *)name isEqualToString:@"kMBMessageDidFailVerification"])
          {
            if (objc_opt_respondsToSelector())
            {
              [delegate manager:self didFailVerificationWithError:error];
            }

            goto LABEL_31;
          }

          if ([(__CFString *)name isEqualToString:@"kMBMessageDidFailRestore"])
          {
            if (objc_opt_respondsToSelector())
            {
              [delegate manager:self didFailRestoreWithError:error];
            }

            goto LABEL_31;
          }

          if ([(__CFString *)name isEqualToString:@"kMBMessageDidFailFileRestore"])
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_31;
            }

            firstObject = [arguments objectAtIndexedSubscript:0];
            [delegate manager:self didFailRestoreForPath:firstObject withError:error];
          }

          else
          {
            if ([(__CFString *)name isEqualToString:@"kMBMessageDidCancelRestore"])
            {
              if (objc_opt_respondsToSelector())
              {
                [delegate managerDidCancelRestore:self];
              }

              goto LABEL_31;
            }

            if ([(__CFString *)name isEqualToString:@"kMBMessageDidUpdateProgress"])
            {
              v16 = [arguments objectAtIndexedSubscript:0];
              [v16 floatValue];
              v18 = v17;

              v19 = [arguments objectAtIndexedSubscript:1];
              unsignedIntegerValue = [v19 unsignedIntegerValue];

              v21 = [arguments objectAtIndexedSubscript:2];
              unsignedLongLongValue2 = [v21 unsignedLongLongValue];

              v23 = [arguments objectAtIndexedSubscript:3];
              if (objc_opt_respondsToSelector())
              {
                LODWORD(v24) = v18;
                [delegate manager:self didUpdateProgress:unsignedIntegerValue estimatedTimeRemaining:v24];
              }

              else if (objc_opt_respondsToSelector())
              {
                LODWORD(v25) = v18;
                [delegate manager:self didUpdateProgress:unsignedIntegerValue estimatedTimeRemaining:unsignedLongLongValue2 bytesRemaining:v23 state:v25];
              }

              goto LABEL_31;
            }

            if ([(__CFString *)name isEqualToString:@"kMBMessageDidSetBackupEnabled"])
            {
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_31;
              }

              firstObject = [arguments objectAtIndexedSubscript:0];
              [delegate manager:self didSetBackupEnabled:{objc_msgSend(firstObject, "BOOLValue")}];
            }

            else
            {
              if ([(__CFString *)name isEqualToString:@"kMBMessageDidUpdateBackgroundRestoreProgress"])
              {
                if (objc_opt_respondsToSelector())
                {
                  [delegate managerDidUpdateBackgroundRestoreProgress:self];
                }

                goto LABEL_31;
              }

              if ([(__CFString *)name isEqualToString:@"kMBMessageDidFinishDeviceTransfer"])
              {
                v26 = MBGetDefaultLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  connectionState = @"kMBMessageDidFinishDeviceTransfer";
                  _os_log_impl(&dword_1DEB5D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
                  _MBLog(@"Df", "%{public}@", v27, v28, v29, v30, v31, v32, @"kMBMessageDidFinishDeviceTransfer");
                }

                if (objc_opt_respondsToSelector())
                {
                  [delegate manager:self didFinishDeviceTransferWithError:error];
                }

                goto LABEL_31;
              }

              if ([(__CFString *)name isEqualToString:@"kMBMessageDidFinishDeviceTransferKeychainTransfer"])
              {
                if (objc_opt_respondsToSelector())
                {
                  [delegate manager:self didFinishDeviceTransferKeychainTransfer:0];
                }

                goto LABEL_31;
              }

              if ([(__CFString *)name isEqualToString:@"kMBMessageDidUpdateDeviceTransferProgress"])
              {
                firstObject = [arguments firstObject];
                v33 = MBGetDefaultLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  [firstObject progress];
                  *buf = 134217984;
                  connectionState = v34;
                  _os_log_impl(&dword_1DEB5D000, v33, OS_LOG_TYPE_DEFAULT, "p:%.2f", buf, 0xCu);
                  [firstObject progress];
                  _MBLog(@"Df", "p:%.2f", v35, v36, v37, v38, v39, v40, v41);
                }

                if (objc_opt_respondsToSelector())
                {
                  [delegate manager:self didUpdateDeviceTransferProgress:firstObject];
                }
              }

              else
              {
                if (![(__CFString *)name isEqualToString:@"kMBMessageDidUpdateDeviceTransferConnectionInfo"])
                {
                  v50 = MBGetDefaultLog();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    connectionState = name;
                    _os_log_impl(&dword_1DEB5D000, v50, OS_LOG_TYPE_ERROR, "Unknown command '%@' from daemon", buf, 0xCu);
                    _MBLog(@"E ", "Unknown command '%@' from daemon", v51, v52, v53, v54, v55, v56, name);
                  }

                  goto LABEL_31;
                }

                firstObject = [arguments firstObject];
                v42 = MBGetDefaultLog();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  connectionState = [firstObject connectionState];
                  v59 = 2048;
                  connectionType = [firstObject connectionType];
                  _os_log_impl(&dword_1DEB5D000, v42, OS_LOG_TYPE_DEFAULT, "s:%ld, t:%ld", buf, 0x16u);
                  connectionState2 = [firstObject connectionState];
                  [firstObject connectionType];
                  _MBLog(@"Df", "s:%ld, t:%ld", v44, v45, v46, v47, v48, v49, connectionState2);
                }

                if (objc_opt_respondsToSelector())
                {
                  [delegate manager:self didUpdateDeviceTransferConnectionInfo:firstObject];
                }
              }
            }
          }

          goto LABEL_30;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_31;
        }

        firstObject = [arguments objectAtIndexedSubscript:0];
        v13 = [arguments objectAtIndexedSubscript:1];
        v14 = [arguments objectAtIndexedSubscript:2];
        [delegate manager:self didScanFiles:firstObject forDomainWithName:v13 bundleID:v14];
      }
    }

    goto LABEL_30;
  }

LABEL_32:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)connectionWasInterrupted:(id)interrupted
{
  v26 = *MEMORY[0x1E69E9840];
  interruptedCopy = interrupted;
  delegate = [(MBManager *)self delegate];
  if (delegate)
  {
    dispatch_assert_queue_V2(self->_eventQueue);
    if (objc_opt_respondsToSelector())
    {
      connection = [(MBXPCClient *)self connection];
      v7 = MBGetDefaultLog();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (connection == interruptedCopy)
      {
        if (v8)
        {
          *buf = 138412290;
          v23 = interruptedCopy;
          _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "Informing client connection was interrupted: %@", buf, 0xCu);
          _MBLog(@"Df", "Informing client connection was interrupted: %@", v15, v16, v17, v18, v19, v20, interruptedCopy);
        }

        [delegate managerDidLoseConnectionToService:self];
      }

      else
      {
        if (v8)
        {
          *buf = 138412546;
          v23 = interruptedCopy;
          v24 = 2112;
          v25 = connection;
          _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "Not informing client connection was interrupted because there is a new connection already(%@ != %@)", buf, 0x16u);
          _MBLog(@"Df", "Not informing client connection was interrupted because there is a new connection already(%@ != %@)", v9, v10, v11, v12, v13, v14, interruptedCopy);
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)connectionWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MBXPCClient *)selfCopy setConnection:0];
  objc_sync_exit(selfCopy);
}

- (BOOL)isInitialMegaBackupCompleted:(id *)completed
{
  v5 = _os_activity_create(&dword_1DEB5D000, "isInitialMegaBackupCompleted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageIsInitialMegaBackupCompleted" arguments:0 error:completed];
  LOBYTE(completed) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return completed;
}

- (void)saveBackupEnabledForMegaBackup
{
  v3 = _os_activity_create(&dword_1DEB5D000, "saveBackupEnabledForMegaBackup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  v4 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSaveBackupEnabledForMegaBackup" arguments:0];
  os_activity_scope_leave(&v5);
}

- (BOOL)wasBackupEnabledForMegaBackup:(id *)backup
{
  v5 = _os_activity_create(&dword_1DEB5D000, "wasBackupEnabledForMegaBackup:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageWasBackupEnabledForMegaBackup" arguments:0 error:backup];
  LOBYTE(backup) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return backup;
}

- (void)saveSyncSettingsEnabledForMegaBackup:(id)backup
{
  v10[1] = *MEMORY[0x1E69E9840];
  backupCopy = backup;
  v5 = _os_activity_create(&dword_1DEB5D000, "saveSyncSettingsEnabledForMegaBackup:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v5, &v9);
  v10[0] = backupCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSaveSyncSettingsEnabledForMegaBackup" arguments:v6];

  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)saveBackupDomainsEnabledForMegaBackup:(id)backup
{
  v10[1] = *MEMORY[0x1E69E9840];
  backupCopy = backup;
  v5 = _os_activity_create(&dword_1DEB5D000, "saveBackupDomainsEnabledForMegaBackup:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v5, &v9);
  v10[0] = backupCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(MBXPCClient *)self _sendRequest:@"kMBMessageSaveBackupDomainsEnabledForMegaBackup" arguments:v6];

  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)restorePreviousSettingsEnabledForMegaBackup:(id *)backup
{
  v5 = _os_activity_create(&dword_1DEB5D000, "restorePreviousSettingsForMegaBackup:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageRestorePreviousSettingsEnabledForMegaBackup" arguments:0 error:backup];
  LOBYTE(backup) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return backup;
}

- (BOOL)requestMegaBackupExpirationDate:(id)date error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v7 = _os_activity_create(&dword_1DEB5D000, "requestMegaBackupExpirationDate:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v7, &v12);
  v13[0] = dateCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageRequestMegaBackupExpirationDate" arguments:v8 error:error];

  LOBYTE(error) = [v9 BOOLValue];
  os_activity_scope_leave(&v12);

  v10 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)updateMegaBackupExpirationDate:(id)date error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v7 = _os_activity_create(&dword_1DEB5D000, "updateMegaBackupExpirationDate:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v7, &v12);
  v13[0] = dateCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessageUpdateMegaBackupExpirationDate" arguments:v8 error:error];

  LOBYTE(error) = [v9 BOOLValue];
  os_activity_scope_leave(&v12);

  v10 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)exitMegaBackupMode:(id *)mode
{
  v5 = _os_activity_create(&dword_1DEB5D000, "exitMegaBackupMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageExitMegaBackupMode" arguments:0 error:mode];
  LOBYTE(mode) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return mode;
}

- (BOOL)postFollowUpForRestoreTimeoutWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "postFollowUpForRestoreTimeoutWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessagePostFollowUpForRestoreTimeout" arguments:0 error:error];
  LOBYTE(error) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return error;
}

- (BOOL)postFollowUpForBackgroundRestoreProgress:(id)progress error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  v7 = _os_activity_create(&dword_1DEB5D000, "postFollowUpForBackgroundRestoreProgress:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v7, &v12);
  v13[0] = progressCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessagePostFollowUpForBackgroundRestoreProgress" arguments:v8 error:error];

  LOBYTE(error) = [v9 BOOLValue];
  os_activity_scope_leave(&v12);

  v10 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)postFollowUpForRestoreFailedWithDomainNames:(id)names error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v7 = _os_activity_create(&dword_1DEB5D000, "postFollowUpForRestoreFailedWithDomainNames:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  if (namesCopy)
  {
    v14[0] = namesCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MBXPCClient *)self _sendRequest:@"kMBMessagePostFollowUpForRestoreFailed" arguments:v8 error:error];
  if (namesCopy)
  {
  }

  bOOLValue = [v9 BOOLValue];

  os_activity_scope_leave(&v13);
  v11 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)clearAllPendingFollowUpsWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DEB5D000, "clearAllPendingFollowUpsWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  v6 = [(MBXPCClient *)self _sendRequest:@"kMBMessageClearAllPendingFollowUps" arguments:0 error:error];
  LOBYTE(error) = [v6 BOOLValue];

  os_activity_scope_leave(&v8);
  return error;
}

- (void)recordRestoreFailure:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)recordRestoreFailure:error:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)acquireLockWithBackupUDID:owner:timeout:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)acquireLockWithBackupUDID:owner:timeout:error:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)releaseLockWithBackupUDID:owner:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)releaseLockWithBackupUDID:owner:error:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)startScanForBundleIDs:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end