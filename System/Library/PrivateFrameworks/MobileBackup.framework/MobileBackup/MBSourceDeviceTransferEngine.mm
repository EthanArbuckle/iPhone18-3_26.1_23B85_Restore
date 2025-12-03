@interface MBSourceDeviceTransferEngine
- (BOOL)_setUpFileTransferSessionWithError:(id *)error;
- (BOOL)_setUpWithError:(id *)error;
- (BOOL)_updateOpenFdsLimit:(unint64_t)limit;
- (BOOL)_waitForControlConnectionWithBlock:(id)block;
- (BOOL)cancel;
- (MBServiceManagerDeviceTransferDelegate)delegate;
- (MBSourceDeviceTransferEngine)initWithSessionInfo:(id)info;
- (id)_backupEngineWithPreflightRequest:(id)request;
- (id)_handleError:(id)error;
- (unint64_t)_purgeableDiskSpace;
- (void)_cancelBackupEngine;
- (void)_cancelDisconnectTimer;
- (void)_cleanUpBackupEngine;
- (void)_disableInfraWiFi;
- (void)_enableInfraWiFi;
- (void)_finishWithError:(id)error;
- (void)_handleFileTransferSessionProgress:(id)progress;
- (void)_sendDoneMessageWithError:(id)error;
- (void)_setUpMessaging;
- (void)_signalControlConnectionStarted;
- (void)_startDisconnectTimer;
- (void)_startTrackingPeerConnectionStatus;
- (void)_stopTrackingPeerConnectionStatus;
- (void)dealloc;
- (void)start;
- (void)updatedTotalProgress:(id)progress;
@end

@implementation MBSourceDeviceTransferEngine

