@interface MBTargetDeviceTransferEngine
- (BOOL)_checkFreeDiskSpace:(unint64_t)a3 preflightInfo:(id)a4 error:(id *)a5;
- (BOOL)_handleCompletionWithError:(id *)a3;
- (BOOL)_handleTimeout:(BOOL)a3 error:(id *)a4;
- (BOOL)_removeDirectory:(id)a3 error:(id *)a4;
- (BOOL)_requestBackupWithSourceInfo:(id)a3 preflightInfo:(id)a4 error:(id *)a5;
- (BOOL)_restoreKeychainWithKeychainTransferResponse:(id)a3 error:(id *)a4;
- (BOOL)_restoreWithSourceInfo:(id)a3 error:(id *)a4;
- (BOOL)_setUpFileTransferSessionWithError:(id *)a3;
- (BOOL)_waitForControlConnectionWithBlock:(id)a3;
- (BOOL)cancel;
- (MBServiceManagerDeviceTransferDelegate)delegate;
- (MBTargetDeviceTransferEngine)initWithSessionInfo:(id)a3;
- (id)_perform:(id)a3;
- (id)_requestInitWithError:(id *)a3;
- (id)_requestKeychainWithSourceInfo:(id)a3 error:(id *)a4;
- (id)_requestPreflightWithSourceInfo:(id)a3 error:(id *)a4;
- (id)_restoreEngineWithSourceInfo:(id)a3;
- (void)_cancelDisconnectTimer;
- (void)_disableInfraWiFi;
- (void)_enableInfraWiFi;
- (void)_finishWithError:(id)a3;
- (void)_handleFileTransferSessionProgress:(id)a3;
- (void)_postTransferProgressNotification:(id)a3;
- (void)_saveDeviceTransferInfo;
- (void)_sendDoneMessageWithError:(id)a3;
- (void)_sendRestoreProgressMessageWithPercentage:(unint64_t)a3;
- (void)_signalControlConnectionStarted;
- (void)_start;
- (void)_startDisconnectTimer;
- (void)_startTrackingPeerConnectionStatus;
- (void)_stopTrackingPeerConnectionStatus;
- (void)dealloc;
- (void)progressUpdatedWithPercentage:(double)a3 size:(unint64_t)a4;
- (void)start;
- (void)startDataTransferWithPreflightInfo:(id)a3 completion:(id)a4;
- (void)startKeychainDataImportWithKeychainInfo:(id)a3 completion:(id)a4;
- (void)startKeychainDataTransferWithCompletion:(id)a3;
- (void)startPreflightWithCompletion:(id)a3;
- (void)updatedTotalProgress:(id)a3;
@end

@implementation MBTargetDeviceTransferEngine

- (MBTargetDeviceTransferEngine)initWithSessionInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine initWithSessionInfo:]", "MBTargetDeviceTransferEngine.m", 93, "sessionInfo");
  }

  v5 = v4;
  v6 = [v4 fileTransferSession];
  if (!v6)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine initWithSessionInfo:]", "MBTargetDeviceTransferEngine.m", 95, "fileTransferSession");
  }

  v7 = v6;
  v8 = +[MBDriveSettingsContext defaultSettingsContext];
  v50.receiver = self;
  v50.super_class = MBTargetDeviceTransferEngine;
  v9 = [(MBEngine *)&v50 initWithSettingsContext:v8 debugContext:0 domainManager:0];
  if (v9)
  {
    v10 = objc_opt_class();
    Name = class_getName(v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_create(Name, v13);
    [(MBTargetDeviceTransferEngine *)v9 setQueue:v14];

    v15 = objc_opt_class();
    v16 = class_getName(v15);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_UTILITY, 0);
    v19 = dispatch_queue_create(v16, v18);
    [(MBTargetDeviceTransferEngine *)v9 setSessionQueue:v19];

    v20 = objc_opt_class();
    class_getName(v20);
    v21 = os_transaction_create();
    [(MBTargetDeviceTransferEngine *)v9 setTransaction:v21];

    [(MBTargetDeviceTransferEngine *)v9 setFileTransferSession:v7];
    v22 = [@"/var/mobile/Library/Caches/Backup/DT" stringByAppendingString:@"/"];
    v23 = [v22 stringByStandardizingPath];

    v24 = [NSURL fileURLWithPath:v23 isDirectory:1];
    v25 = [[MBPeerTransferDrive alloc] initWithRootURL:v24 fileTransferSession:v7 uploadBatchSize:128 concurrentUploadBatchCount:1 concurrentOpenBatchCount:1];
    transferDrive = v9->_transferDrive;
    v9->_transferDrive = v25;

    v27 = [[MBDeviceTransferLocalDrive alloc] initWithPath:@"/var/mobile/Library/Caches/Backup/DT"];
    transferLocalDrive = v9->_transferLocalDrive;
    v9->_transferLocalDrive = v27;

    v29 = [MBDeviceTransferProgressModel alloc];
    v30 = objc_opt_new();
    v31 = [(MBDeviceTransferProgressModel *)v29 initWithEstimator:v30];
    progressModel = v9->_progressModel;
    v9->_progressModel = v31;

    v33 = [(MBTargetDeviceTransferEngine *)v9 progressModel];
    [v33 setDelegate:v9];

    v34 = dispatch_group_create();
    progressGroup = v9->_progressGroup;
    v9->_progressGroup = v34;

    v9->_lastRestoreProgressPercentage = -1;
    v36 = [[MBPowerAssertion alloc] initWithName:@"D2D" timeout:0.0];
    [(MBTargetDeviceTransferEngine *)v9 setPowerAssertion:v36];

    v49 = 0;
    v37 = [MBPersona personalPersonaWithError:&v49];
    v38 = v49;
    personalPersona = v9->_personalPersona;
    v9->_personalPersona = v37;

    if (!v9->_personalPersona)
    {
      v47 = +[NSAssertionHandler currentHandler];
      v48 = [NSString stringWithUTF8String:"[MBTargetDeviceTransferEngine initWithSessionInfo:]"];
      [v47 handleFailureInFunction:v48 file:@"MBTargetDeviceTransferEngine.m" lineNumber:118 description:{@"Unable to obtain personal persona: %@", v38}];
    }

    v40 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v40 responseClass:objc_opt_class() forTask:@"MBPeerTaskInit"];
    v41 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v41 responseClass:objc_opt_class() forTask:@"MBPeerTaskTransfer"];
    v42 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v42 responseClass:objc_opt_class() forTask:@"MBPeerTaskDone"];
    v43 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v43 responseClass:objc_opt_class() forTask:@"MBPeerTaskKeychain"];
    v44 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v44 responseClass:objc_opt_class() forTask:@"MBPeerTaskPreflight"];
    v45 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v45 responseClass:objc_opt_class() forTask:@"MBPeerTaskRestoreProgress"];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(MBTargetDeviceTransferEngine *)self transferDrive];
  [v3 stopListeningForFileTransfers];

  v4.receiver = self;
  v4.super_class = MBTargetDeviceTransferEngine;
  [(MBTargetDeviceTransferEngine *)&v4 dealloc];
}

