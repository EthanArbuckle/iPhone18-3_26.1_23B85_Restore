@interface DTSysmonTapLocalDelegate
- (DTSysmonTapLocalDelegate)initWithConfig:(id)a3;
- (id)validateConfig;
- (void)_addCPUUsageToSample:(id)a3;
- (void)_addSample:(id)a3;
- (void)_createAttributesSample;
- (void)_handleSysmonCoalitionTable:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5;
- (void)_handleSysmonProcessTable:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5;
- (void)_handleSysmonSystemTable:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5;
- (void)_purgeOldSamplesForCurrentTime:(unint64_t)a3;
- (void)dealloc;
- (void)fetchDataForReason:(unint64_t)a3 block:(id)a4;
- (void)setTap:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation DTSysmonTapLocalDelegate

- (DTSysmonTapLocalDelegate)initWithConfig:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = DTSysmonTapLocalDelegate;
  v6 = [(DTSysmonTapLocalDelegate *)&v21 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      sub_248030228();
    }

    objc_storeStrong(&v6->_config, a3);
    v8 = [(DTSysmonTapConfig *)v7->_config pids];
    pidFilter = v7->_pidFilter;
    v7->_pidFilter = v8;

    v10 = [(DTTapConfig *)v7->_config bufferMode];
    v7->_isWindowed = v10 == 2;
    if (v10 == 2)
    {
      info = 0;
      mach_timebase_info(&info);
      v11 = [(DTTapConfig *)v7->_config windowSize];
      v12 = ((3 * v11) >> 1) * info.denom / info.numer;
      v7->_purgeEveryNTicks = (v11 >> 1) * info.denom / info.numer;
      v7->_effectiveWindowSize = v12;
    }

    v13 = dispatch_queue_create("SysmonTap Process Queue", 0);
    serialQ = v7->_serialQ;
    v7->_serialQ = v13;

    v15 = dispatch_semaphore_create(1);
    samplesLock = v7->_samplesLock;
    v7->_samplesLock = v15;

    v17 = objc_opt_new();
    samples = v7->_samples;
    v7->_samples = v17;
  }

  return v7;
}

- (void)dealloc
{
  savedTicks = self->_savedTicks;
  if (savedTicks)
  {
    mach_vm_deallocate(*MEMORY[0x277D85F48], savedTicks, 16 * self->_cpuCount);
    self->_savedTicks = 0;
  }

  pollTimer = self->_pollTimer;
  if (pollTimer)
  {
    dispatch_source_cancel(pollTimer);
    v5 = self->_pollTimer;
    self->_pollTimer = 0;
  }

  v6.receiver = self;
  v6.super_class = DTSysmonTapLocalDelegate;
  [(DTSysmonTapLocalDelegate *)&v6 dealloc];
}

