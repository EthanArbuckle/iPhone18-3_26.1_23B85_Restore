@interface DDRManager
- (DDRLayoutManager)layoutManager;
- (DDRManagerDelegate)delegate;
- (DDRUIPresenter)uiPresenter;
- (NSXPCConnection)dataResetWorkerConnection;
- (OS_dispatch_queue)queue;
- (void)_obliterateDeviceWithMode:(int64_t)mode;
- (void)finishResetOfMode:(int64_t)mode withError:(id)error;
- (void)resetConnection;
- (void)resetDataWithRequest:(id)request completion:(id)completion;
- (void)resetWithMode:(int64_t)mode didUpdateWithProgress:(double)progress;
- (void)resetWithModeDidBegin:(int64_t)begin;
@end

@implementation DDRManager

- (DDRUIPresenter)uiPresenter
{
  uiPresenter = self->_uiPresenter;
  if (!uiPresenter)
  {
    v4 = objc_alloc_init(DDRUIPresenter);
    v5 = self->_uiPresenter;
    self->_uiPresenter = v4;

    uiPresenter = self->_uiPresenter;
  }

  return uiPresenter;
}

- (DDRLayoutManager)layoutManager
{
  layoutManager = self->_layoutManager;
  if (!layoutManager)
  {
    v4 = objc_alloc_init(DDRLayoutManager);
    v5 = self->_layoutManager;
    self->_layoutManager = v4;

    layoutManager = self->_layoutManager;
  }

  return layoutManager;
}

- (OS_dispatch_queue)queue
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = BSDispatchQueueCreateWithQualityOfService();
    v5 = self->_queue;
    self->_queue = v4;

    queue = self->_queue;
  }

  return queue;
}

- (NSXPCConnection)dataResetWorkerConnection
{
  dataResetWorkerConnection = self->_dataResetWorkerConnection;
  if (!dataResetWorkerConnection)
  {
    v4 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "create data reset worker xpc", buf, 2u);
    }

    v5 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.devicedatareset.devicedataresetxpcserviceworker"];
    v6 = self->_dataResetWorkerConnection;
    self->_dataResetWorkerConnection = v5;

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDRWorkerServerProtocol];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    [v7 setClasses:v10 forSelector:"resetDataWithRequest:completion:" argumentIndex:0 ofReply:0];

    [(NSXPCConnection *)self->_dataResetWorkerConnection setRemoteObjectInterface:v7];
    [(NSXPCConnection *)self->_dataResetWorkerConnection setExportedObject:self];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDRWorkerClientProtocol];
    [(NSXPCConnection *)self->_dataResetWorkerConnection setExportedInterface:v11];

    objc_initWeak(buf, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003228;
    v16[3] = &unk_10000C4E8;
    objc_copyWeak(&v17, buf);
    [(NSXPCConnection *)self->_dataResetWorkerConnection setInterruptionHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000032AC;
    v14[3] = &unk_10000C4E8;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)self->_dataResetWorkerConnection setInvalidationHandler:v14];
    [(NSXPCConnection *)self->_dataResetWorkerConnection resume];
    remoteObjectProxy = [(NSXPCConnection *)self->_dataResetWorkerConnection remoteObjectProxy];
    [remoteObjectProxy setObserving:1];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);

    dataResetWorkerConnection = self->_dataResetWorkerConnection;
  }

  return dataResetWorkerConnection;
}

- (void)resetConnection
{
  v3 = sub_100002D58(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notifying clients of failed reset in devicedataresetd", v5, 2u);
  }

  dataResetWorkerConnection = self->_dataResetWorkerConnection;
  self->_dataResetWorkerConnection = 0;
}

- (void)resetDataWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  -[DDRManager setMode:](self, "setMode:", [requestCopy mode]);
  queue = [(DDRManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003498;
  block[3] = &unk_10000C560;
  block[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_sync(queue, block);
}

- (void)finishResetOfMode:(int64_t)mode withError:(id)error
{
  errorCopy = error;
  v7 = sub_100002D58(2uLL);
  layoutManager = v7;
  if (errorCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000496C(errorCopy, layoutManager);
    }

    layoutManager = [(DDRManager *)self layoutManager];
    [layoutManager stopLayout];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, layoutManager, OS_LOG_TYPE_DEFAULT, "Finishing data reset.", buf, 2u);
  }

  if (mode > 3)
  {
    [(DDRManager *)self _obliterateDeviceWithMode:mode];
    delegate = [(DDRManager *)self delegate];
    [delegate resetWithModeDidFinish:mode error:errorCopy];

    delegate2 = sub_100002D58(2uLL);
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, delegate2, OS_LOG_TYPE_DEFAULT, "resetWithMode did finish", v11, 2u);
    }
  }

  else
  {
    delegate2 = [(DDRManager *)self delegate];
    [delegate2 resetWithModeDidFinish:mode error:errorCopy];
  }
}

- (void)_obliterateDeviceWithMode:(int64_t)mode
{
  v5 = kObliterateDataPartition;
  if (mode != 4)
  {
    if (mode == 6)
    {
      v6 = &kObliterationTypeRRTS;
      goto LABEL_6;
    }

    if (mode == 5)
    {
      v6 = &kObliterationTypeWipeAndBrick;
LABEL_6:
      v5 = *v6;
      goto LABEL_10;
    }

    v7 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000049E4(mode, v7);
    }
  }

LABEL_10:
  v8 = objc_alloc_init(NSMutableDictionary);
  reason = [(DDRManager *)self reason];

  if (reason)
  {
    reason2 = [(DDRManager *)self reason];
    [v8 setObject:reason2 forKeyedSubscript:kObliterationMessageKey];
  }

  if (mode == 6)
  {
    bootstrapToken = [(DDRManager *)self bootstrapToken];
    [v8 setObject:bootstrapToken forKeyedSubscript:kRRTSBootStrapTokenKey];

    revertToSnapshotName = [(DDRManager *)self revertToSnapshotName];
    [v8 setObject:revertToSnapshotName forKeyedSubscript:kRRTSRevertToSnapshotNameKey];
  }

  v13 = [NSNumber numberWithBool:[(DDRManager *)self disallowProximitySetup]];
  [v8 setObject:v13 forKeyedSubscript:kObliterationManagedDeviceWipeKey];

  exclusionPaths = [(DDRManager *)self exclusionPaths];
  [v8 setObject:exclusionPaths forKeyedSubscript:kObliterationExclusionPathsKey];

  v15 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "calling doObliterateWithType", v16, 2u);
  }

  [(DDRManager *)self doObliterateWithType:v5 showingProgress:1 options:v8];
}

- (void)resetWithMode:(int64_t)mode didUpdateWithProgress:(double)progress
{
  v6 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    progressCopy = progress;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Update progress:%lf", &v8, 0xCu);
  }

  uiPresenter = [(DDRManager *)self uiPresenter];
  [uiPresenter setProgress:progress];
}

- (void)resetWithModeDidBegin:(int64_t)begin
{
  v5 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Data reset manager calling delegate resetWithModeDidBegin", v7, 2u);
  }

  delegate = [(DDRManager *)self delegate];
  [delegate resetWithModeDidBegin:begin];
}

- (DDRManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end