- (void)_finishWithError:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (atomic_exchange(&v6->_finished, 1u))
  {
    objc_sync_exit(v6);
  }

  else
  {
    if (![(MBEngine *)v6 isCanceled]|| ([MBError errorWithCode:202 format:@"Canceled"], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = v5;
    }

    [(MBTargetDeviceTransferEngine *)v6 setCompletionError:v7];
    objc_sync_exit(v6);

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finishing %@", buf, 0xCu);
      v29 = objc_opt_class();
      _MBLog();
    }

    [(MBTargetDeviceTransferEngine *)v6 startTime];
    v9 = 0.0;
    if (v10 > 0.0)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v12 = v11;
      [(MBTargetDeviceTransferEngine *)v6 startTime];
      v9 = v12 - v13;
    }

    v14 = [(MBTargetDeviceTransferEngine *)v6 transaction];
    [(MBTargetDeviceTransferEngine *)v6 setTransaction:0];
    v15 = [(MBTargetDeviceTransferEngine *)v6 deviceLockAssertion];
    [(MBTargetDeviceTransferEngine *)v6 setDeviceLockAssertion:0];
    [v15 drop];

    v16 = [(MBTargetDeviceTransferEngine *)v6 powerAssertion];
    [(MBTargetDeviceTransferEngine *)v6 setPowerAssertion:0];
    [(MBTargetDeviceTransferEngine *)v6 _stopTrackingPeerConnectionStatus];
    v17 = [(MBTargetDeviceTransferEngine *)v6 sessionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010F820;
    block[3] = &unk_1003BC0B0;
    block[4] = v6;
    dispatch_async(v17, block);

    v18 = [(MBTargetDeviceTransferEngine *)v6 transferLocalDrive];
    [v18 invalidate];

    v19 = [(MBTargetDeviceTransferEngine *)v6 transferDrive];
    [v19 invalidate];

    if ([(MBTargetDeviceTransferEngine *)v6 connectionType]== 1 && [(MBTargetDeviceTransferEngine *)v6 chargeToken])
    {
      [(MBTargetDeviceTransferEngine *)v6 chargeToken];
      MBCancelChargeLimit();
      [(MBTargetDeviceTransferEngine *)v6 setChargeToken:0];
    }

    v20 = [(MBTargetDeviceTransferEngine *)v6 progressGroup];
    v21 = dispatch_get_global_queue(17, 0);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10010F828;
    v35[3] = &unk_1003BC060;
    v22 = v7;
    v36 = v22;
    v37 = v6;
    dispatch_group_async(v20, v21, v35);

    v23 = +[MBDaemon sharedDaemon];
    [v23 holdWorkAssertion:a2];

    v24 = [(MBTargetDeviceTransferEngine *)v6 progressGroup];
    v25 = [(MBTargetDeviceTransferEngine *)v6 sessionQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10010F9F4;
    v30[3] = &unk_1003BD018;
    v30[4] = v6;
    v31 = v22;
    v34 = v9;
    v32 = v16;
    v33 = v14;
    v26 = v14;
    v27 = v16;
    v28 = v22;
    dispatch_group_notify(v24, v25, v30);
  }
}

- (BOOL)_handleCompletionWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _handleCompletionWithError:]", "MBTargetDeviceTransferEngine.m", 230, "error");
  }

  if ([(MBEngine *)self isCanceled])
  {
    v5 = [MBError errorWithCode:202 format:@"Canceled"];
    if (v5)
    {
LABEL_4:
      v6 = v5;
      *a3 = v5;
    }
  }

  else
  {
    v8 = self;
    objc_sync_enter(v8);
    if ([(MBTargetDeviceTransferEngine *)v8 isFinished])
    {
      v5 = [(MBTargetDeviceTransferEngine *)v8 completionError];
      if (!v5)
      {
        v5 = [MBError errorWithCode:1 format:@"Invalid state (finished)"];
      }
    }

    else
    {
      v5 = 0;
    }

    objc_sync_exit(v8);

    if (v5)
    {
      goto LABEL_4;
    }
  }

  return v5 == 0;
}

- (BOOL)cancel
{
  v16.receiver = self;
  v16.super_class = MBTargetDeviceTransferEngine;
  v3 = [(MBEngine *)&v16 cancel];
  if (!v3)
  {
    v4 = [(MBTargetDeviceTransferEngine *)self transferLocalDrive];
    [v4 invalidate];

    v5 = [(MBTargetDeviceTransferEngine *)self transferDrive];
    [v5 invalidate];

    v6 = [(MBTargetDeviceTransferEngine *)self requestBackupSemaphore];
    if (v6)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Signaling backup request semaphore", v15, 2u);
        _MBLog();
      }

      dispatch_semaphore_signal(v6);
    }

    v8 = [(MBTargetDeviceTransferEngine *)self requestKeychainSemaphore];

    if (v8)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Signaling keychain transfer request semaphore", v15, 2u);
        _MBLog();
      }

      dispatch_semaphore_signal(v8);
    }

    v10 = [(MBTargetDeviceTransferEngine *)self requestPreflightSemaphore];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Signaling keychain preflight request semaphore", v15, 2u);
        _MBLog();
      }

      dispatch_semaphore_signal(v10);
    }

    v12 = [(MBTargetDeviceTransferEngine *)self requestInitSemaphore];

    if (v12)
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Signaling init request semaphore", v15, 2u);
        _MBLog();
      }

      dispatch_semaphore_signal(v12);
    }

    [(MBTargetDeviceTransferEngine *)self _signalControlConnectionStarted];
    [(MBTargetDeviceTransferEngine *)self _finishWithError:0];
  }

  return v3;
}

- (id)_perform:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ([(MBEngine *)self isCanceled])
  {
    v6 = [MBError errorWithCode:202 format:@"Canceled"];
  }

  else
  {
    v10 = 0;
    v7 = v4[2](v4, &v10);
    v8 = v10;
    v6 = v8;
    if ((v7 & 1) == 0 && !v8)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _perform:]", "MBTargetDeviceTransferEngine.m", 291, "result || error");
    }
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)_startDisconnectTimer
{
  v3 = [(MBTargetDeviceTransferEngine *)self sessionQueue];
  dispatch_assert_queue_V2(v3);

  [(MBTargetDeviceTransferEngine *)self _cancelDisconnectTimer];
  if (![(MBTargetDeviceTransferEngine *)self isFinished])
  {
    v4 = +[MBBehaviorOptions sharedOptions];
    v5 = [v4 d2dTransferDisconnectTimeout];

    v6 = [(MBTargetDeviceTransferEngine *)self sessionQueue];
    v7 = v5;
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

    v9 = dispatch_walltime(0, 1000000000 * v7);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100110370;
    handler[3] = &unk_1003BE6A0;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v8, handler);
    [(MBTargetDeviceTransferEngine *)self setDisconnectTimer:v8];
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
  v3 = [(MBTargetDeviceTransferEngine *)self sessionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MBTargetDeviceTransferEngine *)self disconnectTimer];
  if (v4)
  {
    [(MBTargetDeviceTransferEngine *)self setDisconnectTimer:0];
    dispatch_source_cancel(v4);
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
  v2 = [(MBTargetDeviceTransferEngine *)self connectSemaphore];
  if (v2)
  {
    v3 = v2;
    dispatch_semaphore_signal(v2);
    v2 = v3;
  }
}

