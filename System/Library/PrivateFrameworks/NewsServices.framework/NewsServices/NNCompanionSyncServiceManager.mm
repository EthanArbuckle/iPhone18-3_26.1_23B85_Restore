@interface NNCompanionSyncServiceManager
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (BOOL)shouldResumeSync;
- (NNCompanionSyncServiceManager)initWithResultsFileURL:(id)a3 pendingSyncFileURL:(id)a4 lastSyncFileURL:(id)a5 syncResultsFileURL:(id)a6;
- (NNCompanionSyncServiceManagerDelegate)delegate;
- (NNSyncableResult)syncableResult;
- (id)companionSyncSessionManagerWantsHeadlineData:(id)a3;
- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5;
- (void)companionSyncSessionManager:(id)a3 didSyncHeadlineData:(id)a4;
- (void)companionSyncSessionManagerWantsHeadlineUpdate:(id)a3;
- (void)enqueueHeadlineSyncWithData:(id)a3;
- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5;
@end

@implementation NNCompanionSyncServiceManager

- (NNCompanionSyncServiceManager)initWithResultsFileURL:(id)a3 pendingSyncFileURL:(id)a4 lastSyncFileURL:(id)a5 syncResultsFileURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = NNCompanionSyncServiceManager;
  v14 = [(NNCompanionSyncServiceManager *)&v31 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v16 = dispatch_queue_create("com.apple.nanonews.syncQueue", v15);
    syncQueue = v14->_syncQueue;
    v14->_syncQueue = v16;

    v18 = [v10 copy];
    resultsFileURL = v14->_resultsFileURL;
    v14->_resultsFileURL = v18;

    v20 = [v13 copy];
    syncResultsFileURL = v14->_syncResultsFileURL;
    v14->_syncResultsFileURL = v20;

    v22 = [v11 copy];
    pendingSyncFileURL = v14->_pendingSyncFileURL;
    v14->_pendingSyncFileURL = v22;

    v24 = [v12 copy];
    lastSyncFileURL = v14->_lastSyncFileURL;
    v14->_lastSyncFileURL = v24;

    v26 = objc_alloc_init(NNChangeSerializer);
    serializer = v14->_serializer;
    v14->_serializer = v26;

    v28 = objc_alloc_init(NNCompanionSyncSessionManager);
    sessionManager = v14->_sessionManager;
    v14->_sessionManager = v28;

    [(NNCompanionSyncSessionManager *)v14->_sessionManager setDelegate:v14];
  }

  return v14;
}

- (NNSyncableResult)syncableResult
{
  v2 = [(NNCompanionSyncServiceManager *)self resultsFileURL];
  v3 = [v2 path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [NSData dataWithContentsOfFile:v3];
    if (v6)
    {
      v11 = 0;
      v7 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v11];
      v8 = v11;
      if (!v7)
      {
        v9 = NNSetupCompanionSyncLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100008FF8(v6, v8, v9);
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 conformsToProtocol:&OBJC_PROTOCOL___NNSyncableResult] & 1) == 0)
      {

        v7 = 0;
      }
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

- (BOOL)shouldResumeSync
{
  v3 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Checking if should resume sync…", &v18, 2u);
  }

  v4 = [(NNCompanionSyncServiceManager *)self pendingSyncFileURL];
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = [(NNCompanionSyncServiceManager *)self syncResultsFileURL];
    v9 = +[NSFileManager defaultManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      v12 = [NSData dataWithContentsOfURL:v4];
      v13 = [NSData dataWithContentsOfURL:v8];
      v14 = [v12 isEqual:v13];
      v15 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = 134217984;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Resume sync - Data equal = %ld", &v18, 0xCu);
      }

      v16 = v14 ^ 1;
    }

    else
    {
      v12 = NNSetupCompanionSyncLog();
      v16 = 1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "WILL resume sync - No sync'd data..", &v18, 2u);
      }
    }
  }

  else
  {
    v8 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will NOT resume sync - No data to sync.", &v18, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)enqueueHeadlineSyncWithData:(id)a3
{
  v4 = a3;
  v5 = [(NNCompanionSyncServiceManager *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003568;
  v7[3] = &unk_100010498;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)companionSyncSessionManagerWantsHeadlineData:(id)a3
{
  v3 = [(NNCompanionSyncServiceManager *)self pendingSyncFileURL];
  v4 = [v3 path];

  v5 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Looking for data at %@!", &v12, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v4];

  v8 = NNSetupCompanionSyncLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Data found at %@!", &v12, 0xCu);
    }

    v10 = [[NSData alloc] initWithContentsOfFile:v4];
  }

  else
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No data to sync at %@!", &v12, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (void)companionSyncSessionManager:(id)a3 didSyncHeadlineData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(NNCompanionSyncServiceManager *)self lastSyncFileURL];
  v10 = [v9 path];
  v11 = [v7 writeToFile:v10 atomically:1];

  if ((v11 & 1) == 0)
  {
    v12 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(NNCompanionSyncServiceManager *)self lastSyncFileURL];
      v14 = [v13 path];
      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ERROR writing file %@ with data %@.", &v15, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)companionSyncSessionManagerWantsHeadlineUpdate:(id)a3
{
  v4 = [(NNCompanionSyncServiceManager *)self delegate];
  [v4 companionSyncServiceManagerRequestsHeadlineUpdate:self];
}

- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [v6 service];
  v9 = [v8 isMasterStore];

  v10 = [v7 service];
  v11 = [v10 isMasterStore];

  if (v9)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (v9 != v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  v14 = v13;

  return v13;
}

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [(NNCompanionSyncServiceManager *)self sessionManager];
  [v6 setDelegate:v7];

  v8 = [(NNCompanionSyncServiceManager *)self syncQueue];
  [v6 setTargetQueue:v8];

  v9 = [(NNCompanionSyncServiceManager *)self serializer];
  [v6 setSerializer:v9];

  v10 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v6 delegate];
    v12 = [v6 targetQueue];
    v13 = [v6 serializer];
    v15 = 138412802;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "STARTING sync session with delegate %@, queue %@, serializer %@.", &v15, 0x20u);
  }

  return 1;
}

- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Ended sync session.", v10, 2u);
  }

  v8 = [v6 state];
  if (v8 == 9)
  {
    v9 = [(NNCompanionSyncServiceManager *)self delegate];
    [v9 companionSyncServiceManagerDidFinshSync:self];
  }
}

- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = NNSetupCompanionSyncLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = [v8 UUIDString];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Restarting CompanionSync with pairingID: %@", buf, 0xCu);
    }

    v12 = [(NNCompanionSyncServiceManager *)self syncQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003E90;
    v13[3] = &unk_100010498;
    v14 = v7;
    v15 = v8;
    dispatch_async(v12, v13);

    v9 = v14;
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Device is no longer paired.", buf, 2u);
  }
}

- (NNCompanionSyncServiceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end