- (id)validateConfig
{
  v3 = objc_opt_new();
  v4 = [(DTSysmonTapConfig *)self->_config processAttributes];

  if (v4)
  {
    v5 = +[DTSysmonTapSupportedAttributes localProcessAttributes];
    v6 = objc_opt_new();
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v7 = [(DTSysmonTapConfig *)self->_config processAttributes];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_247FFBE28;
    v45[3] = &unk_278EF4330;
    v8 = v5;
    v46 = v8;
    v9 = v6;
    v47 = v9;
    v48 = &v49;
    [v7 enumerateObjectsUsingBlock:v45];

    if ((v50[3] & 1) == 0)
    {
      [v3 addObject:@"Missing the 'pid' process attribute."];
    }

    if ([v9 count])
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [v9 componentsJoinedByString:{@", "}];
      v12 = [v10 stringWithFormat:@"Unknown process attributes: %@.", v11];
      [v3 addObject:v12];
    }

    _Block_object_dispose(&v49, 8);
  }

  v13 = [(DTSysmonTapConfig *)self->_config systemAttributes];

  if (v13)
  {
    v14 = +[DTSysmonTapSupportedAttributes localSystemAttributes];
    v15 = objc_opt_new();
    v16 = [(DTSysmonTapConfig *)self->_config systemAttributes];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_247FFBEBC;
    v42[3] = &unk_278EF3EC8;
    v17 = v14;
    v43 = v17;
    v18 = v15;
    v44 = v18;
    [v16 enumerateObjectsUsingBlock:v42];

    if ([v18 count])
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v18 componentsJoinedByString:{@", "}];
      v21 = [v19 stringWithFormat:@"Unknown system attributes: %@.", v20];
      [v3 addObject:v21];
    }
  }

  v22 = [(DTSysmonTapConfig *)self->_config coalitionAttributes];

  if (v22)
  {
    v23 = +[DTSysmonTapSupportedAttributes localCoalitionAttributes];
    v24 = objc_opt_new();
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v25 = [(DTSysmonTapConfig *)self->_config coalitionAttributes];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = sub_247FFBF1C;
    v38 = &unk_278EF4330;
    v26 = v23;
    v39 = v26;
    v27 = v24;
    v40 = v27;
    v41 = &v49;
    [v25 enumerateObjectsUsingBlock:&v35];

    if ((v50[3] & 1) == 0)
    {
      [v3 addObject:@"Missing the 'cid' coalition attribute."];
    }

    if ([v27 count])
    {
      v28 = MEMORY[0x277CCACA8];
      v29 = [v27 componentsJoinedByString:{@", "}];
      v30 = [v28 stringWithFormat:@"Unknown coalition attributes: %@.", v29, v35, v36, v37, v38, v39];
      [v3 addObject:v30];
    }

    _Block_object_dispose(&v49, 8);
  }

  if ([v3 count])
  {
    v31 = [DTTapStatusMemo alloc];
    v32 = [v3 componentsJoinedByString:@" "];
    v33 = [(DTTapStatusMemo *)v31 initWithStatus:0x80000000 notice:v32];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)setTap:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_248030254();
  }

  v5 = v4;
  objc_storeWeak(&self->_tap, v4);
}

- (void)_addSample:(id)a3
{
  v4 = a3;
  dispatch_semaphore_wait(self->_samplesLock, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableArray *)self->_samples addObject:v4];
  dispatch_semaphore_signal(self->_samplesLock);
}

