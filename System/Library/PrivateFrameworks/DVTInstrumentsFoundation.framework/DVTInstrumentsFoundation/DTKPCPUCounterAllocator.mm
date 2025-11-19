@interface DTKPCPUCounterAllocator
- (BOOL)_eventExists:(id)a3 eventOut:(id *)a4;
- (BOOL)_matchesPMIEvent:(id)a3;
- (DTKPCPUCounterAllocator)initWithCPU:(id)a3 error:(id *)a4;
- (id)_counterNameForEvent:(id)a3 error:(id *)a4;
- (int)_setErrorFromKpepError:(int)a3 eventName:(id)a4 error:(id *)a5;
- (int)addPMCEventName:(id)a3 error:(id *)a4;
- (int)configureHardwareCounters:(id *)a3;
- (int)configureHardwarePMIPeriods:(id *)a3;
- (int)configurePMIActionID:(unsigned int)a3 error:(id *)a4;
- (int)forceCounters:(id *)a3;
- (int)setPMIEventName:(id)a3 pmiThreshold:(unint64_t)a4 error:(id *)a5;
- (int)startHardwareCounters:(id *)a3;
- (int)stopHardwareCounters:(id *)a3;
- (int)unforceCounters:(id *)a3;
- (unint64_t)_counterIndexForEvent:(id)a3 absolute:(BOOL)a4 error:(id *)a5;
- (unint64_t)recordConfigWordsIntoBuffer:(unint64_t *)a3;
- (unsigned)_getCurrentClasses:(id *)a3;
- (unsigned)kpcClasses;
- (void)_enumerateAllocatedPMCsWithIndex:(id)a3;
- (void)dealloc;
- (void)enumerateAllocatedPMCs:(id)a3;
@end

@implementation DTKPCPUCounterAllocator

- (DTKPCPUCounterAllocator)initWithCPU:(id)a3 error:(id *)a4
{
  v7 = a3;
  v32.receiver = self;
  v32.super_class = DTKPCPUCounterAllocator;
  v8 = [(DTKPCPUCounterAllocator *)&v32 init];
  v9 = v8;
  if (v8)
  {
    if (!v7)
    {
      sub_24802FCD4();
    }

    objc_storeStrong(&v8->_cpu, a3);
    v10 = objc_opt_new();
    eventRecords = v9->_eventRecords;
    v9->_eventRecords = v10;

    [(DTKPCPU *)v9->_cpu kpepDB];
    v12 = kpep_config_create();
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0x277CCACA8];
      v15 = [(DTKPCPU *)v9->_cpu name];
      v16 = [v14 stringWithFormat:@"Failed to create a kpep config for %@: %d", v15, v13];
      DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a4, 4294967289, v16);
    }

    else
    {
      kpepConfig = v9->_kpepConfig;
      v18 = kpep_config_force_counters();
      if (v18)
      {
        v19 = v18;
        v20 = MEMORY[0x277CCACA8];
        v21 = [(DTKPCPU *)v9->_cpu name];
        [v20 stringWithFormat:@"Failed to force on all counters for %@: %d", v21, v19];
      }

      else
      {
        v9->_fixedCounterCount = 0;
        [(DTKPCPU *)v9->_cpu kpepDB];
        v22 = kpep_db_counters_count();
        if (v22)
        {
          v23 = v22;
          v24 = MEMORY[0x277CCACA8];
          v21 = [(DTKPCPU *)v9->_cpu name];
          [v24 stringWithFormat:@"Failed to get fixed counter count for %@: %d", v21, v23];
        }

        else
        {
          v9->_configurableCounterCount = 0;
          [(DTKPCPU *)v9->_cpu kpepDB];
          v25 = kpep_db_counters_count();
          if (!v25)
          {
            pmiEvent = v9->_pmiEvent;
            v9->_eventsUniqueIds = 0;
            v9->_pmiEvent = 0;
            goto LABEL_13;
          }

          v26 = v25;
          v27 = MEMORY[0x277CCACA8];
          v21 = [(DTKPCPU *)v9->_cpu name];
          [v27 stringWithFormat:@"Failed to get configurable counter count for %@: %d", v21, v26];
        }
      }
      v28 = ;
      DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a4, 4294967289, v28);

      v29 = v9->_kpepConfig;
      kpep_config_free();
      v9->_kpepConfig = 0;
    }

    pmiEvent = v9;
    v9 = 0;
LABEL_13:
  }

  return v9;
}

- (void)dealloc
{
  if (self->_kpepConfig)
  {
    kpep_config_free();
    self->_kpepConfig = 0;
  }

  v3.receiver = self;
  v3.super_class = DTKPCPUCounterAllocator;
  [(DTKPCPUCounterAllocator *)&v3 dealloc];
}

