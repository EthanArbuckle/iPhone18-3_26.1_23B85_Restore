@interface MBXPCServer
+ (id)sharedInstance;
- (BOOL)_checkForBackupCtlPrivileged:(id)a3 description:(id)a4 error:(id *)a5;
- (MBBackupScheduler)scheduler;
- (MBXPCServer)initWithServiceName:(id)a3;
- (id)description;
- (id)serviceManager;
- (void)_accountChanged:(id)a3;
- (void)_acquireLock:(id)a3;
- (void)_archiveLogs:(id)a3;
- (void)_backgroundRestoreInfo:(id)a3;
- (void)_backupList:(id)a3;
- (void)_backupState:(id)a3;
- (void)_beginPrebuddyBackup:(id)a3;
- (void)_boostBackgroundRestore:(id)a3;
- (void)_boostManualBackup:(id)a3;
- (void)_cancel:(id)a3;
- (void)_cancelAppRestore:(id)a3;
- (void)_cancelDeviceTransfer:(id)a3;
- (void)_cancelPrebuddy:(id)a3;
- (void)_cancelRestore:(id)a3;
- (void)_clearAllPendingFollowUps:(id)a3;
- (void)_clearRestoreSession:(id)a3;
- (void)_countCameraRollQuota:(id)a3;
- (void)_countRestoreFailures:(id)a3;
- (void)_dataExistsForApp:(id)a3;
- (void)_dateOfLastBackup:(id)a3;
- (void)_dateOfNextBackup:(id)a3;
- (void)_deleteAccount:(id)a3;
- (void)_deleteBackup:(id)a3;
- (void)_deviceIsLocking:(id)a3;
- (void)_deviceIsUnlocked:(id)a3;
- (void)_deviceLockInfos:(id)a3;
- (void)_disabledDomainInfos:(id)a3;
- (void)_discountCameraRollQuota:(id)a3;
- (void)_domainInfo:(id)a3;
- (void)_domainInfoList:(id)a3;
- (void)_exitMegaBackupMode:(id)a3;
- (void)_fetchBackgroundRestoreCellularAccess:(id)a3;
- (void)_fetchBackupCKRecordsIntoDB:(id)a3;
- (void)_fetchBundleIDs:(id)a3;
- (void)_fetchPersonalPersonaIdentifier:(id)a3;
- (void)_fetchRestorableSnapshots:(id)a3;
- (void)_fileExists:(id)a3;
- (void)_finishRestore:(id)a3;
- (void)_getAllowiTunesBackup:(id)a3;
- (void)_getAppleIDsMap:(id)a3;
- (void)_getBackupDeviceUUID:(id)a3;
- (void)_getBuddyData:(id)a3;
- (void)_handleRequest:(id)a3;
- (void)_inheritBackup:(id)a3;
- (void)_insufficientFreeSpaceToRestore:(id)a3;
- (void)_isBackupEnabled:(id)a3;
- (void)_isBackupOnCellularEnabled:(id)a3;
- (void)_isDomainEnabled:(id)a3;
- (void)_isInitialMegaBackupCompleted:(id)a3;
- (void)_isLocalBackupPasswordSet:(id)a3;
- (void)_isPrebuddyMode:(id)a3;
- (void)_journalForBackupUUID:(id)a3;
- (void)_journalLastModifiedForBackupUUID:(id)a3;
- (void)_listRestoreFailures:(id)a3;
- (void)_listSnapshotFiles:(id)a3;
- (void)_logPrebuddyFlowTelemetry:(id)a3;
- (void)_mergeSnapshots:(id)a3;
- (void)_nextBackupSize:(id)a3;
- (void)_nextBackupSizeInfo:(id)a3;
- (void)_passcodeChanged:(id)a3;
- (void)_pendingSnapshotForCurrentDevice:(id)a3;
- (void)_pinSnapshot:(id)a3;
- (void)_postFollowUpForBackgroundRestoreProgress:(id)a3;
- (void)_postFollowUpForDrySpellWithDuration:(id)a3;
- (void)_postFollowUpForRestoreFailed:(id)a3;
- (void)_postFollowUpForRestoreFinished:(id)a3;
- (void)_postFollowUpForRestoreTimeout:(id)a3;
- (void)_prebuddyBackupDeleted:(id)a3;
- (void)_prepareForBackgroundRestore:(id)a3;
- (void)_prioritizeRestoreFile:(id)a3;
- (void)_rebootDevice:(id)a3;
- (void)_releaseLock:(id)a3;
- (void)_removeDomain:(id)a3;
- (void)_repair:(id)a3;
- (void)_reportRestoreFailure:(id)a3;
- (void)_requestMegaBackupExpirationDate:(id)a3;
- (void)_reservedBackupSizeList:(id)a3;
- (void)_respondSynchronouslyTo:(id)a3 description:(id)a4 withAccount:(id)a5;
- (void)_respondSynchronouslyTo:(id)a3 with:(id)a4;
- (void)_restoreDomain:(id)a3;
- (void)_restoreFiles:(id)a3;
- (void)_restoreInfo:(id)a3;
- (void)_restorePreviousSettingsEnabledForMegaBackup:(id)a3;
- (void)_restoreState:(id)a3;
- (void)_restoreSupportsBatching:(id)a3;
- (void)_saveBackgroundRestoreCellularAccess:(id)a3;
- (void)_saveBackupDomainsEnabledForMegaBackup:(id)a3;
- (void)_saveBackupEnabledForMegaBackup:(id)a3;
- (void)_saveSyncSettingsEnabledForMegaBackup:(id)a3;
- (void)_scheduleActivities:(id)a3;
- (void)_sendBarrierMessage:(id)a3;
- (void)_sendMessage:(id)a3 connections:(id)a4;
- (void)_setAllowiTunesBackup:(id)a3;
- (void)_setBackupEnabled:(id)a3;
- (void)_setBackupOnCellularEnabled:(id)a3;
- (void)_setDomainEnabled:(id)a3;
- (void)_setEntryPointForMegaBackupTelemetry:(id)a3;
- (void)_setMegaBackupTurnOnAllAppsSyncTelemetry:(id)a3;
- (void)_setMegaBackupTurnOniCloudBackupTelemetry:(id)a3;
- (void)_setPrebuddyUIDeltaTelemetry:(id)a3;
- (void)_setRestoreQualityOfService:(id)a3;
- (void)_setupBackup:(id)a3;
- (void)_signalPrebuddy:(id)a3;
- (void)_startAppRestore:(id)a3;
- (void)_startBackup:(id)a3;
- (void)_startBookRestore:(id)a3;
- (void)_startDataTransfer:(id)a3;
- (void)_startDeviceTransfer:(id)a3;
- (void)_startFileRestore:(id)a3;
- (void)_startFilesRestore:(id)a3;
- (void)_startKeychainDataImport:(id)a3;
- (void)_startKeychainDataTransfer:(id)a3;
- (void)_startPreflight:(id)a3;
- (void)_startRestore:(id)a3;
- (void)_startScan:(id)a3;
- (void)_startScanForBundleIDs:(id)a3;
- (void)_syncBackupEnabled:(id)a3;
- (void)_synchronizeFileLists:(id)a3;
- (void)_unlocked;
- (void)_unpinSnapshot:(id)a3;
- (void)_unsetLocalBackupPassword:(id)a3;
- (void)_updateMegaBackupExpirationDate:(id)a3;
- (void)_updatePrebuddyFollowUp:(id)a3;
- (void)_wasBackupEnabledForMegaBackup:(id)a3;
- (void)connection:(id)a3 didFinishDeviceTransferKeychainTransfer:(id)a4;
- (void)connection:(id)a3 didFinishDeviceTransferWithError:(id)a4;
- (void)connection:(id)a3 didReceiveMessage:(id)a4;
- (void)connection:(id)a3 didUpdateDeviceTransferConnectionInfo:(id)a4;
- (void)connection:(id)a3 didUpdateDeviceTransferProgress:(id)a4;
- (void)connectionWasInvalidated:(id)a3;
- (void)dealloc;
- (void)manager:(id)a3 didFailBackupWithError:(id)a4;
- (void)manager:(id)a3 didFailRestoreForPath:(id)a4 withContext:(id)a5 error:(id)a6;
- (void)manager:(id)a3 didFailRestoreWithContext:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didFailScanWithError:(id)a4;
- (void)manager:(id)a3 didFailVerificationWithError:(id)a4;
- (void)manager:(id)a3 didFinishRestoreForPath:(id)a4 withContext:(id)a5;
- (void)manager:(id)a3 didFinishRestoreWithContext:(id)a4;
- (void)manager:(id)a3 didScanBundleWithID:(id)a4 bytesUsed:(unint64_t)a5;
- (void)manager:(id)a3 didScanDomainWithName:(id)a4 forBundleID:(id)a5 bytesUsed:(unint64_t)a6;
- (void)manager:(id)a3 didScanFiles:(id)a4 forDomainWithName:(id)a5 bundleID:(id)a6;
- (void)manager:(id)a3 didSetBackupEnabled:(BOOL)a4;
- (void)manager:(id)a3 didUpdateBackgroundRestoreWithContext:(id)a4;
- (void)manager:(id)a3 didUpdateProgress:(float)a4 estimatedTimeRemaining:(unint64_t)a5 bytesRemaining:(int64_t)a6 state:(id)a7 context:(id)a8;
- (void)managerDidCancelRestore:(id)a3;
- (void)managerDidFinishBackup:(id)a3;
- (void)managerDidFinishScan:(id)a3 bytesUsed:(unint64_t)a4;
- (void)managerDidFinishVerification:(id)a3;
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

- (MBXPCServer)initWithServiceName:(id)a3
{
  v4 = a3;
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
    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);

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

    mach_service = xpc_connection_create_mach_service([v4 UTF8String], v16, 1uLL);
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

