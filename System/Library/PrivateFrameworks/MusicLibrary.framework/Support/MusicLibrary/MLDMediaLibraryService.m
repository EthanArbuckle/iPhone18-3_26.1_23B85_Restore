@interface MLDMediaLibraryService
+ (id)sharedInstance;
- (BOOL)_isMediaPath:(id)a3 selector:(SEL)a4 resolvedPath:(id *)a5;
- (BOOL)_shouldAcceptConnectionForMediaLibraryService:(id)a3;
- (BOOL)_validateTransactionIdentifier:(id)a3 forClient:(id)a4;
- (BOOL)isDatabaseLocked;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MLDMediaLibraryService)init;
- (id)_XPCListenerForService:(int64_t)a3;
- (id)_allMediaLibraries;
- (id)_clientForConnection:(id)a3;
- (id)_currentXPCClient;
- (id)_deviceSharedLibraryPath;
- (id)_generateSecurityScopedURLWrapperForItemPid:(unint64_t)a3 withLibrary:(id)a4 error:(id *)a5;
- (id)_init;
- (id)_mediaLibraryForPath:(id)a3;
- (id)_stateDump;
- (id)beginTransactionForDatabaseWithContext:(id)a3 error:(id *)a4;
- (int64_t)_MLDSupportedServiceForXPCListener:(id)a3;
- (int64_t)currentLockReason;
- (void)_disconnectLibraries:(id)a3;
- (void)_handleDebugSignal;
- (void)_handleLibraryDidChangeNotification:(id)a3;
- (void)_handleTerminationSignal;
- (void)_handleXPCDisconnect:(id)a3;
- (void)_idleTimerFired:(id)a3;
- (void)_logPrivacyAccessWithTransactionIdentifier:(id)a3;
- (void)_performDiagnosticWithReason:(id)a3;
- (void)_performMaintenanceOnDatabaseAtPath:(id)a3;
- (void)_performMaintenanceOnDatabaseAtPath:(id)a3 withActivity:(id)a4 completion:(id)a5;
- (void)_reconnectLibraries:(id)a3;
- (void)_registerForLibraryDidChangeNotifications;
- (void)_registerTransactionInfo:(id)a3 forIdentitifer:(id)a4;
- (void)_resetIdleTimer;
- (void)_setupActivityHandlers;
- (void)_setupCacheDeleteController;
- (void)_setupNotifyEventHandlers;
- (void)_setupSignalHandlers;
- (void)_startIdleTimer;
- (void)_stopIdleTimer;
- (void)_tearDownLibraryDidChangeNotifications;
- (void)_tearDownSignalHandlers;
- (void)_unregisterServiceOriginatedTransactionWithConnection:(id)a3;
- (void)_unregisterTransactionInfoForIdentifier:(id)a3;
- (void)_updateMultiUserPurgeabilityForPrimaryLibraryPath:(id)a3;
- (void)_updateSiriIndexForNotification:(id)a3;
- (void)_updateSiriIndexMetadataForLibraryAtPath:(id)a3 completion:(id)a4;
- (void)_updateSpotlightIndexForNotification:(id)a3;
- (void)_writeDiagnosticToDisk:(id)a3;
- (void)attemptDatabaseFileRecoveryAtPath:(id)a3 withCompletionHandler:(id)a4;
- (void)beginTransactionForDatabaseWithContext:(id)a3 completionHandler:(id)a4;
- (void)cancelImportOperation:(unint64_t)a3 completionHandler:(id)a4;
- (void)collectDiagnostic:(id)a3;
- (void)dealloc;
- (void)executeQuery:(id)a3 withParameters:(id)a4 options:(id)a5 onTransaction:(id)a6 withCompletionHandler:(id)a7;
- (void)executeUpdate:(id)a3 withParameters:(id)a4 onTransaction:(id)a5 withCompletionHandler:(id)a6;
- (void)faultForQuery:(id)a3 fromClientBundleID:(id)a4 onTrustError:(id)a5;
- (void)getClientImportServiceListenerEndpointWithCompletion:(id)a3;
- (void)getLanguageResourcesWithCompletion:(id)a3;
- (void)getMediaLibraryResourcesServiceListenerEndpointWithCompletion:(id)a3;
- (void)library:(id)a3 didBeginDatabaseTransactionWithConnection:(id)a4;
- (void)lockDatabaseForReason:(int64_t)a3 withCompletion:(id)a4;
- (void)mediaLibraryWriter:(id)a3 terminatedTransaction:(id)a4 withError:(id)a5;
- (void)performDatabaseOperation:(unint64_t)a3 withAttributes:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)performDatabasePathChange:(id)a3 completion:(id)a4;
- (void)performDiagnosticWithCompletionHandler:(id)a3;
- (void)performImport:(id)a3 fromSource:(unint64_t)a4 withUUID:(id)a5 completionHandler:(id)a6;
- (void)performMaintenanceTasksForDatabaseAtPath:(id)a3;
- (void)performMaintenanceTasksForDatabaseAtPath:(id)a3 withCompletionHandler:(id)a4;
- (void)recreateDatabaseAtPath:(id)a3 withCompletionHandler:(id)a4;
- (void)securityScopedURLWrapperForItemPid:(unint64_t)a3 withDatabasePath:(id)a4 completionHandler:(id)a5;
- (void)setCurrentLockReason:(int64_t)a3;
- (void)setDatabaseLocked:(BOOL)a3;
- (void)setOptions:(id)a3 withCompletionHandler:(id)a4;
- (void)start;
- (void)unlockDatabaseWithCompletion:(id)a3;
- (void)updateSiriIndexMetadataForAllLibrariesWithCompletion:(id)a3;
- (void)updateSpotlightIndexMetadataForItemsWithIdentifiers:(id)a3 bundleID:(id)a4 withCompletion:(id)a5;
- (void)validateDatabaseAtPath:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation MLDMediaLibraryService

- (void)_resetIdleTimer
{
  if (self->_idleTimer)
  {
    v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Resetting idle timer", v6, 2u);
    }

    idleTimer = self->_idleTimer;
    v5 = [NSDate dateWithTimeIntervalSinceNow:5.0];
    [(NSTimer *)idleTimer setFireDate:v5];
  }
}

- (id)_currentXPCClient
{
  v3 = +[NSXPCConnection currentConnection];
  if (v3)
  {
    [(MLDMediaLibraryService *)self _clientForConnection:v3];
  }

  else
  {
    +[ML3Client daemonClient];
  }
  v4 = ;

  return v4;
}

- (void)faultForQuery:(id)a3 fromClientBundleID:(id)a4 onTrustError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"action"];
  v11 = [v10 integerValue];

  if (v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000CA10;
    v13[3] = &unk_100031AA8;
    v14 = v7;
    v16 = v11;
    v15 = v8;
    v12 = objc_retainBlock(v13);
    sub_10000CB70(v12);
  }
}

- (id)_generateSecurityScopedURLWrapperForItemPid:(unint64_t)a3 withLibrary:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [[ML3Track alloc] initWithPersistentID:a3 inLibrary:v8];
  v10 = [v9 valueForProperty:ML3TrackPropertyFilePath];
  v11 = v10;
  if (v10 && [v10 length])
  {
    v12 = [v8 mediaFolderPathByAppendingPathComponent:v11];
    v13 = [NSURL fileURLWithPath:v12];

    v14 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v13 readonly:1];
    v15 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543875;
      v18 = self;
      v19 = 2048;
      v20 = a3;
      v21 = 2113;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ generated wrapper for item pid: %llu. wrapper=%{private}@", buf, 0x20u);
    }
  }

  else
  {
    [NSError msv_errorWithDomain:MLMusicLibraryErrorDomain code:1 debugDescription:@"Could not find relative path for item pid %llu", a3];
    *a5 = v14 = 0;
  }

  return v14;
}

