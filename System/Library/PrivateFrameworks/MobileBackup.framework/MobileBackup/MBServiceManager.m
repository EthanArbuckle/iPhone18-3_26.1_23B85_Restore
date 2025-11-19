@interface MBServiceManager
+ (id)loadRestoreStateInfo;
+ (void)saveRestoreStateInfo:(id)a3;
- (BOOL)deleteAccountWithServiceAccount:(id)a3 error:(id *)a4;
- (BOOL)deleteBackupUDID:(id)a3 disableIfCurrentDevice:(BOOL)a4 account:(id)a5 connection:(id)a6 error:(id *)a7;
- (BOOL)discountCameraRollQuotaForBackupUDID:(id)a3 account:(id)a4 connection:(id)a5 error:(id *)a6;
- (BOOL)discountCameraRollQuotaWithAccount:(id)a3 connection:(id)a4 error:(id *)a5;
- (BOOL)isBackupEnabledForDomainName:(id)a3 account:(id)a4;
- (BOOL)setupBackupWithPasscode:(id)a3 account:(id)a4 connection:(id)a5 error:(id *)a6;
- (BOOL)startBackupWithOptions:(id)a3 reason:(int64_t)a4 xpcActivity:(id)a5 account:(id)a6 connection:(id)a7 error:(id *)a8;
- (BOOL)startScanWithAccount:(id)a3 error:(id *)a4;
- (MBDebugContext)debugContext;
- (MBServiceAccount)account;
- (MBServiceEncryptionManager)serviceEncryptionManager;
- (MBServiceLockManager)lockManager;
- (MBServiceManager)init;
- (id)_restoreStateWithAccount:(id)a3;
- (id)_settingsContextForBackupUDID:(id)a3 account:(id)a4;
- (id)backgroundRestoreInfoWithAccount:(id)a3;
- (id)description;
- (id)getBuddyDataStashForBackupUDID:(id)a3 snapshotID:(unint64_t)a4 account:(id)a5 connection:(id)a6 error:(id *)a7;
- (id)loadRestoreStateWithAccount:(id)a3;
- (id)restoreStateWithError:(id *)a3;
- (void)_cancelAllBackgroundRestoreEngines;
- (void)_cleanupStaleStateWithAccount:(id)a3;
- (void)_clearDeferredDiscountingCameraRollQuota;
- (void)_deferDiscountingCameraRollQuota;
- (void)_notifyDisplayWifi;
- (void)_notifyRestoreCompleted;
- (void)_obliterating;
- (void)boostBackgroundRestoreWithAccount:(id)a3 completionHandler:(id)a4;
- (void)boostManualBackupWithAccount:(id)a3 completionHandler:(id)a4;
- (void)cancelEnginesWithAccount:(id)a3 connection:(id)a4;
- (void)dealloc;
- (void)deviceIsLocking;
- (void)deviceIsUnlocked;
- (void)reachabilityMonitorDidDetectWifiStatusChange:(BOOL)a3;
- (void)repair;
- (void)serviceDidHoldLock:(id)a3;
- (void)startDataTransferWithPreflightInfo:(id)a3 connection:(id)a4 completion:(id)a5;
- (void)startKeychainDataImportWithKeychainInfo:(id)a3 connection:(id)a4 completion:(id)a5;
- (void)startKeychainDataTransferWithConnection:(id)a3 completion:(id)a4;
- (void)startPreflightWithConnection:(id)a3 completion:(id)a4;
@end

@implementation MBServiceManager

