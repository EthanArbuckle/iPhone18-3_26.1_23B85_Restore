@interface DTKPTriggerPMI
- (int)setPMIEventNamed:(id)a3 threshold:(unint64_t)a4 error:(id *)a5;
- (int)start:(id *)a3;
- (int)stop:(id *)a3;
- (unint64_t)_recordConfigWordsIntoBuffer:(unint64_t *)a3;
@end

@implementation DTKPTriggerPMI

- (unint64_t)_recordConfigWordsIntoBuffer:(unint64_t *)a3
{
  v4 = [(DTKPTrigger *)self counterAllocator];
  v5 = [v4 recordConfigWordsIntoBuffer:a3];

  return v5;
}

- (int)setPMIEventNamed:(id)a3 threshold:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(DTKPTrigger *)self counterAllocator];
  v10 = [v9 setPMIEventName:v8 pmiThreshold:a4 error:a5];

  if (v10)
  {
    v11 = 0;
    a4 = 0;
  }

  else
  {
    v11 = v8;
  }

  pmiEventNameOrAlias = self->_pmiEventNameOrAlias;
  self->_pmiEventNameOrAlias = v11;

  self->_thresholdCount = a4;
  return v10;
}

- (int)start:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = sDTKPLogClient;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(DTKPTrigger *)self triggerID];
    v8 = [(NSString *)self->_pmiEventNameOrAlias UTF8String];
    thresholdCount = self->_thresholdCount;
    *buf = 67109890;
    v36 = v7;
    v37 = 2080;
    v38 = v8;
    v39 = 2048;
    v40 = thresholdCount;
    v41 = 2048;
    v42 = [(DTKPTrigger *)self pmcEventCount];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_DEBUG, "DTKPTriggerPMI: Starting PMI Trigger (%d). Event: %s. Threshold: %lld. PMCs: %lu", buf, 0x26u);
  }

  v10 = [(DTKPTrigger *)self collectKernelStacks];
  v11 = [(DTKPTrigger *)self collectUserStacks];
  v12 = [(DTKPTrigger *)self requestsPMCSampling];
  if (v10)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v13 |= 8u;
  }

  if (v12)
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
    v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", a3, 0xFFFFFFFFLL, v21);

    goto LABEL_28;
  }

  [(DTKPTrigger *)self actionID];
  [(DTKPTrigger *)self triggerID];
  kperf_action_userdata_set();
  v15 = [(DTKPTrigger *)self recountConfiguration];
  v16 = v15 == 0;

  if (v16)
  {
    v22 = [(DTKPTrigger *)self counterAllocator];
    v20 = [v22 configurePMIActionID:-[DTKPTrigger actionID](self error:{"actionID"), a3}];

    if (v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = [(DTKPTrigger *)self recountConfiguration];
    v18 = [XRBottlenecksAnalysisModeManager applyWithConfig:v17 actionID:[(DTKPTrigger *)self actionID]];

    if (!v18)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error applying recount configuration"];
      v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", a3, 0xFFFFFFFFLL, v19);

      goto LABEL_28;
    }
  }

  v23 = [(DTKPTrigger *)self recountConfiguration];
  v24 = v23 == 0;

  if (v24 && (-[DTKPTrigger counterAllocator](self, "counterAllocator"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 configureHardwarePMIPeriods:a3], v27, v28))
  {
    if (a3)
    {
      v29 = [*a3 localizedDescription];
    }

    else
    {
      v29 = &stru_285A19CB8;
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error setting the PMI periods: %@", v29];
    v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", a3, v28, v31);
  }

  else
  {
    v25 = [(DTKPTrigger *)self _setSamplers:[(DTKPTrigger *)self samplers] forAction:[(DTKPTrigger *)self actionID]];
    if (v25)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error setting the PMI trigger samplers (0x%x)", -[DTKPTrigger samplers](self, "samplers")];
      v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", a3, v25, v26);
    }

    else
    {
      v30 = [(DTKPTrigger *)self _setFilterByPid:[(DTKPTrigger *)self targetPid] forAction:[(DTKPTrigger *)self actionID]];
      if (v30)
      {
        v20 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPTriggerPMI", a3, v30, @"Error configuring the Time trigger task filter");
      }

      else
      {
        v20 = 0;
      }
    }
  }

LABEL_28:
  v32 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_signal(v32);

  v33 = *MEMORY[0x277D85DE8];
  return v20;
}

- (int)stop:(id *)a3
{
  v4 = [(DTKPTrigger *)self lock];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

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