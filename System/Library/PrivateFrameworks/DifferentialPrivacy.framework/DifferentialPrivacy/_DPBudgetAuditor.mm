@interface _DPBudgetAuditor
+ (BOOL)checkMetadataLocalEpsilon:(double)epsilon defaultLocalEpsilon:(double)localEpsilon error:(id *)error;
+ (BOOL)containValidDPConfigInMetadata:(id)metadata error:(id *)error;
+ (BOOL)isMetadataValid:(id)valid plistParameters:(id)parameters error:(id *)error;
+ (id)budgetAuditorFromMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error;
+ (id)budgetAuditorFromMetadata:(id)metadata plistParameters:(id)parameters isInternalBuild:(BOOL)build error:(id *)error;
+ (id)maxApproximateDPFromPlist:(id)plist error:(id *)error;
+ (id)targetApproximateDPFromDPConfig:(id)config error:(id *)error;
- (_DPBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters targetADP:(id)p maxADP:(id)dP analysis:(id)analysis error:(id *)error;
- (id)auditedMetadataWithError:(id *)error;
- (id)getSymmetricRAPPORLocalEpsilonWithError:(id *)error;
@end

@implementation _DPBudgetAuditor

+ (id)budgetAuditorFromMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  metadataCopy = metadata;
  v10 = [self budgetAuditorFromMetadata:metadataCopy plistParameters:parametersCopy isInternalBuild:+[_DPDeviceInfo isInternalBuild](_DPDeviceInfo error:{"isInternalBuild"), error}];

  return v10;
}

+ (id)budgetAuditorFromMetadata:(id)metadata plistParameters:(id)parameters isInternalBuild:(BOOL)build error:(id *)error
{
  buildCopy = build;
  metadataCopy = metadata;
  parametersCopy = parameters;
  if (![_DPBudgetAuditor isMetadataValid:metadataCopy plistParameters:parametersCopy error:error])
  {
    v16 = 0;
    goto LABEL_25;
  }

  v11 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];

  if (v11)
  {
    v12 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
    v13 = [v12 objectForKeyedSubscript:?];
    v14 = [v13 objectForKeyedSubscript:@"Mechanism"];

    if ([v14 isEqual:@"None"])
    {
      v15 = _DPNoneDPBudgetAuditor;
LABEL_5:
      v16 = [[v15 alloc] initWithMetadata:metadataCopy plistParameters:parametersCopy error:error];
LABEL_24:

      goto LABEL_25;
    }

    if ([_DPBudgetAuditor containValidDPConfigInMetadata:metadataCopy error:error])
    {
      if (!v14 || [v14 isEqualToString:@"ClientSymmetricRAPPOR"])
      {
        if (buildCopy)
        {
          v15 = _DPSymmetricRAPPORInternalBuildBudgetAuditor;
        }

        else
        {
          v15 = _DPSymmetricRAPPORBudgetAuditor;
        }

        goto LABEL_5;
      }

      if ([v14 isEqualToString:@"AggregatorDiscreteGaussianClientSymmetricRAPPOR"])
      {
        v15 = _DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor;
        goto LABEL_5;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown DP mechanism specified in %@.%@.%@: %@", @"DediscoTaskConfig", @"DPConfig", @"Mechanism", v14];
      v19 = _DPPrivacyBudgetError(8, v18);

      v20 = +[_DPLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
      }

      if (error)
      {
        v21 = v19;
        *error = v19;
      }
    }

    v16 = 0;
    goto LABEL_24;
  }

  v17 = +[_DPLog framework];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [_DPBudgetAuditor budgetAuditorFromMetadata:v17 plistParameters:? isInternalBuild:? error:?];
  }

  v16 = [[_DPSymmetricRAPPORLegacyBudgetAuditor alloc] initWithMetadata:metadataCopy plistParameters:parametersCopy error:error];
LABEL_25:

  return v16;
}