- (MBSourceDeviceTransferEngine)initWithSessionInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine initWithSessionInfo:]", "MBSourceDeviceTransferEngine.m", 76, "sessionInfo");
  }

  v5 = infoCopy;
  fileTransferSession = [infoCopy fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine initWithSessionInfo:]", "MBSourceDeviceTransferEngine.m", 78, "fileTransferSession");
  }

  v7 = fileTransferSession;
  v8 = +[MBDriveSettingsContext defaultSettingsContext];
  v45.receiver = self;
  v45.super_class = MBSourceDeviceTransferEngine;
  v9 = [(MBEngine *)&v45 initWithSettingsContext:v8 debugContext:0 domainManager:0];
  v10 = v9;
  if (v9)
  {
    [(MBSourceDeviceTransferEngine *)v9 setDriveSettingsContext:v8];
    v11 = objc_opt_class();
    Name = class_getName(v11);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create(Name, v14);
    [(MBSourceDeviceTransferEngine *)v10 setQueue:v15];

    v16 = objc_opt_class();
    class_getName(v16);
    v17 = os_transaction_create();
    [(MBSourceDeviceTransferEngine *)v10 setTransaction:v17];

    [(MBSourceDeviceTransferEngine *)v10 setFileTransferSession:v7];
    v18 = dispatch_group_create();
    [(MBSourceDeviceTransferEngine *)v10 setPeerTaskGroup:v18];

    v19 = [MBDeviceTransferProgressModel alloc];
    v20 = objc_opt_new();
    v21 = [(MBDeviceTransferProgressModel *)v19 initWithEstimator:v20];
    progressModel = v10->_progressModel;
    v10->_progressModel = v21;

    [(MBDeviceTransferProgressModel *)v10->_progressModel setDelegate:v10];
    v23 = [[MBPowerAssertion alloc] initWithName:@"D2D" timeout:0.0];
    [(MBSourceDeviceTransferEngine *)v10 setPowerAssertion:v23];

    v10->_concurrentUploadBatchCount = 15;
    v10->_uploadBatchSize = 200;
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MBDriveBackupEngineUploadBatchCount", @"com.apple.MobileBackup", &keyExistsAndHasValidFormat);
    if (AppIntegerValue > 0x3E8 || keyExistsAndHasValidFormat == 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = AppIntegerValue;
    }

    keyExistsAndHasValidFormat = 0;
    v27 = CFPreferencesGetAppIntegerValue(@"MBDriveBackupEngineUploadBatchSize", @"com.apple.MobileBackup", &keyExistsAndHasValidFormat);
    if (v27 > 0x3E8 || keyExistsAndHasValidFormat == 0)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v47 = v29;
        v48 = 2048;
        v49 = v26;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "MBDriveBackupEngineUploadBatchSize:%lu, MBDriveBackupEngineUploadBatchCount:%lu", buf, 0x16u);
        _MBLog();
      }

      if (v26)
      {
        v10->_concurrentUploadBatchCount = v26;
      }

      if (v29)
      {
        v10->_uploadBatchSize = v29;
      }
    }

    if (!v10->_concurrentUploadBatchCount)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine initWithSessionInfo:]", "MBSourceDeviceTransferEngine.m", 106, "_concurrentUploadBatchCount");
    }

    uploadBatchSize = v10->_uploadBatchSize;
    if (!uploadBatchSize)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine initWithSessionInfo:]", "MBSourceDeviceTransferEngine.m", 107, "_uploadBatchSize");
    }

    if (![(MBSourceDeviceTransferEngine *)v10 _updateOpenFdsLimit:4 * uploadBatchSize + 56])
    {
      v10->_concurrentUploadBatchCount = 1;
      v10->_uploadBatchSize = 200;
    }

    v32 = MBGetDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = v10->_uploadBatchSize;
      concurrentUploadBatchCount = v10->_concurrentUploadBatchCount;
      *buf = 138544130;
      v47 = v33;
      v48 = 2048;
      v49 = v34;
      v50 = 2048;
      v51 = concurrentUploadBatchCount;
      v52 = 2048;
      v53 = 2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@, uploadBatchSize:%lu, concurrentUploadBatchCount:%lu, concurrentOpenBatchCount:%lu", buf, 0x2Au);
      objc_opt_class();
      v43 = v10->_concurrentUploadBatchCount;
      v42 = v10->_uploadBatchSize;
      _MBLog();
    }

    v36 = [@"/var/mobile/Library/Caches/Backup/DT" stringByAppendingString:@"/"];
    stringByStandardizingPath = [v36 stringByStandardizingPath];

    v38 = [NSURL fileURLWithPath:stringByStandardizingPath isDirectory:1];
    v39 = [[MBPeerTransferDrive alloc] initWithRootURL:v38 fileTransferSession:v7 uploadBatchSize:v10->_uploadBatchSize concurrentUploadBatchCount:v10->_concurrentUploadBatchCount concurrentOpenBatchCount:2];
    transferDrive = v10->_transferDrive;
    v10->_transferDrive = v39;
  }

  return v10;
}

- (void)dealloc
{
  driveSettingsContext = [(MBSourceDeviceTransferEngine *)self driveSettingsContext];
  [driveSettingsContext setEncryptionManager:0];

  transferDrive = [(MBSourceDeviceTransferEngine *)self transferDrive];
  [transferDrive stopListeningForFileTransfers];

  v5.receiver = self;
  v5.super_class = MBSourceDeviceTransferEngine;
  [(MBSourceDeviceTransferEngine *)&v5 dealloc];
}

- (BOOL)_updateOpenFdsLimit:(unint64_t)limit
{
  if (!limit)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _updateOpenFdsLimit:]", "MBSourceDeviceTransferEngine.m", 134, "openFdsLimit");
  }

  v15.rlim_cur = 0;
  v15.rlim_max = 0;
  v4 = getrlimit(8, &v15);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(rlim_cur) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "getrlmit(NOFILE) failed: %{errno}d", buf, 8u);
      v13 = *__error();
