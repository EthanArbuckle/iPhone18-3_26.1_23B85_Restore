@interface PSDaemon
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptNewClientConnection:(id)connection;
- (BOOL)shouldAcceptNewProgressConnection:(id)connection;
- (BOOL)shouldAcceptNewToolConnection:(id)connection;
- (BOOL)shouldRelaunch;
- (PSDaemon)init;
- (void)_acquireStayAliveTransaction;
- (void)_clearStayAliveTransaction;
- (void)_registerForNotifications;
- (void)addLoggersIfNeeded;
- (void)run;
- (void)setShouldRelaunch:(BOOL)relaunch;
- (void)sigTermHandler;
- (void)syncInitiatorStateChangedTo:(unint64_t)to;
@end

@implementation PSDaemon

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CEF8;
  block[3] = &unk_10002C778;
  block[4] = self;
  if (qword_100038070 != -1)
  {
    dispatch_once(&qword_100038070, block);
  }

  v2 = qword_100038068;

  return v2;
}

- (PSDaemon)init
{
  v27.receiver = self;
  v27.super_class = PSDaemon;
  v2 = [(PSDaemon *)&v27 init];
  v3 = v2;
  if (v2)
  {
    v2->_stayAliveTransactionLock._os_unfair_lock_opaque = 0;
    v4 = +[PSDSyncInitiator sharedSyncInitiator];
    v5 = objc_opt_new();
    syncRestrictionNotifier = v3->_syncRestrictionNotifier;
    v3->_syncRestrictionNotifier = v5;

    [(PSDaemon *)v3 addLoggersIfNeeded];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.pairedsyncd.notificationq", v7);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v8;

    [(PSDaemon *)v3 _registerForNotifications];
    v10 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.pairedsyncd.tool"];
    toolListener = v3->_toolListener;
    v3->_toolListener = v10;

    [(NSXPCListener *)v3->_toolListener setDelegate:v3];
    [(NSXPCListener *)v3->_toolListener resume];
    v12 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.pairedsyncd.connection"];
    clientListener = v3->_clientListener;
    v3->_clientListener = v12;

    [(NSXPCListener *)v3->_clientListener setDelegate:v3];
    [(NSXPCListener *)v3->_clientListener resume];
    v14 = +[PSDSyncStateManager sharedSyncStateManager];
    v15 = objc_alloc_init(PSDWatchSyncStateObserver);
    watchSyncStateObserver = v3->_watchSyncStateObserver;
    v3->_watchSyncStateObserver = v15;

    v17 = objc_alloc_init(PSDSwitchAssertionManager);
    switchAssertionManager = v3->_switchAssertionManager;
    v3->_switchAssertionManager = v17;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, PSYDaemonDidLaunchDarwinNotification, 0, 0, 1u);
    v20 = +[PSDSyncInitiator sharedSyncInitiator];
    [v20 resume];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D17C;
    block[3] = &unk_10002C840;
    v21 = v3;
    v26 = v21;
    dispatch_async(&_dispatch_main_q, block);
    v22 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.pairedsyncd.progress"];
    v23 = v21[2];
    v21[2] = v22;

    [v21[2] setDelegate:v21];
    [v21[2] resume];
  }

  return v3;
}

- (void)run
{
  v2 = +[NSRunLoop mainRunLoop];
  [v2 run];
}

- (void)_acquireStayAliveTransaction
{
  os_unfair_lock_lock(&self->_stayAliveTransactionLock);
  v3 = os_transaction_create();
  syncingStayAliveTransaction = self->_syncingStayAliveTransaction;
  self->_syncingStayAliveTransaction = v3;

  os_unfair_lock_unlock(&self->_stayAliveTransactionLock);
}

- (void)_clearStayAliveTransaction
{
  os_unfair_lock_lock(&self->_stayAliveTransactionLock);
  syncingStayAliveTransaction = self->_syncingStayAliveTransaction;
  self->_syncingStayAliveTransaction = 0;

  os_unfair_lock_unlock(&self->_stayAliveTransactionLock);
}

- (void)setShouldRelaunch:(BOOL)relaunch
{
  relaunchCopy = relaunch;
  v5 = psd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (relaunchCopy)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PSDaemon setting shouldRelaunch=%@", buf, 0xCu);
    }
  }

  notificationQueue = self->_notificationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D3F8;
  v10[3] = &unk_10002CB18;
  v10[4] = self;
  v11 = relaunchCopy;
  dispatch_sync(notificationQueue, v10);
}

