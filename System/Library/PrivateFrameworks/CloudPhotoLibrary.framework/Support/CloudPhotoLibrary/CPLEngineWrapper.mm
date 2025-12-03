@interface CPLEngineWrapper
- (BOOL)isSystemLibrary;
- (BOOL)startWithError:(id *)error;
- (CPLEngineWrapper)initWithParameters:(id)parameters engine:(id)engine queue:(id)queue;
- (CPLEngineWrapperDelegate)delegate;
- (NSString)description;
- (id)_deactivateMarkerURL;
- (id)ownerNameForEngineLibrary:(id)library;
- (id)redactedDescription;
- (void)_emergencyExit;
- (void)_libraryHasBeenDeleted;
- (void)_libraryMustBeWiped:(id)wiped;
- (void)_startWatchingSystemState;
- (void)_startWatchingURL:(id)l forPauseReason:(id)reason;
- (void)_stopWatchingSystemState;
- (void)batterySaverWatcherDidChangeState:(id)state;
- (void)cameraWatcherDidChangeState:(id)state;
- (void)deactivateWithCompletionHandler:(id)handler;
- (void)emergencyClose;
- (void)engineLibrary:(id)library getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)engineLibrary:(id)library getStatusWithCompletionHandler:(id)handler;
- (void)engineLibraryDidCompleteInitialSyncOfMainScope:(id)scope;
- (void)engineLibraryNeedsInitialDownloadOfMainScope:(id)scope;
- (void)fileWatcherFileDidAppear:(id)appear;
- (void)fileWatcherFileDidDisappear:(id)disappear;
- (void)pingSupervisor;
- (void)resetStoredParametersWithCompletionHandler:(id)handler;
- (void)stop;
- (void)volumeWillUnmount:(id)unmount;
- (void)wipeWithReason:(id)reason completionHandler:(id)handler;
@end

@implementation CPLEngineWrapper

- (CPLEngineWrapper)initWithParameters:(id)parameters engine:(id)engine queue:(id)queue
{
  parametersCopy = parameters;
  engineCopy = engine;
  queueCopy = queue;
  if (!engineCopy)
  {
    sub_100189544(parametersCopy, a2, self);
  }

  v13 = queueCopy;
  v21.receiver = self;
  v21.super_class = CPLEngineWrapper;
  v14 = [(CPLEngineWrapper *)&v21 init];
  if (v14)
  {
    v15 = CPLCopyDefaultSerialQueueAttributes();
    v16 = dispatch_queue_create_with_target_V2("com.apple.cpl.enginelibrary.wrapper", v15, v13);
    queue = v14->_queue;
    v14->_queue = v16;

    v14->_stopped = 1;
    v18 = objc_alloc_init(NSMutableSet);
    pausedWatchers = v14->_pausedWatchers;
    v14->_pausedWatchers = v18;

    objc_storeStrong(&v14->_parameters, parameters);
    objc_storeStrong(&v14->_engine, engine);
    [(CPLEngineLibrary *)v14->_engine setOwner:v14];
  }

  return v14;
}

- (BOOL)isSystemLibrary
{
  libraryIdentifier = [(CPLEngineParameters *)self->_parameters libraryIdentifier];
  v3 = [libraryIdentifier isEqualToString:CPLLibraryIdentifierSystemLibrary];

  return v3;
}