- (void)_handleRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = atomic_load(&self->_unlocked);
  if (v6)
  {
    v7 = [v4 personaIdentifier];
    if (v7)
    {
      v8 = +[UMUserManager sharedManager];
      v9 = [v8 currentPersona];

      if (!v9)
      {
        __assert_rtn("[MBXPCServer _handleRequest:]", "MBXPCServer.m", 376, "currentPersona");
      }

      v10 = [v9 userPersonaUniqueString];
      if ([v7 isEqual:v10])
      {
        v11 = 0;
        v12 = 0;
LABEL_6:

        goto LABEL_12;
      }

      v34 = 0;
      v12 = [v9 copyCurrentPersonaContextWithError:&v34];
      v23 = v34;
      if (v12)
      {
        v24 = [v9 createPersonaContextForBackgroundProcessingWithPersonaUniqueString:v7];

        if (!v24)
        {
          v11 = v10;
          v28 = [v5 connection];
          [v28 setPersonaIdentifier:v7];

          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v7;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Adopted persona %{public}@", buf, 0xCu);
            v31 = v7;
            _MBLog();
          }

          goto LABEL_6;
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v36 = v7;
          v37 = 2114;
          v38 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to adopt persona %{public}@: %{public}@", buf, 0x16u);
          v31 = v7;
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
        v36 = v10;
        v37 = 2114;
        v38 = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to copy the persona context for persona %{public}@: %{public}@", buf, 0x16u);
        v31 = v10;
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
      v9 = 0;
    }

    v12 = 0;
    v11 = 0;
LABEL_12:
    v15 = [v5 name];
    if (v15)
    {
      v16 = v15;
      v17 = [&off_1003E1EB0 objectForKeyedSubscript:v15];
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
        v20 = [v19 currentPersona];
        v21 = [v20 restorePersonaWithSavedPersonaContext:v12];

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

  v7 = [v4 name];
  v9 = [v5 connection];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v36 = v7;
    v37 = 2112;
    v38 = v9;
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

- (void)_synchronizeFileLists:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v19 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v19];
  v8 = v19;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 objectAtIndexedSubscript:0];

    v11 = [v4 arguments];
    v12 = [v11 objectAtIndexedSubscript:1];

    v13 = [(MBXPCServer *)self serviceManager];
    v18 = v8;
    v14 = [v13 synchronizeFileListsWithDeviceUUID:v10 commitID:v12 account:v7 error:&v18];
    v15 = v18;

    [v4 setReply:v14];
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

    [v4 setReply:0];
  }

  [v4 setReplyError:{v8, v17}];
  [v4 sendReply];
}

- (void)_fetchBackupCKRecordsIntoDB:(id)a3
{
  v3 = a3;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v13 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v13];
  v7 = v13;

  v8 = [(MBServiceAccount *)v6 persona];
  v9 = [v8 snapshotDatabaseDirectory];

  v12 = v7;
  LODWORD(v8) = MBBuildBackupCKRecordsDB(v6, 0, v9, &v12);
  v10 = v12;

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [v3 setReply:v11];
  [v3 setReplyError:v10];

  [v3 sendReply];
}

- (void)_setupBackup:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 lastObject];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [v12 setupBackupWithPasscode:v7 account:v10 connection:v6 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to set up backup due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [v4 setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [v4 setReplyError:v16];
  }

  [v4 sendReply];
}

- (void)_startBackup:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  v7 = [v6 firstObject];

  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [v12 startBackupWithOptions:v7 reason:1 xpcActivity:0 account:v10 connection:v5 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to start backup due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [v4 setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [v4 setReplyError:v16];
  }

  [v4 sendReply];
}

- (void)_signalPrebuddy:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 firstObject];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v14 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = [(MBXPCServer *)self serviceManager];
    [v11 signalPrebuddy:v6 account:v9];

    [v4 setReply:&__kCFBooleanTrue];
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

  [v4 sendReply];
}

- (void)_updatePrebuddyFollowUp:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    [v9 updatePrebuddyFollowUp:v7];

    v10 = [NSNumber numberWithBool:1];
    [v4 setReply:v10];
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
    [v4 setReply:v12];

    v10 = [MBError sanitizedError:v8];
    [v4 setReplyError:v10];
  }

  [v4 sendReply];
}

- (void)_cancelPrebuddy:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 firstObject];
    v11 = [v10 BOOLValue];

    v12 = [(MBXPCServer *)self serviceManager];
    [v12 clearPrebuddyWithAccount:v7 accountSignOut:v11];

    v13 = [NSNumber numberWithBool:1];
    [v4 setReply:v13];
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
    [v4 setReply:v15];

    v13 = [MBError sanitizedError:v8];
    [v4 setReplyError:v13];
  }

  [v4 sendReply];
}

- (void)_beginPrebuddyBackup:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v17 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v17];
  v10 = v17;

  if (v9)
  {
    v11 = [v6 firstObject];
    v12 = [v11 BOOLValue];

    v13 = [(MBXPCServer *)self serviceManager];
    [v13 beginPrebuddyBackupWithAccount:v9 connection:v5 fromManualSignal:v12];

    v14 = [NSNumber numberWithBool:1];
    [v4 setReply:v14];
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
    [v4 setReply:v16];

    v14 = [MBError sanitizedError:v10];
    [v4 setReplyError:v14];
  }

  [v4 sendReply];
}

- (void)_isPrebuddyMode:(id)a3
{
  v7 = a3;
  v4 = [(MBXPCServer *)self serviceManager];
  v5 = [v4 isPrebuddyMode];

  v6 = [NSNumber numberWithBool:v5];
  [v7 setReply:v6];

  [v7 sendReply];
}

- (void)_isInitialMegaBackupCompleted:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v12 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v10 = [v9 isInitialMegaBackupCompleted:v7];
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch is initial mega backup completed due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  v11 = [NSNumber numberWithBool:v10];
  [v4 setReply:v11];

  [v4 setReplyError:v8];
  [v4 sendReply];
}

- (void)_saveBackupEnabledForMegaBackup:(id)a3
{
  v5 = a3;
  v4 = [(MBXPCServer *)self serviceManager];
  [v4 saveBackupEnabledForMegaBackup];

  [v5 sendReply];
}

- (void)_wasBackupEnabledForMegaBackup:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v15 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v14 = v8;
    v10 = [v9 restorePreviousSettingsEnabledForMegaBackup:v7 error:&v14];
    v11 = v14;

    v8 = v11;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch was backup enabled for mega backup due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [v4 setReply:v12];

  v13 = [MBError sanitizedError:v8];
  [v4 setReplyError:v13];

  [v4 sendReply];
}

- (void)_saveSyncSettingsEnabledForMegaBackup:(id)a3
{
  v4 = a3;
  v7 = [v4 arguments];
  v5 = [v7 firstObject];
  v6 = [(MBXPCServer *)self serviceManager];
  [v6 saveSyncSettingsEnabledForMegaBackup:v5];

  [v4 sendReply];
}

- (void)_saveBackupDomainsEnabledForMegaBackup:(id)a3
{
  v4 = a3;
  v7 = [v4 arguments];
  v5 = [v7 firstObject];
  v6 = [(MBXPCServer *)self serviceManager];
  [v6 saveBackupDomainsEnabledForMegaBackup:v5];

  [v4 sendReply];
}

- (void)_restorePreviousSettingsEnabledForMegaBackup:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v14 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v14];
  v8 = v14;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v13 = v8;
    v10 = [v9 restorePreviousSettingsEnabledForMegaBackup:v7 error:&v13];
    v11 = v13;

    v8 = v11;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to restore previous settings enabled for mega backup due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [v4 setReply:v12];

  [v4 setReplyError:v8];
  [v4 sendReply];
}

- (void)_requestMegaBackupExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 firstObject];

    v11 = [(MBXPCServer *)self serviceManager];
    v15 = v8;
    v12 = [v11 requestMegaBackupExpirationDate:v10 account:v7 error:&v15];
    v13 = v15;

    v8 = v13;
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to request mega backup expiration date due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = 0;
  }

  v14 = [NSNumber numberWithBool:v12];
  [v4 setReply:v14];

  [v4 setReplyError:v8];
  [v4 sendReply];
}

- (void)_updateMegaBackupExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 firstObject];

    v11 = [(MBXPCServer *)self serviceManager];
    [v11 updateMegaBackupExpirationDate:v10 account:v7];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to update mega backup expiration date due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v12 = [NSNumber numberWithBool:v7 != 0];
  [v4 setReply:v12];

  [v4 setReplyError:v8];
  [v4 sendReply];
}

- (void)_exitMegaBackupMode:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v11 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    [v9 exitMegaBackupModeWithAccount:v7];
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to exit mega backup mode due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v10 = [NSNumber numberWithBool:v7 != 0];
  [v4 setReply:v10];

  [v4 setReplyError:v8];
  [v4 sendReply];
}

- (void)_prebuddyBackupDeleted:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v11 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    [v9 prebuddyBackupDeletedWithAccount:v7];
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to respond to prebuddy backup deleted due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v10 = [NSNumber numberWithBool:v7 != 0];
  [v4 setReply:v10];

  [v4 setReplyError:v8];
  [v4 sendReply];
}

- (void)_setMegaBackupTurnOniCloudBackupTelemetry:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 lastObject];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = @"MegaBackupTurnOniCloudBackup";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %@", buf, 0x16u);
      _MBLog();
    }

    v12 = [(MBServiceAccount *)v7 persona];
    [v12 setPreferencesValue:v10 forKey:@"MegaBackupTurnOniCloudBackup"];

    v13 = [(MBXPCServer *)self serviceManager];
    [v13 submitMegaLifeCycleTelemetriesWithAccount:v7];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = @"MegaBackupTurnOniCloudBackup";
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ due to nil account: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }

  v14 = [NSNumber numberWithBool:v7 != 0];
  [v4 setReply:v14];

  v15 = [MBError sanitizedError:v8];
  [v4 setError:v15];

  [v4 sendReply];
}