- (BOOL)_waitForControlConnectionWithBlock:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setConnectSemaphore:v5];
  v4[2](v4);

  v6 = +[MBBehaviorOptions sharedOptions];
  v7 = [v6 d2dTransferDisconnectTimeout];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Waiting for up to %llus to allow a control connection to show up", buf, 0xCu);
    v12 = v7;
    _MBLog();
  }

  v9 = dispatch_time(0, 1000000000 * v7);
  v10 = dispatch_semaphore_wait(v5, v9) == 0;
  [(MBTargetDeviceTransferEngine *)self setConnectSemaphore:0, v12];

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

- (void)_handleFileTransferSessionProgress:(id)a3
{
  v4 = a3;
  v5 = [(MBTargetDeviceTransferEngine *)self sessionQueue];
  dispatch_assert_queue_V2(v5);

  if (![(MBTargetDeviceTransferEngine *)self isFinished])
  {
    v6 = [(MBTargetDeviceTransferEngine *)self delegate];
    -[MBTargetDeviceTransferEngine setConnectionType:](self, "setConnectionType:", +[MBDeviceTransferConnectionInfo connectionTypeFromLinkType:](MBDeviceTransferConnectionInfo, "connectionTypeFromLinkType:", [v4 linkType]));
    if ([v4 type] != 10)
    {
      if ([v4 type] != 11)
      {
LABEL_20:

        goto LABEL_21;
      }

      v7 = objc_opt_new();
      [v7 setConnectionState:2];
      [v7 setConnectionType:{-[MBTargetDeviceTransferEngine connectionType](self, "connectionType")}];
      v11 = atomic_load(&self->_trackPeerConnectionStatus);
      if (v11)
      {
        atomic_store(0, &self->_peerConnected);
        [(MBTargetDeviceTransferEngine *)self _startDisconnectTimer];
        v12 = [(MBTargetDeviceTransferEngine *)self connection];
        [v6 connection:v12 didUpdateDeviceTransferConnectionInfo:v7];
      }

LABEL_19:

      goto LABEL_20;
    }

    atomic_store(1u, &self->_peerConnectedOnce);
    [(MBTargetDeviceTransferEngine *)self _cancelDisconnectTimer];
    v7 = objc_opt_new();
    [v7 setConnectionState:1];
    [v7 setConnectionType:{-[MBTargetDeviceTransferEngine connectionType](self, "connectionType")}];
    if ([(MBTargetDeviceTransferEngine *)self connectionType]== 1)
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

        [(MBTargetDeviceTransferEngine *)self setChargeToken:v8];
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
        [(MBTargetDeviceTransferEngine *)self _signalControlConnectionStarted];
        goto LABEL_19;
      }
    }

    v15 = [(MBTargetDeviceTransferEngine *)self connection];
    [v6 connection:v15 didUpdateDeviceTransferConnectionInfo:v7];

    goto LABEL_18;
  }

LABEL_21:
}

- (BOOL)_setUpFileTransferSessionWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBTargetDeviceTransferEngine.m", 406, "error");
  }

  v5 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!v5)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBTargetDeviceTransferEngine.m", 408, "fileTransferSession");
  }

  v6 = [(MBTargetDeviceTransferEngine *)self transferDrive];
  if (!v6)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBTargetDeviceTransferEngine.m", 410, "transferDrive");
  }

  v7 = +[MBBehaviorOptions sharedOptions];
  v8 = [(MBTargetDeviceTransferEngine *)self sessionQueue];
  [v5 setDispatchQueue:v8];

  [v5 setFlags:{objc_msgSend(v5, "flags") | 3}];
  if ([v7 d2dTransferUSBOnly])
  {
    [v5 setFlags:{objc_msgSend(v5, "flags") | 0x30}];
    [v5 setFlags:{objc_msgSend(v5, "flags") & 0xFFFFFFF3}];
  }

  if (([v7 d2dTransferUseCompression] & 1) == 0)
  {
    [v5 setFlags:{objc_msgSend(v5, "flags") & 0xFFFFFEFF}];
  }

  v9 = [NSURL fileURLWithPath:@"/var/mobile/Library/Caches/Backup/RFReceiveTemp" isDirectory:1];
  [v5 setTemporaryDirectoryURL:v9];

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting up the FT session: %@", buf, 0xCu);
    _MBLog();
  }

  objc_initWeak(buf, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100110FA8;
  v19[3] = &unk_1003BED78;
  objc_copyWeak(&v20, buf);
  [v5 setCompletionHandler:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001110A8;
  v17[3] = &unk_1003BEDA0;
  objc_copyWeak(&v18, buf);
  [v5 setProgressHandler:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001111CC;
  v16[3] = &unk_1003BEDC8;
  v16[4] = self;
  [MBPeerMessenger registerRequestHandler:v16 forTask:@"MBPeerTaskDone" session:v5];
  [(MBTargetDeviceTransferEngine *)self _startTrackingPeerConnectionStatus];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10011138C;
  v14[3] = &unk_1003BC0B0;
  v11 = v6;
  v15 = v11;
  v12 = [(MBTargetDeviceTransferEngine *)self _waitForControlConnectionWithBlock:v14];
  if (!v12)
  {
    *a3 = [MBError errorWithCode:15 format:@"Timed out"];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  return v12;
}

- (void)_disableInfraWiFi
{
  v3 = +[MBBehaviorOptions sharedOptions];
  v4 = [v3 d2dTransferUSBOnly];

  if (v4)
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
    v6 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
    if (!v6)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _disableInfraWiFi]", "MBTargetDeviceTransferEngine.m", 473, "fileTransferSession");
    }

    v5 = v6;
    [v6 setFlags:[v6 flags]| 4];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = [v5 flags];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disabled infra WiFi, flags:0x%x", buf, 8u);
      [v5 flags];
      _MBLog();
    }
  }
}

- (void)_enableInfraWiFi
{
  v3 = +[MBBehaviorOptions sharedOptions];
  v4 = [v3 d2dTransferUSBOnly];

  if (v4)
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
    v6 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
    if (!v6)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _enableInfraWiFi]", "MBTargetDeviceTransferEngine.m", 484, "fileTransferSession");
    }

    v5 = v6;
    [v6 setFlags:[v6 flags]& 0xFFFFFFFB];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = [v5 flags];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabled infra WiFi, flags:0x%x", buf, 8u);
      [v5 flags];
      _MBLog();
    }
  }
}

- (BOOL)_checkFreeDiskSpace:(unint64_t)a3 preflightInfo:(id)a4 error:(id *)a5
{
  v7 = a4;
  if (!v7)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _checkFreeDiskSpace:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 491, "preflightInfo");
  }

  if (!a5)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _checkFreeDiskSpace:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 492, "error");
  }

  v8 = v7;
  v9 = [v7 sourceDeviceDataSize] + 0x1C0000000;
  if (v9 > a3)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v14 = v9;
      v15 = 2048;
      v16 = 0x1C0000000;
      v17 = 2048;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Insufficient free disk space - totalSize:%llu, reservedSize:%llu, freeDiskSpace:%llu", buf, 0x20u);
      _MBLog();
    }

    v11 = [MBError errorWithCode:106 format:@"Insufficient free disk space"];
    *a5 = v11;
    if (!v11)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _checkFreeDiskSpace:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 502, "result || *error");
    }
  }

  return v9 <= a3;
}

