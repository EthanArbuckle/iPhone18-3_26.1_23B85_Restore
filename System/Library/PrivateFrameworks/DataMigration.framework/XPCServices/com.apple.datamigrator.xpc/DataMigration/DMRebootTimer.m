@interface DMRebootTimer
+ (id)createRebootTimerIfAppropriateWithTimeIntervalBeforeReboot:(double)a3 pluginName:(id)a4 environment:(id)a5;
+ (void)_setDidReboot:(BOOL)a3;
- (id)_createHelperConnection;
- (id)_initWithTimeIntervalBeforeReboot:(double)a3 pluginName:(id)a4 environment:(id)a5;
- (void)_timerFired;
- (void)cancel;
- (void)resume;
@end

@implementation DMRebootTimer

+ (id)createRebootTimerIfAppropriateWithTimeIntervalBeforeReboot:(double)a3 pluginName:(id)a4 environment:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 > 0.0 && +[DMRebootTimer _shouldRebootOnCurrentPlatform](DMRebootTimer, "_shouldRebootOnCurrentPlatform") && [v9 shouldWatchdogPluginsAfterTimeout] && (v10 = objc_msgSend(v9, "migrationRebootCount"), v10 < objc_msgSend(a1, "_maximumRebootCount")))
  {
    v11 = [[DMRebootTimer alloc] _initWithTimeIntervalBeforeReboot:v8 pluginName:v9 environment:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_initWithTimeIntervalBeforeReboot:(double)a3 pluginName:(id)a4 environment:(id)a5
{
  v8 = a4;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = DMRebootTimer;
  v10 = [(DMRebootTimer *)&v26 init];
  v11 = v10;
  if (v10)
  {
    [(DMRebootTimer *)v10 setCanceled:0];
    [(DMRebootTimer *)v11 setPluginName:v8];
    [(DMRebootTimer *)v11 setEnvironment:v9];
    v12 = [(DMRebootTimer *)v11 pluginName];
    v13 = [NSString stringWithFormat:@"com.apple.datamigrator.rebootTimer.%@", v12];

    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create(v14, v15);
    [(DMRebootTimer *)v11 setSerialQueue:v16];

    v17 = [(DMRebootTimer *)v11 serialQueue];
    v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v17);
    [(DMRebootTimer *)v11 setTimer:v18];

    v19 = [(DMRebootTimer *)v11 timer];
    v20 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(&location, v11);
    v21 = [(DMRebootTimer *)v11 timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000038E8;
    handler[3] = &unk_1000247F0;
    objc_copyWeak(&v24, &location);
    dispatch_source_set_event_handler(v21, handler);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)_timerFired
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  if (byte_100030980)
  {
    objc_sync_exit(obj);
  }

  else
  {
    byte_100030980 = 1;
    objc_sync_exit(obj);

    v3 = [(DMRebootTimer *)self environment];
    v4 = [v3 migrationRebootCount];

    v5 = [(DMRebootTimer *)self environment];
    [v5 setMigrationRebootCount:v4 + 1];

    obj = [(DMRebootTimer *)self _createHelperConnection];
    [obj resume];
    v6 = [(DMRebootTimer *)self pluginName];
    v7 = v6;
    if (v4)
    {
      v11 = [NSNumber numberWithUnsignedInteger:v4];
      _DMLogFunc();

      [obj reboot];
    }

    else
    {
      v10 = v6;
      _DMLogFunc();

      v8 = [(DMRebootTimer *)self pluginName];
      v9 = [NSString stringWithFormat:@"datamigrator plugin %@ hang", v8];

      [obj panicWithMessage:v9];
    }

    [obj invalidate];
  }
}

- (id)_createHelperConnection
{
  v2 = objc_alloc_init(DMHelperConnection);

  return v2;
}

+ (void)_setDidReboot:(BOOL)a3
{
  obj = a1;
  objc_sync_enter(obj);
  byte_100030980 = a3;
  objc_sync_exit(obj);
}

- (void)resume
{
  v2 = [(DMRebootTimer *)self timer];
  dispatch_resume(v2);
}

- (void)cancel
{
  v3 = [(DMRebootTimer *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C34;
  block[3] = &unk_100024768;
  block[4] = self;
  dispatch_sync(v3, block);
}

@end