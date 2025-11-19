@interface DTKPTriggerKDebug
- (DTKPTriggerKDebug)initWithCounterAllocatorProvider:(id)a3 recountConfiguration:(id)a4;
- (int)start:(id *)a3;
- (int)stop:(id *)a3;
- (void)addCodeSet:(id)a3;
- (void)clearCodeSet;
@end

@implementation DTKPTriggerKDebug

- (DTKPTriggerKDebug)initWithCounterAllocatorProvider:(id)a3 recountConfiguration:(id)a4
{
  v9.receiver = self;
  v9.super_class = DTKPTriggerKDebug;
  v4 = [(DTKPTrigger *)&v9 initWithCounterAllocatorProvider:a3 recountConfiguration:a4];
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

- (void)addCodeSet:(id)a3
{
  v4 = a3;
  v5 = [(DTKPTriggerKDebug *)self codeSet];
  [v5 addCodeSet:v4];
}

- (int)start:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = sDTKPLogClient;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(DTKPTrigger *)self triggerID];
    filterMode = self->_filterMode;
    v9 = [(DTKPTriggerKDebug *)self codeSet];
    v10 = [v9 description];
    v27[0] = 67109634;
    v27[1] = v7;
    v28 = 1024;
    v29 = filterMode;
    v30 = 2080;
    v31 = [v10 UTF8String];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_DEBUG, "DTKPTriggerKDebug: Starting KDebug Trigger (%d). Filter Mode: %d. %s.", v27, 0x18u);
  }

  v11 = [(DTKPTriggerKDebug *)self codeSet];
  v12 = [v11 kdebugCodes];
  v13 = [v12 count] == 0;

  if (!v13)
  {
    v14 = [(DTKPTrigger *)self collectKernelStacks];
    v15 = [(DTKPTrigger *)self collectUserStacks];
    if (v14)
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
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
      v22 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerKDebug", a3, 0xFFFFFFFFLL, v23);

      goto LABEL_17;
    }

    v20 = [(DTKPTriggerKDebug *)self codeSet];
    v21 = [v20 createKperfFilter];

    [(DTKPTrigger *)self _setSamplers:v17 | 1u forAction:[(DTKPTrigger *)self actionID]];
    [(DTKPTrigger *)self _setFilterByPid:[(DTKPTrigger *)self targetPid] forAction:[(DTKPTrigger *)self actionID]];
    kperf_kdebug_filter_set();
    [(DTKPTrigger *)self actionID];
    kperf_kdebug_action_set();
    [DTKPKDebugCodeSet releaseKperfFilter:v21];
  }

  v22 = 0;
LABEL_17:
  v24 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(v24);

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (int)stop:(id *)a3
{
  v4 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  kperf_kdebug_filter_set();
  kperf_kdebug_action_set();
  if ([(DTKPTrigger *)self actionID])
  {
    [(DTKPTrigger *)self _actionDealloc:[(DTKPTrigger *)self actionID]];
    [(DTKPTrigger *)self setActionID:0];
  }

  v5 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(v5);

  return 0;
}

@end