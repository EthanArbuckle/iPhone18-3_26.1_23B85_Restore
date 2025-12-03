@interface DTSamplingService
+ (void)registerCapabilities:(id)capabilities;
- (DTSamplingService)initWithChannel:(id)channel;
- (void)_allocateBuffer;
- (void)_outputData;
- (void)addSampleWithTimeInfo:(__CFDictionary *)info useZeroDelta:(BOOL)delta;
- (void)collectData;
- (void)dealloc;
- (void)setOutputRate:(id)rate;
- (void)setTargetPid:(id)pid;
- (void)startSampling;
@end

@implementation DTSamplingService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.sampling" withVersion:11 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.sampling.immediate" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.sampling.deferred" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.coresampling" withVersion:10 forClass:self];
}

- (DTSamplingService)initWithChannel:(id)channel
{
  v4.receiver = self;
  v4.super_class = DTSamplingService;
  result = [(DTXService *)&v4 initWithChannel:channel];
  if (result)
  {
    result->_samplingRate = 100000;
    result->_outputRate = 200000;
  }

  return result;
}

- (void)dealloc
{
  backtraceBuffer = self->_backtraceBuffer;
  if (backtraceBuffer)
  {
    free(backtraceBuffer);
    self->_backtraceBuffer = 0;
  }

  if (self->_context)
  {
    destroy_sampling_context();
    self->_context = 0;
  }

  task = self->_task;
  if (task + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], task);
  }

  v5.receiver = self;
  v5.super_class = DTSamplingService;
  [(DTSamplingService *)&v5 dealloc];
}

- (void)setOutputRate:(id)rate
{
  unsignedLongLongValue = [rate unsignedLongLongValue];
  self->_outputRate = unsignedLongLongValue;
  samplingRate = self->_samplingRate;
  if (unsignedLongLongValue > samplingRate)
  {
    samplingRate = unsignedLongLongValue;
  }

  self->_outputRate = samplingRate;
}

- (void)setTargetPid:(id)pid
{
  intValue = [pid intValue];
  v5 = [DTInstrumentServer taskForPid:intValue];
  self->_task = v5;
  if (v5 + 1 <= 1)
  {
    [MEMORY[0x277CBEAD8] raise:@"DTSamplingServiceException" format:{@"Failed to get task for pid %d", intValue}];
  }
}

- (void)startSampling
{
  self->_doCollectData = 1;
  task = self->_task;
  self->_context = create_sampling_context_for_task();
  v4 = MEMORY[0x277CCACC8];

  MEMORY[0x2821F9670](v4, sel_detachNewThreadSelector_toTarget_withObject_);
}

- (void)_outputData
{
  channel = [(DTXService *)self channel];
  v3 = [MEMORY[0x277D03668] messageWithBuffer:self->_backtraceBuffer length:8 * self->_backtraceBufferUsedSize];
  [channel sendMessage:v3 replyHandler:0];
}

- (void)_allocateBuffer
{
  backtraceBuffer = self->_backtraceBuffer;
  if (backtraceBuffer)
  {
    free(backtraceBuffer);
  }

  self->_backtraceBufferSize = 1368576;
  self->_backtraceBuffer = malloc_type_malloc(0x14E200uLL, 0x100004000313F17uLL);

  [(DTSamplingService *)self _resetBuffer];
}

- (void)collectData
{
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  if (Mutable)
  {
    v4 = Mutable;
    [(DTSamplingService *)self _allocateBuffer];
    if (self->_doCollectData)
    {
      v5 = 1;
      do
      {
        v6 = objc_autoreleasePoolPush();
        [(DTSamplingService *)self addSampleWithTimeInfo:v4 useZeroDelta:v5 & 1];
        outputRateDelta = self->_outputRateDelta;
        if (outputRateDelta >= self->_outputRate)
        {
          [(DTSamplingService *)self _outputData];
          self->_outputRateDelta = 0;
          [(DTSamplingService *)self _resetBuffer];
        }

        else
        {
          self->_outputRateDelta = self->_samplingRate + outputRateDelta;
        }

        usleep(self->_samplingRate);
        objc_autoreleasePoolPop(v6);
        v5 = 0;
      }

      while (self->_doCollectData);
    }

    backtraceBuffer = self->_backtraceBuffer;
    if (backtraceBuffer)
    {
      free(backtraceBuffer);
      self->_backtraceBuffer = 0;
    }

    if (self->_context)
    {
      destroy_sampling_context();
      self->_context = 0;
    }

    CFDictionaryApplyFunction(v4, sub_247F7919C, 0);

    CFRelease(v4);
  }
}