- (MBServiceManager)init
{
  v35.receiver = self;
  v35.super_class = MBServiceManager;
  v2 = [(MBServiceManager *)&v35 _init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    engines = v2->_engines;
    v2->_engines = v3;

    atomic_store(0, &v2->_appDataDidFinishRestore);
    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(Name, v7);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v8;

    v10 = dispatch_group_create();
    serviceGroup = v2->_serviceGroup;
    v2->_serviceGroup = v10;

    v12 = dispatch_queue_create("com.apple.MobileBackup.user-notification-queue", 0);
    userNotificationQueue = v2->_userNotificationQueue;
    v2->_userNotificationQueue = v12;

    v14 = objc_alloc_init(NSMutableSet);
    batchRestoreOps = v2->_batchRestoreOps;
    v2->_batchRestoreOps = v14;

    v16 = objc_opt_new();
    personaState = v2->_personaState;
    v2->_personaState = v16;

    v18 = [MBServiceAccount alloc];
    v19 = +[UMUserPersona currentPersona];
    v34 = 0;
    v20 = [(MBServiceAccount *)v18 initWithPersona:v19 error:&v34];
    v21 = v34;
    account = v2->_account;
    v2->_account = v20;

    v23 = v2->_account;
    if (!v23)
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to resolve the account for the current persona: %@", buf, 0xCu);
        v31 = v21;
        _MBLog();
      }

      v23 = v2->_account;
    }

    buf[0] = 0;
    v25 = [(MBServiceAccount *)v23 persona];
    v26 = [v25 getBooleanValueForKey:@"AirTrafficFinishedRestoring" keyExists:buf];

    if (v26)
    {
      v27 = buf[0] == 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = !v27;
    atomic_store(v28, &v2->_airTrafficDidFinishRestore);
    v29 = v2->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001639DC;
    block[3] = &unk_1003BC0B0;
    v33 = v2;
    dispatch_sync(v29, block);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_lowDiskSource);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.data_eschaton", 0);
  userNotificationQueue = self->_userNotificationQueue;
  if (userNotificationQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100163CD8;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_async(userNotificationQueue, block);
    dispatch_sync(self->_userNotificationQueue, &stru_1003BFEA8);
  }

  notify_cancel(self->_obliterateToken);
  v5.receiver = self;
  v5.super_class = MBServiceManager;
  [(MBServiceManager *)&v5 dealloc];
}

- (MBServiceEncryptionManager)serviceEncryptionManager
{
  serviceEncryptionManager = self->_serviceEncryptionManager;
  if (serviceEncryptionManager)
  {
    v3 = serviceEncryptionManager;
  }

  else
  {
    v5 = [MBServiceAccount alloc];
    v6 = +[UMUserPersona currentPersona];
    v19 = 0;
    v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v19];
    v8 = v19;

    if (!v7)
    {
      v15 = +[NSAssertionHandler currentHandler];
      v16 = [NSString stringWithUTF8String:"[MBServiceManager serviceEncryptionManager]"];
      [v15 handleFailureInFunction:v16 file:@"MBServiceManager.m" lineNumber:159 description:{@"nil account: %@", v8}];
    }

    v9 = MBDeviceUDID_Legacy();
    v10 = [(MBServiceManager *)self _settingsContextForBackupUDID:v9 account:v7];

    v11 = [[MBServiceEncryptionManager alloc] initWithSettingsContext:v10];
    v12 = self->_serviceEncryptionManager;
    self->_serviceEncryptionManager = v11;

    v13 = self->_serviceEncryptionManager;
    if (!v13)
    {
      v17 = +[NSAssertionHandler currentHandler];
      v18 = [NSString stringWithUTF8String:"[MBServiceManager serviceEncryptionManager]"];
      [v17 handleFailureInFunction:v18 file:@"MBServiceManager.m" lineNumber:162 description:{@"nil encryption manager: %@", v8}];

      v13 = self->_serviceEncryptionManager;
    }

    v3 = v13;
  }

  return v3;
}

- (MBServiceLockManager)lockManager
{
  lockManager = self->_lockManager;
  if (lockManager)
  {
    v3 = lockManager;
  }

  else
  {
    v5 = [(MBServiceManager *)self account];
    v6 = [v5 reloaded];
    v7 = [(MBServiceRestoreSession *)self->_restoreSession backupUDID];
    v3 = [(MBServiceManager *)self lockManagerWithAccount:v6 backupUDID:v7 type:1];
  }

  return v3;
}

- (MBServiceAccount)account
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_account)
  {
    v3 = [MBServiceAccount alloc];
    v4 = +[UMUserPersona currentPersona];
    v11 = 0;
    v5 = [(MBServiceAccount *)v3 initWithPersona:v4 error:&v11];
    v6 = v11;
    account = v2->_account;
    v2->_account = v5;

    if (!v2->_account)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(MBS) Failed to fetch account: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }

  objc_sync_exit(v2);

  v9 = v2->_account;

  return v9;
}