- (void)_setMegaBackupTurnOnAllAppsSyncTelemetry:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 lastObject];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = @"MegaBackupTurnOnAllAppsSync";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %@", buf, 0x16u);
      _MBLog();
    }

    v12 = [(MBServiceAccount *)v7 persona];
    [v12 setPreferencesValue:v10 forKey:@"MegaBackupTurnOnAllAppsSync"];

    v13 = [(MBXPCServer *)self serviceManager];
    [v13 submitMegaLifeCycleTelemetriesWithAccount:v7];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = @"MegaBackupTurnOnAllAppsSync";
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ due to nil account: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }

  v14 = [NSNumber numberWithBool:v7 != 0];
  [v4 setReply:v14];

  v15 = [MBError sanitizedError:v8];
  [v4 setError:v15];

  [v4 sendReply];
}

- (void)_setPrebuddyUIDeltaTelemetry:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v5 objectAtIndexedSubscript:1];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v30 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v30];
  v11 = v30;

  v12 = MBGetDefaultLog();
  v13 = v12;
  if (v10)
  {
    v29 = self;
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

    v14 = [(MBServiceAccount *)v10 persona];
    v13 = [v14 copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];

    v15 = [(MBServiceAccount *)v10 persona];
    v16 = [v15 copyPreferencesValueForKey:v6 class:objc_opt_class()];

    if (v13 && !v16)
    {
      v17 = [(MBServiceAccount *)v10 persona];
      v28 = v5;
      v18 = v11;
      v19 = v7;
      v20 = +[NSDate now];
      [v20 timeIntervalSinceDate:v13];
      v22 = [NSNumber numberWithInt:v21];
      [v17 setPreferencesValue:v22 forKey:v6];

      v7 = v19;
      v11 = v18;
      v5 = v28;
    }

    v23 = [(MBXPCServer *)v29 serviceManager:v26];
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
  [v4 setReply:v24];

  v25 = [MBError sanitizedError:v11];
  [v4 setError:v25];

  [v4 sendReply];
}

- (void)_setEntryPointForMegaBackupTelemetry:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 integerValue];

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
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %ld", buf, 0x16u);
      v22 = @"MegaBackupEntryPoint";
      v23 = v7;
      _MBLog();
    }

    v14 = [(MBServiceAccount *)v10 persona];
    v13 = [v14 copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];

    if (!v13)
    {
      v15 = [(MBServiceAccount *)v10 persona];
      v16 = +[NSDate date];
      [v15 setPreferencesValue:v16 forKey:@"MegaBackupFlowStartDate"];
    }

    v17 = [(MBServiceAccount *)v10 persona:v22];
    v18 = [NSNumber numberWithInteger:v7];
    [v17 setPreferencesValue:v18 forKey:@"MegaBackupEntryPoint"];

    v19 = [(MBXPCServer *)self serviceManager];
    [v19 submitMegaLifeCycleTelemetriesWithAccount:v10];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v26 = @"MegaBackupEntryPoint";
    v27 = 2048;
    v28 = v7;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ to %ld due to nil account: %{public}@", buf, 0x20u);
    _MBLog();
  }

  v20 = [NSNumber numberWithBool:v10 != 0];
  [v4 setReply:v20];

  v21 = [MBError sanitizedError:v11];
  [v4 setError:v21];

  [v4 sendReply];
}

- (void)_logPrebuddyFlowTelemetry:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 integerValue];

  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v18 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v18];
  v11 = v18;

  v12 = MBGetDefaultLog();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v20 = @"PrebuddyFlowStep";
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to: %ld", buf, 0x16u);
      _MBLog();
    }

    v14 = [(MBServiceAccount *)v10 persona];
    v15 = [NSNumber numberWithInteger:v7];
    [v14 setPreferencesValue:v15 forKey:@"PrebuddyFlowStep"];

    v13 = [(MBXPCServer *)self serviceManager];
    [v13 submitMegaLifeCycleTelemetriesWithAccount:v10];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v20 = @"PrebuddyFlowStep";
    v21 = 2048;
    v22 = v7;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ to %ld due to nil account: %{public}@", buf, 0x20u);
    _MBLog();
  }

  v16 = [NSNumber numberWithBool:v10 != 0];
  [v4 setReply:v16];

  v17 = [MBError sanitizedError:v11];
  [v4 setError:v17];

  [v4 sendReply];
}

- (void)_cancel:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v11 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v11];
  v9 = v11;

  if (v8)
  {
    v10 = [(MBXPCServer *)self serviceManager];
    [v10 cancelEnginesWithAccount:v8 connection:v5];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to cancel due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [v4 sendReply];
}

- (void)_finishRestore:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v10 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v10];
  v8 = v10;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    [v9 finishAirTrafficRestoreWithAccount:v7];
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to finish AirTraffic restore due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [v4 sendReply];
}

- (void)_deleteBackup:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [v12 deleteBackupUDID:v7 disableIfCurrentDevice:1 account:v10 connection:v6 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to delete backup due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [v4 setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [v4 setReplyError:v16];
  }

  [v4 sendReply];
}

- (void)_backupList:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  if ([v5 count] != 1)
  {
    [NSException raise:NSInvalidArgumentException format:@"filter argument required for backup list command"];
  }

  v7 = [v5 objectAtIndexedSubscript:0];
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

  v12 = [(MBXPCServer *)self serviceManager];
  v17 = v11;
  v13 = [v12 getBackupListWithFiltering:objc_msgSend(v7 account:"BOOLValue") connection:v10 error:{v6, &v17}];
  v14 = v17;

  if (!v13)
  {
    v11 = v14;
LABEL_10:
    v13 = [MBError sanitizedError:v11, v16];
    [v4 setReplyError:v13];
    goto LABEL_11;
  }

  [v4 setReply:v13];
LABEL_11:

  [v4 sendReply];
}

- (void)_isBackupEnabled:(id)a3
{
  v3 = a3;
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

  v9 = [(MBServiceAccount *)v6 isEnabledForBackup];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v15) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "isBackupEnabled:%d", buf, 8u);
    _MBLog();
  }

  v11 = [NSNumber numberWithBool:v9];
  [v3 setReply:v11];

  [v3 sendReply];
}

- (void)_setBackupEnabled:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  v7 = [v6 lastObject];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v13 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v13];
  v11 = v13;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    -[NSObject setBackupEnabled:account:connection:](v12, "setBackupEnabled:account:connection:", [v7 BOOLValue], v10, v5);
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to enable backup due to nil account: %@", buf, 0xCu);
      _MBLog();
    }
  }

  [v4 sendReply];
}

- (void)_isBackupOnCellularEnabled:(id)a3
{
  v3 = a3;
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
  [v3 setReply:v13];

  v14 = [MBError sanitizedError:v7];
  [v3 setError:v14];

  [v3 sendReply];
  _Block_object_dispose(&v20, 8);
}

- (void)_setBackupOnCellularEnabled:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v19 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v19];
  v8 = v19;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 lastObject];

    v11 = sub_100156CCC();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157010;
    block[3] = &unk_1003BC2E0;
    v16 = v10;
    v17 = v7;
    v18 = self;
    v12 = v10;
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
  [v4 setReply:v13];

  v14 = [MBError sanitizedError:v8];
  [v4 setError:v14];

  [v4 sendReply];
}

- (void)_syncBackupEnabled:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v11 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v11];
  v9 = v11;

  if (v8)
  {
    v10 = [(MBXPCServer *)self serviceManager];
    [v10 syncBackupEnabledWithAccount:v8 connection:v5];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to sync backup enabled due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [v4 sendReply];
}

- (void)_isLocalBackupPasswordSet:(id)a3
{
  v3 = a3;
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
      [v3 setReplyError:v7];
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
  [v3 setReply:v8];

  [v3 sendReply];
}

- (void)_unsetLocalBackupPassword:(id)a3
{
  v3 = a3;
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
    [v3 setReplyError:v11];
  }

LABEL_15:
  v12 = [NSNumber numberWithBool:v10, v13];
  [v3 setReply:v12];

  [v3 sendReply];
}

- (void)_getBackupDeviceUUID:(id)a3
{
  v4 = a3;
  v3 = MBDeviceUUID();
  [v4 setReply:v3];

  [v4 sendReply];
}

- (void)_backupState:(id)a3
{
  v4 = a3;
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

  v9 = [(MBXPCServer *)self serviceManager];
  v10 = [v9 backupStateInfoForInitialMegaBackup:0 account:v7];

  if (v10)
  {
    [v4 setReply:v10];
LABEL_6:
  }

  [v4 sendReply];
}

- (void)_dateOfLastBackup:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v16 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v16];
  v9 = v16;

  if (v8)
  {
    v10 = [(MBXPCServer *)self scheduler];
    v15 = v9;
    v11 = [v10 dateOfLastBackupWithAccount:v8 connection:v5 error:&v15];
    v12 = v15;

    if (!v11)
    {
      goto LABEL_7;
    }

    [v4 setReply:v11];
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
    [v4 setReplyError:v13];
  }

  [v4 sendReply];
}

- (void)_dateOfNextBackup:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v16 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v16];
  v9 = v16;

  if (v8)
  {
    v10 = [(MBXPCServer *)self scheduler];
    v15 = v9;
    v11 = [v10 dateOfNextScheduledBackupWithAccount:v8 connection:v5 error:&v15];
    v12 = v15;

    if (!v11)
    {
      goto LABEL_7;
    }

    [v4 setReply:v11];
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
    [v4 setReplyError:v13];
  }

  [v4 sendReply];
}

