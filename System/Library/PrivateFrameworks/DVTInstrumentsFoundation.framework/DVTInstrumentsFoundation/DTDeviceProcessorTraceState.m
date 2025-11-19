@interface DTDeviceProcessorTraceState
- (DTDeviceProcessorTraceState)init;
- (id)capabilities;
- (id)dictionaryRepresentation;
@end

@implementation DTDeviceProcessorTraceState

- (DTDeviceProcessorTraceState)init
{
  v21.receiver = self;
  v21.super_class = DTDeviceProcessorTraceState;
  v2 = [(DTDeviceProcessorTraceState *)&v21 init];
  if (v2)
  {
    v3 = IOServiceMatching("AppleProcessorTraceNub");
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v3);
    if (MatchingService)
    {
      v5 = MatchingService;
      v6 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"AllocatedBufferSize", *MEMORY[0x277CBECE8], 0);
      v8 = CFProperty;
      if (CFProperty)
      {
        v9 = CFProperty;
      }

      else
      {
        v9 = &unk_285A36A98;
      }

      objc_storeStrong(&v2->_allocatedBufferSize, v9);

      v10 = IORegistryEntryCreateCFProperty(v5, @"RequestedBufferSize", v6, 0);
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = &unk_285A36A98;
      }

      objc_storeStrong(&v2->_requestedBufferSize, v12);

      allocatedBufferSize = IORegistryEntryCreateCFProperty(v5, @"DeviceCapabilities", v6, 0);
      v14 = [allocatedBufferSize objectForKeyedSubscript:@"Streaming"];
      v15 = [allocatedBufferSize objectForKeyedSubscript:@"ProductionTrace"];
      v16 = [allocatedBufferSize objectForKeyedSubscript:@"DevelopmentTrace"];
      v2->_supportsStreaming = [v14 BOOLValue];
      v2->_supportsProdTrace = [v15 BOOLValue];
      v17 = [v16 BOOLValue];
      v2->_supportsDevTrace = v17;
      v2->_supportsHardware = (v2->_supportsProdTrace | v17) & 1;
      IOObjectRelease(v5);
      v2->_supportsResume = 1;
      v18 = processor_trace_supports_virtual_buffer();
      v2->_hardwareConfigured = ([(NSNumber *)v2->_allocatedBufferSize unsignedLongLongValue]!= 0) | v18 & 1;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_24802CB24();
      }

      requestedBufferSize = v2->_requestedBufferSize;
      v2->_requestedBufferSize = &unk_285A36A98;

      allocatedBufferSize = v2->_allocatedBufferSize;
      v2->_allocatedBufferSize = &unk_285A36A98;
    }
  }

  return v2;
}

- (id)capabilities
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_supportsStreaming)
  {
    [v3 addObject:@"com.apple.dt.processor-trace.streaming"];
  }

  if (self->_supportsHardware)
  {
    [v4 addObject:@"com.apple.dt.processor-trace.hw-supported"];
  }

  if (self->_hardwareConfigured)
  {
    [v4 addObject:@"com.apple.dt.processor-trace.hw-configured"];
  }

  if (self->_supportsDevTrace)
  {
    [v4 addObject:@"com.apple.dt.processor-trace.dev-trace-supported"];
  }

  if (self->_supportsProdTrace)
  {
    [v4 addObject:@"com.apple.dt.processor-trace.prod-trace-supported"];
  }

  if (self->_supportsResume)
  {
    [v4 addObject:@"com.apple.dt.processor-trace.resume-supported"];
  }

  [v4 addObject:@"com.apple.dt.processor-trace.size-limit-supported"];
  v5 = [v4 copy];

  return v5;
}

- (id)dictionaryRepresentation
{
  v17[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v16[0] = @"Streaming";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsStreaming];
  v17[0] = v4;
  v16[1] = @"HWSupported";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsHardware];
  v17[1] = v5;
  v16[2] = @"ProdTraceSupported";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsProdTrace];
  v17[2] = v6;
  v16[3] = @"DevTraceSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsDevTrace];
  v17[3] = v7;
  v16[4] = @"HWConfigured";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_hardwareConfigured];
  allocatedBufferSize = self->_allocatedBufferSize;
  requestedBufferSize = self->_requestedBufferSize;
  v17[4] = v8;
  v17[5] = allocatedBufferSize;
  v16[5] = @"AllocatedBufferSize";
  v16[6] = @"RequestedBufferSize";
  v17[6] = requestedBufferSize;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  v12 = [v3 initWithDictionary:v11];

  v13 = processor_trace_recording_version();
  if (v13)
  {
    [v12 setObject:v13 forKeyedSubscript:@"HWTraceVersion"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

@end