- (unsigned)_getCurrentClasses:(id *)a3
{
  kpepConfig = self->_kpepConfig;
  v5 = kpep_config_kpc_classes();
  if (!v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to access kpc_classes: %d", v5];
  v7 = -1;
  DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a3, 0xFFFFFFFFLL, v6);

  return v7;
}

- (unint64_t)_counterIndexForEvent:(id)a3 absolute:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!v8)
  {
    sub_24802FD00();
  }

  v9 = v8;
  v10 = [v8 hwIdx];
  v11 = v21 - ((8 * [(DTKPCPUCounterAllocator *)self _hardwareEventCount]+ 15) & 0xFFFFFFFFFFFFFFF0);
  kpepConfig = self->_kpepConfig;
  v13 = kpep_config_kpc_map();
  if (v13)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to access kpc_map: %d", v13];
    DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a5, 0xFFFFFFFFLL, v14);
  }

  else
  {
    v15 = *&v11[8 * v10];
    if (!v6)
    {
      goto LABEL_6;
    }

    v21[0] = 0;
    v18 = [(DTKPCPUCounterAllocator *)self _getCurrentClasses:v21];
    v19 = v21[0];
    v14 = v19;
    if (!v19)
    {
      if ((v18 & 1) == 0)
      {
        v15 += self->_fixedCounterCount;
      }

      goto LABEL_5;
    }

    if (a5)
    {
      v20 = v19;
      *a5 = v14;
    }
  }

  v15 = -1;
LABEL_5:

LABEL_6:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_counterNameForEvent:(id)a3 error:(id *)a4
{
  v5 = [(DTKPCPUCounterAllocator *)self _counterIndexForEvent:a3 absolute:1 error:a4];
  if (v5 == -1)
  {
    if (a4 && *a4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24802FD2C(a4);
    }

    v6 = @"PMC<X>";
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PMC%zu", v5];
  }

  return v6;
}

