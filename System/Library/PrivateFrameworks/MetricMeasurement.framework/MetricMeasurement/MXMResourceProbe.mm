@interface MXMResourceProbe
+ (id)probe;
+ (int)_processIdentifierWithProcessName:(const char *)a3 error:(id *)a4;
- (BOOL)performPreIterationActions;
- (MXMResourceProbe)init;
- (id)_pollMainBody;
- (id)sampleWithTimeout:(double)a3 stopReason:(unint64_t *)a4;
- (void)_beginUpdates;
- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 mach_space_basicinfo:(ipc_info_space_basic *)a5;
- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 pm_networking_stats:(id *)a5;
- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 rusage:(rusage_info_v6 *)a5;
- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 taskinfo:(proc_taskinfo *)a5;
- (void)_pollAllProcesses:(id)a3;
- (void)_pollProcessNetworkingStatsWithData:(id)a3 pid:(int)a4 task:(unsigned int)a5;
- (void)_pollProcessResourceUsageWithData:(id)a3 pid:(int)a4;
- (void)_pollProcessWithData:(id)a3 pid:(int)a4;
- (void)_stopUpdates;
@end

@implementation MXMResourceProbe

+ (int)_processIdentifierWithProcessName:(const char *)a3 error:(id *)a4
{
  *&v21[17] = *MEMORY[0x277D85DE8];
  v6 = getprogname();
  if (strcmp(v6, a3))
  {
    *__error() = 0;
    v7 = proc_listpids(1u, 0, 0, 0);
    v8 = malloc_type_malloc(v7, 0x3AB5CECFuLL);
    v9 = proc_listpids(1u, 0, v8, v7);
    if (*__error() || (v7 >= v9 ? (v10 = v9) : (v10 = v7), v10 < 4))
    {
LABEL_12:
      free(v8);
    }

    else
    {
      v11 = 0;
      v12 = v10 >> 2;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      while (1)
      {
        v14 = *(v8 + v11);
        proc_name(v14, &v20, 0x40u);
        if (!strcmp(&v20, a3))
        {
          break;
        }

        if (v13 == ++v11)
        {
          goto LABEL_12;
        }
      }

      free(v8);
      if ((v14 & 0x80000000) == 0)
      {
        v19 = _MXMGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = 67109378;
          v21[0] = v14;
          LOWORD(v21[1]) = 2080;
          *(&v21[1] + 2) = a3;
          _os_log_impl(&dword_258DAA000, v19, OS_LOG_TYPE_INFO, "Found pid (%i) for process name: %s", &v20, 0x12u);
        }

        goto LABEL_18;
      }
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Failed to find process.." code:1 userInfo:MEMORY[0x277CBEC10]];
    }

    v15 = _MXMGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      *v21 = a3;
      _os_log_impl(&dword_258DAA000, v15, OS_LOG_TYPE_DEFAULT, "Failed to find pid for process name: %s", &v20, 0xCu);
    }

    v14 = 0;
LABEL_18:
    v16 = *MEMORY[0x277D85DE8];
    return v14;
  }

  v18 = *MEMORY[0x277D85DE8];

  return getpid();
}

+ (id)probe
{
  v2 = [[a1 alloc] init];

  return v2;
}

- (MXMResourceProbe)init
{
  v3.receiver = self;
  v3.super_class = MXMResourceProbe;
  return [(MXMProbe *)&v3 init];
}

- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 rusage:(rusage_info_v6 *)a5
{
  v22 = a5;
  v23 = a3;
  if (_buildData_timestamp_rusage__onceToken != -1)
  {
    [MXMResourceProbe _buildData:timestamp:rusage:];
  }

  v7 = 19;
  v8 = &unk_27F9883D8;
  do
  {
    v9 = *(v8 - 3);
    v10 = *(v8 - 1);
    v11 = *v8;
    v12 = [(MXMProbe *)self filter];
    v13 = [v12 matchesSamplesWithTag:v11];

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_10:
      v19 = *&v22->ri_uuid[v9];
      goto LABEL_11;
    }

    v15 = +[MXMUtilizationSampleTag CPUQos];
    if ([v15 containsTag:v11])
    {
    }

    else
    {
      v16 = +[MXMUtilizationSampleTag CPUTime];
      v17 = [v16 containsTag:v11];

      if (!v17)
      {
        goto LABEL_10;
      }
    }

    [MXMMachUtils _nanosecondsWithAbsoluteTime:*&v22->ri_uuid[v9], v22];
    v19 = v18;
LABEL_11:
    v20 = [[MXMSampleSet alloc] initWithTag:v11 unit:v14 attributes:0];
    [v23 appendSet:v20];

    v21 = [v23 appendUnsignedIntegerValue:v19 tag:v11 timestamp:a4];
LABEL_12:

    v8 += 4;
    --v7;
  }

  while (v7);
}

