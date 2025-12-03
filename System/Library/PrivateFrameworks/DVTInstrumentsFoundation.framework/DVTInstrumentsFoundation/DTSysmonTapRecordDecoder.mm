@interface DTSysmonTapRecordDecoder
- (unint64_t)enumerateRecordsFromSample:(id)sample block:(id)block;
@end

@implementation DTSysmonTapRecordDecoder

- (unint64_t)enumerateRecordsFromSample:(id)sample block:(id)block
{
  sampleCopy = sample;
  blockCopy = block;
  v8 = objc_opt_new();
  v9 = [sampleCopy objectForKeyedSubscript:@"Type"];
  [v8 setRecordType:{objc_msgSend(v9, "unsignedIntValue")}];

  v10 = [sampleCopy objectForKeyedSubscript:@"StartMachAbsTime"];

  if (v10)
  {
    v11 = [sampleCopy objectForKeyedSubscript:@"StartMachAbsTime"];
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    [v8 setStartTimestamp:unsignedLongLongValue];
    self->_mostRecentEpoch = unsignedLongLongValue;
  }

  v13 = [sampleCopy objectForKeyedSubscript:@"EndMachAbsTime"];

  if (v13)
  {
    v14 = [sampleCopy objectForKeyedSubscript:@"EndMachAbsTime"];
    unsignedLongLongValue2 = [v14 unsignedLongLongValue];

    [v8 setEndTimestamp:unsignedLongLongValue2];
    self->_mostRecentEpoch = unsignedLongLongValue2;
  }

  v16 = [sampleCopy objectForKeyedSubscript:@"ProcessesAttributes"];
  v17 = v16;
  if (v16 && ([v16 isEqual:self->_processAttributes] & 1) == 0)
  {
    objc_storeStrong(&self->_processAttributes, v17);
  }

  v18 = [sampleCopy objectForKeyedSubscript:@"SystemAttributes"];

  if (v18 && ([v18 isEqual:self->_systemAttributes] & 1) == 0)
  {
    objc_storeStrong(&self->_systemAttributes, v18);
  }

  v19 = [sampleCopy objectForKeyedSubscript:@"CoalitionAttributes"];

  if (v19 && ([v19 isEqual:self->_coalitionAttributes] & 1) == 0)
  {
    objc_storeStrong(&self->_coalitionAttributes, v19);
  }

  [v8 setProcessAttributes:self->_processAttributes];
  [v8 setSystemAttributes:self->_systemAttributes];
  [v8 setCoalitionAttributes:self->_coalitionAttributes];
  v20 = [sampleCopy objectForKeyedSubscript:@"Processes"];

  if (v20)
  {
    v21 = objc_opt_new();
    v22 = [sampleCopy objectForKeyedSubscript:@"Processes"];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_247FCFFB0;
    v65[3] = &unk_278EF3418;
    v66 = v21;
    v23 = v21;
    [v22 enumerateKeysAndObjectsUsingBlock:v65];

    [v8 setChangedProcesses:v23];
  }

  v24 = [sampleCopy objectForKeyedSubscript:@"System"];

  if (v24)
  {
    v25 = objc_opt_new();
    v26 = [sampleCopy objectForKeyedSubscript:@"System"];
    [v25 setAttributes:v26];

    [v8 setSystem:v25];
  }

  v27 = [sampleCopy objectForKeyedSubscript:@"Coalitions"];

  if (v27)
  {
    v28 = objc_opt_new();
    v29 = [sampleCopy objectForKeyedSubscript:@"Coalitions"];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_247FD0054;
    v63[3] = &unk_278EF3418;
    v64 = v28;
    v30 = v28;
    [v29 enumerateKeysAndObjectsUsingBlock:v63];

    [v8 setCoalitions:v30];
  }

  v31 = [sampleCopy objectForKeyedSubscript:@"DeadProcesses"];

  if (v31)
  {
    v32 = [sampleCopy objectForKeyedSubscript:@"DeadProcesses"];
    [v8 setDeadProcesses:v32];
  }

  v33 = [sampleCopy objectForKeyedSubscript:@"DeadCoalitions"];

  if (v33)
  {
    v34 = [sampleCopy objectForKeyedSubscript:@"DeadCoalitions"];
    [v8 setDeadCoalitions:v34];
  }

  if (([v8 recordType] & 0x20) != 0)
  {
    v35 = objc_opt_new();
    v36 = [sampleCopy objectForKeyedSubscript:@"CPUCount"];
    v60 = v35;
    [v35 setCpuCount:{objc_msgSend(v36, "unsignedIntValue")}];

    v37 = [sampleCopy objectForKeyedSubscript:@"EnabledCPUs"];
    [v35 setEnabledCPUs:{objc_msgSend(v37, "unsignedIntValue")}];

    v38 = [sampleCopy objectForKeyedSubscript:@"SystemCPUUsage"];
    v39 = [DTSysmonCPUUsageEntry alloc];
    [v38 objectForKeyedSubscript:@"CPU_TotalLoad"];
    v40 = v59 = blockCopy;
    [v40 doubleValue];
    v42 = v41;
    v43 = [v38 objectForKeyedSubscript:@"CPU_UserLoad"];
    [v43 doubleValue];
    v45 = v44;
    v46 = [v38 objectForKeyedSubscript:@"CPU_SystemLoad"];
    [v46 doubleValue];
    v48 = v47;
    [v38 objectForKeyedSubscript:@"CPU_NiceLoad"];
    selfCopy = self;
    v51 = v50 = v19;
    [v51 doubleValue];
    v53 = [(DTSysmonCPUUsageEntry *)v39 initWithTotal:v42 user:v45 system:v48 nice:v52];
    [v60 setAverageCPUUsage:v53];

    v19 = v50;
    self = selfCopy;

    v54 = [sampleCopy objectForKeyedSubscript:@"PerCPUUsage"];
    v55 = objc_opt_new();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_247FD00F8;
    v61[3] = &unk_278EF3440;
    v62 = v55;
    v56 = v55;
    [v54 enumerateObjectsUsingBlock:v61];
    [v60 setPerCPUUsage:v56];
    [v8 setCpuUsage:v60];

    blockCopy = v59;
  }

  blockCopy[2](blockCopy, v8);
  mostRecentEpoch = self->_mostRecentEpoch;

  return mostRecentEpoch;
}

@end