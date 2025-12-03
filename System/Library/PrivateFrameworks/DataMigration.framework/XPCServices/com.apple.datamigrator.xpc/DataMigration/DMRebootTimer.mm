@interface DMRebootTimer
+ (id)createRebootTimerIfAppropriateWithTimeIntervalBeforeReboot:(double)reboot pluginName:(id)name environment:(id)environment;
+ (void)_setDidReboot:(BOOL)reboot;
- (id)_createHelperConnection;
- (id)_initWithTimeIntervalBeforeReboot:(double)reboot pluginName:(id)name environment:(id)environment;
- (void)_timerFired;
- (void)cancel;
- (void)resume;
@end

@implementation DMRebootTimer

+ (id)createRebootTimerIfAppropriateWithTimeIntervalBeforeReboot:(double)reboot pluginName:(id)name environment:(id)environment
{
  nameCopy = name;
  environmentCopy = environment;
  if (reboot > 0.0 && +[DMRebootTimer _shouldRebootOnCurrentPlatform](DMRebootTimer, "_shouldRebootOnCurrentPlatform") && [environmentCopy shouldWatchdogPluginsAfterTimeout] && (v10 = objc_msgSend(environmentCopy, "migrationRebootCount"), v10 < objc_msgSend(self, "_maximumRebootCount")))
  {
    v11 = [[DMRebootTimer alloc] _initWithTimeIntervalBeforeReboot:nameCopy pluginName:environmentCopy environment:reboot];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_initWithTimeIntervalBeforeReboot:(double)reboot pluginName:(id)name environment:(id)environment
{
  nameCopy = name;
  environmentCopy = environment;
  v26.receiver = self;
  v26.super_class = DMRebootTimer;
  v10 = [(DMRebootTimer *)&v26 init];
  v11 = v10;
  if (v10)
  {
    [(DMRebootTimer *)v10 setCanceled:0];
    [(DMRebootTimer *)v11 setPluginName:nameCopy];
    [(DMRebootTimer *)v11 setEnvironment:environmentCopy];
    pluginName = [(DMRebootTimer *)v11 pluginName];
    v13 = [NSString stringWithFormat:@"com.apple.datamigrator.rebootTimer.%@", pluginName];

    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create(uTF8String, v15);
    [(DMRebootTimer *)v11 setSerialQueue:v16];

    serialQueue = [(DMRebootTimer *)v11 serialQueue];
    v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, serialQueue);
    [(DMRebootTimer *)v11 setTimer:v18];

    timer = [(DMRebootTimer *)v11 timer];
    v20 = dispatch_time(0, (reboot * 1000000000.0));
    dispatch_source_set_timer(timer, v20, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(&location, v11);
    timer2 = [(DMRebootTimer *)v11 timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000038E8;
    handler[3] = &unk_1000247F0;
    objc_copyWeak(&v24, &location);
    dispatch_source_set_event_handler(timer2, handler);

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

    environment = [(DMRebootTimer *)self environment];
    migrationRebootCount = [environment migrationRebootCount];

    environment2 = [(DMRebootTimer *)self environment];
    [environment2 setMigrationRebootCount:migrationRebootCount + 1];

    obj = [(DMRebootTimer *)self _createHelperConnection];
    [obj resume];
    pluginName = [(DMRebootTimer *)self pluginName];
    v7 = pluginName;
    if (migrationRebootCount)
    {
      v11 = [NSNumber numberWithUnsignedInteger:migrationRebootCount];
      _DMLogFunc();

      [obj reboot];
    }

    else
    {
      v10 = pluginName;
      _DMLogFunc();

      pluginName2 = [(DMRebootTimer *)self pluginName];
      v9 = [NSString stringWithFormat:@"datamigrator plugin %@ hang", pluginName2];

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

+ (void)_setDidReboot:(BOOL)reboot
{
  obj = self;
  objc_sync_enter(obj);
  byte_100030980 = reboot;
  objc_sync_exit(obj);
}

- (void)resume
{
  timer = [(DMRebootTimer *)self timer];
  dispatch_resume(timer);
}

- (void)cancel
{
  serialQueue = [(DMRebootTimer *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C34;
  block[3] = &unk_100024768;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

@end