- (BOOL)startWithError:(id *)error
{
  clientLibraryBaseURL = [(CPLEngineWrapper *)self clientLibraryBaseURL];
  v6 = open([clientLibraryBaseURL fileSystemRepresentation], 0x8000);

  if ((v6 & 0x80000000) == 0)
  {
    v13 = dispatch_source_create(&_dispatch_source_type_vnode, v6, 1uLL, self->_queue);
    watchCPLLibrarySource = self->_watchCPLLibrarySource;
    self->_watchCPLLibrarySource = v13;

    v15 = self->_watchCPLLibrarySource;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100011E98;
    handler[3] = &unk_100271F40;
    handler[4] = self;
    dispatch_source_set_event_handler(v15, handler);
    v16 = self->_watchCPLLibrarySource;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100188FBC;
    v22[3] = &unk_100271F40;
    v22[4] = self;
    dispatch_source_set_cancel_handler(v16, v22);
    dispatch_resume(self->_watchCPLLibrarySource);
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_100011E54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_watchCPLLibrarySource;
        *buf = 138412802;
        selfCopy2 = self;
        v26 = 1024;
        *v27 = v6;
        *&v27[4] = 2112;
        *&v27[6] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Started watching %@ (fd: %i / source: %@)", buf, 0x1Cu);
      }
    }

    v8 = 0;
    goto LABEL_17;
  }

  clientLibraryBaseURL2 = [(CPLEngineWrapper *)self clientLibraryBaseURL];
  v8 = [CPLErrors posixErrorForURL:clientLibraryBaseURL2];

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 cplIsFileDoesNotExistError:v8];

  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_100011E54();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v26 = 2112;
        *v27 = v8;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to watch %@: %@", buf, 0x16u);
      }
    }

LABEL_17:
    sub_100189650(self, &v21);
    v12 = 1;
    goto LABEL_18;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_10018973C();
  }

  if (error)
  {
    v11 = v8;
    v12 = 0;
    *error = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (void)_emergencyExit
{
  [(CPLEngineWrapper *)self emergencyClose];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    exit(0);
  }

  v4 = objc_loadWeakRetained(&self->_delegate);
  [v4 wrapperEmergencyExit:self];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  libraryIdentifier = [(CPLEngineWrapper *)self libraryIdentifier];
  clientLibraryBaseURL = [(CPLEngineWrapper *)self clientLibraryBaseURL];
  path = [clientLibraryBaseURL path];
  stringByAbbreviatingWithTildeInPath = [path stringByAbbreviatingWithTildeInPath];
  inEmergencyClosing = [(CPLEngineWrapper *)self inEmergencyClosing];
  v10 = "";
  if (inEmergencyClosing)
  {
    v10 = " (emergency closing)";
  }

  v11 = [v3 initWithFormat:@"<%@ for %@ at %@%s>", v4, libraryIdentifier, stringByAbbreviatingWithTildeInPath, v10];

  return v11;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  libraryIdentifier = [(CPLEngineWrapper *)self libraryIdentifier];
  inEmergencyClosing = [(CPLEngineWrapper *)self inEmergencyClosing];
  v7 = "";
  if (inEmergencyClosing)
  {
    v7 = " (emergency closing)";
  }

  v8 = [v3 initWithFormat:@"<%@ for %@ %s>", v4, libraryIdentifier, v7];

  return v8;
}

- (void)stop
{
  self->_stopping = 1;
  [(CPLEngineWrapper *)self _stopWatchingSystemState];
  v3 = dispatch_time(0, 5000000000);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012368;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_after(v3, queue, block);
  engine = self->_engine;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012394;
  v6[3] = &unk_100272468;
  v6[4] = self;
  [(CPLEngineLibrary *)engine closeAndDeactivate:0 completionHandler:v6];
}

- (void)emergencyClose
{
  if (![(CPLEngineWrapper *)self inEmergencyClosing])
  {
    sub_1001899A4(&self->super.isa);
  }
}

- (void)deactivateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  engine = self->_engine;
  if (engine)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001261C;
    v7[3] = &unk_1002727E8;
    v7[4] = self;
    v8 = handlerCopy;
    [(CPLEngineLibrary *)engine closeAndDeactivate:1 completionHandler:v7];
  }
}

- (void)wipeWithReason:(id)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  engine = self->_engine;
  reasonCopy = reason;
  store = [(CPLEngineLibrary *)engine store];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001284C;
  v11[3] = &unk_1002723C8;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [store wipeStoreAtNextOpeningWithReason:reasonCopy completionBlock:v11];
}

- (void)resetStoredParametersWithCompletionHandler:(id)handler
{
  self->_deactivated = 1;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wrapperShouldBeDropped:self];

  handlerCopy[2]();
}

- (void)pingSupervisor
{
  supervisor = [(CPLEngineLibrary *)self->_engine supervisor];
  [supervisor ping];
}