- (void)_updateSiriIndexMetadataForLibraryAtPath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (sub_10000CF14())
  {
    v10[0] = MLDatabaseOperationOptionDatabasePathKey;
    v10[1] = MLDatabaseOperationOptionPriorityLevelKey;
    v11[0] = v7;
    v11[1] = &off_100033140;
    v10[2] = MLDatabaseOperationOptionReadOnlyKey;
    v10[3] = MLDatabaseOperationOptionEnqueueSerially;
    v11[2] = &__kCFBooleanTrue;
    v11[3] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

    [(MLDMediaLibraryService *)self performDatabaseOperation:8 withAttributes:&__NSDictionary0__struct options:v8 completionHandler:v6];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ updateSiriIndexMetadata called on unsupported platform.", buf, 0xCu);
    }

    v8 = [NSError errorWithDomain:MLMusicLibraryErrorDomain code:10 userInfo:0];

    v6[2](v6, 0, v8);
  }
}

- (BOOL)_isMediaPath:(id)a3 selector:(SEL)a4 resolvedPath:(id *)a5
{
  v9 = a3;
  if (!a5)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MLDMediaLibraryService.m" lineNumber:1947 description:{@"Invalid parameter not satisfying: %@", @"resolvedPath"}];
  }

  v10 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  if ([v9 isEqualToString:v10])
  {
    v11 = v9;
    *a5 = v9;
    v12 = 1;
  }

  else
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v13 = +[ML3MusicLibrary allLibraryContainerPaths];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000D2F0;
    v25[3] = &unk_100031A80;
    v14 = v9;
    v26 = v14;
    v27 = &v28;
    [v13 enumerateObjectsUsingBlock:v25];

    if (*(v29 + 24) == 1)
    {
      v15 = v14;
      *a5 = v14;
      v12 = 1;
      v9 = v14;
    }

    else
    {
      v9 = [v14 msv_stringByResolvingRealPath];

      v16 = v9;
      *a5 = v9;
      v17 = +[ML3MusicLibrary mediaFolderPath];
      v18 = [v17 msv_stringByResolvingRealPath];

      if ([v9 hasPrefix:v18] && (objc_msgSend(v9, "hasSuffix:", @"iTunes_Control/iTunes/MediaLibrary.sqlitedb") & 1) != 0 || -[MLDDatabaseValidationController isValidatedPath:](self->_validationController, "isValidatedPath:", v9))
      {
        v12 = 1;
      }

      else
      {
        v19 = [(MLDMediaLibraryService *)self _currentXPCClient];
        v20 = os_log_create("com.apple.amp.medialibraryd", "Service");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          v21 = NSStringFromSelector(a4);
          v22 = [v19 bundleID];
          *buf = 138543874;
          v33 = v21;
          v34 = 2114;
          v35 = v22;
          v36 = 2114;
          v37 = v9;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%{public}@: not opening database [invalid path] bundleID=%{public}@ path=%{public}@", buf, 0x20u);
        }

        v12 = 0;
      }
    }

    _Block_object_dispose(&v28, 8);
  }

  return v12;
}

- (void)_unregisterServiceOriginatedTransactionWithConnection:(id)a3
{
  v7 = [a3 currentTransactionID];
  v4 = [(ML3MediaLibraryWriter *)self->_writer _transactionForIdentifier:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 client];

    if (!v6)
    {
      [(ML3MediaLibraryWriter *)self->_writer _unregisterTransaction:v5];
    }
  }
}

- (BOOL)_validateTransactionIdentifier:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (!v6)
  {
    goto LABEL_4;
  }

  serialQueue = self->_serialQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D7D0;
  v12[3] = &unk_100031A30;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  dispatch_sync(serialQueue, v12);

  if (v17[3])
  {
    v9 = 1;
  }

  else
  {
LABEL_4:
    v10 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to validate transaction %{public}@ for client %{public}@", buf, 0x16u);
    }

    v9 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);

  return v9 & 1;
}

- (void)_unregisterTransactionInfoForIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    serialQueue = self->_serialQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000D964;
    v7[3] = &unk_100031BA8;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(serialQueue, v7);
  }
}

- (void)_registerTransactionInfo:(id)a3 forIdentitifer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DB24;
    block[3] = &unk_100031760;
    block[4] = self;
    v11 = v7;
    v12 = v6;
    dispatch_sync(serialQueue, block);
  }
}

- (void)_performMaintenanceOnDatabaseAtPath:(id)a3 withActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Maintenance] Maintenance activity triggered.", buf, 2u);
  }

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = [(MLDMediaLibraryService *)self _deviceSharedLibraryPath];
  }

  v13 = v12;
  v14 = [(MLDMediaLibraryService *)self _mediaLibraryForPath:v12];
  v15 = [[ML3MaintenanceTasksOperation alloc] initWithLibrary:v14 activity:v10];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000DD8C;
  v18[3] = &unk_100031A08;
  v18[4] = self;
  v19 = v14;
  v20 = v9;
  v16 = v9;
  v17 = v14;
  [v15 setCompletionBlock:v18];
  [(NSOperationQueue *)self->_maintenanceTasksOperationQueue addOperation:v15];
}

- (void)_performMaintenanceOnDatabaseAtPath:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Maintenance] Synchronous maintenance activity triggered.", buf, 2u);
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(MLDMediaLibraryService *)self _deviceSharedLibraryPath];
  }

  v7 = v6;
  v8 = [(MLDMediaLibraryService *)self _mediaLibraryForPath:v6];
  v9 = [[ML3MaintenanceTasksOperation alloc] initWithLibrary:v8 activity:0];
  [(NSOperationQueue *)self->_maintenanceTasksOperationQueue addOperation:v9];
  [v9 waitUntilFinished];
  v10 = dispatch_get_global_queue(0, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E08C;
  v12[3] = &unk_100031BA8;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_async(v10, v12);
}

- (void)_stopIdleTimer
{
  if (self->_idleTimer)
  {
    v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stopping media library service idle timer.", v5, 2u);
    }

    [(NSTimer *)self->_idleTimer invalidate];
    idleTimer = self->_idleTimer;
    self->_idleTimer = 0;
  }
}

- (void)_idleTimerFired:(id)a3
{
  if ([(ML3DatabaseImportManager *)self->_importManager suspendedOperationsCount]|| [(ML3DatabaseImportManager *)self->_importManager isSuspended])
  {
    v4 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Media library service has suspended import operations. Attempting to resume.", buf, 2u);
    }

    [(ML3DatabaseImportManager *)self->_importManager resumeSuspendedImportOperations];
  }

  else if (![(ML3DatabaseImportManager *)self->_importManager operationsCount])
  {
    v5 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MediaLibraryService's idle timer is stopping.", v6, 2u);
    }

    [(MLDMediaLibraryService *)self _stopIdleTimer];
  }
}

