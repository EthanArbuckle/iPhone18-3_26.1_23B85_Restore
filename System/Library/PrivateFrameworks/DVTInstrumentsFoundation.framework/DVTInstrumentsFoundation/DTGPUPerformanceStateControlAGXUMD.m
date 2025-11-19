@interface DTGPUPerformanceStateControlAGXUMD
- (DTGPUPerformanceStateControlAGXUMD)initWithDevice:(id)a3;
- (id)currentState;
- (id)disable;
@end

@implementation DTGPUPerformanceStateControlAGXUMD

- (DTGPUPerformanceStateControlAGXUMD)initWithDevice:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DTGPUPerformanceStateControlAGXUMD;
  v5 = [(DTGPUPerformanceStateControlAGXUMD *)&v10 init];
  if (v5)
  {
    v6 = v4;
    while ((objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [v6 baseObject];

      v6 = v7;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {

      v8 = 0;
      goto LABEL_12;
    }

    objc_storeStrong(&v5->_agxDevice, v6);
    v5->_acceleratorId = [v6 registryID];
  }

  v8 = v5;
LABEL_12:

  return v8;
}

- (id)currentState
{
  v30[6] = *MEMORY[0x277D85DE8];
  v3 = [(AGXConsistentStateDevice *)self->_agxDevice getConsistentPerfStateInfoAndReset:1];
  if (v3)
  {
    v4 = [(AGXConsistentStateDevice *)self->_agxDevice getConsistentPerfStateMappingTable];
    v5 = v4;
    if (v4)
    {
      v28 = [v4 objectForKeyedSubscript:@"min_pstate"];
      v27 = [v5 objectForKeyedSubscript:@"mid_pstate"];
      v6 = [v5 objectForKeyedSubscript:@"max_pstate"];
      v7 = v6;
      v8 = &unk_285A36FC0;
      if (v28 && v27 && v6)
      {
        v26 = v6;
        v9 = [v28 unsignedIntValue];
        v10 = [v27 unsignedIntValue];
        v11 = [v26 unsignedIntValue];
        v8 = objc_opt_new();
        v29[0] = @"accelerator-id";
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_acceleratorId];
        v30[0] = v24;
        v30[1] = MEMORY[0x277CBEC38];
        v29[1] = @"available";
        v29[2] = @"enabled";
        v12 = MEMORY[0x277CCABB0];
        v25 = [v3 objectForKeyedSubscript:@"is_enabled"];
        v22 = [v12 numberWithBool:{objc_msgSend(v25, "BOOLValue")}];
        v30[2] = v22;
        v29[3] = @"sustained";
        v13 = MEMORY[0x277CCABB0];
        v23 = [v3 objectForKeyedSubscript:@"was_consistent"];
        v14 = [v13 numberWithBool:{objc_msgSend(v23, "BOOLValue")}];
        v30[3] = v14;
        v29[4] = @"level";
        v15 = MEMORY[0x277CCABB0];
        v16 = [v3 objectForKeyedSubscript:?];
        v17 = [v15 numberWithUnsignedInt:{objc_msgSend(v16, "unsignedIntValue")}];
        v30[4] = v17;
        v29[5] = @"mapping";
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v10 << 16) | (v9 << 24) | (v11 << 8)];
        v30[5] = v18;
        v7 = v26;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
        [v8 addEntriesFromDictionary:v19];
      }
    }

    else
    {
      v8 = &unk_285A36F98;
    }
  }

  else
  {
    v8 = &unk_285A36F70;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)disable
{
  v3 = [(DTGPUPerformanceStateControlAGXUMD *)self currentState];
  [(AGXConsistentStateDevice *)self->_agxDevice disableConsistentPerfState];

  return v3;
}

@end