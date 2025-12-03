@interface DTKPTriggerPMI
- (int)setPMIEventNamed:(id)named threshold:(unint64_t)threshold error:(id *)error;
- (int)start:(id *)start;
- (int)stop:(id *)stop;
- (unint64_t)_recordConfigWordsIntoBuffer:(unint64_t *)buffer;
@end

@implementation DTKPTriggerPMI

- (unint64_t)_recordConfigWordsIntoBuffer:(unint64_t *)buffer
{
  counterAllocator = [(DTKPTrigger *)self counterAllocator];
  v5 = [counterAllocator recordConfigWordsIntoBuffer:buffer];

  return v5;
}

- (int)setPMIEventNamed:(id)named threshold:(unint64_t)threshold error:(id *)error
{
  namedCopy = named;
  counterAllocator = [(DTKPTrigger *)self counterAllocator];
  v10 = [counterAllocator setPMIEventName:namedCopy pmiThreshold:threshold error:error];

  if (v10)
  {
    v11 = 0;
    threshold = 0;
  }

  else
  {
    v11 = namedCopy;
  }

  pmiEventNameOrAlias = self->_pmiEventNameOrAlias;
  self->_pmiEventNameOrAlias = v11;

  self->_thresholdCount = threshold;
  return v10;
}

- (int)start:(id *)start
{
  v43 = *MEMORY[0x277D85DE8];
  lock = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(lock, 0xFFFFFFFFFFFFFFFFLL);

  v6 = sDTKPLogClient;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    triggerID = [(DTKPTrigger *)self triggerID];
    uTF8String = [(NSString *)self->_pmiEventNameOrAlias UTF8String];
    thresholdCount = self->_thresholdCount;
    *buf = 67109890;
    v36 = triggerID;
    v37 = 2080;
    v38 = uTF8String;
    v39 = 2048;
    v40 = thresholdCount;
    v41 = 2048;
    pmcEventCount = [(DTKPTrigger *)self pmcEventCount];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_DEBUG, "DTKPTriggerPMI: Starting PMI Trigger (%d). Event: %s. Threshold: %lld. PMCs: %lu", buf, 0x26u);
  }

  collectKernelStacks = [(DTKPTrigger *)self collectKernelStacks];
  collectUserStacks = [(DTKPTrigger *)self collectUserStacks];
  requestsPMCSampling = [(DTKPTrigger *)self requestsPMCSampling];
  if (collectKernelStacks)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  if (collectUserStacks)
  {
    v13 |= 8u;
  }

  if (requestsPMCSampling)
  {
    v14 = 33;
  }

  else
  {
    v14 = 1;
  }

  [(DTKPTrigger *)self setSamplers:v14 | v13];
  [(DTKPTrigger *)self setActionID:[(DTKPTrigger *)self _actionAlloc]];
  if (![(DTKPTrigger *)self actionID])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error allocating a PMI trigger action"];
    v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", start, 0xFFFFFFFFLL, v21);

    goto LABEL_28;
  }

  [(DTKPTrigger *)self actionID];
  [(DTKPTrigger *)self triggerID];
  kperf_action_userdata_set();
  recountConfiguration = [(DTKPTrigger *)self recountConfiguration];
  v16 = recountConfiguration == 0;

  if (v16)
  {
    counterAllocator = [(DTKPTrigger *)self counterAllocator];
    v20 = [counterAllocator configurePMIActionID:-[DTKPTrigger actionID](self error:{"actionID"), start}];

    if (v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
    recountConfiguration2 = [(DTKPTrigger *)self recountConfiguration];
    v18 = [XRBottlenecksAnalysisModeManager applyWithConfig:recountConfiguration2 actionID:[(DTKPTrigger *)self actionID]];

    if (!v18)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error applying recount configuration"];
      v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", start, 0xFFFFFFFFLL, v19);

      goto LABEL_28;
    }
  }

  recountConfiguration3 = [(DTKPTrigger *)self recountConfiguration];
  v24 = recountConfiguration3 == 0;

  if (v24 && (-[DTKPTrigger counterAllocator](self, "counterAllocator"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 configureHardwarePMIPeriods:start], v27, v28))
  {
    if (start)
    {
      localizedDescription = [*start localizedDescription];
    }

    else
    {
      localizedDescription = &stru_285A19CB8;
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error setting the PMI periods: %@", localizedDescription];
    v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", start, v28, v31);
  }

  else
  {
    v25 = [(DTKPTrigger *)self _setSamplers:[(DTKPTrigger *)self samplers] forAction:[(DTKPTrigger *)self actionID]];
    if (v25)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error setting the PMI trigger samplers (0x%x)", -[DTKPTrigger samplers](self, "samplers")];
      v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", start, v25, v26);
    }

    else
    {
      v30 = [(DTKPTrigger *)self _setFilterByPid:[(DTKPTrigger *)self targetPid] forAction:[(DTKPTrigger *)self actionID]];
      if (v30)
      {
        v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", start, v30, @"Error configuring the Time trigger task filter");
      }

      else
      {
        v20 = 0;
      }
    }
  }

LABEL_28:
  lock2 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(lock2);

  v33 = *MEMORY[0x277D85DE8];
  return v20;
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

  lock2 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(lock2);

  return 0;
}

@end