- (_DPBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters targetADP:(id)p maxADP:(id)dP analysis:(id)analysis error:(id *)error
{
  metadataCopy = metadata;
  parametersCopy = parameters;
  pCopy = p;
  dPCopy = dP;
  analysisCopy = analysis;
  v22.receiver = self;
  v22.super_class = _DPBudgetAuditor;
  v18 = [(_DPBudgetAuditor *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_metadata, metadata);
    objc_storeStrong(&v19->_plistParameters, parameters);
    objc_storeStrong(&v19->_targetADP, p);
    objc_storeStrong(&v19->_maxADP, dP);
    objc_storeStrong(&v19->_analysis, analysis);
  }

  return v19;
}

- (id)auditedMetadataWithError:(id *)error
{
  targetADP = [(_DPBudgetAuditor *)self targetADP];

  if (targetADP)
  {
    targetADP2 = [(_DPBudgetAuditor *)self targetADP];
    analysis = [(_DPBudgetAuditor *)self analysis];
    v8 = [analysis exceedApproximateDPBudget:targetADP2 error:error];

    if (v8)
    {
      if (![v8 BOOLValue])
      {
        maxADP = [(_DPBudgetAuditor *)self maxADP];

        if (maxADP)
        {
          maxADP2 = [(_DPBudgetAuditor *)self maxADP];
          if ([targetADP2 exceed:maxADP2])
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target %@ budget exceeds the maximum allowed %@ budget.", targetADP2, maxADP2];
            v20 = _DPPrivacyBudgetError(4, v19);

            v21 = +[_DPLog framework];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
            }

            if (error)
            {
              v22 = v20;
              *error = v20;
            }

            metadata = 0;
          }

          else
          {
            metadata = [(_DPBudgetAuditor *)self metadata];
          }
        }

        else
        {
          metadata = [(_DPBudgetAuditor *)self metadata];
        }

        goto LABEL_23;
      }

      v9 = MEMORY[0x277CCACA8];
      analysis2 = [(_DPBudgetAuditor *)self analysis];
      v11 = [v9 stringWithFormat:@"Privacy budget analysis %@ will exceed the target %@ budget.", objc_opt_class(), targetADP2];
      v12 = _DPPrivacyBudgetError(5, v11);

      v13 = +[_DPLog framework];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
      }

      if (error)
      {
        v14 = v12;
        *error = v12;
      }
    }

    metadata = 0;
LABEL_23:

    goto LABEL_24;
  }

  v16 = +[_DPLog framework];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_DPBudgetAuditor auditedMetadataWithError:v16];
  }

  metadata = [(_DPBudgetAuditor *)self metadata];
LABEL_24:

  return metadata;
}

- (id)getSymmetricRAPPORLocalEpsilonWithError:(id *)error
{
  analysis = [(_DPBudgetAuditor *)self analysis];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = MEMORY[0x277CCABB0];
    analysis2 = [(_DPBudgetAuditor *)self analysis];
    [analysis2 localEpsilon];
    v9 = [v7 numberWithDouble:?];
LABEL_6:

    goto LABEL_13;
  }

  analysis3 = [(_DPBudgetAuditor *)self analysis];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    analysis2 = [(_DPBudgetAuditor *)self analysis];
    rappor = [analysis2 rappor];

    if (rappor)
    {
      v13 = MEMORY[0x277CCABB0];
      rappor2 = [analysis2 rappor];
      [rappor2 localEpsilon];
      v9 = [v13 numberWithDouble:?];

      goto LABEL_6;
    }
  }

  v15 = _DPPrivacyBudgetError(6, @"Symmetric RAPPOR is not configured in privacy budget analysis while it is expected to be.");
  v16 = +[_DPLog framework];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
  }

  if (error)
  {
    v17 = v15;
    *error = v15;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

+ (id)targetApproximateDPFromDPConfig:(id)config error:(id *)error
{
  configCopy = config;
  v6 = [_DPApproximateDP alloc];
  v7 = [configCopy objectForKeyedSubscript:@"TargetCentralEpsilon"];
  [v7 doubleValue];
  v9 = v8;
  v10 = [configCopy objectForKeyedSubscript:@"TargetCentralDelta"];

  [v10 doubleValue];
  v24 = 0;
  v12 = [(_DPApproximateDP *)v6 initWithEpsilon:&v24 delta:v9 error:v11];
  v13 = v24;

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = +[_DPLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(_DPBudgetAuditor *)v15 targetApproximateDPFromDPConfig:v16 error:v17, v18, v19, v20, v21, v22];
    }

    if (error)
    {
      *error = _DPPrivacyBudgetErrorWithUnderlyingError(8, @"Malformed target central DP parameters in metadata.", v13);
    }
  }

  return v12;
}

+ (id)maxApproximateDPFromPlist:(id)plist error:(id *)error
{
  plistCopy = plist;
  v6 = [_DPApproximateDP alloc];
  v7 = [plistCopy objectForKeyedSubscript:@"MaxCentralEpsilon"];
  [v7 doubleValue];
  v9 = v8;
  v10 = [plistCopy objectForKeyedSubscript:@"MaxCentralDelta"];

  [v10 doubleValue];
  v24 = 0;
  v12 = [(_DPApproximateDP *)v6 initWithEpsilon:&v24 delta:v9 error:v11];
  v13 = v24;

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = +[_DPLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(_DPBudgetAuditor *)v15 maxApproximateDPFromPlist:v16 error:v17, v18, v19, v20, v21, v22];
    }

    if (error)
    {
      *error = _DPPrivacyBudgetErrorWithUnderlyingError(7, @"Malformed max central DP parameters in plist.", v13);
    }
  }

  return v12;
}

