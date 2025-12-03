@interface MBXPCServer
+ (id)sharedInstance;
- (BOOL)_checkForBackupCtlPrivileged:(id)privileged description:(id)description error:(id *)error;
- (MBBackupScheduler)scheduler;
- (MBXPCServer)initWithServiceName:(id)name;
- (id)description;
- (id)serviceManager;
- (void)_accountChanged:(id)changed;
- (void)_acquireLock:(id)lock;
- (void)_archiveLogs:(id)logs;
- (void)_backgroundRestoreInfo:(id)info;
- (void)_backupList:(id)list;
- (void)_backupState:(id)state;
- (void)_beginPrebuddyBackup:(id)backup;
- (void)_boostBackgroundRestore:(id)restore;
- (void)_boostManualBackup:(id)backup;
- (void)_cancel:(id)_cancel;
- (void)_cancelAppRestore:(id)restore;
- (void)_cancelDeviceTransfer:(id)transfer;
- (void)_cancelPrebuddy:(id)prebuddy;
- (void)_cancelRestore:(id)restore;
- (void)_clearAllPendingFollowUps:(id)ups;
- (void)_clearRestoreSession:(id)session;
- (void)_countCameraRollQuota:(id)quota;
- (void)_countRestoreFailures:(id)failures;
- (void)_dataExistsForApp:(id)app;
- (void)_dateOfLastBackup:(id)backup;
- (void)_dateOfNextBackup:(id)backup;
- (void)_deleteAccount:(id)account;
- (void)_deleteBackup:(id)backup;
- (void)_deviceIsLocking:(id)locking;
- (void)_deviceIsUnlocked:(id)unlocked;
- (void)_deviceLockInfos:(id)infos;
- (void)_disabledDomainInfos:(id)infos;
- (void)_discountCameraRollQuota:(id)quota;
- (void)_domainInfo:(id)info;
- (void)_domainInfoList:(id)list;
- (void)_exitMegaBackupMode:(id)mode;
- (void)_fetchBackgroundRestoreCellularAccess:(id)access;
- (void)_fetchBackupCKRecordsIntoDB:(id)b;
- (void)_fetchBundleIDs:(id)ds;
- (void)_fetchPersonalPersonaIdentifier:(id)identifier;
- (void)_fetchRestorableSnapshots:(id)snapshots;
- (void)_fileExists:(id)exists;
- (void)_finishRestore:(id)restore;
- (void)_getAllowiTunesBackup:(id)backup;
- (void)_getAppleIDsMap:(id)map;
- (void)_getBackupDeviceUUID:(id)d;
- (void)_getBuddyData:(id)data;
- (void)_handleRequest:(id)request;
- (void)_inheritBackup:(id)backup;
- (void)_insufficientFreeSpaceToRestore:(id)restore;
- (void)_isBackupEnabled:(id)enabled;
- (void)_isBackupOnCellularEnabled:(id)enabled;
- (void)_isDomainEnabled:(id)enabled;
- (void)_isInitialMegaBackupCompleted:(id)completed;
- (void)_isLocalBackupPasswordSet:(id)set;
- (void)_isPrebuddyMode:(id)mode;
- (void)_journalForBackupUUID:(id)d;
- (void)_journalLastModifiedForBackupUUID:(id)d;
- (void)_listRestoreFailures:(id)failures;
- (void)_listSnapshotFiles:(id)files;
- (void)_logPrebuddyFlowTelemetry:(id)telemetry;
- (void)_mergeSnapshots:(id)snapshots;
- (void)_nextBackupSize:(id)size;
- (void)_nextBackupSizeInfo:(id)info;
- (void)_passcodeChanged:(id)changed;
- (void)_pendingSnapshotForCurrentDevice:(id)device;
- (void)_pinSnapshot:(id)snapshot;
- (void)_postFollowUpForBackgroundRestoreProgress:(id)progress;
- (void)_postFollowUpForDrySpellWithDuration:(id)duration;
- (void)_postFollowUpForRestoreFailed:(id)failed;
- (void)_postFollowUpForRestoreFinished:(id)finished;
- (void)_postFollowUpForRestoreTimeout:(id)timeout;
- (void)_prebuddyBackupDeleted:(id)deleted;
- (void)_prepareForBackgroundRestore:(id)restore;
- (void)_prioritizeRestoreFile:(id)file;
- (void)_rebootDevice:(id)device;
- (void)_releaseLock:(id)lock;
- (void)_removeDomain:(id)domain;
- (void)_repair:(id)_repair;
- (void)_reportRestoreFailure:(id)failure;
- (void)_requestMegaBackupExpirationDate:(id)date;
- (void)_reservedBackupSizeList:(id)list;
- (void)_respondSynchronouslyTo:(id)to description:(id)description withAccount:(id)account;
- (void)_respondSynchronouslyTo:(id)to with:(id)with;
- (void)_restoreDomain:(id)domain;
- (void)_restoreFiles:(id)files;
- (void)_restoreInfo:(id)info;
- (void)_restorePreviousSettingsEnabledForMegaBackup:(id)backup;
- (void)_restoreState:(id)state;
- (void)_restoreSupportsBatching:(id)batching;
- (void)_saveBackgroundRestoreCellularAccess:(id)access;
- (void)_saveBackupDomainsEnabledForMegaBackup:(id)backup;
- (void)_saveBackupEnabledForMegaBackup:(id)backup;
- (void)_saveSyncSettingsEnabledForMegaBackup:(id)backup;
- (void)_scheduleActivities:(id)activities;
- (void)_sendBarrierMessage:(id)message;
- (void)_sendMessage:(id)message connections:(id)connections;
- (void)_setAllowiTunesBackup:(id)backup;
- (void)_setBackupEnabled:(id)enabled;
- (void)_setBackupOnCellularEnabled:(id)enabled;
- (void)_setDomainEnabled:(id)enabled;
- (void)_setEntryPointForMegaBackupTelemetry:(id)telemetry;
- (void)_setMegaBackupTurnOnAllAppsSyncTelemetry:(id)telemetry;
- (void)_setMegaBackupTurnOniCloudBackupTelemetry:(id)telemetry;
- (void)_setPrebuddyUIDeltaTelemetry:(id)telemetry;
- (void)_setRestoreQualityOfService:(id)service;
- (void)_setupBackup:(id)backup;
- (void)_signalPrebuddy:(id)prebuddy;
- (void)_startAppRestore:(id)restore;
- (void)_startBackup:(id)backup;
- (void)_startBookRestore:(id)restore;
- (void)_startDataTransfer:(id)transfer;
- (void)_startDeviceTransfer:(id)transfer;
- (void)_startFileRestore:(id)restore;
- (void)_startFilesRestore:(id)restore;
- (void)_startKeychainDataImport:(id)import;
- (void)_startKeychainDataTransfer:(id)transfer;
- (void)_startPreflight:(id)preflight;
- (void)_startRestore:(id)restore;
- (void)_startScan:(id)scan;
- (void)_startScanForBundleIDs:(id)ds;
- (void)_syncBackupEnabled:(id)enabled;
- (void)_synchronizeFileLists:(id)lists;
- (void)_unlocked;
- (void)_unpinSnapshot:(id)snapshot;
- (void)_unsetLocalBackupPassword:(id)password;
- (void)_updateMegaBackupExpirationDate:(id)date;
- (void)_updatePrebuddyFollowUp:(id)up;
- (void)_wasBackupEnabledForMegaBackup:(id)backup;
- (void)connection:(id)connection didFinishDeviceTransferKeychainTransfer:(id)transfer;
- (void)connection:(id)connection didFinishDeviceTransferWithError:(id)error;
- (void)connection:(id)connection didReceiveMessage:(id)message;
- (void)connection:(id)connection didUpdateDeviceTransferConnectionInfo:(id)info;
- (void)connection:(id)connection didUpdateDeviceTransferProgress:(id)progress;
- (void)connectionWasInvalidated:(id)invalidated;
- (void)dealloc;
- (void)manager:(id)manager didFailBackupWithError:(id)error;
- (void)manager:(id)manager didFailRestoreForPath:(id)path withContext:(id)context error:(id)error;
- (void)manager:(id)manager didFailRestoreWithContext:(id)context error:(id)error;
- (void)manager:(id)manager didFailScanWithError:(id)error;
- (void)manager:(id)manager didFailVerificationWithError:(id)error;
- (void)manager:(id)manager didFinishRestoreForPath:(id)path withContext:(id)context;
- (void)manager:(id)manager didFinishRestoreWithContext:(id)context;
- (void)manager:(id)manager didScanBundleWithID:(id)d bytesUsed:(unint64_t)used;
- (void)manager:(id)manager didScanDomainWithName:(id)name forBundleID:(id)d bytesUsed:(unint64_t)used;
- (void)manager:(id)manager didScanFiles:(id)files forDomainWithName:(id)name bundleID:(id)d;
- (void)manager:(id)manager didSetBackupEnabled:(BOOL)enabled;
- (void)manager:(id)manager didUpdateBackgroundRestoreWithContext:(id)context;
- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining bytesRemaining:(int64_t)bytesRemaining state:(id)state context:(id)context;
- (void)managerDidCancelRestore:(id)restore;
- (void)managerDidFinishBackup:(id)backup;
- (void)managerDidFinishScan:(id)scan bytesUsed:(unint64_t)used;
- (void)managerDidFinishVerification:(id)verification;
@end

@implementation MBXPCServer

+ (id)sharedInstance
{
  if (qword_100421840 != -1)
  {
    dispatch_once(&qword_100421840, &stru_1003BFD00);
  }

  v3 = qword_100421838;

  return v3;
}

- (MBXPCServer)initWithServiceName:(id)name
{
  nameCopy = name;
  v43.receiver = self;
  v43.super_class = MBXPCServer;
  v5 = [(MBXPCServer *)&v43 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_initially_inactive(v6);

    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_create(Name, v7);
    v11 = *(v5 + 3);
    *(v5 + 3) = v10;

    v12 = objc_opt_class();
    v13 = [NSString stringWithFormat:@"xpc_%s", class_getName(v12)];
    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String, v15);

    v17 = MKBDeviceUnlockedSinceBoot();
    atomic_store(v17 == 1, v5 + 32);
    *(v5 + 9) = -1;
    if (v17 != 1)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "unlockedSinceBoot:%d", buf, 8u);
        _MBLog();
      }

      v19 = *(v5 + 3);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001524A0;
      handler[3] = &unk_1003BFD28;
      v20 = v5;
      v42 = v20;
      v21 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", v5 + 9, v19, handler);
      if (v21)
      {
        v22 = v21;
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.mobile.keybagd.first_unlock";
          v45 = 2048;
          v46 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to register for %s notification: %lu", buf, 0x16u);
          _MBLog();
        }
      }

      v24 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 3));
      v25 = v20[5];
      v20[5] = v24;

      dispatch_source_set_timer(v20[5], 0, 0x2540BE400uLL, 0);
      v26 = v20[5];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100152574;
      v39[3] = &unk_1003BC0B0;
      v40 = v20;
      dispatch_source_set_event_handler(v26, v39);
      dispatch_resume(v20[5]);
    }

    v27 = objc_opt_new();
    v28 = *(v5 + 2);
    *(v5 + 2) = v27;

    mach_service = xpc_connection_create_mach_service([nameCopy UTF8String], v16, 1uLL);
    v30 = *(v5 + 1);
    *(v5 + 1) = mach_service;

    v31 = *(v5 + 1);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001525C0;
    v36[3] = &unk_1003BFD50;
    v32 = v5;
    v37 = v32;
    v33 = v16;
    v38 = v33;
    xpc_connection_set_event_handler(v31, v36);
    if (v17 == 1)
    {
      v34 = +[MBCKManager sharedInstance];
      [v34 setServiceDelegate:v32];
    }

    dispatch_activate(*(v5 + 3));
    xpc_connection_resume(*(v5 + 1));
  }

  return v5;
}

- (void)dealloc
{
  firstUnlockNotificationToken = self->_firstUnlockNotificationToken;
  if (firstUnlockNotificationToken != -1)
  {
    notify_cancel(firstUnlockNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = MBXPCServer;
  [(MBXPCServer *)&v4 dealloc];
}

- (void)_unlocked
{
  dispatch_assert_queue_V2(self->_connectionsQueue);
  v3 = atomic_load(&self->_unlocked);
  if ((v3 & 1) == 0)
  {
    v4 = +[MBCKManager sharedInstance];
    [v4 setServiceDelegate:self];

    atomic_store(1u, &self->_unlocked);
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = 1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "unlockedSinceBoot:%d", buf, 8u);
      _MBLog();
    }
  }

  firstUnlockTimer = self->_firstUnlockTimer;
  if (firstUnlockTimer)
  {
    dispatch_source_cancel(firstUnlockTimer);
    v7 = self->_firstUnlockTimer;
    self->_firstUnlockTimer = 0;
  }

  firstUnlockNotificationToken = self->_firstUnlockNotificationToken;
  if (firstUnlockNotificationToken != -1)
  {
    notify_cancel(firstUnlockNotificationToken);
    self->_firstUnlockNotificationToken = -1;
  }
}

