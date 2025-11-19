@interface GEOAPDaemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (GEOAPDaemon)init;
- (void)_setupSigHandler;
- (void)_shutdown;
- (void)dealloc;
@end

@implementation GEOAPDaemon

- (void)_setupSigHandler
{
  signal(15, 1);
  objc_initWeak(&location, self);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, self->_serialQ);
  sigtermSource = self->_sigtermSource;
  self->_sigtermSource = v3;

  v5 = self->_sigtermSource;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DF40;
  v6[3] = &unk_10003D058;
  objc_copyWeak(&v7, &location);
  dispatch_source_set_event_handler(v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_shutdown
{
  self->_shutdownRequested = 1;
  v2 = sub_100001018();
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020F68;
    block[3] = &unk_10003D5B8;
    block[4] = v3;
    dispatch_sync(v4, block);
  }

  _xpc_transaction_exit_clean();
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = GEOAPDaemon;
  [(GEOAPDaemon *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = sub_100000F70();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "new connection : %@", &buf, 0xCu);
  }

  v7 = [GEOAPDaemonManagerBridge alloc];
  v8 = v5;
  if (v7)
  {
    v16.receiver = v7;
    v16.super_class = GEOAPDaemonManagerBridge;
    v9 = [(GEOAPDaemon *)&v16 init];
    v7 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_listener, a4);
      v10 = sub_100000F70();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "hello connection %p", &buf, 0xCu);
      }

      objc_initWeak(&location, v7);
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v18 = sub_10000E368;
      v19 = &unk_10003D058;
      objc_copyWeak(&v20, &location);
      [(NSXPCConnection *)v7->_conn setInterruptionHandler:&buf];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000E3C4;
      v13[3] = &unk_10003D058;
      objc_copyWeak(&v14, &location);
      [(NSXPCConnection *)v7->_conn setInvalidationHandler:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  [v8 setExportedObject:v7];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEOAPXPCDaemonExporting];
  [v8 setExportedInterface:v11];

  [v8 resume];
  return 1;
}

- (GEOAPDaemon)init
{
  v12.receiver = self;
  v12.super_class = GEOAPDaemon;
  v2 = [(GEOAPDaemon *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_shutdownRequested = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("GEOAPDaemon", v4);
    serialQ = v3->_serialQ;
    v3->_serialQ = v5;

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.geoanalyticsd"];
    listener = v3->_listener;
    v3->_listener = v7;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    [(NSXPCListener *)v3->_listener _setQueue:v3->_serialQ];
  }

  v9 = sub_100000F70();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "hello", v11, 2u);
  }

  return v3;
}

@end