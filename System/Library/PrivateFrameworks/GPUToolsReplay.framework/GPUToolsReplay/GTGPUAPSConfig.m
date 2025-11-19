@interface GTGPUAPSConfig
- (NSDictionary)grcTrigger;
- (id)initForCounters;
- (id)initForProfiling;
- (id)initForProfilingConfigurationDetermination;
- (id)initForTimeline;
- (id)initForTimelineConfigurationDetermination;
- (id)toDictionary;
- (void)readConfig:(id)a3;
@end

@implementation GTGPUAPSConfig

- (NSDictionary)grcTrigger
{
  v2 = [(GTGPUAPSConfig *)self toDictionary];
  v3 = [v2 objectForKeyedSubscript:@"KickAndStateTracing"];

  return v3;
}

- (void)readConfig:(id)a3
{
  v65 = a3;
  v4 = [v65 objectForKeyedSubscript:@"SyncDrainMode"];
  if (v4)
  {
    v5 = [v65 objectForKeyedSubscript:@"SyncDrainMode"];
    self->_syncDrainMode = [v5 unsignedIntegerValue];
  }

  v6 = [v65 objectForKeyedSubscript:@"Duration"];
  if (v6)
  {
    v7 = [v65 objectForKeyedSubscript:@"Duration"];
    self->_duration = [v7 unsignedIntegerValue];
  }

  v8 = [v65 objectForKeyedSubscript:@"RingBufferSizeInKB"];
  if (v8)
  {
    v9 = [v65 objectForKeyedSubscript:@"RingBufferSizeInKB"];
    self->_ringBufferSizeInKb = [v9 unsignedIntegerValue];
  }

  v10 = [v65 objectForKeyedSubscript:@"SystemTimePeriod"];
  if (v10)
  {
    v11 = [v65 objectForKeyedSubscript:@"SystemTimePeriod"];
    self->_systemTimePeriod = [v11 unsignedIntegerValue];
  }

  v12 = [v65 objectForKeyedSubscript:@"CliqueAdvanceReason"];
  if (v12)
  {
    v13 = [v65 objectForKeyedSubscript:@"CliqueAdvanceReason"];
    self->_cliqueAdvanceReason = [v13 BOOLValue];
  }

  v14 = [v65 objectForKeyedSubscript:@"ProfileControl"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKeyedSubscript:@"CliqueTraceLevel"];
    if (v16)
    {
      v17 = [v15 objectForKeyedSubscript:@"CliqueTraceLevel"];
      self->_cliqueTraceLevel = [v17 unsignedIntegerValue];
    }

    v18 = [v15 objectForKeyedSubscript:@"EmitPos"];
    if (v18)
    {
      v19 = [v15 objectForKeyedSubscript:@"EmitPos"];
      self->_emitPos = [v19 unsignedIntegerValue];
    }

    v20 = [v15 objectForKeyedSubscript:@"EmitThreadControlFlow"];
    if (v20)
    {
      v21 = [v15 objectForKeyedSubscript:@"EmitThreadControlFlow"];
      self->_emitThreadControlFlow = [v21 unsignedIntegerValue];
    }
  }

  v22 = [v65 objectForKeyedSubscript:@"CliqueSubSampling"];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 objectForKeyedSubscript:@"MinTraced"];
    if (v24)
    {
      v25 = [v23 objectForKeyedSubscript:@"MinTraced"];
      self->_subSamplingMinTraced = [v25 unsignedIntegerValue];
    }

    v26 = [v23 objectForKeyedSubscript:@"TargetThreshold"];
    if (v26)
    {
      v27 = [v23 objectForKeyedSubscript:@"TargetThreshold"];
      self->_subSamplingTargetThreshold = [v27 unsignedIntegerValue];
    }
  }

  v28 = [v65 objectForKeyedSubscript:@"KickAndStateTracing"];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 objectForKeyedSubscript:@"PulsePeriod"];
    if (v30)
    {
      v31 = [v29 objectForKeyedSubscript:@"PulsePeriod"];
      self->_pulsePeriod = [v31 unsignedIntegerValue];
    }

    v32 = [v29 objectForKeyedSubscript:@"CountPeriod"];
    if (v32)
    {
      v33 = [v29 objectForKeyedSubscript:@"CountPeriod"];
      self->_countPeriod = [v33 unsignedIntegerValue];
    }

    v34 = [v29 objectForKeyedSubscript:@"TileTracing"];
    if (v34)
    {
      v35 = [v29 objectForKeyedSubscript:@"TileTracing"];
      self->_tileTracing = [v35 unsignedIntegerValue];
    }

    v36 = [v29 objectForKeyedSubscript:@"ESLInstTracing"];
    if (v36)
    {
      v37 = [v29 objectForKeyedSubscript:@"ESLInstTracing"];
      self->_eslInstTracing = [v37 unsignedIntegerValue];
    }

    v38 = [v29 objectForKeyedSubscript:@"USCConfigOverride"];
    v39 = v38;
    if (v38)
    {
      v40 = [v38 objectForKeyedSubscript:@"PulsePeriod"];
      if (v40)
      {
        v41 = [v39 objectForKeyedSubscript:@"PulsePeriod"];
        self->_overridePulsePeriod = [v41 unsignedIntegerValue];
      }

      v42 = [v39 objectForKeyedSubscript:@"CountPeriod"];
      if (v42)
      {
        v43 = [v39 objectForKeyedSubscript:@"CountPeriod"];
        self->_overrideCountPeriod = [v43 unsignedIntegerValue];
      }

      v44 = [v39 objectForKeyedSubscript:@"TileTracing"];
      if (v44)
      {
        v45 = [v39 objectForKeyedSubscript:@"TileTracing"];
        self->_overrideTileTracing = [v45 unsignedIntegerValue];
      }

      v46 = [v39 objectForKeyedSubscript:@"ESLInstTracing"];
      if (v46)
      {
        v47 = [v39 objectForKeyedSubscript:@"ESLInstTracing"];
        self->_overrideEslInstTracing = [v47 unsignedIntegerValue];
      }
    }
  }

  v48 = [v65 objectForKeyedSubscript:@"USCConfigOverride"];
  v49 = v48;
  if (v48)
  {
    v50 = [v48 objectForKeyedSubscript:@"mGPUMask"];
    if (v50)
    {
      v51 = [v49 objectForKeyedSubscript:@"mGPUMask"];
      self->_mGPUMask = [v51 unsignedIntegerValue];
    }

    v52 = [v49 objectForKeyedSubscript:@"USCNumPerMGPU"];
    if (v52)
    {
      v53 = [v49 objectForKeyedSubscript:@"USCNumPerMGPU"];
      self->_uscNumPerMGPU = [v53 unsignedIntegerValue];
    }

    v54 = [v49 objectForKeyedSubscript:@"CliqueTraceLevel"];
    if (v54)
    {
      v55 = [v49 objectForKeyedSubscript:@"CliqueTraceLevel"];
      self->_overrideCliqueTraceLevel = [v55 unsignedIntegerValue];
    }

    v56 = [v49 objectForKeyedSubscript:@"EmitPos"];
    if (v56)
    {
      v57 = [v49 objectForKeyedSubscript:@"EmitPos"];
      self->_overrideEmitPos = [v57 unsignedIntegerValue];
    }

    v58 = [v49 objectForKeyedSubscript:@"EmitThreadControlFlow"];
    if (v58)
    {
      v59 = [v49 objectForKeyedSubscript:@"EmitThreadControlFlow"];
      self->_overrideEmitThreadControlFlow = [v59 unsignedIntegerValue];
    }

    v60 = [v49 objectForKeyedSubscript:@"CliqueAdvanceReason"];
    if (v60)
    {
      v61 = [v49 objectForKeyedSubscript:@"CliqueAdvanceReason"];
      self->_overrideCliqueAdvanceReason = [v61 unsignedIntegerValue] != 0;
    }

    v62 = [v49 objectForKeyedSubscript:@"USCMaskForMGPU"];

    if (v62)
    {
      v63 = [v49 objectForKeyedSubscript:@"USCMaskForMGPU"];
      uscMaskPerMGPU = self->_uscMaskPerMGPU;
      self->_uscMaskPerMGPU = v63;
    }
  }
}