- (BOOL)shouldRelaunch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationQueue = self->_notificationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D684;
  v5[3] = &unk_10002CB40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)sigTermHandler
{
  shouldNotDieSuddenly = self->_shouldNotDieSuddenly;
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (!shouldNotDieSuddenly)
  {
    if (v5)
    {
      v7 = psd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PSDaemon has received a SIGTERM, and is idle, exiting", v8, 2u);
      }
    }

    exit(0);
  }

  if (v5)
  {
    v6 = psd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PSDaemon has received a SIGTERM, but is not completed updating file for relaunch, not exiting for now", buf, 2u);
    }
  }

  self->_exitPending = 1;
}

- (void)_registerForNotifications
{
  xpc_set_event_stream_handler("com.apple.notifyd.matching", self->_notificationQueue, &stru_10002CB80);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  sigTermSource = self->_sigTermSource;
  self->_sigTermSource = v3;

  dispatch_source_set_event_handler(self->_sigTermSource, &stru_10002CBA0);
  v5 = self->_sigTermSource;

  dispatch_activate(v5);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_toolListener == listenerCopy)
  {
    v9 = [(PSDaemon *)self shouldAcceptNewToolConnection:connectionCopy];
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  if (self->_progressListener == listenerCopy)
  {
    v9 = [(PSDaemon *)self shouldAcceptNewProgressConnection:connectionCopy];
    goto LABEL_8;
  }

  if (self->_clientListener == listenerCopy)
  {
    v9 = [(PSDaemon *)self shouldAcceptNewClientConnection:connectionCopy];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)shouldAcceptNewToolConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.pairedsync.tool"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = PSYToolInterfaceXPCInterface();
    [connectionCopy setExportedInterface:v6];

    v7 = objc_alloc_init(PSDToolConnection);
    [connectionCopy setExportedObject:v7];

    [connectionCopy resume];
  }

  else
  {
    [connectionCopy invalidate];
    v8 = psd_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = psd_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Tool connection %{public}@ is missing entitlement", &v12, 0xCu);
      }
    }
  }

  return bOOLValue;
}

- (BOOL)shouldAcceptNewProgressConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[PSDSyncSessionObserver alloc] initWithXPCConnection:connectionCopy];

  return 1;
}

- (BOOL)shouldAcceptNewClientConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.pairedsync.client"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10000DCE8;
    v13 = sub_10000DCF8;
    v14 = objc_alloc_init(PSDClientConnection);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000DD00;
    v8[3] = &unk_10002CBC8;
    v8[4] = &v9;
    [connectionCopy setInvalidationHandler:v8];
    v6 = PSYConnectionXPCInterface();
    [connectionCopy setExportedInterface:v6];

    [connectionCopy setExportedObject:v10[5]];
    [connectionCopy resume];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    [connectionCopy invalidate];
  }

  return bOOLValue;
}

- (void)addLoggersIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = objc_alloc_init(PSDSchedulerIDSObserver);
  [(NSArray *)v3 addObject:v4];

  v5 = +[PSDSchedulerCoreAnalyticsLogger defaultLogger];
  [(NSArray *)v3 addObject:v5];

  v6 = objc_alloc_init(PSDSchedulerPowerLogger);
  [(NSArray *)v3 addObject:v6];

  v7 = +[PSDSchedulerAWDLogger defaultLogger];
  [(NSArray *)v3 addObject:v7];

  [(NSArray *)v3 enumerateObjectsUsingBlock:&stru_10002CC08];
  loggers = self->_loggers;
  self->_loggers = v3;
}

- (void)syncInitiatorStateChangedTo:(unint64_t)to
{
  v5 = psd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[PSDaemon syncInitiatorStateChangedTo:]";
      v14 = 2048;
      toCopy = to;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: state=%ld", buf, 0x16u);
    }
  }

  if ((to & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v8 = +[PSYRegistrySingleton registry];
    pairingID = [v8 pairingID];

    v10 = +[PSDSyncStateManager sharedSyncStateManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000DFE8;
    v11[3] = &unk_10002C840;
    v11[4] = self;
    [v10 setSyncCompleteForPairingID:pairingID withBlock:v11];
  }
}

@end