double __48__MXMResourceProbe__buildData_timestamp_rusage___block_invoke()
{
  v0 = +[MXMUnitMemory bytes];
  v23 = +[MXMUnitCycle cycles];
  v22 = +[MXMUnitInstruction baseUnit];
  v1 = [MEMORY[0x277CCADD0] nanoseconds];
  v21 = +[MXMUtilizationSampleTag CPUCycles];
  v20 = +[MXMUtilizationSampleTag CPUInstructions];
  v19 = +[MXMUtilizationSampleTag CPUTimeUser];
  v18 = +[MXMUtilizationSampleTag CPUTimeSystem];
  v17 = +[MXMUtilizationSampleTag CPUQosDefault];
  v16 = +[MXMUtilizationSampleTag CPUQosMaintenance];
  v15 = +[MXMUtilizationSampleTag CPUQosBackground];
  v14 = +[MXMUtilizationSampleTag CPUQosUtility];
  v13 = +[MXMUtilizationSampleTag CPUQosLegacy];
  v12 = +[MXMUtilizationSampleTag CPUQosUserInitiated];
  v11 = +[MXMUtilizationSampleTag CPUQosUserInteractive];
  v2 = +[MXMUtilizationSampleTag memoryPhysical];
  v3 = +[MXMUtilizationSampleTag memoryPeakPhysicalLifetime];
  v4 = +[MXMUtilizationSampleTag memoryPeakPhysicalInterval];
  v5 = +[MXMUtilizationSampleTag memoryWired];
  v6 = +[MXMUtilizationSampleTag memoryResident];
  v7 = +[MXMUtilizationSampleTag IOReads];
  v8 = +[MXMUtilizationSampleTag IOWrites];
  v9 = +[MXMUtilizationSampleTag IOLogicalWrites];
  _buildData_timestamp_rusage__infos = xmmword_258DC9C60;
  qword_27F9883D0 = v23;
  unk_27F9883D8 = v21;
  xmmword_27F9883E0 = xmmword_258DC9C70;
  qword_27F9883F0 = v22;
  unk_27F9883F8 = v20;
  xmmword_27F988400 = xmmword_258DC9C80;
  qword_27F988410 = v1;
  unk_27F988418 = v19;
  xmmword_27F988420 = xmmword_258DC9C90;
  qword_27F988430 = v1;
  unk_27F988438 = v18;
  xmmword_27F988440 = xmmword_258DC9CA0;
  qword_27F988450 = v1;
  unk_27F988458 = v17;
  xmmword_27F988460 = xmmword_258DC9CB0;
  qword_27F988470 = v1;
  unk_27F988478 = v16;
  xmmword_27F988480 = xmmword_258DC9CC0;
  qword_27F988490 = v1;
  unk_27F988498 = v15;
  xmmword_27F9884A0 = xmmword_258DC9CD0;
  qword_27F9884B0 = v1;
  unk_27F9884B8 = v14;
  xmmword_27F9884C0 = xmmword_258DC9CE0;
  qword_27F9884D0 = v1;
  unk_27F9884D8 = v13;
  xmmword_27F9884E0 = xmmword_258DC9CF0;
  qword_27F9884F0 = v1;
  unk_27F9884F8 = v12;
  xmmword_27F988500 = xmmword_258DC9D00;
  qword_27F988510 = v1;
  unk_27F988518 = v11;
  xmmword_27F988520 = xmmword_258DC9D10;
  qword_27F988530 = v0;
  unk_27F988538 = v2;
  xmmword_27F988540 = xmmword_258DC9D20;
  qword_27F988550 = v0;
  unk_27F988558 = v3;
  xmmword_27F988560 = xmmword_258DC9D30;
  qword_27F988570 = v0;
  unk_27F988578 = v4;
  xmmword_27F988580 = xmmword_258DC9D40;
  qword_27F988590 = v0;
  unk_27F988598 = v5;
  xmmword_27F9885A0 = xmmword_258DC9D50;
  qword_27F9885B0 = v0;
  unk_27F9885B8 = v6;
  xmmword_27F9885C0 = xmmword_258DC9D60;
  qword_27F9885D0 = v0;
  qword_27F9885D8 = v7;
  xmmword_27F9885E0 = xmmword_258DC9D70;
  qword_27F9885F0 = v0;
  qword_27F9885F8 = v8;
  *&result = 232;
  xmmword_27F988600 = xmmword_258DC9D80;
  qword_27F988610 = v0;
  qword_27F988618 = v9;
  return result;
}

- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 taskinfo:(proc_taskinfo *)a5
{
  v14 = a3;
  v7 = [MXMSampleSet alloc];
  v8 = +[MXMUtilizationSampleTag memoryVirtual];
  v9 = +[MXMUnitMemory bytes];
  v10 = [(MXMSampleSet *)v7 initWithTag:v8 unit:v9 attributes:0];
  [v14 appendSet:v10];

  pti_virtual_size = a5->pti_virtual_size;
  v12 = +[MXMUtilizationSampleTag memoryVirtual];
  v13 = [v14 appendUnsignedIntegerValue:pti_virtual_size tag:v12 timestamp:a4];
}

- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 mach_space_basicinfo:(ipc_info_space_basic *)a5
{
  v13 = a3;
  v7 = [MXMSampleSet alloc];
  v8 = +[MXMUtilizationSampleTag machPort];
  v9 = [(MXMSampleSet *)v7 initWithTag:v8 unit:0 attributes:0];
  [v13 appendSet:v9];

  iisb_table_inuse = a5->iisb_table_inuse;
  v11 = +[MXMUtilizationSampleTag machPort];
  v12 = [v13 appendUnsignedIntValue:iisb_table_inuse tag:v11 timestamp:a4];
}

- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 pm_networking_stats:(id *)a5
{
  v35 = a3;
  v7 = [MXMSampleSet alloc];
  v8 = +[MXMUtilizationSampleTag networkRecievedBytes];
  v9 = +[MXMUnitMemory bytes];
  v10 = [(MXMSampleSet *)v7 initWithTag:v8 unit:v9 attributes:0];
  [v35 appendSet:v10];

  v11 = [MXMSampleSet alloc];
  v12 = +[MXMUtilizationSampleTag networkSentBytes];
  v13 = +[MXMUnitMemory bytes];
  v14 = [(MXMSampleSet *)v11 initWithTag:v12 unit:v13 attributes:0];
  [v35 appendSet:v14];

  v15 = [MXMSampleSet alloc];
  v16 = +[MXMUtilizationSampleTag networkRecievedPackets];
  v17 = +[MXMUnitPacket baseUnit];
  v18 = [(MXMSampleSet *)v15 initWithTag:v16 unit:v17 attributes:0];
  [v35 appendSet:v18];

  v19 = [MXMSampleSet alloc];
  v20 = +[MXMUtilizationSampleTag networkSentPackets];
  v21 = +[MXMUnitPacket baseUnit];
  v22 = [(MXMSampleSet *)v19 initWithTag:v20 unit:v21 attributes:0];
  [v35 appendSet:v22];

  var3 = a5->var3;
  v24 = +[MXMUtilizationSampleTag networkRecievedBytes];
  v25 = [v35 appendUnsignedIntegerValue:var3 tag:v24 timestamp:a4];

  var4 = a5->var4;
  v27 = +[MXMUtilizationSampleTag networkSentBytes];
  v28 = [v35 appendUnsignedIntegerValue:var4 tag:v27 timestamp:a4];

  var1 = a5->var1;
  v30 = +[MXMUtilizationSampleTag networkRecievedPackets];
  v31 = [v35 appendUnsignedIntegerValue:var1 tag:v30 timestamp:a4];

  var2 = a5->var2;
  v33 = +[MXMUtilizationSampleTag networkSentPackets];
  v34 = [v35 appendUnsignedIntegerValue:var2 tag:v33 timestamp:a4];
}

- (void)_beginUpdates
{
  v12.receiver = self;
  v12.super_class = MXMResourceProbe;
  [(MXMProbe *)&v12 _beginUpdates];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CCACC8]);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __33__MXMResourceProbe__beginUpdates__block_invoke;
  v9 = &unk_2798C9550;
  objc_copyWeak(&v10, &location);
  v4 = [v3 initWithBlock:&v6];
  [(MXMResourceProbe *)self setPollingThread:v4, v6, v7, v8, v9];

  v5 = [(MXMResourceProbe *)self pollingThread];
  [v5 start];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __33__MXMResourceProbe__beginUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCACC8] currentThread];
  if (([v1 isCancelled] & 1) != 0 || (v2 = WeakRetained) == 0)
  {
LABEL_5:
  }

  else
  {
    while (1)
    {
      v3 = [v2 updating];

      if (!v3)
      {
        break;
      }

      v4 = [WeakRetained _pollMainBody];
      [WeakRetained _handleIncomingData:v4];

      usleep(0x30D40u);
      v1 = [MEMORY[0x277CCACC8] currentThread];
      v5 = [v1 isCancelled];
      v2 = WeakRetained;
      if (v5)
      {
        goto LABEL_5;
      }
    }
  }
}