- (BOOL)_eventExists:(id)a3 eventOut:(id *)a4
{
  v6 = a3;
  v7 = [(DTKPCPU *)self->_cpu eventFromNameOrAlias:v6];
  v8 = v7;
  if (v7)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_247FE4034;
    v20 = sub_247FE4044;
    v21 = 0;
    eventRecords = self->_eventRecords;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247FE404C;
    v12[3] = &unk_278EF3CE0;
    v13 = v7;
    v14 = &v22;
    v15 = &v16;
    [(NSMutableArray *)eventRecords enumerateObjectsUsingBlock:v12];
    if (a4)
    {
      *a4 = v17[5];
    }

    v10 = *(v23 + 24);

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)_matchesPMIEvent:(id)a3
{
  v4 = a3;
  pmiEvent = self->_pmiEvent;
  if (pmiEvent)
  {
    v6 = [(DTKPCPUCounterAllocatorRecord *)pmiEvent eventOrAliasName];
    if ([v6 isEqualToString:v4])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent eventName];
      v7 = [v8 isEqualToString:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_setErrorFromKpepError:(int)a3 eventName:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = kpep_strerror();
  if (v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Error for event %@: %s", v7, v8];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  }
  v9 = ;
  v10 = v9;
  if (a5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a5 = [v11 errorWithDomain:@"DTKPCPUCounterAllocator" code:-1 userInfo:v12];
  }

  if (a3 <= 11)
  {
    if (a3 == 1)
    {
      v13 = -4;
      goto LABEL_18;
    }

    if (a3 == 11)
    {
      v13 = -801;
      goto LABEL_18;
    }

LABEL_17:
    v13 = -1;
    goto LABEL_18;
  }

  if (a3 == 14)
  {
    v13 = -806;
    goto LABEL_18;
  }

  if (a3 == 13)
  {
    v13 = -805;
    goto LABEL_18;
  }

  if (a3 != 12)
  {
    goto LABEL_17;
  }

  v13 = -804;
LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int)setPMIEventName:(id)a3 pmiThreshold:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  pmiEvent = self->_pmiEvent;
  if (!pmiEvent)
  {
    v39 = 0;
    v14 = [(DTKPCPUCounterAllocator *)self _eventExists:v8 eventOut:&v39];
    v15 = v39;
    v16 = v15;
    if (v14)
    {
      kpepConfig = self->_kpepConfig;
      [v15 hwIdx];
      v18 = kpep_config_remove_event();
      if (v18)
      {
        v13 = [(DTKPCPUCounterAllocator *)self _setErrorFromKpepError:v18 eventName:v8 error:a5];
LABEL_17:

        goto LABEL_18;
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_247FE46C4;
      v35[3] = &unk_278EF3D08;
      v36 = v16;
      v37 = self;
      v38 = a5;
      [(DTKPCPUCounterAllocator *)self enumerateAllocatedPMCs:v35];
      --self->_eventsUniqueIds;
    }

    v19 = [(DTKPCPU *)self->_cpu eventFromNameOrAlias:v8];
    v20 = v19;
    if (v19)
    {
      if (![v19 kpepEvent])
      {
        sub_24802FDF4();
      }

      v34 = [v20 kpepEvent];
      v21 = self->_kpepConfig;
      v22 = kpep_config_add_event_trigger();
      if (v22)
      {
        v23 = v22;
        v24 = [v20 aliasOrName];
        v13 = [(DTKPCPUCounterAllocator *)self _setErrorFromKpepError:v23 eventName:v24 error:a5];
      }

      else
      {
        if (kpep_event_name())
        {
          sub_24802FDC8();
        }

        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:0];
        v27 = [DTKPCPUCounterAllocatorRecord alloc];
        v28 = [v20 aliasOrName];
        ++self->_eventsUniqueIds;
        v29 = [(DTKPCPUCounterAllocatorRecord *)v27 initWithName:v26 nameOrAlias:v28 counterName:@"TBD" kpepEvent:v34 isPMI:1 hwIdx:?];
        v30 = self->_pmiEvent;
        self->_pmiEvent = v29;

        v31 = [(DTKPCPUCounterAllocator *)self _counterNameForEvent:self->_pmiEvent error:a5];
        [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent setCounterName:v31];

        self->_pmiThreshold = a4;
        if (v14)
        {
          [v16 setHwIdx:{-[DTKPCPUCounterAllocatorRecord hwIdx](self->_pmiEvent, "hwIdx")}];
          v32 = [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent counterName];
          [v16 setCounterName:v32];

          [v16 setKpepEvent:0];
        }

        v13 = 0;
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Event not found: %@'", v8];
      v13 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a5, 4294966495, v25);
    }

    goto LABEL_17;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [(DTKPCPUCounterAllocatorRecord *)pmiEvent eventOrAliasName];
  v12 = [v10 stringWithFormat:@"Cannot changed the allocated PMI event from '%@' to '%@'", v11, v8];
  v13 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a5, 4294966493, v12);

LABEL_18:
  return v13;
}

- (int)addPMCEventName:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(DTKPCPUCounterAllocator *)self _eventExists:v6 eventOut:0])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"The event named '%@' has already been added.", v6];
    v8 = DTKPSetErrorAndOrLogWithFileAndLine(0, "DTKPCPUCounterAllocator", a4, 4294966494, v7);
  }

  else
  {
    if ([(DTKPCPUCounterAllocator *)self _matchesPMIEvent:v6])
    {
      eventRecords = self->_eventRecords;
      v10 = [DTKPCPUCounterAllocatorRecord alloc];
      v11 = [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent eventName];
      v12 = [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent eventName];
      v13 = [(DTKPCPUCounterAllocatorRecord *)v10 initWithName:v11 nameOrAlias:v6 counterName:v12 kpepEvent:0 isPMI:0 hwIdx:[(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent hwIdx]];
      [(NSMutableArray *)eventRecords addObject:v13];

      v8 = 0;
      goto LABEL_6;
    }

    v15 = [(DTKPCPU *)self->_cpu eventFromNameOrAlias:v6];
    v7 = v15;
    if (v15)
    {
      if (![v15 kpepEvent])
      {
        sub_24802FE20();
      }

      v29 = [v7 kpepEvent];
      kpepConfig = self->_kpepConfig;
      v17 = kpep_config_add_event();
      if (v17)
      {
        v18 = v17;
        v19 = [v7 name];
        v8 = [(DTKPCPUCounterAllocator *)self _setErrorFromKpepError:v18 eventName:v19 error:a4];
      }

      else
      {
        v21 = kpep_event_name();
        if (v21)
        {
          v22 = v21;
          v23 = [v7 name];
          v8 = [(DTKPCPUCounterAllocator *)self _setErrorFromKpepError:v22 eventName:v23 error:a4];
        }

        else
        {
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:0];
          v24 = [DTKPCPUCounterAllocatorRecord alloc];
          v25 = [v7 aliasOrName];
          ++self->_eventsUniqueIds;
          v26 = [(DTKPCPUCounterAllocatorRecord *)v24 initWithName:v23 nameOrAlias:v25 counterName:@"TBD" kpepEvent:v29 isPMI:0 hwIdx:?];

          [(NSMutableArray *)self->_eventRecords addObject:v26];
          v27 = [(NSMutableArray *)self->_eventRecords lastObject];
          v28 = [(DTKPCPUCounterAllocator *)self _counterNameForEvent:v27 error:a4];
          [(DTKPCPUCounterAllocatorRecord *)v26 setCounterName:v28];

          v8 = 0;
        }
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Event not found: %@'", v6];
      v8 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a4, 4294966495, v20);
    }
  }

LABEL_6:
  return v8;
}

