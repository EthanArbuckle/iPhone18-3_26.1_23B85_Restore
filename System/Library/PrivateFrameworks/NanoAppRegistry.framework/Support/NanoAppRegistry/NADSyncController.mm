@interface NADSyncController
- (BOOL)canCoordinatePairedSyncSessionForDevice:(id)a3;
- (BOOL)needToCoordinatePairedSyncSessionForDevice:(id)a3;
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (BOOL)shouldStartSyncSession:(id)a3 error:(id *)a4;
- (BOOL)shouldStartSyncSessionForReunionSync:(id)a3 error:(id *)a4;
- (NADSyncController)initWithApplicationStore:(id)a3;
- (void)cancelWatchdogTimer;
- (void)completeSessionWorkWithPairedSyncSuccess:(BOOL)a3 error:(id)a4 notifyAssistant:(BOOL)a5;
- (void)lock_cancelWatchdogTimer;
- (void)pairedSyncWatchdogTimerFired;
- (void)performBlockWithWatchdogTimerLock:(id)a3;
- (void)scheduleWatchdogTimer;
- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncSessionDidUpdateProgress:(id)a3;
@end

@implementation NADSyncController

- (NADSyncController)initWithApplicationStore:(id)a3
{
  v5 = a3;
  v34.receiver = self;
  v34.super_class = NADSyncController;
  v6 = [(NADSyncController *)&v34 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSLock);
    timerLock = v6->_timerLock;
    v6->_timerLock = v7;

    v9 = dispatch_queue_create("nanoappregistry.pairedsyncwatchdog", 0);
    pairedSyncWatchdogQueue = v6->_pairedSyncWatchdogQueue;
    v6->_pairedSyncWatchdogQueue = v9;

    v11 = [[SYService alloc] initWithService:@"com.apple.private.alloy.appregistrysync" priority:-20 asMasterStore:0 options:0];
    service = v6->_service;
    v6->_service = v11;

    [(SYService *)v6->_service setDelegate:v6 queue:0];
    v13 = nar_sync_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v6->_service;
      *buf = 138412290;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Initialized sync service: %@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_applicationStore, a3);
    v32 = 0;
    v33 = 0;
    v31 = 0;
    [v5 getAllApplications:&v33 UUID:&v32 sequenceNumber:&v31 includeHidden:1];
    v15 = v33;
    v16 = v32;
    v17 = v31;
    v18 = nar_sync_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 UUIDString];
      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 count]);
      *buf = 138413058;
      v36 = v5;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "NADSyncController initialized with application store: %@; UUID=%@; sequenceNumber=%@; applicationCount=%@", buf, 0x2Au);
    }

    v21 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanoappregistry"];
    pairedSyncCoordinator = v6->_pairedSyncCoordinator;
    v6->_pairedSyncCoordinator = v21;

    [(PSYSyncCoordinator *)v6->_pairedSyncCoordinator setDelegate:v6];
    v23 = v6->_service;
    v30 = 0;
    v24 = [(SYService *)v23 resume:&v30];
    v25 = v30;
    if ((v24 & 1) == 0)
    {
      v26 = nar_sync_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10000BBD0();
      }
    }

    if (![v15 count] || v16 && v17)
    {
      if ([v15 count] || !(v16 | v17))
      {
        goto LABEL_22;
      }

      v27 = nar_sync_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10000BCB0();
      }

      [(NADApplicationStore *)v6->_applicationStore performTransactionWithBlock:&stru_100018628];
    }

    else
    {
      v28 = nar_sync_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10000BC40();
      }
    }

    [(SYService *)v6->_service setNeedsResetSync];
LABEL_22:
  }

  return v6;
}

- (void)completeSessionWorkWithPairedSyncSuccess:(BOOL)a3 error:(id)a4 notifyAssistant:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = [(NADSyncController *)self pairedSyncCoordinator];
  v10 = [v9 activeSyncSession];

  if (v6)
  {
    [v10 syncDidComplete];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [v10 syncDidFailWithError:v8];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v11 = notify_post("com.apple.assistant.sync_data_changed");
  v12 = nar_sync_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [NSNumber numberWithUnsignedInt:v11];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Sync store did update.  Posted changed notification for Siri with status %@", &v14, 0xCu);
  }

