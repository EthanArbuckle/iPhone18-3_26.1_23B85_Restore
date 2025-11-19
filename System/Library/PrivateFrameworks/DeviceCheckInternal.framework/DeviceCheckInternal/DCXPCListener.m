@interface DCXPCListener
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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

    v4 = [(DCXPCListener *)v2 listener];
    [v4 setDelegate:v2];
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
  v4 = [(DCXPCListener *)self listener];
  [v4 resume];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
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
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New incoming connection to devicecheckd. { newConnection=%@ }", buf, 0x1Cu);
  }

  v8 = [[DCClientHandler alloc] initWithConnection:v6];
  v9 = +[DCDeviceMetadataInterface XPCInterface];
  [v6 setExportedInterface:v9];

  [v6 setExportedObject:v8];
  objc_initWeak(buf, v6);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000013F0;
  v11[3] = &unk_10000C408;
  objc_copyWeak(&v12, buf);
  [v6 setInvalidationHandler:v11];
  [v6 resume];
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

  v4 = [(DCXPCListener *)self sigtermQueue];
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);
  [(DCXPCListener *)self setSigtermSource:v5];

  v6 = [(DCXPCListener *)self sigtermSource];
  dispatch_source_set_event_handler(v6, &stru_10000C428);

  v7 = [(DCXPCListener *)self sigtermSource];
  dispatch_activate(v7);
}

@end