- (id)serviceManager
{
  v3 = atomic_load(&self->_unlocked);
  if (v3)
  {
    v4 = +[MBCKManager sharedInstance];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  v6 = atomic_load(&self->_unlocked);
  if (v6)
  {
    personaIdentifier = [requestCopy personaIdentifier];
    if (personaIdentifier)
    {
      v8 = +[UMUserManager sharedManager];
      currentPersona = [v8 currentPersona];

      if (!currentPersona)
      {
        __assert_rtn("[MBXPCServer _handleRequest:]", "MBXPCServer.m", 376, "currentPersona");
      }

      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      if ([personaIdentifier isEqual:userPersonaUniqueString])
      {
        v11 = 0;
        v12 = 0;
LABEL_6:

        goto LABEL_12;
      }

      v34 = 0;
      v12 = [currentPersona copyCurrentPersonaContextWithError:&v34];
      v23 = v34;
      if (v12)
      {
        v24 = [currentPersona createPersonaContextForBackgroundProcessingWithPersonaUniqueString:personaIdentifier];

        if (!v24)
        {
          v11 = userPersonaUniqueString;
          connection = [v5 connection];
          [connection setPersonaIdentifier:personaIdentifier];

          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = personaIdentifier;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Adopted persona %{public}@", buf, 0xCu);
            v31 = personaIdentifier;
            _MBLog();
          }

          goto LABEL_6;
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v36 = personaIdentifier;
          v37 = 2114;
          v38 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to adopt persona %{public}@: %{public}@", buf, 0x16u);
          v31 = personaIdentifier;
          v32 = v24;
          _MBLog();
        }

        v23 = v24;
LABEL_27:
        v27 = [MBError sanitizedError:v23, v31, v32];
        [v5 setReplyError:v27];

        [v5 sendReply];
        v12 = 0;
        v11 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v36 = userPersonaUniqueString;
        v37 = 2114;
        v38 = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to copy the persona context for persona %{public}@: %{public}@", buf, 0x16u);
        v31 = userPersonaUniqueString;
        v32 = v23;
        _MBLog();
      }

      if (v23)
      {
        goto LABEL_27;
      }
    }

    else
    {
      currentPersona = 0;
    }

    v12 = 0;
    v11 = 0;
LABEL_12:
    name = [v5 name];
    if (name)
    {
      v16 = name;
      v17 = [&off_1003E1EB0 objectForKeyedSubscript:name];
      if (v17)
      {
        v18 = v17;
        [(MBXPCServer *)self performSelector:NSSelectorFromString(v17) withObject:v5];

        if (!v12)
        {
LABEL_29:

          goto LABEL_30;
        }

        if (!v11)
        {
          __assert_rtn("[MBXPCServer _handleRequest:]", "MBXPCServer.m", 417, "savedPersonaIdentifier");
        }

        v19 = +[UMUserManager sharedManager];
        currentPersona2 = [v19 currentPersona];
        v21 = [currentPersona2 restorePersonaWithSavedPersonaContext:v12];

        v22 = MBGetDefaultLog();
        v23 = v22;
        if (!v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v11;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Restored saved persona %{public}@", buf, 0xCu);
            _MBLog();
          }

          goto LABEL_28;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v36 = v11;
          v37 = 2114;
          v38 = v21;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to restore persona context for persona %{public}@: %{public}@", buf, 0x16u);
          _MBLog();
        }

        v30 = [[MBException alloc] initWithCode:1 format:{@"Failed to restore persona context for persona %@: %@", v11, v21}];
      }

      else
      {
        v30 = [[MBException alloc] initWithCode:1 format:{@"Protocol command (%@) not in map", v16, v33}];
      }
    }

    else
    {
      v30 = [[MBException alloc] initWithCode:1 format:{@"Unknown protocol command %@", 0, v33}];
    }

    objc_exception_throw(v30);
  }

  personaIdentifier = [requestCopy name];
  currentPersona = [v5 connection];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v36 = personaIdentifier;
    v37 = 2112;
    v38 = currentPersona;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Device has not yet been unlocked. Ignoring request: %@ from %@", buf, 0x16u);
    _MBLog();
  }

  v14 = [MBError errorWithCode:13 description:@"Device has not yet been unlocked. Ignoring request."];
  [v5 setReplyError:v14];

  [v5 sendReply];
LABEL_30:
}

- (MBBackupScheduler)scheduler
{
  v3 = atomic_load(&self->_unlocked);
  if (v3)
  {
    v4 = +[MBBackupScheduler sharedInstance];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_synchronizeFileLists:(id)lists
{
  listsCopy = lists;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v19 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v19];
  v8 = v19;

  if (v7)
  {
    arguments = [listsCopy arguments];
    v10 = [arguments objectAtIndexedSubscript:0];

    arguments2 = [listsCopy arguments];
    v12 = [arguments2 objectAtIndexedSubscript:1];

    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v8;
    v14 = [serviceManager synchronizeFileListsWithDeviceUUID:v10 commitID:v12 account:v7 error:&v18];
    v15 = v18;

    [listsCopy setReply:v14];
    v8 = v15;
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed synchronize file lists due to nil account: %{public}@", buf, 0xCu);
      v17 = v8;
      _MBLog();
    }

    [listsCopy setReply:0];
  }

  [listsCopy setReplyError:{v8, v17}];
  [listsCopy sendReply];
}

- (void)_fetchBackupCKRecordsIntoDB:(id)b
{
  bCopy = b;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v13 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v13];
  v7 = v13;

  persona = [(MBServiceAccount *)v6 persona];
  snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];

  v12 = v7;
  LODWORD(persona) = MBBuildBackupCKRecordsDB(v6, 0, snapshotDatabaseDirectory, &v12);
  v10 = v12;

  if (persona)
  {
    v11 = snapshotDatabaseDirectory;
  }

  else
  {
    v11 = 0;
  }

  [bCopy setReply:v11];
  [bCopy setReplyError:v10];

  [bCopy sendReply];
}

- (void)_setupBackup:(id)backup
{
  backupCopy = backup;
  arguments = [backupCopy arguments];
  connection = [backupCopy connection];
  lastObject = [arguments lastObject];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [serviceManager setupBackupWithPasscode:lastObject account:v10 connection:connection error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to set up backup due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [backupCopy setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [backupCopy setReplyError:v16];
  }

  [backupCopy sendReply];
}

- (void)_startBackup:(id)backup
{
  backupCopy = backup;
  connection = [backupCopy connection];
  arguments = [backupCopy arguments];
  firstObject = [arguments firstObject];

  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [serviceManager startBackupWithOptions:firstObject reason:1 xpcActivity:0 account:v10 connection:connection error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to start backup due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [backupCopy setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [backupCopy setReplyError:v16];
  }

  [backupCopy sendReply];
}

- (void)_signalPrebuddy:(id)prebuddy
{
  prebuddyCopy = prebuddy;
  arguments = [prebuddyCopy arguments];
  firstObject = [arguments firstObject];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v14 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v14];
  v10 = v14;

  if (v9)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager signalPrebuddy:firstObject account:v9];

    [prebuddyCopy setReply:&__kCFBooleanTrue];
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to signal prebuddy due to nil account: %{public}@", buf, 0xCu);
      v13 = v10;
      _MBLog();
    }
  }

  [prebuddyCopy sendReply];
}

- (void)_updatePrebuddyFollowUp:(id)up
{
  upCopy = up;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager updatePrebuddyFollowUp:v7];

    v10 = [NSNumber numberWithBool:1];
    [upCopy setReply:v10];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to update prebuddy follow up due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = [NSNumber numberWithBool:0];
    [upCopy setReply:v12];

    v10 = [MBError sanitizedError:v8];
    [upCopy setReplyError:v10];
  }

  [upCopy sendReply];
}

- (void)_cancelPrebuddy:(id)prebuddy
{
  prebuddyCopy = prebuddy;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    arguments = [prebuddyCopy arguments];
    firstObject = [arguments firstObject];
    bOOLValue = [firstObject BOOLValue];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager clearPrebuddyWithAccount:v7 accountSignOut:bOOLValue];

    v13 = [NSNumber numberWithBool:1];
    [prebuddyCopy setReply:v13];
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to cancel prebuddy due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v15 = [NSNumber numberWithBool:0];
    [prebuddyCopy setReply:v15];

    v13 = [MBError sanitizedError:v8];
    [prebuddyCopy setReplyError:v13];
  }

  [prebuddyCopy sendReply];
}

- (void)_beginPrebuddyBackup:(id)backup
{
  backupCopy = backup;
  connection = [backupCopy connection];
  arguments = [backupCopy arguments];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v17 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v17];
  v10 = v17;

  if (v9)
  {
    firstObject = [arguments firstObject];
    bOOLValue = [firstObject BOOLValue];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager beginPrebuddyBackupWithAccount:v9 connection:connection fromManualSignal:bOOLValue];

    v14 = [NSNumber numberWithBool:1];
    [backupCopy setReply:v14];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to begin prebuddy backup due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v16 = [NSNumber numberWithBool:0];
    [backupCopy setReply:v16];

    v14 = [MBError sanitizedError:v10];
    [backupCopy setReplyError:v14];
  }

  [backupCopy sendReply];
}

- (void)_isPrebuddyMode:(id)mode
{
  modeCopy = mode;
  serviceManager = [(MBXPCServer *)self serviceManager];
  isPrebuddyMode = [serviceManager isPrebuddyMode];

  v6 = [NSNumber numberWithBool:isPrebuddyMode];
  [modeCopy setReply:v6];

  [modeCopy sendReply];
}

- (void)_isInitialMegaBackupCompleted:(id)completed
{
  completedCopy = completed;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v12 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v12];
  v8 = v12;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v10 = [serviceManager isInitialMegaBackupCompleted:v7];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to fetch is initial mega backup completed due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  v11 = [NSNumber numberWithBool:v10];
  [completedCopy setReply:v11];

  [completedCopy setReplyError:v8];
  [completedCopy sendReply];
}

- (void)_saveBackupEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager saveBackupEnabledForMegaBackup];

  [backupCopy sendReply];
}

- (void)_wasBackupEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v15 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v14 = v8;
    v10 = [serviceManager restorePreviousSettingsEnabledForMegaBackup:v7 error:&v14];
    v11 = v14;

    v8 = v11;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to fetch was backup enabled for mega backup due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [backupCopy setReply:v12];

  v13 = [MBError sanitizedError:v8];
  [backupCopy setReplyError:v13];

  [backupCopy sendReply];
}

- (void)_saveSyncSettingsEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  arguments = [backupCopy arguments];
  firstObject = [arguments firstObject];
  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager saveSyncSettingsEnabledForMegaBackup:firstObject];

  [backupCopy sendReply];
}

- (void)_saveBackupDomainsEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  arguments = [backupCopy arguments];
  firstObject = [arguments firstObject];
  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager saveBackupDomainsEnabledForMegaBackup:firstObject];

  [backupCopy sendReply];
}

- (void)_restorePreviousSettingsEnabledForMegaBackup:(id)backup
{
  backupCopy = backup;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v14 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v14];
  v8 = v14;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v13 = v8;
    v10 = [serviceManager restorePreviousSettingsEnabledForMegaBackup:v7 error:&v13];
    v11 = v13;

    v8 = v11;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to restore previous settings enabled for mega backup due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [backupCopy setReply:v12];

  [backupCopy setReplyError:v8];
  [backupCopy sendReply];
}

- (void)_requestMegaBackupExpirationDate:(id)date
{
  dateCopy = date;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    arguments = [dateCopy arguments];
    firstObject = [arguments firstObject];

    serviceManager = [(MBXPCServer *)self serviceManager];
    v15 = v8;
    v12 = [serviceManager requestMegaBackupExpirationDate:firstObject account:v7 error:&v15];
    v13 = v15;

    v8 = v13;
  }

  else
  {
    firstObject = MBGetDefaultLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_ERROR, "Failed to request mega backup expiration date due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = 0;
  }

  v14 = [NSNumber numberWithBool:v12];
  [dateCopy setReply:v14];

  [dateCopy setReplyError:v8];
  [dateCopy sendReply];
}

- (void)_updateMegaBackupExpirationDate:(id)date
{
  dateCopy = date;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    arguments = [dateCopy arguments];
    firstObject = [arguments firstObject];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager updateMegaBackupExpirationDate:firstObject account:v7];
  }

  else
  {
    firstObject = MBGetDefaultLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_ERROR, "Failed to update mega backup expiration date due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v12 = [NSNumber numberWithBool:v7 != 0];
  [dateCopy setReply:v12];

  [dateCopy setReplyError:v8];
  [dateCopy sendReply];
}

- (void)_exitMegaBackupMode:(id)mode
{
  modeCopy = mode;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v11 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v11];
  v8 = v11;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager exitMegaBackupModeWithAccount:v7];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to exit mega backup mode due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v10 = [NSNumber numberWithBool:v7 != 0];
  [modeCopy setReply:v10];

  [modeCopy setReplyError:v8];
  [modeCopy sendReply];
}

- (void)_prebuddyBackupDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v11 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v11];
  v8 = v11;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager prebuddyBackupDeletedWithAccount:v7];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to respond to prebuddy backup deleted due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v10 = [NSNumber numberWithBool:v7 != 0];
  [deletedCopy setReply:v10];

  [deletedCopy setReplyError:v8];
  [deletedCopy sendReply];
}

- (void)_setMegaBackupTurnOniCloudBackupTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    arguments = [telemetryCopy arguments];
    lastObject = [arguments lastObject];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = @"MegaBackupTurnOniCloudBackup";
      v19 = 2112;
      v20 = lastObject;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %@", buf, 0x16u);
      _MBLog();
    }

    persona = [(MBServiceAccount *)v7 persona];
    [persona setPreferencesValue:lastObject forKey:@"MegaBackupTurnOniCloudBackup"];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager submitMegaLifeCycleTelemetriesWithAccount:v7];
  }

  else
  {
    lastObject = MBGetDefaultLog();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = @"MegaBackupTurnOniCloudBackup";
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ due to nil account: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }

  v14 = [NSNumber numberWithBool:v7 != 0];
  [telemetryCopy setReply:v14];

  v15 = [MBError sanitizedError:v8];
  [telemetryCopy setError:v15];

  [telemetryCopy sendReply];
}

