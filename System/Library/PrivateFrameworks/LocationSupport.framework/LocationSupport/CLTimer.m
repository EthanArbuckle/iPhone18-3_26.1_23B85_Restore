@interface CLTimer
- (double)nextFireDelay;
- (double)nextFireTime;
- (id)initInSilo:(id)a3 withScheduler:(id)a4;
- (void)dbgAssertInside;
- (void)invalidate;
- (void)setFireInterval:(double)a3;
- (void)setHandler:(id)a3;
- (void)setNextFireDelay:(double)a3;
- (void)setNextFireDelay:(double)a3 interval:(double)a4;
- (void)setNextFireTime:(double)a3;
- (void)setNextFireTime:(double)a3 interval:(double)a4;
- (void)shouldFire;
@end

@implementation CLTimer

- (void)dbgAssertInside
{
  WeakRetained = objc_loadWeakRetained(&self->_silo);
}

- (void)shouldFire
{
  [(CLTimer *)self dbgAssertInside];
  if (self->_fireInterval == 1.79769313e308)
  {
    self->_nextFireDelay = 1.79769313e308;
  }

  handler = self->_handler;
  if (handler)
  {
    v4 = [handler copy];
    v4[2]();
  }
}

- (double)nextFireDelay
{
  [(CLTimer *)self dbgAssertInside];
  result = 1.79769313e308;
  if (self->_nextFireDelay != 1.79769313e308)
  {
    v4 = mach_continuous_time();
    v5 = sub_1DF7FF29C(v4);
    nextFireDelay = self->_nextFireDelay;
    v7 = v5 - self->_delaySetAtTime;
    if (v7 <= nextFireDelay)
    {
      return nextFireDelay - v7;
    }

    else
    {
      fireInterval = self->_fireInterval;
      result = 0.0;
      if (fireInterval != 1.79769313e308)
      {
        return fireInterval - fmod(v7 - nextFireDelay, self->_fireInterval);
      }
    }
  }

  return result;
}

- (double)nextFireTime
{
  [(CLTimer *)self nextFireDelay];
  v3 = v2;
  result = 1.79769313e308;
  if (v3 != 1.79769313e308)
  {
    return v3 + CFAbsoluteTimeGetCurrent();
  }

  return result;
}

- (void)invalidate
{
  [(CLTimer *)self dbgAssertInside];
  handler = self->_handler;
  self->_handler = 0;

  self->_nextFireDelay = 1.79769313e308;
  self->_fireInterval = 1.79769313e308;

  [(CLTimer *)self updateScheduler];
}

- (id)initInSilo:(id)a3 withScheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CLTimer;
  v8 = [(CLTimer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_silo, v6);
    [(CLTimer *)v9 dbgAssertInside];
    v9->_nextFireDelay = 1.79769313e308;
    handler = v9->_handler;
    v9->_handler = 0;
    v9->_fireInterval = 1.79769313e308;

    objc_storeStrong(&v9->_scheduler, a4);
    [(CLTimerScheduler *)v9->_scheduler setTimer:v9];
    [(CLTimer *)v9 updateScheduler];
    v11 = v9;
  }

  return v9;
}

- (void)setHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = a3;
  [(CLTimer *)self dbgAssertInside];
  if (!v10)
  {
    v7 = sub_1DF81194C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "handler != ((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Can't set nil handler for CLTimer., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_1DF81194C();
    if (os_signpost_enabled(v8))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "handler != ((void *)0)";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't set nil handler for CLTimer.", "{msg%{public}.0s:Can't set nil handler for CLTimer., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v9 = sub_1DF81194C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "handler != ((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Can't set nil handler for CLTimer., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v4 = [v10 copy];
  handler = self->_handler;
  self->_handler = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setNextFireDelay:(double)a3
{
  [(CLTimer *)self dbgAssertInside];
  [(CLTimer *)self fireInterval];

  MEMORY[0x1EEE66B58](self, sel_setNextFireDelay_interval_);
}

- (void)setFireInterval:(double)a3
{
  [(CLTimer *)self dbgAssertInside];
  [(CLTimer *)self nextFireDelay];

  MEMORY[0x1EEE66B58](self, sel_setNextFireDelay_interval_);
}

- (void)setNextFireDelay:(double)a3 interval:(double)a4
{
  [(CLTimer *)self dbgAssertInside];
  self->_nextFireDelay = fmax(a3, 0.0);
  v7 = 1.79769313e308;
  if (a4 > 0.0)
  {
    v7 = a4;
  }

  self->_fireInterval = v7;
  v8 = mach_continuous_time();
  self->_delaySetAtTime = sub_1DF7FF29C(v8);

  [(CLTimer *)self updateScheduler];
}

- (void)setNextFireTime:(double)a3
{
  [(CLTimer *)self fireInterval];

  MEMORY[0x1EEE66B58](self, sel_setNextFireTime_interval_);
}

- (void)setNextFireTime:(double)a3 interval:(double)a4
{
  if (a3 != 1.79769313e308)
  {
    CFAbsoluteTimeGetCurrent();
  }

  MEMORY[0x1EEE66B58](self, sel_setNextFireDelay_interval_);
}

@end