- (void)startPreflightWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startPreflightWithCompletion:]", "MBTargetDeviceTransferEngine.m", 507, "completion");
  }

  v5 = v4;
  v6 = MBFreeDiskSpace();
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting preflight (freeDiskSpace:%llu)", &buf, 0xCu);
    _MBLog();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = sub_100111BA4;
  v32 = sub_100111BB4;
  v33 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100111BA4;
  v27[4] = sub_100111BB4;
  v28 = 0;
  v8 = dispatch_group_create();
  v9 = self->_transferSummary;
  dispatch_group_enter(v8);
  v10 = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111BBC;
  block[3] = &unk_1003BD5B8;
  p_buf = &buf;
  block[4] = self;
  v23 = v8;
  v11 = v9;
  v24 = v11;
  v26 = v27;
  v12 = v8;
  dispatch_async(v10, block);

  v13 = dispatch_get_global_queue(17, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100111E60;
  v16[3] = &unk_1003BEE68;
  v21 = &buf;
  v19 = v5;
  v20 = v27;
  v17 = v11;
  v18 = self;
  v14 = v5;
  v15 = v11;
  dispatch_group_notify(v12, v13, v16);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)startKeychainDataTransferWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startKeychainDataTransferWithCompletion:]", "MBTargetDeviceTransferEngine.m", 597, "completion");
  }

  v5 = v4;
  v6 = MBFreeDiskSpace();
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting keychain data transfer (freeDiskSpace:%llu)", &buf, 0xCu);
    _MBLog();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = sub_100111BA4;
  v31 = sub_100111BB4;
  v32 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100111BA4;
  v26[4] = sub_100111BB4;
  v27 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = self->_transferSummary;
  v10 = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001127E0;
  block[3] = &unk_1003BD5B8;
  p_buf = &buf;
  block[4] = self;
  v22 = v8;
  v11 = v9;
  v23 = v11;
  v25 = v26;
  v12 = v8;
  dispatch_async(v10, block);

  v13 = dispatch_get_global_queue(17, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100112A70;
  v16[3] = &unk_1003BEE68;
  v20 = &buf;
  v16[4] = self;
  v17 = v11;
  v18 = v5;
  v19 = v26;
  v14 = v5;
  v15 = v11;
  dispatch_group_notify(v12, v13, v16);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)startKeychainDataImportWithKeychainInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startKeychainDataImportWithKeychainInfo:completion:]", "MBTargetDeviceTransferEngine.m", 650, "keychainInfo");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startKeychainDataImportWithKeychainInfo:completion:]", "MBTargetDeviceTransferEngine.m", 651, "completion");
  }

  v9 = MBFreeDiskSpace();
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting keychain data import (freeDiskSpace:%llu)", &buf, 0xCu);
    _MBLog();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = sub_100111BA4;
  v32 = sub_100111BB4;
  v33 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = self->_transferSummary;
  v13 = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100112FC8;
  block[3] = &unk_1003BEEB8;
  block[4] = self;
  v25 = v11;
  p_buf = &buf;
  v26 = v6;
  v14 = v12;
  v27 = v14;
  v15 = v6;
  v16 = v11;
  dispatch_async(v13, block);

  v17 = dispatch_get_global_queue(17, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100113370;
  v20[3] = &unk_1003BDBF0;
  v22 = v8;
  v23 = &buf;
  v21 = v14;
  v18 = v8;
  v19 = v14;
  dispatch_group_notify(v16, v17, v20);

  _Block_object_dispose(&buf, 8);
}

- (void)startDataTransferWithPreflightInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startDataTransferWithPreflightInfo:completion:]", "MBTargetDeviceTransferEngine.m", 711, "preflightInfo");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startDataTransferWithPreflightInfo:completion:]", "MBTargetDeviceTransferEngine.m", 712, "completion");
  }

  v9 = MBFreeDiskSpace();
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting data transfer (freeDiskSpace:%llu)", &buf, 0xCu);
    _MBLog();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = sub_100111BA4;
  v28 = sub_100111BB4;
  v29 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001137E0;
  block[3] = &unk_1003BEF08;
  block[4] = self;
  v21 = v11;
  v22 = v6;
  p_buf = &buf;
  v24 = v9;
  v13 = v6;
  v14 = v11;
  dispatch_async(v12, block);

  v15 = dispatch_get_global_queue(17, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100113C84;
  v17[3] = &unk_1003BEF30;
  v18 = v8;
  v19 = &buf;
  v17[4] = self;
  v16 = v8;
  dispatch_group_notify(v14, v15, v17);

  _Block_object_dispose(&buf, 8);
}