- (void)_nextBackupSize:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v10 = [v9 nextBackupSizeWithAccount:v7];

    v11 = [NSNumber numberWithUnsignedLongLong:v10];
    [v4 setReply:v11];
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
    [v4 setReplyError:v11];
  }

  [v4 sendReply];
}

- (void)_nextBackupSizeInfo:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v12 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v10 = [v9 nextBackupSizeInfoWithAccount:v7];
    [v4 setReply:v10];
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

    v9 = [MBError sanitizedError:v8];
    [v4 setReplyError:v9];
  }

  [v4 sendReply];
}

- (void)_journalLastModifiedForBackupUUID:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  v7 = [v6 objectAtIndexedSubscript:0];
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

  v12 = [(MBXPCServer *)self serviceManager];
  v17 = v11;
  v13 = [v12 journalLastModifiedForBackupUUID:v7 account:v10 connection:v5 error:&v17];
  v14 = v17;

  if (!v13)
  {
    v11 = v14;
LABEL_8:
    v13 = [MBError sanitizedError:v11, v16];
    [v4 setReplyError:v13];
    goto LABEL_9;
  }

  [v4 setReply:v13];
LABEL_9:

  [v4 sendReply];
}

- (void)_journalForBackupUUID:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  v7 = [v6 objectAtIndexedSubscript:0];
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

  v12 = [(MBXPCServer *)self serviceManager];
  v17 = v11;
  v13 = [v12 journalForBackupUUID:v7 account:v10 connection:v5 error:&v17];
  v14 = v17;

  if (!v13)
  {
    v11 = v14;
LABEL_8:
    v13 = [MBError sanitizedError:v11, v16];
    [v4 setReplyError:v13];
    goto LABEL_9;
  }

  [v4 setReply:v13];
LABEL_9:

  [v4 sendReply];
}

- (void)_listSnapshotFiles:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 integerValue];

  v9 = [v5 objectAtIndexedSubscript:1];
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

  v14 = [(MBXPCServer *)self serviceManager];
  v19 = v13;
  v15 = [v14 filesForSnapshotID:v8 backupUDID:v9 account:v12 connection:v6 error:&v19];
  v16 = v19;

  if (!v15)
  {
    v13 = v16;
LABEL_8:
    v15 = [MBError sanitizedError:v13, v18];
    [v4 setReplyError:v15];
    goto LABEL_9;
  }

  [v4 setReply:v15];
LABEL_9:

  [v4 sendReply];
}

- (void)_mergeSnapshots:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];
  v9 = [MBServiceAccount alloc];
  v10 = +[UMUserPersona currentPersona];
  v18 = 0;
  v11 = [(MBServiceAccount *)v9 initWithPersona:v10 error:&v18];
  v12 = v18;

  if (v11)
  {
    v13 = [(MBXPCServer *)self serviceManager];
    v17 = v12;
    [v13 mergeSnapshots:v8 backupUUID:v7 account:v11 connection:v6 error:&v17];
    v14 = v17;

    v12 = v14;
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to merge snapshots due to nil account: %{public}@", buf, 0xCu);
      v16 = v12;
      _MBLog();
    }
  }

  if (v12)
  {
    v15 = [MBError sanitizedError:v12];
    [v4 setReplyError:v15];
  }

  else
  {
    [v4 setReply:&__kCFBooleanTrue];
  }

  [v4 sendReply];
}

- (void)_pinSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v5 objectAtIndexedSubscript:1];
  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v21 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v21];
  v13 = v21;

  if (v12)
  {
    v14 = [(MBXPCServer *)self serviceManager];
    v20 = v13;
    v15 = [v14 pinSnapshotID:v8 backupUDID:v9 account:v12 connection:v6 error:&v20];
    v16 = v20;

    v13 = v16;
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to pin snapshot due to nil account: %{public}@", buf, 0xCu);
      v19 = v13;
      _MBLog();
    }

    v15 = 0;
  }

  v17 = [NSNumber numberWithBool:v15];
  [v4 setReply:v17];

  if ((v15 & 1) == 0)
  {
    v18 = [MBError sanitizedError:v13];
    [v4 setReplyError:v18];
  }

  [v4 sendReply];
}

- (void)_unpinSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v5 objectAtIndexedSubscript:1];
  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v21 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v21];
  v13 = v21;

  if (v12)
  {
    v14 = [(MBXPCServer *)self serviceManager];
    v20 = v13;
    v15 = [v14 unpinSnapshotID:v8 backupUDID:v9 account:v12 connection:v6 error:&v20];
    v16 = v20;

    v13 = v16;
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to unpin snapshot due to nil account: %{public}@", buf, 0xCu);
      v19 = v13;
      _MBLog();
    }

    v15 = 0;
  }

  v17 = [NSNumber numberWithBool:v15];
  [v4 setReply:v17];

  if ((v15 & 1) == 0)
  {
    v18 = [MBError sanitizedError:v13];
    [v4 setReplyError:v18];
  }

  [v4 sendReply];
}

- (void)_fetchBundleIDs:(id)a3
{
  v3 = a3;
  v4 = [v3 connection];
  v5 = [v3 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];

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
  v11 = MBFetchAppBundleIDsInSnapshot(v6, v9, v4, &v16);
  v12 = v16;

  if (!v11)
  {
    v10 = v12;
LABEL_8:
    v11 = [MBError sanitizedError:v10, v14, v15];
    [v3 setReplyError:v11];
    goto LABEL_9;
  }

  [v3 setReply:v11];
LABEL_9:

  [v3 sendReply];
}

- (void)_fetchRestorableSnapshots:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
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

  v10 = [(MBXPCServer *)self serviceManager];
  v15 = v9;
  v11 = [v10 fetchRestorableSnapshotsForAccount:v8 connection:v5 error:&v15];
  v12 = v15;

  if (!v11)
  {
    v9 = v12;
LABEL_8:
    v11 = [MBError sanitizedError:v9, v14];
    [v4 setReplyError:v11];
    goto LABEL_9;
  }

  [v4 setReply:v11];
LABEL_9:

  [v4 sendReply];
}

- (void)_restoreSupportsBatching:(id)a3
{
  v7 = a3;
  v4 = [(MBXPCServer *)self serviceManager];
  v5 = [v4 restoreSupportsBatching];

  v6 = [NSNumber numberWithBool:v5];
  [v7 setReply:v6];

  [v7 sendReply];
}

- (void)_setRestoreQualityOfService:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v16 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = [v5 firstObject];
    v12 = [v11 integerValue];

    v13 = [(MBXPCServer *)self serviceManager];
    [v13 setRestoreQualityOfService:v12 account:v9 connection:v6];
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

    [v4 setReplyError:v10];
  }

  [v4 sendReply];
}

- (void)_saveBackgroundRestoreCellularAccess:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 firstObject];

  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v18 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [(MBXPCServer *)self serviceManager];
    v17 = v10;
    v12 = [v11 saveBackgroundRestoreCellularAccess:v6 account:v9 error:&v17];
    v13 = v17;

    v10 = v13;
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to save background restore cellular access due to nil account: %{public}@", buf, 0xCu);
      v16 = v10;
      _MBLog();
    }

    v12 = 0;
  }

  v14 = [NSNumber numberWithBool:v12];
  [v4 setReply:v14];

  if ((v12 & 1) == 0)
  {
    v15 = [MBError sanitizedError:v10];
    [v4 setReplyError:v15];
  }

  [v4 sendReply];
}

- (void)_fetchBackgroundRestoreCellularAccess:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v15 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v14 = v8;
    v10 = [v9 fetchBackgroundRestoreCellularAccessForAccount:v7 error:&v14];
    v11 = v14;

    [v4 setReply:v10];
    v8 = v11;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch background restore cellular access due to nil account: %{public}@", buf, 0xCu);
      v13 = v8;
      _MBLog();
    }
  }

  if (v8)
  {
    v12 = [MBError sanitizedError:v8];
    [v4 setReplyError:v12];
  }

  [v4 sendReply];
}

- (void)_startRestore:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v20 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v20];
  v8 = v20;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = 0;
    if ([v9 count]>= 2)
    {
      v11 = [v9 objectAtIndexedSubscript:1];
    }

    v12 = [(MBXPCServer *)self serviceManager];
    v13 = [v4 connection];
    v19 = v8;
    v14 = [v12 startRestoreForSnapshot:v10 options:v11 account:v7 connection:v13 error:&v19];
    v15 = v19;

    v8 = v15;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to start restore due to nil account: %{public}@", buf, 0xCu);
      v18 = v8;
      _MBLog();
    }

    v14 = 0;
  }

  v16 = [NSNumber numberWithBool:v14];
  [v4 setReply:v16];

  if ((v14 & 1) == 0)
  {
    v17 = [MBError sanitizedError:v8];
    [v4 setReplyError:v17];
  }

  [v4 sendReply];
}

- (void)_inheritBackup:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  if ([v5 count] <= 1)
  {
    [NSException raise:NSInvalidArgumentException format:@"must provide both snapshotUUID and deviceUUID to inherit from"];
  }

  v6 = [v5 objectAtIndexedSubscript:1];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [v12 inheritSnapshotWithAccount:v10 fromSnapshot:v7 fromDevice:v6 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to inherit backup due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [v4 setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [v4 setReplyError:v16];
  }

  [v4 sendReply];
}

- (void)_cancelRestore:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v12 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    [v9 cancelBackgroundRestoreWithAccount:v7];
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

    v9 = [MBError sanitizedError:v8];
    [v4 setReplyError:v9];
  }

  v11 = [NSNumber numberWithBool:v7 != 0];
  [v4 setReply:v11];

  [v4 sendReply];
}