- (void)_startIdleTimer
{
  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Starting media library service idle timer.", v9, 2u);
  }

  if (self->_idleTimer)
  {
    [(MLDMediaLibraryService *)self _stopIdleTimer];
  }

  v4 = [NSTimer alloc];
  v5 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  v6 = [v4 initWithFireDate:v5 interval:self target:"_idleTimerFired:" selector:0 userInfo:1 repeats:5.0];
  idleTimer = self->_idleTimer;
  self->_idleTimer = v6;

  v8 = +[NSRunLoop mainRunLoop];
  [v8 addTimer:self->_idleTimer forMode:NSDefaultRunLoopMode];
}

- (void)_tearDownLibraryDidChangeNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ML3MusicLibraryContentsDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:ML3MusicLibraryNonContentsPropertiesDidChangeNotification object:0];
}

- (void)_updateSpotlightIndexForNotification:(id)a3
{
  v4 = a3;
  if ((ML3IsProcessRunning() & 1) == 0)
  {
    spotlightIndexQueue = self->_spotlightIndexQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000E514;
    v6[3] = &unk_100031BA8;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(spotlightIndexQueue, v6);
  }
}

- (void)_updateSiriIndexForNotification:(id)a3
{
  v8 = a3;
  v4 = [v8 name];
  v5 = [v4 isEqualToString:ML3MusicLibraryContentsDidChangeNotification];

  if (v5 && sub_10000CF14() && (ML3IsProcessRunning() & 1) == 0)
  {
    v6 = [v8 object];
    v7 = [v6 databasePath];
    [(MLDMediaLibraryService *)self _updateSiriIndexMetadataForLibraryAtPath:v7 completion:&stru_1000319C0];
  }
}

- (void)_updateMultiUserPurgeabilityForPrimaryLibraryPath:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_updateMultiUserPurgeabilityForPrimaryLibraryPath %{private}@", &v6, 0xCu);
  }

  v5 = +[ML3MusicLibrary allLibraries];
  [v5 enumerateObjectsUsingBlock:&stru_100031980];
}

- (void)_handleLibraryDidChangeNotification:(id)a3
{
  v4 = a3;
  [(MLDMediaLibraryService *)self _updateSpotlightIndexForNotification:v4];
  [(MLDMediaLibraryService *)self _updateSiriIndexForNotification:v4];
}

- (void)_registerForLibraryDidChangeNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleLibraryDidChangeNotification:" name:ML3MusicLibraryContentsDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleLibraryDidChangeNotification:" name:ML3MusicLibraryNonContentsPropertiesDidChangeNotification object:0];

  if (MSVDeviceSupportsMultipleLibraries())
  {
    v5 = +[ML3MusicLibraryAccountChangeObserverProxy sharedProxy];
    [v5 addAccountChangeObserver:self];
  }
}

- (void)_writeDiagnosticToDisk:(id)a3
{
  v3 = a3;
  v4 = [ML3MusicLibrary pathForResourceFileOrFolder:24];
  v5 = +[NSFileManager defaultManager];
  if (([v5 fileExistsAtPath:v4 isDirectory:0] & 1) == 0)
  {
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v7 = [NSString stringWithFormat:@"MediaLibraryDiagnostic_%f.log", v6];
  v8 = [v4 stringByAppendingPathComponent:v7];
  v9 = [v3 writeToFile:v8 error:0];

  v10 = os_log_create("com.apple.amp.medialibraryd", "Service");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138543362;
      v14 = v8;
      v12 = "Saved diagnostic information to %{public}@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    }
  }

  else if (v11)
  {
    *buf = 138543362;
    v14 = v8;
    v12 = "Failed to save diagnostic information to path: %{public}@";
    goto LABEL_8;
  }
}

- (void)_performDiagnosticWithReason:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Collecting diagnostic information...", &v9, 2u);
  }

  v6 = [(MLDDiagnostic *)[MLDMutableDiagnostic alloc] initWithReason:v4];
  [(MLDMediaLibraryService *)self collectDiagnostic:v6];
  [(MLDMediaLibraryService *)self _writeDiagnosticToDisk:v6];
  v7 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MLDDiagnostic *)v6 description];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", &v9, 0xCu);
  }
}

- (void)_handleTerminationSignal
{
  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Received termination signal. Canceling operations and preparing for shutdown...", v4, 2u);
  }

  [(ML3DatabaseImportManager *)self->_importManager cancelAllImportOperations];
  [(ML3MediaLibraryWriter *)self->_writer cancelAllActiveDatabaseOperationsAndWaitUntilFinished:1];
}

- (void)_handleDebugSignal
{
  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Received debug signal. Collecting diagnostic information...", v4, 2u);
  }

  [(MLDMediaLibraryService *)self _performDiagnosticWithReason:@"Debug Signal"];
}

- (void)_tearDownSignalHandlers
{
  dispatch_source_cancel(self->_debugSignalDispatchSource);
  terminateSignalDispatchSource = self->_terminateSignalDispatchSource;

  dispatch_source_cancel(terminateSignalDispatchSource);
}

- (void)_setupSignalHandlers
{
  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up signal handlers", buf, 2u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, v4);
  debugSignalDispatchSource = self->_debugSignalDispatchSource;
  self->_debugSignalDispatchSource = v5;

  objc_initWeak(buf, self);
  v7 = self->_debugSignalDispatchSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000F2A0;
  handler[3] = &unk_100031940;
  objc_copyWeak(&v15, buf);
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_debugSignalDispatchSource);
  signal(30, 1);
  signal(15, 1);
  v8 = dispatch_get_global_queue(21, 0);
  v9 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v8);
  terminateSignalDispatchSource = self->_terminateSignalDispatchSource;
  self->_terminateSignalDispatchSource = v9;

  v11 = self->_terminateSignalDispatchSource;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F32C;
  v12[3] = &unk_100031940;
  objc_copyWeak(&v13, buf);
  dispatch_source_set_event_handler(v11, v12);
  dispatch_activate(self->_terminateSignalDispatchSource);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (id)_clientForConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 processIdentifier];
  if (v5 == getpid())
  {
    v6 = +[ML3Client daemonClient];
  }

  else
  {
    os_unfair_lock_lock(&self->_xpcLock);
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 processIdentifier]);
    v6 = [(NSMutableDictionary *)self->_xpcClients objectForKey:v7];
    if (!v6)
    {
      v6 = [[ML3Client alloc] initWithConnection:v4];
      [(NSMutableDictionary *)self->_xpcClients setObject:v6 forKey:v7];
    }

    os_unfair_lock_unlock(&self->_xpcLock);
  }

  return v6;
}

- (void)_handleXPCDisconnect:(id)a3
{
  v4 = a3;
  [v4 ml_setValid:0];
  v5 = [(MLDMediaLibraryService *)self _clientForConnection:v4];

  if (v5)
  {
    [(ML3DatabaseImportManager *)self->_importManager cancelImportOperationsOriginatingFromClient:v5];
    writerUpdateQueue = self->_writerUpdateQueue;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10000F5D0;
    v13 = &unk_100031BA8;
    v14 = self;
    v7 = v5;
    v15 = v7;
    dispatch_async(writerUpdateQueue, &v10);
    os_unfair_lock_lock(&self->_xpcLock);
    xpcClients = self->_xpcClients;
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 processID]);
    [(NSMutableDictionary *)xpcClients removeObjectForKey:v9];

    os_unfair_lock_unlock(&self->_xpcLock);
  }
}

- (id)_deviceSharedLibraryPath
{
  v2 = +[ML3MusicLibraryResourcesManager sharedManager];
  v3 = [v2 pathForResourceFileOrFolder:15];

  return v3;
}