- (void)_enumerateAllocatedPMCsWithIndex:(id)a3
{
  v4 = a3;
  eventRecords = self->_eventRecords;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE4AFC;
  v7[3] = &unk_278EF3D30;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)eventRecords enumerateObjectsUsingBlock:v7];
}

- (void)enumerateAllocatedPMCs:(id)a3
{
  v4 = a3;
  eventRecords = self->_eventRecords;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE4BA4;
  v7[3] = &unk_278EF3D30;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)eventRecords enumerateObjectsUsingBlock:v7];
}

- (unsigned)kpcClasses
{
  kpepConfig = self->_kpepConfig;
  if (kpep_config_kpc_classes())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)recordConfigWordsIntoBuffer:(unint64_t *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247FE4CC8;
  v5[3] = &unk_278EF3D58;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [(DTKPCPUCounterAllocator *)self _enumerateAllocatedPMCsWithIndex:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)configureHardwareCounters:(id *)a3
{
  kpepConfig = self->_kpepConfig;
  if (!kpep_config_kpc_classes())
  {
    return 0;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"configureHardwarePMIPeriods: Failed to get kpc classes: %s.", kpep_strerror()];
  v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a3, 4294967288, v5);

  return v6;
}

- (int)configureHardwarePMIPeriods:(id *)a3
{
  kpepConfig = self->_kpepConfig;
  if (kpep_config_kpc_classes())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configureHardwarePMIPeriods: Failed to get kpc classes: %s.", kpep_strerror()];
    v6 = LABEL_5:;
    v7 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a3, 4294967288, v6);
    goto LABEL_6;
  }

  [(DTKPCPU *)self->_cpu kpepDB];
  if (kpep_db_counters_count())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configureHardwarePMIPeriods: Failed to get kpc period number: %s.", kpep_strerror()];
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277CBEB28] dataWithLength:0];
  v9 = self->_kpepConfig;
  [v6 mutableBytes];
  if (kpep_config_kpc_periods())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configureHardwarePMIPeriods: Failed to get kpc periods: %s.", kpep_strerror()];
  }

  else
  {
    [v6 mutableBytes];
    if (!kpc_set_period())
    {
      v7 = 0;
      goto LABEL_6;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = __error();
    [v10 stringWithFormat:@"configureHardwarePMIPeriods: Failed to set kpc PMI period: %s.", strerror(*v11)];
  }
  v12 = ;
  v7 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a3, 4294967288, v12);

LABEL_6:
  return v7;
}

- (int)configurePMIActionID:(unsigned int)a3 error:(id *)a4
{
  kpepConfig = self->_kpepConfig;
  if (kpep_config_kpc_classes())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configurePMIActionID: Failed to get kpc classes: %s.", kpep_strerror()];
    v8 = LABEL_5:;
    v9 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a4, 4294967288, v8);
    goto LABEL_6;
  }

  [(DTKPCPU *)self->_cpu kpepDB];
  if (kpep_db_counters_count())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configurePMIActionID: Failed to get kpc period number: %s.", kpep_strerror()];
    goto LABEL_5;
  }

  v11 = [(DTKPCPUCounterAllocator *)self allocatedPMIRecord];
  if (!v11)
  {
    sub_24802FED8();
  }

  v8 = v11;
  v12 = [(DTKPCPUCounterAllocator *)self _counterIndexForEvent:v11 absolute:0 error:a4];
  v13 = [MEMORY[0x277CBEB28] dataWithLength:0];
  *([v13 mutableBytes] + 4 * v12) = a3;
  if (kpc_set_actionid())
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = __error();
    v16 = [v14 stringWithFormat:@"configurePMIActionID: Failed to set kpc PMI period: %s.", strerror(*v15)];
    v9 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a4, 4294967288, v16);
  }

  else
  {
    v9 = 0;
  }

LABEL_6:
  return v9;
}

- (int)forceCounters:(id *)a3
{
  result = kpc_force_all_ctrs_set();
  if (result)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to force all hardware CPU counters: %d.", *__error()];
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a3, 4294966489, v5);

    return v6;
  }

  return result;
}

- (int)unforceCounters:(id *)a3
{
  result = kpc_force_all_ctrs_set();
  if (result)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to unforce all hardware CPU counters: %d.", *__error()];
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a3, 4294966487, v5);

    return v6;
  }

  return result;
}

- (int)startHardwareCounters:(id *)a3
{
  [(DTKPCPUCounterAllocator *)self kpcClasses];
  result = kpc_set_counting();
  if (result)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to start kpc counting: %d.", *__error()];
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a3, 4294967288, v5);

    return v6;
  }

  return result;
}

- (int)stopHardwareCounters:(id *)a3
{
  result = kpc_set_counting();
  if (result)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to stop kpc counting: %d.", *__error()];
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", a3, 4294967288, v5);

    return v6;
  }

  return result;
}

@end