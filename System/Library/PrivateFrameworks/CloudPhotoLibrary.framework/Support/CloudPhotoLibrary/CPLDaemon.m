@interface CPLDaemon
- (BOOL)_processListener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)allowedProtocolForClientAccess:(id)a3;
- (id)daemonLibraryManager:(id)a3 engineWrapperWithClientLibraryBaseURL:(id)a4 cloudLibraryStateStorageURL:(id)a5 cloudLibraryResourceStorageURL:(id)a6 libraryIdentifier:(id)a7 mainScopeIdentifier:(id)a8 options:(unint64_t)a9 error:(id *)a10;
- (id)daemonLibraryManagerOtherLibraryManager:(id)a3 withLibraryIdentifier:(id)a4;
- (id)initForSyncBubble:(BOOL)a3 forceClientPush:(BOOL)a4;
- (id)wrapperArray:(id)a3 engineWrapperWithParameters:(id)a4 createIfNecessary:(BOOL)a5 queue:(id)a6 error:(id *)a7;
- (unint64_t)wrapperArray:(id)a3 countOfClientsForWrapper:(id)a4;
- (void)_daemonLibraryManagerWantsToExitNow:(id)a3;
- (void)_performAfterRegistrations:(id)a3;
- (void)_performOnceDeviceIsUnlocked:(id)a3;
- (void)_performPendingBlockAfterFirstUnlock;
- (void)_processConnectionDidInvalidate:(id)a3;
- (void)_reRunFastPassInitialDownloadIfNecessaryForWrapper:(id)a3 withReschedulerManager:(id)a4;
- (void)_registerAfterLaunchWhenAllEnginesAreOpened;
- (void)_registerForBackupRequests;
- (void)_registerForConfigurationRefresh;
- (void)_registerForFastPassInitialDownload;
- (void)_registerForMaintenance;
- (void)_registerForPeriodicUploadOfComputeStates;
- (void)_reportICPLFeatureCheckpoint:(unint64_t)a3;
- (void)_updateConfigurationRefreshIntervalIfNecessary;
- (void)_wrapperArray:(id)a3 forDaemon:(BOOL)a4 getStatusWithCompletionHandler:(id)a5;
- (void)daemonLibraryManager:(id)a3 wantsToExitAfterResettingParametersForLibraryWithIdentifier:(id)a4;
- (void)daemonLibraryManagerHasBeenDisconnected:(id)a3;
- (void)daemonLibraryManagerWantsToExitNow:(id)a3;
- (void)emergencyExitForWrapperArray:(id)a3;
- (void)enumerateDaemonLibraryManagersWithLibraryIdentifier:(id)a3 block:(id)a4;
- (void)getDaemonLibraryManagerStatusesWithCompletionHandler:(id)a3;
- (void)getEngineWrapperStatusesWithCompletionHandler:(id)a3;
- (void)initialDownloadHelper:(id)a3 checkActiveAccountWithCompletionHandler:(id)a4;
- (void)registerForSyncBubble;
- (void)startSyncTaskForDaemonLibraryManager:(id)a3;
- (void)uploadContent;
- (void)willSwitchUser;
- (void)wipeEnginesIfNecessaryWithCompletionHandler:(id)a3;
- (void)wrapperArray:(id)a3 getStatusDictionaryWithCompletionHandler:(id)a4;
- (void)wrapperArray:(id)a3 wrapperDidCompleteInitialSyncOfMainScope:(id)a4;
- (void)wrapperArray:(id)a3 wrapperNeedsInitialDownloadOfMainScope:(id)a4;
- (void)wrapperArray:(id)a3 wrapperShouldBeDropped:(id)a4;
- (void)wrapperArrayCountDidChange:(id)a3;
@end

@implementation CPLDaemon

- (id)initForSyncBubble:(BOOL)a3 forceClientPush:(BOOL)a4
{
  v5 = a3;
  v78.receiver = self;
  v78.super_class = CPLDaemon;
  v7 = [(CPLDaemon *)&v78 init];
  if (!v7)
  {
    return v7;
  }

  if (os_variant_has_internal_content())
  {
    sub_1001874A0();
  }

  *(v7 + 16) = v5;
  if (v5)
  {
    *(v7 + 17) = a4;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10000B7D8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Daemon is launching for sync bubble", buf, 2u);
      }
    }
  }

  else
  {
    sub_100187430();
  }

  v9 = +[NSDate date];
  v10 = *(v7 + 1);
  *(v7 + 1) = v9;

  v11 = objc_alloc_init(CPLBGSTActivitiesReport);
  v12 = *(v7 + 24);
  *(v7 + 24) = v11;

  __SBSSetStatusBarShowsActivityForApplication = &SBSSetStatusBarShowsActivityForApplication;
  +[NSXPCListener enableTransactions];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10000B7D8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Initializing and launching Daemon", buf, 2u);
    }
  }

  v14 = +[CPLCloudKitCoordinator sharedCoordinator];
  v15 = *(v7 + 7);
  *(v7 + 7) = v14;

  if ((*(v7 + 16) & 1) == 0)
  {
    v16 = objc_alloc_init(CPLCloudKitPushNotificationCenter);
    v17 = *(v7 + 8);
    *(v7 + 8) = v16;
  }

  [*(v7 + 7) setPushNotificationCenter:*(v7 + 8)];
  v18 = objc_alloc_init(NSMutableArray);
  v19 = *(v7 + 9);
  *(v7 + 9) = v18;

  v20 = objc_alloc_init(CPLPlatform);
  [CPLPlatform setPrequeliteStoreImplementationForPlatform:v20];
  v21 = +[NSUserDefaults standardUserDefaults];
  v22 = [v21 stringForKey:@"CPLFakeICloudPath"];
  if (!v22)
  {
    goto LABEL_30;
  }

  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    if (qword_1002C4F08 != -1)
    {
      sub_1001874F8();
    }

    v24 = NSClassFromString(@"EnginePlistTransport");
    v25 = NSClassFromString(@"EnginePlistLibrary");
    if (v24)
    {
      v26 = v25;
      if (v25)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v27 = sub_10000B7D8();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Using local transport for CPL Engine", buf, 2u);
          }
        }

        [v20 setPlatformImplementation:v24 forClass:objc_opt_class()];
        [v20 setPlatformImplementation:v26 forClass:objc_opt_class()];
        [*(v7 + 7) coordinatorWontBeUsed];
        goto LABEL_32;
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_10000B7D8();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to find local transport class", buf, 2u);
      }