+ (id)loadRestoreStateInfo
{
  v2 = CFPreferencesCopyValue(@"RestoreStateInfo", @"com.apple.MobileBackup", kMBMobileUserName, kCFPreferencesAnyHost);
  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  v3 = [[MBStateInfo alloc] initWithDictionaryRepresentation:v2];
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 dictionaryRepresentation];
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Loaded restore state: %@", buf, 0xCu);

      v7 = [v3 dictionaryRepresentation];
      _MBLog();
    }
  }

LABEL_9:

  return v3;
}

+ (void)saveRestoreStateInfo:(id)a3
{
  if (a3)
  {
    v3 = [a3 dictionaryRepresentation];
    v4 = kMBMobileUserName;
    CFPreferencesSetValue(@"RestoreStateInfo", v3, @"com.apple.MobileBackup", kMBMobileUserName, kCFPreferencesAnyHost);
    v5 = CFPreferencesSynchronize(@"com.apple.MobileBackup", v4, kCFPreferencesAnyHost);
    v6 = MBGetDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saved restore state: %@", buf, 0xCu);
LABEL_7:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = @"com.apple.MobileBackup";
      v10 = 2112;
      v11 = @"RestoreStateInfo";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to sync preferences for %@ domain (%@)", buf, 0x16u);
      goto LABEL_7;
    }
  }
}

- (id)loadRestoreStateWithAccount:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v6 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v5];
  v7 = [v6 restore];

  if (v7)
  {
    v8 = [v6 restore];
    v9 = [v8 copy];

    goto LABEL_42;
  }

  v10 = [MBServiceRestoreSession currentRestoreSessionWithAccount:v5];
  restoreSession = self->_restoreSession;
  self->_restoreSession = v10;

  if (self->_restoreSession)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_restoreSession;
      *buf = 138412290;
      v56 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loaded restore session: %@", buf, 0xCu);
      v46 = self->_restoreSession;
      _MBLog();
    }
  }

  v14 = [objc_opt_class() loadRestoreStateInfo];
  v15 = self->_restoreSession;
  if (!v15)
  {
    if (v14)
    {
      if ([v14 isBackground] && objc_msgSend(v14, "state") != 4 && objc_msgSend(v14, "state") != 6)
      {
        [v14 setState:4];
        [v14 setIsBackground:1];
        LODWORD(v19) = 1.0;
        [v14 setProgress:v19];
        [v14 setEstimatedTimeRemaining:0];
        [objc_opt_class() saveRestoreStateInfo:v14];
      }
    }

    else
    {
      v14 = [[MBStateInfo alloc] initWithState:0 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
    }

    [v6 setRestore:{v14, v46}];
    goto LABEL_40;
  }

  v16 = [(MBServiceRestoreSession *)v15 isFinishing];
  if (v16)
  {
    v17 = 6;
  }

  else
  {
    v17 = 5;
  }

  if (v16)
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  self->_serviceState = v17;
  [v6 setServiceState:v46];
  if (!v14)
  {
    v14 = [[MBStateInfo alloc] initWithState:v18 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
    [v14 setIsBackground:1];
    if (!v14)
    {
      __assert_rtn("[MBServiceManager loadRestoreStateWithAccount:]", "MBServiceManager.m", 239, "restoreState");
    }

    goto LABEL_25;
  }

  if (![v14 isBackground] || objc_msgSend(v14, "state") != v18)
  {
    [v14 setState:v18];
    [v14 setIsBackground:1];
LABEL_25:
    [v6 setRestore:v14];
    [objc_opt_class() saveRestoreStateInfo:v14];
    goto LABEL_26;
  }

  [v6 setRestore:v14];
LABEL_26:
  v20 = objc_alloc_init(MBServiceReachabilityMonitor);
  reachabilityMonitor = self->_reachabilityMonitor;
  self->_reachabilityMonitor = v20;

  objc_initWeak(&location, self);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100164D0C;
  v52[3] = &unk_1003BFED0;
  objc_copyWeak(&v53, &location);
  [(MBServiceReachabilityMonitor *)self->_reachabilityMonitor setWifiStatusChangedCallback:v52];
  [(MBServiceReachabilityMonitor *)self->_reachabilityMonitor setMonitoring:1];
  if ([(MBServiceRestoreSession *)self->_restoreSession isFinishing])
  {
    v22 = [(MBServiceManager *)self lockManager];
    [v22 releaseLockAsync];
  }

  else
  {
    v22 = [(MBServiceManager *)self lockManager];
    [v22 startRenewingLock];
  }

  v23 = [(MBServiceManager *)self serviceEncryptionManager];
  v51 = 0;
  v24 = [v23 loadRestoreKeyBagsByIDWithError:&v51];
  v25 = v51;
  restoreKeyBagsByID = self->_restoreKeyBagsByID;
  self->_restoreKeyBagsByID = v24;

  if (!self->_restoreKeyBagsByID)
  {
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to load restore keybags while loading restore session: %@", buf, 0xCu);
      v47 = v25;
      _MBLog();
    }

    v28 = [(MBServiceManager *)self account];
    v29 = [v28 persona];
    [v29 setPreferencesValue:&__kCFBooleanTrue forKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked"];
  }

  [(MBServiceManager *)self _notifyRestoreCompleted];
  v30 = [(MBServiceRestoreSession *)self->_restoreSession startDate];
  v31 = [v30 dateByAddingTimeInterval:1209600.0];

  v32 = MBGetDefaultLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = v32;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = MBStringWithDate();
      *buf = 138412290;
      v56 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Restore will time out on %@", buf, 0xCu);
    }

    v48 = MBStringWithDate();
    _MBLog();
  }

  [v31 timeIntervalSinceReferenceDate];
  v36 = v35;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100164D5C;
  block[3] = &unk_1003BFEF8;
  block[4] = self;
  v50 = v5;
  self->_warnTimerRef = CFRunLoopTimerCreateWithHandler(0, v36, 86400.0, 0, 0, block);
  Main = CFRunLoopGetMain();
  CFRunLoopAddTimer(Main, self->_warnTimerRef, kCFRunLoopCommonModes);
  v38 = +[MBDaemon sharedDaemon];
  [v38 holdWorkAssertion:a2];

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);
LABEL_40:
  v39 = [v6 restore];
  if (!v39)
  {
    __assert_rtn("[MBServiceManager loadRestoreStateWithAccount:]", "MBServiceManager.m", 308, "personaState.restore");
  }

  v40 = +[MBNotificationCenter sharedNotificationCenter];
  v41 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:v5];
  v42 = [v41 restore];
  v43 = [v42 state];
  [v40 postNotification:kMBManagerRestoreStateChangedNotification ifStateChanged:v43];

  v44 = [v6 restore];
  v9 = [v44 copy];