- (void)_startFileRestore:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [v12 restoreFileWithPath:v7 context:v6 account:v10 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to start file restore due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [v4 setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [v4 setReplyError:v16];
  }

  [v4 sendReply];
}

- (void)_startFilesRestore:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [v12 restoreFilesWithPaths:v7 context:v6 account:v10 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to start files restore due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [v4 setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [v4 setReplyError:v16];
  }

  [v4 sendReply];
}

- (void)_startBookRestore:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 firstObject];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [v12 restoreBookWithPath:v7 context:v6 account:v10 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to start the book restore due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [v4 setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [v4 setReplyError:v16];
  }

  [v4 sendReply];
}

- (void)_startAppRestore:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [v8 BOOLValue];

  v10 = [v5 objectAtIndexedSubscript:2];
  v11 = [MBServiceAccount alloc];
  v12 = +[UMUserPersona currentPersona];
  v22 = 0;
  v13 = [(MBServiceAccount *)v11 initWithPersona:v12 error:&v22];
  v14 = v22;

  if (v13)
  {
    v15 = [(MBXPCServer *)self serviceManager];
    v21 = v14;
    v16 = [v15 restoreApplicationWithBundleID:v7 failed:v9 qos:v10 context:v6 account:v13 error:&v21];
    v17 = v21;

    v14 = v17;
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to start the app restore due to nil account: %{public}@", buf, 0xCu);
      v20 = v14;
      _MBLog();
    }

    v16 = 0;
  }

  v18 = [NSNumber numberWithBool:v16];
  [v4 setReply:v18];

  if ((v16 & 1) == 0)
  {
    v19 = [MBError sanitizedError:v14];
    [v4 setReplyError:v19];
  }

  [v4 sendReply];
}

- (void)_cancelAppRestore:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [(MBXPCServer *)self serviceManager];
  v12 = 0;
  v8 = [v7 cancelApplicationRestoreWithBundleID:v6 error:&v12];
  v9 = v12;

  v10 = [NSNumber numberWithBool:v8];
  [v4 setReply:v10];

  if ((v8 & 1) == 0)
  {
    v11 = [MBError sanitizedError:v9];
    [v4 setReplyError:v11];
  }

  [v4 sendReply];
}

- (void)_restoreInfo:(id)a3
{
  v3 = a3;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v14 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v14];
  v7 = v14;

  if (v6)
  {
    v8 = [(MBServiceAccount *)v6 persona];
    if (v8)
    {
LABEL_3:
      v9 = [v8 copyPreferencesValueForKey:@"RestoreInfo" class:objc_opt_class()];
      v10 = [[MBRestoreInfo alloc] initWithDictionaryRepresentation:v9];
      [v3 setReply:v10];

      goto LABEL_8;
    }
  }

  else
  {
    v13 = v7;
    v8 = [MBPersona personalPersonaWithError:&v13];
    v11 = v13;

    v7 = v11;
    if (v8)
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
  [v3 setReplyError:v9];
LABEL_8:

  [v3 sendReply];
}

- (void)_restoreState:(id)a3
{
  v4 = a3;
  v5 = [(MBXPCServer *)self serviceManager];
  v11 = 0;
  v6 = [v5 restoreStateWithError:&v11];
  v7 = v11;

  if (v6)
  {
    [v4 setReply:v6];
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
    [v4 setReplyError:v9];
  }

  [v4 sendReply];
}

- (void)_backgroundRestoreInfo:(id)a3
{
  v4 = a3;
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

  v9 = [(MBXPCServer *)self serviceManager];
  v10 = [v9 backgroundRestoreInfoWithAccount:v7];

  if (v10)
  {
    [v4 setReply:v10];
LABEL_6:
  }

  [v4 sendReply];
}

- (void)_clearRestoreSession:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v10 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v10];
  v8 = v10;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    [v9 clearRestoreSessionWithAccount:v7];
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to clear the restore session due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [v4 sendReply];
}

- (void)_reportRestoreFailure:(id)a3
{
  v3 = a3;
  v4 = [v3 arguments];
  v5 = [v4 objectAtIndexedSubscript:0];
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
  [v3 setReply:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [MBError sanitizedError:v8];
    [v3 setReplyError:v13];
  }

  [v3 sendReply];
}

- (void)_countRestoreFailures:(id)a3
{
  v3 = a3;
  v13 = [v3 arguments];
  v4 = [v13 objectAtIndexedSubscript:0];
  v5 = [v13 objectAtIndexedSubscript:1];
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
  [v3 setReply:v12];

  [v3 sendReply];
}

- (void)_listRestoreFailures:(id)a3
{
  v3 = a3;
  v14 = [v3 arguments];
  v4 = [v14 objectAtIndexedSubscript:0];
  v5 = [v14 objectAtIndexedSubscript:1];
  v6 = [v14 objectAtIndexedSubscript:2];
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

  [v3 setReply:v13];
  [v3 sendReply];
}

- (void)_restoreFiles:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v24 = [v5 objectAtIndexedSubscript:0];
  v6 = [v5 objectAtIndexedSubscript:1];
  v7 = +[NSNull null];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:1];
  }

  v9 = [v5 objectAtIndexedSubscript:2];
  v10 = [v9 BOOLValue];

  v11 = [v5 objectAtIndexedSubscript:3];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v5 objectAtIndexedSubscript:4];
  v14 = [v13 unsignedIntegerValue];

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

  v19 = [(MBXPCServer *)self serviceManager];
  v25 = v18;
  v20 = [v19 restoreFilesForDomain:v24 relativePath:v8 pendingOnly:v10 range:v12 account:v14 error:{v17, &v25}];
  v21 = v25;

  if (!v20)
  {
    v18 = v21;
LABEL_11:
    v20 = [MBError sanitizedError:v18, v23];
    [v4 setReplyError:v20];
    goto LABEL_12;
  }

  [v4 setReply:v20];
LABEL_12:

  [v4 sendReply];
}

- (void)_prioritizeRestoreFile:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v12 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v12];
  v10 = v12;

  if (v9)
  {
    v11 = [(MBXPCServer *)self serviceManager];
    [v11 prioritizeRestoreFileWithPath:v6 account:v9];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to prioritize restore for file due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [v4 sendReply];
}

- (void)_insufficientFreeSpaceToRestore:(id)a3
{
  v3 = a3;
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

  [v3 sendReply];
}

- (void)_prepareForBackgroundRestore:(id)a3
{
  v4 = a3;
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

  v9 = [(MBXPCServer *)self serviceManager];
  v15 = v8;
  v10 = [v9 prepareForBackgroundRestoreWithAccount:v7 error:&v15];
  v11 = v15;

  if (!v10)
  {
    v8 = v11;
LABEL_8:
    v13 = [MBError sanitizedError:v8, v14];
    [v4 setReplyError:v13];

    goto LABEL_9;
  }

  [v4 setReply:&__kCFBooleanTrue];
LABEL_9:
  [v4 sendReply];
}

- (void)_boostBackgroundRestore:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v14 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v14];
  v8 = v14;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10015BA00;
    v12[3] = &unk_1003BC010;
    v13 = v4;
    [v9 boostBackgroundRestoreWithAccount:v7 completionHandler:v12];
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
    [v4 setReplyError:v11];

    [v4 sendReply];
  }
}

- (void)_boostManualBackup:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10015BBA8;
    v11[3] = &unk_1003BC010;
    v12 = v4;
    [v9 boostManualBackupWithAccount:v7 completionHandler:v11];
  }

  else
  {
    v10 = [MBError sanitizedError:v8];
    [v4 setReplyError:v10];

    [v4 sendReply];
  }
}

- (void)_scheduleActivities:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015BCA0;
  v4[3] = &unk_1003BFD78;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MBXPCServer *)v5 _respondSynchronouslyTo:v3 with:v4];
}

- (void)_restoreDomain:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015BDE4;
  v4[3] = &unk_1003BFDA0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MBXPCServer *)v5 _respondSynchronouslyTo:v3 description:@"restore domain" withAccount:v4];
}

- (void)_acquireLock:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [v5 objectAtIndexedSubscript:2];
  [v9 doubleValue];
  v11 = v10;

  v12 = [MBServiceAccount alloc];
  v13 = +[UMUserPersona currentPersona];
  v23 = 0;
  v14 = [(MBServiceAccount *)v12 initWithPersona:v13 error:&v23];
  v15 = v23;

  if (v14)
  {
    v16 = [(MBXPCServer *)self serviceManager];
    v22 = v15;
    v17 = [v16 acquireLockWithBackupUDID:v7 account:v14 owner:v8 timeout:v6 connection:&v22 error:v11];
    v18 = v22;

    v15 = v18;
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to acquire lock due to nil account: %{public}@", buf, 0xCu);
      v21 = v15;
      _MBLog();
    }

    v17 = 0;
  }

  v19 = [NSNumber numberWithBool:v17];
  [v4 setReply:v19];

  if ((v17 & 1) == 0)
  {
    v20 = [MBError sanitizedError:v15];
    [v4 setReplyError:v20];
  }

  [v4 sendReply];
}

- (void)_releaseLock:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [MBServiceAccount alloc];
  v10 = +[UMUserPersona currentPersona];
  v20 = 0;
  v11 = [(MBServiceAccount *)v9 initWithPersona:v10 error:&v20];
  v12 = v20;

  if (v11)
  {
    v13 = [(MBXPCServer *)self serviceManager];
    v19 = v12;
    v14 = [v13 releaseLockWithBackupUDID:v7 account:v11 owner:v8 connection:v6 error:&v19];
    v15 = v19;

    v12 = v15;
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to release lock due to nil account: %{public}@", buf, 0xCu);
      v18 = v12;
      _MBLog();
    }

    v14 = 0;
  }

  v16 = [NSNumber numberWithBool:v14];
  [v4 setReply:v16];

  if ((v14 & 1) == 0)
  {
    v17 = [MBError sanitizedError:v12];
    [v4 setReplyError:v17];
  }

  [v4 sendReply];
}