- (void)_addCPUUsageToSample:(id)a3
{
  v35[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  *out_processor_infoCnt = 0;
  out_processor_info = 0;
  v5 = MEMORY[0x24C1C3A30]();
  if (!host_processor_info(v5, 2, out_processor_infoCnt, &out_processor_info, &out_processor_infoCnt[1]))
  {
    v28 = [MEMORY[0x277CBEB18] array];
    if (out_processor_infoCnt[0])
    {
      v6 = 0;
      v29 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v9 = vsubq_s32(*&out_processor_info[4 * v6], self->_savedTicks[v6]);
        v10 = vaddlvq_u32(v9);
        if (v10)
        {
          v11 = 100.0 - v9.u32[2] / v10 * 100.0;
          v12 = v9.u32[3] / v10 * 100.0;
          ++v29;
        }

        else
        {
          v11 = 0.0;
          v12 = 0.0;
        }

        v34[0] = @"CPU_TotalLoad";
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v35[0] = v13;
        v34[1] = @"CPU_UserLoad";
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:-1.0];
        v35[1] = v14;
        v34[2] = @"CPU_SystemLoad";
        v15 = [MEMORY[0x277CCABB0] numberWithDouble:-1.0];
        v35[2] = v15;
        v34[3] = @"CPU_NiceLoad";
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
        v35[3] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
        [v28 insertObject:v17 atIndex:0];

        v7 = v7 + v11;
        v8 = v8 + v12;
        ++v6;
      }

      while (v6 < out_processor_infoCnt[0]);
    }

    else
    {
      v29 = 0;
      v8 = 0.0;
      v7 = 0.0;
    }

    mach_vm_deallocate(*MEMORY[0x277D85F48], self->_savedTicks->cpu_ticks, 16 * self->_cpuCount);
    self->_savedTicks = out_processor_info;
    v32[0] = @"CPU_TotalLoad";
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v33[0] = v18;
    v32[1] = @"CPU_UserLoad";
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:-1.0];
    v33[1] = v19;
    v32[2] = @"CPU_SystemLoad";
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:-1.0];
    v33[2] = v20;
    v32[3] = @"CPU_NiceLoad";
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v33[3] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:out_processor_infoCnt[0]];
    [v4 setObject:v23 forKeyedSubscript:@"CPUCount"];

    v24 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    [v4 setObject:v24 forKeyedSubscript:@"EnabledCPUs"];

    [v4 setObject:v28 forKeyedSubscript:@"PerCPUUsage"];
    [v4 setObject:v22 forKeyedSubscript:@"SystemCPUUsage"];
    v25 = [v4 objectForKeyedSubscript:@"Type"];
    LODWORD(v19) = [v25 unsignedIntValue];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19 | 0x20];
    [v4 setObject:v26 forKeyedSubscript:@"Type"];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleSysmonProcessTable:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  [v9 setObject:&unk_285A36E40 forKeyedSubscript:@"Type"];
  [v9 setObject:v10 forKeyedSubscript:@"Processes"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v9 setObject:v11 forKeyedSubscript:@"StartMachAbsTime"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  [v9 setObject:v12 forKeyedSubscript:@"EndMachAbsTime"];

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = sub_247FFC7A4;
  v30 = &unk_278EF4380;
  v31 = self;
  v13 = v10;
  v32 = v13;
  sysmon_table_apply();

  v14 = [v13 copy];
  processesFromLastSample = self->_processesFromLastSample;
  if (processesFromLastSample)
  {
    v16 = [(NSDictionary *)processesFromLastSample allKeys];
    v17 = [v16 mutableCopy];

    v18 = [v13 allKeys];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_247FFCEE0;
    v23[3] = &unk_278EF43A8;
    v19 = v17;
    v24 = v19;
    v25 = v13;
    v26 = self;
    [v18 enumerateObjectsUsingBlock:v23];

    if ([v19 count])
    {
      v20 = [v19 allObjects];
      [v9 setObject:v20 forKeyedSubscript:@"DeadProcesses"];
    }
  }

  objc_storeStrong(&self->_processesFromLastSample, v14);
  if (self->_isWindowed && !self->_processesAtWindowBeginning)
  {
    v21 = [v9 mutableCopy];
    processesAtWindowBeginning = self->_processesAtWindowBeginning;
    self->_processesAtWindowBeginning = v21;
  }

  else
  {
    [(DTSysmonTapLocalDelegate *)self _addSample:v9];
  }

  if (self->_isWindowed && self->_purgeEveryNTicks + self->_lastWindowPurgeTime < a5)
  {
    [(DTSysmonTapLocalDelegate *)self _purgeOldSamplesForCurrentTime:a5];
  }
}

- (void)_handleSysmonSystemTable:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  [v9 setObject:&unk_285A36E58 forKeyedSubscript:@"Type"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v9 setObject:v11 forKeyedSubscript:@"StartMachAbsTime"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  [v9 setObject:v12 forKeyedSubscript:@"EndMachAbsTime"];

  v16 = MEMORY[0x277D85DD0];
  v13 = v10;
  sysmon_table_apply();

  if ([v13 count])
  {
    [v9 setObject:v13 forKeyedSubscript:@"System"];
  }

  if ([(DTSysmonTapConfig *)self->_config sampleCPUUsage])
  {
    [(DTSysmonTapLocalDelegate *)self _addCPUUsageToSample:v9];
  }

  if (self->_isWindowed && !self->_systemAtWindowBeginning)
  {
    v14 = [v9 mutableCopy];
    systemAtWindowBeginning = self->_systemAtWindowBeginning;
    self->_systemAtWindowBeginning = v14;
  }

  else
  {
    [(DTSysmonTapLocalDelegate *)self _addSample:v9];
  }

  if (self->_isWindowed && self->_purgeEveryNTicks + self->_lastWindowPurgeTime < a5)
  {
    [(DTSysmonTapLocalDelegate *)self _purgeOldSamplesForCurrentTime:a5];
  }
}

