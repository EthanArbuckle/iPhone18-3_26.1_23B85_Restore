@interface DDRServer
- (BOOL)hasRequiredEntitlements:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSMutableArray)clients;
- (void)didAddObserverClientWithXPCConnection:(id)a3;
- (void)resetDataWithRequest:(id)a3 completion:(id)a4;
- (void)resetWithModeDidBegin:(int64_t)a3;
- (void)resetWithModeDidFinish:(int64_t)a3 error:(id)a4;
- (void)resetWithModeWillBegin:(int64_t)a3;
- (void)start;
@end

@implementation DDRServer

- (void)start
{
  v3 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Daemon server start", v15, 2u);
  }

  v4 = BSDispatchQueueCreateWithQualityOfService();
  [(DDRServer *)self setServerQueue:v4];

  v5 = [DDRObserverServer alloc];
  v6 = [(DDRServer *)self serverQueue];
  v7 = [(DDRObserverServer *)v5 initWithQueue:v6];
  [(DDRServer *)self setObserverServer:v7];

  v8 = [(DDRServer *)self observerServer];
  [v8 setDelegate:self];

  v9 = [(DDRServer *)self observerServer];
  [v9 start];

  v10 = objc_alloc_init(DDRManager);
  [(DDRServer *)self setManager:v10];

  v11 = [(DDRServer *)self manager];
  [v11 setDelegate:self];

  v12 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.devicedatareset.DeviceDataResetService"];
  [(DDRServer *)self setListener:v12];

  v13 = [(DDRServer *)self listener];
  [v13 setDelegate:self];

  v14 = [(DDRServer *)self listener];
  [v14 resume];

  self->_currentResetMode = 0;
  dispatch_main();
}

- (NSMutableArray)clients
{
  clients = self->_clients;
  if (!clients)
  {
    v4 = objc_opt_new();
    v5 = self->_clients;
    self->_clients = v4;

    clients = self->_clients;
  }

  return clients;
}

- (BOOL)hasRequiredEntitlements:(id)a3
{
  v3 = a3;
  if ([v3 hasEntitlement:@"com.apple.wipedevice"])
  {
    goto LABEL_8;
  }

  v4 = sub_100002D58(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "connection does not have new entitlement", buf, 2u);
  }

  if ([v3 hasEntitlement:@"com.apple.frontboard.wipedevice"])
  {
    goto LABEL_8;
  }

  v5 = sub_100002D58(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connection does not have frontboard entitlement", v10, 2u);
  }

  if ([v3 hasEntitlement:@"com.apple.springboard.wipedevice"])
  {
LABEL_8:
    v6 = 1;
  }

  else
  {
    v8 = sub_100002D58(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connection does not have springboard entitlement", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "got incomming connection in devicedataresetd", buf, 2u);
  }

  v7 = [BSAuditToken tokenFromNSXPCConnection:v5];
  v8 = [(DDRServer *)self hasRequiredEntitlements:v7];
  if (v8)
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDRServerProtocol];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    [v9 setClasses:v12 forSelector:"resetDataWithRequest:completion:" argumentIndex:0 ofReply:0];

    [v5 setExportedInterface:v9];
    [v5 setExportedObject:self];
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDRClientResetProtocol];
    [v5 setRemoteObjectInterface:v13];

    v14 = [(DDRServer *)self serverQueue];
    [v5 _setQueue:v14];

    v15 = [(DDRServer *)self clients];
    [v15 addObject:v5];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100001ADC;
    v22[3] = &unk_10000C358;
    v22[4] = self;
    v16 = v5;
    v23 = v16;
    [v16 setInvalidationHandler:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001B68;
    v20[3] = &unk_10000C358;
    v20[4] = self;
    v17 = v16;
    v21 = v17;
    [v17 setInterruptionHandler:v20];
    [v17 resume];
    v18 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Adding client complete in devicedataresetd", buf, 2u);
    }
  }

  else
  {
    [v5 invalidate];
  }

  return v8;
}