- (void)_setMegaBackupTurnOnAllAppsSyncTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    arguments = [telemetryCopy arguments];
    lastObject = [arguments lastObject];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = @"MegaBackupTurnOnAllAppsSync";
      v19 = 2112;
      v20 = lastObject;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %@", buf, 0x16u);
      _MBLog();
    }

    persona = [(MBServiceAccount *)v7 persona];
    [persona setPreferencesValue:lastObject forKey:@"MegaBackupTurnOnAllAppsSync"];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager submitMegaLifeCycleTelemetriesWithAccount:v7];
  }

  else
  {
    lastObject = MBGetDefaultLog();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = @"MegaBackupTurnOnAllAppsSync";
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ due to nil account: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }

  v14 = [NSNumber numberWithBool:v7 != 0];
  [telemetryCopy setReply:v14];

  v15 = [MBError sanitizedError:v8];
  [telemetryCopy setError:v15];

  [telemetryCopy sendReply];
}

- (void)_setPrebuddyUIDeltaTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  arguments = [telemetryCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  v7 = [arguments objectAtIndexedSubscript:1];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v30 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v30];
  v11 = v30;

  v12 = MBGetDefaultLog();
  v13 = v12;
  if (v10)
  {
    selfCopy = self;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = v6;
      v33 = 2114;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to %{public}@", buf, 0x16u);
      v26 = v6;
      v27 = v7;
      _MBLog();
    }

    persona = [(MBServiceAccount *)v10 persona];
    v13 = [persona copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];

    persona2 = [(MBServiceAccount *)v10 persona];
    v16 = [persona2 copyPreferencesValueForKey:v6 class:objc_opt_class()];

    if (v13 && !v16)
    {
      persona3 = [(MBServiceAccount *)v10 persona];
      v28 = arguments;
      v18 = v11;
      v19 = v7;
      v20 = +[NSDate now];
      [v20 timeIntervalSinceDate:v13];
      v22 = [NSNumber numberWithInt:v21];
      [persona3 setPreferencesValue:v22 forKey:v6];

      v7 = v19;
      v11 = v18;
      arguments = v28;
    }

    v23 = [(MBXPCServer *)selfCopy serviceManager:v26];
    [v23 submitMegaLifeCycleTelemetriesWithAccount:v10];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v32 = v6;
    v33 = 2114;
    v34 = v7;
    v35 = 2114;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ : %{public}@ due to nil account: %{public}@", buf, 0x20u);
    _MBLog();
  }

  v24 = [NSNumber numberWithBool:v10 != 0];
  [telemetryCopy setReply:v24];

  v25 = [MBError sanitizedError:v11];
  [telemetryCopy setError:v25];

  [telemetryCopy sendReply];
}

- (void)_setEntryPointForMegaBackupTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  arguments = [telemetryCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  integerValue = [v6 integerValue];

  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v24 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v24];
  v11 = v24;

  v12 = MBGetDefaultLog();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = @"MegaBackupEntryPoint";
      v27 = 2048;
      v28 = integerValue;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %ld", buf, 0x16u);
      v22 = @"MegaBackupEntryPoint";
      v23 = integerValue;
      _MBLog();
    }

    persona = [(MBServiceAccount *)v10 persona];
    v13 = [persona copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];

    if (!v13)
    {
      persona2 = [(MBServiceAccount *)v10 persona];
      v16 = +[NSDate date];
      [persona2 setPreferencesValue:v16 forKey:@"MegaBackupFlowStartDate"];
    }

    v17 = [(MBServiceAccount *)v10 persona:v22];
    v18 = [NSNumber numberWithInteger:integerValue];
    [v17 setPreferencesValue:v18 forKey:@"MegaBackupEntryPoint"];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager submitMegaLifeCycleTelemetriesWithAccount:v10];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v26 = @"MegaBackupEntryPoint";
    v27 = 2048;
    v28 = integerValue;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ to %ld due to nil account: %{public}@", buf, 0x20u);
    _MBLog();
  }

  v20 = [NSNumber numberWithBool:v10 != 0];
  [telemetryCopy setReply:v20];

  v21 = [MBError sanitizedError:v11];
  [telemetryCopy setError:v21];

  [telemetryCopy sendReply];
}

- (void)_logPrebuddyFlowTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  arguments = [telemetryCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  integerValue = [v6 integerValue];

  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v18 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v18];
  v11 = v18;

  v12 = MBGetDefaultLog();
  serviceManager = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v20 = @"PrebuddyFlowStep";
      v21 = 2048;
      v22 = integerValue;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %ld", buf, 0x16u);
      _MBLog();
    }

    persona = [(MBServiceAccount *)v10 persona];
    v15 = [NSNumber numberWithInteger:integerValue];
    [persona setPreferencesValue:v15 forKey:@"PrebuddyFlowStep"];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager submitMegaLifeCycleTelemetriesWithAccount:v10];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v20 = @"PrebuddyFlowStep";
    v21 = 2048;
    v22 = integerValue;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ to %ld due to nil account: %{public}@", buf, 0x20u);
    _MBLog();
  }

  v16 = [NSNumber numberWithBool:v10 != 0];
  [telemetryCopy setReply:v16];

  v17 = [MBError sanitizedError:v11];
  [telemetryCopy setError:v17];

  [telemetryCopy sendReply];
}

- (void)_cancel:(id)_cancel
{
  _cancelCopy = _cancel;
  connection = [_cancelCopy connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v11 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v11];
  v9 = v11;

  if (v8)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager cancelEnginesWithAccount:v8 connection:connection];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to cancel due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [_cancelCopy sendReply];
}

- (void)_finishRestore:(id)restore
{
  restoreCopy = restore;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v10 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v10];
  v8 = v10;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager finishAirTrafficRestoreWithAccount:v7];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to finish AirTraffic restore due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [restoreCopy sendReply];
}

- (void)_deleteBackup:(id)backup
{
  backupCopy = backup;
  arguments = [backupCopy arguments];
  connection = [backupCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [serviceManager deleteBackupUDID:v7 disableIfCurrentDevice:1 account:v10 connection:connection error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to delete backup due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [backupCopy setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [backupCopy setReplyError:v16];
  }

  [backupCopy sendReply];
}

- (void)_backupList:(id)list
{
  listCopy = list;
  arguments = [listCopy arguments];
  connection = [listCopy connection];
  if ([arguments count] != 1)
  {
    [NSException raise:NSInvalidArgumentException format:@"filter argument required for backup list command"];
  }

  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v18 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v18];
  v11 = v18;

  if (!v10)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to fetch backup list due to nil account: %{public}@", buf, 0xCu);
      v16 = v11;
      _MBLog();
    }

    v14 = v11;
    goto LABEL_10;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v17 = v11;
  v13 = [serviceManager getBackupListWithFiltering:objc_msgSend(v7 account:"BOOLValue") connection:v10 error:{connection, &v17}];
  v14 = v17;

  if (!v13)
  {
    v11 = v14;
LABEL_10:
    v13 = [MBError sanitizedError:v11, v16];
    [listCopy setReplyError:v13];
    goto LABEL_11;
  }

  [listCopy setReply:v13];
LABEL_11:

  [listCopy sendReply];
}

- (void)_isBackupEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v13 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v13];
  v7 = v13;

  if (!v6)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to check if backup is enabled due to nil account: %@", buf, 0xCu);
      v12 = v7;
      _MBLog();
    }
  }

  isEnabledForBackup = [(MBServiceAccount *)v6 isEnabledForBackup];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v15) = isEnabledForBackup;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "isBackupEnabled:%d", buf, 8u);
    _MBLog();
  }

  v11 = [NSNumber numberWithBool:isEnabledForBackup];
  [enabledCopy setReply:v11];

  [enabledCopy sendReply];
}

- (void)_setBackupEnabled:(id)enabled
{
  enabledCopy = enabled;
  connection = [enabledCopy connection];
  arguments = [enabledCopy arguments];
  lastObject = [arguments lastObject];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v13 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v13];
  v11 = v13;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    -[NSObject setBackupEnabled:account:connection:](serviceManager, "setBackupEnabled:account:connection:", [lastObject BOOLValue], v10, connection);
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to enable backup due to nil account: %@", buf, 0xCu);
      _MBLog();
    }
  }

  [enabledCopy sendReply];
}

- (void)_isBackupOnCellularEnabled:(id)enabled
{
  enabledCopy = enabled;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v19 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v19];
  v7 = v19;

  if (v6)
  {
    v8 = sub_100156CCC();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100156D20;
    block[3] = &unk_1003BCFF0;
    v18 = &v20;
    v17 = v6;
    dispatch_sync(v8, block);

    v9 = v17;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = @"EnableBackupOnCellular";
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ due to nil account: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSNumber numberWithBool:*(v21 + 24)];
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "isBackupOnCellularEnabled: %@", buf, 0xCu);
    }

    v15 = [NSNumber numberWithBool:*(v21 + 24)];
    _MBLog();
  }

  v13 = [NSNumber numberWithBool:*(v21 + 24)];
  [enabledCopy setReply:v13];

  v14 = [MBError sanitizedError:v7];
  [enabledCopy setError:v14];

  [enabledCopy sendReply];
  _Block_object_dispose(&v20, 8);
}

- (void)_setBackupOnCellularEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v19 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v19];
  v8 = v19;

  if (v7)
  {
    arguments = [enabledCopy arguments];
    lastObject = [arguments lastObject];

    v11 = sub_100156CCC();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157010;
    block[3] = &unk_1003BC2E0;
    v16 = lastObject;
    v17 = v7;
    selfCopy = self;
    v12 = lastObject;
    dispatch_sync(v11, block);
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = @"EnableBackupOnCellular";
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ due to nil account: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }

  v13 = [NSNumber numberWithBool:v7 != 0];
  [enabledCopy setReply:v13];

  v14 = [MBError sanitizedError:v8];
  [enabledCopy setError:v14];

  [enabledCopy sendReply];
}

- (void)_syncBackupEnabled:(id)enabled
{
  enabledCopy = enabled;
  connection = [enabledCopy connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v11 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v11];
  v9 = v11;

  if (v8)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager syncBackupEnabledWithAccount:v8 connection:connection];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to sync backup enabled due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [enabledCopy sendReply];
}

- (void)_isLocalBackupPasswordSet:(id)set
{
  setCopy = set;
  v11 = 0;
  v4 = [MBKeychainManager fetchLocalBackupPasswordAndReturnError:&v11];
  v5 = v11;

  if (v4)
  {
    v6 = v5 == 0;
    if (v5)
    {
LABEL_3:
      v7 = [MBError sanitizedError:v5];
      [setCopy setReplyError:v7];
    }
  }

  else
  {
    if ([MBError isError:v5 withCode:4])
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No local backup password set", v10, 2u);
        _MBLog();
      }
    }

    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v8 = [NSNumber numberWithBool:v6];
  [setCopy setReply:v8];

  [setCopy sendReply];
}

- (void)_unsetLocalBackupPassword:(id)password
{
  passwordCopy = password;
  v15 = 0;
  v4 = [MBKeychainManager fetchLocalBackupPasswordAndReturnError:&v15];
  v5 = v15;

  if (v4)
  {
    v14 = v5;
    v6 = [MBKeychainManager removeLocalBackupPasswordAndReturnError:&v14];
    v7 = v14;

    v8 = MBGetDefaultLog();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Local backup password successfully removed", buf, 2u);
        _MBLog();
      }

      v9 = +[MBLockdown connect];
      [v9 setObject:&__kCFBooleanFalse forDomain:@"com.apple.mobile.backup" andKey:@"WillEncrypt" withError:0];
      [v9 disconnect];
      v10 = 1;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to remove local backup password: %@", buf, 0xCu);
        v13 = v7;
        _MBLog();
      }

      v10 = 0;
    }
  }

  else
  {
    if (![MBError isError:v5 withCode:4])
    {
      v10 = 0;
      if (!v5)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v9 = MBGetDefaultLog();
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No local backup password set", buf, 2u);
      _MBLog();
    }

    v7 = v5;
  }

  v5 = v7;
  if (v7)
  {
LABEL_14:
    v11 = [MBError sanitizedError:v5, v13];
    [passwordCopy setReplyError:v11];
  }

LABEL_15:
  v12 = [NSNumber numberWithBool:v10, v13];
  [passwordCopy setReply:v12];

  [passwordCopy sendReply];
}

- (void)_getBackupDeviceUUID:(id)d
{
  dCopy = d;
  v3 = MBDeviceUUID();
  [dCopy setReply:v3];

  [dCopy sendReply];
}

- (void)_backupState:(id)state
{
  stateCopy = state;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v12 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch the last backup date due to nil account: %{public}@", buf, 0xCu);
      v11 = v8;
      _MBLog();
    }

    goto LABEL_6;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v10 = [serviceManager backupStateInfoForInitialMegaBackup:0 account:v7];

  if (v10)
  {
    [stateCopy setReply:v10];
LABEL_6:
  }

  [stateCopy sendReply];
}

- (void)_dateOfLastBackup:(id)backup
{
  backupCopy = backup;
  connection = [backupCopy connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v16 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v16];
  v9 = v16;

  if (v8)
  {
    scheduler = [(MBXPCServer *)self scheduler];
    v15 = v9;
    v11 = [scheduler dateOfLastBackupWithAccount:v8 connection:connection error:&v15];
    v12 = v15;

    if (!v11)
    {
      goto LABEL_7;
    }

    [backupCopy setReply:v11];
    v9 = v12;
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch the last backup date due to nil account: %{public}@", buf, 0xCu);
      v14 = v9;
      _MBLog();
    }
  }

  v12 = v9;
