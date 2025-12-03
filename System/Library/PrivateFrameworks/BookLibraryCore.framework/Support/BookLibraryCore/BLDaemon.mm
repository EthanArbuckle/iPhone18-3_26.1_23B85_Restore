@interface BLDaemon
+ (id)daemon;
- (BLDaemon)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_setupForNotifications;
- (void)dealloc;
- (void)lrq_setupBeforeListenersWithCompletion:(id)completion;
- (void)lrq_setupCacheDelete;
- (void)lrq_setupListeners;
- (void)sq_finishedStartingUp;
- (void)start;
@end

@implementation BLDaemon

+ (id)daemon
{
  if (qword_10013ECB0 != -1)
  {
    sub_1000CB464();
  }

  v3 = qword_10013ECA8;

  return v3;
}

- (BLDaemon)init
{
  v20.receiver = self;
  v20.super_class = BLDaemon;
  v2 = [(BLDaemon *)&v20 init];
  if (v2)
  {
    v3 = BLDaemonLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Initializing.", v19, 2u);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UNSPECIFIED, 0);
    v6 = dispatch_queue_create("com.apple.bookassetd.xpc-listener-ready", v5);
    listenersReadyQueue = v2->_listenersReadyQueue;
    v2->_listenersReadyQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.bookassetd.startup-queue", v9);
    startupQueue = v2->_startupQueue;
    v2->_startupQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UNSPECIFIED, 0);
    v14 = dispatch_queue_create("com.apple.bookassetd.xpc-dispatch", v13);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v14;

    v16 = objc_opt_new();
    libraryService = v2->_libraryService;
    v2->_libraryService = v16;
  }

  return v2;
}

- (void)dealloc
{
  v3 = BLDaemonLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Daemon shutting down.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = BLDaemon;
  [(BLDaemon *)&v4 dealloc];
}

- (void)start
{
  v3 = BLDaemonLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting up.", buf, 2u);
  }

  [(BLDaemon *)self _setupForNotifications];
  listenersReadyQueue = [(BLDaemon *)self listenersReadyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C2DB4;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_sync(listenersReadyQueue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = BLDaemonLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connection request from pid=%d", buf, 8u);
  }

  objc_opt_class();
  v9 = [connectionCopy valueForEntitlement:@"com.apple.ibooks.BLService.private"];
  v10 = BUDynamicCast();

  objc_opt_class();
  v11 = [connectionCopy valueForEntitlement:@"com.apple.itunesstored.private"];
  v12 = BUDynamicCast();

  bOOLValue = [v10 BOOLValue];
  bOOLValue2 = [v12 BOOLValue];
  libraryService = [(BLDaemon *)self libraryService];
  v16 = libraryService == 0;

  if (v16)
  {
    v17 = objc_opt_new();
    [(BLDaemon *)self setLibraryService:v17];
  }

  libraryService2 = [(BLDaemon *)self libraryService];

  v19 = (libraryService2 != 0) & (bOOLValue | bOOLValue2);
  if (v19)
  {
    v20 = BLDaemonLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 67109120;
      *&buf[4] = processIdentifier;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Accepting new connection from pid %d", buf, 8u);
    }

    libraryServiceListener = [(BLDaemon *)self libraryServiceListener];
    v23 = libraryServiceListener == listenerCopy;

    if (v23)
    {
      v24 = +[BLServiceInterface mainInterface];
      [connectionCopy setExportedInterface:v24];

      libraryService3 = [(BLDaemon *)self libraryService];
      [connectionCopy setExportedObject:libraryService3];
    }

    [connectionCopy resume];
  }

  else
  {
    v26 = [connectionCopy valueForEntitlement:@"com.apple.application-identifier"];
    if (v26)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v26 = 0;
      }
    }

    v27 = @"Service not ready (probably before first unlock)";
    if (libraryService2)
    {
      v27 = @"Process missing entitlements.";
    }

    v28 = v27;
    v29 = BLDaemonLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [connectionCopy processIdentifier];
      *buf = 67109634;
      *&buf[4] = processIdentifier2;
      *v39 = 2114;
      *&v39[2] = v26;
      *&v39[10] = 2114;
      *&v39[12] = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Refusing connection to pid %d. (appIdentifier: %{public}@) %{public}@", buf, 0x1Cu);
    }

    if (!libraryService2)
    {
      if (MGGetBoolAnswer())
      {
        v31 = getpid();
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v32 = off_10013ECB8;
        v37 = off_10013ECB8;
        if (!off_10013ECB8)
        {
          *buf = _NSConcreteStackBlock;
          *v39 = 3221225472;
          *&v39[8] = sub_1000C3C90;
          *&v39[16] = &unk_10011EFB0;
          v40 = &v34;
          sub_1000C3C90(buf);
          v32 = v35[3];
        }

        _Block_object_dispose(&v34, 8);
        if (!v32)
        {
          sub_1000CB478();
          __break(1u);
        }

        v32(v31, 3135094273, @"Service not ready (probably before first unlock)");
      }

      xpc_transaction_exit_clean();
    }
  }

  return v19;
}

