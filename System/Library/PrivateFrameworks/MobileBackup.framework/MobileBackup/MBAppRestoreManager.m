@interface MBAppRestoreManager
- (BOOL)shouldObserveCoordinatorWithIdentity:(id)a3;
- (MBAppRestoreManager)initWithStateQueue:(id)a3 account:(id)a4;
- (MBAppRestoreManagerDelegate)delegate;
- (id)setUpDataPromiseForBundleID:(id)a3 error:(id *)a4;
- (void)_finishAppDataRestore;
- (void)_requestMDMAppInstallation;
- (void)_setUpDataPromiseForCoordinator:(id)a3;
- (void)cancelAndUninstallAllCoordinators;
- (void)restoreCoordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)restoreCoordinatorShouldBeginRestoringUserData:(id)a3;
- (void)retryAppDataDownloads;
- (void)startObservingInstallCoordinators;
- (void)updateProgressForCoordinatorWithBundleID:(id)a3 progress:(double)a4;
@end

@implementation MBAppRestoreManager

- (MBAppRestoreManager)initWithStateQueue:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MBAppRestoreManager;
  v9 = [(MBAppRestoreManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stateQueue, a3);
    atomic_store(0, &v10->_appDataDidFinishRestore);
    atomic_store(0, &v10->_cancelled);
    objc_storeStrong(&v10->_account, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MobileBackup.InstallCoordination", v11);
    coordinatorQueue = v10->_coordinatorQueue;
    v10->_coordinatorQueue = v12;

    v14 = dispatch_semaphore_create(5);
    coordinationSemaphore = v10->_coordinationSemaphore;
    v10->_coordinationSemaphore = v14;
  }

  return v10;
}

- (BOOL)shouldObserveCoordinatorWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [(MBAppRestoreManager *)self account];
  v6 = [v5 persona];

  v7 = [v6 personaIdentifier];
  v8 = [v4 personaUniqueString];
  if (([v7 isEqualToString:v8] & 1) == 0 && (!objc_msgSend(v6, "isPersonalPersona") || (objc_msgSend(v8, "isEqualToString:", @"PersonalPersonaPlaceholderString") & 1) == 0))
  {
    v9 = MBGetDefaultLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      goto LABEL_10;
    }

    v13 = [v4 bundleID];
    *buf = 138412802;
    v16 = v13;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "IX: Not observing coordinator for %@, %@ != %@", buf, 0x20u);

    v12 = [v4 bundleID];
    _MBLog();
    v10 = 0;
    goto LABEL_8;
  }

  v9 = MBGetDefaultLog();
  v10 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = [v4 bundleID];
    *buf = 138412546;
    v16 = v11;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "IX: Will observe coordinator for %@/%@", buf, 0x16u);

    v12 = [v4 bundleID];
    _MBLog();
LABEL_8:
  }

LABEL_10:

  return v10;
}

- (void)_requestMDMAppInstallation
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting MDM install of restored applications", buf, 2u);
    _MBLog();
  }

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = +[MDMClient sharedClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079AC8;
  v7[3] = &unk_1003BC010;
  v5 = v3;
  v8 = v5;
  [v4 requestInstallOfAppsInRestoreWithCompletion:v7];

  MBGroupWaitForever();
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished requesting MDM install of restored applications", buf, 2u);
    _MBLog();
  }
}

- (void)startObservingInstallCoordinators
{
  v3 = [[MBPowerAssertion alloc] initWithName:@"restore" timeout:600.0];
  [(MBPowerAssertion *)v3 hold];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "IX: Queuing up coordinator enumeration", buf, 2u);
    _MBLog();
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079CAC;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)_finishAppDataRestore
{
  if (BYSetupAssistantNeedsToRun())
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IX: Not notifying delegate of finished app restore while still in buddy", buf, 2u);
      _MBLog();
    }
  }

  else
  {
    v4 = 0;
    atomic_compare_exchange_strong(&self->_appDataDidFinishRestore, &v4, 1u);
    if (!v4)
    {
      v5 = atomic_load(&self->_cancelled);
      v6 = v5 & 1;
      v7 = dispatch_get_global_queue(17, 0);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10007AAA0;
      v8[3] = &unk_1003BCAC0;
      v8[4] = self;
      v9 = v6;
      dispatch_async(v7, v8);
    }
  }
}

- (void)restoreCoordinatorShouldBeginRestoringUserData:(id)a3
{
  v4 = [a3 identity];
  v5 = [v4 bundleID];

  if (!v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IX: Coordinator had no bundleID associated with it. Nothing to do", buf, 2u);
      _MBLog();
    }
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IX: We're being asked to restore user data for %@", buf, 0xCu);
    _MBLog();
  }

  coordinatorQueue = self->_coordinatorQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007AE04;
  block[3] = &unk_1003BC060;
  block[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(coordinatorQueue, block);
}

