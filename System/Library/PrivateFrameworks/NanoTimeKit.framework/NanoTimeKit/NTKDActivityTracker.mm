@interface NTKDActivityTracker
+ (id)sharedInstance;
- (NTKDActivityTracker)init;
- (void)_queue_beginActivity:(id)a3;
- (void)_queue_endActivity:(id)a3;
- (void)_queue_setOrUpdateActivityAndTimer;
- (void)beginActivity:(id)a3;
- (void)checkin;
- (void)endActivity:(id)a3;
@end

@implementation NTKDActivityTracker

+ (id)sharedInstance
{
  if (qword_100066B80 != -1)
  {
    sub_10003DE70();
  }

  v3 = qword_100066B78;

  return v3;
}

- (NTKDActivityTracker)init
{
  v8.receiver = self;
  v8.super_class = NTKDActivityTracker;
  v2 = [(NTKDActivityTracker *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanotimekit.daemon-activity-queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(NSMutableSet);
    activityIdentifiers = v2->_activityIdentifiers;
    v2->_activityIdentifiers = v5;
  }

  return v2;
}

- (void)beginActivity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000068D8;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)endActivity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000697C;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)checkin
{
  xpc_activity_register("com.apple.nanotimekit.daemon-activity", XPC_ACTIVITY_CHECK_IN, &stru_10005CE40);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006AFC;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_beginActivity:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "begin activity '%@'", &v6, 0xCu);
  }

  [(NSMutableSet *)self->_activityIdentifiers addObject:v4];
  if (!self->_xpcActivityRegistered)
  {
    [(NTKDActivityTracker *)self _queue_setOrUpdateActivityAndTimer];
  }
}

- (void)_queue_endActivity:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "end activity '%@'", &v9, 0xCu);
  }

  [(NSMutableSet *)self->_activityIdentifiers removeObject:v4];
  if (self->_xpcActivityRegistered && ![(NSMutableSet *)self->_activityIdentifiers count])
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unregistering xpc activity", &v9, 2u);
    }

    xpc_activity_unregister("com.apple.nanotimekit.daemon-activity");
    self->_xpcActivityRegistered = 0;
    adjustCriteriaTimer = self->_adjustCriteriaTimer;
    if (adjustCriteriaTimer)
    {
      dispatch_source_cancel(adjustCriteriaTimer);
      v8 = self->_adjustCriteriaTimer;
      self->_adjustCriteriaTimer = 0;
    }
  }
}

- (void)_queue_setOrUpdateActivityAndTimer
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "scheduling xpc activity for 5 minutes from now", buf, 2u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_5_MIN);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000070C4;
  handler[3] = &unk_10005CE68;
  handler[4] = self;
  xpc_activity_register("com.apple.nanotimekit.daemon-activity", v4, handler);
  self->_xpcActivityRegistered = 1;
  adjustCriteriaTimer = self->_adjustCriteriaTimer;
  if (adjustCriteriaTimer)
  {
    dispatch_source_cancel(adjustCriteriaTimer);
    v6 = self->_adjustCriteriaTimer;
    self->_adjustCriteriaTimer = 0;
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  v8 = self->_adjustCriteriaTimer;
  self->_adjustCriteriaTimer = v7;

  v9 = self->_adjustCriteriaTimer;
  v10 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  v11 = self->_adjustCriteriaTimer;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000719C;
  v12[3] = &unk_10005CA70;
  v12[4] = self;
  dispatch_source_set_event_handler(v11, v12);
  dispatch_resume(self->_adjustCriteriaTimer);
}

@end