@interface _MapsIPCInterface
- (BOOL)_isMapsActive;
- (BOOL)_isMapsRunning;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSXPCConnection)connection;
- (_MapsIPCInterface)initWithListenerEndpointIdentifier:(id)a3;
- (void)dealloc;
- (void)initializeBrokerConnectionIfNeeded;
- (void)performWithMapsRunning:(id)a3;
@end

@implementation _MapsIPCInterface

- (_MapsIPCInterface)initWithListenerEndpointIdentifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _MapsIPCInterface;
  v5 = [(_MapsIPCInterface *)&v19 init];
  if (v5)
  {
    v6 = [v4 copy];
    endpointIdentifier = v5->_endpointIdentifier;
    v5->_endpointIdentifier = v6;

    v8 = [NSString stringWithFormat:@"com.apple.Maps.IPCInterface.%@", objc_opt_class()];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    messagingQueue = v5->_messagingQueue;
    v5->_messagingQueue = v11;

    v13 = [v8 stringByAppendingString:@".connection"];
    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
    connectionQueue = v5->_connectionQueue;
    v5->_connectionQueue = v16;

    [(_MapsIPCInterface *)v5 initializeBrokerConnectionIfNeeded];
  }

  return v5;
}

- (void)initializeBrokerConnectionIfNeeded
{
  v3 = sub_10001E7A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsIPCInterface initializeBrokerConnectionIfNeeded", buf, 2u);
  }

  if (!self->_brokerConnection)
  {
    v4 = +[NSXPCConnection _maps_mapsConnectionBrokerEndpointRecorderConnection];
    brokerConnection = self->_brokerConnection;
    self->_brokerConnection = v4;

    [(NSXPCConnection *)self->_brokerConnection setExportedObject:self];
    v6 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointSourceInterface];
    [(NSXPCConnection *)self->_brokerConnection setExportedInterface:v6];

    v7 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointRecorderInterface];
    [(NSXPCConnection *)self->_brokerConnection setRemoteObjectInterface:v7];

    objc_initWeak(buf, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100014B8C;
    v16[3] = &unk_100085638;
    objc_copyWeak(&v17, buf);
    [(NSXPCConnection *)self->_brokerConnection setInvalidationHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100014C18;
    v14[3] = &unk_100085638;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)self->_brokerConnection setInterruptionHandler:v14];
    [(NSXPCConnection *)self->_brokerConnection resume];
    [(NSXPCListener *)self->_xpcListener invalidate];
    v8 = +[NSXPCListener anonymousListener];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v8;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener resume];
    v10 = sub_10001E7A0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsIPCInterface Initializing broker connection.", v13, 2u);
    }

    v11 = [(NSXPCConnection *)self->_brokerConnection remoteObjectProxy];
    v12 = [(NSXPCListener *)self->_xpcListener endpoint];
    [v11 listenerEndpointDidChange:v12 forIdentifier:self->_endpointIdentifier];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  v3 = sub_10001E7A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsIPCInterface Tear down broker connection.", buf, 2u);
  }

  v4 = [(NSXPCConnection *)self->_brokerConnection remoteObjectProxy];
  [v4 listenerEndpointDidChange:0 forIdentifier:self->_endpointIdentifier];

  [(NSXPCConnection *)self->_brokerConnection invalidate];
  [(NSXPCConnection *)self->_connection invalidate];
  v5.receiver = self;
  v5.super_class = _MapsIPCInterface;
  [(_MapsIPCInterface *)&v5 dealloc];
}

- (BOOL)_isMapsRunning
{
  v2 = objc_alloc_init(BKSApplicationStateMonitor);
  v3 = [v2 applicationStateForApplication:@"com.apple.Maps"];

  return (v3 & 1) == 0 && v3 != 0;
}

- (BOOL)_isMapsActive
{
  v2 = objc_alloc_init(BKSApplicationStateMonitor);
  v3 = [v2 applicationStateForApplication:@"com.apple.Maps"];

  return (v3 & 3) == 0 && v3 != 0;
}

- (void)performWithMapsRunning:(id)a3
{
  v3 = a3;
  v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  if (qword_10009E760 != -1)
  {
    sub_1000559DC();
  }

  v5 = [FBSOpenApplicationOptions optionsWithDictionary:qword_10009E758];
  v6 = sub_10001E7A0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MapsIPCInterface performWithMapsRunning calling openApplication", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015038;
  v8[3] = &unk_100085680;
  v9 = v3;
  v7 = v3;
  [v4 openApplication:@"com.apple.Maps" withOptions:v5 completion:v8];
}

- (NSXPCConnection)connection
{
  dispatch_assert_queue_V2(self->_messagingQueue);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10001533C;
  v23 = sub_10001534C;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001533C;
  v17 = sub_10001534C;
  v18 = 0;
  connectionQueue = self->_connectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015354;
  block[3] = &unk_1000856A8;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v13;
  dispatch_sync(connectionQueue, block);
  v4 = v14[5];
  if (v4)
  {
    v5 = dispatch_walltime(0, 20000000000);
    dispatch_group_wait(v4, v5);
    v6 = self->_connectionQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000155C0;
    v11[3] = &unk_1000856D0;
    v11[4] = self;
    v11[5] = &v19;
    dispatch_sync(v6, v11);
  }

  else
  {
    v7 = sub_10001E7A0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MapsIPCInterface Didn't get a dispatchGroup to wait on", v10, 2u);
    }
  }

  v8 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10001E7A0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[_MapsIPCInterface listener:shouldAcceptNewConnection:]";
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MapsIPCInterface %s %@ %@", buf, 0x20u);
  }

  xpcListener = self->_xpcListener;
  if (xpcListener == v6)
  {
    [(_MapsIPCInterface *)self _configureIncomingConnection:v7];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v7);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100015928;
    v18[3] = &unk_100085720;
    objc_copyWeak(&v19, buf);
    objc_copyWeak(&v20, &location);
    [v7 setInvalidationHandler:v18];
    [v7 setInterruptionHandler:&stru_100085740];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015BEC;
    block[3] = &unk_1000856F8;
    v11 = v7;
    v16 = v11;
    v17 = self;
    dispatch_sync(connectionQueue, block);
    [v11 resume];
    v12 = self->_connectionQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100015CA0;
    v14[3] = &unk_100084F10;
    v14[4] = self;
    dispatch_async(v12, v14);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return xpcListener == v6;
}

@end