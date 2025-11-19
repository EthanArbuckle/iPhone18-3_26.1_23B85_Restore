@interface NAVDaemonServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NAVDaemonServer)init;
@end

@implementation NAVDaemonServer

- (NAVDaemonServer)init
{
  v19.receiver = self;
  v19.super_class = NAVDaemonServer;
  v2 = [(NAVDaemonServer *)&v19 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    peers = v2->_peers;
    v2->_peers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("NAVDeamon peers dictionary queue", v5);
    peersQueue = v2->_peersQueue;
    v2->_peersQueue = v6;

    v8 = [NSXPCListener alloc];
    v9 = [v8 initWithMachServiceName:GEONavdXPCMachPort];
    listener = v2->_listener;
    v2->_listener = v9;

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Listener created.", v18, 2u);
    }

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [GEONavdManager setProxyClass:objc_opt_class()];
    v12 = +[GEONavdManager navdManager];
    navdManager = v2->_navdManager;
    v2->_navdManager = v12;

    v14 = objc_alloc_init(NavdAnalytics);
    v15 = +[GEONavdAnalyticsManager sharedManager];
    [v15 setAnalyticsReporter:v14];

    [(NSXPCListener *)v2->_listener resume];
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Listener resumed.", v18, 2u);
    }
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Connection created.", buf, 2u);
  }

  v9 = [[NAVDaemonPeer alloc] initWithNavdManager:self->_navdManager forXPCConnection:v7];
  peersQueue = self->_peersQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031494;
  block[3] = &unk_1000650C0;
  block[4] = self;
  v11 = v9;
  v20 = v11;
  dispatch_sync(peersQueue, block);
  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEONavdXPCInterface];
  [v7 setExportedInterface:v12];

  [v7 setExportedObject:v11];
  objc_initWeak(buf, v11);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000314A0;
  v16[3] = &unk_100064F58;
  objc_copyWeak(&v17, buf);
  v16[4] = self;
  [v7 setInvalidationHandler:v16];
  [v7 resume];
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Connection resumed.", v15, 2u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  return 1;
}

@end