- (BOOL)_removeDirectory:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!a4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _removeDirectory:error:]", "MBTargetDeviceTransferEngine.m", 793, "error");
  }

  v6 = v5;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
    _MBLog();
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 removeItemAtPath:v6 error:a4];

  if (v9)
  {
    goto LABEL_5;
  }

  v11 = [*a4 domain];
  if ([v11 isEqualToString:NSCocoaErrorDomain])
  {
    v12 = [*a4 code];

    if (v12 == 4)
    {
LABEL_5:
      v10 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = *a4;
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to remove the directory at %@: %@", buf, 0x16u);
    v16 = *a4;
    _MBLog();
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)_start
{
  v3 = [(MBTargetDeviceTransferEngine *)self queue];
  dispatch_assert_queue_V2(v3);

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001144C8;
  v38[3] = &unk_1003BC400;
  v38[4] = self;
  v4 = [(MBTargetDeviceTransferEngine *)self _perform:v38];
  if (!v4)
  {
    v6 = [(MBTargetDeviceTransferEngine *)self persona];
    v7 = [v6 userRestoreDirectory];
    v37 = 0;
    v8 = [(MBTargetDeviceTransferEngine *)self _removeDirectory:v7 error:&v37];
    v5 = v37;

    if (v8)
    {
      v9 = [v6 userIncompleteRestoreDirectory];
      v36 = v5;
      v10 = [(MBTargetDeviceTransferEngine *)self _removeDirectory:v9 error:&v36];
      v11 = v36;

      if ((v10 & 1) == 0)
      {
LABEL_13:
        [(MBTargetDeviceTransferEngine *)self _finishWithError:v11];
        v5 = v11;
        goto LABEL_15;
      }

      v12 = [(MBTargetDeviceTransferEngine *)self persona];
      v13 = [v12 shouldRestoreToSharedVolume];

      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = [v6 sharedRestoreDirectory];
      v35 = v11;
      v15 = [(MBTargetDeviceTransferEngine *)self _removeDirectory:v14 error:&v35];
      v5 = v35;

      if (v15)
      {
        v16 = [v6 sharedIncompleteRestoreDirectory];
        v34 = v5;
        v17 = [(MBTargetDeviceTransferEngine *)self _removeDirectory:v16 error:&v34];
        v11 = v34;

        if (v17)
        {
LABEL_8:
          v18 = [(MBTargetDeviceTransferEngine *)self transferDrive];
          [v18 cleanUpReceivedFilesDirectory];

          v33 = v11;
          LOBYTE(v18) = [(MBTargetDeviceTransferEngine *)self _setUpFileTransferSessionWithError:&v33];
          v19 = v33;

          if (v18)
          {
            v20 = [(MBTargetDeviceTransferEngine *)self progressModel];
            [v20 updateTotalProgressWithPhaseProgress:1 phase:0.0];

            v21 = self->_transferSummary;
            v27 = 0;
            v28 = &v27;
            v29 = 0x3032000000;
            v30 = sub_100111BA4;
            v31 = sub_100111BB4;
            v32 = 0;
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_100114548;
            v23[3] = &unk_1003BEF58;
            v22 = v21;
            v25 = self;
            v26 = &v27;
            v24 = v22;
            v5 = [(MBTargetDeviceTransferEngine *)self _perform:v23];

            [(MBTargetDeviceTransferEngine *)self setPeerInitResponse:v28[5]];
            if (v5)
            {
              [(MBTargetDeviceTransferEngine *)self _finishWithError:v5];
            }

            _Block_object_dispose(&v27, 8);
          }

          else
          {
            [(MBTargetDeviceTransferEngine *)self _finishWithError:v19];
            v5 = v19;
          }

          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    [(MBTargetDeviceTransferEngine *)self _finishWithError:v5];
LABEL_15:

    goto LABEL_16;
  }

  v5 = v4;
  [(MBTargetDeviceTransferEngine *)self _finishWithError:v4];
LABEL_16:
}

- (void)start
{
  v3 = objc_opt_new();
  transferSummary = self->_transferSummary;
  self->_transferSummary = v3;

  [(MBTargetDeviceTransferSummary *)self->_transferSummary trackEngineStart];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "========== %@ starting", buf, 0xCu);
    objc_opt_class();
    _MBLog();
  }

  MBLogDeviceProperties();
  +[NSDate timeIntervalSinceReferenceDate];
  [(MBTargetDeviceTransferEngine *)self setStartTime:?];
  v6 = [(MBTargetDeviceTransferEngine *)self powerAssertion];
  [v6 hold];

  v7 = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011473C;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(v7, block);
}

- (BOOL)_handleTimeout:(BOOL)a3 error:(id *)a4
{
  if (!a4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _handleTimeout:error:]", "MBTargetDeviceTransferEngine.m", 894, "error");
  }

  v5 = a3;
  if ([(MBEngine *)self isCanceled])
  {
    v6 = @"Canceled";
    v7 = 202;
  }

  else
  {
    if (!v5)
    {
      return 1;
    }

    v6 = @"Timed out";
    v7 = 15;
  }

  v8 = [MBError errorWithCode:v7 format:v6];
  if (v8)
  {
    v9 = v8;
    *a4 = v9;

    return 0;
  }

  return 1;
}

- (id)_requestInitWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 913, "error");
  }

  v5 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!v5)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 915, "fileTransferSession");
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending the init request to the source", buf, 2u);
    _MBLog();
  }

  v7 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setRequestInitSemaphore:v7];
  if ([(MBEngine *)self isCanceled]&& ![(MBTargetDeviceTransferEngine *)self _handleTimeout:0 error:a3])
  {
    v18 = 0;
    goto LABEL_34;
  }

  *buf = 0;
  v54 = buf;
  v55 = 0x3032000000;
  v56 = sub_100111BA4;
  v57 = sub_100111BB4;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100111BA4;
  v51 = sub_100111BB4;
  v52 = 0;
  v42 = MBDeviceUDID_Legacy();
  v41 = MBDeviceName();
  v40 = MBDeviceClass();
  v8 = MBBuildVersion();
  v9 = MBProductVersion();
  v10 = [[MBPeerInitRequest alloc] initWithTargetDeviceUDID:v42 deviceName:v41 deviceClass:v40 buildVersion:v8 productVersion:v9];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100114F38;
  v43[3] = &unk_1003BEF80;
  v45 = &v47;
  v46 = buf;
  v11 = v7;
  v44 = v11;
  [MBPeerMessenger sendRequest:v10 session:v5 responseHandler:v43];
  v12 = dispatch_time(0, 3600000000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  [(MBTargetDeviceTransferEngine *)self setRequestInitSemaphore:0];
  if ([(MBTargetDeviceTransferEngine *)self _handleTimeout:v13 != 0 error:a3])
  {
    if (*(v54 + 5))
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = *(v54 + 5);
          *v59 = 138412546;
          v60 = v16;
          v61 = 2112;
          v62 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Request %@ failed: %@", v59, 0x16u);
        }

        objc_opt_class();
        v37 = *(v54 + 5);
        _MBLog();
      }

      v18 = 0;
      *a3 = *(v54 + 5);
      goto LABEL_33;
    }

    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v48[5];
      *v59 = 138412290;
      v60 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received init response: %@", v59, 0xCu);
      v36 = v48[5];
      _MBLog();
    }

    v21 = [v48[5] sourceProtocolVersion];
    if (!v21)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 953, "sourceProtocolVersion");
    }

    v22 = [v48[5] sourceProductVersion];
    if (!v22)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 955, "sourceProductVersion");
    }

    v39 = [v48[5] sourceRequiredProductVersion];
    v23 = [v48[5] sourceDeviceClass];
    v38 = v22;
    if (!v23)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 958, "sourceDeviceClass");
    }

    v24 = v23;
    if ([v21 unsignedLongValue] <= 1)
    {
      v26 = MBProductVersion();
      v27 = MBIsRestoreCompatible();

      if (v27)
      {
        v28 = MBDeviceClass();
        v29 = [v24 isEqualToString:v28];

        if (v29)
        {
          v30 = 0;
LABEL_32:
          v18 = v48[5];

          goto LABEL_33;
        }

        v25 = @"Cross-device data transfer is not supported";
        v31 = 1;
LABEL_28:
        v30 = [MBError errorWithCode:v31 format:v25, v36];
        if (v30)
        {
          v32 = v48[5];
          v48[5] = 0;

          v33 = v30;
          *a3 = v30;
          v34 = MBGetDefaultLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *v59 = 138412290;
            v60 = v30;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to handshake with the source: %@", v59, 0xCu);
            _MBLog();
          }
        }

        goto LABEL_32;
      }

      v25 = @"Incompatible product version";
    }

    else
    {
      v25 = @"Incompatible protocol version";
    }

    v31 = 203;
    goto LABEL_28;
  }

  v18 = 0;
LABEL_33:

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(buf, 8);

LABEL_34:

  return v18;
}