LABEL_5:
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      rlim_cur = v15.rlim_cur;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "getrlimit(NOFILE): %llu", buf, 0xCu);
      _MBLog();
    }

    if (v15.rlim_cur >= limit)
    {
      return 1;
    }

    v15.rlim_cur = limit;
    v10 = setrlimit(8, &v15);
    v11 = MBGetDefaultLog();
    v6 = v11;
    if (!v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        rlim_cur = v15.rlim_cur;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setrlimit(NOFILE): %llu", buf, 0xCu);
        _MBLog();
      }

      v8 = 1;
      goto LABEL_7;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *__error();
      *buf = 134218240;
      rlim_cur = limit;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "setrlimit(NOFILE) failed, openFdsLimit:%lu: %{errno}d", buf, 0x12u);
      v14 = *__error();
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  if ((atomic_exchange(&self->_finished, 1u) & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finishing %@", buf, 0xCu);
      v29 = objc_opt_class();
      _MBLog();
    }

    transaction = [(MBSourceDeviceTransferEngine *)self transaction];
    [(MBSourceDeviceTransferEngine *)self setTransaction:0];
    deviceLockAssertion = [(MBSourceDeviceTransferEngine *)self deviceLockAssertion];
    [(MBSourceDeviceTransferEngine *)self setDeviceLockAssertion:0];
    [deviceLockAssertion drop];

    powerAssertion = [(MBSourceDeviceTransferEngine *)self powerAssertion];
    [(MBSourceDeviceTransferEngine *)self setPowerAssertion:0];
    [(MBSourceDeviceTransferEngine *)self startTime];
    v10 = 0.0;
    if (v11 > 0.0)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v13 = v12;
      [(MBSourceDeviceTransferEngine *)self startTime];
      v10 = v13 - v14;
    }

    isCanceled = [(MBEngine *)self isCanceled];
    v16 = isCanceled;
    if (!isCanceled || ([MBError errorWithCode:202 format:@"Canceled"], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v17 = errorCopy;
    }

    [(MBSourceDeviceTransferEngine *)self _stopTrackingPeerConnectionStatus];
    queue = [(MBSourceDeviceTransferEngine *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016BF74;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_async(queue, block);

    transferDrive = [(MBSourceDeviceTransferEngine *)self transferDrive];
    [transferDrive invalidate];

    [(MBSourceDeviceTransferEngine *)self _cancelBackupEngine];
    if ([(MBSourceDeviceTransferEngine *)self connectionType]== 1 && [(MBSourceDeviceTransferEngine *)self chargeToken])
    {
      [(MBSourceDeviceTransferEngine *)self chargeToken];
      MBCancelChargeLimit();
      [(MBSourceDeviceTransferEngine *)self setChargeToken:0];
    }

    peerTaskGroup = [(MBSourceDeviceTransferEngine *)self peerTaskGroup];
    v21 = dispatch_get_global_queue(17, 0);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10016BF7C;
    v36[3] = &unk_1003BCFC8;
    v38 = v16;
    v36[4] = self;
    v22 = v17;
    v37 = v22;
    dispatch_group_async(peerTaskGroup, v21, v36);

    v23 = +[MBDaemon sharedDaemon];
    [v23 holdWorkAssertion:a2];

    peerTaskGroup2 = [(MBSourceDeviceTransferEngine *)self peerTaskGroup];
    queue2 = [(MBSourceDeviceTransferEngine *)self queue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10016C0B0;
    v30[3] = &unk_1003C0048;
    v30[4] = self;
    v31 = v22;
    v34 = v10;
    v32 = powerAssertion;
    v33 = transaction;
    v35 = a2;
    v26 = transaction;
    v27 = powerAssertion;
    v28 = v22;
    dispatch_group_notify(peerTaskGroup2, queue2, v30);
  }
}

- (BOOL)cancel
{
  v7.receiver = self;
  v7.super_class = MBSourceDeviceTransferEngine;
  cancel = [(MBEngine *)&v7 cancel];
  if (!cancel)
  {
    cacheDeleteRequest = [(MBSourceDeviceTransferEngine *)self cacheDeleteRequest];
    [cacheDeleteRequest cancel];

    transferDrive = [(MBSourceDeviceTransferEngine *)self transferDrive];
    [transferDrive invalidate];

    [(MBSourceDeviceTransferEngine *)self _signalControlConnectionStarted];
    [(MBSourceDeviceTransferEngine *)self _finishWithError:0];
  }

  return cancel;
}

- (void)_sendDoneMessageWithError:(id)error
{
  errorCopy = error;
  fileTransferSession = [(MBSourceDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _sendDoneMessageWithError:]", "MBSourceDeviceTransferEngine.m", 248, "fileTransferSession");
  }

  v6 = fileTransferSession;
  v7 = atomic_load(&self->_peerConnectedOnce);
  if ((v7 & 1) != 0 && (v8 = atomic_load(&self->_receivedDoneMessage), (v8 & 1) == 0))
  {
    v10 = [[MBPeerDoneRequest alloc] initWithError:errorCopy];
    v11 = dispatch_semaphore_create(0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10016C6B4;
    v16[3] = &unk_1003C0070;
    v9 = v10;
    v17 = v9;
    v12 = v11;
    v18 = v12;
    [MBPeerMessenger sendRequest:v9 session:v6 responseHandler:v16];
    v13 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v12, v13))
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Timed out waiting for %@", buf, 0xCu);
        objc_opt_class();
        _MBLog();
      }
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not sending %@", buf, 0xCu);
      objc_opt_class();
      _MBLog();
    }
  }
}

