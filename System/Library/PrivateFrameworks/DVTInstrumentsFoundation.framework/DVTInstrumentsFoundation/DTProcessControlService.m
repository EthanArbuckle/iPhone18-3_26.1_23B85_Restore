@interface DTProcessControlService
+ (void)registerCapabilities:(id)a3;
- (DTProcessControlService)initWithChannel:(id)a3;
- (id)isPidDebuggable:(id)a3;
- (id)launchSuspendedProcessWithDevicePath:(id)a3 bundleIdentifier:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7;
- (id)requestDisableMemoryLimitsForPid:(int)a3;
- (void)_performMemoryWarningForPid:(int)a3;
- (void)resumePid:(id)a3;
- (void)sendProcessControlEvent:(id)a3 toPid:(id)a4;
- (void)sendSignal:(id)a3 toPid:(id)a4;
- (void)startObservingPid:(id)a3;
- (void)stopObservingPid:(id)a3;
- (void)suspendPid:(id)a3;
- (void)watchOutputFileDescriptor:(int)a3 forPid:(int)a4;
- (void)watchOutputFileName:(id)a3 directory:(id)a4 forPid:(int)a5;
@end

@implementation DTProcessControlService

+ (void)registerCapabilities:(id)a3
{
  v4 = a3;
  [v4 publishCapability:@"com.apple.instruments.server.services.processcontrol.capability.signal" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.processcontrol.capability.memorylimits" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.processcontrol.capability.viewdebuggingutils" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.processcontrol.capability.isdebuggable" withVersion:1 forClass:a1];
}

- (DTProcessControlService)initWithChannel:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DTProcessControlService;
  v5 = [(DTXService *)&v19 initWithChannel:v4];
  if (v5)
  {
    v6 = dispatch_queue_create("process death queue", 0);
    deathNoteQueue = v5->_deathNoteQueue;
    v5->_deathNoteQueue = v6;

    v8 = dispatch_queue_create("I/O redirection queue", MEMORY[0x277D85CD8]);
    synchronousRedirectionQueue = v5->_synchronousRedirectionQueue;
    v5->_synchronousRedirectionQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pids = v5->_pids;
    v5->_pids = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sources = v5->_sources;
    v5->_sources = v12;

    v14 = objc_opt_new();
    activeIODispatchSources = v5->_activeIODispatchSources;
    v5->_activeIODispatchSources = v14;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247FAF59C;
    v17[3] = &unk_278EF1070;
    v18 = v5;
    [v4 registerDisconnectHandler:v17];
  }

  return v5;
}

- (void)startObservingPid:(id)a3
{
  v4 = a3;
  v5 = [v4 intValue];
  deathNoteQueue = self->_deathNoteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FAF784;
  block[3] = &unk_278EF2898;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_sync(deathNoteQueue, block);
}

- (void)stopObservingPid:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableArray *)self->_pids indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSMutableArray *)self->_sources objectAtIndex:v4];
    dispatch_source_cancel(v5);
  }

  v6 = [(NSMutableDictionary *)self->_activeIODispatchSources objectForKeyedSubscript:v8];
  v7 = v6;
  if (v6)
  {
    dispatch_source_cancel(v6);
  }
}

- (id)isPidDebuggable:(id)a3
{
  name = 0;
  v3 = MEMORY[0x277D85F48];
  v4 = task_for_pid(*MEMORY[0x277D85F48], [a3 intValue], &name);
  v5 = name;
  if (name)
  {
    mach_port_deallocate(*v3, name);
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  v7 = !v6;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];

  return v8;
}

- (void)resumePid:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a3 intValue];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  if (v3 == getpid())
  {
    goto LABEL_12;
  }

  if (!DTProcessIsSigStopped(v4))
  {
    goto LABEL_7;
  }

  if (kill(v4, 19))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      v9 = 67109378;
      v10 = v4;
      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to resume pid %d with SIGCONT (%s), will attempt task_resume() if authorized", &v9, 0x12u);
    }

LABEL_7:
    v7 = [DTInstrumentServer taskForPid:v4];
    if (v7 - 1 >= 0xFFFFFFFE && sub_247FAF688() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      v10 = v4;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "no task port available to resume pid %d with task_resume()", &v9, 8u);
    }

    task_resume(v7);
    mach_port_deallocate(*MEMORY[0x277D85F48], v7);
    goto LABEL_12;
  }

  if (sub_247FAF688() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = 67109120;
    v10 = v4;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sent SIGCONT to pid %d", &v9, 8u);
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)suspendPid:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [a3 intValue];
  if (!v3 || (v4 = v3, v3 == getpid()))
  {
LABEL_3:
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = [DTInstrumentServer taskForPid:v4];
  if (v6 - 1 >= 0xFFFFFFFE)
  {
    if (sub_247FAF688() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 67109120;
      v13 = v4;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "attempting suspend via SIGSTOP for pid %d", &v12, 8u);
    }

    if (kill(v4, 17) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = __error();
      v11 = strerror(*v10);
      v12 = 67109378;
      v13 = v4;
      v14 = 2080;
      v15 = v11;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to suspend pid %d with SIGSTOP: %s", &v12, 0x12u);
    }

    goto LABEL_3;
  }

  v7 = v6;
  task_suspend(v6);
  v8 = *MEMORY[0x277D85F48];
  v9 = *MEMORY[0x277D85DE8];

  mach_port_deallocate(v8, v7);
}