- (id)_requestPreflightWithSourceInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestPreflightWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 979, "sourceInfo");
  }

  if (!a4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestPreflightWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 980, "error");
  }

  v7 = v6;
  v8 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!v8)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestPreflightWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 982, "fileTransferSession");
  }

  v9 = +[NSDate date];
  [(MBTargetDeviceTransferEngine *)self setPreflightStartDate:v9];

  [(MBTargetDeviceTransferEngine *)self setPreflightDuration:0];
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v11 = [(MBTargetDeviceTransferEngine *)self progressModel];
  [v11 updateTotalProgressWithPhaseProgress:2 phase:0.0];

  v12 = [v7 sourceDeviceName];
  v13 = [v7 sourceDeviceUDID];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting to preflight on %@ (%@)", buf, 0x16u);
    v27 = v12;
    v28 = v13;
    _MBLog();
  }

  v15 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setRequestPreflightSemaphore:v15];
  if ([(MBEngine *)self isCanceled]&& ![(MBTargetDeviceTransferEngine *)self _handleTimeout:0 error:a4])
  {
    v24 = 0;
  }

  else
  {
    v30 = v10;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = sub_100111BA4;
    v47 = sub_100111BB4;
    v48 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_100111BA4;
    v39 = sub_100111BB4;
    v40 = 0;
    v16 = [[MBPeerPreflightRequest alloc] initWithFreeDiskSpace:MBFreeDiskSpace() purgeSize:0];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100115598;
    v31[3] = &unk_1003BEFA8;
    v33 = &v35;
    v34 = buf;
    v17 = v15;
    v32 = v17;
    [MBPeerMessenger sendRequest:v16 session:v8 responseHandler:v31];
    v18 = dispatch_time(0, 604800000000000);
    v19 = dispatch_semaphore_wait(v17, v18);
    [(MBTargetDeviceTransferEngine *)self setRequestPreflightSemaphore:0];
    if ([(MBTargetDeviceTransferEngine *)self _handleTimeout:v19 != 0 error:a4, v27, v28])
    {
      if (*(*&buf[8] + 40))
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = objc_opt_class();
            v23 = *(*&buf[8] + 40);
            *v41 = 138412546;
            v42 = v22;
            v43 = 2112;
            v44 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Request %@ failed: %@", v41, 0x16u);
          }

          objc_opt_class();
          v29 = *(*&buf[8] + 40);
          _MBLog();
        }

        v24 = 0;
        *a4 = *(*&buf[8] + 40);
      }

      else
      {
        [(MBTargetDeviceTransferEngine *)self setPreflightDuration:(clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - v30) / 0x3B9ACA00];
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v41 = 138412546;
          v42 = v12;
          v43 = 2112;
          v44 = v13;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Finished preflighting on %@ (%@)", v41, 0x16u);
          _MBLog();
        }

        v24 = v36[5];
      }
    }

    else
    {
      v24 = 0;
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(buf, 8);
  }

  return v24;
}

- (id)_requestKeychainWithSourceInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestKeychainWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1028, "sourceInfo");
  }

  if (!a4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestKeychainWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1029, "error");
  }

  v7 = v6;
  v8 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!v8)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestKeychainWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1031, "fileTransferSession");
  }

  v9 = [v7 sourceDeviceName];
  v10 = [v7 sourceDeviceUDID];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting to transfer the keychain data from %@ (%@)", buf, 0x16u);
    v25 = v9;
    v26 = v10;
    _MBLog();
  }

  v28 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setRequestKeychainSemaphore:?];
  if ([(MBEngine *)self isCanceled]&& ![(MBTargetDeviceTransferEngine *)self _handleTimeout:0 error:a4])
  {
    v22 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = sub_100111BA4;
    v45 = sub_100111BB4;
    v46 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_100111BA4;
    v37 = sub_100111BB4;
    v38 = 0;
    v12 = a4;
    v13 = objc_opt_new();
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100115B64;
    v29[3] = &unk_1003BEFD0;
    v31 = &v33;
    v32 = buf;
    v14 = v28;
    v30 = v14;
    v15 = v13;
    [MBPeerMessenger sendRequest:v13 session:v8 responseHandler:v29];
    v16 = dispatch_time(0, 3600000000000);
    v17 = dispatch_semaphore_wait(v14, v16);
    [(MBTargetDeviceTransferEngine *)self setRequestKeychainSemaphore:0];
    if ([(MBTargetDeviceTransferEngine *)self _handleTimeout:v17 != 0 error:v12, v25, v26])
    {
      if (*(*&buf[8] + 40))
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = objc_opt_class();
            v21 = *(*&buf[8] + 40);
            *v39 = 138412546;
            v40 = v20;
            v41 = 2112;
            v42 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Request %@ failed: %@", v39, 0x16u);
          }

          objc_opt_class();
          v27 = *(*&buf[8] + 40);
          _MBLog();
        }

        v22 = 0;
        *v12 = *(*&buf[8] + 40);
      }

      else
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 138412546;
          v40 = v9;
          v41 = 2112;
          v42 = v10;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Finished transferring the keychain data from %@ (%@)", v39, 0x16u);
          _MBLog();
        }

        v22 = v34[5];
      }
    }

    else
    {
      v22 = 0;
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(buf, 8);
  }

  return v22;
}

- (BOOL)_restoreKeychainWithKeychainTransferResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreKeychainWithKeychainTransferResponse:error:]", "MBTargetDeviceTransferEngine.m", 1070, "keybagTransferResponse");
  }

  if (!a4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreKeychainWithKeychainTransferResponse:error:]", "MBTargetDeviceTransferEngine.m", 1071, "error");
  }

  v7 = v6;
  v8 = [v6 keychainFileName];
  v9 = [v7 keybagData];
  v10 = [v7 passwordData];
  v11 = [(MBTargetDeviceTransferEngine *)self transferDrive];
  v12 = [v11 fullURLForDriveRelativePath:v8];
  v13 = [v12 path];

  if (!v13)
  {
    v28 = @"nil keychain file path";
LABEL_23:
    [MBError errorWithCode:1 format:v28];
    *a4 = v20 = 0;
    goto LABEL_28;
  }

  if (!v9)
  {
    v28 = @"nil keybag data";
    goto LABEL_23;
  }

  if (!v10)
  {
    v28 = @"nil password data";
    goto LABEL_23;
  }

  v14 = +[NSFileManager defaultManager];
  v35 = 0;
  v15 = [v14 attributesOfItemAtPath:v13 error:&v35];
  v16 = v35;

  v32 = v15;
  if (v15)
  {
    v31 = [v15 objectForKeyedSubscript:NSFileSize];
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v31 unsignedLongLongValue];
      v19 = [v9 length];
      *buf = 138412802;
      v37 = v13;
      v38 = 2048;
      v39 = v18;
      v40 = 2048;
      v41 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Restoring the keychain from %@ (size:%llu, keybagData.length:%ld)", buf, 0x20u);
      [v31 unsignedLongLongValue];
      [v9 length];
      _MBLog();
    }

    v34 = v16;
    v20 = RestoreKeychainFromDisk(v13, v9, v10, &v34);
    v21 = v34;

    if (!v20)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = v13;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to restore the keychain from %@: %@", buf, 0x16u);
        _MBLog();
      }

      v23 = v21;
      *a4 = v21;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removing the keychain temporary file at %@", buf, 0xCu);
      _MBLog();
    }

    v25 = +[NSFileManager defaultManager];
    v33 = v21;
    v26 = [v25 removeItemAtPath:v13 error:&v33];
    v16 = v33;

    if ((v26 & 1) == 0)
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = v13;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to remove the keychain temporary file at %@: %@", buf, 0x16u);
        _MBLog();
      }
    }
  }

  else
  {
    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = v13;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for %@: %@", buf, 0x16u);
      _MBLog();
    }

    [MBError errorWithCode:1 error:v16 format:@"Failed to fetch the attributes for the keychain temporary file"];
    *a4 = v20 = 0;
  }

LABEL_28:
  return v20;
}

