@interface DTGPUAPSConfig
- (DTGPUAPSConfig)init;
- (NSDictionary)grcTrigger;
- (id)toDictionary;
- (void)readConfig:(id)a3;
@end

@implementation DTGPUAPSConfig

- (id)toDictionary
{
  v32[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v31[0] = @"Duration";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_duration];
  v32[0] = v24;
  v31[1] = @"BufferSizeInKB";
  nRingBuffers = self->_nRingBuffers;
  if (nRingBuffers <= 1)
  {
    nRingBuffers = 1;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nRingBuffers * self->_ringBufferSizeInKB];
  v32[1] = v23;
  v31[2] = @"RingBufferSizeInKB";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_ringBufferSizeInKB];
  v32[2] = v22;
  v31[3] = @"SystemTimePeriod";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_systemTimePeriod];
  v32[3] = v21;
  v31[4] = @"ProfileControl";
  v29[0] = @"CliqueTraceLevel";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_cliqueTraceLevel];
  v30[0] = v20;
  v29[1] = @"EmitPos";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_emitPos];
  v30[1] = v19;
  v29[2] = @"EmitThreadControlFlow";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_emitThreadControlFlow];
  v30[2] = v18;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v32[4] = v5;
  v32[5] = &unk_285A36C78;
  v31[5] = @"SyncDrainMode";
  v31[6] = @"KickAndStateTracing";
  v27[0] = @"PulsePeriod";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pulsePeriod];
  v28[0] = v6;
  v27[1] = @"CountPeriod";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_countPeriod];
  v28[1] = v7;
  v27[2] = @"TileTracing";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tileTracing];
  v28[2] = v8;
  v27[3] = @"ESLInstTracing";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_eslInstTracing];
  v28[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v32[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];
  v12 = [v3 dictionaryWithDictionary:v11];

  if (self->_subSamplingMinTraced || self->_subSamplingTargetThreshold)
  {
    v25[0] = @"MinTraced";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v25[1] = @"TargetThreshold";
    v26[0] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_subSamplingTargetThreshold];
    v26[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v12 setObject:v15 forKeyedSubscript:@"CliqueSubSampling"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (DTGPUAPSConfig)init
{
  v3.receiver = self;
  v3.super_class = DTGPUAPSConfig;
  result = [(DTGPUAPSConfig *)&v3 init];
  if (result)
  {
    *&result->_ringBufferSizeInKB = xmmword_24803DA70;
    result->_emitPos = 0;
    result->_emitThreadControlFlow = 0;
    result->_cliqueTraceLevel = 2;
    *&result->_subSamplingMinTraced = vdupq_n_s64(1uLL);
    *&result->_pulsePeriod = xmmword_24803DA80;
    result->_tileTracing = 0;
    result->_eslInstTracing = 0;
    result->_nRingBuffers = 10;
  }

  return result;
}

- (void)readConfig:(id)a3
{
  v36 = a3;
  v4 = [v36 objectForKeyedSubscript:@"Duration"];
  if (v4)
  {
    v5 = [v36 objectForKeyedSubscript:@"Duration"];
    self->_duration = [v5 unsignedIntegerValue];
  }

  v6 = [v36 objectForKeyedSubscript:@"RingBufferSizeInKB"];
  if (v6)
  {
    v7 = [v36 objectForKeyedSubscript:@"RingBufferSizeInKB"];
    self->_ringBufferSizeInKB = [v7 unsignedIntegerValue];
  }

  v8 = [v36 objectForKeyedSubscript:@"SystemTimePeriod"];
  if (v8)
  {
    v9 = [v36 objectForKeyedSubscript:@"SystemTimePeriod"];
    self->_systemTimePeriod = [v9 unsignedIntegerValue];
  }

  v10 = [v36 objectForKeyedSubscript:@"NumRingBuffers"];
  if (v10)
  {
    v11 = [v36 objectForKeyedSubscript:@"NumRingBuffers"];
    self->_nRingBuffers = [v11 unsignedIntegerValue];
  }

  v12 = [v36 objectForKeyedSubscript:@"ProfileControl"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"CliqueTraceLevel"];
    if (v14)
    {
      v15 = [v13 objectForKeyedSubscript:@"CliqueTraceLevel"];
      self->_cliqueTraceLevel = [v15 unsignedIntegerValue];
    }

    v16 = [v13 objectForKeyedSubscript:@"EmitPos"];
    if (v16)
    {
      v17 = [v13 objectForKeyedSubscript:@"EmitPos"];
      self->_emitPos = [v17 unsignedIntegerValue];
    }

    v18 = [v13 objectForKeyedSubscript:@"EmitThreadControlFlow"];
    if (v18)
    {
      v19 = [v13 objectForKeyedSubscript:@"EmitThreadControlFlow"];
      self->_emitThreadControlFlow = [v19 unsignedIntegerValue];
    }
  }

  v20 = [v36 objectForKeyedSubscript:@"CliqueSubSampling"];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 objectForKeyedSubscript:@"MinTraced"];
    if (v22)
    {
      v23 = [v21 objectForKeyedSubscript:@"MinTraced"];
      self->_subSamplingMinTraced = [v23 unsignedIntegerValue];
    }

    v24 = [v21 objectForKeyedSubscript:@"TargetThreshold"];
    if (v24)
    {
      v25 = [v21 objectForKeyedSubscript:@"TargetThreshold"];
      self->_subSamplingTargetThreshold = [v25 unsignedIntegerValue];
    }
  }

  v26 = [v36 objectForKeyedSubscript:@"KickAndStateTracing"];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 objectForKeyedSubscript:@"PulsePeriod"];
    if (v28)
    {
      v29 = [v27 objectForKeyedSubscript:@"PulsePeriod"];
      self->_pulsePeriod = [v29 unsignedIntegerValue];
    }

    v30 = [v27 objectForKeyedSubscript:@"CountPeriod"];
    if (v30)
    {
      v31 = [v27 objectForKeyedSubscript:@"CountPeriod"];
      self->_countPeriod = [v31 unsignedIntegerValue];
    }

    v32 = [v27 objectForKeyedSubscript:@"TileTracing"];
    if (v32)
    {
      v33 = [v27 objectForKeyedSubscript:@"TileTracing"];
      self->_tileTracing = [v33 unsignedIntegerValue];
    }

    v34 = [v27 objectForKeyedSubscript:@"ESLInstTracing"];
    if (v34)
    {
      v35 = [v27 objectForKeyedSubscript:@"ESLInstTracing"];
      self->_eslInstTracing = [v35 unsignedIntegerValue];
    }
  }
}

- (NSDictionary)grcTrigger
{
  v2 = [(DTGPUAPSConfig *)self toDictionary];
  v3 = [v2 objectForKeyedSubscript:@"KickAndStateTracing"];

  return v3;
}

@end