- (id)_allMediaLibraries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000F848;
  v10 = sub_10000F858;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F860;
  v5[3] = &unk_1000318C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_mediaLibraryForPath:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibraryd", "Default_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mediaLibraries = self->_mediaLibraries;
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v15 = mediaLibraries;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Path: %{public}@, _mediaLibraries=%{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = sub_10000F848;
  v16 = sub_10000F858;
  v17 = 0;
  if (v4)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FA90;
    block[3] = &unk_1000318F0;
    v13 = buf;
    block[4] = self;
    v12 = v4;
    dispatch_sync(serialQueue, block);

    v8 = *(*&buf[8] + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(buf, 8);

  return v9;
}

- (int64_t)_MLDSupportedServiceForXPCListener:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FC20;
  v6[3] = &unk_1000318C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)_XPCListenerForService:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000F848;
  v11 = sub_10000F858;
  v12 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FE2C;
  v6[3] = &unk_100031878;
  v6[6] = a3;
  v6[7] = a2;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_setupCacheDeleteController
{
  v3 = +[ML3MusicLibrary allLibraries];
  serialQueue = self->_serialQueue;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000101B4;
  v12 = &unk_100031BA8;
  v13 = v3;
  v14 = self;
  v5 = v3;
  dispatch_sync(serialQueue, &v9);
  v6 = [MLDCacheDeleteController alloc];
  v7 = [(MLDCacheDeleteController *)v6 initWithLibraries:v5, v9, v10, v11, v12];
  cacheDeleteController = self->_cacheDeleteController;
  self->_cacheDeleteController = v7;
}

- (void)_setupActivityHandlers
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010394;
  block[3] = &unk_1000313F0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_setupNotifyEventHandlers
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100010DE0;
  handler[3] = &unk_1000317D8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
}

- (void)_logPrivacyAccessWithTransactionIdentifier:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010F94;
  v7[3] = &unk_100031BA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_reconnectLibraries:(id)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = os_log_create("com.apple.amp.medialibraryd", "Service");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 databasePath];
          *buf = 138543362;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unlock: reconnecting to library at path %{public}@", buf, 0xCu);
        }

        [v8 reconnectToDatabase];
        v11 = os_log_create("com.apple.amp.medialibraryd", "Service");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v8 databasePath];
          *buf = 138543362;
          v19 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unlock: unlocking connection pool for library at path %{public}@", buf, 0xCu);
        }

        v13 = [v8 connectionPool];
        [v13 unlock];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)_disconnectLibraries:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = os_log_create("com.apple.amp.medialibraryd", "Service");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 databasePath];
          *buf = 138543362;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Lock: locking connection pool for library at %{public}@", buf, 0xCu);
        }

        v11 = [v8 connectionPool];
        [v11 lock];

        v12 = os_log_create("com.apple.amp.medialibraryd", "Service");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v8 databasePath];
          *buf = 138543362;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Lock: closing all database connections for library at %{public}@", buf, 0xCu);
        }

        v14 = [v8 connectionPool];
        [v14 _closeAllConnectionsAndWaitForBusyConnections:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }
}

- (int64_t)currentLockReason
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000114FC;
  v5[3] = &unk_1000318C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCurrentLockReason:(int64_t)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100011584;
  v4[3] = &unk_1000317B0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(serialQueue, v4);
}

- (BOOL)isDatabaseLocked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001163C;
  v5[3] = &unk_1000318C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDatabaseLocked:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000116C8;
  v4[3] = &unk_100031788;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(serialQueue, v4);
}

- (void)start
{
  v3 = objc_alloc_init(NSMutableDictionary);
  xpcClients = self->_xpcClients;
  self->_xpcClients = v3;

  v7 = [[MSVXPCTransaction alloc] initWithName:@"Keep-alive for MediaLibraryService initialization"];
  [v7 beginTransaction];
  v5 = [NSDate dateWithTimeIntervalSinceNow:2.0];
  [v7 endTransactionOnDate:v5];

  [(MLDMediaLibraryService *)self _setupNotifyEventHandlers];
  [(MLDMediaLibraryService *)self _setupActivityHandlers];
  [(MLDMediaLibraryService *)self _setupCacheDeleteController];
  v6 = [(MLDMediaLibraryService *)self _XPCListenerForService:1];
}

- (void)performDatabasePathChange:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (MSVDeviceSupportsMultipleLibraries())
  {
    [(MLDMediaLibraryService *)self _updateMultiUserPurgeabilityForPrimaryLibraryPath:v7];
  }

  v6[2](v6, 1, 0);
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_xpcLock);
  v5 = [(NSMutableDictionary *)self->_xpcClients allValues];
  os_unfair_lock_unlock(&self->_xpcLock);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011918;
  block[3] = &unk_100031760;
  v10 = v4;
  v11 = self;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_sync(serialQueue, block);
}

- (void)mediaLibraryWriter:(id)a3 terminatedTransaction:(id)a4 withError:(id)a5
{
  v12 = a5;
  v7 = a4;
  v8 = [v7 client];
  v9 = [v8 connection];

  v10 = [v7 identifier];

  if (v9)
  {
    v11 = [v9 remoteObjectProxy];
    [v11 serviceTerminatedTransactionWithIdentifier:v10 error:v12];
  }

  [(MLDMediaLibraryService *)self _unregisterTransactionInfoForIdentifier:v10];
}

- (void)library:(id)a3 didBeginDatabaseTransactionWithConnection:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 currentTransactionID];
  v8 = [(ML3MediaLibraryWriter *)self->_writer _transactionForIdentifier:v7];
  if (!v8)
  {
    v8 = [[ML3ActiveTransaction alloc] initWithLibrary:v9 connection:v6 client:0];
    [v8 setTerminable:0];
    [(ML3MediaLibraryWriter *)self->_writer _registerTransaction:v8];
  }
}

- (BOOL)_shouldAcceptConnectionForMediaLibraryService:(id)a3
{
  v4 = a3;
  [v4 setExportedObject:self];
  v5 = +[MLMediaLibraryServiceInterface serviceInterface];
  [v4 setExportedInterface:v5];

  v6 = +[MLMediaLibraryServiceInterface clientInterface];
  [v4 setRemoteObjectInterface:v6];

  [v4 setDelegate:self];
  [v4 ml_setValid:1];
  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100011FF8;
  v19[3] = &unk_100031738;
  objc_copyWeak(&v20, &from);
  objc_copyWeak(&v21, &location);
  [v4 setInvalidationHandler:v19];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000120E0;
  v16 = &unk_100031738;
  objc_copyWeak(&v17, &from);
  objc_copyWeak(&v18, &location);
  [v4 setInterruptionHandler:&v13];
  v7 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Listener accepted new connection %{public}@", buf, 0x16u);
  }

  v8 = [ML3Client alloc];
  v9 = [v8 initWithConnection:{v4, v13, v14, v15, v16}];
  os_unfair_lock_lock(&self->_xpcLock);
  xpcClients = self->_xpcClients;
  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 processIdentifier]);
  [(NSMutableDictionary *)xpcClients setObject:v9 forKey:v11];

  os_unfair_lock_unlock(&self->_xpcLock);
  [v4 resume];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  memset(buf, 0, 32);
  v9 = TCCAccessCheckAuditToken();
  v10 = os_log_create("com.apple.amp.medialibraryd", "Service");
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = [v8 processIdentifier];
      v13 = "Refusing connection from pid: %d, TCC not granted";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEBUG;
      v16 = 8;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, v16);
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    *&buf[24] = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Received request from listener %{public}@ for connection %{public}@", buf, 0x20u);
  }

  if ([(MLDMediaLibraryService *)self _MLDSupportedServiceForXPCListener:v6]!= 1)
  {
    v11 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      *&buf[22] = 2114;
      *&buf[24] = v6;
      v13 = "%{public}@ Ignoring connection %{public}@ from listener %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 32;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = [(MLDMediaLibraryService *)self _shouldAcceptConnectionForMediaLibraryService:v8];
LABEL_14:

  return v12;
}

