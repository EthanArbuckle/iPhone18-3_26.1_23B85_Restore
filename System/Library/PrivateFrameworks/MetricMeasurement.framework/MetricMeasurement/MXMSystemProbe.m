@interface MXMSystemProbe
+ (id)probe;
- (MXMSystemProbe)init;
- (void)_beginUpdates;
- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 cpuLoad:(processor_cpu_load_info *)a5;
- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 loadInfo:(processor_set_load_info *)a5;
- (void)_gatherConstantSystemProperties;
- (void)_pollProcessorLoadInformationWithData:(id)a3;
- (void)_pollSystemHostProcessorInfoWithData:(id)a3;
- (void)_pollSystemLoadInformationWithData:(id)a3;
- (void)_pollSystemLoop;
- (void)_pollSystemMainBody;
- (void)_prepareData;
- (void)_stopUpdates;
@end

@implementation MXMSystemProbe

+ (id)probe
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (MXMSystemProbe)init
{
  v6.receiver = self;
  v6.super_class = MXMSystemProbe;
  v2 = [(MXMProbe *)&v6 init];
  v3 = v2;
  if (v2)
  {
    updateThread = v2->_updateThread;
    v2->_updateThread = 0;
  }

  return v3;
}

- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 cpuLoad:(processor_cpu_load_info *)a5
{
  v19 = a3;
  v7 = a5->cpu_ticks[0];
  v8 = a5->cpu_ticks[1];
  v10 = a5->cpu_ticks[2];
  v9 = a5->cpu_ticks[3];
  v11 = +[MXMUtilizationSampleTag CPUTicksIdle];
  v12 = [v19 appendUnsignedIntValue:v10 tag:v11 timestamp:a4];

  v13 = +[MXMUtilizationSampleTag CPUTicksUser];
  v14 = [v19 appendUnsignedIntValue:v7 tag:v13 timestamp:a4];

  v15 = +[MXMUtilizationSampleTag CPUTicksSystem];
  v16 = [v19 appendUnsignedIntValue:v8 tag:v15 timestamp:a4];

  v17 = +[MXMUtilizationSampleTag CPUTicksNice];
  v18 = [v19 appendUnsignedIntValue:v9 tag:v17 timestamp:a4];
}

- (void)_buildData:(id)a3 timestamp:(unint64_t)a4 loadInfo:(processor_set_load_info *)a5
{
  v13 = a3;
  thread_count = a5->thread_count;
  v8 = +[MXMUtilizationSampleTag CPULoadThread];
  v9 = [v13 appendIntValue:thread_count tag:v8 timestamp:a4];

  task_count = a5->task_count;
  v11 = +[MXMUtilizationSampleTag CPULoadTask];
  v12 = [v13 appendIntValue:task_count tag:v11 timestamp:a4];
}

- (void)_prepareData
{
  v3 = objc_alloc_init(MXMMutableSampleData);
  data = self->_data;
  self->_data = v3;

  v5 = self->_data;
  v6 = [MXMMutableSampleSet alloc];
  v7 = +[MXMUtilizationSampleTag CPUTicksIdle];
  v8 = [(MXMSampleSet *)v6 initWithTag:v7 unit:0 attributes:0];
  [(MXMMutableSampleData *)v5 appendSet:v8];

  v9 = self->_data;
  v10 = [MXMMutableSampleSet alloc];
  v11 = +[MXMUtilizationSampleTag CPUTicksUser];
  v12 = [(MXMSampleSet *)v10 initWithTag:v11 unit:0 attributes:0];
  [(MXMMutableSampleData *)v9 appendSet:v12];

  v13 = self->_data;
  v14 = [MXMMutableSampleSet alloc];
  v15 = +[MXMUtilizationSampleTag CPUTicksSystem];
  v16 = [(MXMSampleSet *)v14 initWithTag:v15 unit:0 attributes:0];
  [(MXMMutableSampleData *)v13 appendSet:v16];

  v17 = self->_data;
  v18 = [MXMMutableSampleSet alloc];
  v19 = +[MXMUtilizationSampleTag CPUTicksNice];
  v20 = [(MXMSampleSet *)v18 initWithTag:v19 unit:0 attributes:0];
  [(MXMMutableSampleData *)v17 appendSet:v20];

  v21 = self->_data;
  v22 = [MXMMutableSampleSet alloc];
  v23 = +[MXMUtilizationSampleTag CPULoadThread];
  v24 = [(MXMSampleSet *)v22 initWithTag:v23 unit:0 attributes:0];
  [(MXMMutableSampleData *)v21 appendSet:v24];

  v25 = self->_data;
  v26 = [MXMMutableSampleSet alloc];
  v28 = +[MXMUtilizationSampleTag CPULoadTask];
  v27 = [(MXMSampleSet *)v26 initWithTag:v28 unit:0 attributes:0];
  [(MXMMutableSampleData *)v25 appendSet:v27];
}

- (void)_beginUpdates
{
  v5.receiver = self;
  v5.super_class = MXMSystemProbe;
  [(MXMProbe *)&v5 _beginUpdates];
  v3 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel__pollSystemLoop object:0];
  updateThread = self->_updateThread;
  self->_updateThread = v3;

  [(MXMSystemProbe *)self _pollSystemLoop];
  [(MXMSystemProbe *)self _gatherConstantSystemProperties];
}