LABEL_7:
  if (v12)
  {
    v13 = [MBError sanitizedError:v12];
    [backupCopy setReplyError:v13];
  }

  [backupCopy sendReply];
}

- (void)_dateOfNextBackup:(id)backup
{
  backupCopy = backup;
  connection = [backupCopy connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v16 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v16];
  v9 = v16;

  if (v8)
  {
    scheduler = [(MBXPCServer *)self scheduler];
    v15 = v9;
    v11 = [scheduler dateOfNextScheduledBackupWithAccount:v8 connection:connection error:&v15];
    v12 = v15;

    if (!v11)
    {
      goto LABEL_7;
    }

    [backupCopy setReply:v11];
    v9 = v12;
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch the next backup date due to nil account: %{public}@", buf, 0xCu);
      v14 = v9;
      _MBLog();
    }
  }

  v12 = v9;
LABEL_7:
  if (v12)
  {
    v13 = [MBError sanitizedError:v12];
    [backupCopy setReplyError:v13];
  }

  [backupCopy sendReply];
}

- (void)_nextBackupSize:(id)size
{
  sizeCopy = size;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v10 = [serviceManager nextBackupSizeWithAccount:v7];

    v11 = [NSNumber numberWithUnsignedLongLong:v10];
    [sizeCopy setReply:v11];
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to fetch the next backup size due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v11 = [MBError sanitizedError:v8];
    [sizeCopy setReplyError:v11];
  }

  [sizeCopy sendReply];
}

- (void)_nextBackupSizeInfo:(id)info
{
  infoCopy = info;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v12 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v12];
  v8 = v12;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v10 = [serviceManager nextBackupSizeInfoWithAccount:v7];
    [infoCopy setReply:v10];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch the next backup size info due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    serviceManager = [MBError sanitizedError:v8];
    [infoCopy setReplyError:serviceManager];
  }

  [infoCopy sendReply];
}

- (void)_journalLastModifiedForBackupUUID:(id)d
{
  dCopy = d;
  connection = [dCopy connection];
  arguments = [dCopy arguments];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v18 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v18];
  v11 = v18;

  if (!v10)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to fetch last modified date from journal due to nil account: %{public}@", buf, 0xCu);
      v16 = v11;
      _MBLog();
    }

    v14 = v11;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v17 = v11;
  v13 = [serviceManager journalLastModifiedForBackupUUID:v7 account:v10 connection:connection error:&v17];
  v14 = v17;

  if (!v13)
  {
    v11 = v14;
LABEL_8:
    v13 = [MBError sanitizedError:v11, v16];
    [dCopy setReplyError:v13];
    goto LABEL_9;
  }

  [dCopy setReply:v13];
LABEL_9:

  [dCopy sendReply];
}

- (void)_journalForBackupUUID:(id)d
{
  dCopy = d;
  connection = [dCopy connection];
  arguments = [dCopy arguments];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v18 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v18];
  v11 = v18;

  if (!v10)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to fetch journal due to nil account: %{public}@", buf, 0xCu);
      v16 = v11;
      _MBLog();
    }

    v14 = v11;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v17 = v11;
  v13 = [serviceManager journalForBackupUUID:v7 account:v10 connection:connection error:&v17];
  v14 = v17;

  if (!v13)
  {
    v11 = v14;
LABEL_8:
    v13 = [MBError sanitizedError:v11, v16];
    [dCopy setReplyError:v13];
    goto LABEL_9;
  }

  [dCopy setReply:v13];
LABEL_9:

  [dCopy sendReply];
}

- (void)_listSnapshotFiles:(id)files
{
  filesCopy = files;
  arguments = [filesCopy arguments];
  connection = [filesCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  integerValue = [v7 integerValue];

  v9 = [arguments objectAtIndexedSubscript:1];
  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v20 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v20];
  v13 = v20;

  if (!v12)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to list snapshot files due to nil account: %{public}@", buf, 0xCu);
      v18 = v13;
      _MBLog();
    }

    v16 = v13;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v19 = v13;
  v15 = [serviceManager filesForSnapshotID:integerValue backupUDID:v9 account:v12 connection:connection error:&v19];
  v16 = v19;

  if (!v15)
  {
    v13 = v16;
LABEL_8:
    v15 = [MBError sanitizedError:v13, v18];
    [filesCopy setReplyError:v15];
    goto LABEL_9;
  }

  [filesCopy setReply:v15];
LABEL_9:

  [filesCopy sendReply];
}

- (void)_mergeSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  arguments = [snapshotsCopy arguments];
  connection = [snapshotsCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [arguments subarrayWithRange:{1, objc_msgSend(arguments, "count") - 1}];
  v9 = [MBServiceAccount alloc];
  v10 = +[UMUserPersona currentPersona];
  v18 = 0;
  v11 = [(MBServiceAccount *)v9 initWithPersona:v10 error:&v18];
  v12 = v18;

  if (v11)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v17 = v12;
    [serviceManager mergeSnapshots:v8 backupUUID:v7 account:v11 connection:connection error:&v17];
    v14 = v17;

    v12 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to merge snapshots due to nil account: %{public}@", buf, 0xCu);
      v16 = v12;
      _MBLog();
    }
  }

  if (v12)
  {
    v15 = [MBError sanitizedError:v12];
    [snapshotsCopy setReplyError:v15];
  }

  else
  {
    [snapshotsCopy setReply:&__kCFBooleanTrue];
  }

  [snapshotsCopy sendReply];
}

- (void)_pinSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  arguments = [snapshotCopy arguments];
  connection = [snapshotCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [arguments objectAtIndexedSubscript:1];
  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v21 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v21];
  v13 = v21;

  if (v12)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v20 = v13;
    v15 = [serviceManager pinSnapshotID:unsignedIntegerValue backupUDID:v9 account:v12 connection:connection error:&v20];
    v16 = v20;

    v13 = v16;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to pin snapshot due to nil account: %{public}@", buf, 0xCu);
      v19 = v13;
      _MBLog();
    }

    v15 = 0;
  }

  v17 = [NSNumber numberWithBool:v15];
  [snapshotCopy setReply:v17];

  if ((v15 & 1) == 0)
  {
    v18 = [MBError sanitizedError:v13];
    [snapshotCopy setReplyError:v18];
  }

  [snapshotCopy sendReply];
}

- (void)_unpinSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  arguments = [snapshotCopy arguments];
  connection = [snapshotCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [arguments objectAtIndexedSubscript:1];
  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v21 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v21];
  v13 = v21;

  if (v12)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v20 = v13;
    v15 = [serviceManager unpinSnapshotID:unsignedIntegerValue backupUDID:v9 account:v12 connection:connection error:&v20];
    v16 = v20;

    v13 = v16;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to unpin snapshot due to nil account: %{public}@", buf, 0xCu);
      v19 = v13;
      _MBLog();
    }

    v15 = 0;
  }

  v17 = [NSNumber numberWithBool:v15];
  [snapshotCopy setReply:v17];

  if ((v15 & 1) == 0)
  {
    v18 = [MBError sanitizedError:v13];
    [snapshotCopy setReplyError:v18];
  }

  [snapshotCopy sendReply];
}

- (void)_fetchBundleIDs:(id)ds
{
  dsCopy = ds;
  connection = [dsCopy connection];
  arguments = [dsCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];

  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v17 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v17];
  v10 = v17;

  if (!v9)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch the app bundle IDs for snapshot %{public}@ due to nil account: %{public}@", buf, 0x16u);
      v14 = v6;
      v15 = v10;
      _MBLog();
    }

    v12 = v10;
    goto LABEL_8;
  }

  v16 = v10;
  v11 = MBFetchAppBundleIDsInSnapshot(v6, v9, connection, &v16);
  v12 = v16;

  if (!v11)
  {
    v10 = v12;
LABEL_8:
    v11 = [MBError sanitizedError:v10, v14, v15];
    [dsCopy setReplyError:v11];
    goto LABEL_9;
  }

  [dsCopy setReply:v11];
LABEL_9:

  [dsCopy sendReply];
}

- (void)_fetchRestorableSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  connection = [snapshotsCopy connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v16 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v16];
  v9 = v16;

  if (!v8)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch the restorable snapshots due to nil account: %{public}@", buf, 0xCu);
      v14 = v9;
      _MBLog();
    }

    v12 = v9;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v15 = v9;
  v11 = [serviceManager fetchRestorableSnapshotsForAccount:v8 connection:connection error:&v15];
  v12 = v15;

  if (!v11)
  {
    v9 = v12;
LABEL_8:
    v11 = [MBError sanitizedError:v9, v14];
    [snapshotsCopy setReplyError:v11];
    goto LABEL_9;
  }

  [snapshotsCopy setReply:v11];
LABEL_9:

  [snapshotsCopy sendReply];
}

- (void)_restoreSupportsBatching:(id)batching
{
  batchingCopy = batching;
  serviceManager = [(MBXPCServer *)self serviceManager];
  restoreSupportsBatching = [serviceManager restoreSupportsBatching];

  v6 = [NSNumber numberWithBool:restoreSupportsBatching];
  [batchingCopy setReply:v6];

  [batchingCopy sendReply];
}

- (void)_setRestoreQualityOfService:(id)service
{
  serviceCopy = service;
  arguments = [serviceCopy arguments];
  connection = [serviceCopy connection];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v16 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v16];
  v10 = v16;

  if (v9)
  {
    firstObject = [arguments firstObject];
    integerValue = [firstObject integerValue];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager setRestoreQualityOfService:integerValue account:v9 connection:connection];
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to set the restore qos due to nil account: %{public}@", buf, 0xCu);
      v15 = v10;
      _MBLog();
    }

    [serviceCopy setReplyError:v10];
  }

  [serviceCopy sendReply];
}

- (void)_saveBackgroundRestoreCellularAccess:(id)access
{
  accessCopy = access;
  arguments = [accessCopy arguments];
  firstObject = [arguments firstObject];

  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v18 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v18];
  v10 = v18;

  if (v9)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v17 = v10;
    v12 = [serviceManager saveBackgroundRestoreCellularAccess:firstObject account:v9 error:&v17];
    v13 = v17;

    v10 = v13;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to save background restore cellular access due to nil account: %{public}@", buf, 0xCu);
      v16 = v10;
      _MBLog();
    }

    v12 = 0;
  }

  v14 = [NSNumber numberWithBool:v12];
  [accessCopy setReply:v14];

  if ((v12 & 1) == 0)
  {
    v15 = [MBError sanitizedError:v10];
    [accessCopy setReplyError:v15];
  }

  [accessCopy sendReply];
}

- (void)_fetchBackgroundRestoreCellularAccess:(id)access
{
  accessCopy = access;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v15 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v14 = v8;
    v10 = [serviceManager fetchBackgroundRestoreCellularAccessForAccount:v7 error:&v14];
    v11 = v14;

    [accessCopy setReply:v10];
    v8 = v11;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to fetch background restore cellular access due to nil account: %{public}@", buf, 0xCu);
      v13 = v8;
      _MBLog();
    }
  }

  if (v8)
  {
    v12 = [MBError sanitizedError:v8];
    [accessCopy setReplyError:v12];
  }

  [accessCopy sendReply];
}

- (void)_startRestore:(id)restore
{
  restoreCopy = restore;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v20 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v20];
  v8 = v20;

  if (v7)
  {
    arguments = [restoreCopy arguments];
    v10 = [arguments objectAtIndexedSubscript:0];
    v11 = 0;
    if ([arguments count]>= 2)
    {
      v11 = [arguments objectAtIndexedSubscript:1];
    }

    serviceManager = [(MBXPCServer *)self serviceManager];
    connection = [restoreCopy connection];
    v19 = v8;
    v14 = [serviceManager startRestoreForSnapshot:v10 options:v11 account:v7 connection:connection error:&v19];
    v15 = v19;

    v8 = v15;
  }

  else
  {
    arguments = MBGetDefaultLog();
    if (os_log_type_enabled(arguments, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, arguments, OS_LOG_TYPE_ERROR, "Failed to start restore due to nil account: %{public}@", buf, 0xCu);
      v18 = v8;
      _MBLog();
    }

    v14 = 0;
  }

  v16 = [NSNumber numberWithBool:v14];
  [restoreCopy setReply:v16];

  if ((v14 & 1) == 0)
  {
    v17 = [MBError sanitizedError:v8];
    [restoreCopy setReplyError:v17];
  }

  [restoreCopy sendReply];
}

- (void)_inheritBackup:(id)backup
{
  backupCopy = backup;
  arguments = [backupCopy arguments];
  if ([arguments count] <= 1)
  {
    [NSException raise:NSInvalidArgumentException format:@"must provide both snapshotUUID and deviceUUID to inherit from"];
  }

  v6 = [arguments objectAtIndexedSubscript:1];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [serviceManager inheritSnapshotWithAccount:v10 fromSnapshot:v7 fromDevice:v6 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to inherit backup due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [backupCopy setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [backupCopy setReplyError:v16];
  }

  [backupCopy sendReply];
}

- (void)_cancelRestore:(id)restore
{
  restoreCopy = restore;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v12 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v12];
  v8 = v12;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager cancelBackgroundRestoreWithAccount:v7];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to cancel the restore due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    serviceManager = [MBError sanitizedError:v8];
    [restoreCopy setReplyError:serviceManager];
  }

  v11 = [NSNumber numberWithBool:v7 != 0];
  [restoreCopy setReply:v11];

  [restoreCopy sendReply];
}

