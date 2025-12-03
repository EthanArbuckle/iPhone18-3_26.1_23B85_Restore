@interface GSDaemon
+ (id)daemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (GSDaemon)init;
- (id)_registerSignal:(int)signal queue:(id)queue;
- (int)resume;
- (void)_resume;
- (void)invalidate;
- (void)waitUntilDeviceIsUnlocked;
@end

@implementation GSDaemon

+ (id)daemon
{
  if (qword_10004C9F0 != -1)
  {
    sub_100027650();
  }

  v3 = qword_10004C9E8;

  return v3;
}

- (GSDaemon)init
{
  v15.receiver = self;
  v15.super_class = GSDaemon;
  v2 = [(GSDaemon *)&v15 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = [(GSDaemon *)v2 _registerSignal:1 queue:v3];
    hup_src = v2->_hup_src;
    v2->_hup_src = v4;

    v6 = [(GSDaemon *)v2 _registerSignal:2 queue:v3];
    int_src = v2->_int_src;
    v2->_int_src = v6;

    v8 = [(GSDaemon *)v2 _registerSignal:15 queue:v3];
    term_src = v2->_term_src;
    v2->_term_src = v8;

    v10 = [(GSDaemon *)v2 _registerSignal:3 queue:v3];
    quit_src = v2->_quit_src;
    v2->_quit_src = v10;

    _set_user_dir_suffix();
    v12 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.revisiond"];
    listener = v2->_listener;
    v2->_listener = v12;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
  }

  return v2;
}

- (id)_registerSignal:(int)signal queue:(id)queue
{
  queueCopy = queue;
  signal(signal, 1);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, signal, 0, queueCopy);

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000F810;
  handler[3] = &unk_100040B00;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(v7);

  return v7;
}

- (void)waitUntilDeviceIsUnlocked
{
  if (MKBDeviceFormattedForContentProtection())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v2 = dispatch_semaphore_create(0);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.genstore.wait-unlock", v3);

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000FA24;
    v14[3] = &unk_100040B00;
    v5 = v2;
    v15 = v5;
    v6 = objc_retainBlock(v14);
    v7 = kMobileKeyBagLockStatusNotifyToken;
    v8 = v17;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000FABC;
    handler[3] = &unk_100040CD0;
    v13 = &v16;
    v9 = v6;
    v12 = v9;
    if (notify_register_dispatch(v7, v8 + 6, v4, handler))
    {
      abort();
    }

    dispatch_async(v4, v9);
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000FAE4;
    v10[3] = &unk_100040CF8;
    v10[4] = &v16;
    dispatch_sync(v4, v10);

    _Block_object_dispose(&v16, 8);
  }
}

- (void)_resume
{
  [(GSDaemon *)self waitUntilDeviceIsUnlocked];
  v3 = sub_100003164();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = getprogname();
    v7 = 2080;
    v8 = "Oct 10 2025";
    v9 = 2080;
    v10 = "21:38:39";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] %s starting, built @ %s %s", &v5, 0x20u);
  }

  if (setiopolicy_np(7, 0, 1) < 0)
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, 0x90u))
    {
      sub_100027664(v4);
    }

    exit(1);
  }

  xpc_set_event_stream_handler("com.apple.fsevents.matching", 0, &stru_100041120);
  +[GSStorageManager startLibraries];
  [(NSXPCListener *)self->_listener resume];
  CacheDeleteRegisterInfoCallbacks();
}

- (int)resume
{
  v3 = objc_autoreleasePoolPush();
  [(GSDaemon *)self _resume];
  objc_autoreleasePoolPop(v3);
  v4 = +[NSRunLoop mainRunLoop];
  [v4 run];

  return 0;
}

- (void)invalidate
{
  v3 = sub_100003164();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] revisiond shutting down...", buf, 2u);
  }

  [(NSXPCListener *)self->_listener invalidate];
  +[GSStorageManager shutdownLibraries];
  v4 = sub_100003164();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] revisiond exiting now", v5, 2u);
  }

  exit(0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[GSClient alloc] initWithConnection:connectionCopy];
  processIdentifier = [connectionCopy processIdentifier];
  v7 = sub_100006FB4();
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:v5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000107DC;
  v11[3] = &unk_1000411C0;
  v12 = processIdentifier;
  v11[4] = connectionCopy;
  [connectionCopy setInterruptionHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001088C;
  v9[3] = &unk_1000411C0;
  v10 = processIdentifier;
  v9[4] = connectionCopy;
  [connectionCopy setInvalidationHandler:v9];
  [connectionCopy resume];

  return 1;
}

@end