LABEL_8:
}

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = nar_sync_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "service:startSession:error", buf, 2u);
  }

  [(NADSyncController *)self cancelWatchdogTimer];
  if ([(NADSyncController *)self shouldStartSyncSession:v7 error:a5])
  {
    v9 = [(NADSyncController *)self syncSession];

    if (!v9)
    {
      v21 = [(NADSyncController *)self applicationStore];
      v22 = [v21 beginTransaction];

      v23 = [[NADSyncSession alloc] initWithSession:v7 transaction:v22];
      [(NADSyncSession *)v23 setDelegate:self];
      [(NADSyncController *)self setSyncSession:v23];

      v19 = 1;
      goto LABEL_15;
    }

    v10 = [v7 identifier];
    v11 = [(NADSyncController *)self syncSession];
    v12 = [v11 session];
    v13 = [v12 identifier];
    v14 = [NSString stringWithFormat:@"NADSyncController received startSession with id %@ while already in a session for %@.", v10, v13];

    v15 = nar_sync_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000BD98(v7, self, v15);
    }

    [NSException raise:NSInternalInconsistencyException format:@"%@", v14];
  }

  else
  {
    v16 = nar_sync_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000BD20(a5);
    }

    v17 = [*a5 domain];
    if ([v17 isEqual:@"NARSyncErrorDomain"])
    {
      v18 = [*a5 code] == 1;
    }

    else
    {
      v18 = 0;
    }

    [(NADSyncController *)self completeSessionWorkWithPairedSyncSuccess:v18 error:*a5 notifyAssistant:v18];
  }

  v19 = 0;
LABEL_15:

  return v19;
}

- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = nar_sync_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "service:sessionEnded:error:", v15, 2u);
  }

  if (v7)
  {
    v10 = [(NADSyncController *)self syncSession];
    v11 = v10;
    if (!v10)
    {
      v13 = nar_sync_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000BFEC(v7);
      }

      goto LABEL_12;
    }

    v12 = [v10 session];

    if (v12 != v7)
    {
      v13 = nar_sync_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000BE80(v7, v11);
      }

LABEL_12:

      goto LABEL_18;
    }

    if (([v11 isComplete]& 1) == 0)
    {
      v14 = nar_sync_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10000BF48(v11);
      }
    }

    [(NADSyncController *)self setSyncSession:0];
    [(NADSyncController *)self completeSessionWorkWithPairedSyncSuccess:v8 == 0 error:v8 notifyAssistant:v8 == 0];
  }

  else
  {
    v11 = nar_sync_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000C078();
    }
  }

LABEL_18:
}

- (void)syncSessionDidUpdateProgress:(id)a3
{
  v4 = [a3 progress];
  v5 = nar_sync_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C0B8(v4, v5);
  }

  v6 = [(NADSyncController *)self pairedSyncCoordinator];
  v7 = [v6 activeSyncSession];
  [v4 fractionCompleted];
  [v7 reportProgress:?];
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v5 = a4;
  v6 = [v5 pairedDevice];
  v7 = [(NADSyncController *)self canCoordinatePairedSyncSessionForDevice:v6];

  if ((v7 & 1) == 0)
  {
    v13 = nar_sync_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Completing PSYServiceSyncSession immediately because the remote device doesn't support PairedSync", &v14, 2u);
    }

    goto LABEL_12;
  }

  v8 = [v5 pairedDevice];
  v9 = [(NADSyncController *)self needToCoordinatePairedSyncSessionForDevice:v8];

  v10 = nar_sync_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0)
  {
    if (v11)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Completing PSYServiceSyncSession immediately because the remote device doesn't need NanoAppRegistry PairedSync", &v14, 2u);
    }

LABEL_12:
    [v5 syncDidComplete];
    goto LABEL_13;
  }

  if (v11)
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PairedSync - beginSyncSession: %@", &v14, 0xCu);
  }

  [(NADSyncController *)self scheduleWatchdogTimer];
  v12 = [(NADSyncController *)self service];
  [v12 setNeedsResetSync];

LABEL_13:
}

- (BOOL)canCoordinatePairedSyncSessionForDevice:(id)a3
{
  v3 = NRWatchOSVersionForRemoteDevice();

  return _NRVersionIsGreaterThanOrEqual(v3, 131584);
}

- (BOOL)needToCoordinatePairedSyncSessionForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NSUUID alloc] initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
  v5 = [v3 supportsCapability:v4];

  return v5 ^ 1;
}