LABEL_42:

  return v9;
}

- (void)_cleanupStaleStateWithAccount:(id)a3
{
  v38 = a3;
  if (MBAcquireRestoreLock())
  {
    v3 = +[MBLockdown buddySetupState];
    if ([v3 isEqualToString:@"RestoringFromBackup"])
    {
      v4 = +[MBLockdown connect];
      v5 = MBGetDefaultLog();
      v6 = v3;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = @"RestoringFromBackup";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleanup: Clearing stale lockdown state %@", buf, 0xCu);
        v32 = @"RestoringFromBackup";
        _MBLog();
      }

      v51 = 0;
      v7 = [v4 removeObjectWithDomain:@"com.apple.purplebuddy" andKey:@"SetupState" withError:&v51];
      v8 = v51;
      if ((v7 & 1) == 0)
      {
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = @"RestoringFromBackup";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cleanup: Failed to clear lockdown state %@", buf, 0xCu);
          v32 = @"RestoringFromBackup";
          _MBLog();
        }
      }

      v50 = v8;
      v10 = [v4 removeObjectWithDomain:@"com.apple.purplebuddy" andKey:@"RestoreState" withError:{&v50, v32}];
      v11 = v50;

      if ((v10 & 1) == 0)
      {
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = @"RestoringFromBackup";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Cleanup: Failed to clear lockdown state %@", buf, 0xCu);
          v32 = @"RestoringFromBackup";
          _MBLog();
        }
      }

      [v4 disconnect];
      v3 = v6;
    }

    if (v3 && ([v3 isEqualToString:@"RestoringFromBackup"] & 1) == 0)
    {
      v13 = [v38 persona];
      v14 = v13;
      v36 = v3;
      if (v13)
      {
        v37 = v13;
      }

      else
      {
        v37 = [MBPersona personalPersonaWithError:0];
      }

      v16 = [[NSMutableArray alloc] initWithCapacity:3];
      if (v37)
      {
        v17 = [v37 userIncompleteRestoreDirectory];
        [v16 addObject:v17];

        v18 = [v37 sharedIncompleteRestoreDirectory];
        [v16 addObject:v18];
      }

      v19 = +[NSFileManager defaultManager];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v16;
      v20 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
      if (v20)
      {
        v21 = *v47;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v47 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v46 + 1) + 8 * i);
            if ([v19 fileExistsAtPath:v23 isDirectory:{0, v33, v34, v35}])
            {
              v45 = 0;
              v24 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v23 identifiedBy:@"restore-cleanup" error:&v45];
              v25 = v45;
              if (v24)
              {
                v26 = [v24 makeTemporaryFilePath];
                v44 = v25;
                v27 = [v19 moveItemAtPath:v23 toPath:v26 error:&v44];
                v28 = v44;

                if (v27)
                {
                  v29 = +[MBDaemon sharedDaemon];
                  [v29 holdWorkAssertion:a2];

                  v30 = dispatch_get_global_queue(17, 0);
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_1001656E0;
                  block[3] = &unk_1003BDAE8;
                  v42 = v24;
                  v43 = a2;
                  dispatch_async(v30, block);

                  v31 = v42;
                }

                else
                {
                  v31 = MBGetDefaultLog();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412802;
                    v53 = v23;
                    v54 = 2112;
                    v55 = v26;
                    v56 = 2112;
                    v57 = v28;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Cleanup: Unable to move %@ to cleanup dir at %@, %@", buf, 0x20u);
                    v34 = v26;
                    v35 = v28;
                    v33 = v23;
                    _MBLog();
                  }
                }

                v25 = v28;
              }

              else
              {
                v26 = MBGetDefaultLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v53 = v23;
                  v54 = 2112;
                  v55 = v25;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Cleanup: Unable to create cleanup dir on the same volume as %@, %@", buf, 0x16u);
                  v33 = v23;
                  v34 = v25;
                  _MBLog();
                }
              }
            }
          }

          v20 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
        }

        while (v20);
      }

      v3 = v36;
    }

    MBReleaseRestoreLock();
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cleanup: Unable to acquire the MBS restore lock - skipping cleaning stale MBS restore state", buf, 2u);
      _MBLog();
    }
  }
}