- (void)securityScopedURLWrapperForItemPid:(unint64_t)a3 withDatabasePath:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[ML3MusicLibrary alloc] initWithPath:v9];

  v11 = +[NSXPCConnection currentConnection];
  v12 = [v11 valueForEntitlement:@"com.apple.medialibrary.media-access"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v22 = 0;
    v14 = [(MLDMediaLibraryService *)self _generateSecurityScopedURLWrapperForItemPid:a3 withLibrary:v10 error:&v22];
    v15 = v22;
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v24 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@ securityScopedURLWrapperForItemPid client missing entitlement.", buf, 0xCu);
  }

  v15 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:2001 userInfo:0];
  v14 = 0;
  if (v8)
  {
LABEL_7:
    callbackQueue = self->_callbackQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100012610;
    v18[3] = &unk_100031A08;
    v19 = v14;
    v21 = v8;
    v20 = v15;
    dispatch_async(callbackQueue, v18);
  }

LABEL_8:
}

- (void)getClientImportServiceListenerEndpointWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MLDMediaLibraryService *)self _XPCListenerForService:3];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = os_log_create("com.apple.amp.medialibraryd", "MultiUser");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@ - Unable to get an anonymous listener for ClientImportSessionService - This usually indicates an attempt to access medialibraryd without the proper entitlements.", &v9, 0xCu);
    }

    v6 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:2000 userInfo:&off_1000331F8];
  }

  v8 = [v5 endpoint];
  v4[2](v4, v8, v6);
}

- (void)getMediaLibraryResourcesServiceListenerEndpointWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MLDMediaLibraryService *)self _XPCListenerForService:2];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = os_log_create("com.apple.amp.medialibraryd", "MultiUser");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@ - Unable to get an anonymous listener for MediaLibraryResourcesService - This usually indicates an attempt to access medialibraryd without the proper entitlements.", &v9, 0xCu);
    }

    v6 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:2000 userInfo:&off_1000331D0];
  }

  v8 = [v5 endpoint];
  v4[2](v4, v8, v6);
}

- (void)performMaintenanceTasksForDatabaseAtPath:(id)a3
{
  v6 = 0;
  v4 = [(MLDMediaLibraryService *)self _isMediaPath:a3 selector:a2 resolvedPath:&v6];
  v5 = v6;
  if (v4)
  {
    [(MLDMediaLibraryService *)self _performMaintenanceOnDatabaseAtPath:v5];
  }
}

- (void)performMaintenanceTasksForDatabaseAtPath:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a4;
  v11 = 0;
  LOBYTE(a2) = [(MLDMediaLibraryService *)self _isMediaPath:a3 selector:a2 resolvedPath:&v11];
  v8 = v11;
  if (a2)
  {
    [(MLDMediaLibraryService *)self _performMaintenanceOnDatabaseAtPath:v8 withActivity:0 completion:v7];
  }

  else if (v7)
  {
    v9 = objc_retainBlock(v7);
    v10 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:195935908 userInfo:0];
    (*(v9 + 2))(v9, 0, v10, 0);
  }
}

- (void)updateSiriIndexMetadataForAllLibrariesWithCompletion:(id)a3
{
  v18 = a3;
  v19 = [(MLDMediaLibraryService *)self _currentXPCClient];
  v4 = [v19 connection];

  if (v4)
  {
    v5 = [v19 connection];
    v6 = v5;
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    [ML3DatabasePrivacyContext logDatabasePrivacyAccessWithAuditToken:&v32];
  }

  v7 = dispatch_group_create();
  v8 = +[ML3MusicLibrary allLibraries];
  *&v32 = 0;
  *(&v32 + 1) = &v32;
  *&v33 = 0x2810000000;
  *(&v33 + 1) = &unk_10002B6DD;
  v34 = 0;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        dispatch_group_enter(v7);
        v14 = [v13 databasePath];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100012DFC;
        v24[3] = &unk_100031710;
        v27 = &v32;
        v25 = v9;
        v26 = v7;
        [(MLDMediaLibraryService *)self _updateSiriIndexMetadataForLibraryAtPath:v14 completion:v24];
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v10);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012E74;
  block[3] = &unk_1000316E8;
  v22 = v9;
  v23 = v18;
  v16 = v9;
  v17 = v18;
  dispatch_group_notify(v7, callbackQueue, block);

  _Block_object_dispose(&v32, 8);
}

- (void)updateSpotlightIndexMetadataForItemsWithIdentifiers:(id)a3 bundleID:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqual:@"com.apple.Music"])
  {
    v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v9 allowPlaceholder:1 error:0];
    v12 = [v11 applicationState];
    v13 = [v12 isValid];

    if (v13)
    {
      if (!v8 || [v8 count])
      {
        v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v28) = 138543362;
          *(&v28 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received valid request to update spotlight index for bundle ID %{public}@", &v28, 0xCu);
        }

        v32 = MLDatabaseOperationAttributeBundleIDKey;
        v33 = v9;
        v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

        if (v8)
        {
          [v16 setValue:v8 forKey:MLDatabaseOperationAttributeEntityURLsArrayKey];
        }

        if ([v9 isEqualToString:ML3BundleIDMusic])
        {
          [v16 setValue:self->_musicAppAssociator forKey:MLDatabaseOperationAttributeSpotlightIndexAppEntityAssociatorKey];
        }

        v30[0] = MLDatabaseOperationOptionDatabasePathKey;
        v17 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
        v31[0] = v17;
        v31[1] = &off_100033140;
        v30[1] = MLDatabaseOperationOptionPriorityLevelKey;
        v30[2] = MLDatabaseOperationOptionReadOnlyKey;
        v30[3] = MLDatabaseOperationOptionEnqueueSerially;
        v31[2] = &__kCFBooleanTrue;
        v31[3] = &__kCFBooleanTrue;
        v18 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];

        v19 = [(MLDMediaLibraryService *)self _currentXPCClient];
        v20 = [v19 connection];

        if (v20)
        {
          v21 = [v19 connection];
          v22 = v21;
          if (v21)
          {
            [v21 auditToken];
          }

          else
          {
            v28 = 0u;
            v29 = 0u;
          }

          [ML3DatabasePrivacyContext logDatabasePrivacyAccessWithAuditToken:&v28];
        }

        [(MLDMediaLibraryService *)self performDatabaseOperation:4 withAttributes:v16 options:v18 completionHandler:v10, v28, v29];

        goto LABEL_30;
      }

      if (v10)
      {
        v27 = os_log_create("com.apple.amp.medialibraryd", "Default");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v28) = 138543362;
          *(&v28 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Failed to process request to update spotlight index for bundle ID %{public}@ – searchable items identifiers array has zero entries", &v28, 0xCu);
        }

        v25 = &off_1000331A8;
        v26 = 1002;
LABEL_22:
        v16 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:v26 userInfo:v25];
        v10[2](v10, 0, v16);