- (void)_startFileRestore:(id)restore
{
  restoreCopy = restore;
  arguments = [restoreCopy arguments];
  connection = [restoreCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [serviceManager restoreFileWithPath:v7 context:connection account:v10 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to start file restore due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [restoreCopy setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [restoreCopy setReplyError:v16];
  }

  [restoreCopy sendReply];
}

- (void)_startFilesRestore:(id)restore
{
  restoreCopy = restore;
  arguments = [restoreCopy arguments];
  connection = [restoreCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [serviceManager restoreFilesWithPaths:v7 context:connection account:v10 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to start files restore due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [restoreCopy setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [restoreCopy setReplyError:v16];
  }

  [restoreCopy sendReply];
}

- (void)_startBookRestore:(id)restore
{
  restoreCopy = restore;
  arguments = [restoreCopy arguments];
  connection = [restoreCopy connection];
  firstObject = [arguments firstObject];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [serviceManager restoreBookWithPath:firstObject context:connection account:v10 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to start the book restore due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [restoreCopy setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [restoreCopy setReplyError:v16];
  }

  [restoreCopy sendReply];
}

- (void)_startAppRestore:(id)restore
{
  restoreCopy = restore;
  arguments = [restoreCopy arguments];
  connection = [restoreCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [arguments objectAtIndexedSubscript:1];
  bOOLValue = [v8 BOOLValue];

  v10 = [arguments objectAtIndexedSubscript:2];
  v11 = [MBServiceAccount alloc];
  v12 = +[UMUserPersona currentPersona];
  v22 = 0;
  v13 = [(MBServiceAccount *)v11 initWithPersona:v12 error:&v22];
  v14 = v22;

  if (v13)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v21 = v14;
    v16 = [serviceManager restoreApplicationWithBundleID:v7 failed:bOOLValue qos:v10 context:connection account:v13 error:&v21];
    v17 = v21;

    v14 = v17;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to start the app restore due to nil account: %{public}@", buf, 0xCu);
      v20 = v14;
      _MBLog();
    }

    v16 = 0;
  }

  v18 = [NSNumber numberWithBool:v16];
  [restoreCopy setReply:v18];

  if ((v16 & 1) == 0)
  {
    v19 = [MBError sanitizedError:v14];
    [restoreCopy setReplyError:v19];
  }

  [restoreCopy sendReply];
}

- (void)_cancelAppRestore:(id)restore
{
  restoreCopy = restore;
  arguments = [restoreCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  serviceManager = [(MBXPCServer *)self serviceManager];
  v12 = 0;
  v8 = [serviceManager cancelApplicationRestoreWithBundleID:v6 error:&v12];
  v9 = v12;

  v10 = [NSNumber numberWithBool:v8];
  [restoreCopy setReply:v10];

  if ((v8 & 1) == 0)
  {
    v11 = [MBError sanitizedError:v9];
    [restoreCopy setReplyError:v11];
  }

  [restoreCopy sendReply];
}

- (void)_restoreInfo:(id)info
{
  infoCopy = info;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v14 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v14];
  v7 = v14;

  if (v6)
  {
    persona = [(MBServiceAccount *)v6 persona];
    if (persona)
    {
LABEL_3:
      v9 = [persona copyPreferencesValueForKey:@"RestoreInfo" class:objc_opt_class()];
      v10 = [[MBRestoreInfo alloc] initWithDictionaryRepresentation:v9];
      [infoCopy setReply:v10];

      goto LABEL_8;
    }
  }

  else
  {
    v13 = v7;
    persona = [MBPersona personalPersonaWithError:&v13];
    v11 = v13;

    v7 = v11;
    if (persona)
    {
      goto LABEL_3;
    }
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to fetch restore state due to nil persona: %{public}@", buf, 0xCu);
    _MBLog();
  }

  v9 = [MBError sanitizedError:v7];
  [infoCopy setReplyError:v9];
LABEL_8:

  [infoCopy sendReply];
}

- (void)_restoreState:(id)state
{
  stateCopy = state;
  serviceManager = [(MBXPCServer *)self serviceManager];
  v11 = 0;
  v6 = [serviceManager restoreStateWithError:&v11];
  v7 = v11;

  if (v6)
  {
    [stateCopy setReply:v6];
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch restore state: %{public}@", buf, 0xCu);
      v10 = v7;
      _MBLog();
    }

    v9 = [MBError sanitizedError:v7];
    [stateCopy setReplyError:v9];
  }

  [stateCopy sendReply];
}

- (void)_backgroundRestoreInfo:(id)info
{
  infoCopy = info;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v12 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch the background restore info due to nil account: %{public}@", buf, 0xCu);
      v11 = v8;
      _MBLog();
    }

    goto LABEL_6;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v10 = [serviceManager backgroundRestoreInfoWithAccount:v7];

  if (v10)
  {
    [infoCopy setReply:v10];
LABEL_6:
  }

  [infoCopy sendReply];
}

- (void)_clearRestoreSession:(id)session
{
  sessionCopy = session;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v10 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v10];
  v8 = v10;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager clearRestoreSessionWithAccount:v7];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to clear the restore session due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [sessionCopy sendReply];
}

- (void)_reportRestoreFailure:(id)failure
{
  failureCopy = failure;
  arguments = [failureCopy arguments];
  v5 = [arguments objectAtIndexedSubscript:0];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [MBPersona personaWithUMPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = +[MBRestoreFailuresManager sharedManager];
    v15 = v8;
    v10 = [v9 recordRestoreFailure:v5 persona:v7 error:&v15];
    v11 = v15;

    v8 = v11;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to load persona when reporting restore failures: %@", buf, 0xCu);
      v14 = v8;
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [failureCopy setReply:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [MBError sanitizedError:v8];
    [failureCopy setReplyError:v13];
  }

  [failureCopy sendReply];
}

- (void)_countRestoreFailures:(id)failures
{
  failuresCopy = failures;
  arguments = [failuresCopy arguments];
  v4 = [arguments objectAtIndexedSubscript:0];
  v5 = [arguments objectAtIndexedSubscript:1];
  v6 = +[MBRestoreFailuresManager sharedManager];
  v7 = +[NSNull null];
  if (v4 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  v9 = +[NSNull null];
  if (v5 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  v11 = [v6 countOfRestoreFailuresForDataclass:v8 assetType:v10];

  v12 = [NSNumber numberWithUnsignedInteger:v11];
  [failuresCopy setReply:v12];

  [failuresCopy sendReply];
}

- (void)_listRestoreFailures:(id)failures
{
  failuresCopy = failures;
  arguments = [failuresCopy arguments];
  v4 = [arguments objectAtIndexedSubscript:0];
  v5 = [arguments objectAtIndexedSubscript:1];
  v6 = [arguments objectAtIndexedSubscript:2];
  v7 = NSRangeFromString(v6);

  v8 = +[MBRestoreFailuresManager sharedManager];
  v9 = +[NSNull null];
  if (v4 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  v11 = +[NSNull null];
  if (v5 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = [v8 restoreFailuresForDataClass:v10 assetType:v12 range:{v7.location, v7.length}];

  [failuresCopy setReply:v13];
  [failuresCopy sendReply];
}

- (void)_restoreFiles:(id)files
{
  filesCopy = files;
  arguments = [filesCopy arguments];
  v24 = [arguments objectAtIndexedSubscript:0];
  v6 = [arguments objectAtIndexedSubscript:1];
  v7 = +[NSNull null];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [arguments objectAtIndexedSubscript:1];
  }

  v9 = [arguments objectAtIndexedSubscript:2];
  bOOLValue = [v9 BOOLValue];

  v11 = [arguments objectAtIndexedSubscript:3];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v13 = [arguments objectAtIndexedSubscript:4];
  unsignedIntegerValue2 = [v13 unsignedIntegerValue];

  v15 = [MBServiceAccount alloc];
  v16 = +[UMUserPersona currentPersona];
  v26 = 0;
  v17 = [(MBServiceAccount *)v15 initWithPersona:v16 error:&v26];
  v18 = v26;

  if (!v17)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to fetch files for domain due to nil account: %{public}@", buf, 0xCu);
      v23 = v18;
      _MBLog();
    }

    v21 = v18;
    goto LABEL_11;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v25 = v18;
  v20 = [serviceManager restoreFilesForDomain:v24 relativePath:v8 pendingOnly:bOOLValue range:unsignedIntegerValue account:unsignedIntegerValue2 error:{v17, &v25}];
  v21 = v25;

  if (!v20)
  {
    v18 = v21;
LABEL_11:
    v20 = [MBError sanitizedError:v18, v23];
    [filesCopy setReplyError:v20];
    goto LABEL_12;
  }

  [filesCopy setReply:v20];
LABEL_12:

  [filesCopy sendReply];
}

- (void)_prioritizeRestoreFile:(id)file
{
  fileCopy = file;
  arguments = [fileCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v12 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v12];
  v10 = v12;

  if (v9)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager prioritizeRestoreFileWithPath:v6 account:v9];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to prioritize restore for file due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [fileCopy sendReply];
}

- (void)_insufficientFreeSpaceToRestore:(id)restore
{
  restoreCopy = restore;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v10 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v10];
  v7 = v10;

  if (v6)
  {
    [MBCKManager insufficientFreeSpaceToRestoreForAccount:v6];
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to post insufficient free space to restore notification due to nil account: %{public}@", buf, 0xCu);
      v9 = v7;
      _MBLog();
    }
  }

  [restoreCopy sendReply];
}

- (void)_prepareForBackgroundRestore:(id)restore
{
  restoreCopy = restore;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (!v7)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to prepare for restore due to nil account: %{public}@", buf, 0xCu);
      v14 = v8;
      _MBLog();
    }

    v11 = v8;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v15 = v8;
  v10 = [serviceManager prepareForBackgroundRestoreWithAccount:v7 error:&v15];
  v11 = v15;

  if (!v10)
  {
    v8 = v11;
LABEL_8:
    v13 = [MBError sanitizedError:v8, v14];
    [restoreCopy setReplyError:v13];

    goto LABEL_9;
  }

  [restoreCopy setReply:&__kCFBooleanTrue];
LABEL_9:
  [restoreCopy sendReply];
}

- (void)_boostBackgroundRestore:(id)restore
{
  restoreCopy = restore;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v14 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v14];
  v8 = v14;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10015BA00;
    v12[3] = &unk_1003BC010;
    v13 = restoreCopy;
    [serviceManager boostBackgroundRestoreWithAccount:v7 completionHandler:v12];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to boost background restore due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v11 = [MBError sanitizedError:v8];
    [restoreCopy setReplyError:v11];

    [restoreCopy sendReply];
  }
}

- (void)_boostManualBackup:(id)backup
{
  backupCopy = backup;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10015BBA8;
    v11[3] = &unk_1003BC010;
    v12 = backupCopy;
    [serviceManager boostManualBackupWithAccount:v7 completionHandler:v11];
  }

  else
  {
    v10 = [MBError sanitizedError:v8];
    [backupCopy setReplyError:v10];

    [backupCopy sendReply];
  }
}

- (void)_scheduleActivities:(id)activities
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015BCA0;
  v4[3] = &unk_1003BFD78;
  selfCopy = self;
  activitiesCopy = activities;
  v3 = activitiesCopy;
  [(MBXPCServer *)selfCopy _respondSynchronouslyTo:v3 with:v4];
}

- (void)_restoreDomain:(id)domain
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015BDE4;
  v4[3] = &unk_1003BFDA0;
  selfCopy = self;
  domainCopy = domain;
  v3 = domainCopy;
  [(MBXPCServer *)selfCopy _respondSynchronouslyTo:v3 description:@"restore domain" withAccount:v4];
}

- (void)_acquireLock:(id)lock
{
  lockCopy = lock;
  arguments = [lockCopy arguments];
  connection = [lockCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [arguments objectAtIndexedSubscript:1];
  v9 = [arguments objectAtIndexedSubscript:2];
  [v9 doubleValue];
  v11 = v10;

  v12 = [MBServiceAccount alloc];
  v13 = +[UMUserPersona currentPersona];
  v23 = 0;
  v14 = [(MBServiceAccount *)v12 initWithPersona:v13 error:&v23];
  v15 = v23;

  if (v14)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v22 = v15;
    v17 = [serviceManager acquireLockWithBackupUDID:v7 account:v14 owner:v8 timeout:connection connection:&v22 error:v11];
    v18 = v22;

    v15 = v18;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to acquire lock due to nil account: %{public}@", buf, 0xCu);
      v21 = v15;
      _MBLog();
    }

    v17 = 0;
  }

  v19 = [NSNumber numberWithBool:v17];
  [lockCopy setReply:v19];

  if ((v17 & 1) == 0)
  {
    v20 = [MBError sanitizedError:v15];
    [lockCopy setReplyError:v20];
  }

  [lockCopy sendReply];
}

- (void)_releaseLock:(id)lock
{
  lockCopy = lock;
  arguments = [lockCopy arguments];
  connection = [lockCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [arguments objectAtIndexedSubscript:1];
  v9 = [MBServiceAccount alloc];
  v10 = +[UMUserPersona currentPersona];
  v20 = 0;
  v11 = [(MBServiceAccount *)v9 initWithPersona:v10 error:&v20];
  v12 = v20;

  if (v11)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v19 = v12;
    v14 = [serviceManager releaseLockWithBackupUDID:v7 account:v11 owner:v8 connection:connection error:&v19];
    v15 = v19;

    v12 = v15;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to release lock due to nil account: %{public}@", buf, 0xCu);
      v18 = v12;
      _MBLog();
    }

    v14 = 0;
  }

  v16 = [NSNumber numberWithBool:v14];
  [lockCopy setReply:v16];

  if ((v14 & 1) == 0)
  {
    v17 = [MBError sanitizedError:v12];
    [lockCopy setReplyError:v17];
  }

  [lockCopy sendReply];
}