LABEL_30:
    }
  }

  sub_100187520(v20);
LABEL_32:
  [CPLPlatform setDirectClientImplementationForPlatform:v20];
  if (*(v7 + 16) == 1)
  {
    v28 = objc_opt_class();
    [v20 setPlatformImplementation:v28 forClass:objc_opt_class()];
  }

  [CPLPlatform setDefaultPlatform:v20];
  v29 = dispatch_queue_attr_make_initially_inactive(0);
  v30 = dispatch_queue_create("com.apple.cloudphotod.daemon", v29);
  v31 = *(v7 + 16);
  *(v7 + 16) = v30;

  v32 = *(v7 + 16);
  dispatch_set_qos_class_fallback();
  v33 = *(v7 + 16);
  v73 = _NSConcreteStackBlock;
  v74 = 3221225472;
  v75 = sub_10000B81C;
  v76 = &unk_100271F40;
  v34 = v7;
  v77 = v34;
  xpc_set_idle_handler();
  v34[138] = 1;
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10000B904;
  v70[3] = &unk_100271F68;
  v72 = a2;
  v35 = v34;
  v71 = v35;
  [v35 _performOnceDeviceIsUnlocked:v70];
  signal(15, 1);
  v36 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v7 + 16));
  v38 = (v35 + 13);
  v37 = v35[13];
  v35[13] = v36;

  v39 = v35[13];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000BA48;
  handler[3] = &unk_100271F40;
  v40 = v35;
  v69 = v40;
  dispatch_source_set_event_handler(v39, handler);
  dispatch_resume(*v38);
  signal(29, 1);
  v41 = dispatch_source_create(&_dispatch_source_type_signal, 0x1DuLL, 0, *(v7 + 16));
  v43 = v40 + 14;
  v42 = v40[14];
  v40[14] = v41;

  *buf = 0;
  v65 = buf;
  v66 = 0x2020000000;
  v67 = 0;
  v44 = v40[14];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_100184BBC;
  v61[3] = &unk_100272028;
  v63 = buf;
  v45 = v40;
  v62 = v45;
  dispatch_source_set_event_handler(v44, v61);
  dispatch_resume(*v43);
  signal(30, 1);
  v46 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, *(v7 + 16));
  v48 = v45 + 15;
  v47 = v45[15];
  v45[15] = v46;

  v49 = v45[15];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100185078;
  v59[3] = &unk_100271F40;
  v50 = v45;
  v60 = v50;
  dispatch_source_set_event_handler(v49, v59);
  dispatch_resume(*v48);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v51 = sub_10000B7D8();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      *v79 = 138412290;
      v80 = @"com.apple.cloudphotod";
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "Daemon listening on %@", v79, 0xCu);
    }
  }

  v52 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.cloudphotod"];
  v53 = v50[4];
  v50[4] = v52;

  [v50[4] setDelegate:v50];
  [v50[4] _setQueue:*(v7 + 16)];
  [v50[4] resume];
  v54 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.cloudphotod.daemon"];
  v55 = v50[5];
  v50[5] = v54;

  [v50[5] setDelegate:v50];
  [v50[5] _setQueue:*(v7 + 16)];
  [v50[5] resume];
  v56 = objc_alloc_init(NSMutableArray);
  v57 = v50[6];
  v50[6] = v56;

  if (notify_post("com.apple.cpl.cloudphotoddidlaunch") && (_CPLSilentLogging & 1) == 0)
  {
    sub_1001875CC();
  }

  dispatch_activate(*(v7 + 16));

  _Block_object_dispose(buf, 8);
  return v7;
}

- (void)_performPendingBlockAfterFirstUnlock
{
  if (self->_isLocked)
  {
    (*(self->_pendingBlockAfterFirstUnlock + 2))();
    self->_isLocked = 0;
    pendingBlockAfterFirstUnlock = self->_pendingBlockAfterFirstUnlock;
    self->_pendingBlockAfterFirstUnlock = 0;
  }
}

