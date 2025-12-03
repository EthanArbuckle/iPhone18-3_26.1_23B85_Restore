@interface DTKPTriggerKDebug
- (DTKPTriggerKDebug)initWithCounterAllocatorProvider:(id)provider recountConfiguration:(id)configuration;
- (int)start:(id *)start;
- (int)stop:(id *)stop;
- (void)addCodeSet:(id)set;
- (void)clearCodeSet;
@end

@implementation DTKPTriggerKDebug

- (DTKPTriggerKDebug)initWithCounterAllocatorProvider:(id)provider recountConfiguration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = DTKPTriggerKDebug;
  v4 = [(DTKPTrigger *)&v9 initWithCounterAllocatorProvider:provider recountConfiguration:configuration];
  v5 = v4;
  if (v4)
  {
    v4->_filterMode = 0;
    v6 = objc_opt_new();
    codeSet = v5->_codeSet;
    v5->_codeSet = v6;
  }

  return v5;
}

- (void)clearCodeSet
{
  v3 = objc_opt_new();
  codeSet = self->_codeSet;
  self->_codeSet = v3;
}

- (void)addCodeSet:(id)set
{
  setCopy = set;
  codeSet = [(DTKPTriggerKDebug *)self codeSet];
  [codeSet addCodeSet:setCopy];
}

- (int)start:(id *)start
{
  v32 = *MEMORY[0x277D85DE8];
  lock = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(lock, 0xFFFFFFFFFFFFFFFFLL);

  v6 = sDTKPLogClient;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    triggerID = [(DTKPTrigger *)self triggerID];
    filterMode = self->_filterMode;
    codeSet = [(DTKPTriggerKDebug *)self codeSet];
    v10 = [codeSet description];
    v27[0] = 67109634;
    v27[1] = triggerID;
    v28 = 1024;
    v29 = filterMode;
    v30 = 2080;
    uTF8String = [v10 UTF8String];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_DEBUG, "DTKPTriggerKDebug: Starting KDebug Trigger (%d). Filter Mode: %d. %s.", v27, 0x18u);
  }

  codeSet2 = [(DTKPTriggerKDebug *)self codeSet];
  kdebugCodes = [codeSet2 kdebugCodes];
  v13 = [kdebugCodes count] == 0;

  if (!v13)
  {
    collectKernelStacks = [(DTKPTrigger *)self collectKernelStacks];
    collectUserStacks = [(DTKPTrigger *)self collectUserStacks];
    if (collectKernelStacks)
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    if (collectUserStacks)
    {
      v17 = v16 | 8;
    }

    else
    {
      v17 = v16;
    }

    if ([(DTKPTrigger *)self pmcEventCount]|| ([(DTKPTrigger *)self recountConfiguration], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, !v19))
    {
      v17 |= 0x20u;
    }

    [(DTKPTrigger *)self setSamplers:v17 | 1u];
    [(DTKPTrigger *)self setActionID:[(DTKPTrigger *)self _actionAlloc]];
    if (![(DTKPTrigger *)self actionID])
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error allocating a Kdebug trigger action"];
      v22 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerKDebug", start, 0xFFFFFFFFLL, v23);

      goto LABEL_17;
    }

    codeSet3 = [(DTKPTriggerKDebug *)self codeSet];
    createKperfFilter = [codeSet3 createKperfFilter];

    [(DTKPTrigger *)self _setSamplers:v17 | 1u forAction:[(DTKPTrigger *)self actionID]];
    [(DTKPTrigger *)self _setFilterByPid:[(DTKPTrigger *)self targetPid] forAction:[(DTKPTrigger *)self actionID]];
    kperf_kdebug_filter_set();
    [(DTKPTrigger *)self actionID];
    kperf_kdebug_action_set();
    [DTKPKDebugCodeSet releaseKperfFilter:createKperfFilter];
  }

  v22 = 0;
LABEL_17:
  lock2 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(lock2);

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (int)stop:(id *)stop
{
  lock = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(lock, 0xFFFFFFFFFFFFFFFFLL);

  kperf_kdebug_filter_set();
  kperf_kdebug_action_set();
  if ([(DTKPTrigger *)self actionID])
  {
    [(DTKPTrigger *)self _actionDealloc:[(DTKPTrigger *)self actionID]];
    [(DTKPTrigger *)self setActionID:0];
  }

  lock2 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(lock2);

  return 0;
}

@end