- (void)_stopUpdates
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMResourceProbe.m" lineNumber:281 description:@"Failed to stop polling thread."];
}

- (id)sampleWithTimeout:(double)a3 stopReason:(unint64_t *)a4
{
  v5 = [(MXMResourceProbe *)self _pollMainBody:a4];
  v6 = [(MXMProbe *)self filter];
  v7 = [v5 dataMatchingFilter:v6];

  return v7;
}

- (BOOL)performPreIterationActions
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(MXMProbe *)self filter];
  v4 = [v3 finite];

  if (!v4)
  {
    v14 = 1;
    goto LABEL_31;
  }

  v5 = [(MXMProbe *)self filter];
  v6 = [v5 attributeFilterWithName:@"Process Name"];
  v7 = [v6 values];

  v8 = [(MXMProbe *)self filter];
  v9 = [v8 attributeFilterWithName:@"Process Identifier"];
  v30 = [v9 values];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (!v11)
  {
    v14 = 1;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *v36;
  v14 = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v36 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v35 + 1) + 8 * i);
      v17 = [objc_opt_class() _processIdentifierWithProcessName:objc_msgSend(v16 error:{"UTF8String"), 0}];
      if (v17 >= 1)
      {
        v18 = v17;
        if (!proc_reset_footprint_interval())
        {
          continue;
        }

        v19 = _MXMGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v41 = v18;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&dword_258DAA000, v19, OS_LOG_TYPE_ERROR, "Unable to reset the peak interval footprint of pid %d (%@)", buf, 0x12u);
        }
      }

      v14 = 0;
    }

    v12 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
  }

  while (v12);
LABEL_18:

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v30;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v31 + 1) + 8 * j) intValue];
        if (v25 >= 1)
        {
          v26 = v25;
          if (proc_reset_footprint_interval())
          {
            v27 = _MXMGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v41 = v26;
              _os_log_impl(&dword_258DAA000, v27, OS_LOG_TYPE_ERROR, "Unable to reset the peak interval footprint of pid %d", buf, 8u);
            }

            v14 = 0;
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

LABEL_31:
  v28 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (id)_pollMainBody
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MXMMutableSampleData);
  v4 = [(MXMProbe *)self filter];
  v5 = [v4 finite];

  if (v5)
  {
    v37 = v3;
    v6 = [(MXMProbe *)self filter];
    v7 = [v6 attributeFilterWithName:?];
    v8 = [v7 values];

    v9 = [(MXMProbe *)self filter];
    v10 = [v9 attributeFilterWithName:?];
    v11 = [v10 values];

    v12 = _MXMGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v45 = v8;
      v46 = 2112;
      v47 = v11;
      _os_log_impl(&dword_258DAA000, v12, OS_LOG_TYPE_INFO, "Polling with the following process names: %@ and pids: %@.", buf, 0x16u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    if (v8)
    {
      v13 = [v8 setByAddingObjectsFromSet:{v11, v11, v8}];
    }

    else
    {
      v16 = [MEMORY[0x277CBEB98] set];
      v13 = [v16 setByAddingObjectsFromSet:v11];
    }

    v17 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      v20 = 0x2798C9000uLL;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v22 cStringUsingEncoding:4];
            v24 = objc_opt_class();
            v38 = 0;
            v25 = [v24 _processIdentifierWithProcessName:v23 error:&v38];
            v26 = v38;
            if ((v25 & 0x80000000) != 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v26 = 0;
              goto LABEL_25;
            }

            v25 = [v22 intValue];
            v26 = 0;
            if ((v25 & 0x80000000) != 0)
            {
              goto LABEL_25;
            }
          }

          if (!v26)
          {
            v27 = self;
            [(MXMResourceProbe *)self _pollProcessWithData:v37 pid:v25];
            v28 = v20;
            v29 = *(v20 + 520);
            v30 = [MEMORY[0x277CCABB0] numberWithInt:v25];
            v31 = [v29 attributeWithName:@"Process Identifier" numericValue:v30];
            [(MXMMutableSampleData *)v37 appendAttribute:v31];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [*(v28 + 520) attributeWithName:@"Process Name" stringValue:v22];
              [(MXMMutableSampleData *)v37 appendAttribute:v32];
            }

            v26 = 0;
            v20 = v28;
            self = v27;
          }