- (void)_stopUpdates
{
  v4.receiver = self;
  v4.super_class = MXMSystemProbe;
  [(MXMProbe *)&v4 _stopUpdates];
  [(NSThread *)self->_updateThread cancel];
  updateThread = self->_updateThread;
  self->_updateThread = 0;
}

- (void)_pollSystemLoop
{
  v4 = [MEMORY[0x277CCACC8] currentThread];
  if ([v4 isCancelled])
  {
LABEL_4:
  }

  else
  {
    while (1)
    {
      v3 = [(MXMProbe *)self updating];

      if (!v3)
      {
        break;
      }

      [(MXMSystemProbe *)self _pollSystemMainBody];
      usleep(0xF4240u);
      [(MXMSystemProbe *)self _pollSystemLoop];
      v4 = [MEMORY[0x277CCACC8] currentThread];
      if ([v4 isCancelled])
      {
        goto LABEL_4;
      }
    }
  }
}

- (void)_gatherConstantSystemProperties
{
  v3 = self->_data;
  [(MXMSystemProbe *)self _pollSystemHostProcessorInfoWithData:v3];
  [(MXMProbe *)self _handleIncomingData:v3];
}

- (void)_pollSystemMainBody
{
  v3 = self->_data;
  [(MXMSystemProbe *)self _pollProcessorLoadInformationWithData:v3];
  [(MXMSystemProbe *)self _pollSystemLoadInformationWithData:v3];
  [(MXMSystemProbe *)self _pollSystemThermalsWithData:v3];
  [(MXMSystemProbe *)self _pollSystemBatteryWithData:v3];
}

- (void)_pollSystemHostProcessorInfoWithData:(id)a3
{
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33[0] = &unk_286A26088;
  v33[1] = &unk_286A260B8;
  v34[0] = &unk_286A260A0;
  v34[1] = &unk_286A260D0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v6 = [v5 allKeys];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    v27 = v5;
    do
    {
      v9 = [v5 allKeys];
      v10 = [v9 objectAtIndexedSubscript:v8];

      v11 = [v5 objectForKeyedSubscript:v10];
      v29 = v10;
      v12 = [v10 intValue];
      v28 = v11;
      v13 = [v11 integerValue];
      v14 = malloc_type_malloc(v13, 0x18C85E1CuLL);
      *out_processor_infoCnt = 0;
      v15 = MEMORY[0x259C9CA60]();
      LODWORD(v10) = host_processor_info(v15, v12, &out_processor_infoCnt[1], v14, out_processor_infoCnt);
      v16 = mach_absolute_time();
      if (v10)
      {
        [MXMSystemProbe _pollSystemHostProcessorInfoWithData:];
      }

      [(MXMSystemProbe *)self _buildData:v4 timestamp:v16 processorCount:out_processor_infoCnt[1]];
      if (out_processor_infoCnt[1])
      {
        if ((v12 - 1) > 1)
        {
          v26 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MetricMeasurement" reason:@"Invalid Processor Flavor Value" userInfo:0];
          objc_exception_throw(v26);
        }

        v17 = 0;
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = *v14;
          if (v12 == 1)
          {
            [(MXMSystemProbe *)self _buildData:v4 timestamp:v16 cpuInfo:&v20[v17]];
          }

          else
          {
            [(MXMSystemProbe *)self _buildData:v4 timestamp:v16 cpuLoad:&v20[v18]];
          }

          ++v19;
          v18 += 4;
          v17 += 5;
        }

        while (v19 < out_processor_infoCnt[1]);
      }

      v21 = mach_vm_deallocate(*MEMORY[0x277D85F48], *v14, v13);
      v22 = _MXMGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v32 = v21;
        _os_log_impl(&dword_258DAA000, v22, OS_LOG_TYPE_DEBUG, "Recieved non-success kernel return from mach_vm_deallocate (%i).", buf, 8u);
      }

      free(v14);
      ++v8;
      v5 = v27;
      v23 = [v27 allKeys];
      v24 = [v23 count];
    }

    while (v8 < v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_pollProcessorLoadInformationWithData:(id)a3
{
  v4 = a3;
  *info_out = 0;
  v11 = 0;
  info_outCnt = 4;
  default_set = 0;
  v5 = MEMORY[0x259C9CA60]();
  if (processor_set_default(v5, &default_set))
  {
    [MXMSystemProbe _pollProcessorLoadInformationWithData:];
  }

  v6 = processor_set_statistics(default_set, 4, info_out, &info_outCnt);
  v7 = mach_absolute_time();
  if (v6)
  {
    [MXMSystemProbe _pollProcessorLoadInformationWithData:];
  }

  [(MXMSystemProbe *)self _buildData:v4 timestamp:v7 loadInfo:info_out];
}

- (void)_pollSystemLoadInformationWithData:(id)a3
{
  host_info64_outCnt = 0;
  memset(&v9[6], 0, 64);
  v8 = MEMORY[0x259C9CA60](self, a2, a3, v3, v4, v5, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (host_statistics64(v8, 4, v9, &host_info64_outCnt))
  {
    [MXMSystemProbe _pollSystemLoadInformationWithData:];
  }
}

- (void)_pollSystemHostProcessorInfoWithData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_pollProcessorLoadInformationWithData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_pollProcessorLoadInformationWithData:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_pollSystemLoadInformationWithData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end