- (id)_deactivateMarkerURL
{
  store = [(CPLEngineLibrary *)self->_engine store];
  platformObject = [store platformObject];

  if (platformObject && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    deactivateMarkerURL = [platformObject deactivateMarkerURL];
  }

  else
  {
    deactivateMarkerURL = 0;
  }

  return deactivateMarkerURL;
}

- (void)_startWatchingURL:(id)l forPauseReason:(id)reason
{
  reasonCopy = reason;
  lCopy = l;
  v8 = [CPLFileWatcher alloc];
  libraryIdentifier = [(CPLEngineWrapper *)self libraryIdentifier];
  v10 = [v8 initWithFileURL:lCopy name:reasonCopy ownerIdentifier:libraryIdentifier delegate:self queue:self->_queue];

  [(NSMutableSet *)self->_unpausedWatchers addObject:v10];
  [v10 startWatching];
}

- (void)_stopWatchingSystemState
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CPLLibraryMustBeWipedNotificationName object:self->_engine];

  watchCPLLibrarySource = self->_watchCPLLibrarySource;
  if (watchCPLLibrarySource)
  {
    dispatch_source_cancel(watchCPLLibrarySource);
    v5 = self->_watchCPLLibrarySource;
    self->_watchCPLLibrarySource = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_pausedWatchers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v25 + 1) + 8 * v10) stopWatching];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_unpausedWatchers;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v21 + 1) + 8 * v15) stopWatching];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  pausedWatchers = self->_pausedWatchers;
  self->_pausedWatchers = 0;

  unpausedWatchers = self->_unpausedWatchers;
  self->_unpausedWatchers = 0;

  [(CPLBatterySaverWatcher *)self->_batterySaverWatcher stopWatching];
  batterySaverWatcher = self->_batterySaverWatcher;
  self->_batterySaverWatcher = 0;

  [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher stopWatching];
  cameraWatcher = self->_cameraWatcher;
  self->_cameraWatcher = 0;

  [(CPLDaemonDiskArbitration *)self->_diskArb removeVolumeUnmountObserver:self];
  [(CPLDaemonDiskArbitration *)self->_diskArb stop];
  diskArb = self->_diskArb;
  self->_diskArb = 0;
}

- (void)_libraryMustBeWiped:(id)wiped
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100189368;
  v7[3] = &unk_100271F40;
  v7[4] = self;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v9 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (void)engineLibrary:(id)library getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012FE4;
  v11[3] = &unk_1002723C8;
  v11[4] = self;
  v12 = handlerCopy;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = queue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)engineLibrary:(id)library getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100013174;
  v11[3] = &unk_1002723C8;
  v11[4] = self;
  v12 = handlerCopy;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = queue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (id)ownerNameForEngineLibrary:(id)library
{
  v3 = +[NSProcessInfo processInfo];
  processName = [v3 processName];

  return processName;
}

- (void)engineLibraryNeedsInitialDownloadOfMainScope:(id)scope
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000134A8;
  v7[3] = &unk_100271F40;
  v7[4] = self;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v9 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (void)engineLibraryDidCompleteInitialSyncOfMainScope:(id)scope
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000135EC;
  v7[3] = &unk_100271F40;
  v7[4] = self;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v9 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (void)volumeWillUnmount:(id)unmount
{
  unmountCopy = unmount;
  if (self->_diskArb == unmountCopy)
  {
    sub_100189A68(self);
  }
}

- (void)cameraWatcherDidChangeState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (!self->_deactivated && !self->_stopping && !self->_stopped && self->_cameraWatcher == stateCopy)
  {
    isCameraRunning = [(PFCameraViewfinderSessionWatcher *)stateCopy isCameraRunning];
    p_disabledEngineBecauseOfCamera = &self->_disabledEngineBecauseOfCamera;
    disabledEngineBecauseOfCamera = self->_disabledEngineBecauseOfCamera;
    if (isCameraRunning)
    {
      if (!self->_disabledEngineBecauseOfCamera)
      {
        sub_100189C04(p_disabledEngineBecauseOfCamera, self, &v9);
LABEL_11:
      }
    }

    else if (self->_disabledEngineBecauseOfCamera)
    {
      sub_100189B20(p_disabledEngineBecauseOfCamera, self, &v9);
      goto LABEL_11;
    }
  }
}

