@interface DCXPCListener
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DCXPCListener)init;
- (OS_dispatch_queue)sigtermQueue;
- (void)registerForSigtermObserver;
- (void)start;
@end

@implementation DCXPCListener

- (OS_dispatch_queue)sigtermQueue
{
  sigtermQueue = self->_sigtermQueue;
  if (!sigtermQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.devicecheckd.sigterm.queue", v4);
    v6 = self->_sigtermQueue;
    self->_sigtermQueue = v5;

    sigtermQueue = self->_sigtermQueue;
  }

  return sigtermQueue;
}

- (DCXPCListener)init
{
  v6.receiver = self;
  v6.super_class = DCXPCListener;
  v2 = [(DCXPCListener *)&v6 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.devicecheckd"];
    [(DCXPCListener *)v2 setListener:v3];

    listener = [(DCXPCListener *)v2 listener];
    [listener setDelegate:v2];
  }

  return v2;
}

- (void)start
{
  if (qword_100010CE8 != -1)
  {
    sub_1000062D4();
  }

  v3 = qword_100010CE0;
  if (os_log_type_enabled(qword_100010CE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "DCXPCListener.m";
    v7 = 1024;
    v8 = 57;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d devicecheckd starting.", &v5, 0x12u);
  }

  [(DCXPCListener *)self registerForSigtermObserver];
  listener = [(DCXPCListener *)self listener];
  [listener resume];
}

+ (id)sharedInstance
{
  if (qword_100010CD8 != -1)
  {
    sub_1000062E8();
  }

  v3 = qword_100010CD0;

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (qword_100010CE8 != -1)
  {
    sub_1000062D4();
  }

  v7 = qword_100010CE0;
  if (os_log_type_enabled(qword_100010CE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "DCXPCListener.m";
    v15 = 1024;
    v16 = 77;
    v17 = 2112;
    v18 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New incoming connection to devicecheckd. { newConnection=%@ }", buf, 0x1Cu);
  }

  v8 = [[DCClientHandler alloc] initWithConnection:connectionCopy];
  v9 = +[DCDeviceMetadataInterface XPCInterface];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy setExportedObject:v8];
  objc_initWeak(buf, connectionCopy);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000013F0;
  v11[3] = &unk_10000C408;
  objc_copyWeak(&v12, buf);
  [connectionCopy setInvalidationHandler:v11];
  [connectionCopy resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  return 1;
}

- (void)registerForSigtermObserver
{
  if (qword_100010CE8 != -1)
  {
    sub_1000062D4();
  }

  v3 = qword_100010CE0;
  if (os_log_type_enabled(qword_100010CE0, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "DCXPCListener.m";
    v10 = 1024;
    v11 = 97;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting up SIGTERM observer.", &v8, 0x12u);
  }

  sigtermQueue = [(DCXPCListener *)self sigtermQueue];
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, sigtermQueue);
  [(DCXPCListener *)self setSigtermSource:v5];

  sigtermSource = [(DCXPCListener *)self sigtermSource];
  dispatch_source_set_event_handler(sigtermSource, &stru_10000C428);

  sigtermSource2 = [(DCXPCListener *)self sigtermSource];
  dispatch_activate(sigtermSource2);
}

@end