- (void)_performOnceDeviceIsUnlocked:(id)a3
{
  v5 = a3;
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    sub_10018789C(self, v5);
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000BD38;
    v21[3] = &unk_100272028;
    v21[4] = self;
    v21[5] = &v22;
    v6 = objc_retainBlock(v21);
    v7 = kMobileKeyBagLockStatusNotifyToken;
    v8 = v23;
    queue = self->_queue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10000BDA0;
    v18 = &unk_100272090;
    v20 = &v22;
    v10 = v6;
    v19 = v10;
    if (notify_register_dispatch(v7, v8 + 6, queue, &v15))
    {
      v13 = [NSAssertionHandler currentHandler:v15];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLDaemon.m"];
      [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:546 description:@"Can't register to device protection changes notification"];

      abort();
    }

    v11 = [v5 copy];
    pendingBlockAfterFirstUnlock = self->_pendingBlockAfterFirstUnlock;
    self->_pendingBlockAfterFirstUnlock = v11;

    _Block_object_dispose(&v22, 8);
  }
}

- (void)_performAfterRegistrations:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_hasDoneInitialRegistration)
  {
    v9[2]();
  }

  else
  {
    performAfterRegistrations = self->_performAfterRegistrations;
    if (!performAfterRegistrations)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = self->_performAfterRegistrations;
      self->_performAfterRegistrations = v5;

      performAfterRegistrations = self->_performAfterRegistrations;
    }

    v7 = [v9 copy];
    v8 = objc_retainBlock(v7);
    [(NSMutableArray *)performAfterRegistrations addObject:v8];
  }
}

- (void)_registerAfterLaunchWhenAllEnginesAreOpened
{
  if (!self->_isLocked && !self->_hasDoneInitialRegistration && ![(CPLEngineWrapperArray *)self->_wrappers unopenedCount])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_10000B7D8();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Monitoring system requests", buf, 2u);
      }
    }

    if (!self->_forSyncBubble)
    {
      [(CPLDaemon *)self _registerForConfigurationRefresh];
      [(CPLDaemon *)self _registerForMaintenance];
      [(CPLDaemon *)self _registerForBackupRequests];
      [(CPLDaemon *)self _registerForFastPassInitialDownload];
      [(CPLDaemon *)self _registerForPeriodicUploadOfComputeStates];
      queue = self->_queue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000C10C;
      v19[3] = &unk_100271F40;
      v19[4] = self;
      v5 = v19;
      *buf = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1000026F8;
      v23 = &unk_100271E98;
      v24 = v5;
      v6 = queue;
      v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v6, v7);
    }

    [(CPLDaemon *)self registerForSyncBubble];
    self->_hasDoneInitialRegistration = 1;
    performAfterRegistrations = self->_performAfterRegistrations;
    if (performAfterRegistrations)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = performAfterRegistrations;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          v13 = 0;
          do
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            (*(*(*(&v15 + 1) + 8 * v13) + 16))(*(*(&v15 + 1) + 8 * v13));
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v25 count:16];
        }

        while (v11);
      }

      v14 = self->_performAfterRegistrations;
      self->_performAfterRegistrations = 0;
    }
  }
}

- (void)_updateConfigurationRefreshIntervalIfNecessary
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = [v3 taskRequestForIdentifier:@"com.apple.cloudphotod.configurationrefresh"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CPLEngineWrapperArray *)self->_wrappers mostRecentConfigurationDictionary];
      v6 = v5;
      if (!v5)
      {
        goto LABEL_15;
      }

      [v5 refreshInterval];
      v8 = v7;
      [v4 interval];
      if (v8 == v9)
      {
        goto LABEL_15;
      }

      [v4 setInterval:v8];
      [v4 setMinDurationBetweenInstances:v8 * 0.8];
      v10 = +[BGSystemTaskScheduler sharedScheduler];
      v18 = 0;
      v11 = [v10 updateTaskRequest:v4 error:&v18];
      v12 = v18;

      if (v11)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = sub_10000B7D8();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v20 = v8;
            v14 = "Updated the refresh interval of the configuration refresh task to %.0f seconds";
            v15 = v13;
            v16 = OS_LOG_TYPE_DEFAULT;
            v17 = 12;
LABEL_12:
            _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v17);
            goto LABEL_13;
          }

          goto LABEL_13;
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_10000B7D8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v20 = v8;
          v21 = 2112;
          v22 = v12;
          v14 = "Failed to update the refresh interval of the configuration refresh task to %.0f seconds: %@";
          v15 = v13;
          v16 = OS_LOG_TYPE_ERROR;
          v17 = 22;
          goto LABEL_12;
        }

LABEL_13:
      }

LABEL_15:
    }
  }
}

- (id)allowedProtocolForClientAccess:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"library"])
  {
    v4 = &protocolRef_CPLDaemonLibraryManagerProtocol;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if (([v3 isEqualToString:@"management"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"preferences") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"lightweight"))
  {
    v4 = &protocolRef_CPLDaemonLibraryManagerMinimalProtocol;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (void)_processConnectionDidInvalidate:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_processClients removeObject:?];
  }
}