- (void)_handleSysmonCoalitionTable:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  [v9 setObject:&unk_285A36E70 forKeyedSubscript:@"Type"];
  [v9 setObject:v10 forKeyedSubscript:@"Coalitions"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v9 setObject:v11 forKeyedSubscript:@"StartMachAbsTime"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  [v9 setObject:v12 forKeyedSubscript:@"EndMachAbsTime"];

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = sub_247FFD6E0;
  v30 = &unk_278EF4380;
  v31 = self;
  v13 = v10;
  v32 = v13;
  sysmon_table_apply();

  v14 = [v13 copy];
  coalitionsFromLastSample = self->_coalitionsFromLastSample;
  if (coalitionsFromLastSample)
  {
    v16 = [(NSDictionary *)coalitionsFromLastSample allKeys];
    v17 = [v16 mutableCopy];

    v18 = [v13 allKeys];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_247FFD918;
    v23[3] = &unk_278EF43A8;
    v19 = v17;
    v24 = v19;
    v25 = self;
    v26 = v13;
    [v18 enumerateObjectsUsingBlock:v23];

    if ([v19 count])
    {
      v20 = [v19 allObjects];
      [v9 setObject:v20 forKeyedSubscript:@"DeadCoalitions"];
    }
  }

  objc_storeStrong(&self->_coalitionsFromLastSample, v14);
  if (self->_isWindowed && !self->_coalitionsAtWindowBeginning)
  {
    v21 = [v9 mutableCopy];
    coalitionsAtWindowBeginning = self->_coalitionsAtWindowBeginning;
    self->_coalitionsAtWindowBeginning = v21;
  }

  else
  {
    [(DTSysmonTapLocalDelegate *)self _addSample:v9];
  }

  if (self->_isWindowed && self->_purgeEveryNTicks + self->_lastWindowPurgeTime < a5)
  {
    [(DTSysmonTapLocalDelegate *)self _purgeOldSamplesForCurrentTime:a5];
  }
}

- (void)_createAttributesSample
{
  v3 = objc_opt_new();
  newAttributesSample = self->_newAttributesSample;
  self->_newAttributesSample = v3;

  v5 = [(DTSysmonTapConfig *)self->_config processAttributes];

  if (v5)
  {
    v6 = [(DTSysmonTapConfig *)self->_config processAttributes];
    [(NSMutableDictionary *)self->_newAttributesSample setObject:v6 forKeyedSubscript:@"ProcessesAttributes"];
  }

  v7 = [(DTSysmonTapConfig *)self->_config systemAttributes];

  if (v7)
  {
    v8 = [(DTSysmonTapConfig *)self->_config systemAttributes];
    [(NSMutableDictionary *)self->_newAttributesSample setObject:v8 forKeyedSubscript:@"SystemAttributes"];
  }

  v9 = [(DTSysmonTapConfig *)self->_config coalitionAttributes];

  if (v9)
  {
    v10 = [(DTSysmonTapConfig *)self->_config coalitionAttributes];
    [(NSMutableDictionary *)self->_newAttributesSample setObject:v10 forKeyedSubscript:@"CoalitionAttributes"];
  }

  v11 = self->_newAttributesSample;

  [(NSMutableDictionary *)v11 setObject:&unk_285A36E88 forKeyedSubscript:@"Type"];
}