- (id)initForTimelineConfigurationDetermination
{
  v3.receiver = self;
  v3.super_class = GTGPUAPSConfig;
  result = [(GTGPUAPSConfig *)&v3 init];
  if (result)
  {
    *(result + 2) = 1;
    *(result + 10) = 2;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 2) = xmmword_24DA8BBA0;
    *(result + 3) = xmmword_24DA8BBB0;
    *(result + 4) = xmmword_24DA8BB90;
    *(result + 4) = 0;
    *(result + 120) = xmmword_24DA8BBC0;
    *(result + 136) = xmmword_24DA8BBB0;
    *(result + 152) = xmmword_24DA8BBD0;
    *(result + 21) = 1;
    *(result + 22) = 255;
    *(result + 24) = 1;
  }

  return result;
}

- (id)initForProfilingConfigurationDetermination
{
  v3.receiver = self;
  v3.super_class = GTGPUAPSConfig;
  result = [(GTGPUAPSConfig *)&v3 init];
  if (result)
  {
    *(result + 2) = 1;
    *(result + 10) = 2;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 2) = xmmword_24DA8BBA0;
    *(result + 3) = xmmword_24DA8BBB0;
    *(result + 4) = xmmword_24DA8BBE0;
    *(result + 4) = 256;
    *(result + 120) = xmmword_24DA8BBF0;
    *(result + 136) = vdupq_n_s64(1uLL);
    *(result + 152) = xmmword_24DA8BC00;
    *(result + 21) = 1;
    *(result + 22) = 255;
    *(result + 24) = 1;
  }

  return result;
}