- (BOOL)_processListener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.private.cloudphotod.access"];
  v9 = v8;
  if (v8 && ([v8 isEqual:@"management"] & 1) != 0)
  {
    v10 = sub_1000139E4();
    [v7 setExportedInterface:v10];
    [v7 setExportedObject:self];
    [v7 _setQueue:self->_queue];
    objc_initWeak(location, self);
    objc_initWeak(&from, v7);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000CF34;
    v13[3] = &unk_100272290;
    objc_copyWeak(&v14, location);
    objc_copyWeak(&v15, &from);
    [v7 setInvalidationHandler:v13];
    [(NSMutableArray *)self->_processClients addObject:v7];
    [v7 resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
    v11 = 1;
  }

  else
  {
    if (_CPLSilentLogging)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v10 = sub_10000B7D8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 138412546;
      *&location[4] = v7;
      v18 = 2112;
      v19 = @"com.apple.private.cloudphotod.access";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ has no valid entitlement for %@", location, 0x16u);
    }

    v11 = 0;
  }

LABEL_9:
  return v11;
}

- (id)daemonLibraryManager:(id)a3 engineWrapperWithClientLibraryBaseURL:(id)a4 cloudLibraryStateStorageURL:(id)a5 cloudLibraryResourceStorageURL:(id)a6 libraryIdentifier:(id)a7 mainScopeIdentifier:(id)a8 options:(unint64_t)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  if (self->_isLocked && MKBDeviceUnlockedSinceBoot() == 1)
  {
    [(CPLDaemon *)self _performPendingBlockAfterFirstUnlock];
  }

  if (self->_isLocked)
  {
    if (a10)
    {
      v22 = [CPLErrors cplErrorWithCode:100 description:@"Device is locked. File system is not available"];
LABEL_7:
      v23 = 0;
      *a10 = v22;
      goto LABEL_18;
    }
  }

  else
  {
    if (v17 && v18 && v19 && v20)
    {
      v24 = [[CPLEngineParameters alloc] initWithClientLibraryBaseURL:v17 cloudLibraryStateStorageURL:v18 cloudLibraryResourceStorageURL:v19 libraryIdentifier:v20 mainScopeIdentifier:v21 options:a9];
      v23 = [(CPLEngineWrapperArray *)self->_wrappers registeredWrapperCreateIfNecessaryWithParameters:v24 error:a10];

      goto LABEL_18;
    }

    if (v20)
    {
      v23 = [(CPLEngineWrapperArray *)self->_wrappers registeredWrapperWithLibraryIdentifier:v20 error:a10];
      goto LABEL_18;
    }

    if (a10)
    {
      v22 = [CPLErrors incorrectParametersErrorForParameter:@"libraryIdentifier"];
      goto LABEL_7;
    }
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (void)_daemonLibraryManagerWantsToExitNow:(id)a3
{
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = v4;
    v6 = sub_10000B7D8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ wants to exit now", &v8, 0xCu);
    }
  }

  [(CPLEngineWrapperArray *)self->_wrappers emergencyStop];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10000B7D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "All engines have been closed in emergency, exiting now", &v8, 2u);
    }
  }

  exit(0);
}

- (void)startSyncTaskForDaemonLibraryManager:(id)a3
{
  v4 = a3;
  if (qword_1002C4F38 != -1)
  {
    sub_100187FB0();
  }

  if (byte_1002C4F30 == 1)
  {
    logoutTask = self->_logoutTask;
    p_logoutTask = &self->_logoutTask;
    if (!logoutTask)
    {
      sub_100187FC4(v4, p_logoutTask);
    }
  }
}

