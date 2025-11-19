@interface _DKComplicationMonitor
- (void)asyncUpdateCurrentActiveComplicationsContext;
- (void)fetchActiveComplications:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation _DKComplicationMonitor

- (void)start
{
  if ([(_DKMonitor *)self instantMonitorNeedsActivation])
  {
    objc_initWeak(&location, self);
    v3 = [(_DKMonitor *)self queue];
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    timer = self->_timer;
    self->_timer = v4;

    v6 = self->_timer;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31___DKComplicationMonitor_start__block_invoke;
    block[3] = &unk_27856F260;
    objc_copyWeak(&v18, &location);
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v6, v7);

    dispatch_resume(self->_timer);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31___DKComplicationMonitor_start__block_invoke_2;
    v15[3] = &unk_27856F1C8;
    objc_copyWeak(&v16, &location);
    v8 = MEMORY[0x22AA6AF50](v15);
    v9 = [(_DKMonitor *)self queue];
    notify_register_dispatch("com.apple.ClockKit.activeComplicationsChangedNotification", self->_tokens, v9, v8);

    v10 = [(_DKMonitor *)self queue];
    notify_register_dispatch("com.apple.sockpuppet.complications.updated", &self->_tokens[1], v10, v8);

    v11 = [MEMORY[0x277D2BCF8] sharedInstance];
    v12 = [v11 getPairedDevices];

    if ([v12 count])
    {
      v13 = [(_DKMonitor *)self lastUpdate];

      if (!v13)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __31___DKComplicationMonitor_start__block_invoke_3;
        v14[3] = &unk_27856F060;
        v14[4] = self;
        [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:v14];
      }
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)stop
{
  if ([(_DKMonitor *)self instantMonitorNeedsDeactivation])
  {
    notify_cancel(self->_tokens[0]);
    self->_tokens[0] = -1;
    notify_cancel(self->_tokens[1]);
    self->_tokens[1] = -1;
    timer = self->_timer;

    dispatch_source_cancel(timer);
  }
}

- (void)fetchActiveComplications:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D2BCF8] sharedInstance];
  v6 = [v5 getActivePairedDevice];

  if (v6)
  {
    NRWatchOSVersionForRemoteDevice();
    IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
    if (IsGreaterThanOrEqual)
    {
      v8 = @"CLKActiveComplications";
    }

    else
    {
      v8 = @"activeComplications";
    }

    if (IsGreaterThanOrEqual)
    {
      v9 = @"com.apple.ClockKit.activeComplications";
    }

    else
    {
      v9 = @"com.apple.sockpuppet.activeComplications";
    }

    v10 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v9 pairedDevice:v6];
    v11 = [v10 synchronize];
    v12 = [v10 objectForKey:v8];

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__1;
    v19[4] = __Block_byref_object_dispose__1;
    v20 = objc_opt_new();
    v13 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51___DKComplicationMonitor_fetchActiveComplications___block_invoke;
    v15[3] = &unk_27856F288;
    v15[4] = self;
    v18 = v19;
    v14 = v12;
    v16 = v14;
    v17 = v4;
    [v13 enumerateInstalledApplicationsOnPairedDevice:v6 withBlock:v15];

    _Block_object_dispose(v19, 8);
  }

  else
  {
    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8]);
  }
}

- (void)asyncUpdateCurrentActiveComplicationsContext
{
  dispatch_suspend(self->_timer);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70___DKComplicationMonitor_asyncUpdateCurrentActiveComplicationsContext__block_invoke;
  v3[3] = &unk_27856F2B0;
  v3[4] = self;
  [(_DKComplicationMonitor *)self fetchActiveComplications:v3];
}

@end