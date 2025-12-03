@interface MXMSystemProbe
+ (id)probe;
- (MXMSystemProbe)init;
- (void)_beginUpdates;
- (void)_buildData:(id)data timestamp:(unint64_t)timestamp cpuLoad:(processor_cpu_load_info *)load;
- (void)_buildData:(id)data timestamp:(unint64_t)timestamp loadInfo:(processor_set_load_info *)info;
- (void)_gatherConstantSystemProperties;
- (void)_pollProcessorLoadInformationWithData:(id)data;
- (void)_pollSystemHostProcessorInfoWithData:(id)data;
- (void)_pollSystemLoadInformationWithData:(id)data;
- (void)_pollSystemLoop;
- (void)_pollSystemMainBody;
- (void)_prepareData;
- (void)_stopUpdates;
@end

@implementation MXMSystemProbe

+ (id)probe
{
  v2 = objc_alloc_init(self);

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

- (void)_buildData:(id)data timestamp:(unint64_t)timestamp cpuLoad:(processor_cpu_load_info *)load
{
  dataCopy = data;
  v7 = load->cpu_ticks[0];
  v8 = load->cpu_ticks[1];
  v10 = load->cpu_ticks[2];
  v9 = load->cpu_ticks[3];
  v11 = +[MXMUtilizationSampleTag CPUTicksIdle];
  v12 = [dataCopy appendUnsignedIntValue:v10 tag:v11 timestamp:timestamp];

  v13 = +[MXMUtilizationSampleTag CPUTicksUser];
  v14 = [dataCopy appendUnsignedIntValue:v7 tag:v13 timestamp:timestamp];

  v15 = +[MXMUtilizationSampleTag CPUTicksSystem];
  v16 = [dataCopy appendUnsignedIntValue:v8 tag:v15 timestamp:timestamp];

  v17 = +[MXMUtilizationSampleTag CPUTicksNice];
  v18 = [dataCopy appendUnsignedIntValue:v9 tag:v17 timestamp:timestamp];
}

- (void)_buildData:(id)data timestamp:(unint64_t)timestamp loadInfo:(processor_set_load_info *)info
{
  dataCopy = data;
  thread_count = info->thread_count;
  v8 = +[MXMUtilizationSampleTag CPULoadThread];
  v9 = [dataCopy appendIntValue:thread_count tag:v8 timestamp:timestamp];

  task_count = info->task_count;
  v11 = +[MXMUtilizationSampleTag CPULoadTask];
  v12 = [dataCopy appendIntValue:task_count tag:v11 timestamp:timestamp];
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
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if ([currentThread isCancelled])
  {
LABEL_4:
  }

  else
  {
    while (1)
    {
      updating = [(MXMProbe *)self updating];

      if (!updating)
      {
        break;
      }

      [(MXMSystemProbe *)self _pollSystemMainBody];
      usleep(0xF4240u);
      [(MXMSystemProbe *)self _pollSystemLoop];
      currentThread = [MEMORY[0x277CCACC8] currentThread];
      if ([currentThread isCancelled])
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

- (void)_pollSystemHostProcessorInfoWithData:(id)data
{
  v34[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v33[0] = &unk_286A26088;
  v33[1] = &unk_286A260B8;
  v34[0] = &unk_286A260A0;
  v34[1] = &unk_286A260D0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  allKeys = [v5 allKeys];
  v7 = [allKeys count];

  if (v7)
  {
    v8 = 0;
    v27 = v5;
    do
    {
      allKeys2 = [v5 allKeys];
      v10 = [allKeys2 objectAtIndexedSubscript:v8];

      v11 = [v5 objectForKeyedSubscript:v10];
      v29 = v10;
      intValue = [v10 intValue];
      v28 = v11;
      integerValue = [v11 integerValue];
      v14 = malloc_type_malloc(integerValue, 0x18C85E1CuLL);
      *out_processor_infoCnt = 0;
      v15 = MEMORY[0x259C9CA60]();
      LODWORD(v10) = host_processor_info(v15, intValue, &out_processor_infoCnt[1], v14, out_processor_infoCnt);
      v16 = mach_absolute_time();
      if (v10)
      {
        [MXMSystemProbe _pollSystemHostProcessorInfoWithData:];
      }

      [(MXMSystemProbe *)self _buildData:dataCopy timestamp:v16 processorCount:out_processor_infoCnt[1]];
      if (out_processor_infoCnt[1])
      {
        if ((intValue - 1) > 1)
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
          if (intValue == 1)
          {
            [(MXMSystemProbe *)self _buildData:dataCopy timestamp:v16 cpuInfo:&v20[v17]];
          }

          else
          {
            [(MXMSystemProbe *)self _buildData:dataCopy timestamp:v16 cpuLoad:&v20[v18]];
          }

          ++v19;
          v18 += 4;
          v17 += 5;
        }

        while (v19 < out_processor_infoCnt[1]);
      }

      v21 = mach_vm_deallocate(*MEMORY[0x277D85F48], *v14, integerValue);
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
      allKeys3 = [v27 allKeys];
      v24 = [allKeys3 count];
    }

    while (v8 < v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_pollProcessorLoadInformationWithData:(id)data
{
  dataCopy = data;
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

  [(MXMSystemProbe *)self _buildData:dataCopy timestamp:v7 loadInfo:info_out];
}

- (void)_pollSystemLoadInformationWithData:(id)data
{
  host_info64_outCnt = 0;
  memset(&v9[6], 0, 64);
  v8 = MEMORY[0x259C9CA60](self, a2, data, v3, v4, v5, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
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