- (id)daemonLibraryManagerOtherLibraryManager:(id)a3 withLibraryIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_daemonManagers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (v12 != v6)
        {
          if ([*(*(&v17 + 1) + 8 * i) isLibraryManager])
          {
            v13 = [v12 engineWrapper];
            v14 = [v13 libraryIdentifier];
            v15 = [v14 isEqualToString:v7];

            if (v15)
            {
              v9 = v12;
              goto LABEL_13;
            }
          }
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

- (void)enumerateDaemonLibraryManagersWithLibraryIdentifier:(id)a3 block:(id)a4
{
  v5 = a4;
  daemonManagers = self->_daemonManagers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D4C8;
  v8[3] = &unk_1002722B8;
  v9 = v5;
  v7 = v5;
  [(NSMutableArray *)daemonManagers enumerateObjectsUsingBlock:v8];
}

- (id)wrapperArray:(id)a3 engineWrapperWithParameters:(id)a4 createIfNecessary:(BOOL)a5 queue:(id)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (!self->_closing)
  {
    v44 = v12;
    v45 = [v13 clientLibraryBaseURL];
    if (v9)
    {
      v16 = [v13 clientLibraryBaseURL];
      v52 = 0;
      v51 = 0;
      v17 = [v16 getResourceValue:&v52 forKey:NSURLVolumeURLKey error:&v51];
      v18 = v52;
      v19 = v51;
      v20 = v19;
      if (v17)
      {
        v21 = v19;
LABEL_8:

        v23 = v21;
        goto LABEL_9;
      }

      v35 = [v16 URLByDeletingLastPathComponent];
      v49 = 0;
      v50 = 0;
      v36 = [v35 getResourceValue:&v50 forKey:NSURLVolumeURLKey error:&v49];
      v18 = v50;
      v21 = v49;

      if (v36)
      {
        v37 = +[NSFileManager defaultManager];
        v48 = v21;
        v43 = [v37 createDirectoryAtURL:v16 withIntermediateDirectories:0 attributes:0 error:&v48];
        v23 = v48;

        if (v43)
        {
LABEL_9:
          if (!v18 && (_CPLSilentLogging & 1) == 0)
          {
            sub_100188160(v45);
          }

          v24 = [[CPLEngineLibrary alloc] initWithParameters:v13];
          v15 = [[CPLEngineWrapper alloc] initWithParameters:v13 engine:v24 queue:v14];
          v25 = [[CPLEngineLibrarySupervisor alloc] initWithEngineLibrary:v24 queue:self->_queue];
          [v24 setSupervisor:v25];

          if (+[CPLResource cplShouldGenerateDerivatives])
          {
            v26 = [v24 store];
            v27 = [v26 derivativesCache];
            [v27 setDerivativeGeneratorClass:objc_opt_class()];
          }

          v28 = [v24 transport];
          v29 = [v28 platformObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!self->_forSyncBubble)
            {
              v41 = [v24 libraryIdentifier];
              [v24 processesInvolvedInSyncSessions];
              v30 = v42 = v14;
              v31 = [v24 clientAppBundleIdentifier];
              v53 = v31;
              v32 = [NSArray arrayWithObjects:&v53 count:1];
              v33 = [CPLCloudKitReschedulerCoordinator cloudKitReschedulerManagerForLibraryWithIdentifier:v41 involvedProcesses:v30 relatedApplications:v32];
              [v29 setReschedulerManager:v33];

              v14 = v42;
            }

            v34 = objc_alloc_init(CPLCloudKitComputeStateEncryptionHelper);
            [v29 registerHelper:v34 withIdentifier:@"compute-state-encryption"];
          }

          [(CPLEngineWrapper *)v15 setVolumeURL:v18];

          goto LABEL_33;
        }

        if (a7)
        {
          goto LABEL_23;
        }

        goto LABEL_32;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001880A4(v16);
      }
    }

    else
    {
      v16 = [v13 cloudLibraryStateStorageURL];
      v47 = 0;
      v46 = 0;
      v22 = [v16 getResourceValue:&v47 forKey:NSURLVolumeURLKey error:&v46];
      v18 = v47;
      v21 = v46;
      if (v22)
      {
        goto LABEL_8;
      }

      if (_CPLSilentLogging)
      {
        v18 = 0;
LABEL_31:

        v23 = v21;
        if (a7)
        {
LABEL_23:
          v38 = v23;
          v15 = 0;
          *a7 = v23;
LABEL_33:

          v12 = v44;
          goto LABEL_34;
        }

LABEL_32:
        v15 = 0;
        goto LABEL_33;
      }

      v35 = sub_10000B7D8();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v39 = [v16 path];
        *buf = 138412546;
        v55 = v39;
        v56 = 2112;
        v57 = v21;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Can't access library at %@ anymore: %@", buf, 0x16u);
      }

      v18 = 0;
    }

    goto LABEL_31;
  }

  if (a7)
  {
    [CPLErrors cplErrorWithCode:111 description:@"Daemon is closing"];
    *a7 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_34:

  return v15;
}

- (void)wrapperArray:(id)a3 wrapperShouldBeDropped:(id)a4
{
  if (!self->_closing)
  {
    v5 = [a4 libraryIdentifier];
    [CPLCloudKitReschedulerCoordinator dropCloudKitReschedulerManagerForLibraryWithIdentifier:v5];
  }
}

- (void)emergencyExitForWrapperArray:(id)a3
{
  v3 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon exiting immediately", v5, 2u);
    }
  }

  exit(0);
}

- (void)wrapperArrayCountDidChange:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    sub_100188268(v4, self);
  }

  else
  {
    if (self->_closing || self->_deactivated)
    {
      sub_1001882B0();
    }

    sub_100188204();
  }
}

- (void)_wrapperArray:(id)a3 forDaemon:(BOOL)a4 getStatusWithCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000DCE0;
  v17[3] = &unk_100272328;
  v20 = a4;
  v17[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = v9;
  v19 = v11;
  v12 = objc_retainBlock(v17);
  v13 = v12;
  pushNotificationCenter = self->_pushNotificationCenter;
  if (pushNotificationCenter)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000E2B8;
    v15[3] = &unk_100272378;
    v15[4] = self;
    v16 = v12;
    [(CPLCloudKitPushNotificationCenter *)pushNotificationCenter getStatusWithCompletionHandler:v15];
  }

  else
  {
    (v12[2])(v12, 0);
  }
}

- (void)wrapperArray:(id)a3 getStatusDictionaryWithCompletionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E51C;
  v11[3] = &unk_1002723C8;
  v11[4] = self;
  v12 = v5;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026F8;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)wrapperArray:(id)a3 wrapperNeedsInitialDownloadOfMainScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_forSyncBubble && [v7 isSystemLibrary])
  {
    v9 = [v8 engine];
    v10 = [v9 transport];
    v11 = [v10 platformObject];

    v12 = [v11 reschedulerManager];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        queue = self->_queue;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10000E8CC;
        v17[3] = &unk_1002721A0;
        v17[4] = self;
        v18 = v8;
        v19 = v12;
        v14 = v17;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000026F8;
        block[3] = &unk_100271E98;
        v21 = v14;
        v15 = queue;
        v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v15, v16);
      }
    }
  }
}

