@interface _DPSymmetricRAPPORBudgetAuditor
- (_DPSymmetricRAPPORBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error;
- (id)auditedMetadataWithError:(id *)error;
@end

@implementation _DPSymmetricRAPPORBudgetAuditor

- (_DPSymmetricRAPPORBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error
{
  v53[3] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  parametersCopy = parameters;
  v10 = [parametersCopy objectForKeyedSubscript:@"DefaultMinBatchSize"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [parametersCopy objectForKeyedSubscript:@"DefaultMinBatchSize"];
    unsignedIntValue = [v12 unsignedIntValue];

    v14 = [parametersCopy objectForKeyedSubscript:@"epsilon"];
    [v14 doubleValue];
    v16 = v15;

    v17 = [_DPBudgetAuditor maxApproximateDPFromPlist:parametersCopy error:error];
    if (v17)
    {
      errorCopy = error;
      selfCopy = self;
      v18 = [metadataCopy objectForKeyedSubscript:?];
      v19 = [v18 objectForKeyedSubscript:@"MinBatchSize"];
      unsignedIntValue2 = [v19 unsignedIntValue];

      v21 = [v18 objectForKeyedSubscript:@"DPConfig"];
      v17 = v17;
      if (v21)
      {
        v22 = metadataCopy;
        v23 = v18;
        v24 = [v21 objectForKeyedSubscript:@"LocalEpsilon"];
        [v24 doubleValue];
        v26 = v25;

        v27 = errorCopy;
        if ([_DPBudgetAuditor checkMetadataLocalEpsilon:errorCopy defaultLocalEpsilon:v26 error:v16])
        {
          v28 = [_DPBudgetAuditor targetApproximateDPFromDPConfig:v21 error:errorCopy];

          if (v28)
          {
            v48 = v21;
            v16 = v26;
LABEL_16:
            v42 = [[_DPSymmetricRAPPORWithOHE alloc] initWithBatchSize:unsignedIntValue2 localEpsilon:v27 error:v16];
            if (v42)
            {
              v43 = +[_DPLog framework];
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                [_DPSymmetricRAPPORBudgetAuditor initWithMetadata:unsignedIntValue2 plistParameters:v43 error:v16];
              }

              v51.receiver = selfCopy;
              v51.super_class = _DPSymmetricRAPPORBudgetAuditor;
              v44 = [(_DPBudgetAuditor *)&v51 initWithMetadata:v22 plistParameters:parametersCopy targetADP:v28 maxADP:v17 analysis:v42 error:v27];
              if (v44)
              {
                v44->_auditedFromPlist = v48 == 0;
              }

              v32 = v44;
              selfCopy = v32;
            }

            else
            {
              v32 = 0;
            }

            v21 = v48;
            goto LABEL_25;
          }

          v32 = 0;
        }

        else
        {
          v32 = 0;
          v28 = v17;
        }

LABEL_25:

        self = selfCopy;
        metadataCopy = v22;
        goto LABEL_26;
      }

      v47 = metadataCopy;
      v48 = 0;
      if (unsignedIntValue2 <= unsignedIntValue)
      {
        unsignedIntValue2 = unsignedIntValue;
      }

      else
      {
        unsignedIntValue2 = unsignedIntValue2;
      }

      v33 = [metadataCopy mutableCopy];
      v34 = [v18 mutableCopy];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:unsignedIntValue2];
      [v34 setObject:v35 forKeyedSubscript:@"MinBatchSize"];

      v52[0] = @"LocalEpsilon";
      v36 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
      v53[0] = v36;
      v52[1] = @"TargetCentralEpsilon";
      v37 = MEMORY[0x277CCABB0];
      [v17 epsilon];
      v38 = [v37 numberWithDouble:?];
      v53[1] = v38;
      v52[2] = @"TargetCentralDelta";
      v39 = MEMORY[0x277CCABB0];
      [v17 delta];
      v40 = [v39 numberWithDouble:?];
      v53[2] = v40;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3];
      [v34 setObject:v41 forKeyedSubscript:@"DPConfig"];

      [v33 setObject:v34 forKeyedSubscript:@"DediscoTaskConfig"];
      v28 = v17;
      v22 = v33;
      v23 = v18;
      v27 = errorCopy;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@) in plist, expected numbers.", @"DefaultMinBatchSize"];
  v17 = _DPPrivacyBudgetError(7, v29);

  v30 = +[_DPLog framework];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [_DPSemanticVersion initWithString:v17 error:v30];
  }

  if (!error)
  {
LABEL_11:
    v32 = 0;
    goto LABEL_26;
  }

  v31 = v17;
  v32 = 0;
  *error = v17;
LABEL_26:

  v45 = *MEMORY[0x277D85DE8];
  return v32;
}

- (id)auditedMetadataWithError:(id *)error
{
  if ([(_DPSymmetricRAPPORBudgetAuditor *)self auditedFromPlist])
  {
    metadata = [(_DPBudgetAuditor *)self metadata];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _DPSymmetricRAPPORBudgetAuditor;
    metadata = [(_DPBudgetAuditor *)&v7 auditedMetadataWithError:error];
  }

  return metadata;
}

- (void)initWithMetadata:(int)a1 plistParameters:(NSObject *)a2 error:(double)a3 .cold.2(int a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_22622D000, a2, OS_LOG_TYPE_DEBUG, "Symmetric RAPPOR budget auditor uses min batch size = %d, local epsilon = %f", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end