- (void)start
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "========== %@ starting", buf, 0xCu);
    objc_opt_class();
    _MBLog();
  }

  MBLogDeviceProperties();
  +[NSDate timeIntervalSinceReferenceDate];
  [(MBSourceDeviceTransferEngine *)self setStartTime:?];
  powerAssertion = [(MBSourceDeviceTransferEngine *)self powerAssertion];
  [powerAssertion hold];

  v8 = 0;
  v5 = [(MBSourceDeviceTransferEngine *)self _setUpWithError:&v8];
  v6 = v8;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    if (!v6)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine start]", "MBSourceDeviceTransferEngine.m", 281, "error");
    }

    [(MBSourceDeviceTransferEngine *)self _finishWithError:v6];
  }
}

- (BOOL)_setUpWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _setUpWithError:]", "MBSourceDeviceTransferEngine.m", 288, "error");
  }

  deviceLockAssertion = [(MBSourceDeviceTransferEngine *)self deviceLockAssertion];

  if (!deviceLockAssertion)
  {
    v6 = objc_opt_new();
    if (![v6 holdWithError:error])
    {

      return 0;
    }

    [(MBSourceDeviceTransferEngine *)self setDeviceLockAssertion:v6];
  }

  return [(MBSourceDeviceTransferEngine *)self _setUpFileTransferSessionWithError:error];
}

- (void)_startDisconnectTimer
{
  queue = [(MBSourceDeviceTransferEngine *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MBSourceDeviceTransferEngine *)self _cancelDisconnectTimer];
  if (![(MBSourceDeviceTransferEngine *)self isFinished])
  {
    v4 = +[MBBehaviorOptions sharedOptions];
    d2dTransferDisconnectTimeout = [v4 d2dTransferDisconnectTimeout];

    queue2 = [(MBSourceDeviceTransferEngine *)self queue];
    v7 = d2dTransferDisconnectTimeout;
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);

    v9 = dispatch_walltime(0, 1000000000 * v7);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10016CC4C;
    handler[3] = &unk_1003BE6A0;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v8, handler);
    [(MBSourceDeviceTransferEngine *)self setDisconnectTimer:v8];
    dispatch_resume(v8);
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Started the disconnect timer (%llus)", buf, 0xCu);
      _MBLog();
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_cancelDisconnectTimer
{
  queue = [(MBSourceDeviceTransferEngine *)self queue];
  dispatch_assert_queue_V2(queue);

  disconnectTimer = [(MBSourceDeviceTransferEngine *)self disconnectTimer];
  if (disconnectTimer)
  {
    [(MBSourceDeviceTransferEngine *)self setDisconnectTimer:0];
    dispatch_source_cancel(disconnectTimer);
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceled the disconnect timer", v6, 2u);
      _MBLog();
    }
  }
}