- (BOOL)setupBackupWithPasscode:(id)a3 account:(id)a4 connection:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [MBError errorWithCode:203 format:@"MBS backups are disabled. Refusing to run a backup with this manager.", a5];
  }

  return 0;
}

- (void)deviceIsLocking
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Keybag is locking", buf, 2u);
    _MBLog();
  }

  stateQueue = self->_stateQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100165B78;
  v6[3] = &unk_1003BDAE8;
  v6[4] = self;
  v6[5] = a2;
  dispatch_async(stateQueue, v6);
}

- (void)deviceIsUnlocked
{
  v4 = os_transaction_create();
  v5 = [(MBServiceManager *)self serviceEncryptionManager];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Device is unlocked", buf, 2u);
    _MBLog();
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100165F58;
  block[3] = &unk_1003BC2E0;
  block[4] = self;
  v8 = v5;
  v26 = v8;
  v9 = v4;
  v27 = v9;
  dispatch_async(stateQueue, block);
  v10 = objc_opt_self();
  v11 = +[MBDaemon sharedDaemon];
  [v11 holdWorkAssertion:a2];

  v12 = dispatch_get_global_queue(17, 0);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100166118;
  v21 = &unk_1003BDB10;
  v23 = v9;
  v24 = a2;
  v22 = v8;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, &v18);

  v15 = [(MBServiceManager *)self account:v18];
  v16 = [v15 persona];
  [v16 setPreferencesValue:&__kCFBooleanFalse forKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked"];

  v17 = objc_opt_self();
}