- (void)_deviceLockInfos:(id)infos
{
  infosCopy = infos;
  connection = [infosCopy connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v16 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v16];
  v9 = v16;

  if (!v8)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch device lock info due to nil account: %{public}@", buf, 0xCu);
      v14 = v9;
      _MBLog();
    }

    v12 = v9;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v15 = v9;
  v11 = [serviceManager deviceLockInfosWithAccount:v8 connection:connection error:&v15];
  v12 = v15;

  if (!v11)
  {
    v9 = v12;
LABEL_8:
    v11 = [MBError sanitizedError:v9, v14];
    [infosCopy setReplyError:v11];
    goto LABEL_9;
  }

  [infosCopy setReply:v11];
LABEL_9:

  [infosCopy sendReply];
}

- (void)_fileExists:(id)exists
{
  existsCopy = exists;
  arguments = [existsCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v18 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v18];
  v10 = v18;

  if (v9)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v12 = [serviceManager restoreFileExistsWithPath:v6 account:v9];

    v13 = [NSNumber numberWithBool:v12];
    [existsCopy setReply:v13];

    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to check for file existence due to nil account: %{public}@", buf, 0xCu);
      v17 = v10;
      _MBLog();
    }

    v15 = [NSNumber numberWithBool:0];
    [existsCopy setReply:v15];
  }

  v16 = [MBError sanitizedError:v10, v17];
  [existsCopy setReplyError:v16];

LABEL_8:
}

- (void)_dataExistsForApp:(id)app
{
  appCopy = app;
  arguments = [appCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  v17 = 0;
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v16 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v16];
  v10 = v16;

  if (v9)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v12 = [serviceManager restoreDataExistsForApplicationWithBundleID:v6 size:&v17 account:v9];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to check for data existence due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = 0;
  }

  v13 = [NSNumber numberWithBool:v12];
  v18[0] = v13;
  v14 = [NSNumber numberWithUnsignedLongLong:v17];
  v18[1] = v14;
  v15 = [NSArray arrayWithObjects:v18 count:2];
  [appCopy setReply:v15];

  [appCopy sendReply];
}

- (void)_removeDomain:(id)domain
{
  domainCopy = domain;
  arguments = [domainCopy arguments];
  connection = [domainCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [serviceManager removeDomainName:v7 account:v10 connection:connection error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to remove domain due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [domainCopy setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [domainCopy setReplyError:v16];
  }

  [domainCopy sendReply];
}

- (void)_domainInfo:(id)info
{
  infoCopy = info;
  arguments = [infoCopy arguments];
  v5 = [arguments objectAtIndexedSubscript:0];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v17 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v17];
  v9 = v17;

  if (!v8)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch domain info due to nil account: %{public}@", buf, 0xCu);
      v15 = v9;
      _MBLog();
    }

    [infoCopy setReply:0];
    v12 = v9;
    goto LABEL_7;
  }

  connection = [infoCopy connection];
  v16 = v9;
  v11 = MBCalculateQuotaForDomain(v5, v8, connection, &v16);
  v12 = v16;

  [infoCopy setReply:v11];
  v9 = v12;
  if (!v11)
  {
LABEL_7:
    v14 = [MBError sanitizedError:v9, v15];
    [infoCopy setReplyError:v14];

    v11 = 0;
  }

  [infoCopy sendReply];
}

- (void)_domainInfoList:(id)list
{
  listCopy = list;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v15 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v15];
  v7 = v15;

  if (!v6)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch domain infos list due to nil account: %{public}@", buf, 0xCu);
      v13 = v7;
      _MBLog();
    }

    [listCopy setReply:0];
    v10 = v7;
    goto LABEL_7;
  }

  connection = [listCopy connection];
  v14 = v7;
  v9 = MBCalculateQuotaForDomainsInCurrentDevice(v6, connection, &v14);
  v10 = v14;

  [listCopy setReply:v9];
  v7 = v10;
  if (!v9)
  {
LABEL_7:
    v12 = [MBError sanitizedError:v7, v13];
    [listCopy setReplyError:v12];

    v9 = 0;
  }

  [listCopy sendReply];
}

- (void)_disabledDomainInfos:(id)infos
{
  infosCopy = infos;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v11 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v11];
  v8 = v11;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v10 = [serviceManager disabledDomainInfosForAccount:v7];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to set domain enabled/disabled due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  [infosCopy setReply:v10];
  [infosCopy sendReply];
}

- (void)_isDomainEnabled:(id)enabled
{
  enabledCopy = enabled;
  arguments = [enabledCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v14 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v14];
  v10 = v14;

  if (v9)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v12 = [serviceManager isBackupEnabledForDomainName:v6 account:v9];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to set domain enabled/disabled due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = 0;
  }

  v13 = [NSNumber numberWithBool:v12];
  [enabledCopy setReply:v13];

  [enabledCopy sendReply];
}

- (void)_setDomainEnabled:(id)enabled
{
  enabledCopy = enabled;
  arguments = [enabledCopy arguments];
  v6 = [arguments objectAtIndexedSubscript:0];
  bOOLValue = [v6 BOOLValue];

  v8 = [arguments objectAtIndexedSubscript:1];
  v9 = [MBServiceAccount alloc];
  v10 = +[UMUserPersona currentPersona];
  v14 = 0;
  v11 = [(MBServiceAccount *)v9 initWithPersona:v10 error:&v14];
  v12 = v14;

  if (v11)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager setBackupEnabled:bOOLValue forDomainName:v8 account:v11];
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to set domain enabled/disabled due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [enabledCopy sendReply];
}

- (void)_setAllowiTunesBackup:(id)backup
{
  backupCopy = backup;
  arguments = [backupCopy arguments];
  v5 = [arguments objectAtIndexedSubscript:0];
  v6 = [v5 intValue] != 0;

  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager setAllowiTunesBackup:v6];

  [backupCopy sendReply];
}

- (void)_getAllowiTunesBackup:(id)backup
{
  backupCopy = backup;
  serviceManager = [(MBXPCServer *)self serviceManager];
  allowiTunesBackup = [serviceManager allowiTunesBackup];

  v6 = [NSNumber numberWithBool:allowiTunesBackup];
  [backupCopy setReply:v6];

  [backupCopy sendReply];
}

- (void)_getBuddyData:(id)data
{
  dataCopy = data;
  arguments = [dataCopy arguments];
  connection = [dataCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [arguments objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v20 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v20];
  v13 = v20;

  if (!v12)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to fetch Buddy data due to nil account: %{public}@", buf, 0xCu);
      v18 = v13;
      _MBLog();
    }

    v16 = v13;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v19 = v13;
  v15 = [serviceManager getBuddyDataStashForBackupUDID:v7 snapshotID:unsignedIntegerValue account:v12 connection:connection error:&v19];
  v16 = v19;

  if (!v15)
  {
    v13 = v16;
LABEL_8:
    v15 = [MBError sanitizedError:v13, v18];
    [dataCopy setReplyError:v15];
    goto LABEL_9;
  }

  [dataCopy setReply:v15];
LABEL_9:

  [dataCopy sendReply];
}

- (void)_getAppleIDsMap:(id)map
{
  mapCopy = map;
  arguments = [mapCopy arguments];
  connection = [mapCopy connection];
  v7 = [arguments objectAtIndexedSubscript:0];
  v8 = [arguments objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v25 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v25];
  v13 = v25;

  if (!v12)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch the apple IDs map due to nil account: %{public}@", buf, 0xCu);
      v22 = v13;
      _MBLog();
    }

    v16 = 0;
    v17 = v13;
    goto LABEL_9;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v23 = v13;
  v24 = 0;
  v15 = [serviceManager getAppleIDsMapForBackupUDID:v7 account:v12 snapshotID:unsignedIntegerValue activeAppleID:&v24 connection:connection error:&v23];
  v16 = v24;
  v17 = v23;

  if (!v15)
  {
    v13 = v17;
LABEL_9:
    v15 = [MBError sanitizedError:v13, v22];
    [mapCopy setReplyError:v15];
    goto LABEL_12;
  }

  v18 = [NSMutableArray arrayWithObject:v15];
  v19 = v18;
  if (v16)
  {
    [v18 addObject:v16];
  }

  else
  {
    v21 = +[NSNull null];
    [v19 addObject:v21];
  }

  [mapCopy setReply:v19];

LABEL_12:
  [mapCopy sendReply];
}

- (void)_deleteAccount:(id)account
{
  accountCopy = account;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v15 = v8;
    v10 = [serviceManager deleteAccountWithServiceAccount:v7 error:&v15];
    v11 = v15;

    v8 = v11;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to delete account due to nil account: %{public}@", buf, 0xCu);
      v14 = v8;
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [accountCopy setReply:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [MBError sanitizedError:v8];
    [accountCopy setReplyError:v13];
  }

  [accountCopy sendReply];
}

- (void)_accountChanged:(id)changed
{
  changedCopy = changed;
  arguments = [changedCopy arguments];
  firstObject = [arguments firstObject];

  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager accountChanged:firstObject];

  scheduler = [(MBXPCServer *)self scheduler];
  [scheduler accountChanged];

  [changedCopy sendReply];
}

- (void)_passcodeChanged:(id)changed
{
  changedCopy = changed;
  scheduler = [(MBXPCServer *)self scheduler];
  [scheduler passcodeChanged];

  [changedCopy sendReply];
}

- (void)_deviceIsLocking:(id)locking
{
  lockingCopy = locking;
  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager deviceIsLocking];

  [lockingCopy sendReply];
}

- (void)_deviceIsUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager deviceIsUnlocked];

  [unlockedCopy sendReply];
}

- (void)_archiveLogs:(id)logs
{
  logsCopy = logs;
  arguments = [logsCopy arguments];
  connection = [logsCopy connection];
  xpcConnection = [connection xpcConnection];
  *__argv = 0u;
  v26 = 0u;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v7 = SecTaskCreateWithAuditToken(0, &token);
  if (v7)
  {
    v8 = v7;
    error = 0;
    v9 = SecTaskCopySigningIdentifier(v7, &error);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFStringGetTypeID())
      {
LABEL_14:
        CFRelease(v8);
        goto LABEL_15;
      }

      v12 = v10;
    }

    else
    {
      if (!error)
      {
LABEL_13:
        v10 = 0;
        goto LABEL_14;
      }

      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to get identifier for client task. Error: %@", &token, 0xCu);
        v23 = error;
        _MBLog();
      }

      v12 = error;
    }

    CFRelease(v12);
    goto LABEL_13;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(token.val[0]) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to create security task from audit token.", &token, 2u);
    _MBLog();
  }

  v10 = 0;
LABEL_15:

  v15 = [(__CFError *)v10 isEqualToString:@"com.apple.MobileBackup.framework.RadarExtension"];
  v16 = [(__CFError *)v10 isEqualToString:@"com.apple.MobileBackup.framework.DiagnosticExtension"];
  if (v15 & 1) != 0 || (v16)
  {
    if (MGGetBoolAnswer())
    {
      if ([arguments count] == 1 && (objc_msgSend(arguments, "objectAtIndexedSubscript:", 0), v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) != 0))
      {
        v20 = [arguments objectAtIndexedSubscript:0];
        v21 = strdup([v20 fileSystemRepresentation]);

        token.val[0] = 0;
        __argv[0] = "backupctl";
        __argv[1] = "diagnose";
        *&v26 = "--skipsysdiag";
        *(&v26 + 1) = "-f";
        v27 = v21;
        v28 = 0;
        LODWORD(v20) = posix_spawn(&token, "/usr/local/bin/backupctl", 0, 0, __argv, 0);
        free(v21);
        if (!v20)
        {
          LODWORD(error) = 0;
          waitpid(token.val[0], &error, 0);
          v22 = [NSNumber numberWithInt:error];
          [logsCopy setReply:v22];

          goto LABEL_26;
        }

        v17 = &off_1003E0E88;
      }

      else
      {
        v17 = &off_1003E0E70;
      }
    }

    else
    {
      v17 = &off_1003E0E58;
    }
  }

  else
  {
    v17 = &off_1003E0E40;
  }

  [logsCopy setReply:{v17, v23}];
LABEL_26:
  [logsCopy sendReply];
}

- (void)_rebootDevice:(id)device
{
  arguments = [device arguments];
  lastObject = [arguments lastObject];
  bOOLValue = [lastObject BOOLValue];

  v6 = +[MBDaemon sharedDaemon];
  [v6 reboot:bOOLValue];

  abort();
}

- (void)_repair:(id)_repair
{
  _repairCopy = _repair;
  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager repair];

  [_repairCopy sendReply];
}

- (void)_startScan:(id)scan
{
  scanCopy = scan;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v15 = v8;
    v10 = [serviceManager startScanWithAccount:v7 error:&v15];
    v11 = v15;

    v8 = v11;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to start scan due to nil account: %{public}@", buf, 0xCu);
      v14 = v8;
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [scanCopy setReply:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [MBError sanitizedError:v8];
    [scanCopy setReplyError:v13];
  }

  [scanCopy sendReply];
}