- (void)restoreCoordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 identity];
  v11 = [v10 bundleID];

  v12 = v8;
  v13 = MBGetDefaultLog();
  v14 = v13;
  if (!v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "IX: Got unsuccessful completion for coordinator with nil bundleID", buf, 2u);
      _MBLog();
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = IXStringForClientID();
    *buf = 138412802;
    v27 = v11;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IX: App %@ could not be installed with error %@. Canceled by %@", buf, 0x20u);

    IXStringForClientID();
    v23 = v22 = v9;
    v21 = v11;
    _MBLog();
  }

  if (a5 != 2)
  {
    v14 = [v12 userDataPromiseWithError:0];
    v16 = MBGetDefaultLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v17)
      {
        if ([v14 isComplete])
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        [v14 percentComplete:v21];
        *buf = 138412546;
        v27 = v18;
        v28 = 2048;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "IX: Coordinator was canceled but has already been promised data. Complete: %@, Progress: %.2f. Will continue restoring app data", buf, 0x16u);
        [v14 isComplete];
        [v14 percentComplete];
        _MBLog();
      }
    }

    else
    {
      if (v17)
      {
        *buf = 138412290;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "IX: Coordinator %@ was canceled but hasn't been promised app data yet. Queueing up data restore", buf, 0xCu);
        _MBLog();
      }

      coordinatorQueue = self->_coordinatorQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007B2E8;
      block[3] = &unk_1003BC060;
      block[4] = self;
      v25 = v11;
      dispatch_async(coordinatorQueue, block);

      v14 = 0;
    }

LABEL_17:
  }
}

- (void)updateProgressForCoordinatorWithBundleID:(id)a3 progress:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_appInstallCoordinators objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      [v7 updateProgress:a4];
    }

    else
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Coordinator couldn't be found for %@. Couldn't update progress", buf, 0xCu);
        _MBLog();
      }
    }
  }
}

- (void)retryAppDataDownloads
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C0AC;
  block[3] = &unk_1003BC2E0;
  block[4] = self;
  v6 = v4;
  v32 = v6;
  v7 = v3;
  v33 = v7;
  dispatch_sync(stateQueue, block);
  if ([v6 count])
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 count];
      *buf = 134217984;
      v35 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IX: Found %lu apps whose coordinators are no longer tracked by IX. Going to stop tracking them", buf, 0xCu);
      v22 = [v6 count];
      _MBLog();
    }

    v10 = self->_stateQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10007C338;
    v28[3] = &unk_1003BC060;
    v29 = v6;
    v30 = self;
    dispatch_sync(v10, v28);
  }

  v11 = [v7 count];
  v12 = MBGetDefaultLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      v14 = [v7 count];
      v15 = [(MBAppRestoreManager *)self account];
      v16 = [v15 accountIdentifier];
      *buf = 134218242;
      v35 = v14;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "IX: Found %lu apps whose data restores need to be restarted for account %@", buf, 0x16u);

      [v7 count];
      v17 = [(MBAppRestoreManager *)self account];
      v24 = [v17 accountIdentifier];
      _MBLog();
    }

    v18 = dispatch_get_global_queue(17, 0);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10007C430;
    v25[3] = &unk_1003BC060;
    v26 = v7;
    v27 = self;
    dispatch_async(v18, v25);

    v12 = v26;
  }

  else if (v13)
  {
    v19 = [(MBAppRestoreManager *)self account];
    v20 = [v19 accountIdentifier];
    *buf = 138412290;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "IX: Found no apps whose user data promises needed to be restarted. Nothing more to do for account %@", buf, 0xCu);

    v21 = [(MBAppRestoreManager *)self account];
    v23 = [v21 accountIdentifier];
    _MBLog();
  }
}

- (id)setUpDataPromiseForBundleID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10007C990;
  v23 = sub_10007C9A0;
  v24 = 0;
  stateQueue = self->_stateQueue;
  block = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10007C9A8;
  v15 = &unk_1003BCAE8;
  v18 = &v19;
  v16 = self;
  v8 = v6;
  v17 = v8;
  dispatch_sync(stateQueue, &block);
  v9 = v20[5];
  if (a4 && !v9)
  {
    *a4 = [MBError errorWithCode:1 format:@"Couldn't set up data promise for %@, probably because the coordinator no longer exists", v8, block, v13, v14, v15, v16];
    v9 = v20[5];
  }

  v10 = v9;

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (void)_setUpDataPromiseForCoordinator:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identity];
    v6 = [v5 bundleID];

    v7 = [v4 userDataPromiseWithError:0];
    v8 = MBGetDefaultLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "IX: Data promise already exists for %@. Will let it complete", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "IX: Setting up user data promise for %@", buf, 0xCu);
        _MBLog();
      }

      v8 = [[IXPromisedOutOfBandTransfer alloc] initWithName:v6 client:2 diskSpaceNeeded:0];
      [v8 setComplete:0];
      [v4 setUserDataPromise:v8 error:0];
      [AITransactionLog logStep:2 byParty:6 phase:1 success:1 forBundleID:v6 description:@"Starting app data restore"];
    }
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "IX: Can't set up promises for a null coordinator", buf, 2u);
      _MBLog();
    }
  }
}

- (void)cancelAndUninstallAllCoordinators
{
  if ((atomic_exchange(&self->_cancelled, 1u) & 1) == 0)
  {
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007CD84;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_sync(stateQueue, block);
  }
}

- (MBAppRestoreManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end