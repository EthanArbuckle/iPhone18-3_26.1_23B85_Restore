@interface ViewfinderReliability
+ (id)sharedInstance;
- (ViewfinderReliability)init;
- (void)_checkForRepeatedEvent:(int64_t)a3;
- (void)_checkForUnexpectedEvent:(int64_t)a3;
- (void)_print;
- (void)_registerSources;
- (void)_reset;
- (void)logEvent:(int64_t)a3;
@end

@implementation ViewfinderReliability

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018408;
  block[3] = &unk_100034A20;
  block[4] = a1;
  if (qword_10003F330 != -1)
  {
    dispatch_once(&qword_10003F330, block);
  }

  v2 = qword_10003F328;

  return v2;
}

- (ViewfinderReliability)init
{
  if (os_variant_has_internal_diagnostics())
  {
    v10.receiver = self;
    v10.super_class = ViewfinderReliability;
    v3 = [(ViewfinderReliability *)&v10 init];
    if (v3)
    {
      v4 = os_log_create("com.apple.NanoCamera", "ViewfinderReliability");
      log = v3->_log;
      v3->_log = v4;

      v6 = +[NSCountedSet set];
      events = v3->_events;
      v3->_events = v6;

      [(ViewfinderReliability *)v3 _registerSources];
    }

    self = v3;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)logEvent:(int64_t)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = log;
    v7 = sub_100018644(a3);
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v11, 0xCu);
  }

  v8 = self->_events;
  objc_sync_enter(v8);
  events = self->_events;
  v10 = [NSNumber numberWithInteger:a3];
  [(NSCountedSet *)events addObject:v10];

  [(ViewfinderReliability *)self _checkForUnexpectedEvent:a3];
  [(ViewfinderReliability *)self _checkForRepeatedEvent:a3];
  objc_sync_exit(v8);
}

- (void)_registerSources
{
  objc_initWeak(&location, self);
  signal(30, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
  resetSource = self->_resetSource;
  self->_resetSource = v3;

  v5 = self->_resetSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100018824;
  handler[3] = &unk_100034EA0;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(self->_resetSource);
  signal(31, 1);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, 0x1FuLL, 0, &_dispatch_main_q);
  printSource = self->_printSource;
  self->_printSource = v6;

  v8 = self->_printSource;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100018864;
  v9[3] = &unk_100034EA0;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_printSource);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_reset
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Reset events.", v5, 2u);
  }

  v4 = self->_events;
  objc_sync_enter(v4);
  [(NSCountedSet *)self->_events removeAllObjects];
  objc_sync_exit(v4);
}

- (void)_print
{
  v11 = self->_events;
  objc_sync_enter(v11);
  v3 = +[NSMutableString string];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = self->_events;
  v4 = [(NSCountedSet *)obj countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = sub_100018644([v7 integerValue]);
        v9 = [NSString stringWithFormat:@"%@: %lu\n", v8, [(NSCountedSet *)self->_events countForObject:v7]];
        [v3 appendString:v9];
      }

      v4 = [(NSCountedSet *)obj countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Count of events:\n%@", buf, 0xCu);
  }

  objc_sync_exit(v11);
}

- (void)_checkForUnexpectedEvent:(int64_t)a3
{
  if (CFPreferencesGetAppBooleanValue(@"ViewfinderReliability_CheckUnexpectedEvents", @"com.apple.NanoCamera", 0))
  {
    v5 = [NSSet setWithObjects:&off_100036730, &off_100036748, &off_100036760, &off_100036778, &off_100036790, &off_1000367A8, &off_1000367C0, 0];
    v6 = [NSNumber numberWithInteger:a3];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
      {
        sub_10002513C(log, a3);
      }
    }
  }
}

- (void)_checkForRepeatedEvent:(int64_t)a3
{
  if (CFPreferencesGetAppBooleanValue(@"ViewfinderReliability_CheckRepeatedEvents", @"com.apple.NanoCamera", 0))
  {
    events = self->_events;
    v6 = [NSNumber numberWithInteger:a3];
    v7 = [(NSCountedSet *)events countForObject:v6];

    if (v7 >= 2)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
      {
        sub_1000251D4(log, a3);
      }
    }
  }
}

@end