- (BOOL)shouldStartSyncSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NADSyncController *)self pairedSyncCoordinator];
  v8 = [v7 syncRestriction];

  if (v8 == 1)
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"PairedSync restriction is set to limit push";
    v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [NSError errorWithDomain:@"NARSyncErrorDomain" code:2 userInfo:v9];
    *a4 = v10 = 0;
  }

  else
  {
    v11 = [(NADSyncController *)self pairedSyncCoordinator];
    v9 = [v11 activeSyncSession];

    if (v9 && [v9 syncSessionType] == 1 && !-[NADSyncController shouldStartSyncSessionForReunionSync:error:](self, "shouldStartSyncSessionForReunionSync:error:", v6, a4))
    {
      v10 = 0;
    }

    else
    {
      v12 = [v9 pairedDevice];
      v13 = [[NSUUID alloc] initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
      v14 = [v12 supportsCapability:v13];

      if (v14)
      {
        v15 = [v12 pairingID];
        v16 = [NSString stringWithFormat:@"Paired device %@ supports standalone apps, NanoAppRegistry sync is not required", v15];

        v17 = nar_sync_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v20 = NSLocalizedDescriptionKey;
        v21 = v16;
        v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        *a4 = [NSError errorWithDomain:@"NARSyncErrorDomain" code:1 userInfo:v18];
      }

      else
      {
        v16 = nar_sync_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning YES for shouldStartSyncSession for paired device %@", buf, 0xCu);
        }
      }

      v10 = v14 ^ 1;
    }
  }

  return v10;
}

- (BOOL)shouldStartSyncSessionForReunionSync:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 sessionMetadata];
  v8 = [v7 count];

  if (!v8)
  {
    v15 = 1;
    goto LABEL_19;
  }

  v9 = [v6 sessionMetadata];
  v10 = [v9 objectForKeyedSubscript:@"UUIDString"];
  v11 = [v9 objectForKeyedSubscript:@"sequenceNumber"];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || ![v6 isResetSync])
  {
    v15 = 1;
    goto LABEL_17;
  }

  applicationStore = self->_applicationStore;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v15 = 1;
  [(NADApplicationStore *)applicationStore getAllApplications:&v27 UUID:&v26 sequenceNumber:&v25 includeHidden:1];
  v16 = v27;
  v17 = v26;
  v18 = v25;
  v19 = [v17 UUIDString];
  if ([v10 isEqual:v19] && objc_msgSend(v12, "isEqual:", v18))
  {
    v20 = [v16 count];

    if (!v20)
    {
      v15 = 1;
      goto LABEL_15;
    }

    v21 = nar_sync_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Metadata matches existing store", buf, 2u);
    }

    if (!a4)
    {
      v15 = 0;
      goto LABEL_15;
    }

    v19 = [NSString stringWithFormat:@"Sync metadata matches receiver. UUID: %@ sequenceNumber: %@", v10, v12];;
    v28 = NSLocalizedDescriptionKey;
    v29 = v19;
    v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *a4 = [NSError errorWithDomain:@"NARSyncErrorDomain" code:1 userInfo:v22];

    v15 = 0;
  }

LABEL_15:
LABEL_17:

LABEL_19:
  return v15;
}

- (void)pairedSyncWatchdogTimerFired
{
  v3 = nar_sync_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000C1CC();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000053F8;
  v4[3] = &unk_100018578;
  v4[4] = self;
  [(NADSyncController *)self performBlockWithWatchdogTimerLock:v4];
}

- (void)cancelWatchdogTimer
{
  v3 = nar_sync_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling watchdog timer", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000055B4;
  v4[3] = &unk_100018578;
  v4[4] = self;
  [(NADSyncController *)self performBlockWithWatchdogTimerLock:v4];
}

- (void)lock_cancelWatchdogTimer
{
  v3 = [(NADSyncController *)self pairedSyncWatchdogTimer];

  if (v3)
  {
    v4 = [(NADSyncController *)self pairedSyncWatchdogTimer];
    dispatch_source_cancel(v4);

    [(NADSyncController *)self setPairedSyncWatchdogTimer:0];
  }
}

- (void)scheduleWatchdogTimer
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100005698;
  v2[3] = &unk_100018578;
  v2[4] = self;
  [(NADSyncController *)self performBlockWithWatchdogTimerLock:v2];
}

- (void)performBlockWithWatchdogTimerLock:(id)a3
{
  v4 = a3;
  v5 = [(NADSyncController *)self timerLock];
  [v5 lock];

  v4[2](v4);
  v6 = [(NADSyncController *)self timerLock];
  [v6 unlock];
}

@end