- (id)launchSuspendedProcessWithDevicePath:(id)a3 bundleIdentifier:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7
{
  v7 = MEMORY[0x277CBEAD8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 raise:@"DTProcessControlConcreteImplementationRequiredException" format:{@"launchSuspendedProcessWithDevicePath:bundleIdentifier:environment:arguments: not implemented in %@; subclass and override.", v9}];

  return 0;
}

- (void)sendSignal:(id)a3 toPid:(id)a4
{
  v14 = a3;
  v6 = [a4 intValue];
  if (v6)
  {
    v7 = v6;
    if (v6 != getpid())
    {
      v8 = [v14 intValue];
      HIDWORD(v10) = v8 - 9;
      LODWORD(v10) = v8 - 9;
      v9 = v10 >> 1;
      v11 = v9 > 5;
      v12 = (1 << v9) & 0x39;
      if (v11 || v12 == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"DTProcessControlServiceSendSignalException" format:{@"Unsupported signal %i", v8}];
      }

      if (kill(v7, v8) == -1)
      {
        if (v8 != 15 && v8 != 9 || *__error() != 3)
        {
          [MEMORY[0x277CBEAD8] raise:@"DTProcessControlServiceSendSignalException" format:{@"Failed to send signal %i to process %i: %i", v8, v7, *__error()}];
        }
      }

      else if (v8 == 15 || v8 == 9)
      {
        [(DTProcessControlService *)self cleanupPid:v7];
      }
    }
  }
}

- (void)_performMemoryWarningForPid:(int)a3
{
  v3 = a3;
  if (a3 >= 1)
  {
    if (sysctlbyname("kern.memorystatus_vm_pressure_send", 0, 0, &v3, 4uLL))
    {
      [MEMORY[0x277CBEAD8] raise:@"DTSpringBoardProcessControlServiceException" format:{@"failed to send memory warning to %d", v3}];
    }
  }
}

- (void)sendProcessControlEvent:(id)a3 toPid:(id)a4
{
  v6 = a4;
  v7 = DTProcessControlEventUnarchive(a3);
  v8 = [v6 intValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DTProcessControlService *)self _performMemoryWarningForPid:v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = [v9 objectForKey:@"PCEventType"];
      if ([v10 isEqualToString:@"MemoryEvent"])
      {
        [(DTProcessControlService *)self _performMemoryWarningForPid:v8];
      }

      else if ([v10 isEqualToString:@"MetricPayloadsExample"])
      {
        v11 = [v9 objectForKey:@"BundleIdentifier"];
        v12 = v11;
        if (v11 && [v11 length] && NSClassFromString(&cfstr_Mxsourcemanage.isa))
        {
          v13 = [MEMORY[0x277D28738] sharedManager];
          [v13 simulatePayloadDeliveryForClient:v12];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BundleID is nil or empty. Couldn't deliver dummy payload", v14, 2u);
        }
      }
    }
  }
}

- (id)requestDisableMemoryLimitsForPid:(int)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = memorystatus_control();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v9 = a3;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to disable active and inactive memory limits for pid %d (result = %d)", buf, 0xEu);
    }

    result = MEMORY[0x277CBEC28];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v9 = a3;
      v10 = 1024;
      v11 = 0;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Disabled active and inactive memory limits for pid %d (result = %d)", buf, 0xEu);
    }

    result = MEMORY[0x277CBEC38];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)watchOutputFileDescriptor:(int)a3 forPid:(int)a4
{
  if ((a3 & 0x80000000) == 0)
  {
    v6 = dup(a3);
    v7 = fcntl(v6, 3);
    if (v7 != -1)
    {
      if ((v7 & 4) == 0)
      {
        fcntl(v6, 4, v7 | 4u);
      }

      v8 = dispatch_source_create(MEMORY[0x277D85D28], v6, 0, self->_deathNoteQueue);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_247FB107C;
      handler[3] = &unk_278EF13C0;
      handler[4] = self;
      v25 = v6;
      v26 = a4;
      dispatch_source_set_cancel_handler(v8, handler);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_247FB1144;
      v20[3] = &unk_278EF2A50;
      v20[4] = self;
      v22 = v6;
      v23 = a4;
      v9 = v8;
      v21 = v9;
      dispatch_source_set_registration_handler(v9, v20);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_247FB1154;
      v16[3] = &unk_278EF2A50;
      v16[4] = self;
      v18 = v6;
      v19 = a4;
      v10 = v9;
      v17 = v10;
      dispatch_source_set_event_handler(v10, v16);
      deathNoteQueue = self->_deathNoteQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FB1164;
      block[3] = &unk_278EF2898;
      v15 = a4;
      block[4] = self;
      v14 = v10;
      v12 = v10;
      dispatch_sync(deathNoteQueue, block);
    }
  }
}

- (void)watchOutputFileName:(id)a3 directory:(id)a4 forPid:(int)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    synchronousRedirectionQueue = self->_synchronousRedirectionQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FB12B8;
    v11[3] = &unk_278EF28C0;
    v12 = v8;
    v13 = self;
    v15 = a5;
    v14 = v9;
    dispatch_async(synchronousRedirectionQueue, v11);
  }
}

@end