- (void)addSampleWithTimeInfo:(__CFDictionary *)info useZeroDelta:(BOOL)delta
{
  deltaCopy = delta;
  act_list = 0;
  act_listCnt = 0;
  if (!task_threads(self->_task, &act_list, &act_listCnt))
  {
    backtraceBufferSize = self->_backtraceBufferSize;
    if (self->_backtraceBufferUsedSize + 1568 >= backtraceBufferSize)
    {
      v8 = malloc_type_realloc(self->_backtraceBuffer, 2 * backtraceBufferSize, 0xBC6F9FA2uLL);
      if (v8)
      {
        v9 = v8;
        self->_backtraceBufferSize = malloc_size(v8);
        self->_backtraceBuffer = v9;
      }

      else
      {
        [(DTSamplingService *)self _outputData];
        self->_outputRateDelta = 0;
        [(DTSamplingService *)self _allocateBuffer];
      }
    }

    backtraceBuffer = self->_backtraceBuffer;
    ++*backtraceBuffer;
    v11 = act_listCnt;
    backtraceBufferUsedSize = self->_backtraceBufferUsedSize;
    self->_backtraceBufferUsedSize = backtraceBufferUsedSize + 1;
    backtraceBuffer[backtraceBufferUsedSize] = v11;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v14 = self->_backtraceBuffer;
    v15 = self->_backtraceBufferUsedSize;
    self->_backtraceBufferUsedSize = v15 + 1;
    v14[v15] = (v13 * 1000000.0);
    thread_info_outCnt = 10;
    v31 = 0;
    *thread_info_out = 0u;
    v30 = 0u;
    value = 0;
    if (act_listCnt)
    {
      v16 = 0;
      v27 = deltaCopy;
      infoCopy = info;
      do
      {
        v18 = act_list[v16];
        thread_info(act_list[v16], 3u, thread_info_out, &thread_info_outCnt);
        if (CFDictionaryGetValueIfPresent(info, v18, &value))
        {
          mach_port_deallocate(*MEMORY[0x277D85F48], v18);
        }

        else
        {
          v19 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
          value = v19;
          *v19 = 0;
          CFDictionarySetValue(info, v18, v19);
        }

        if (deltaCopy)
        {
          v20 = value;
        }

        else
        {
          v20 = value;
          if ((BYTE12(v30) & 2) == 0 && DWORD2(v30) == 1)
          {
            v21 = thread_info_out[1] + 1000000 * (thread_info_out[0] - *value) - *(value + 1);
          }
        }

        *v20 = *thread_info_out;
        thread_suspend(v18);
        context = self->_context;
        sample_remote_thread();
        thread_resume(v18);
        v23 = self->_backtraceBuffer;
        v24 = self->_backtraceBufferUsedSize;
        v25 = &v23[v24];
        v24 += 2;
        self->_backtraceBufferUsedSize = v24;
        *v25 = 0;
        v25[1] = 0;
        info = infoCopy;
        self->_backtraceBufferUsedSize = v24 + 1;
        v23[v24] = v18;
        ++v16;
        deltaCopy = v27;
      }

      while (v16 < act_listCnt);
    }

    v26 = self->_context;
    sampling_context_clear_cache();
    if (act_listCnt)
    {
      mach_vm_deallocate(*MEMORY[0x277D85F48], act_list, 4 * act_listCnt);
    }
  }
}

@end