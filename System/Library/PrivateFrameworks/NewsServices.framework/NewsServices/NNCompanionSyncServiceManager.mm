@interface NNCompanionSyncServiceManager
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (BOOL)shouldResumeSync;
- (NNCompanionSyncServiceManager)initWithResultsFileURL:(id)l pendingSyncFileURL:(id)rL lastSyncFileURL:(id)uRL syncResultsFileURL:(id)fileURL;
- (NNCompanionSyncServiceManagerDelegate)delegate;
- (NNSyncableResult)syncableResult;
- (id)companionSyncSessionManagerWantsHeadlineData:(id)data;
- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession;
- (void)companionSyncSessionManager:(id)manager didSyncHeadlineData:(id)data;
- (void)companionSyncSessionManagerWantsHeadlineUpdate:(id)update;
- (void)enqueueHeadlineSyncWithData:(id)data;
- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)service:(id)service sessionEnded:(id)ended error:(id)error;
@end

@implementation NNCompanionSyncServiceManager

- (NNCompanionSyncServiceManager)initWithResultsFileURL:(id)l pendingSyncFileURL:(id)rL lastSyncFileURL:(id)uRL syncResultsFileURL:(id)fileURL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  fileURLCopy = fileURL;
  v31.receiver = self;
  v31.super_class = NNCompanionSyncServiceManager;
  v14 = [(NNCompanionSyncServiceManager *)&v31 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v16 = dispatch_queue_create("com.apple.nanonews.syncQueue", v15);
    syncQueue = v14->_syncQueue;
    v14->_syncQueue = v16;

    v18 = [lCopy copy];
    resultsFileURL = v14->_resultsFileURL;
    v14->_resultsFileURL = v18;

    v20 = [fileURLCopy copy];
    syncResultsFileURL = v14->_syncResultsFileURL;
    v14->_syncResultsFileURL = v20;

    v22 = [rLCopy copy];
    pendingSyncFileURL = v14->_pendingSyncFileURL;
    v14->_pendingSyncFileURL = v22;

    v24 = [uRLCopy copy];
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
  resultsFileURL = [(NNCompanionSyncServiceManager *)self resultsFileURL];
  path = [resultsFileURL path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:path];

  if (v5)
  {
    v6 = [NSData dataWithContentsOfFile:path];
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

  pendingSyncFileURL = [(NNCompanionSyncServiceManager *)self pendingSyncFileURL];
  v5 = +[NSFileManager defaultManager];
  path = [pendingSyncFileURL path];
  v7 = [v5 fileExistsAtPath:path];

  if (v7)
  {
    syncResultsFileURL = [(NNCompanionSyncServiceManager *)self syncResultsFileURL];
    v9 = +[NSFileManager defaultManager];
    path2 = [syncResultsFileURL path];
    v11 = [v9 fileExistsAtPath:path2];

    if (v11)
    {
      v12 = [NSData dataWithContentsOfURL:pendingSyncFileURL];
      v13 = [NSData dataWithContentsOfURL:syncResultsFileURL];
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
    syncResultsFileURL = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(syncResultsFileURL, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, syncResultsFileURL, OS_LOG_TYPE_INFO, "Will NOT resume sync - No data to sync.", &v18, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)enqueueHeadlineSyncWithData:(id)data
{
  dataCopy = data;
  syncQueue = [(NNCompanionSyncServiceManager *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003568;
  v7[3] = &unk_100010498;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(syncQueue, v7);
}

- (id)companionSyncSessionManagerWantsHeadlineData:(id)data
{
  pendingSyncFileURL = [(NNCompanionSyncServiceManager *)self pendingSyncFileURL];
  path = [pendingSyncFileURL path];

  v5 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Looking for data at %@!", &v12, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:path];

  v8 = NNSetupCompanionSyncLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = path;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Data found at %@!", &v12, 0xCu);
    }

    v10 = [[NSData alloc] initWithContentsOfFile:path];
  }

  else
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = path;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No data to sync at %@!", &v12, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (void)companionSyncSessionManager:(id)manager didSyncHeadlineData:(id)data
{
  managerCopy = manager;
  dataCopy = data;
  v8 = objc_autoreleasePoolPush();
  lastSyncFileURL = [(NNCompanionSyncServiceManager *)self lastSyncFileURL];
  path = [lastSyncFileURL path];
  v11 = [dataCopy writeToFile:path atomically:1];

  if ((v11 & 1) == 0)
  {
    v12 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      lastSyncFileURL2 = [(NNCompanionSyncServiceManager *)self lastSyncFileURL];
      path2 = [lastSyncFileURL2 path];
      v15 = 138412546;
      v16 = path2;
      v17 = 2112;
      v18 = dataCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ERROR writing file %@ with data %@.", &v15, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)companionSyncSessionManagerWantsHeadlineUpdate:(id)update
{
  delegate = [(NNCompanionSyncServiceManager *)self delegate];
  [delegate companionSyncServiceManagerRequestsHeadlineUpdate:self];
}

- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession
{
  sessionCopy = session;
  overSessionCopy = overSession;
  service = [sessionCopy service];
  isMasterStore = [service isMasterStore];

  service2 = [overSessionCopy service];
  isMasterStore2 = [service2 isMasterStore];

  if (isMasterStore)
  {
    v12 = sessionCopy;
  }

  else
  {
    v12 = overSessionCopy;
  }

  if (isMasterStore != isMasterStore2)
  {
    v13 = v12;
  }

  else
  {
    v13 = sessionCopy;
  }

  v14 = v13;

  return v13;
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  sessionCopy = session;
  sessionManager = [(NNCompanionSyncServiceManager *)self sessionManager];
  [sessionCopy setDelegate:sessionManager];

  syncQueue = [(NNCompanionSyncServiceManager *)self syncQueue];
  [sessionCopy setTargetQueue:syncQueue];

  serializer = [(NNCompanionSyncServiceManager *)self serializer];
  [sessionCopy setSerializer:serializer];

  v10 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    delegate = [sessionCopy delegate];
    targetQueue = [sessionCopy targetQueue];
    serializer2 = [sessionCopy serializer];
    v15 = 138412802;
    v16 = delegate;
    v17 = 2112;
    v18 = targetQueue;
    v19 = 2112;
    v20 = serializer2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "STARTING sync session with delegate %@, queue %@, serializer %@.", &v15, 0x20u);
  }

  return 1;
}

- (void)service:(id)service sessionEnded:(id)ended error:(id)error
{
  endedCopy = ended;
  v7 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Ended sync session.", v10, 2u);
  }

  state = [endedCopy state];
  if (state == 9)
  {
    delegate = [(NNCompanionSyncServiceManager *)self delegate];
    [delegate companionSyncServiceManagerDidFinshSync:self];
  }
}

- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  serviceCopy = service;
  iDCopy = iD;
  v9 = NNSetupCompanionSyncLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (iDCopy)
  {
    if (v10)
    {
      uUIDString = [iDCopy UUIDString];
      *buf = 138412290;
      v17 = uUIDString;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Restarting CompanionSync with pairingID: %@", buf, 0xCu);
    }

    syncQueue = [(NNCompanionSyncServiceManager *)self syncQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003E90;
    v13[3] = &unk_100010498;
    v14 = serviceCopy;
    v15 = iDCopy;
    dispatch_async(syncQueue, v13);

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