- (void)_purgeOldSamplesForCurrentTime:(unint64_t)a3
{
  effectiveWindowSize = self->_effectiveWindowSize;
  v6 = [(NSMutableArray *)self->_samples count];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v8 = 0;
  v25 = a3;
  v26 = a3 - effectiveWindowSize;
  while (1)
  {
    v9 = [(NSMutableArray *)self->_samples objectAtIndexedSubscript:v8, v25];
    v10 = [v9 objectForKeyedSubscript:@"StartMachAbsTime"];
    v11 = [v10 unsignedLongLongValue];

    v12 = [v9 objectForKeyedSubscript:@"EndMachAbsTime"];
    v13 = [v12 unsignedLongLongValue];

    if (v13 >= v26)
    {
      break;
    }

    v14 = [v9 objectForKeyedSubscript:@"Type"];
    v15 = [v14 unsignedLongLongValue];

    if ((v15 & 4) != 0)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      [(NSMutableDictionary *)self->_processesAtWindowBeginning setObject:v18 forKeyedSubscript:@"StartMachAbsTime"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
      [(NSMutableDictionary *)self->_processesAtWindowBeginning setObject:v19 forKeyedSubscript:@"EndMachAbsTime"];

      systemAtWindowBeginning = [v9 objectForKeyedSubscript:@"Processes"];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_247FFDEFC;
      v30[3] = &unk_278EF43F8;
      v30[4] = self;
      [systemAtWindowBeginning enumerateKeysAndObjectsUsingBlock:v30];
      v20 = [v9 objectForKeyedSubscript:@"DeadProcesses"];
      v21 = v20;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_247FFDF0C;
      v29[3] = &unk_278EF3E80;
      v29[4] = self;
      v22 = v29;
LABEL_8:
      [v20 enumerateObjectsUsingBlock:v22];

      goto LABEL_9;
    }

    if ((v15 & 0x28) == 0)
    {
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      [(NSMutableDictionary *)self->_coalitionsAtWindowBeginning setObject:v23 forKeyedSubscript:@"StartMachAbsTime"];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
      [(NSMutableDictionary *)self->_coalitionsAtWindowBeginning setObject:v24 forKeyedSubscript:@"EndMachAbsTime"];

      systemAtWindowBeginning = [v9 objectForKeyedSubscript:@"Coalitions"];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_247FFDF1C;
      v28[3] = &unk_278EF43F8;
      v28[4] = self;
      [systemAtWindowBeginning enumerateKeysAndObjectsUsingBlock:v28];
      v20 = [v9 objectForKeyedSubscript:@"DeadCoalitions"];
      v21 = v20;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_247FFDF2C;
      v27[3] = &unk_278EF3E80;
      v27[4] = self;
      v22 = v27;
      goto LABEL_8;
    }

    v16 = v9;
    systemAtWindowBeginning = self->_systemAtWindowBeginning;
    self->_systemAtWindowBeginning = v16;
LABEL_9:

LABEL_10:
    if (v7 == ++v8)
    {
      v8 = v7;
      a3 = v25;
      goto LABEL_15;
    }
  }

  a3 = v25;
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_15:
  [(NSMutableArray *)self->_samples removeObjectsInRange:0, v8];
LABEL_16:
  self->_lastWindowPurgeTime = a3;
}