- (BOOL)_requestBackupWithSourceInfo:(id)a3 preflightInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestBackupWithSourceInfo:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 1116, "sourceInfo");
  }

  if (!v9)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestBackupWithSourceInfo:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 1117, "preflightInfo");
  }

  if (!a5)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestBackupWithSourceInfo:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 1118, "error");
  }

  v45 = v9;
  v47 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!v47)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestBackupWithSourceInfo:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 1120, "fileTransferSession");
  }

  v46 = self->_transferSummary;
  v10 = +[NSDate date];
  [(MBTargetDeviceTransferEngine *)self setFileTransferStartDate:v10];
  v11 = [(MBTargetDeviceTransferEngine *)self progressModel];
  [v11 setFileTransferStartDate:v10];

  v12 = [(MBTargetDeviceTransferEngine *)self progressModel];
  [v12 updateTotalProgressWithPhaseProgress:3 phase:0.0];

  v40 = [v45 sourceDeviceDataSize];
  v44 = [v8 sourceDeviceName];
  [v8 sourceDeviceUDID];
  *&v43 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [(MBTargetDeviceTransferSummary *)v46 trackDataTransferStart];
  +[NSDate timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = v40;
    *&buf[12] = 2112;
    *&buf[14] = v44;
    *&buf[22] = 2112;
    v61 = v43;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Starting to transfer data (%llu) from %@ (%@)", buf, 0x20u);
    v37 = v44;
    v39 = v43;
    v36 = v40;
    _MBLog();
  }

  objc_initWeak(&location, self);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100116928;
  v51[3] = &unk_1003BEFF8;
  objc_copyWeak(&v52, &location);
  v16 = [(MBTargetDeviceTransferEngine *)self transferDrive];
  [v16 setReceiveProgressHandler:v51];

  v17 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setRequestBackupSemaphore:v17];
  if ([(MBEngine *)self isCanceled]&& ![(MBTargetDeviceTransferEngine *)self _handleTimeout:0 error:a5])
  {
    v29 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v61 = sub_100111BA4;
    v62 = sub_100111BB4;
    v63 = 0;
    v42 = MBDeviceUDID_Legacy();
    v41 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpace()];
    v18 = [[MBPeerTransferRequest alloc] initWithTargetDeviceUDID:v42 freeDiskSpace:v41];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001169CC;
    v48[3] = &unk_1003BF020;
    v50 = buf;
    v19 = v17;
    v49 = v19;
    [MBPeerMessenger sendRequest:v18 session:v47 responseHandler:v48];
    v20 = dispatch_time(0, 604800000000000);
    v21 = dispatch_semaphore_wait(v19, v20);
    [(MBTargetDeviceTransferEngine *)self setRequestBackupSemaphore:0];
    v22 = [(MBTargetDeviceTransferEngine *)self transferDrive];
    [v22 setReceiveProgressHandler:0];

    v23 = [(MBTargetDeviceTransferEngine *)self progressModel];
    v24 = [v23 progressInfo];

    -[MBTargetDeviceTransferSummary trackDataTransferEndWithTotalByteCount:totalFileCount:bytesTransferred:filesTransferred:](v46, "trackDataTransferEndWithTotalByteCount:totalFileCount:bytesTransferred:filesTransferred:", [v24 totalByteCount], objc_msgSend(v24, "totalFileCount"), objc_msgSend(v24, "bytesTransferred"), objc_msgSend(v24, "filesTransferred"));
    if ([(MBTargetDeviceTransferEngine *)self _handleTimeout:v21 != 0 error:a5, v36, v37, v39])
    {
      if (*(*&buf[8] + 40))
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = v25;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = objc_opt_class();
            v28 = *(*&buf[8] + 40);
            *v54 = 138412546;
            v55 = v27;
            v56 = 2112;
            v57 = v28;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Request %@ failed: %@", v54, 0x16u);
          }

          objc_opt_class();
          v38 = *(*&buf[8] + 40);
          _MBLog();
        }

        v29 = 0;
        *a5 = *(*&buf[8] + 40);
      }

      else
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v31 = v30;
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 138412546;
          v55 = v44;
          v56 = 2112;
          v57 = *&v43;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Finished transferring data from %@ (%@)", v54, 0x16u);
          _MBLog();
        }

        v33 = MBGetDefaultLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 134218496;
          v55 = v40;
          v56 = 2048;
          v57 = v31 - v14;
          v58 = 2048;
          v59 = (v40 >> 20) / (v31 - v14);
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Total bytes transferred: %llu. Total time spent on transferring: %f. Average throughput: %.2f", v54, 0x20u);
          _MBLog();
        }

        v34 = +[NSDate date];
        [(MBTargetDeviceTransferEngine *)self setFileTransferEndDate:v34];

        v29 = 1;
      }
    }

    else
    {
      v29 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);

  return v29;
}

- (void)_saveDeviceTransferInfo
{
  v3 = objc_opt_new();
  v4 = MBBuildVersion();
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"BuildVersion"];
  }

  v27 = v4;
  v5 = [NSNumber numberWithInteger:[(MBTargetDeviceTransferEngine *)self connectionType]];
  [v3 setObject:v5 forKeyedSubscript:@"ConnectionType"];

  v6 = [(MBTargetDeviceTransferEngine *)self peerInitResponse];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 sourceDeviceUDID];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"SourceDeviceUDID"];
    }

    v9 = [v7 sourceProtocolVersion];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"SourceDeviceProtocolVersion"];
    }

    v10 = [v7 sourceBuildVersion];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"SourceDeviceBuildVersion"];
    }
  }

  v11 = [(MBTargetDeviceTransferEngine *)self progressModel];
  v12 = [v11 progressInfo];

  if (v12)
  {
    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 bytesTransferred]);
    [v3 setObject:v13 forKeyedSubscript:@"BytesTransferred"];

    v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 filesTransferred]);
    [v3 setObject:v14 forKeyedSubscript:@"FilesTransferred"];
  }

  v15 = [(MBTargetDeviceTransferEngine *)self preflightStartDate];
  v16 = [(MBTargetDeviceTransferEngine *)self preflightDuration];
  if (v16)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:v16];
    [v3 setObject:v17 forKeyedSubscript:@"PreflightDuration"];
  }

  if (v15)
  {
    [v3 setObject:v15 forKeyedSubscript:@"PreflightStartDate"];
  }

  v18 = [(MBTargetDeviceTransferEngine *)self fileTransferStartDate];
  v19 = [(MBTargetDeviceTransferEngine *)self fileTransferEndDate];
  v20 = v19;
  if (v18 && v19)
  {
    [v19 timeIntervalSinceDate:v18];
    v22 = v21;
    [v3 setObject:v18 forKeyedSubscript:@"FileTransferStartDate"];
    v23 = [NSNumber numberWithLongLong:v22];
    [v3 setObject:v23 forKeyedSubscript:@"FileTransferDuration"];
  }

  v24 = [(MBTargetDeviceTransferEngine *)self restoreStartDate];
  if (v24)
  {
    [v3 setObject:v24 forKeyedSubscript:@"RestoreStartDate"];
  }

  v25 = [MBPersona personalPersonaWithError:0];
  [v25 setPreferencesValue:v3 forKey:@"DeviceTransferInfo"];
  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = @"DeviceTransferInfo";
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Saved %{public}@: %@", buf, 0x16u);
    _MBLog();
  }
}