- (void)_signalControlConnectionStarted
{
  connectSemaphore = [(MBSourceDeviceTransferEngine *)self connectSemaphore];
  if (connectSemaphore)
  {
    v3 = connectSemaphore;
    dispatch_semaphore_signal(connectSemaphore);
    connectSemaphore = v3;
  }
}

- (BOOL)_waitForControlConnectionWithBlock:(id)block
{
  blockCopy = block;
  v5 = dispatch_semaphore_create(0);
  [(MBSourceDeviceTransferEngine *)self setConnectSemaphore:v5];
  blockCopy[2](blockCopy);

  v6 = +[MBBehaviorOptions sharedOptions];
  d2dTransferDisconnectTimeout = [v6 d2dTransferDisconnectTimeout];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = d2dTransferDisconnectTimeout;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Waiting for up to %llus to allow a control connection to show up", buf, 0xCu);
    v12 = d2dTransferDisconnectTimeout;
    _MBLog();
  }

  v9 = dispatch_time(0, 1000000000 * d2dTransferDisconnectTimeout);
  v10 = dispatch_semaphore_wait(v5, v9) == 0;
  [(MBSourceDeviceTransferEngine *)self setConnectSemaphore:0, v12];

  return v10;
}

- (void)_startTrackingPeerConnectionStatus
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_trackPeerConnectionStatus, &v2, 1u);
  if (!v2)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      p_peerConnected = &self->_peerConnected;
      v6 = atomic_load(p_peerConnected);
      *buf = 67109120;
      v8 = v6 & 1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started tracking the peer connection status (%d)", buf, 8u);
      atomic_load(p_peerConnected);
      _MBLog();
    }
  }
}

- (void)_stopTrackingPeerConnectionStatus
{
  v2 = 1;
  atomic_compare_exchange_strong(&self->_trackPeerConnectionStatus, &v2, 0);
  if (v2 == 1)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      p_peerConnected = &self->_peerConnected;
      v6 = atomic_load(p_peerConnected);
      *buf = 67109120;
      v8 = v6 & 1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopped tracking the peer connection status (%d)", buf, 8u);
      atomic_load(p_peerConnected);
      _MBLog();
    }
  }
}

- (void)_handleFileTransferSessionProgress:(id)progress
{
  progressCopy = progress;
  queue = [(MBSourceDeviceTransferEngine *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(MBSourceDeviceTransferEngine *)self isFinished])
  {
    delegate = [(MBSourceDeviceTransferEngine *)self delegate];
    -[MBSourceDeviceTransferEngine setConnectionType:](self, "setConnectionType:", +[MBDeviceTransferConnectionInfo connectionTypeFromLinkType:](MBDeviceTransferConnectionInfo, "connectionTypeFromLinkType:", [progressCopy linkType]));
    if ([progressCopy type] != 10)
    {
      if ([progressCopy type] != 11)
      {
LABEL_20:

        goto LABEL_21;
      }

      v7 = objc_opt_new();
      [v7 setConnectionState:2];
      [v7 setConnectionType:{-[MBSourceDeviceTransferEngine connectionType](self, "connectionType")}];
      v11 = atomic_load(&self->_trackPeerConnectionStatus);
      if (v11)
      {
        atomic_store(0, &self->_peerConnected);
        [(MBSourceDeviceTransferEngine *)self _startDisconnectTimer];
        connection = [(MBSourceDeviceTransferEngine *)self connection];
        [delegate connection:connection didUpdateDeviceTransferConnectionInfo:v7];
      }

LABEL_19:

      goto LABEL_20;
    }

    atomic_store(1u, &self->_peerConnectedOnce);
    [(MBSourceDeviceTransferEngine *)self _cancelDisconnectTimer];
    v7 = objc_opt_new();
    [v7 setConnectionState:1];
    [v7 setConnectionType:{-[MBSourceDeviceTransferEngine connectionType](self, "connectionType")}];
    if ([(MBSourceDeviceTransferEngine *)self connectionType]== 1)
    {
      v8 = MBSetChargeLimit();
      v9 = MBGetDefaultLog();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 67109120;
          v18 = 25;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set charge limit to %d", buf, 8u);
          v16 = 25;
          _MBLog();
        }

        [(MBSourceDeviceTransferEngine *)self setChargeToken:v8];
      }

      else
      {
        if (v10)
        {
          *buf = 67109120;
          v18 = 25;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to set charge limit to %d", buf, 8u);
          v16 = 25;
          _MBLog();
        }
      }
    }

    v13 = atomic_load(&self->_trackPeerConnectionStatus);
    if (v13)
    {
      atomic_store(1u, &self->_peerConnected);
    }

    else
    {
      v14 = 0;
      atomic_compare_exchange_strong(&self->_peerConnected, &v14, 1u);
      if (v14)
      {
LABEL_18:
        [(MBSourceDeviceTransferEngine *)self _signalControlConnectionStarted];
        goto LABEL_19;
      }
    }

    connection2 = [(MBSourceDeviceTransferEngine *)self connection];
    [delegate connection:connection2 didUpdateDeviceTransferConnectionInfo:v7];

    goto LABEL_18;
  }

