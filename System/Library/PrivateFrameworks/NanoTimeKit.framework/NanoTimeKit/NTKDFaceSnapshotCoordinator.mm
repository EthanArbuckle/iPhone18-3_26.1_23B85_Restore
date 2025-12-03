@interface NTKDFaceSnapshotCoordinator
+ (id)sharedInstance;
+ (void)runSnapshotServer;
+ (void)updateAllSnapshots;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NTKDFaceSnapshotCoordinator)init;
- (void)_handleCalendarDayChangedNotification;
- (void)_handleCurrentLocaleDidChangeNotification;
- (void)_prewarmForActivity:(id)activity;
- (void)_setupXPCEventListner;
- (void)_updateAllSnapshots;
@end

@implementation NTKDFaceSnapshotCoordinator

+ (void)runSnapshotServer
{
  if (qword_100066BF8 != -1)
  {
    sub_10003E0CC();
  }
}

+ (id)sharedInstance
{
  if (qword_100066C08 != -1)
  {
    sub_10003E0E0();
  }

  v3 = qword_100066C00;

  return v3;
}

+ (void)updateAllSnapshots
{
  v2 = +[NTKDFaceSnapshotCoordinator sharedInstance];
  [v2 _updateAllSnapshots];
}

- (NTKDFaceSnapshotCoordinator)init
{
  v18.receiver = self;
  v18.super_class = NTKDFaceSnapshotCoordinator;
  v2 = [(NTKDFaceSnapshotCoordinator *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ntkd.snapshotcoordinator", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("com.apple.ntkd.snapshotcoordinator.callouts", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.ntkd.snapshotcoordinator.xpcIncomingMessageQueue", v7);
    xpcIncomingMessageQueue = v2->_xpcIncomingMessageQueue;
    v2->_xpcIncomingMessageQueue = v8;

    v10 = objc_alloc_init(NSMutableSet);
    clients = v2->_clients;
    v2->_clients = v10;

    v12 = objc_opt_new();
    snapshotController = v2->_snapshotController;
    v2->_snapshotController = v12;

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"_handleCalendarDayChangedNotification" name:NSCalendarDayChangedNotification object:0];
    [v14 addObserver:v2 selector:"_handleCurrentLocaleDidChangeNotification" name:NSCurrentLocaleDidChangeNotification object:0];
    if (CFPreferencesGetAppBooleanValue(@"NTKFaceSnapshotsAreDirtyKey", NTKDaemonPreferencesDomain, 0))
    {
      v15 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Update all snapshots due to daemon exiting while snapshotting", v17, 2u);
      }

      [(NTKDFaceSnapshotCoordinator *)v2 _updateAllSnapshots];
    }
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v15 = 2112;
    v16 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NTKDFaceSnapshotClientHandler %p accept from connection %@", buf, 0x16u);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D6AC;
  v10[3] = &unk_10005CA98;
  v11 = connectionCopy;
  selfCopy2 = self;
  v8 = connectionCopy;
  dispatch_async(queue, v10);

  return 1;
}

- (void)_handleCalendarDayChangedNotification
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update all snapshots due to calendar day changed notification", v4, 2u);
  }

  [(NTKDFaceSnapshotCoordinator *)self _updateAllSnapshots];
}

- (void)_handleCurrentLocaleDidChangeNotification
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update all snapshots due to current localed changed notification", v4, 2u);
  }

  [(NTKDFaceSnapshotCoordinator *)self _updateAllSnapshots];
}

- (void)_updateAllSnapshots
{
  [(NTKDFaceSnapshotController *)self->_snapshotController updateAllSnapshots];
  snapshotController = self->_snapshotController;

  [(NTKDFaceSnapshotController *)snapshotController updateAddableAndGallerySnapshotsWithContinuationBlock:&stru_10005D180 finishedBlock:&stru_10005D1C0];
}

- (void)_setupXPCEventListner
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000DB3C;
  handler[3] = &unk_10005CE68;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
}

- (void)_prewarmForActivity:(id)activity
{
  activityCopy = activity;
  v4 = activityCopy;
  if (!activityCopy)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003E0F4(v5);
    }

    goto LABEL_11;
  }

  if (!xpc_activity_get_state(activityCopy))
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Prewarm: XPC Activity was checked-in";
      v7 = buf;
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (xpc_activity_set_state(v4, 5))
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v6 = "Prewarm: Snapshotting successfully skipped.";
      v7 = &v8;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:
}

@end