- (BOOL)deleteAccountWithServiceAccount:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting account", v10, 2u);
    _MBLog();
  }

  v7 = [[MBService alloc] initWithAccount:v5];
  if (v7)
  {
    v8 = [(MBService *)v7 deleteAccountWithError:a4];
  }

  else if (a4)
  {
    [MBError errorWithCode:210 format:@"No account"];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteBackupUDID:(id)a3 disableIfCurrentDevice:(BOOL)a4 account:(id)a5 connection:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    __assert_rtn("[MBServiceManager deleteBackupUDID:disableIfCurrentDevice:account:connection:error:]", "MBServiceManager.m", 544, "account");
  }

  v15 = v14;
  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deleting backup %@", &buf, 0xCu);
    _MBLog();
  }

  if ([v12 length])
  {
    v17 = [[MBService alloc] initWithAccount:v13];
    if (v17)
    {
      v18 = MBDeviceUDID_Legacy();
      v19 = [v12 isEqualToString:v18];

      if (v19)
      {
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 1;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v36 = 0x3032000000;
        v37 = sub_1001665D4;
        v38 = sub_1001665E4;
        v39 = 0;
        stateQueue = self->_stateQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001665EC;
        block[3] = &unk_1003BFF48;
        block[4] = self;
        v24 = v17;
        v25 = v12;
        p_buf = &buf;
        v30 = a4;
        v26 = v13;
        v27 = v15;
        v29 = &v31;
        dispatch_sync(stateQueue, block);
        v21 = *(v32 + 24);
        if (a7 && (v32[3] & 1) == 0)
        {
          *a7 = *(*(&buf + 1) + 40);
          v21 = *(v32 + 24);
        }

        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(&v31, 8);
      }

      else
      {
        v21 = [(MBService *)v17 deleteBackupForUDID:v12 error:a7];
      }
    }

    else if (a7)
    {
      [MBError errorWithCode:210 format:@"No account"];
      *a7 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else if (a7)
  {
    [MBError errorWithCode:1 format:@"Empty backup UDID"];
    *a7 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

- (void)cancelEnginesWithAccount:(id)a3 connection:(id)a4
{
  v5 = os_transaction_create();
  stateQueue = self->_stateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100166878;
  v8[3] = &unk_1003BC060;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(stateQueue, v8);
}

- (void)_cancelAllBackgroundRestoreEngines
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling all background restore engines", buf, 2u);
    _MBLog();
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166A24;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (id)backgroundRestoreInfoWithAccount:(id)a3
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Restore Background Info not supported for MBS", v5, 2u);
    _MBLog();
  }

  return 0;
}

- (id)getBuddyDataStashForBackupUDID:(id)a3 snapshotID:(unint64_t)a4 account:(id)a5 connection:(id)a6 error:(id *)a7
{
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BuddyStashData not supported for MBS", v9, 2u);
    _MBLog();
  }

  return 0;
}

- (BOOL)startBackupWithOptions:(id)a3 reason:(int64_t)a4 xpcActivity:(id)a5 account:(id)a6 connection:(id)a7 error:(id *)a8
{
  if (a8)
  {
    *a8 = [MBError errorWithCode:203 format:@"MBS backups are disabled. Refusing to run a backup with this manager", a5, a6, a7];
  }

  return 0;
}

- (id)_restoreStateWithAccount:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBServiceManager _restoreStateWithAccount:]", "MBServiceManager.m", 668, "account");
  }

  v5 = v4;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1001665D4;
  stateQueue = self->_stateQueue;
  v17 = sub_1001665E4;
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166D58;
  block[3] = &unk_1003BCAE8;
  v11 = v5;
  v12 = &v13;
  block[4] = self;
  v7 = v5;
  dispatch_sync(stateQueue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)restoreStateWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBServiceManager restoreStateWithError:]", "MBServiceManager.m", 679, "error");
  }

  v5 = [(MBServiceManager *)self account];
  if (v5)
  {
    v6 = [(MBServiceManager *)self _restoreStateWithAccount:v5];
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a3;
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch restore state due to nil account: %{public}@", buf, 0xCu);
      v18 = *a3;
      _MBLog();
    }

    v9 = +[UMUserPersona currentPersona];
    v19 = 0;
    v10 = [MBPersona personaWithUMPersona:v9 error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = [v10 copyPreferencesValueForKey:@"RestoreSession" class:objc_opt_class()];
      v13 = [v10 copyPreferencesValueForKey:@"RestoreStateInfo" class:objc_opt_class()];
      v14 = v13;
      if (v12)
      {
        *a3 = [MBError errorWithCode:210 format:@"No account found"];

        v6 = 0;
      }

      else
      {
        if (!v13 || (v6 = [[MBStateInfo alloc] initWithDictionaryRepresentation:v13]) == 0)
        {
          v6 = [[MBStateInfo alloc] initWithState:0 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
        }
      }
    }

    else
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to create a persona: %{public}@", buf, 0xCu);
        _MBLog();
      }

      v16 = v11;
      v6 = 0;
      *a3 = v11;
    }
  }

  return v6;
}