- (void)_startScanForBundleIDs:(id)ds
{
  dsCopy = ds;
  arguments = [dsCopy arguments];
  firstObject = [arguments firstObject];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v22 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v22];
  v10 = v22;

  if (v9)
  {
    goto LABEL_2;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to find a service account: %{public}@", buf, 0xCu);
    v19 = v10;
    _MBLog();
  }

  if ([MBError isError:v10 withCode:210])
  {
    v21 = v10;
    v15 = [MBPersona personalPersonaWithError:&v21];
    v16 = v21;

    if (v15)
    {
      v9 = [[MBServiceAccount alloc] initWithPersona:v15 accountIdentifier:@"n/a" dsid:@"n/a" altDSID:0 serviceURL:0 chunkStoreURL:0 options:131];

      if (v9)
      {
        v10 = v16;
LABEL_2:
        serviceManager = [(MBXPCServer *)self serviceManager];
        v20 = v10;
        v12 = [serviceManager startScanForBundleIDs:firstObject account:v9 error:&v20];
        v13 = v20;

        v10 = v13;
        goto LABEL_13;
      }
    }

    v10 = v16;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, &v9->super, OS_LOG_TYPE_ERROR, "Failed to start scan for bundle IDs due to nil account: %{public}@", buf, 0xCu);
    v19 = v10;
    _MBLog();
  }

  v12 = 0;
LABEL_13:

  v17 = [NSNumber numberWithBool:v12];
  [dsCopy setReply:v17];

  if ((v12 & 1) == 0)
  {
    v18 = [MBError sanitizedError:v10];
    [dsCopy setReplyError:v18];
  }

  [dsCopy sendReply];
}

- (void)_sendMessage:(id)message connections:(id)connections
{
  messageCopy = message;
  connectionsCopy = connections;
  v7 = +[UMUserPersona currentPersona];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = connectionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (![v7 isEnterprisePersona] || (objc_msgSend(v7, "userPersonaUniqueString"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "personaIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v16))
        {
          [v13 sendMessage:messageCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)_sendBarrierMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_connectionsQueue);
  selfCopy = self;
  v6 = self->_connections;
  v7 = dispatch_group_create();
  name = [messageCopy name];
  [name UTF8String];
  v24 = os_transaction_create();

  v9 = objc_autoreleasePoolPush();
  v10 = +[MBDaemon sharedDaemon];
  v25 = a2;
  [v10 holdWorkAssertion:a2];

  objc_autoreleasePoolPop(v9);
  v11 = +[UMUserPersona currentPersona];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
  v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        if ([v11 isEnterprisePersona])
        {
          userPersonaUniqueString = [v11 userPersonaUniqueString];
          personaIdentifier = [v16 personaIdentifier];
          v19 = [userPersonaUniqueString isEqualToString:personaIdentifier];

          if (!v19)
          {
            continue;
          }
        }

        dispatch_group_enter(v7);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10015EC70;
        v38[3] = &unk_1003BC0B0;
        v39 = v7;
        [v16 sendMessage:messageCopy barrierBlock:v38];
      }

      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v13);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10015EC78;
  v36 = sub_10015ECA4;
  v37 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015ECAC;
  block[3] = &unk_1003BFDC8;
  v30 = &v32;
  v31 = v25;
  v29 = v24;
  v20 = v24;
  v21 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v22 = v33[5];
  v33[5] = v21;

  dispatch_group_notify(v7, selfCopy->_connectionsQueue, v33[5]);
  v23 = dispatch_walltime(0, 3600000000000);
  dispatch_after(v23, selfCopy->_connectionsQueue, v33[5]);

  _Block_object_dispose(&v32, 8);
}

- (void)_countCameraRollQuota:(id)quota
{
  quotaCopy = quota;
  serviceManager = [(MBXPCServer *)self serviceManager];
  [serviceManager countCameraRollQuota];

  [quotaCopy sendReply];
}

- (void)_discountCameraRollQuota:(id)quota
{
  quotaCopy = quota;
  connection = [quotaCopy connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v17 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v17];
  v9 = v17;

  if (v8)
  {
    serviceManager = [(MBXPCServer *)self serviceManager];
    v16 = v9;
    v11 = [serviceManager discountCameraRollQuotaWithAccount:v8 connection:connection error:&v16];
    v12 = v16;

    v9 = v12;
  }

  else
  {
    serviceManager = MBGetDefaultLog();
    if (os_log_type_enabled(serviceManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, serviceManager, OS_LOG_TYPE_ERROR, "Failed to discount camera roll quota due to nil account: %{public}@", buf, 0xCu);
      v15 = v9;
      _MBLog();
    }

    v11 = 0;
  }

  v13 = [NSNumber numberWithBool:v11];
  [quotaCopy setReply:v13];

  if ((v11 & 1) == 0)
  {
    v14 = [MBError sanitizedError:v9];
    [quotaCopy setError:v14];
  }

  [quotaCopy sendReply];
}

- (void)_reservedBackupSizeList:(id)list
{
  listCopy = list;
  connection = [listCopy connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v16 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v16];
  v9 = v16;

  if (!v8)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch the reserved backup size info due to nil account: %{public}@", buf, 0xCu);
      v14 = v9;
      _MBLog();
    }

    v12 = v9;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v15 = v9;
  v11 = [serviceManager reservedBackupSizeListWithAccount:v8 connection:connection error:&v15];
  v12 = v15;

  if (!v11)
  {
    v9 = v12;
LABEL_8:
    v11 = [MBError sanitizedError:v9, v14];
    [listCopy setReplyError:v11];
    goto LABEL_9;
  }

  [listCopy setReply:v11];
LABEL_9:

  [listCopy sendReply];
}

- (void)_pendingSnapshotForCurrentDevice:(id)device
{
  deviceCopy = device;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v15 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v15];
  v8 = v15;

  if (!v7)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to get the pending snapshot due to nil account: %{public}@", buf, 0xCu);
      v13 = v8;
      _MBLog();
    }

    v11 = v8;
    goto LABEL_8;
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v14 = v8;
  v10 = [serviceManager pendingSnapshotForCurrentDeviceAndAccount:v7 error:&v14];
  v11 = v14;

  if (!v10)
  {
    v8 = v11;
LABEL_8:
    v10 = [MBError sanitizedError:v8, v13];
    [deviceCopy setReplyError:v10];
    goto LABEL_9;
  }

  [deviceCopy setReply:v10];
LABEL_9:

  [deviceCopy sendReply];
}

- (void)manager:(id)manager didSetBackupEnabled:(BOOL)enabled
{
  connectionsQueue = self->_connectionsQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015F3B4;
  v5[3] = &unk_1003BCAC0;
  enabledCopy = enabled;
  v5[4] = self;
  dispatch_async(connectionsQueue, v5);
}

- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining bytesRemaining:(int64_t)bytesRemaining state:(id)state context:(id)context
{
  stateCopy = state;
  contextCopy = context;
  connectionsQueue = self->_connectionsQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10015F570;
  v18[3] = &unk_1003BFDF0;
  v19 = contextCopy;
  selfCopy = self;
  progressCopy = progress;
  remainingCopy = remaining;
  bytesRemainingCopy = bytesRemaining;
  v21 = stateCopy;
  v16 = stateCopy;
  v17 = contextCopy;
  dispatch_async(connectionsQueue, v18);
}

- (void)manager:(id)manager didUpdateBackgroundRestoreWithContext:(id)context
{
  contextCopy = context;
  connectionsQueue = self->_connectionsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015F780;
  v8[3] = &unk_1003BC060;
  v9 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  dispatch_async(connectionsQueue, v8);
}

- (void)managerDidFinishVerification:(id)verification
{
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015F8CC;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)manager didScanBundleWithID:(id)d bytesUsed:(unint64_t)used
{
  dCopy = d;
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015F9E0;
  block[3] = &unk_1003BDB10;
  selfCopy = self;
  usedCopy = used;
  v11 = dCopy;
  v9 = dCopy;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)manager didScanDomainWithName:(id)name forBundleID:(id)d bytesUsed:(unint64_t)used
{
  nameCopy = name;
  dCopy = d;
  connectionsQueue = self->_connectionsQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10015FB88;
  v14[3] = &unk_1003BD8C8;
  v15 = nameCopy;
  v16 = dCopy;
  selfCopy = self;
  usedCopy = used;
  v12 = dCopy;
  v13 = nameCopy;
  dispatch_async(connectionsQueue, v14);
}

- (void)manager:(id)manager didScanFiles:(id)files forDomainWithName:(id)name bundleID:(id)d
{
  filesCopy = files;
  nameCopy = name;
  dCopy = d;
  connectionsQueue = self->_connectionsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015FD4C;
  v16[3] = &unk_1003BC5B8;
  v17 = filesCopy;
  v18 = nameCopy;
  v19 = dCopy;
  selfCopy = self;
  v13 = dCopy;
  v14 = nameCopy;
  v15 = filesCopy;
  dispatch_async(connectionsQueue, v16);
}

- (void)manager:(id)manager didFinishRestoreWithContext:(id)context
{
  contextCopy = context;
  connectionsQueue = self->_connectionsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015FEAC;
  v8[3] = &unk_1003BC060;
  v9 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  dispatch_async(connectionsQueue, v8);
}

- (void)manager:(id)manager didFinishRestoreForPath:(id)path withContext:(id)context
{
  pathCopy = path;
  contextCopy = context;
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016004C;
  block[3] = &unk_1003BC2E0;
  v13 = contextCopy;
  selfCopy = self;
  v15 = pathCopy;
  v10 = pathCopy;
  v11 = contextCopy;
  dispatch_async(connectionsQueue, block);
}

- (void)managerDidCancelRestore:(id)restore
{
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001601C8;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(connectionsQueue, block);
}

- (void)managerDidFinishBackup:(id)backup
{
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001602A8;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)manager didFailBackupWithError:(id)error
{
  errorCopy = error;
  if (+[MBError isCancelledError:](MBError, "isCancelledError:", errorCopy) && [errorCopy code] != 202)
  {
    v15[0] = errorCopy;
    v14[0] = NSUnderlyingErrorKey;
    v14[1] = NSLocalizedDescriptionKey;
    localizedDescription = [errorCopy localizedDescription];
    v15[1] = localizedDescription;
    v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:v7];

    errorCopy = v8;
  }

  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016052C;
  block[3] = &unk_1003BC060;
  v12 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  dispatch_async(connectionsQueue, block);
}

- (void)managerDidFinishScan:(id)scan bytesUsed:(unint64_t)used
{
  connectionsQueue = self->_connectionsQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001606D8;
  v5[3] = &unk_1003BDAE8;
  v5[4] = self;
  v5[5] = used;
  dispatch_async(connectionsQueue, v5);
}

- (void)manager:(id)manager didFailScanWithError:(id)error
{
  errorCopy = error;
  if (+[MBError isCancelledError:](MBError, "isCancelledError:", errorCopy) && [errorCopy code] != 202)
  {
    v15[0] = errorCopy;
    v14[0] = NSUnderlyingErrorKey;
    v14[1] = NSLocalizedDescriptionKey;
    localizedDescription = [errorCopy localizedDescription];
    v15[1] = localizedDescription;
    v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:v7];

    errorCopy = v8;
  }

  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001609A0;
  block[3] = &unk_1003BC060;
  v12 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)manager didFailVerificationWithError:(id)error
{
  errorCopy = error;
  connectionsQueue = self->_connectionsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100160B70;
  v8[3] = &unk_1003BC060;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(connectionsQueue, v8);
}

- (void)manager:(id)manager didFailRestoreWithContext:(id)context error:(id)error
{
  contextCopy = context;
  errorCopy = error;
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100160CC8;
  block[3] = &unk_1003BC2E0;
  v13 = contextCopy;
  selfCopy = self;
  v15 = errorCopy;
  v10 = errorCopy;
  v11 = contextCopy;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)manager didFailRestoreForPath:(id)path withContext:(id)context error:(id)error
{
  pathCopy = path;
  contextCopy = context;
  errorCopy = error;
  connectionsQueue = self->_connectionsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100160EB4;
  v16[3] = &unk_1003BC5B8;
  v17 = contextCopy;
  selfCopy = self;
  v19 = pathCopy;
  v20 = errorCopy;
  v13 = errorCopy;
  v14 = pathCopy;
  v15 = contextCopy;
  dispatch_async(connectionsQueue, v16);
}

- (void)connection:(id)connection didReceiveMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v9 = +[MBDaemon sharedDaemon];
  [v9 holdWorkAssertion:a2];

  v10 = dispatch_get_global_queue(17, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100161100;
  v14[3] = &unk_1003BD8C8;
  v15 = connectionCopy;
  v16 = messageCopy;
  selfCopy = self;
  v18 = a2;
  v11 = messageCopy;
  v12 = connectionCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v14);
  dispatch_async(v10, v13);
}

- (void)connectionWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001613A8;
  block[3] = &unk_1003BC2E0;
  block[4] = self;
  v7 = invalidatedCopy;
  v15 = v7;
  v16 = v5;
  v8 = v5;
  dispatch_async(v6, block);

  connectionsQueue = self->_connectionsQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100161418;
  v11[3] = &unk_1003BC060;
  v12 = v7;
  selfCopy = self;
  v10 = v7;
  dispatch_group_notify(v8, connectionsQueue, v11);
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = MBXPCServer;
  v3 = [(MBXPCServer *)&v6 description];
  v4 = [NSString stringWithFormat:@"{ %@ connections = %@ }", v3, self->_connections];

  return v4;
}