- (id)initForTimeline
{
  v3.receiver = self;
  v3.super_class = GTGPUAPSConfig;
  result = [(GTGPUAPSConfig *)&v3 init];
  if (result)
  {
    *(result + 2) = 1;
    *(result + 4) = xmmword_24DA8BB90;
    *(result + 5) = xmmword_24DA8BBD0;
    *(result + 13) = 0;
    *(result + 14) = 0;
    *(result + 12) = 1;
    *(result + 2) = xmmword_24DA8BBC0;
    *(result + 3) = xmmword_24DA8BBB0;
    *(result + 8) = 0;
  }

  return result;
}

- (id)initForCounters
{
  v3.receiver = self;
  v3.super_class = GTGPUAPSConfig;
  result = [(GTGPUAPSConfig *)&v3 init];
  if (result)
  {
    *(result + 2) = 1;
    *(result + 11) = 0;
    *(result + 12) = 0;
    *(result + 10) = 1;
    *(result + 104) = vdupq_n_s64(1uLL);
    *(result + 2) = xmmword_24DA8BBC0;
    *(result + 3) = xmmword_24DA8BBB0;
    *(result + 4) = xmmword_24DA8BB90;
    *(result + 8) = 0;
  }

  return result;
}

- (id)initForProfiling
{
  v3.receiver = self;
  v3.super_class = GTGPUAPSConfig;
  result = [(GTGPUAPSConfig *)&v3 init];
  if (result)
  {
    *(result + 2) = 1;
    *(result + 4) = xmmword_24DA8BBE0;
    *(result + 5) = xmmword_24DA8BC00;
    *(result + 13) = 0;
    *(result + 14) = 0;
    *(result + 12) = 1;
    *(result + 2) = xmmword_24DA8BBF0;
    *(result + 3) = vdupq_n_s64(1uLL);
    *(result + 8) = 1;
  }

  return result;
}