LABEL_21:
}

- (BOOL)_setUpFileTransferSessionWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBSourceDeviceTransferEngine.m", 411, "error");
  }

  fileTransferSession = [(MBSourceDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBSourceDeviceTransferEngine.m", 413, "fileTransferSession");
  }

  transferDrive = [(MBSourceDeviceTransferEngine *)self transferDrive];
  if (!transferDrive)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBSourceDeviceTransferEngine.m", 415, "transferDrive");
  }

  v7 = +[MBBehaviorOptions sharedOptions];
  [fileTransferSession setFlags:{objc_msgSend(fileTransferSession, "flags") | 2}];
  if ([v7 d2dTransferUSBOnly])
  {
    [fileTransferSession setFlags:{objc_msgSend(fileTransferSession, "flags") | 0x30}];
    [fileTransferSession setFlags:{objc_msgSend(fileTransferSession, "flags") & 0xFFFFFFF3}];
  }

  if (([v7 d2dTransferUseCompression] & 1) == 0)
  {
    [fileTransferSession setFlags:{objc_msgSend(fileTransferSession, "flags") & 0xFFFFFEFF}];
  }

  [fileTransferSession setMaxSmallFileTasks:{objc_msgSend(v7, "d2dTransferSmallFileMaxTasks")}];
  [fileTransferSession setMaxLargeFileTasks:{objc_msgSend(v7, "d2dTransferLargeFileMaxTasks")}];
  [fileTransferSession setLargeFileBufferBytes:{(objc_msgSend(v7, "d2dTransferLargeFileBufferKilobytes") << 10)}];
  queue = [(MBSourceDeviceTransferEngine *)self queue];
  [fileTransferSession setDispatchQueue:queue];

  v9 = [NSURL fileURLWithPath:@"/var/mobile/Library/Caches/Backup/RFReceiveTemp" isDirectory:1];
  [fileTransferSession setTemporaryDirectoryURL:v9];

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = fileTransferSession;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting up the FT session: %@", buf, 0xCu);
    _MBLog();
  }

  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10016D87C;
  v18[3] = &unk_1003BED78;
  objc_copyWeak(&v19, buf);
  [fileTransferSession setCompletionHandler:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10016D96C;
  v16[3] = &unk_1003BEDA0;
  objc_copyWeak(&v17, buf);
  [fileTransferSession setProgressHandler:v16];
  [(MBSourceDeviceTransferEngine *)self _setUpMessaging];
  [(MBSourceDeviceTransferEngine *)self _startTrackingPeerConnectionStatus];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10016DA80;
  v14[3] = &unk_1003BC0B0;
  v11 = transferDrive;
  v15 = v11;
  v12 = [(MBSourceDeviceTransferEngine *)self _waitForControlConnectionWithBlock:v14];
  if (!v12)
  {
    *error = [MBError errorWithCode:15 format:@"Timed out"];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  return v12;
}

- (void)_disableInfraWiFi
{
  v3 = +[MBBehaviorOptions sharedOptions];
  d2dTransferUSBOnly = [v3 d2dTransferUSBOnly];

  if (d2dTransferUSBOnly)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not disabling infra WiFi in USB-only mode", buf, 2u);
      _MBLog();
    }
  }

  else
  {
    fileTransferSession = [(MBSourceDeviceTransferEngine *)self fileTransferSession];
    if (!fileTransferSession)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine _disableInfraWiFi]", "MBSourceDeviceTransferEngine.m", 473, "fileTransferSession");
    }

    v5 = fileTransferSession;
    [fileTransferSession setFlags:[fileTransferSession flags]| 4];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      flags = [v5 flags];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disabled infra WiFi, flags:0x%x", buf, 8u);
      [v5 flags];
      _MBLog();
    }
  }
}