- (BOOL)startScanWithAccount:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MBError errorWithCode:203 format:@"MBS backups are disabled. Refusing to start a scan with this manager."];
  }

  return 0;
}

- (BOOL)isBackupEnabledForDomainName:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[MBServiceManager isBackupEnabledForDomainName:account:]", "MBServiceManager.m", 791, "0 && Unexpected call");
}

- (void)repair
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Repairing file system if needed", v3, 2u);
    _MBLog();
  }
}

- (BOOL)discountCameraRollQuotaWithAccount:(id)a3 connection:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = MBDeviceUDID_Legacy();
  LOBYTE(a5) = [(MBServiceManager *)self discountCameraRollQuotaForBackupUDID:v10 account:v9 connection:v8 error:a5];

  return a5;
}

- (BOOL)discountCameraRollQuotaForBackupUDID:(id)a3 account:(id)a4 connection:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v26 = a5;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not counting camera roll against iCloud quota", buf, 2u);
    _MBLog();
  }

  v14 = [[MBService alloc] initWithAccount:v12];
  if (v14)
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001679BC;
    v28[3] = &unk_1003BFF70;
    v28[4] = buf;
    MBPerformWithCache(v28);
    if (v30[24])
    {
      v15 = +[MBDaemon sharedDaemon];
      [v15 holdWorkAssertion:a2];

      v27 = 0;
      v16 = [(MBService *)v14 discountCameraRollQuotaForBackupUDID:v11 error:&v27];
      v17 = v27;
      if (v16)
      {
        v18 = 1;
      }

      else
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v33 = 138412290;
          v34 = v17;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to discount camera roll from iCloud quota: %@", v33, 0xCu);
          v25 = v17;
          _MBLog();
        }

        v18 = 0;
      }

      v22 = [MBDaemon sharedDaemon:v25];
      [v22 releaseWorkAssertion:a2];

      if (a6 && v17)
      {
        v23 = v17;
        *a6 = v17;
      }

      if (v18)
      {
        [(MBServiceManager *)self _clearDeferredDiscountingCameraRollQuota];
      }

      else
      {
        [(MBServiceManager *)self _deferDiscountingCameraRollQuota];
      }
    }

    else
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to modify quota: No backup", v33, 2u);
        _MBLog();
      }

      if (a6)
      {
        *a6 = [MBError errorWithCode:204 format:@"No backup"];
      }

      [(MBServiceManager *)self _deferDiscountingCameraRollQuota];
      v18 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to modify quota: No account", buf, 2u);
      _MBLog();
    }

    if (a6)
    {
      *a6 = [MBError errorWithCode:210 format:@"No account"];
    }

    [(MBServiceManager *)self _deferDiscountingCameraRollQuota];
    v18 = 0;
  }

  return v18;
}

- (void)_deferDiscountingCameraRollQuota
{
  v3 = [(MBServiceManager *)self account];
  v2 = [v3 persona];
  [v2 setPreferencesValue:&__kCFBooleanTrue forKey:@"HasDeferredDiscountingQuota"];
}

- (void)_clearDeferredDiscountingCameraRollQuota
{
  v3 = [(MBServiceManager *)self account];
  v2 = [v3 persona];
  [v2 setPreferencesValue:0 forKey:@"HasDeferredDiscountingQuota"];
}