+ (BOOL)checkMetadataLocalEpsilon:(double)epsilon defaultLocalEpsilon:(double)localEpsilon error:(id *)error
{
  if (epsilon > localEpsilon)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Local epsilon specified in metadata (%f) cannot exceed the default local epsilon (%f) in the plist.", *&epsilon, *&localEpsilon];
    v9 = _DPPrivacyBudgetError(8, v8);

    v10 = +[_DPLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
    }

    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  return epsilon <= localEpsilon;
}

+ (BOOL)containValidDPConfigInMetadata:(id)metadata error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];
  v6 = [v5 objectForKeyedSubscript:@"DPConfig"];

  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v26[0] = @"LocalEpsilon";
    v26[1] = @"TargetCentralEpsilon";
    v26[2] = @"TargetCentralDelta";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v6 objectForKeyedSubscript:v12];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@.%@.%@) in metadata, expected numbers.", @"DediscoTaskConfig", @"DPConfig", v12];
            v17 = _DPPrivacyBudgetError(8, v16);

            v18 = +[_DPLog framework];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
            }

            if (error)
            {
              v19 = v17;
              *error = v17;
            }

            v15 = 0;
            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_16:
  }

  else
  {
    v15 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)isMetadataValid:(id)valid plistParameters:(id)parameters error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  parametersCopy = parameters;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51[0] = @"MaxCentralEpsilon";
  v51[1] = @"MaxCentralDelta";
  v51[2] = @"epsilon";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v48 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v47 + 1) + 8 * v12);
      v14 = [parametersCopy objectForKeyedSubscript:v13];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@) in plist, expected numbers.", v13];
    v24 = _DPPrivacyBudgetError(7, v29);

    v30 = +[_DPLog framework];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_9:

  v16 = [validCopy objectForKeyedSubscript:@"DediscoTaskConfig"];

  if (!v16)
  {
    v28 = 1;
    goto LABEL_25;
  }

  v17 = [validCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@) in metadata, expected a dictionary.", @"DediscoTaskConfig"];
    v8 = _DPPrivacyBudgetError(8, v34);

    v35 = +[_DPLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
    }

    if (error)
    {
      v36 = v8;
      v28 = 0;
      *error = v8;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v8 = [validCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
  v19 = [v8 objectForKeyedSubscript:@"MinBatchSize"];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if ((v20 & 1) == 0)
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = [v8 objectForKeyedSubscript:@"MinBatchSize"];
    v39 = [v37 stringWithFormat:@"Malformed parameter (%@.%@) in metadata, expected numbers, got=%@", @"DediscoTaskConfig", @"MinBatchSize", v38];
    v24 = _DPPrivacyBudgetError(8, v39);

    v30 = +[_DPLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
    }

LABEL_20:

    if (error)
    {
      v31 = v24;
      *error = v24;
    }

    goto LABEL_22;
  }

  v21 = [v8 objectForKeyedSubscript:@"DPConfig"];

  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = [v8 objectForKeyedSubscript:@"DPConfig"];
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if ((v23 & 1) == 0)
  {
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@.%@) in metadata, expected a dictionary.", @"DediscoTaskConfig", @"DPConfig"];
    v24 = _DPPrivacyBudgetError(8, v40);

    v30 = +[_DPLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v24 = [v8 objectForKeyedSubscript:@"DPConfig"];
  v25 = [v24 objectForKeyedSubscript:@"Mechanism"];
  if (v25)
  {
    v26 = v25;
    v27 = [v24 objectForKeyedSubscript:@"Mechanism"];
    objc_opt_class();
    v45 = objc_opt_isKindOfClass();

    if ((v45 & 1) == 0)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@.%@.%@) in metadata, expected a string.", @"DediscoTaskConfig", @"DPConfig", @"Mechanism"];
      v42 = _DPPrivacyBudgetError(8, v41);

      v43 = +[_DPLog framework];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        +[_DPBudgetAuditor budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:];
      }

      if (error)
      {
        v44 = v42;
        *error = v42;
      }

LABEL_22:
LABEL_23:
      v28 = 0;
      goto LABEL_24;
    }
  }

LABEL_17:
  v28 = 1;
LABEL_24:

LABEL_25:
  v32 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (void)budgetAuditorFromMetadata:plistParameters:isInternalBuild:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)targetApproximateDPFromDPConfig:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_22622D000, a1, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)maxApproximateDPFromPlist:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_22622D000, a1, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end