- (void)_deviceLockInfos:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
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

  v10 = [(MBXPCServer *)self serviceManager];
  v15 = v9;
  v11 = [v10 deviceLockInfosWithAccount:v8 connection:v5 error:&v15];
  v12 = v15;

  if (!v11)
  {
    v9 = v12;
LABEL_8:
    v11 = [MBError sanitizedError:v9, v14];
    [v4 setReplyError:v11];
    goto LABEL_9;
  }

  [v4 setReply:v11];
LABEL_9:

  [v4 sendReply];
}

- (void)_fileExists:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v18 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [(MBXPCServer *)self serviceManager];
    v12 = [v11 restoreFileExistsWithPath:v6 account:v9];

    v13 = [NSNumber numberWithBool:v12];
    [v4 setReply:v13];

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
    [v4 setReply:v15];
  }

  v16 = [MBError sanitizedError:v10, v17];
  [v4 setReplyError:v16];

LABEL_8:
}

- (void)_dataExistsForApp:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v17 = 0;
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v16 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = [(MBXPCServer *)self serviceManager];
    v12 = [v11 restoreDataExistsForApplicationWithBundleID:v6 size:&v17 account:v9];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to check for data existence due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = 0;
  }

  v13 = [NSNumber numberWithBool:v12];
  v18[0] = v13;
  v14 = [NSNumber numberWithUnsignedLongLong:v17];
  v18[1] = v14;
  v15 = [NSArray arrayWithObjects:v18 count:2];
  [v4 setReply:v15];

  [v4 sendReply];
}

- (void)_removeDomain:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [MBServiceAccount alloc];
  v9 = +[UMUserPersona currentPersona];
  v19 = 0;
  v10 = [(MBServiceAccount *)v8 initWithPersona:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [(MBXPCServer *)self serviceManager];
    v18 = v11;
    v13 = [v12 removeDomainName:v7 account:v10 connection:v6 error:&v18];
    v14 = v18;

    v11 = v14;
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to remove domain due to nil account: %{public}@", buf, 0xCu);
      v17 = v11;
      _MBLog();
    }

    v13 = 0;
  }

  v15 = [NSNumber numberWithBool:v13];
  [v4 setReply:v15];

  if ((v13 & 1) == 0)
  {
    v16 = [MBError sanitizedError:v11];
    [v4 setReplyError:v16];
  }

  [v4 sendReply];
}

- (void)_domainInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 arguments];
  v5 = [v4 objectAtIndexedSubscript:0];
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

    [v3 setReply:0];
    v12 = v9;
    goto LABEL_7;
  }

  v10 = [v3 connection];
  v16 = v9;
  v11 = MBCalculateQuotaForDomain(v5, v8, v10, &v16);
  v12 = v16;

  [v3 setReply:v11];
  v9 = v12;
  if (!v11)
  {
LABEL_7:
    v14 = [MBError sanitizedError:v9, v15];
    [v3 setReplyError:v14];

    v11 = 0;
  }

  [v3 sendReply];
}

- (void)_domainInfoList:(id)a3
{
  v3 = a3;
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

    [v3 setReply:0];
    v10 = v7;
    goto LABEL_7;
  }

  v8 = [v3 connection];
  v14 = v7;
  v9 = MBCalculateQuotaForDomainsInCurrentDevice(v6, v8, &v14);
  v10 = v14;

  [v3 setReply:v9];
  v7 = v10;
  if (!v9)
  {
LABEL_7:
    v12 = [MBError sanitizedError:v7, v13];
    [v3 setReplyError:v12];

    v9 = 0;
  }

  [v3 sendReply];
}

- (void)_disabledDomainInfos:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v11 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v10 = [v9 disabledDomainInfosForAccount:v7];
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set domain enabled/disabled due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v10 = 0;
  }

  [v4 setReply:v10];
  [v4 sendReply];
}

- (void)_isDomainEnabled:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [MBServiceAccount alloc];
  v8 = +[UMUserPersona currentPersona];
  v14 = 0;
  v9 = [(MBServiceAccount *)v7 initWithPersona:v8 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = [(MBXPCServer *)self serviceManager];
    v12 = [v11 isBackupEnabledForDomainName:v6 account:v9];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to set domain enabled/disabled due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = 0;
  }

  v13 = [NSNumber numberWithBool:v12];
  [v4 setReply:v13];

  [v4 sendReply];
}

- (void)_setDomainEnabled:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 BOOLValue];

  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [MBServiceAccount alloc];
  v10 = +[UMUserPersona currentPersona];
  v14 = 0;
  v11 = [(MBServiceAccount *)v9 initWithPersona:v10 error:&v14];
  v12 = v14;

  if (v11)
  {
    v13 = [(MBXPCServer *)self serviceManager];
    [v13 setBackupEnabled:v7 forDomainName:v8 account:v11];
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to set domain enabled/disabled due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  [v4 sendReply];
}

- (void)_setAllowiTunesBackup:(id)a3
{
  v4 = a3;
  v8 = [v4 arguments];
  v5 = [v8 objectAtIndexedSubscript:0];
  v6 = [v5 intValue] != 0;

  v7 = [(MBXPCServer *)self serviceManager];
  [v7 setAllowiTunesBackup:v6];

  [v4 sendReply];
}

- (void)_getAllowiTunesBackup:(id)a3
{
  v7 = a3;
  v4 = [(MBXPCServer *)self serviceManager];
  v5 = [v4 allowiTunesBackup];

  v6 = [NSNumber numberWithBool:v5];
  [v7 setReply:v6];

  [v7 sendReply];
}

- (void)_getBuddyData:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [v8 unsignedIntegerValue];

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

  v14 = [(MBXPCServer *)self serviceManager];
  v19 = v13;
  v15 = [v14 getBuddyDataStashForBackupUDID:v7 snapshotID:v9 account:v12 connection:v6 error:&v19];
  v16 = v19;

  if (!v15)
  {
    v13 = v16;
LABEL_8:
    v15 = [MBError sanitizedError:v13, v18];
    [v4 setReplyError:v15];
    goto LABEL_9;
  }

  [v4 setReply:v15];
LABEL_9:

  [v4 sendReply];
}

- (void)_getAppleIDsMap:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v4 connection];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [v8 unsignedIntegerValue];

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

  v14 = [(MBXPCServer *)self serviceManager];
  v23 = v13;
  v24 = 0;
  v15 = [v14 getAppleIDsMapForBackupUDID:v7 account:v12 snapshotID:v9 activeAppleID:&v24 connection:v6 error:&v23];
  v16 = v24;
  v17 = v23;

  if (!v15)
  {
    v13 = v17;
LABEL_9:
    v15 = [MBError sanitizedError:v13, v22];
    [v4 setReplyError:v15];
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

  [v4 setReply:v19];

LABEL_12:
  [v4 sendReply];
}

- (void)_deleteAccount:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v15 = v8;
    v10 = [v9 deleteAccountWithServiceAccount:v7 error:&v15];
    v11 = v15;

    v8 = v11;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to delete account due to nil account: %{public}@", buf, 0xCu);
      v14 = v8;
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [v4 setReply:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [MBError sanitizedError:v8];
    [v4 setReplyError:v13];
  }

  [v4 sendReply];
}

- (void)_accountChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v8 = [v5 firstObject];

  v6 = [(MBXPCServer *)self serviceManager];
  [v6 accountChanged:v8];

  v7 = [(MBXPCServer *)self scheduler];
  [v7 accountChanged];

  [v4 sendReply];
}

- (void)_passcodeChanged:(id)a3
{
  v5 = a3;
  v4 = [(MBXPCServer *)self scheduler];
  [v4 passcodeChanged];

  [v5 sendReply];
}

- (void)_deviceIsLocking:(id)a3
{
  v5 = a3;
  v4 = [(MBXPCServer *)self serviceManager];
  [v4 deviceIsLocking];

  [v5 sendReply];
}

- (void)_deviceIsUnlocked:(id)a3
{
  v5 = a3;
  v4 = [(MBXPCServer *)self serviceManager];
  [v4 deviceIsUnlocked];

  [v5 sendReply];
}

- (void)_archiveLogs:(id)a3
{
  v3 = a3;
  v4 = [v3 arguments];
  v5 = [v3 connection];
  v6 = [v5 xpcConnection];
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
      if ([v4 count] == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) != 0))
      {
        v20 = [v4 objectAtIndexedSubscript:0];
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
          [v3 setReply:v22];

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

  [v3 setReply:{v17, v23}];
LABEL_26:
  [v3 sendReply];
}

- (void)_rebootDevice:(id)a3
{
  v3 = [a3 arguments];
  v4 = [v3 lastObject];
  v5 = [v4 BOOLValue];

  v6 = +[MBDaemon sharedDaemon];
  [v6 reboot:v5];

  abort();
}

- (void)_repair:(id)a3
{
  v5 = a3;
  v4 = [(MBXPCServer *)self serviceManager];
  [v4 repair];

  [v5 sendReply];
}

- (void)_startScan:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v16 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = [(MBXPCServer *)self serviceManager];
    v15 = v8;
    v10 = [v9 startScanWithAccount:v7 error:&v15];
    v11 = v15;

    v8 = v11;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to start scan due to nil account: %{public}@", buf, 0xCu);
      v14 = v8;
      _MBLog();
    }

    v10 = 0;
  }

  v12 = [NSNumber numberWithBool:v10];
  [v4 setReply:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [MBError sanitizedError:v8];
    [v4 setReplyError:v13];
  }

  [v4 sendReply];
}