- (void)wrapperArray:(id)a3 wrapperDidCompleteInitialSyncOfMainScope:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = v6;
  if (!self->_forSyncBubble && [v6 isSystemLibrary])
  {
    [(CPLDaemon *)self _reportICPLFeatureCheckpoint:50];
  }
}

- (unint64_t)wrapperArray:(id)a3 countOfClientsForWrapper:(id)a4
{
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_daemonManagers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) engineWrapper];

        if (v12 == v5)
        {
          ++v9;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getEngineWrapperStatusesWithCompletionHandler:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(CPLEngineWrapperArray *)self->_wrappers wrapperStatuses];
  v5[2](v5, v6, 0);
}

- (void)getDaemonLibraryManagerStatusesWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_daemonManagers, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_daemonManagers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) status];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v4[2](v4, v5, 0);
}

- (void)wipeEnginesIfNecessaryWithCompletionHandler:(id)a3
{
  wrappers = self->_wrappers;
  v4 = a3;
  [(CPLEngineWrapperArray *)wrappers wipeEnginesIfNecessary];
  v4[2](v4, 0);
}

- (void)initialDownloadHelper:(id)a3 checkActiveAccountWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [NSProgress progressWithTotalUnitCount:1];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000EFDC;
  v17[3] = &unk_1002723F0;
  v17[4] = self;
  v8 = v20 = v21;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000F078;
  v15[3] = &unk_1002723C8;
  v15[4] = self;
  v10 = objc_retainBlock(v17);
  v16 = v10;
  [v8 setCancellationHandler:v15];
  coordinator = self->_coordinator;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F1E0;
  v13[3] = &unk_100272440;
  v13[4] = self;
  v12 = v10;
  v14 = v12;
  [(CPLCloudKitCoordinator *)coordinator fetchAccountInfoWithCompletionHandler:v13];

  _Block_object_dispose(v21, 8);
}

- (void)registerForSyncBubble
{
  if (qword_1002C4F38 != -1)
  {
    sub_100187FB0();
  }

  if (byte_1002C4F30 == 1 && !self->_registeredStakeholder)
  {
    sub_100188330(self, &self->_registeredStakeholder);
  }
}

- (void)uploadContent
{
  syncTask = self->_syncTask;
  p_syncTask = &self->_syncTask;
  if (!syncTask && self->_registeredStakeholder)
  {
    v7[5] = v2;
    v7[6] = v3;
    sub_1001883D4(p_syncTask, self, v7);
  }
}

- (void)_registerForConfigurationRefresh
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8();
    if (sub_10000FABC(v4))
    {
      v17 = 0;
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  queue = self->_queue;
  sub_1000033D8();
  sub_10000FB28();
  v14 = sub_1001851B8;
  v15 = &unk_100272128;
  v16 = self;
  [v13 registerForTaskWithIdentifier:@"com.apple.cloudphotod.configurationrefresh" usingQueue:? launchHandler:?];
}

- (void)_registerForMaintenance
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8();
    if (sub_10000FABC(v4))
    {
      v17 = 0;
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  queue = self->_queue;
  sub_1000033D8();
  sub_10000FB28();
  v14 = sub_1001854C0;
  v15 = &unk_100272128;
  v16 = self;
  [v13 registerForTaskWithIdentifier:@"com.apple.cloudphotod.maintenance" usingQueue:? launchHandler:?];
}

- (void)_registerForBackupRequests
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8();
    if (sub_10000FABC(v4))
    {
      v17 = 0;
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  queue = self->_queue;
  sub_1000033D8();
  sub_10000FB28();
  v14 = sub_100185884;
  v15 = &unk_100272128;
  v16 = self;
  [v13 registerForTaskWithIdentifier:@"com.apple.cloudphotod.backup" usingQueue:? launchHandler:?];
}

- (void)_reportICPLFeatureCheckpoint:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v4 = @"Disabled";
      break;
    case 0x32uLL:
      v4 = @"Available";
      break;
    case 0x1EuLL:
      v4 = @"PreviewAvailable";
      break;
    default:
      v4 = [[NSString alloc] initWithFormat:@"Checkpoint_%lu", a3];
      break;
  }

  v12 = 0;
  v5 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:a3 forFeature:107 error:&v12];
  v6 = v12;
  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_10000B7D8();
      if (sub_100003424(v7))
      {
        sub_10000FAF8();
        v8 = "Reported iCPL feature is %@ for %{public}@";
        v9 = v5;
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 22;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000FAF8();
      v14 = 2112;
      v15 = v6;
      v8 = "Failed to report iCPL feature is %@ for %{public}@: %@";
      v9 = v5;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 32;
      goto LABEL_15;
    }

LABEL_16:
  }
}