LABEL_25:
        }

        v18 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    v3 = v37;
  }

  else
  {
    v14 = _MXMGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(MXMProbe *)self filter];
      *buf = 138412290;
      v45 = v15;
      _os_log_impl(&dword_258DAA000, v14, OS_LOG_TYPE_INFO, "Polling all process's with filter %@.", buf, 0xCu);
    }

    [(MXMResourceProbe *)self _pollAllProcesses:v3];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_pollAllProcesses:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _MXMGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *__error();
    v13[0] = 67109120;
    v13[1] = v7;
    _os_log_impl(&dword_258DAA000, v6, OS_LOG_TYPE_ERROR, "Clearing errno for libproc call (value being cleared: %i).", v13, 8u);
  }

  *__error() = 0;
  v8 = proc_listpids(1u, 0, 0, 0);
  v9 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  proc_listpids(1u, 0, v9, 32);
  if (*__error())
  {
    [(MXMResourceProbe *)a2 _pollAllProcesses:?];
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  v10 = v9;
  do
  {
    v11 = *v10++;
    if ((v11 & 0x80000000) == 0)
    {
      [(MXMResourceProbe *)self _pollProcessWithData:v5 pid:?];
    }

    --v8;
  }

  while (v8);
LABEL_9:
  free(v9);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_pollProcessWithData:(id)a3 pid:(int)a4
{
  v8 = a3;
  v20 = 0;
  v9 = [(MXMProbe *)self filter];
  v10 = +[MXMUtilizationSampleTag machPort];
  v11 = [v9 matchesSamplesWithTag:v10];
  v18 = a4;
  if ((v11 & 1) != 0 || (-[MXMProbe filter](self, "filter"), v4 = objc_claimAutoreleasedReturnValue(), +[MXMUtilizationSampleTag network](MXMUtilizationSampleTag, "network"), v5 = objc_claimAutoreleasedReturnValue(), [v4 matchesSamplesWithTag:v5]))
  {
    v12 = task_for_pid(*MEMORY[0x277D85F48], a4, &v20);
    v13 = v12 != 0;
    v14 = v12 == 0;
    if (v11)
    {
      v15 = v12;

      if (v15)
      {
        goto LABEL_5;
      }

LABEL_12:
      v17 = v18;
      [(MXMResourceProbe *)self _pollProcessResourceUsageWithData:v8 pid:v18];
      if (!v14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_5:
  v16 = _MXMGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_258DAA000, v16, OS_LOG_TYPE_ERROR, "Failed to grab task port.", buf, 2u);
  }

  v17 = v18;
  [(MXMResourceProbe *)self _pollProcessResourceUsageWithData:v8 pid:v18];
  if (v14)
  {
LABEL_8:
    [(MXMResourceProbe *)self _pollTaskMachPortInformation:v8 task:v20];
    [(MXMResourceProbe *)self _pollProcessNetworkingStatsWithData:v8 pid:v17 task:v20];
  }

LABEL_9:
}

- (void)_pollProcessNetworkingStatsWithData:(id)a3 pid:(int)a4 task:(unsigned int)a5
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = a3;
  v7 = mach_absolute_time();
  pm_sample_task_and_pid();
  [(MXMResourceProbe *)self _buildData:v6 timestamp:v7 pm_networking_stats:v9 + 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, *&v9[0]];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_pollProcessResourceUsageWithData:(id)a3 pid:(int)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *buffer = 0u;
  *__error() = 0;
  v7 = proc_pid_rusage(a4, 6, buffer);
  v8 = mach_absolute_time();
  if (v7)
  {
    v9 = _MXMGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      v15[0] = 67109634;
      v15[1] = a4;
      v16 = 1024;
      v17 = v10;
      v18 = 2080;
      v19 = v12;
      _os_log_impl(&dword_258DAA000, v9, OS_LOG_TYPE_INFO, "Failed to retrieve rusage info for pid: %i. errno=%d(%s)", v15, 0x18u);
    }
  }

  else
  {
    [MXMMachUtils _nanosecondsWithAbsoluteTime:v8];
    [(MXMResourceProbe *)self _buildData:v6 timestamp:v13 rusage:buffer];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_pollAllProcesses:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMResourceProbe.m" lineNumber:383 description:{@"Failed to call proc_listpids. Errno (%i).", *__error()}];
}

- (void)_pollTaskMachPortInformation:(uint64_t)a3 task:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MXMResourceProbe.m" lineNumber:456 description:{@"Failed to retrieve port information for task: %i", a3}];
}

- (void)_pollBasicTaskInformation:(uint64_t)a3 pid:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MXMResourceProbe.m" lineNumber:463 description:{@"Failed to gather process task information for pid: %i", a3}];
}

@end