LABEL_30:
      }
    }

    else if (v10)
    {
      v24 = os_log_create("com.apple.amp.medialibraryd", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Failed to process request to update spotlight index – removed system app", &v28, 2u);
      }

      v25 = &off_100033180;
      v26 = 1003;
      goto LABEL_22;
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v10)
  {
    v23 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Failed to process request to update spotlight index – invalid bundle id", &v28, 2u);
    }

    v11 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:1001 userInfo:&off_100033158];
    v10[2](v10, 0, v11);
    goto LABEL_31;
  }

LABEL_32:
}

- (void)getLanguageResourcesWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[NSXPCConnection currentConnection];
    v6 = v5;
    if (v5)
    {
      [v5 auditToken];
      v7 = MSVBundleIDForAuditToken();
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v7 = [v8 bundleIdentifier];
    }

    v9 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received language resources request from %{public}@", &v12, 0xCu);
    }

    [(MLDMediaLibraryService *)self _resetIdleTimer];
    v10 = +[ML3LanguageResourceManager sharedResourceManager];
    v11 = [v10 resources];
    v4[2](v4, v11, 0);
  }
}

- (void)unlockDatabaseWithCompletion:(id)a3
{
  v4 = a3;
  writerUpdateQueue = self->_writerUpdateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013608;
  v7[3] = &unk_1000316E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(writerUpdateQueue, v7);
}

- (void)lockDatabaseForReason:(int64_t)a3 withCompletion:(id)a4
{
  v7 = a4;
  if (!a3)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MLDMediaLibraryService.m" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"reason != MLServiceLockReasonNone"}];
  }

  writerUpdateQueue = self->_writerUpdateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013A6C;
  block[3] = &unk_1000316C0;
  v12 = v7;
  v13 = a3;
  block[4] = self;
  v9 = v7;
  dispatch_barrier_async(writerUpdateQueue, block);
}

- (void)cancelImportOperation:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cancelling operations for import source %lu", buf, 0xCu);
  }

  importManager = self->_importManager;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014044;
  v10[3] = &unk_100031670;
  v11 = v6;
  v9 = v6;
  [(ML3DatabaseImportManager *)importManager cancelImportOperationsForSource:a3 withCompletionHandler:v10];
}

- (void)performImport:(id)a3 fromSource:(unint64_t)a4 withUUID:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(MLDMediaLibraryService *)self _currentXPCClient];
  v15 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Received import command from client: %{public}@", buf, 0xCu);
  }

  v16 = [v11 libraryPath];
  v33 = 0;
  v17 = [(MLDMediaLibraryService *)self _isMediaPath:v16 selector:a2 resolvedPath:&v33];
  v18 = v33;
  if (v17)
  {
    v19 = [MSVXPCTransaction alloc];
    v20 = [NSString stringWithFormat:@"Database import into library at path: %@", v18];
    v21 = [v19 initWithName:v20];

    [v21 beginTransaction];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001431C;
    v24[3] = &unk_100031648;
    v25 = v11;
    v26 = self;
    v27 = v18;
    v28 = v14;
    v32 = a4;
    v29 = v12;
    v30 = v21;
    v31 = v13;
    v22 = v21;
    [(MLDMediaLibraryService *)self validateDatabaseAtPath:v27 withCompletionHandler:v24];

    v23 = v25;
LABEL_7:

    goto LABEL_8;
  }

  if (v13)
  {
    v22 = objc_retainBlock(v13);
    v23 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:195935908 userInfo:0];
    (*(v22 + 2))(v22, 0, v23, 0);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setOptions:(id)a3 withCompletionHandler:(id)a4
{
  v4 = a4;
  v5 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = +[NSXPCConnection currentConnection];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Received set options command from client connection: %{public}@", &v8, 0xCu);
  }

  v7 = [[MSVXPCTransaction alloc] initWithName:@"Setting media library options."];
  [v7 beginTransaction];
  if (v4)
  {
    v4[2](v4, 1, 0);
  }

  [v7 endTransaction];
}

- (void)performDatabaseOperation:(unint64_t)a3 withAttributes:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MLDMediaLibraryService *)self _currentXPCClient];
  v15 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received database operation request on client: %{public}@", buf, 0xCu);
  }

  v16 = [MSVXPCTransaction alloc];
  v41 = a3;
  v17 = [NSString stringWithFormat:@"Database operation of type %lu", a3];
  v18 = [v16 initWithName:v17];

  v42 = v18;
  [v18 beginTransaction];
  v19 = [v12 objectForKey:MLDatabaseOperationOptionPriorityLevelKey];
  if (v19)
  {
    v20 = [v12 objectForKey:MLDatabaseOperationOptionReadOnlyKey];
    v21 = [v20 BOOLValue];

    v22 = [v19 unsignedIntegerValue];
    if ((v21 & 1) == 0 && v22 && [(ML3DatabaseImportManager *)self->_importManager operationsCount])
    {
      v23 = os_log_create("com.apple.amp.medialibraryd", "Service");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Suspending current import operations for higher priority database operation.", buf, 2u);
      }

      [(ML3DatabaseImportManager *)self->_importManager suspendImportOperations];
      [(MLDMediaLibraryService *)self _startIdleTimer];
    }
  }

  [(MLDMediaLibraryService *)self _resetIdleTimer];
  v24 = [v12 objectForKey:MLDatabaseOperationOptionDatabasePathKey];
  v57 = 0;
  v25 = [(MLDMediaLibraryService *)self _isMediaPath:v24 selector:a2 resolvedPath:&v57];
  v26 = v57;
  v27 = v26;
  if (v25)
  {
    v38 = v19;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100014CD4;
    v49[3] = &unk_1000315A8;
    v49[4] = self;
    v28 = v26;
    v50 = v28;
    v56 = v41;
    v51 = v11;
    v29 = v12;
    v52 = v29;
    v39 = v14;
    v30 = v14;
    v53 = v30;
    v40 = v13;
    v31 = v13;
    v55 = v31;
    v54 = v42;
    v32 = objc_retainBlock(v49);
    v33 = [v29 objectForKey:MLDatabaseOperationOptionTransactionIdentifierKey];
    if (v33)
    {
      dispatch_async(self->_writerUpdateQueue, v32);
    }

    else
    {
      v37 = v11;
      v36 = os_log_create("com.apple.amp.medialibraryd", "Service");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v59 = v41;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Validating database before performing operation of type %lu", buf, 0xCu);
      }

      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100014DE0;
      v43[3] = &unk_1000315D0;
      v48 = v41;
      v44 = v30;
      v45 = self;
      v46 = v32;
      v47 = v31;
      [(MLDMediaLibraryService *)self validateDatabaseAtPath:v28 withCompletionHandler:v43];

      v11 = v37;
    }

    v19 = v38;

    v14 = v39;
    v13 = v40;
  }

  else if (v13)
  {
    v34 = objc_retainBlock(v13);
    v35 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:195935908 userInfo:0];
    (*(v34 + 2))(v34, 0, v35, 0);
  }
}