- (void)_registerForFastPassInitialDownload
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8();
    if (sub_10000FABC(v4))
    {
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  queue = self->_queue;
  sub_1000033D8();
  sub_10000FB28();
  [v13 registerForTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass" usingQueue:? launchHandler:?];

  v14 = +[BGSystemTaskScheduler sharedScheduler];
  v15 = [v14 taskRequestForIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];

  if (v15)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_10000B7D8();
      if (sub_10000FABC(v16))
      {
        sub_10000FAA0();
LABEL_12:
        _os_log_impl(v17, v18, v19, v20, v21, v22);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v23 = sub_10000B7D8();
    if (sub_10000FABC(v23))
    {
      sub_10000F974();
      goto LABEL_12;
    }

LABEL_13:
  }
}

- (void)_registerForPeriodicUploadOfComputeStates
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8();
    if (sub_10000FABC(v4))
    {
      v17 = 0;
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  queue = self->_queue;
  sub_1000033D8();
  sub_10000FB28();
  v14 = sub_100186388;
  v15 = &unk_100272128;
  v16 = self;
  [v13 registerForTaskWithIdentifier:@"com.apple.cloudphotod.periodic.upload.computestates" usingQueue:? launchHandler:?];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_processListener == v6)
  {
    v9 = [(CPLDaemon *)self _processListener:v6 shouldAcceptNewConnection:v7];
    goto LABEL_43;
  }

  if (!self->_deactivated)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10000B7D8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ got a new connection: %@", buf, 0x16u);
      }
    }

    v11 = [v7 valueForEntitlement:@"com.apple.private.cloudphotod.access"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v7)
        {
          [v7 auditToken];
        }

        v58 = 0;
        memset(buf, 0, sizeof(buf));
        if (CPCopyBundleIdentifierAndTeamFromAuditToken())
        {
          goto LABEL_49;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = sub_10000B7D8();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v7;
            sub_10000FB94(&_mh_execute_header, v13, v14, "%@ has no bundle identifier. Will fallback on process ID", buf);
          }
        }

        v15 = [v7 processIdentifier];
        bzero(buf, 0x100uLL);
        if (proc_name(v15, buf, 0x100u))
        {
          v58 = CFStringCreateWithCString(0, buf, 0x8000100u);
          if (v58 || (_CPLSilentLogging & 1) != 0)
          {
            goto LABEL_49;
          }

          v16 = sub_10000B7D8();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          LOWORD(v59) = 0;
          v17 = &_mh_execute_header;
          v18 = "Can't decypher process name";
          v19 = &v59;
          v20 = v16;
          v21 = OS_LOG_TYPE_ERROR;
          v22 = 2;
        }

        else
        {
          if (_CPLSilentLogging)
          {
LABEL_49:
            v42 = v58;
            if (!v58)
            {
              v42 = CFRetain(@"anonymous");
            }

            v43 = [(CPLDaemon *)self allowedProtocolForClientAccess:v12];
            if (v43)
            {
              v44 = v43;
              if ((_CPLSilentLogging & 1) == 0)
              {
                v45 = sub_10000B7D8();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  v46 = NSStringFromProtocol(v44);
                  sub_10000F998();
                  *&buf[22] = v47;
                  *&buf[24] = v48;
                  v64 = v47;
                  v65 = v12;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Accepting a new connection from %@ (bundle identifier: %@). Allowed protocol is %@ (%@)", buf, 0x2Au);
                }
              }

              v49 = [v12 isEqualToString:@"management"];
              v50 = [[NSString alloc] initWithFormat:@"%@[%@]", v42, v12];
              v51 = CPLCopyDefaultSerialQueueAttributes();
              v52 = dispatch_queue_create_with_target_V2("com.apple.cloudphotod.daemon.connection", v51, self->_queue);

              [v7 _setQueue:v52];
              v53 = [[CPLDaemonLibraryManager alloc] initWithConnection:v7 name:v50 allowedProcol:v44 isManagement:v49];
              [(CPLDaemonLibraryManager *)v53 setDelegate:self];
              [(NSMutableArray *)self->_daemonManagers addObject:v53];
              if ((_CPLSilentLogging & 1) == 0)
              {
                v54 = sub_10000B7D8();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                {
                  daemonManagers = self->_daemonManagers;
                  *buf = 138412290;
                  *&buf[4] = daemonManagers;
                  sub_10000FB94(&_mh_execute_header, v54, v55, "Current daemon's clients: %@", buf);
                }
              }

              v9 = 1;
LABEL_42:

              goto LABEL_43;
            }

            if ((_CPLSilentLogging & 1) == 0)
            {
              v57 = sub_10000B7D8();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                *&buf[4] = v12;
                *&buf[12] = 2112;
                *&buf[14] = v7;
                *&buf[22] = 2112;
                *&buf[24] = v42;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Unknown access type '%@' from %@ (%@)", buf, 0x20u);
              }
            }

LABEL_37:
            if ((_CPLSilentLogging & 1) == 0)
            {
              v37 = sub_10000B7D8();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v7;
                sub_10000FB94(&_mh_execute_header, v37, v38, "Refusing connection from %@", buf);
              }
            }

            v9 = 0;
            goto LABEL_42;
          }

          v16 = sub_10000B7D8();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
LABEL_48:

            goto LABEL_49;
          }

          v40 = __error();
          v41 = strerror(*v40);
          v59 = 138412546;
          v60 = v7;
          v61 = 2080;
          v62 = v41;
          sub_10000FAD4();
        }

        _os_log_impl(v17, v20, v21, v18, v19, v22);
        goto LABEL_48;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v23 = sub_10000B7D8();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10000F998();
          sub_10000FAD4();
          _os_log_impl(v24, v25, v26, v27, v28, v29);
        }
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = sub_10000B7D8();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10000F998();
        sub_10000FAD4();
        _os_log_impl(v31, v32, v33, v34, v35, v36);
      }
    }

    v12 = 0;
    goto LABEL_37;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10000B7D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Some client tried to connect while we were deactivated", buf, 2u);
    }
  }

  v9 = 0;
