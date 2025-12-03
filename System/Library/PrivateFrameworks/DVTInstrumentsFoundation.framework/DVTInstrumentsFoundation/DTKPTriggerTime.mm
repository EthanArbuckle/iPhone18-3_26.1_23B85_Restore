@interface DTKPTriggerTime
+ (int)reinitializeKperf:(id *)kperf;
+ (void)initialize;
- (DTKPTriggerTime)initWithCounterAllocatorProvider:(id)provider recountConfiguration:(id)configuration;
- (int)_configureTimer:(unsigned int)timer actionID:(unsigned int)d period:(unint64_t)period userData:(unsigned int)data;
- (int)start:(id *)start;
- (int)stop:(id *)stop;
- (unint64_t)_recordConfigWordsIntoBuffer:(unint64_t *)buffer;
- (unsigned)_timerIDAlloc;
- (void)_timerIDDdealloc:(unsigned int)ddealloc;
- (void)dealloc;
@end

@implementation DTKPTriggerTime

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    DTKPSetupLogging();
  }
}

- (DTKPTriggerTime)initWithCounterAllocatorProvider:(id)provider recountConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = DTKPTriggerTime;
  result = [(DTKPTrigger *)&v5 initWithCounterAllocatorProvider:provider recountConfiguration:configuration];
  if (result)
  {
    result->_sampleRate = 0;
    result->_profileEveryThread = 0;
    result->_timerID = -1;
  }

  return result;
}

- (void)dealloc
{
  if (self->_timerID != -1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"A %@ trigger was deallocated without freeing up its timer ID.", objc_opt_class()];
    DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerTime", 0, 4294966893, v3);
  }

  v4.receiver = self;
  v4.super_class = DTKPTriggerTime;
  [(DTKPTrigger *)&v4 dealloc];
}

+ (int)reinitializeKperf:(id *)kperf
{
  if (qword_27EE84258)
  {
    free(qword_27EE84258);
    qword_27EE84258 = 0;
    byte_27EE84260 = 0;
  }

  if (kperf_timer_count_set())
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set the number of kperf timers: %d", *__error()];
    kperfCopy2 = kperf;
    v6 = 4294966894;
LABEL_5:
    v7 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerTime", kperfCopy2, v6, v4);

    return v7;
  }

  qword_27EE84258 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
  if (!qword_27EE84258)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to allocate memory for kperf timers: %d.", *__error()];
    kperfCopy2 = kperf;
    v6 = 4294967096;
    goto LABEL_5;
  }

  byte_27EE84260 = 1;
  return 0;
}

- (unint64_t)_recordConfigWordsIntoBuffer:(unint64_t *)buffer
{
  counterAllocator = [(DTKPTrigger *)self counterAllocator];
  v5 = [counterAllocator recordConfigWordsIntoBuffer:buffer];

  return v5;
}

- (unsigned)_timerIDAlloc
{
  if (byte_27EE84260 == 1)
  {
    v2 = 0;
    while ((*(qword_27EE84258 + v2) & 1) != 0)
    {
      if (v2++ >= 7)
      {
        goto LABEL_6;
      }
    }

    *(qword_27EE84258 + v2) = 1;
  }

  else
  {
LABEL_6:
    LODWORD(v2) = -1;
  }

  return v2;
}

- (void)_timerIDDdealloc:(unsigned int)ddealloc
{
  if (ddealloc > 7 || !byte_27EE84260 || (*(qword_27EE84258 + ddealloc) & 1) == 0)
  {
    sub_24802CB98();
  }

  *(qword_27EE84258 + ddealloc) = 0;
}

- (int)_configureTimer:(unsigned int)timer actionID:(unsigned int)d period:(unint64_t)period userData:(unsigned int)data
{
  result = -4;
  if (timer <= 7)
  {
    if (byte_27EE84260)
    {
      kperf_ns_to_ticks();
      kperf_timer_action_set();
      kperf_timer_period_set();
      kperf_action_userdata_set();
      return 0;
    }
  }

  return result;
}

