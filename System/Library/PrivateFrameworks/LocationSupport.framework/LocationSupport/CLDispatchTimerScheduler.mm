@interface CLDispatchTimerScheduler
- (CLDispatchTimerScheduler)initWithDispatchSilo:(id)silo;
- (CLTimer)timer;
- (void)dealloc;
- (void)reflectNextFireDelay:(double)delay fireInterval:(double)interval;
@end

@implementation CLDispatchTimerScheduler

- (CLTimer)timer
{
  WeakRetained = objc_loadWeakRetained(&self->timer);

  return WeakRetained;
}

- (void)dealloc
{
  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
    v4 = self->_source;
    self->_source = 0;
  }

  v5.receiver = self;
  v5.super_class = CLDispatchTimerScheduler;
  [(CLDispatchTimerScheduler *)&v5 dealloc];
}

- (CLDispatchTimerScheduler)initWithDispatchSilo:(id)silo
{
  siloCopy = silo;
  [siloCopy inPermissiveMode];
  v20.receiver = self;
  v20.super_class = CLDispatchTimerScheduler;
  v5 = [(CLDispatchTimerScheduler *)&v20 init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    objc_initWeak(&from, siloCopy);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_1DF81A33C;
    v15 = &unk_1E86C84D0;
    objc_copyWeak(&v16, &from);
    objc_copyWeak(&v17, &location);
    v6 = _Block_copy(&v12);
    queue = [siloCopy queue];
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 2uLL, 0, queue);
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    dispatch_set_context(*(v5 + 2), [v6 copy]);
    dispatch_set_finalizer_f(*(v5 + 2), j__objc_release);
    dispatch_source_set_event_handler_f(*(v5 + 2), sub_1DF7FFDAC);
    [v5 reflectNextFireDelay:1.79769313e308 fireInterval:1.79769313e308];
    dispatch_resume(*(v5 + 2));
    v10 = v5;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)reflectNextFireDelay:(double)delay fireInterval:(double)interval
{
  source = self->_source;
  if (!source)
  {
    __assert_rtn("[CLDispatchTimerScheduler reflectNextFireDelay:fireInterval:]", "CLDispatchSilo.m", 132, "_source");
  }

  if (delay == 1.79769313e308)
  {
    v7 = -1;
  }

  else
  {
    v7 = dispatch_time(0x8000000000000000, (delay * 1000000000.0));
    source = self->_source;
  }

  if (interval == 1.79769313e308)
  {
    v8 = -1;
  }

  else
  {
    v8 = (interval * 1000000000.0);
  }

  dispatch_source_set_timer(source, v7, v8, 0);
}

@end