- (id)_settingsContextForBackupUDID:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MBServiceSettingsContext);
  [(MBServiceSettingsContext *)v8 setAccount:v6];

  [(MBServiceSettingsContext *)v8 setLockManager:self->_lockManager];
  [(MBServiceSettingsContext *)v8 setBackupUDID:v7];

  v9 = MBGetCacheDir();
  [(MBServiceSettingsContext *)v8 setCacheDir:v9];

  return v8;
}

- (void)_notifyRestoreCompleted
{
  v3 = +[MBNotificationCenter sharedNotificationCenter];
  v4 = +[MBUserNotificationManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100167D80;
  v6[3] = &unk_1003BC060;
  v7 = v3;
  v8 = self;
  v5 = v3;
  [v4 deferUntilAfterSetupIsDone:v6];
}

- (void)serviceDidHoldLock:(id)a3
{
  v3 = [(MBServiceManager *)self lockManager];
  [v3 resetRenewalTimer];
}

- (void)_obliterating
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Obliteration notification received", buf, 2u);
    _MBLog();
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001680D8;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)_notifyDisplayWifi
{
  v12 = +[MBUserNotification notification];
  [v12 setIdentifier:@"NeedsWifiAlert"];
  [v12 setInterval:86400.0];
  v3 = [@"MBS_WIFI_NEEDED_ALERT_TITLE" mb_stringByAppendingGreenteaSuffix];
  v4 = MBLocalizedStringFromTable();
  [v12 setTitle:v4];

  v5 = [@"MBS_WIFI_NEEDED_ALERT_DESCRIPTION" mb_stringByAppendingGreenteaSuffix];
  v6 = MBLocalizedStringFromTable();
  [v12 setBody:v6];

  v7 = [@"MBS_WIFI_NEEDED_ALERT_SETTINGS_BUTTON" mb_stringByAppendingGreenteaSuffix];
  v8 = MBLocalizedStringFromTable();
  [v12 setButton:v8];

  v9 = MBLocalizedStringFromTable();
  [v12 setAlternateButton:v9];

  [v12 setCompletionBlock:&stru_1003BFF90];
  v10 = +[MBUserNotificationManager sharedManager];
  v11 = [(MBServiceManager *)self account];
  [v10 presentUserNotification:v12 account:v11];
}

- (void)reachabilityMonitorDidDetectWifiStatusChange:(BOOL)a3
{
  v3 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (v3)
    {
      v6 = "Y";
    }

    else
    {
      v6 = "N";
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got reachability callback in delegate. hasWifi: %s", buf, 0xCu);
    _MBLog();
  }

  userNotificationQueue = self->_userNotificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100168494;
  block[3] = &unk_1003BCAC0;
  v9 = v3;
  block[4] = self;
  dispatch_async(userNotificationQueue, block);
}

- (MBDebugContext)debugContext
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_debugContext)
  {
    v3 = +[MBDebugContext defaultDebugContext];
    debugContext = v2->_debugContext;
    v2->_debugContext = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_debugContext;

  return v5;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = MBServiceManager;
  v3 = [(MBServiceManager *)&v10 description];
  engines = self->_engines;
  v5 = [(MBServiceRestoreSession *)self->_restoreSession backupUDID];
  v6 = [(MBServiceRestoreSession *)self->_restoreSession snapshotID];
  v7 = [(MBServiceManager *)self delegate];
  v8 = [NSString stringWithFormat:@"{ %@ engine = %@ backupUUID = %@ snapshotID = %d delegate = %@ }", v3, engines, v5, v6, v7];

  return v8;
}

- (void)startPreflightWithConnection:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  (*(v6 + 2))(v6, 0, 0);
}

- (void)startKeychainDataTransferWithConnection:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  (*(v6 + 2))(v6, 0, 0);
}

- (void)startKeychainDataImportWithKeychainInfo:(id)a3 connection:(id)a4 completion:(id)a5
{
  v7 = a5;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  v7[2](v7, 0);
}

- (void)startDataTransferWithPreflightInfo:(id)a3 connection:(id)a4 completion:(id)a5
{
  v7 = a5;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  v7[2](v7, 0);
}

- (void)boostBackgroundRestoreWithAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  v6[2](v6, 0);
}

- (void)boostManualBackupWithAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  v6[2](v6, 0);
}

@end