- (void)_enableInfraWiFi
{
  v3 = +[MBBehaviorOptions sharedOptions];
  d2dTransferUSBOnly = [v3 d2dTransferUSBOnly];

  if (d2dTransferUSBOnly)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not enabling infra WiFi in USB-only mode", buf, 2u);
      _MBLog();
    }
  }

  else
  {
    fileTransferSession = [(MBSourceDeviceTransferEngine *)self fileTransferSession];
    if (!fileTransferSession)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine _enableInfraWiFi]", "MBSourceDeviceTransferEngine.m", 484, "fileTransferSession");
    }

    v5 = fileTransferSession;
    [fileTransferSession setFlags:[fileTransferSession flags]& 0xFFFFFFFB];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      flags = [v5 flags];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabled infra WiFi, flags:0x%x", buf, 8u);
      [v5 flags];
      _MBLog();
    }
  }
}

- (unint64_t)_purgeableDiskSpace
{
  v2 = CacheDeleteCopyPurgeableSpaceWithInfo();
  v3 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];

  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to get purgeable space from Cache Delete: %@", buf, 0xCu);

      v9 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
      _MBLog();
    }

    unsignedLongLongValue = 0;
  }

  else
  {
    v7 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    unsignedLongLongValue = [v7 unsignedLongLongValue];
  }

  return unsignedLongLongValue;
}