- (id)toDictionary
{
  v51[8] = *MEMORY[0x277D85DE8];
  v39 = MEMORY[0x277CBEB38];
  v50[0] = @"Duration";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_duration];
  v51[0] = v43;
  v50[1] = @"RingBufferSizeInKB";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_ringBufferSizeInKb];
  v51[1] = v42;
  v50[2] = @"BufferSizeInKB";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10 * self->_ringBufferSizeInKb];
  v51[2] = v41;
  v50[3] = @"SystemTimePeriod";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_systemTimePeriod];
  v51[3] = v40;
  v50[4] = @"CliqueAdvanceReason";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_cliqueAdvanceReason];
  v51[4] = v38;
  v50[5] = @"ProfileControl";
  v48[0] = @"CliqueTraceLevel";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_cliqueTraceLevel];
  v49[0] = v37;
  v48[1] = @"EmitPos";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_emitPos];
  v49[1] = v36;
  v48[2] = @"EmitThreadControlFlow";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_emitThreadControlFlow];
  v49[2] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v51[5] = v34;
  v50[6] = @"SyncDrainMode";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_syncDrainMode];
  v51[6] = v33;
  v50[7] = @"KickAndStateTracing";
  v3 = MEMORY[0x277CBEB38];
  v46[0] = @"PulsePeriod";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pulsePeriod];
  v47[0] = v4;
  v46[1] = @"CountPeriod";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_countPeriod];
  v47[1] = v5;
  v46[2] = @"TileTracing";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tileTracing];
  v47[2] = v6;
  v46[3] = @"ESLInstTracing";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_eslInstTracing];
  v47[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:4];
  v9 = [v3 dictionaryWithDictionary:v8];
  v51[7] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:8];
  v11 = [v39 dictionaryWithDictionary:v10];

  if (*&self->_subSamplingMinTraced != 0)
  {
    v44[0] = @"MinTraced";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v44[1] = @"TargetThreshold";
    v45[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_subSamplingTargetThreshold];
    v45[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    [v11 setObject:v14 forKeyedSubscript:@"CliqueSubSampling"];
  }

  if (self->_mGPUMask || self->_uscMaskPerMGPU)
  {
    v15 = objc_opt_new();
    v16 = v15;
    if (self->_mGPUMask)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      [v16 setObject:v17 forKeyedSubscript:@"mGPUMask"];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_uscNumPerMGPU];
      [v16 setObject:v18 forKeyedSubscript:@"USCNumPerMGPU"];
    }

    else
    {
      [v15 setObject:self->_uscMaskPerMGPU forKeyedSubscript:@"USCMaskForMGPU"];
    }

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_overrideCliqueTraceLevel];
    [v16 setObject:v19 forKeyedSubscript:@"CliqueTraceLevel"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_overrideEmitPos];
    [v16 setObject:v20 forKeyedSubscript:@"EmitPos"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_overrideEmitThreadControlFlow];
    [v16 setObject:v21 forKeyedSubscript:@"EmitThreadControlFlow"];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_overrideCliqueAdvanceReason];
    [v16 setObject:v22 forKeyedSubscript:@"CliqueAdvanceReason"];

    v23 = objc_opt_new();
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_overridePulsePeriod];
    [v23 setObject:v24 forKeyedSubscript:@"PulsePeriod"];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_overrideCountPeriod];
    [v23 setObject:v25 forKeyedSubscript:@"CountPeriod"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_overrideTileTracing];
    [v23 setObject:v26 forKeyedSubscript:@"TileTracing"];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_overrideEslInstTracing];
    [v23 setObject:v27 forKeyedSubscript:@"ESLInstTracing"];

    v28 = [v16 copy];
    [v11 setObject:v28 forKeyedSubscript:@"USCConfigOverride"];

    v29 = [v23 copy];
    v30 = [v11 objectForKeyedSubscript:@"KickAndStateTracing"];
    [v30 setObject:v29 forKeyedSubscript:@"USCConfigOverride"];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v11;
}

@end