LABEL_43:

  return v9;
}

- (void)daemonLibraryManager:(id)a3 wantsToExitAfterResettingParametersForLibraryWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  parametersStorage = self->_parametersStorage;
  v18 = 0;
  v9 = [(CPLEngineParametersStorage *)parametersStorage removeParametersWithLibraryIdentifier:v7 error:&v18];
  v10 = v18;
  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10000B7D8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v7;
        sub_10000FAA0();
LABEL_8:
        _os_log_impl(v12, v13, v14, v15, v16, v17);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_10000B7D8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543618;
      v20 = v7;
      v21 = 2112;
      v22 = v10;
      sub_10000FAD4();
      goto LABEL_8;
    }

LABEL_9:
  }

  [(CPLDaemon *)self _daemonLibraryManagerWantsToExitNow:v6];
}

- (void)daemonLibraryManagerWantsToExitNow:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"CPLDaemonKeepRunningWithNoEngines"];

  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_10000B7D8();
      if (sub_10000FABC(v7))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (![(CPLEngineWrapperArray *)self->_wrappers count])
    {
      [(CPLDaemon *)self _daemonLibraryManagerWantsToExitNow:v4];
      goto LABEL_10;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10000B7D8();
      if (sub_10000FABC(v8))
      {
LABEL_8:
        sub_1000033F8();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

LABEL_9:
    }
  }

LABEL_10:
}

- (void)daemonLibraryManagerHasBeenDisconnected:(id)a3
{
  [(NSMutableArray *)self->_daemonManagers removeObject:a3];
  if ([(NSMutableArray *)self->_daemonManagers count])
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v4 = sub_10000B7D8();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    daemonManagers = self->_daemonManagers;
    sub_10000343C();
    v7 = "Current daemon's clients: %@";
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    return;
  }

  v4 = sub_10000B7D8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = @"com.apple.cloudphotod";
    v7 = "Daemon listening on %@";
LABEL_8:
    sub_10000FB94(&_mh_execute_header, v4, v6, v7, &v8);
  }

LABEL_9:
}

- (void)_reRunFastPassInitialDownloadIfNecessaryForWrapper:(id)a3 withReschedulerManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[BGFastPassSystemTaskRequest alloc] initWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];
  [v8 setRequiresProtectionClass:4];
  [v8 setRequiresExternalPower:0];
  [v8 setRequiresNetworkConnectivity:1];
  [v8 setPriority:2];
  v9 = [v7 involvedProcesses];
  [v8 setInvolvedProcesses:v9];

  [v8 setFeatureCodes:&off_10028FC88];
  v10 = [v7 taskIdentifier];

  v38 = v10;
  v11 = [NSArray arrayWithObjects:&v38 count:1];
  [v8 setProcessingTaskIdentifiers:v11];

  v12 = [NSSet setWithObjects:@"com.apple.cloudphotod.initialdownload.assets", @"com.apple.cloudphotod.initialdownload.finished", @"com.apple.cloudphotod.initialdownload.fastpass", 0];
  [v8 setProducedResultIdentifiers:v12];

  [v8 setReRun:1];
  v13 = +[BGSystemTaskScheduler sharedScheduler];
  v33 = 0;
  LOBYTE(v10) = [v13 submitTaskRequest:v8 error:&v33];
  v14 = v33;

  if ((v10 & 1) == 0)
  {
    v23 = [v14 domain];
    if ([v23 isEqualToString:BGSystemTaskSchedulerErrorDomain])
    {
      v24 = [v14 code];

      if (v24 == 5)
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_18;
        }

        v25 = sub_10000B7D8();
        if (sub_10000FBAC(v25))
        {
          v26 = [v6 libraryIdentifier];
          v34 = 138543362;
          v35 = v26;
          sub_10000FAA0();
LABEL_16:
          _os_log_impl(v27, v28, v29, v30, v31, v32);

          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    if (_CPLSilentLogging)
    {
      goto LABEL_18;
    }

    v23 = sub_10000B7D8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = [v6 libraryIdentifier];
      v34 = 138543618;
      v35 = v26;
      v36 = 2112;
      v37 = v14;
      sub_10000FAD4();
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_10000B7D8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v6 libraryIdentifier];
      v34 = 138543362;
      v35 = v16;
      sub_10000FAA0();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
    }
  }

  [(CPLBGSTActivitiesReport *)self->_backgroundSystemTasksReport didSubmitTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];
LABEL_18:
}

- (void)willSwitchUser
{
  if (self->_logoutTask)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v3 = sub_10000B7D8();
    if (!sub_10000FAE0(v3))
    {
      goto LABEL_9;
    }

    v10 = 0;
    v6 = "Notified that user will be switched, we have a running sync task";
    v7 = &v10;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    return;
  }

  v8 = sub_10000B7D8();
  if (sub_10000FAE0(v8))
  {
    v9 = 0;
    v6 = "Notified that user will be switched, we don't have a running sync task";
    v7 = &v9;
LABEL_8:
    sub_10000FA44(&_mh_execute_header, v4, v5, v6, v7);
  }

LABEL_9:
}

@end