- (void)start
{
  v3 = [(DTSysmonTapConfig *)self->_config processAttributes];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = +[DTSysmonTapSupportedAttributes localProcessAttributesMap];
    v6 = [(DTSysmonTapConfig *)self->_config processAttributes];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_247FFE674;
    v70[3] = &unk_278EF3EC8;
    v71 = v5;
    v7 = v4;
    v72 = v7;
    v8 = v5;
    [v6 enumerateObjectsUsingBlock:v70];

    processAttributes = self->_processAttributes;
    self->_processAttributes = v7;
    v10 = v7;

    v69[5] = MEMORY[0x277D85DD0];
    v69[6] = 3221225472;
    v69[7] = sub_247FFE6E4;
    v69[8] = &unk_278EF4420;
    v69[9] = self;
    v11 = sysmon_request_create();
    processRequest = self->_processRequest;
    self->_processRequest = v11;

    v13 = self->_processAttributes;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_247FFE7CC;
    v69[3] = &unk_278EF4448;
    v69[4] = self;
    [(NSArray *)v13 enumerateObjectsUsingBlock:v69];
    v14 = self->_processRequest;
    [(DTSysmonTapConfig *)self->_config sampleInterval];
    sysmon_request_set_interval();
  }

  v15 = [(DTSysmonTapConfig *)self->_config systemAttributes];

  if (v15)
  {
    v16 = objc_opt_new();
    v17 = +[DTSysmonTapSupportedAttributes localSystemAttributesMap];
    v18 = [(DTSysmonTapConfig *)self->_config systemAttributes];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_247FFE834;
    v66[3] = &unk_278EF3EC8;
    v67 = v17;
    v19 = v16;
    v68 = v19;
    v20 = v17;
    [v18 enumerateObjectsUsingBlock:v66];

    systemAttributes = self->_systemAttributes;
    self->_systemAttributes = v19;
    v22 = v19;

    v65[5] = MEMORY[0x277D85DD0];
    v65[6] = 3221225472;
    v65[7] = sub_247FFE8A4;
    v65[8] = &unk_278EF4420;
    v65[9] = self;
    v23 = sysmon_request_create();
    systemRequest = self->_systemRequest;
    self->_systemRequest = v23;

    v25 = self->_systemAttributes;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_247FFE98C;
    v65[3] = &unk_278EF4448;
    v65[4] = self;
    [(NSArray *)v25 enumerateObjectsUsingBlock:v65];
    v26 = self->_systemRequest;
    [(DTSysmonTapConfig *)self->_config sampleInterval];
    sysmon_request_set_interval();
  }

  v27 = [(DTSysmonTapConfig *)self->_config coalitionAttributes];

  if (v27)
  {
    v28 = objc_opt_new();
    v29 = +[DTSysmonTapSupportedAttributes localCoalitionAttributesMap];
    v30 = [(DTSysmonTapConfig *)self->_config coalitionAttributes];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_247FFE9F4;
    v62[3] = &unk_278EF3EC8;
    v63 = v29;
    v31 = v28;
    v64 = v31;
    v32 = v29;
    [v30 enumerateObjectsUsingBlock:v62];

    coalitionAttributes = self->_coalitionAttributes;
    self->_coalitionAttributes = v31;
    v34 = v31;

    v61[5] = MEMORY[0x277D85DD0];
    v61[6] = 3221225472;
    v61[7] = sub_247FFEA64;
    v61[8] = &unk_278EF4420;
    v61[9] = self;
    v35 = sysmon_request_create();
    coalitionRequest = self->_coalitionRequest;
    self->_coalitionRequest = v35;

    v37 = self->_coalitionAttributes;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_247FFEB4C;
    v61[3] = &unk_278EF4448;
    v61[4] = self;
    [(NSArray *)v37 enumerateObjectsUsingBlock:v61];
    v38 = self->_coalitionRequest;
    [(DTSysmonTapConfig *)self->_config sampleInterval];
    sysmon_request_set_interval();
  }

  [(DTSysmonTapLocalDelegate *)self _createAttributesSample];
  if ([(DTSysmonTapConfig *)self->_config sampleCPUUsage])
  {
    out_processor_info = 0;
    out_processor_infoCnt = 0;
    v39 = MEMORY[0x24C1C3A30]();
    v40 = host_processor_info(v39, 1, &self->_cpuCount, &out_processor_info, &out_processor_infoCnt);
    if (v40)
    {
      v41 = v40;
      v42 = [DTTapStatusMemo alloc];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to sample host processor basic info: %d", v41];
    }

    else
    {
      v43 = mach_vm_deallocate(*MEMORY[0x277D85F48], out_processor_info, 4 * out_processor_infoCnt);
      v44 = MEMORY[0x24C1C3A30](v43);
      v45 = host_processor_info(v44, 2, &self->_cpuCount, &self->_savedTicks, &out_processor_infoCnt);
      if (!v45)
      {
        goto LABEL_13;
      }

      v46 = v45;
      v42 = [DTTapStatusMemo alloc];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to sample host processor cpu usage: %d", v46];
    }
    v47 = ;
    v48 = [(DTTapStatusMemo *)v42 initWithStatus:0x80000000 notice:v47];

    WeakRetained = objc_loadWeakRetained(&self->_tap);
    v50 = [WeakRetained _handleStatusMemo:v48];

LABEL_13:
    self->_lastWindowPurgeTime = mach_absolute_time();
    if (!self->_systemRequest)
    {
      v51 = [(DTSysmonTapConfig *)self->_config sampleInterval];
      v52 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_serialQ);
      pollTimer = self->_pollTimer;
      self->_pollTimer = v52;

      v54 = self->_pollTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_247FFEBB4;
      handler[3] = &unk_278EF1070;
      handler[4] = self;
      dispatch_source_set_event_handler(v54, handler);
      v55 = self->_pollTimer;
      v56 = dispatch_time(0, v51);
      dispatch_source_set_timer(v55, v56, v51, 0x989680uLL);
      dispatch_resume(self->_pollTimer);
    }
  }

  v57 = mach_absolute_time();
  self->_systemLastSampleTime = v57;
  self->_coalitionLastSampleTime = v57;
  self->_processLastSampleTime = v57;
  if (self->_processRequest)
  {
    sysmon_request_execute();
  }

  if (self->_systemRequest)
  {
    sysmon_request_execute();
  }

  if (self->_coalitionRequest)
  {
    sysmon_request_execute();
  }
}