- (void)fileWatcherFileDidAppear:(id)appear
{
  appearCopy = appear;
  if (!self->_deactivated && !self->_stopping && !self->_stopped && [(NSMutableSet *)self->_unpausedWatchers containsObject:appearCopy])
  {
    sub_100189CEC(appearCopy, self, &self->_unpausedWatchers);
  }
}

- (void)fileWatcherFileDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  if (!self->_deactivated && !self->_stopping && !self->_stopped && [(NSMutableSet *)self->_pausedWatchers containsObject:disappearCopy])
  {
    sub_100189E08(disappearCopy, self, &self->_pausedWatchers);
  }
}

- (CPLEngineWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_libraryHasBeenDeleted
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100011E54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100013984();
      sub_1000139CC(v4, v5, v6, v7, v8);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wrapperShouldBeDropped:self];

  [(CPLEngineWrapper *)self _emergencyExit];
}

- (void)_startWatchingSystemState
{
  v4 = objc_alloc_init(NSMutableSet);
  pausedWatchers = self->_pausedWatchers;
  self->_pausedWatchers = v4;

  v6 = objc_alloc_init(NSMutableSet);
  unpausedWatchers = self->_unpausedWatchers;
  self->_unpausedWatchers = v6;

  clientLibraryBaseURL = [(CPLEngineWrapper *)self clientLibraryBaseURL];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100011E54();
    if (sub_100003424(v9))
    {
      libraryIdentifier = [(CPLEngineWrapper *)self libraryIdentifier];
      path = [clientLibraryBaseURL path];
      stringByAbbreviatingWithTildeInPath = [path stringByAbbreviatingWithTildeInPath];
      *v26 = 138543618;
      *&v26[4] = libraryIdentifier;
      sub_1000033B4();
      *&v26[14] = v13;
      sub_100013990();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    }
  }

  v19 = [clientLibraryBaseURL URLByAppendingPathComponent:@"pauseSyncMarker" isDirectory:{0, *v26, *&v26[16]}];
  [(CPLEngineWrapper *)self _startWatchingURL:v19 forPauseReason:@"test pause marker"];
  v20 = [clientLibraryBaseURL URLByAppendingPathComponent:@"pauseICloudPhotos" isDirectory:0];
  [(CPLEngineWrapper *)self _startWatchingURL:v20 forPauseReason:@"user pause marker"];
  _deactivateMarkerURL = [(CPLEngineWrapper *)self _deactivateMarkerURL];
  if (_deactivateMarkerURL)
  {
    [(CPLEngineWrapper *)self _startWatchingURL:_deactivateMarkerURL forPauseReason:@"deactivation marker"];
  }

  v22 = [[PFCameraViewfinderSessionWatcher alloc] initWithDispatchQueue:self->_queue delegate:self];
  cameraWatcher = self->_cameraWatcher;
  self->_cameraWatcher = v22;

  [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher startWatching];
  [(CPLEngineWrapper *)self cameraWatcherDidChangeState:self->_cameraWatcher];
  v24 = [[CPLBatterySaverWatcher alloc] initWithDispatchQueue:self->_queue delegate:self];
  batterySaverWatcher = self->_batterySaverWatcher;
  self->_batterySaverWatcher = v24;

  [(CPLBatterySaverWatcher *)self->_batterySaverWatcher startWatching];
}

- (void)batterySaverWatcherDidChangeState:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (!self->_deactivated && !self->_stopping && !self->_stopped && self->_batterySaverWatcher == stateCopy)
  {
    if ([(CPLBatterySaverWatcher *)stateCopy inBatterySaverMode])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = sub_100011E54();
        if (sub_100003424(v7))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Low Power Mode enabled - stopping CPL Override", buf, 2u);
        }
      }

      engine = [(CPLEngineWrapper *)self engine];
      systemMonitor = [engine systemMonitor];
      [systemMonitor stopOverridingSystemBudgetsForClient:18487];

LABEL_14:
      goto LABEL_15;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      engine = sub_100011E54();
      if (os_log_type_enabled(engine, OS_LOG_TYPE_DEFAULT))
      {
        sub_100013984();
        _os_log_impl(v10, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

@end