- (void)executeQuery:(id)a3 withParameters:(id)a4 options:(id)a5 onTransaction:(id)a6 withCompletionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[NSXPCConnection currentConnection];
  v18 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Received database query request on client connection: %{public}@", buf, 0xCu);
  }

  v19 = [(MLDMediaLibraryService *)self _currentXPCClient];
  if ([(MLDMediaLibraryService *)self _validateTransactionIdentifier:v15 forClient:v19])
  {
    [(MLDMediaLibraryService *)self _resetIdleTimer];
    if (v16)
    {
      v20 = [(MLDMediaLibraryService *)self _currentXPCClient];
      v21 = [v20 bundleID];

      writerUpdateQueue = self->_writerUpdateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100015668;
      block[3] = &unk_100031558;
      block[4] = self;
      v26 = v15;
      v27 = v12;
      v28 = v13;
      v29 = v14;
      v30 = v21;
      v31 = v16;
      v23 = v21;
      dispatch_async(writerUpdateQueue, block);
    }

    else
    {
      v23 = os_log_create("com.apple.amp.medialibraryd", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v19 bundleID];
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Warning: %{public}@ attempted to execute query without completion handler. Results will be thrown in the bit bucket without a way to give them to the client.", buf, 0xCu);
      }
    }
  }

  else
  {
    v23 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:2002 userInfo:0];
    (*(v16 + 2))(v16, 0, v23);
  }
}

- (void)executeUpdate:(id)a3 withParameters:(id)a4 onTransaction:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = +[NSXPCConnection currentConnection];
    *buf = 138543362;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received database update request on client connection: %{public}@", buf, 0xCu);
  }

  v16 = [(MLDMediaLibraryService *)self _currentXPCClient];
  if ([(MLDMediaLibraryService *)self _validateTransactionIdentifier:v12 forClient:v16])
  {
    [(MLDMediaLibraryService *)self _resetIdleTimer];
    v17 = [(MLDMediaLibraryService *)self _currentXPCClient];
    v18 = [v17 bundleID];

    writerUpdateQueue = self->_writerUpdateQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000159D0;
    v21[3] = &unk_100031530;
    v21[4] = self;
    v22 = v12;
    v23 = v10;
    v24 = v11;
    v25 = v18;
    v26 = v13;
    v20 = v18;
    dispatch_async(writerUpdateQueue, v21);
  }

  else
  {
    v20 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:2002 userInfo:0];
    (*(v13 + 2))(v13, 0, v20);
  }
}

- (id)beginTransactionForDatabaseWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10000F848;
  v24 = sub_10000F858;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000F848;
  v18 = sub_10000F858;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100015CB8;
  v10[3] = &unk_1000314E0;
  v12 = &v14;
  v13 = &v20;
  v10[4] = self;
  v7 = dispatch_semaphore_create(0);
  v11 = v7;
  [(MLDMediaLibraryService *)self beginTransactionForDatabaseWithContext:v6 completionHandler:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    *a4 = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

- (void)beginTransactionForDatabaseWithContext:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 path];
  v10 = [v7 priorityLevel];
  v11 = [v7 options];
  v12 = [(MLDMediaLibraryService *)self _currentXPCClient];
  v13 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received begin transaction request on client: %{public}@", buf, 0xCu);
  }

  v42 = 0;
  v14 = [(MLDMediaLibraryService *)self _isMediaPath:v9 selector:a2 resolvedPath:&v42];
  v15 = v42;
  v16 = v15;
  if (v14)
  {
    if (v8)
    {
      if (v15)
      {
        v17 = [NSString stringWithFormat:@"Database transaction for library at path: %@", v15];
        v30 = v11;
        if ((v11 & 2) != 0)
        {
          v31 = 0;
        }

        else
        {
          [(MLDTaskAssertion *)v12 processID];
          v29 = ML3ProcessHandleFromPID();
          if ([v29 isDaemon])
          {
            v18 = os_log_create("com.apple.amp.medialibraryd", "Service");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v44 = v12;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping taking task assertion for daemon client process %{public}@", buf, 0xCu);
            }

            v31 = 0;
          }

          else
          {
            v28 = v10;
            v32 = [MLDTaskAssertion alloc];
            v20 = [NSString stringWithFormat:@"Finish Task Assertion, %@", v17];
            v27 = [(MLDTaskAssertion *)v12 processID];
            v21 = [(MLDTaskAssertion *)v12 bundleID];
            v31 = [(MLDTaskAssertion *)v32 initWithName:v20 pid:v27 bundleID:v21];

            v18 = os_log_create("com.apple.amp.medialibraryd", "Service");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v44 = v31;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Taking task assertion %{public}@", buf, 0xCu);
            }

            v10 = v28;
          }
        }

        v22 = [[MSVXPCTransaction alloc] initWithName:v17];
        [v22 beginTransaction];
        if (v10 && [(ML3DatabaseImportManager *)self->_importManager operationsCount])
        {
          v23 = os_log_create("com.apple.amp.medialibraryd", "Service");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Suspending current import operations for higher priority client transaction.", buf, 2u);
          }

          [(ML3DatabaseImportManager *)self->_importManager suspendImportOperations];
          [(MLDMediaLibraryService *)self _startIdleTimer];
        }

        else
        {
          [(MLDMediaLibraryService *)self _resetIdleTimer];
        }

        v24 = os_log_create("com.apple.amp.medialibraryd", "Service");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Validating database before starting transaction", buf, 2u);
        }

        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100016314;
        v33[3] = &unk_1000314B8;
        v33[4] = self;
        v34 = v16;
        v35 = v12;
        v40 = v30;
        v41 = a2;
        v39 = v8;
        v36 = v22;
        v37 = v31;
        v38 = v7;
        v25 = v31;
        v26 = v22;
        [(MLDMediaLibraryService *)self validateDatabaseAtPath:v34 withCompletionHandler:v33];
      }

      else
      {
        v17 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:@"No database path provided to start the transaction."];
        (*(v8 + 2))(v8, 0, v17);
      }

      goto LABEL_31;
    }

    v17 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_31:

      goto LABEL_32;
    }

    v19 = [(MLDTaskAssertion *)v12 bundleID];
    *buf = 138543362;
    v44 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Warning: %{public}@ attempted to begin a transaction without a completion handler. MLWriter will deadlock without a way to give identifier back to client.", buf, 0xCu);
LABEL_15:

    goto LABEL_31;
  }

  if (v8)
  {
    v17 = objc_retainBlock(v8);
    v19 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:195935908 userInfo:0];
    (*(v17 + 16))(v17, 0, v19, 0);
    goto LABEL_15;
  }

LABEL_32:
}

- (void)recreateDatabaseAtPath:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = +[NSXPCConnection currentConnection];
  v10 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received database recreation request on client connection: %{public}@", buf, 0xCu);
  }

  v16 = 0;
  v11 = [(MLDMediaLibraryService *)self _isMediaPath:v8 selector:a2 resolvedPath:&v16];

  v12 = v16;
  if (v11)
  {
    [(MLDMediaLibraryService *)self _performDiagnosticWithReason:@"Database Reinitialization"];
    v13 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Enqueueing recreation operation...", buf, 2u);
    }

    [(MLDMediaLibraryService *)self _validateDatabaseAtPath:v12 forConnection:v9 byTruncatingFirst:1 withCompletion:v7];
  }

  else if (v7)
  {
    v14 = objc_retainBlock(v7);
    v15 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:195935908 userInfo:0];
    (*(v14 + 2))(v14, 0, v15, 0);
  }
}

- (void)performDiagnosticWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 valueForEntitlement:@"com.apple.medialibraryd.diagnostic"];
  if (_NSIsNSNumber() && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(Service API) Collecting diagnostic information...", v11, 2u);
    }

    v8 = [(MLDDiagnostic *)[MLDMutableDiagnostic alloc] initWithReason:@"MediaLibraryService API"];
    [(MLDMediaLibraryService *)self collectDiagnostic:v8];
    v9 = [(MLDDiagnostic *)v8 description];
    v4[2](v4, v9, 0);
  }

  else
  {
    v10 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:2001 userInfo:0];
    (v4)[2](v4, 0, v10);
  }
}