- (id)_handleError:(id)error
{
  errorCopy = error;
  if ([(MBEngine *)self isCanceled])
  {
    v5 = [MBError errorWithCode:202 format:@"Canceled"];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if (errorCopy)
  {
    v5 = errorCopy;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)_setUpMessaging
{
  fileTransferSession = [(MBSourceDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBSourceDeviceTransferEngine _setUpMessaging]", "MBSourceDeviceTransferEngine.m", 518, "fileTransferSession");
  }

  v4 = fileTransferSession;
  v5 = objc_opt_class();
  [MBPeerMessenger registerRequestClass:v5 responseClass:objc_opt_class() forTask:?];
  v6 = objc_opt_class();
  [MBPeerMessenger registerRequestClass:v6 responseClass:objc_opt_class() forTask:@"MBPeerTaskTransfer"];
  v7 = objc_opt_class();
  [MBPeerMessenger registerRequestClass:v7 responseClass:objc_opt_class() forTask:@"MBPeerTaskDone"];
  v8 = objc_opt_class();
  [MBPeerMessenger registerRequestClass:v8 responseClass:objc_opt_class() forTask:@"MBPeerTaskKeychain"];
  v9 = objc_opt_class();
  [MBPeerMessenger registerRequestClass:v9 responseClass:objc_opt_class() forTask:@"MBPeerTaskPreflight"];
  v10 = objc_opt_class();
  [MBPeerMessenger registerRequestClass:v10 responseClass:objc_opt_class() forTask:@"MBPeerTaskRestoreProgress"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10016E398;
  v16[3] = &unk_1003C0098;
  v16[4] = self;
  [MBPeerMessenger registerRequestHandler:v16 forTask:@"MBPeerTaskInit" session:v4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10016E66C;
  v15[3] = &unk_1003C00C0;
  v15[4] = self;
  [MBPeerMessenger registerRequestHandler:v15 forTask:@"MBPeerTaskPreflight" session:v4];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10016EE94;
  v14[3] = &unk_1003C00E8;
  v14[4] = self;
  [MBPeerMessenger registerRequestHandler:v14 forTask:@"MBPeerTaskKeychain" session:v4];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016F5F8;
  v13[3] = &unk_1003C0138;
  v13[4] = self;
  [MBPeerMessenger registerRequestHandler:v13 forTask:@"MBPeerTaskTransfer" session:v4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016FF8C;
  v12[3] = &unk_1003BEDC8;
  v12[4] = self;
  [MBPeerMessenger registerRequestHandler:v12 forTask:@"MBPeerTaskDone" session:v4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001701B8;
  v11[3] = &unk_1003C0160;
  v11[4] = self;
  [MBPeerMessenger registerRequestHandler:v11 forTask:@"MBPeerTaskRestoreProgress" session:v4];
}

- (id)_backupEngineWithPreflightRequest:(id)request
{
  requestCopy = request;
  v5 = +[MBDriveSettingsContext defaultSettingsContext];
  v6 = MBDeviceUDID_Legacy();
  [v5 setTargetIdentifier:v6];

  v7 = MBAllDrivePlugins();
  [v5 setPlugins:v7];

  [v5 setIsDeviceTransfer:1];
  freeDiskSpace = [requestCopy freeDiskSpace];

  transferDrive = [(MBSourceDeviceTransferEngine *)self transferDrive];
  [transferDrive setFreeSpace:freeDiskSpace];

  transferDrive2 = [(MBSourceDeviceTransferEngine *)self transferDrive];
  [v5 setDrive:transferDrive2];

  v11 = +[MBCKManager sharedInstance];
  [v5 setManager:v11];

  v12 = +[MBDebugContext defaultDebugContext];
  v13 = [MBDriveBackupEngine backupEngineWithSettingsContext:v5 debugContext:v12];

  [v13 setBatchSize:self->_uploadBatchSize];
  [v13 setConcurrentUploadBatchCount:self->_concurrentUploadBatchCount];

  return v13;
}

- (void)_cleanUpBackupEngine
{
  queue = [(MBSourceDeviceTransferEngine *)self queue];
  dispatch_assert_queue_V2(queue);

  driveBackupEngine = [(MBSourceDeviceTransferEngine *)self driveBackupEngine];
  if (driveBackupEngine)
  {
    [(MBSourceDeviceTransferEngine *)self setDriveBackupEngine:0];
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = driveBackupEngine;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up backup engine: %@", buf, 0xCu);
      _MBLog();
    }

    cleanup = [driveBackupEngine cleanup];
    v7 = [MBError errorWithCode:202 format:@"Canceled"];
    v8 = [driveBackupEngine endWithError:v7];

    if (!v8)
    {
      __assert_rtn("[MBSourceDeviceTransferEngine _cleanUpBackupEngine]", "MBSourceDeviceTransferEngine.m", 851, "error");
    }
  }
}

- (void)_cancelBackupEngine
{
  driveBackupEngine = [(MBSourceDeviceTransferEngine *)self driveBackupEngine];
  if (driveBackupEngine)
  {
    v3 = driveBackupEngine;
    [driveBackupEngine cancel];
    driveBackupEngine = v3;
  }
}

- (void)updatedTotalProgress:(id)progress
{
  progressCopy = progress;
  if (![(MBEngine *)self isCanceled])
  {
    queue = [(MBSourceDeviceTransferEngine *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001707B0;
    v6[3] = &unk_1003BC060;
    v6[4] = self;
    v7 = progressCopy;
    dispatch_async(queue, v6);
  }
}

- (MBServiceManagerDeviceTransferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end