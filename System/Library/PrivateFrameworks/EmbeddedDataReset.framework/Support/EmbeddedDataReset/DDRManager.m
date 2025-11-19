@interface DDRManager
- (DDRLayoutManager)layoutManager;
- (DDRManagerDelegate)delegate;
- (DDRUIPresenter)uiPresenter;
- (NSXPCConnection)dataResetWorkerConnection;
- (OS_dispatch_queue)queue;
- (void)_obliterateDeviceWithMode:(int64_t)a3;
- (void)finishResetOfMode:(int64_t)a3 withError:(id)a4;
- (void)resetConnection;
- (void)resetDataWithRequest:(id)a3 completion:(id)a4;
- (void)resetWithMode:(int64_t)a3 didUpdateWithProgress:(double)a4;
- (void)resetWithModeDidBegin:(int64_t)a3;
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
    v12 = [(NSXPCConnection *)self->_dataResetWorkerConnection remoteObjectProxy];
    [v12 setObserving:1];

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

- (void)resetDataWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  -[DDRManager setMode:](self, "setMode:", [v6 mode]);
  v8 = [(DDRManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003498;
  block[3] = &unk_10000C560;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)finishResetOfMode:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v7 = sub_100002D58(2uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000496C(v6, v8);
    }

    v8 = [(DDRManager *)self layoutManager];
    [v8 stopLayout];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finishing data reset.", buf, 2u);
  }

  if (a3 > 3)
  {
    [(DDRManager *)self _obliterateDeviceWithMode:a3];
    v10 = [(DDRManager *)self delegate];
    [v10 resetWithModeDidFinish:a3 error:v6];

    v9 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "resetWithMode did finish", v11, 2u);
    }
  }

  else
  {
    v9 = [(DDRManager *)self delegate];
    [v9 resetWithModeDidFinish:a3 error:v6];
  }
}

- (void)_obliterateDeviceWithMode:(int64_t)a3
{
  v5 = kObliterateDataPartition;
  if (a3 != 4)
  {
    if (a3 == 6)
    {
      v6 = &kObliterationTypeRRTS;
      goto LABEL_6;
    }

    if (a3 == 5)
    {
      v6 = &kObliterationTypeWipeAndBrick;
LABEL_6:
      v5 = *v6;
      goto LABEL_10;
    }

    v7 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000049E4(a3, v7);
    }
  }

LABEL_10:
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [(DDRManager *)self reason];

  if (v9)
  {
    v10 = [(DDRManager *)self reason];
    [v8 setObject:v10 forKeyedSubscript:kObliterationMessageKey];
  }

  if (a3 == 6)
  {
    v11 = [(DDRManager *)self bootstrapToken];
    [v8 setObject:v11 forKeyedSubscript:kRRTSBootStrapTokenKey];

    v12 = [(DDRManager *)self revertToSnapshotName];
    [v8 setObject:v12 forKeyedSubscript:kRRTSRevertToSnapshotNameKey];
  }

  v13 = [NSNumber numberWithBool:[(DDRManager *)self disallowProximitySetup]];
  [v8 setObject:v13 forKeyedSubscript:kObliterationManagedDeviceWipeKey];

  v14 = [(DDRManager *)self exclusionPaths];
  [v8 setObject:v14 forKeyedSubscript:kObliterationExclusionPathsKey];

  v15 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "calling doObliterateWithType", v16, 2u);
  }

  [(DDRManager *)self doObliterateWithType:v5 showingProgress:1 options:v8];
}

- (void)resetWithMode:(int64_t)a3 didUpdateWithProgress:(double)a4
{
  v6 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Update progress:%lf", &v8, 0xCu);
  }

  v7 = [(DDRManager *)self uiPresenter];
  [v7 setProgress:a4];
}

- (void)resetWithModeDidBegin:(int64_t)a3
{
  v5 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Data reset manager calling delegate resetWithModeDidBegin", v7, 2u);
  }

  v6 = [(DDRManager *)self delegate];
  [v6 resetWithModeDidBegin:a3];
}

- (DDRManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end