- (void)attemptDatabaseFileRecoveryAtPath:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[NSXPCConnection currentConnection];
    *buf = 138543362;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received request to attempt database recovery from client connection: %{public}@", buf, 0xCu);
  }

  v23 = 0;
  v11 = [(MLDMediaLibraryService *)self _isMediaPath:v8 selector:a2 resolvedPath:&v23];

  v12 = v23;
  if (v11)
  {
    v13 = [MSVXPCTransaction alloc];
    v14 = [NSString stringWithFormat:@"Database recovery at path: %@", v12];
    v15 = [v13 initWithName:v14];

    [v15 beginTransaction];
    [(MLDMediaLibraryService *)self _performDiagnosticWithReason:@"Database File Recovery"];
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017100;
    block[3] = &unk_100031440;
    block[4] = self;
    v22 = v7;
    v20 = v15;
    v21 = v12;
    v17 = v15;
    dispatch_async(serialQueue, block);

LABEL_7:
    goto LABEL_8;
  }

  if (v7)
  {
    v17 = objc_retainBlock(v7);
    v18 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:195935908 userInfo:0];
    (*(v17 + 2))(v17, 0, v18, 0);

    goto LABEL_7;
  }

LABEL_8:
}

- (void)validateDatabaseAtPath:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSXPCConnection currentConnection];
  v10 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received database validation request on client connection: %{public}@ - path: %{public}@", buf, 0x16u);
  }

  v15 = 0;
  v11 = [(MLDMediaLibraryService *)self _isMediaPath:v7 selector:a2 resolvedPath:&v15];
  v12 = v15;
  if (v11)
  {
    [(MLDMediaLibraryService *)self _validateDatabaseAtPath:v12 forConnection:v9 byTruncatingFirst:0 withCompletion:v8];
  }

  else if (v8)
  {
    v13 = objc_retainBlock(v8);
    v14 = [NSError errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:195935908 userInfo:0];
    (*(v13 + 2))(v13, 0, v14, 0);
  }
}

- (void)dealloc
{
  [(MLDMediaLibraryService *)self _tearDownLibraryDidChangeNotifications];
  [(MLDMediaLibraryService *)self _tearDownSignalHandlers];
  [(MLDMediaLibraryService *)self _stopIdleTimer];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017728;
  block[3] = &unk_1000313F0;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  stateHandle = self->_stateHandle;
  MSVLogRemoveStateHandler();
  v5.receiver = self;
  v5.super_class = MLDMediaLibraryService;
  [(MLDMediaLibraryService *)&v5 dealloc];
}

- (id)_stateDump
{
  v3 = [(MLDDiagnostic *)[MLDMutableDiagnostic alloc] initWithReason:@"OS_STATE_API_REQUEST"];
  [(MLDMediaLibraryService *)self collectDiagnostic:v3];
  v4 = [(MLDDiagnostic *)v3 dictionaryRepresentation];

  return v4;
}

- (id)_init
{
  v37.receiver = self;
  v37.super_class = MLDMediaLibraryService;
  v2 = [(MLDMediaLibraryService *)&v37 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.medialibraryd.MediaLibraryService.SerialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = dispatch_queue_create("com.apple.medialibraryd.MediaLibraryService.SpotlightIndexQueue", 0);
    spotlightIndexQueue = v2->_spotlightIndexQueue;
    v2->_spotlightIndexQueue = v5;

    v7 = dispatch_queue_create("com.apple.medialibraryd.MLMediaLibraryWriterBeginTransactionQueue", 0);
    writerBeginTransactionQueue = v2->_writerBeginTransactionQueue;
    v2->_writerBeginTransactionQueue = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.medialibraryd.MLMediaLibraryWriterUpdateQueue", v9);
    writerUpdateQueue = v2->_writerUpdateQueue;
    v2->_writerUpdateQueue = v10;

    v12 = dispatch_queue_create("com.apple.medialibraryd.MLMediaLibraryCallbackQueue", &_dispatch_queue_attr_concurrent);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v12;

    v2->_xpcLock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(ML3MediaLibraryWriter);
    writer = v2->_writer;
    v2->_writer = v14;

    [(ML3MediaLibraryWriter *)v2->_writer setDelegate:v2];
    v16 = objc_alloc_init(ML3DatabaseImportManager);
    importManager = v2->_importManager;
    v2->_importManager = v16;

    v18 = objc_alloc_init(MLDDatabaseValidationController);
    validationController = v2->_validationController;
    v2->_validationController = v18;

    v20 = objc_alloc_init(NSOperationQueue);
    maintenanceTasksOperationQueue = v2->_maintenanceTasksOperationQueue;
    v2->_maintenanceTasksOperationQueue = v20;

    [(NSOperationQueue *)v2->_maintenanceTasksOperationQueue setName:@"com.apple.medialibraryd.MaintenanceOperationQueue"];
    [(NSOperationQueue *)v2->_maintenanceTasksOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_maintenanceTasksOperationQueue setQualityOfService:-1];
    v22 = objc_alloc_init(NSOperationQueue);
    databaseRecoveryOperationQueue = v2->_databaseRecoveryOperationQueue;
    v2->_databaseRecoveryOperationQueue = v22;

    [(NSOperationQueue *)v2->_databaseRecoveryOperationQueue setQualityOfService:25];
    [(NSOperationQueue *)v2->_databaseRecoveryOperationQueue setName:@"com.apple.medialibraryd.DatabaseRecoveryOperationQueue"];
    [(NSOperationQueue *)v2->_databaseRecoveryOperationQueue setMaxConcurrentOperationCount:1];
    v24 = objc_alloc_init(NSMutableArray);
    databaseRecoveryCompletionHandlers = v2->_databaseRecoveryCompletionHandlers;
    v2->_databaseRecoveryCompletionHandlers = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    mediaLibraries = v2->_mediaLibraries;
    v2->_mediaLibraries = v26;

    v28 = objc_alloc_init(NSMutableDictionary);
    xpcListeners = v2->_xpcListeners;
    v2->_xpcListeners = v28;

    v30 = objc_alloc_init(NSMutableDictionary);
    transactionInfoForID = v2->_transactionInfoForID;
    v2->_transactionInfoForID = v30;

    v32 = objc_alloc_init(_TtC13medialibraryd41MLDSpotlightIndexMusicAppEntityAssociator);
    musicAppAssociator = v2->_musicAppAssociator;
    v2->_musicAppAssociator = v32;

    [(MLDMediaLibraryService *)v2 _registerForLibraryDidChangeNotifications];
    [(MLDMediaLibraryService *)v2 _setupSignalHandlers];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100017AF4;
    v35[3] = &unk_100031388;
    v36 = v2;
    v36->_stateHandle = sub_100017AF4(v35);
  }

  return v2;
}

- (MLDMediaLibraryService)init
{
  [NSException raise:NSGenericException format:@"-init is invalid. Use +sharedInstance instead."];

  return 0;
}

+ (id)sharedInstance
{
  if (qword_1000384E0 != -1)
  {
    dispatch_once(&qword_1000384E0, &stru_100031338);
  }

  v3 = qword_1000384D8;

  return v3;
}

@end