- (BOOL)_restoreWithSourceInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1232, "sourceInfo");
  }

  if (!a4)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1233, "error");
  }

  v7 = v6;
  v8 = self->_transferSummary;
  [(MBTargetDeviceTransferSummary *)v8 trackRestoreStart];
  v9 = [v7 sourceDeviceName];
  v10 = [v7 sourceDeviceUDID];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting to restore data from %@ (%@)", buf, 0x16u);
    _MBLog();
  }

  v12 = +[NSDate date];
  [(MBTargetDeviceTransferEngine *)self setRestoreStartDate:v12];
  v13 = [(MBTargetDeviceTransferEngine *)self progressModel];
  [v13 setRestoreStartDate:v12];

  [(MBTargetDeviceTransferEngine *)self progressUpdatedWithPercentage:0 size:0.0];
  [(MBTargetDeviceTransferEngine *)self _saveDeviceTransferInfo];
  v14 = [(MBTargetDeviceTransferEngine *)self _restoreEngineWithSourceInfo:v7];
  v15 = [v14 restore];
  [(MBTargetDeviceTransferSummary *)v8 trackRestoreEnd];
  v16 = MBGetDefaultLog();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to restore data from %@ (%@): %@", buf, 0x20u);
      _MBLog();
    }

    v18 = v15;
    *a4 = v15;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finished restoring data from %@ (%@)", buf, 0x16u);
      _MBLog();
    }
  }

  return v15 == 0;
}

- (id)_restoreEngineWithSourceInfo:(id)a3
{
  v4 = a3;
  v5 = +[MBDriveSettingsContext defaultSettingsContext];
  [v5 setIsDeviceTransfer:1];
  v6 = MBAllDrivePlugins();
  [v5 setPlugins:v6];

  v7 = [v4 sourceDeviceUDID];
  [v5 setSourceIdentifier:v7];

  v8 = MBDeviceUDID_Legacy();
  [v5 setTargetIdentifier:v8];

  v9 = [(MBTargetDeviceTransferEngine *)self transferLocalDrive];
  if (!v9)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreEngineWithSourceInfo:]", "MBTargetDeviceTransferEngine.m", 1275, "self.transferLocalDrive");
  }

  v10 = [(MBTargetDeviceTransferEngine *)self transferLocalDrive];
  [v5 setDrive:v10];

  v11 = +[MBCKManager sharedInstance];
  [v5 setManager:v11];

  [v5 setApplicationIDs:0];
  v12 = [[MBDriveRestoreEngine alloc] initWithSettingsContext:v5 debugContext:0];
  v13 = [(MBDriveRestoreEngine *)v12 progress];
  [v13 setDelegate:self];

  return v12;
}

- (void)_sendDoneMessageWithError:(id)a3
{
  v4 = a3;
  v5 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!v5)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _sendDoneMessageWithError:]", "MBTargetDeviceTransferEngine.m", 1288, "fileTransferSession");
  }

  v6 = v5;
  v7 = atomic_load(&self->_peerConnectedOnce);
  if (v7 & 1) == 0 || (v8 = atomic_load(&self->_receivedDoneMessage), (v8) || (v9 = atomic_load(&self->_sentDoneMessage), (v9) || (atomic_exchange(&self->_sendingDoneMessage, 1u))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, &v10->super, OS_LOG_TYPE_DEFAULT, "Not sending %@", buf, 0xCu);
      objc_opt_class();
      _MBLog();
    }
  }

  else
  {
    v10 = self->_transferSummary;
    [(MBTargetDeviceTransferSummary *)v10 trackDoneStart];
    v11 = [[MBPeerDoneRequest alloc] initWithError:v4];
    v12 = dispatch_semaphore_create(0);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100117598;
    v22 = &unk_1003BF048;
    v13 = v11;
    v23 = v13;
    v24 = self;
    v14 = v12;
    v25 = v14;
    [MBPeerMessenger sendRequest:v13 session:v6 responseHandler:&v19];
    v15 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Timed out waiting for %@", buf, 0xCu);
        v18 = objc_opt_class();
        _MBLog();
      }

      [(MBTargetDeviceTransferEngine *)self _stopTrackingPeerConnectionStatus];
    }

    [(MBTargetDeviceTransferSummary *)v10 trackDoneEnd:v18];
  }
}

- (void)_sendRestoreProgressMessageWithPercentage:(unint64_t)a3
{
  v5 = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!v5)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _sendRestoreProgressMessageWithPercentage:]", "MBTargetDeviceTransferEngine.m", 1326, "fileTransferSession");
  }

  v6 = v5;
  v7 = atomic_load(&self->_peerConnectedOnce);
  if ((v7 & 1) != 0 && (v8 = atomic_load(&self->_receivedDoneMessage), (v8 & 1) == 0))
  {
    v10 = self;
    objc_sync_enter(v10);
    if (v10->_lastRestoreProgressPercentage == a3)
    {
      objc_sync_exit(v10);
    }

    else
    {
      v10->_lastRestoreProgressPercentage = a3;
      objc_sync_exit(v10);

      if (a3 <= 0x64 && (atomic_exchange(&v10->_sendingRestoreProgressMessage, 1u) & 1) == 0)
      {
        v11 = [(MBTargetDeviceTransferEngine *)v10 progressGroup];
        v12 = dispatch_get_global_queue(17, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001179A8;
        block[3] = &unk_1003BDB10;
        v16 = a3;
        v14 = v6;
        v15 = v10;
        dispatch_group_async(v11, v12, block);

        v9 = v14;
        goto LABEL_12;
      }
    }

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      *buf = 138412290;
      v18 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not sending %@", buf, 0xCu);
      objc_opt_class();
      _MBLog();
    }
  }

LABEL_12:
}

- (void)_postTransferProgressNotification:(id)a3
{
  v3 = a3;
  v4 = +[MBNotificationCenter sharedNotificationCenter];
  v5 = kMBTargetDeviceTransferProgressNotification;
  [v3 progress];
  [v4 postNotification:v5 ifStateChanged:(v6 * 100.0)];

  v9 = +[MBNotificationCenter sharedNotificationCenter];
  v7 = kMBTargetDeviceTransferMinutesRemainingNotification;
  v8 = [v3 minutesRemaining];

  [v9 postNotification:v7 ifStateChanged:v8];
}

- (void)updatedTotalProgress:(id)a3
{
  v4 = a3;
  if (![(MBEngine *)self isCanceled])
  {
    v5 = [(MBTargetDeviceTransferEngine *)self progressGroup];
    v6 = [(MBTargetDeviceTransferEngine *)self sessionQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100117E8C;
    v7[3] = &unk_1003BC060;
    v7[4] = self;
    v8 = v4;
    dispatch_group_async(v5, v6, v7);
  }
}

- (void)progressUpdatedWithPercentage:(double)a3 size:(unint64_t)a4
{
  v6 = [(MBTargetDeviceTransferEngine *)self progressModel];
  [v6 updateTotalProgressWithPhaseProgress:4 phase:a3 / 100.0];

  [(MBTargetDeviceTransferEngine *)self _sendRestoreProgressMessageWithPercentage:a3];
}

- (MBServiceManagerDeviceTransferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end