- (void)stop
{
  self->_stopWasCalled = 1;
  if (self->_coalitionRequest)
  {
    sysmon_request_cancel();
    coalitionRequest = self->_coalitionRequest;
    self->_coalitionRequest = 0;
  }

  if (self->_systemRequest)
  {
    sysmon_request_cancel();
    systemRequest = self->_systemRequest;
    self->_systemRequest = 0;
  }

  if (self->_processRequest)
  {
    sysmon_request_cancel();
    processRequest = self->_processRequest;
    self->_processRequest = 0;
  }

  pollTimer = self->_pollTimer;
  if (pollTimer)
  {
    dispatch_source_cancel(pollTimer);
    v7 = self->_pollTimer;
    self->_pollTimer = 0;
  }
}

- (void)fetchDataForReason:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  dispatch_semaphore_wait(self->_samplesLock, 0xFFFFFFFFFFFFFFFFLL);
  if ([(NSMutableArray *)self->_samples count])
  {
    if (self->_isWindowed)
    {
      [(DTSysmonTapLocalDelegate *)self _purgeOldSamplesForCurrentTime:mach_absolute_time()];
      v7 = objc_opt_new();
      v8 = v7;
      if (self->_processesAtWindowBeginning)
      {
        [v7 addObject:?];
      }

      if (self->_systemAtWindowBeginning)
      {
        [v8 addObject:?];
      }

      if (self->_coalitionsAtWindowBeginning)
      {
        [v8 addObject:?];
      }

      [v8 sortUsingComparator:&unk_285A18F80];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_247FFF118;
      v20[3] = &unk_278EF4490;
      v20[4] = self;
      [v8 enumerateObjectsUsingBlock:v20];
      processesAtWindowBeginning = self->_processesAtWindowBeginning;
      self->_processesAtWindowBeginning = 0;

      systemAtWindowBeginning = self->_systemAtWindowBeginning;
      self->_systemAtWindowBeginning = 0;

      coalitionsAtWindowBeginning = self->_coalitionsAtWindowBeginning;
      self->_coalitionsAtWindowBeginning = 0;
    }

    if (self->_newAttributesSample)
    {
      v12 = [(NSMutableArray *)self->_samples objectAtIndexedSubscript:0];
      v13 = [(NSMutableDictionary *)self->_newAttributesSample objectForKeyedSubscript:@"Type"];
      v14 = [v13 unsignedIntValue];

      v15 = [v12 objectForKeyedSubscript:@"Type"];
      LODWORD(v13) = [v15 unsignedIntValue];

      [v12 addEntriesFromDictionary:self->_newAttributesSample];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13 | v14];
      [v12 setObject:v16 forKeyedSubscript:@"Type"];

      newAttributesSample = self->_newAttributesSample;
      self->_newAttributesSample = 0;
    }

    v18 = objc_opt_new();
    [v18 setTapVersion:0x10000];
    [v18 setSamples:self->_samples];
    [v18 setSupportsPeek:1];
    [v18 setFinalMemo:a3 == 1 && self->_stopWasCalled];
    v6[2](v6, v18, 1);
    [(NSMutableArray *)self->_samples removeAllObjects];
  }

  else
  {
    v19 = [[DTTapHeartbeatMemo alloc] initWithTimestamp:mach_absolute_time()];
    v6[2](v6, v19, 1);
  }

  dispatch_semaphore_signal(self->_samplesLock);
}

@end