- (void)didAddObserverClientWithXPCConnection:(id)a3
{
  v4 = a3;
  v5 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentResetState = self->_currentResetState;
    v13 = 134217984;
    v14 = currentResetState;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting current connection to observe data reset flow, currentState = %ld", &v13, 0xCu);
  }

  v7 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client with connection:%@ register as observer", &v13, 0xCu);
  }

  v8 = self->_currentResetState;
  if (v8 == 3)
  {
    v11 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connection: %@ missed the both broadcast, send them now.", &v13, 0xCu);
    }

    v12 = [v4 remoteObjectProxy];
    [v12 willBeginDataResetWithMode:self->_currentResetMode];

    v10 = [v4 remoteObjectProxy];
    [v10 didBeginDataResetWithMode:self->_currentResetMode];
    goto LABEL_13;
  }

  if (v8 == 2)
  {
    v9 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connection: %@ missed the willBeginDataResetWithMode broadcast, send it now.", &v13, 0xCu);
    }

    v10 = [v4 remoteObjectProxy];
    [v10 willBeginDataResetWithMode:self->_currentResetMode];
LABEL_13:
  }
}

- (void)resetDataWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling reset data in devicedataresetd server", buf, 2u);
  }

  if (!self->_currentResetState)
  {
    self->_currentResetState = 1;
    v10 = objc_retainBlock(v7);
    completion = self->_completion;
    self->_completion = v10;

    if (self->_completion)
    {
      v12 = +[NSXPCConnection currentConnection];
      completionClient = self->_completionClient;
      self->_completionClient = v12;
    }

    v14 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Now proceed with reset in daemon", v15, 2u);
    }

    self->_currentResetMode = [v6 mode];
    v9 = [(DDRServer *)self manager];
    [v9 resetDataWithRequest:v6 completion:&stru_10000C398];
    goto LABEL_11;
  }

  if (v7)
  {
    v9 = [NSError errorWithDomain:@"com.apple.devicedataresetd" code:0 userInfo:0];
    (*(v7 + 2))(v7, v9);
LABEL_11:
  }
}

- (void)resetWithModeWillBegin:(int64_t)a3
{
  v5 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resetWithModeWillBegin in DDRServer", buf, 2u);
  }

  v6 = [(DDRServer *)self observerServer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002148;
  v7[3] = &unk_10000C3B8;
  v7[4] = a3;
  [v6 enumerateObserverConnections:v7];

  self->_currentResetState = 2;
}

- (void)resetWithModeDidBegin:(int64_t)a3
{
  v5 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resetWithModeDidBegin in DDRServer", buf, 2u);
  }

  v6 = [(DDRServer *)self observerServer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000230C;
  v7[3] = &unk_10000C3B8;
  v7[4] = a3;
  [v6 enumerateObserverConnections:v7];

  self->_currentResetState = 3;
}

- (void)resetWithModeDidFinish:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resetWithModeDidFinish in DDRServer", &buf, 2u);
  }

  v8 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "device data reset daemon got response from worker: %@", &buf, 0xCu);
  }

  v9 = self->_completionClient;
  completionClient = self->_completionClient;
  self->_completionClient = 0;

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v6);
    v12 = self->_completion;
    self->_completion = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x2020000000;
  v39 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100002818;
  v36[3] = &unk_10000C3E0;
  v36[4] = self;
  v36[5] = &buf;
  v13 = objc_retainBlock(v36);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v14 = [(DDRServer *)self observerServer];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100002904;
  v26[3] = &unk_10000C430;
  v30 = &v32;
  v31 = a3;
  v15 = v6;
  v27 = v15;
  v16 = v9;
  v28 = v16;
  v17 = v13;
  v29 = v17;
  [v14 enumerateObserverConnections:v26];

  if (*(v33 + 6) || v16)
  {
    v19 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB4;
    block[3] = &unk_10000C458;
    v20 = v17;
    v24 = v20;
    dispatch_after(v19, &_dispatch_main_q, block);
    v21 = [(NSXPCConnection *)v16 synchronousRemoteObjectProxyWithErrorHandler:&stru_10000C478];
    [v21 sync];

    if (!*(v33 + 6))
    {
      v22 = sub_100002D58(2uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "observer 0, ok to reboot", v25, 2u);
      }

      v20[2](v20);
    }
  }

  else
  {
    v18 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "reboot directly because no observer anymore.", v25, 2u);
    }

    v17[2](v17);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&buf, 8);
}

@end