- (int)start:(id *)start
{
  v32 = *MEMORY[0x277D85DE8];
  lock = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(lock, 0xFFFFFFFFFFFFFFFFLL);

  v6 = sDTKPLogClient;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    triggerID = [(DTKPTrigger *)self triggerID];
    v28 = 2048;
    v29 = [(DTKPTriggerTime *)self sampleRate]/ 0x3E8;
    v30 = 2048;
    pmcEventCount = [(DTKPTrigger *)self pmcEventCount];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_DEBUG, "DTKPTriggerTime: Starting Time Trigger (%d). Period: %lld us. PMCs: %lu", buf, 0x1Cu);
  }

  collectKernelStacks = [(DTKPTrigger *)self collectKernelStacks];
  collectUserStacks = [(DTKPTrigger *)self collectUserStacks];
  if (collectKernelStacks)
  {
    v9 = 5;
  }

  else
  {
    v9 = 1;
  }

  if (collectUserStacks)
  {
    v10 = v9 | 8;
  }

  else
  {
    v10 = v9;
  }

  if ([(DTKPTrigger *)self pmcEventCount]|| ([(DTKPTrigger *)self recountConfiguration], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, !v12))
  {
    v10 = v10 | 0x20;
  }

  [(DTKPTrigger *)self setSamplers:v10];
  [(DTKPTrigger *)self setActionID:[(DTKPTrigger *)self _actionAlloc]];
  if ([(DTKPTrigger *)self actionID])
  {
    v13 = [(DTKPTrigger *)self _setSamplers:[(DTKPTrigger *)self samplers] forAction:[(DTKPTrigger *)self actionID]];
    if (v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error setting the Time trigger samplers (0x%x)", -[DTKPTrigger samplers](self, "samplers")];
      v15 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerTime", start, v13, v14);
    }

    else
    {
      v17 = [(DTKPTrigger *)self _setFilterByPid:[(DTKPTrigger *)self targetPid] forAction:[(DTKPTrigger *)self actionID]];
      if (v17)
      {
        v18 = @"Error configuring the Time trigger task filter";
      }

      else
      {
        _timerIDAlloc = [(DTKPTriggerTime *)self _timerIDAlloc];
        self->_timerID = _timerIDAlloc;
        if (_timerIDAlloc == -1)
        {
          v18 = @"Error allocating a Time trigger ID";
          v17 = 0xFFFFFFFFLL;
        }

        else
        {
          v17 = [(DTKPTriggerTime *)self _configureTimer:_timerIDAlloc actionID:[(DTKPTrigger *)self actionID] period:[(DTKPTriggerTime *)self sampleRate] userData:[(DTKPTrigger *)self triggerID]];
          if (!v17)
          {
            if ([(DTKPTriggerTime *)self profileEveryThread])
            {
              *buf = 1;
              if (sysctlbyname("kperf.lightweight_pet", 0, 0, buf, 4uLL))
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error enabling LPET mode: %d", *__error()];
                v15 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerTime", start, 4294967290, v23);

                goto LABEL_19;
              }

              timerID = self->_timerID;
              if (kperf_timer_pet_set())
              {
                v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error enabling the PET mode timer: %d", *__error()];
                v15 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerTime", start, 4294967290, v25);

                goto LABEL_19;
              }
            }

            v15 = 0;
            goto LABEL_19;
          }

          v18 = @"Error configuring the Time trigger action";
        }
      }

      v15 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerTime", start, v17, v18);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error allocating a Time trigger action"];
    v15 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerTime", start, 0xFFFFFFFFLL, v16);
  }

LABEL_19:
  lock2 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(lock2);

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (int)stop:(id *)stop
{
  lock = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(lock, 0xFFFFFFFFFFFFFFFFLL);

  if ([(DTKPTrigger *)self actionID])
  {
    [(DTKPTrigger *)self _actionDealloc:[(DTKPTrigger *)self actionID]];
    [(DTKPTrigger *)self setActionID:0];
  }

  if (self->_timerID != -1)
  {
    [(DTKPTriggerTime *)self _timerIDDdealloc:?];
    self->_timerID = -1;
  }

  lock2 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(lock2);

  return 0;
}

@end