@interface _DPSymmetricRAPPORInternalBuildBudgetAuditor
- (_DPSymmetricRAPPORInternalBuildBudgetAuditor)initWithMetadata:(id)a3 plistParameters:(id)a4 error:(id *)a5;
@end

@implementation _DPSymmetricRAPPORInternalBuildBudgetAuditor

- (_DPSymmetricRAPPORInternalBuildBudgetAuditor)initWithMetadata:(id)a3 plistParameters:(id)a4 error:(id *)a5
{
  v42[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"DediscoTaskConfig"];
  v10 = [v9 objectForKeyedSubscript:?];
  v11 = [v10 unsignedIntValue];

  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v39 = v8;
  v13 = [v8 objectForKeyedSubscript:@"epsilon"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v7 objectForKeyedSubscript:@"DediscoTaskConfig"];
  v17 = [v16 objectForKeyedSubscript:@"DPConfig"];
  v38 = v16;
  v36 = v17;
  if (!v17)
  {
    v35 = 0;
    v21 = v15;
LABEL_11:
    v25 = [v7 mutableCopy];
    v26 = [v16 mutableCopy];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    [v26 setObject:v27 forKeyedSubscript:@"MinBatchSize"];

    v41 = @"LocalEpsilon";
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
    v42[0] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [v26 setObject:v29 forKeyedSubscript:@"DPConfig"];

    [v25 setObject:v26 forKeyedSubscript:@"DediscoTaskConfig"];
    v7 = v25;
    goto LABEL_12;
  }

  v18 = v17;
  v19 = [v17 objectForKeyedSubscript:@"LocalEpsilon"];
  [v19 doubleValue];
  v21 = v20;

  if (![_DPBudgetAuditor checkMetadataLocalEpsilon:a5 defaultLocalEpsilon:v21 error:v15]|| ([_DPBudgetAuditor targetApproximateDPFromDPConfig:v18 error:a5], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v23 = 0;
    v24 = self;
    goto LABEL_18;
  }

  v35 = v22;
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  v24 = self;
  v30 = [[_DPSymmetricRAPPORWithOHE alloc] initWithBatchSize:v12 localEpsilon:a5 error:v21];
  if (v30)
  {
    v31 = +[_DPLog framework];
    v32 = v35;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [_DPSymmetricRAPPORInternalBuildBudgetAuditor initWithMetadata:v12 plistParameters:v31 error:v21];
    }

    v40.receiver = self;
    v40.super_class = _DPSymmetricRAPPORInternalBuildBudgetAuditor;
    v24 = [(_DPBudgetAuditor *)&v40 initWithMetadata:v7 plistParameters:v39 targetADP:v35 maxADP:0 analysis:v30 error:a5];
    v23 = v24;
  }

  else
  {
    v23 = 0;
    v32 = v35;
  }

LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)initWithMetadata:(int)a1 plistParameters:(NSObject *)a2 error:(double)a3 .cold.1(int a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_22622D000, a2, OS_LOG_TYPE_DEBUG, "Symmetric RAPPOR internal build budget auditor uses min batch size = %d, local epsilon = %f", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end