- (void)lrq_setupBeforeListenersWithCompletion:(id)completion
{
  completionCopy = completion;
  listenersReadyQueue = [(BLDaemon *)self listenersReadyQueue];
  dispatch_assert_queue_V2(listenersReadyQueue);

  libraryService = [(BLDaemon *)self libraryService];

  if (libraryService)
  {
    libraryService2 = [(BLDaemon *)self libraryService];
    [libraryService2 performPreListenerStartupWithCompletion:completionCopy];
  }

  else
  {
    v7 = objc_retainBlock(completionCopy);
    libraryService2 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)lrq_setupListeners
{
  listenersReadyQueue = [(BLDaemon *)self listenersReadyQueue];
  dispatch_assert_queue_V2(listenersReadyQueue);

  v4 = BLDaemonLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting up listeners.", v11, 2u);
  }

  v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.ibooks.BLService"];
  [(BLDaemon *)self setLibraryServiceListener:v5];

  libraryServiceListener = [(BLDaemon *)self libraryServiceListener];
  [libraryServiceListener setDelegate:self];

  libraryServiceListener2 = [(BLDaemon *)self libraryServiceListener];
  [libraryServiceListener2 resume];

  v8 = notify_post(BLDownloadQueueServerStarted);
  if (v8)
  {
    v9 = v8;
    v10 = BLDaemonLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error posting ServerStarted notification. NOTIFY_STATUS: %d", v11, 8u);
    }
  }
}

- (void)lrq_setupCacheDelete
{
  listenersReadyQueue = [(BLDaemon *)self listenersReadyQueue];
  dispatch_assert_queue_V2(listenersReadyQueue);

  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C38A0;
  v4[3] = &unk_10011EF48;
  objc_copyWeak(&v5, &location);
  [BLCacheDeleteService registerCacheDeleteInfoCallbacks:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)sq_finishedStartingUp
{
  startupQueue = [(BLDaemon *)self startupQueue];
  dispatch_assert_queue_V2(startupQueue);

  v4 = BLDaemonLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting the library service.", buf, 2u);
  }

  libraryService = [(BLDaemon *)self libraryService];
  [libraryService startPendingOperations];

  v6 = objc_alloc_init(BLCacheDeleteStorageManager);
  [(BLDaemon *)self setCacheDeleteManager:v6];

  v7 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Doing initial calculation of storage usage.", v12, 2u);
  }

  cacheDeleteManager = [(BLDaemon *)self cacheDeleteManager];
  [cacheDeleteManager updateAvailableStorage];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = +[NSOperationQueue mainQueue];
  v11 = [v9 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v10 usingBlock:&stru_10011EF88];
}

- (void)_setupForNotifications
{
  v3 = +[BLNotificationManager sharedInstance];
  v4 = [BLNotificationService alloc];
  libraryService = [(BLDaemon *)self libraryService];
  automaticDownloadProcessor = [libraryService automaticDownloadProcessor];
  v6 = [(BLNotificationService *)v4 initWithAutomaticDownloadProcessor:automaticDownloadProcessor];
  [(BLDaemon *)self setNotificationService:v6];
}

@end