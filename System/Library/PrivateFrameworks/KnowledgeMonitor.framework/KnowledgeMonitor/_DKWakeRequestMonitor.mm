@interface _DKWakeRequestMonitor
- (void)deactivate;
- (void)dealloc;
- (void)obtainNextUserVisibleWakeRequest;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKWakeRequestMonitor

- (void)dealloc
{
  [(_DKWakeRequestMonitor *)self deactivate];
  updateTimer = self->_updateTimer;
  if (updateTimer && !self->_updateTimerResumed)
  {
    dispatch_source_cancel(updateTimer);
    dispatch_resume(self->_updateTimer);
    self->_updateTimerResumed = 1;
  }

  v4.receiver = self;
  v4.super_class = _DKWakeRequestMonitor;
  [(_DKMonitor *)&v4 dealloc];
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = _DKWakeRequestMonitor;
  if ([(_DKMonitor *)&v12 instantMonitorNeedsActivation])
  {
    v3 = [(_DKMonitor *)self queue];
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    updateTimer = self->_updateTimer;
    self->_updateTimer = v4;

    v6 = self->_updateTimer;
    v7 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v8 = self->_updateTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30___DKWakeRequestMonitor_start__block_invoke;
    handler[3] = &unk_27856F060;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    self->_updateTimerResumed = 1;
    dispatch_resume(self->_updateTimer);
    v9 = [(_DKMonitor *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30___DKWakeRequestMonitor_start__block_invoke_2;
    v10[3] = &unk_27856F408;
    v10[4] = self;
    notify_register_dispatch("com.apple.system.powermanagement.uservisiblepowerevent", &self->_wakeRequestToken, v9, v10);
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKWakeRequestMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    self->_updateTimerResumed = 0;
    dispatch_suspend(self->_updateTimer);
    [(_DKWakeRequestMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  wakeRequestToken = self->_wakeRequestToken;
  if (wakeRequestToken)
  {
    notify_cancel(wakeRequestToken);
    self->_wakeRequestToken = 0;
  }
}

- (void)synchronouslyReflectCurrentValue
{
  v3 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___DKWakeRequestMonitor_synchronouslyReflectCurrentValue__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)obtainNextUserVisibleWakeRequest
{
  v3 = IOPMCopyScheduledPowerEvents();
  if (!v3)
  {
    goto LABEL_23;
  }

  cf = v3;
  v4 = CFGetTypeID(v3);
  if (v4 != CFArrayGetTypeID())
  {
    CFRelease(cf);
LABEL_23:
    cf = [MEMORY[0x277CBEAA8] distantFuture];
    v25 = [MEMORY[0x277CFE318] userContext];
    v23 = [MEMORY[0x277CFE338] keyPathForNextUserVisibleWakeDate];
    [v25 setObject:cf forKeyedSubscript:v23];
    goto LABEL_42;
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = self->_nextUserVisibleWakeRequestDate;
  nextUserVisibleWakeRequestor = self->_nextUserVisibleWakeRequestor;
  if (!nextUserVisibleWakeRequestor)
  {
    v8 = [MEMORY[0x277CBEAA8] distantFuture];

    nextUserVisibleWakeRequestor = self->_nextUserVisibleWakeRequestor;
    v6 = v8;
  }

  v42 = v6;
  v40 = nextUserVisibleWakeRequestor;
  if (self->_nextUserVisibleWakeRequestDate)
  {
    [v5 timeIntervalSinceDate:?];
    if (v9 >= 120.0 || ([v5 timeIntervalSinceDate:self->_nextUserVisibleWakeRequestDate], v10 < 0.0))
    {
      nextUserVisibleWakeRequestDate = self->_nextUserVisibleWakeRequestDate;
      self->_nextUserVisibleWakeRequestDate = 0;

      v12 = self->_nextUserVisibleWakeRequestor;
      self->_nextUserVisibleWakeRequestor = 0;
    }
  }

  v43 = v5;
  if ([cf count])
  {
    v13 = 0;
    do
    {
      v14 = [cf objectAtIndexedSubscript:v13];
      v15 = [v14 objectForKeyedSubscript:@"UserVisible"];
      if ([v15 BOOLValue])
      {
        v16 = [v14 objectForKeyedSubscript:@"time"];
        v17 = self->_nextUserVisibleWakeRequestDate;
        if (!v17 || ([(NSDate *)v17 timeIntervalSinceDate:v16], v18 > 0.0))
        {
          [v5 timeIntervalSinceDate:v16];
          if (v19 < 120.0)
          {
            objc_storeStrong(&self->_nextUserVisibleWakeRequestDate, v16);
            v20 = [v14 objectForKey:@"scheduledby"];
            v21 = self->_nextUserVisibleWakeRequestor;
            self->_nextUserVisibleWakeRequestor = v20;
          }
        }
      }

      ++v13;
    }

    while (v13 < [cf count]);
  }

  v22 = self->_nextUserVisibleWakeRequestDate;
  v23 = v42;
  if (v42)
  {
    if (v22)
    {
      [(NSDate *)v42 timeIntervalSinceDate:?];
      if (fabs(v24) > 1.0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v22)
  {
    v32 = 900.0;
    v33 = v41;
    v25 = v5;
    goto LABEL_33;
  }

  if (self->_nextUserVisibleWakeRequestor)
  {
LABEL_26:
    v26 = self->_nextUserVisibleWakeRequestDate;
    v27 = [MEMORY[0x277CFE318] userContext];
    v28 = [MEMORY[0x277CFE338] keyPathForNextUserVisibleWakeDate];
    [v27 setObject:v26 forKeyedSubscript:v28];

    v29 = self->_nextUserVisibleWakeRequestDate;
    goto LABEL_28;
  }

  v30 = [MEMORY[0x277CFE318] userContext];
  v31 = [MEMORY[0x277CFE338] keyPathForNextUserVisibleWakeDate];
  [v30 setObject:v42 forKeyedSubscript:v31];

  v29 = v42;
LABEL_28:
  v25 = v43;
  [(NSDate *)v29 timeIntervalSinceDate:v43];
  v33 = v41;
  if (v32 > 900.0)
  {
    v34 = 900000000000;
    goto LABEL_34;
  }

  if (v32 <= 120.0)
  {
    v34 = 120000000000;
    goto LABEL_34;
  }

LABEL_33:
  v34 = llround(v32 * 1000000000.0);
LABEL_34:
  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    v36 = dispatch_walltime(0, v34);
    dispatch_source_set_timer(updateTimer, v36, 0xFFFFFFFFFFFFFFFFLL, 0x3CuLL);
  }

  v37 = self->_nextUserVisibleWakeRequestor;
  if (v33)
  {
    if (v37)
    {
      [v33 isEqual:self->_nextUserVisibleWakeRequestor];
      v37 = self->_nextUserVisibleWakeRequestor;
    }

    goto LABEL_40;
  }

  if (v37)
  {
LABEL_40:
    v38 = [MEMORY[0x277CFE318] userContext];
    v39 = [MEMORY[0x277CFE358] keyPathWithKey:@"/system/nextUserVisibleWakeRequestor"];
    [v38 setObject:v37 forKeyedSubscript:v39];
  }

LABEL_42:
}

@end