- (void)_startScanForBundleIDs:(id)a3
{
  v4 = a3;
  v5 = [v4 arguments];
  v6 = [v5 firstObject];
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
        v11 = [(MBXPCServer *)self serviceManager];
        v20 = v10;
        v12 = [v11 startScanForBundleIDs:v6 account:v9 error:&v20];
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
  [v4 setReply:v17];

  if ((v12 & 1) == 0)
  {
    v18 = [MBError sanitizedError:v10];
    [v4 setReplyError:v18];
  }

  [v4 sendReply];
}

- (void)_sendMessage:(id)a3 connections:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[UMUserPersona currentPersona];
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
          [v13 sendMessage:v5];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)_sendBarrierMessage:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_connectionsQueue);
  v26 = self;
  v6 = self->_connections;
  v7 = dispatch_group_create();
  v8 = [v5 name];
  [v8 UTF8String];
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
          v17 = [v11 userPersonaUniqueString];
          v18 = [v16 personaIdentifier];
          v19 = [v17 isEqualToString:v18];

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
        [v16 sendMessage:v5 barrierBlock:v38];
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

  dispatch_group_notify(v7, v26->_connectionsQueue, v33[5]);
  v23 = dispatch_walltime(0, 3600000000000);
  dispatch_after(v23, v26->_connectionsQueue, v33[5]);

  _Block_object_dispose(&v32, 8);
}

- (void)_countCameraRollQuota:(id)a3
{
  v5 = a3;
  v4 = [(MBXPCServer *)self serviceManager];
  [v4 countCameraRollQuota];

  [v5 sendReply];
}

- (void)_discountCameraRollQuota:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [MBServiceAccount alloc];
  v7 = +[UMUserPersona currentPersona];
  v17 = 0;
  v8 = [(MBServiceAccount *)v6 initWithPersona:v7 error:&v17];
  v9 = v17;

  if (v8)
  {
    v10 = [(MBXPCServer *)self serviceManager];
    v16 = v9;
    v11 = [v10 discountCameraRollQuotaWithAccount:v8 connection:v5 error:&v16];
    v12 = v16;

    v9 = v12;
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to discount camera roll quota due to nil account: %{public}@", buf, 0xCu);
      v15 = v9;
      _MBLog();
    }

    v11 = 0;
  }

  v13 = [NSNumber numberWithBool:v11];
  [v4 setReply:v13];

  if ((v11 & 1) == 0)
  {
    v14 = [MBError sanitizedError:v9];
    [v4 setError:v14];
  }

  [v4 sendReply];
}

- (void)_reservedBackupSizeList:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
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

  v10 = [(MBXPCServer *)self serviceManager];
  v15 = v9;
  v11 = [v10 reservedBackupSizeListWithAccount:v8 connection:v5 error:&v15];
  v12 = v15;

  if (!v11)
  {
    v9 = v12;
LABEL_8:
    v11 = [MBError sanitizedError:v9, v14];
    [v4 setReplyError:v11];
    goto LABEL_9;
  }

  [v4 setReply:v11];
LABEL_9:

  [v4 sendReply];
}

- (void)_pendingSnapshotForCurrentDevice:(id)a3
{
  v4 = a3;
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

  v9 = [(MBXPCServer *)self serviceManager];
  v14 = v8;
  v10 = [v9 pendingSnapshotForCurrentDeviceAndAccount:v7 error:&v14];
  v11 = v14;

  if (!v10)
  {
    v8 = v11;
LABEL_8:
    v10 = [MBError sanitizedError:v8, v13];
    [v4 setReplyError:v10];
    goto LABEL_9;
  }

  [v4 setReply:v10];
LABEL_9:

  [v4 sendReply];
}

- (void)manager:(id)a3 didSetBackupEnabled:(BOOL)a4
{
  connectionsQueue = self->_connectionsQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015F3B4;
  v5[3] = &unk_1003BCAC0;
  v6 = a4;
  v5[4] = self;
  dispatch_async(connectionsQueue, v5);
}

- (void)manager:(id)a3 didUpdateProgress:(float)a4 estimatedTimeRemaining:(unint64_t)a5 bytesRemaining:(int64_t)a6 state:(id)a7 context:(id)a8
{
  v13 = a7;
  v14 = a8;
  connectionsQueue = self->_connectionsQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10015F570;
  v18[3] = &unk_1003BFDF0;
  v19 = v14;
  v20 = self;
  v24 = a4;
  v22 = a5;
  v23 = a6;
  v21 = v13;
  v16 = v13;
  v17 = v14;
  dispatch_async(connectionsQueue, v18);
}

- (void)manager:(id)a3 didUpdateBackgroundRestoreWithContext:(id)a4
{
  v5 = a4;
  connectionsQueue = self->_connectionsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015F780;
  v8[3] = &unk_1003BC060;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(connectionsQueue, v8);
}

- (void)managerDidFinishVerification:(id)a3
{
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015F8CC;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)a3 didScanBundleWithID:(id)a4 bytesUsed:(unint64_t)a5
{
  v7 = a4;
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015F9E0;
  block[3] = &unk_1003BDB10;
  v12 = self;
  v13 = a5;
  v11 = v7;
  v9 = v7;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)a3 didScanDomainWithName:(id)a4 forBundleID:(id)a5 bytesUsed:(unint64_t)a6
{
  v9 = a4;
  v10 = a5;
  connectionsQueue = self->_connectionsQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10015FB88;
  v14[3] = &unk_1003BD8C8;
  v15 = v9;
  v16 = v10;
  v17 = self;
  v18 = a6;
  v12 = v10;
  v13 = v9;
  dispatch_async(connectionsQueue, v14);
}

- (void)manager:(id)a3 didScanFiles:(id)a4 forDomainWithName:(id)a5 bundleID:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  connectionsQueue = self->_connectionsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015FD4C;
  v16[3] = &unk_1003BC5B8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(connectionsQueue, v16);
}

- (void)manager:(id)a3 didFinishRestoreWithContext:(id)a4
{
  v5 = a4;
  connectionsQueue = self->_connectionsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015FEAC;
  v8[3] = &unk_1003BC060;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(connectionsQueue, v8);
}

- (void)manager:(id)a3 didFinishRestoreForPath:(id)a4 withContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016004C;
  block[3] = &unk_1003BC2E0;
  v13 = v8;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(connectionsQueue, block);
}

- (void)managerDidCancelRestore:(id)a3
{
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001601C8;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(connectionsQueue, block);
}

- (void)managerDidFinishBackup:(id)a3
{
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001602A8;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)a3 didFailBackupWithError:(id)a4
{
  v5 = a4;
  if (+[MBError isCancelledError:](MBError, "isCancelledError:", v5) && [v5 code] != 202)
  {
    v15[0] = v5;
    v14[0] = NSUnderlyingErrorKey;
    v14[1] = NSLocalizedDescriptionKey;
    v6 = [v5 localizedDescription];
    v15[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:v7];

    v5 = v8;
  }

  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016052C;
  block[3] = &unk_1003BC060;
  v12 = v5;
  v13 = self;
  v10 = v5;
  dispatch_async(connectionsQueue, block);
}

- (void)managerDidFinishScan:(id)a3 bytesUsed:(unint64_t)a4
{
  connectionsQueue = self->_connectionsQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001606D8;
  v5[3] = &unk_1003BDAE8;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(connectionsQueue, v5);
}

- (void)manager:(id)a3 didFailScanWithError:(id)a4
{
  v5 = a4;
  if (+[MBError isCancelledError:](MBError, "isCancelledError:", v5) && [v5 code] != 202)
  {
    v15[0] = v5;
    v14[0] = NSUnderlyingErrorKey;
    v14[1] = NSLocalizedDescriptionKey;
    v6 = [v5 localizedDescription];
    v15[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:v7];

    v5 = v8;
  }

  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001609A0;
  block[3] = &unk_1003BC060;
  v12 = v5;
  v13 = self;
  v10 = v5;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)a3 didFailVerificationWithError:(id)a4
{
  v5 = a4;
  connectionsQueue = self->_connectionsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100160B70;
  v8[3] = &unk_1003BC060;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(connectionsQueue, v8);
}

- (void)manager:(id)a3 didFailRestoreWithContext:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  connectionsQueue = self->_connectionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100160CC8;
  block[3] = &unk_1003BC2E0;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(connectionsQueue, block);
}

- (void)manager:(id)a3 didFailRestoreForPath:(id)a4 withContext:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  connectionsQueue = self->_connectionsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100160EB4;
  v16[3] = &unk_1003BC5B8;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v20 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_async(connectionsQueue, v16);
}

- (void)connection:(id)a3 didReceiveMessage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[MBDaemon sharedDaemon];
  [v9 holdWorkAssertion:a2];

  v10 = dispatch_get_global_queue(17, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100161100;
  v14[3] = &unk_1003BD8C8;
  v15 = v7;
  v16 = v8;
  v17 = self;
  v18 = a2;
  v11 = v8;
  v12 = v7;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v14);
  dispatch_async(v10, v13);
}

- (void)connectionWasInvalidated:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001613A8;
  block[3] = &unk_1003BC2E0;
  block[4] = self;
  v7 = v4;
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
  v13 = self;
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

- (void)connection:(id)a3 didFinishDeviceTransferWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    __assert_rtn("[MBXPCServer connection:didFinishDeviceTransferWithError:]", "MBXPCServer.m", 2454, "connection");
  }

  v7 = v6;
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
  [v5 sendMessage:v9 barrierBlock:v16];
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

