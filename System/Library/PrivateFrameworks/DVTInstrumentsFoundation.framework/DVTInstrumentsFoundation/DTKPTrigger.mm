@interface DTKPTrigger
+ (int)reinitializeKperf:(id *)kperf;
- (DTKPTrigger)initWithCounterAllocatorProvider:(id)provider recountConfiguration:(id)configuration;
- (int)_setFilterByPid:(int)pid forAction:(unsigned int)action;
- (int)_setSamplers:(unsigned int)samplers forAction:(unsigned int)action;
- (int)addPMCEventNamed:(id)named error:(id *)error;
- (unint64_t)pmcEventCount;
- (unsigned)_actionAlloc;
- (void)_actionDealloc:(unsigned int)dealloc;
- (void)dealloc;
@end

@implementation DTKPTrigger

- (DTKPTrigger)initWithCounterAllocatorProvider:(id)provider recountConfiguration:(id)configuration
{
  providerCopy = provider;
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = DTKPTrigger;
  v8 = [(DTKPTrigger *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_triggerID = atomic_fetch_add_explicit(dword_27EE84508, 1u, memory_order_relaxed) + 1;
    v10 = dispatch_semaphore_create(1);
    lock = v9->_lock;
    v9->_lock = v10;

    *&v9->_collectUserStacks = 0;
    v9->_targetPid = -3;
    v9->_counterAllocatorProvider = providerCopy;
    v9->_requestsPMCSampling = 0;
    objc_storeStrong(&v9->_recountConfiguration, configuration);
    [(DTKPTrigger *)v9 setSamplers:0];
  }

  return v9;
}

- (void)dealloc
{
  if (self->_actionID)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"A %@ trigger was deallocated without freeing up its action ID.", objc_opt_class()];
    DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTrigger", 0, 4294966893, v3);
  }

  v4.receiver = self;
  v4.super_class = DTKPTrigger;
  [(DTKPTrigger *)&v4 dealloc];
}

+ (int)reinitializeKperf:(id *)kperf
{
  if (qword_27EE84510)
  {
    free(qword_27EE84510);
    qword_27EE84510 = 0;
  }

  if (kperf_action_count_set())
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set the number of kperf actions: %d", *__error()];
    v5 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTrigger", kperf, 4294966894, v4);

    return v5;
  }

  else
  {
    qword_27EE84510 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
    if (qword_27EE84510)
    {
      byte_27EE84518 = 1;
      return 0;
    }

    else
    {

      return DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTrigger", kperf, 4294967096, @"Failed to allocate memory for kperf actions.");
    }
  }
}

- (unsigned)_actionAlloc
{
  if (byte_27EE84518 == 1)
  {
    v2 = 1;
    while ((*(qword_27EE84510 + v2) & 1) != 0)
    {
      if (v2++ >= 0x1F)
      {
        goto LABEL_6;
      }
    }

    *(qword_27EE84510 + v2) = 1;
  }

  else
  {
LABEL_6:
    LODWORD(v2) = 0;
  }

  return v2;
}

- (void)_actionDealloc:(unsigned int)dealloc
{
  v3 = dealloc - 1 > 0x1E || byte_27EE84518 == 0;
  if (v3 || (*(qword_27EE84510 + dealloc) & 1) == 0)
  {
    sub_2480305FC();
  }

  *(qword_27EE84510 + dealloc) = 0;
}

- (int)_setSamplers:(unsigned int)samplers forAction:(unsigned int)action
{
  v20 = *MEMORY[0x277D85DE8];
  if (action && (!byte_27EE84518 ? (v4 = 0) : (v4 = 32), v4 >= action))
  {
    v7 = kperf_action_samplers_set();
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults objectForKey:@"XRKPerfMaxFrames"];

    if (v9)
    {
      intValue = [v9 intValue];
    }

    else
    {
      intValue = 128;
    }

    v11 = kperf_action_ucallstack_depth_set();
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v15[0] = 67109634;
        v15[1] = intValue;
        v16 = 2112;
        selfCopy = self;
        v18 = 1024;
        v19 = v12;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to set the maximum user callstack depth to %u on trigger: %@ - error %d", v15, 0x18u);
      }
    }

    if (v7)
    {
      v5 = -1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = -4;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)_setFilterByPid:(int)pid forAction:(unsigned int)action
{
  if (!action)
  {
    return -4;
  }

  v4 = byte_27EE84518 ? 32 : 0;
  if (v4 < action)
  {
    return -4;
  }

  if (kperf_action_filter_set_by_pid())
  {
    return -6;
  }

  return 0;
}

- (int)addPMCEventNamed:(id)named error:(id *)error
{
  self->_requestsPMCSampling = 1;
  namedCopy = named;
  counterAllocator = [(DTKPTrigger *)self counterAllocator];
  LODWORD(error) = [counterAllocator addPMCEventName:namedCopy error:error];

  return error;
}

- (unint64_t)pmcEventCount
{
  queryCounterAllocator = [(DTKPTrigger *)self queryCounterAllocator];
  pmcEventCount = [queryCounterAllocator pmcEventCount];

  return pmcEventCount;
}

@end