- (void)connection:(id)connection didFinishDeviceTransferWithError:(id)error
{
  connectionCopy = connection;
  errorCopy = error;
  if (!connectionCopy)
  {
    __assert_rtn("[MBXPCServer connection:didFinishDeviceTransferWithError:]", "MBXPCServer.m", 2454, "connection");
  }

  v7 = errorCopy;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = @"kMBMessageDidFinishDeviceTransfer";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending %{public}@", buf, 0xCu);
    _MBLog();
  }

  v9 = [MBMessage messageWithName:@"kMBMessageDidFinishDeviceTransfer" arguments:0];
  if (v7)
  {
    v10 = [MBError sanitizedError:v7];
    [(__CFString *)v9 setError:v10];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001617B4;
  v16[3] = &unk_1003BC0B0;
  v11 = dispatch_semaphore_create(0);
  v17 = v11;
  [connectionCopy sendMessage:v9 barrierBlock:v16];
  v12 = dispatch_time(0, 600000000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  v14 = MBGetDefaultLog();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Timed out sending XPC message: %@", buf, 0xCu);
LABEL_11:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = @"kMBMessageDidFinishDeviceTransfer";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sent %{public}@", buf, 0xCu);
    goto LABEL_11;
  }
}

- (void)connection:(id)connection didFinishDeviceTransferKeychainTransfer:(id)transfer
{
  connectionCopy = connection;
  transferCopy = transfer;
  if (!connectionCopy)
  {
    __assert_rtn("[MBXPCServer connection:didFinishDeviceTransferKeychainTransfer:]", "MBXPCServer.m", 2473, "connection");
  }

  v6 = [MBMessage messageWithName:@"kMBMessageDidFinishDeviceTransferKeychainTransfer" arguments:0];
  [connectionCopy sendMessage:v6];
}

- (void)connection:(id)connection didUpdateDeviceTransferProgress:(id)progress
{
  connectionCopy = connection;
  progressCopy = progress;
  if (!connectionCopy)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferProgress:]", "MBXPCServer.m", 2480, "connection");
  }

  v7 = progressCopy;
  if (!progressCopy)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferProgress:]", "MBXPCServer.m", 2481, "progressInfo");
  }

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [v7 progress];
    *buf = 134217984;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "p:%.2f", buf, 0xCu);
    [v7 progress];
    _MBLog();
  }

  v12 = v7;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = [MBMessage messageWithName:@"kMBMessageDidUpdateDeviceTransferProgress" arguments:v10];

  [connectionCopy sendMessage:v11];
}

- (void)connection:(id)connection didUpdateDeviceTransferConnectionInfo:(id)info
{
  connectionCopy = connection;
  infoCopy = info;
  if (!connectionCopy)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferConnectionInfo:]", "MBXPCServer.m", 2489, "connection");
  }

  v7 = infoCopy;
  if (!infoCopy)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferConnectionInfo:]", "MBXPCServer.m", 2490, "info");
  }

  if ([infoCopy connectionState] != 1 && objc_msgSend(v7, "connectionState") != 2)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferConnectionInfo:]", "MBXPCServer.m", 2491, "info.connectionState == MBDeviceTransferConnectionStateConnected || info.connectionState == MBDeviceTransferConnectionStateDisconnected");
  }

  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = [MBMessage messageWithName:@"kMBMessageDidUpdateDeviceTransferConnectionInfo" arguments:v8];

  [connectionCopy sendMessage:v9];
}

- (void)_startDeviceTransfer:(id)transfer
{
  transferCopy = transfer;
  connection = [transferCopy connection];
  arguments = [transferCopy arguments];
  if (![arguments count])
  {
    __assert_rtn("[MBXPCServer _startDeviceTransfer:]", "MBXPCServer.m", 2502, "arguments.count");
  }

  v7 = [arguments objectAtIndexedSubscript:0];
  integerValue = [v7 integerValue];

  v9 = 0;
  if ([arguments count] >= 2)
  {
    v9 = [arguments objectAtIndexedSubscript:1];
  }

  serviceManager = [(MBXPCServer *)self serviceManager];
  v15 = 0;
  v11 = [serviceManager startDeviceTransferWithTaskType:integerValue sessionInfo:v9 connection:connection error:&v15];
  v12 = v15;

  if ((v11 & 1) == 0 && !v12)
  {
    __assert_rtn("[MBXPCServer _startDeviceTransfer:]", "MBXPCServer.m", 2508, "result || error");
  }

  v13 = [NSNumber numberWithBool:v11];
  [transferCopy setReply:v13];

  if ((v11 & 1) == 0)
  {
    v14 = [MBError sanitizedError:v12];
    [transferCopy setReplyError:v14];
  }

  [transferCopy sendReply];
}

- (void)_cancelDeviceTransfer:(id)transfer
{
  transferCopy = transfer;
  connection = [transferCopy connection];
  arguments = [transferCopy arguments];
  if (![arguments count])
  {
    __assert_rtn("[MBXPCServer _cancelDeviceTransfer:]", "MBXPCServer.m", 2518, "arguments.count");
  }

  v7 = [arguments objectAtIndexedSubscript:0];
  integerValue = [v7 integerValue];

  serviceManager = [(MBXPCServer *)self serviceManager];
  v14 = 0;
  v10 = [serviceManager cancelDeviceTransferWithTaskType:integerValue connection:connection error:&v14];
  v11 = v14;

  v12 = [NSNumber numberWithBool:v10];
  [transferCopy setReply:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [MBError sanitizedError:v11];
    [transferCopy setReplyError:v13];
  }

  [transferCopy sendReply];
}

- (void)_startPreflight:(id)preflight
{
  preflightCopy = preflight;
  connection = [preflightCopy connection];
  serviceManager = [(MBXPCServer *)self serviceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100161EFC;
  v8[3] = &unk_1003BFE18;
  v9 = preflightCopy;
  v7 = preflightCopy;
  [serviceManager startPreflightWithConnection:connection completion:v8];
}

- (void)_startKeychainDataTransfer:(id)transfer
{
  transferCopy = transfer;
  connection = [transferCopy connection];
  serviceManager = [(MBXPCServer *)self serviceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100162090;
  v8[3] = &unk_1003BFE40;
  v9 = transferCopy;
  v7 = transferCopy;
  [serviceManager startKeychainDataTransferWithConnection:connection completion:v8];
}

- (void)_startKeychainDataImport:(id)import
{
  importCopy = import;
  connection = [importCopy connection];
  arguments = [importCopy arguments];
  if (![arguments count])
  {
    __assert_rtn("[MBXPCServer _startKeychainDataImport:]", "MBXPCServer.m", 2554, "arguments.count");
  }

  firstObject = [arguments firstObject];
  serviceManager = [(MBXPCServer *)self serviceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100162280;
  v10[3] = &unk_1003BC010;
  v11 = importCopy;
  v9 = importCopy;
  [serviceManager startKeychainDataImportWithKeychainInfo:firstObject connection:connection completion:v10];
}

- (void)_startDataTransfer:(id)transfer
{
  transferCopy = transfer;
  connection = [transferCopy connection];
  arguments = [transferCopy arguments];
  if (![arguments count])
  {
    __assert_rtn("[MBXPCServer _startDataTransfer:]", "MBXPCServer.m", 2568, "arguments.count");
  }

  firstObject = [arguments firstObject];
  serviceManager = [(MBXPCServer *)self serviceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016244C;
  v10[3] = &unk_1003BC010;
  v11 = transferCopy;
  v9 = transferCopy;
  [serviceManager startDataTransferWithPreflightInfo:firstObject connection:connection completion:v10];
}

- (void)_fetchPersonalPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  userPersonaUniqueString = [v4 userPersonaUniqueString];

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = userPersonaUniqueString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "personalPersonaIdentifier: %{public}@", buf, 0xCu);
    _MBLog();
  }

  [identifierCopy setReply:userPersonaUniqueString];
  [identifierCopy sendReply];
}

- (void)_postFollowUpForDrySpellWithDuration:(id)duration
{
  durationCopy = duration;
  arguments = [durationCopy arguments];
  if ([arguments count] <= 1)
  {
    __assert_rtn("[MBXPCServer _postFollowUpForDrySpellWithDuration:]", "MBXPCServer.m", 2592, "1 < arguments.count");
  }

  v5 = [arguments objectAtIndexedSubscript:0];
  [v5 doubleValue];
  v7 = v6;

  v8 = [arguments objectAtIndexedSubscript:1];
  bOOLValue = [v8 BOOLValue];

  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v19 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v19];
  v13 = v19;

  if (v12)
  {
    v14 = +[MBFollowUpManager sharedManager];
    v15 = [v14 postFollowUpForDrySpellForAccount:v12 duration:bOOLValue firstBackup:v7];

    v16 = [NSNumber numberWithBool:1];
    [durationCopy setReply:v16];
  }

  else
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to post the follow up due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v18 = [NSNumber numberWithBool:0];
    [durationCopy setReply:v18];

    v16 = [MBError sanitizedError:v13];
    [durationCopy setReplyError:v16];
  }

  [durationCopy sendReply];
}

- (void)_postFollowUpForRestoreTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v13 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v13];
  v7 = v13;

  if (v6)
  {
    v8 = +[MBFollowUpManager sharedManager];
    v9 = [v8 postFollowUpForRestoreTimeoutForAccount:v6];

    v10 = [NSNumber numberWithBool:1];
    [timeoutCopy setReply:v10];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to post the follow up due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = [NSNumber numberWithBool:0];
    [timeoutCopy setReply:v12];

    v10 = [MBError sanitizedError:v7];
    [timeoutCopy setReplyError:v10];
  }

  [timeoutCopy sendReply];
}

- (void)_postFollowUpForBackgroundRestoreProgress:(id)progress
{
  progressCopy = progress;
  arguments = [progressCopy arguments];
  if (![arguments count])
  {
    __assert_rtn("[MBXPCServer _postFollowUpForBackgroundRestoreProgress:]", "MBXPCServer.m", 2629, "arguments.count > 0");
  }

  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    firstObject = [arguments firstObject];
    v10 = +[MBFollowUpManager sharedManager];
    v11 = [v10 postFollowUpForBackgroundRestoreProgress:firstObject account:v7];
  }

  else
  {
    firstObject = MBGetDefaultLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_ERROR, "Failed to post the follow up due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v12 = [NSNumber numberWithBool:v7 != 0];
  [progressCopy setReply:v12];

  [progressCopy sendReply];
}

- (void)_postFollowUpForRestoreFinished:(id)finished
{
  finishedCopy = finished;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v14 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v14];
  v7 = v14;

  if (v6)
  {
    arguments = [finishedCopy arguments];
    firstObject = [arguments firstObject];
    bOOLValue = [firstObject BOOLValue];

    v11 = +[MBFollowUpManager sharedManager];
    v12 = [v11 postFollowUpForRestoreFinishedForAccount:v6 skipiCloudQuotaOffer:bOOLValue];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to post the follow up due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v13 = [NSNumber numberWithBool:v6 != 0];
  [finishedCopy setReply:v13];

  [finishedCopy sendReply];
}

- (void)_postFollowUpForRestoreFailed:(id)failed
{
  failedCopy = failed;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    arguments = [failedCopy arguments];
    firstObject = [arguments firstObject];

    serviceManager = [(MBXPCServer *)self serviceManager];
    [serviceManager postFollowUpForRestoreFailedForAccount:v7 failedDomainNames:firstObject];
  }

  else
  {
    firstObject = MBGetDefaultLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_ERROR, "Failed to post the follow up due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v12 = [NSNumber numberWithBool:v7 != 0];
  [failedCopy setReply:v12];

  [failedCopy sendReply];
}

- (void)_clearAllPendingFollowUps:(id)ups
{
  upsCopy = ups;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v12 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v12];
  v7 = v12;

  if (v6)
  {
    v8 = +[MBFollowUpManager sharedManager];
    [v8 clearAllPendingFollowUps];

    v9 = [NSNumber numberWithBool:1];
    [upsCopy setReply:v9];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to clear the follow ups due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v11 = [NSNumber numberWithBool:0];
    [upsCopy setReply:v11];

    v9 = [MBError sanitizedError:v7];
    [upsCopy setReplyError:v9];
  }

  [upsCopy sendReply];
}

- (void)_respondSynchronouslyTo:(id)to with:(id)with
{
  v10 = 0;
  v5 = *(with + 2);
  toCopy = to;
  v7 = v5(with, &v10);
  v8 = v10;
  [toCopy setReply:v7];

  v9 = [MBError sanitizedError:v8];

  [toCopy setReplyError:v9];
  [toCopy sendReply];
}

- (void)_respondSynchronouslyTo:(id)to description:(id)description withAccount:(id)account
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001632AC;
  v10[3] = &unk_1003BFE68;
  descriptionCopy = description;
  accountCopy = account;
  v8 = accountCopy;
  v9 = descriptionCopy;
  [(MBXPCServer *)self _respondSynchronouslyTo:to with:v10];
}

- (BOOL)_checkForBackupCtlPrivileged:(id)privileged description:(id)description error:(id *)error
{
  privilegedCopy = privileged;
  descriptionCopy = description;
  if (!error)
  {
    __assert_rtn("[MBXPCServer _checkForBackupCtlPrivileged:description:error:]", "MBXPCServer.m", 2718, "error");
  }

  v9 = descriptionCopy;
  connection = [privilegedCopy connection];
  xpcConnection = [connection xpcConnection];
  v12 = sub_100152914(xpcConnection, @"com.apple.private.backupctl-privileged-command.internal", error);

  if (v12)
  {
    if (MBIsInternalInstall())
    {
      v13 = 1;
    }

    else
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Cannot %@ without AppleInternal", buf, 0xCu);
        _MBLog();
      }

      [MBError errorWithCode:305 format:@"%@ is AppleInternal only", v9];
      *error = v13 = 0;
    }
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Attempting %@ without backupctl entitlement", buf, 0xCu);
      _MBLog();
    }

    v13 = 0;
  }

  return v13;
}

@end