- (void)connection:(id)a3 didFinishDeviceTransferKeychainTransfer:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (!v7)
  {
    __assert_rtn("[MBXPCServer connection:didFinishDeviceTransferKeychainTransfer:]", "MBXPCServer.m", 2473, "connection");
  }

  v6 = [MBMessage messageWithName:@"kMBMessageDidFinishDeviceTransferKeychainTransfer" arguments:0];
  [v7 sendMessage:v6];
}

- (void)connection:(id)a3 didUpdateDeviceTransferProgress:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferProgress:]", "MBXPCServer.m", 2480, "connection");
  }

  v7 = v6;
  if (!v6)
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

  [v5 sendMessage:v11];
}

- (void)connection:(id)a3 didUpdateDeviceTransferConnectionInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferConnectionInfo:]", "MBXPCServer.m", 2489, "connection");
  }

  v7 = v6;
  if (!v6)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferConnectionInfo:]", "MBXPCServer.m", 2490, "info");
  }

  if ([v6 connectionState] != 1 && objc_msgSend(v7, "connectionState") != 2)
  {
    __assert_rtn("[MBXPCServer connection:didUpdateDeviceTransferConnectionInfo:]", "MBXPCServer.m", 2491, "info.connectionState == MBDeviceTransferConnectionStateConnected || info.connectionState == MBDeviceTransferConnectionStateDisconnected");
  }

  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = [MBMessage messageWithName:@"kMBMessageDidUpdateDeviceTransferConnectionInfo" arguments:v8];

  [v5 sendMessage:v9];
}

- (void)_startDeviceTransfer:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  if (![v6 count])
  {
    __assert_rtn("[MBXPCServer _startDeviceTransfer:]", "MBXPCServer.m", 2502, "arguments.count");
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 integerValue];

  v9 = 0;
  if ([v6 count] >= 2)
  {
    v9 = [v6 objectAtIndexedSubscript:1];
  }

  v10 = [(MBXPCServer *)self serviceManager];
  v15 = 0;
  v11 = [v10 startDeviceTransferWithTaskType:v8 sessionInfo:v9 connection:v5 error:&v15];
  v12 = v15;

  if ((v11 & 1) == 0 && !v12)
  {
    __assert_rtn("[MBXPCServer _startDeviceTransfer:]", "MBXPCServer.m", 2508, "result || error");
  }

  v13 = [NSNumber numberWithBool:v11];
  [v4 setReply:v13];

  if ((v11 & 1) == 0)
  {
    v14 = [MBError sanitizedError:v12];
    [v4 setReplyError:v14];
  }

  [v4 sendReply];
}

- (void)_cancelDeviceTransfer:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  if (![v6 count])
  {
    __assert_rtn("[MBXPCServer _cancelDeviceTransfer:]", "MBXPCServer.m", 2518, "arguments.count");
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 integerValue];

  v9 = [(MBXPCServer *)self serviceManager];
  v14 = 0;
  v10 = [v9 cancelDeviceTransferWithTaskType:v8 connection:v5 error:&v14];
  v11 = v14;

  v12 = [NSNumber numberWithBool:v10];
  [v4 setReply:v12];

  if ((v10 & 1) == 0)
  {
    v13 = [MBError sanitizedError:v11];
    [v4 setReplyError:v13];
  }

  [v4 sendReply];
}

- (void)_startPreflight:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [(MBXPCServer *)self serviceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100161EFC;
  v8[3] = &unk_1003BFE18;
  v9 = v4;
  v7 = v4;
  [v6 startPreflightWithConnection:v5 completion:v8];
}

- (void)_startKeychainDataTransfer:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [(MBXPCServer *)self serviceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100162090;
  v8[3] = &unk_1003BFE40;
  v9 = v4;
  v7 = v4;
  [v6 startKeychainDataTransferWithConnection:v5 completion:v8];
}

- (void)_startKeychainDataImport:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  if (![v6 count])
  {
    __assert_rtn("[MBXPCServer _startKeychainDataImport:]", "MBXPCServer.m", 2554, "arguments.count");
  }

  v7 = [v6 firstObject];
  v8 = [(MBXPCServer *)self serviceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100162280;
  v10[3] = &unk_1003BC010;
  v11 = v4;
  v9 = v4;
  [v8 startKeychainDataImportWithKeychainInfo:v7 connection:v5 completion:v10];
}

- (void)_startDataTransfer:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v4 arguments];
  if (![v6 count])
  {
    __assert_rtn("[MBXPCServer _startDataTransfer:]", "MBXPCServer.m", 2568, "arguments.count");
  }

  v7 = [v6 firstObject];
  v8 = [(MBXPCServer *)self serviceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016244C;
  v10[3] = &unk_1003BC010;
  v11 = v4;
  v9 = v4;
  [v8 startDataTransferWithPreflightInfo:v7 connection:v5 completion:v10];
}

- (void)_fetchPersonalPersonaIdentifier:(id)a3
{
  v3 = a3;
  v4 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v5 = [v4 userPersonaUniqueString];

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "personalPersonaIdentifier: %{public}@", buf, 0xCu);
    _MBLog();
  }

  [v3 setReply:v5];
  [v3 sendReply];
}

- (void)_postFollowUpForDrySpellWithDuration:(id)a3
{
  v3 = a3;
  v4 = [v3 arguments];
  if ([v4 count] <= 1)
  {
    __assert_rtn("[MBXPCServer _postFollowUpForDrySpellWithDuration:]", "MBXPCServer.m", 2592, "1 < arguments.count");
  }

  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectAtIndexedSubscript:1];
  v9 = [v8 BOOLValue];

  v10 = [MBServiceAccount alloc];
  v11 = +[UMUserPersona currentPersona];
  v19 = 0;
  v12 = [(MBServiceAccount *)v10 initWithPersona:v11 error:&v19];
  v13 = v19;

  if (v12)
  {
    v14 = +[MBFollowUpManager sharedManager];
    v15 = [v14 postFollowUpForDrySpellForAccount:v12 duration:v9 firstBackup:v7];

    v16 = [NSNumber numberWithBool:1];
    [v3 setReply:v16];
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
    [v3 setReply:v18];

    v16 = [MBError sanitizedError:v13];
    [v3 setReplyError:v16];
  }

  [v3 sendReply];
}

- (void)_postFollowUpForRestoreTimeout:(id)a3
{
  v3 = a3;
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
    [v3 setReply:v10];
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
    [v3 setReply:v12];

    v10 = [MBError sanitizedError:v7];
    [v3 setReplyError:v10];
  }

  [v3 sendReply];
}

- (void)_postFollowUpForBackgroundRestoreProgress:(id)a3
{
  v3 = a3;
  v4 = [v3 arguments];
  if (![v4 count])
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
    v9 = [v4 firstObject];
    v10 = +[MBFollowUpManager sharedManager];
    v11 = [v10 postFollowUpForBackgroundRestoreProgress:v9 account:v7];
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to post the follow up due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v12 = [NSNumber numberWithBool:v7 != 0];
  [v3 setReply:v12];

  [v3 sendReply];
}

- (void)_postFollowUpForRestoreFinished:(id)a3
{
  v3 = a3;
  v4 = [MBServiceAccount alloc];
  v5 = +[UMUserPersona currentPersona];
  v14 = 0;
  v6 = [(MBServiceAccount *)v4 initWithPersona:v5 error:&v14];
  v7 = v14;

  if (v6)
  {
    v8 = [v3 arguments];
    v9 = [v8 firstObject];
    v10 = [v9 BOOLValue];

    v11 = +[MBFollowUpManager sharedManager];
    v12 = [v11 postFollowUpForRestoreFinishedForAccount:v6 skipiCloudQuotaOffer:v10];
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
  [v3 setReply:v13];

  [v3 sendReply];
}

- (void)_postFollowUpForRestoreFailed:(id)a3
{
  v4 = a3;
  v5 = [MBServiceAccount alloc];
  v6 = +[UMUserPersona currentPersona];
  v13 = 0;
  v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [v4 arguments];
    v10 = [v9 firstObject];

    v11 = [(MBXPCServer *)self serviceManager];
    [v11 postFollowUpForRestoreFailedForAccount:v7 failedDomainNames:v10];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to post the follow up due to nil account: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  v12 = [NSNumber numberWithBool:v7 != 0];
  [v4 setReply:v12];

  [v4 sendReply];
}

- (void)_clearAllPendingFollowUps:(id)a3
{
  v3 = a3;
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
    [v3 setReply:v9];
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
    [v3 setReply:v11];

    v9 = [MBError sanitizedError:v7];
    [v3 setReplyError:v9];
  }

  [v3 sendReply];
}

- (void)_respondSynchronouslyTo:(id)a3 with:(id)a4
{
  v10 = 0;
  v5 = *(a4 + 2);
  v6 = a3;
  v7 = v5(a4, &v10);
  v8 = v10;
  [v6 setReply:v7];

  v9 = [MBError sanitizedError:v8];

  [v6 setReplyError:v9];
  [v6 sendReply];
}

- (void)_respondSynchronouslyTo:(id)a3 description:(id)a4 withAccount:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001632AC;
  v10[3] = &unk_1003BFE68;
  v11 = a4;
  v12 = a5;
  v8 = v12;
  v9 = v11;
  [(MBXPCServer *)self _respondSynchronouslyTo:a3 with:v10];
}

- (BOOL)_checkForBackupCtlPrivileged:(id)a3 description:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!a5)
  {
    __assert_rtn("[MBXPCServer _checkForBackupCtlPrivileged:description:error:]", "MBXPCServer.m", 2718, "error");
  }

  v9 = v8;
  v10 = [v7 connection];
  v11 = [v10 xpcConnection];
  v12 = sub_100152914(v11, @"com.apple.private.backupctl-privileged-command.internal", a5);

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
      *a5 = v13 = 0;
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