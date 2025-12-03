@interface _DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor
- (_DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error;
@end

@implementation _DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor

- (_DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  parametersCopy = parameters;
  v52 = metadataCopy;
  v53 = [metadataCopy objectForKeyedSubscript:?];
  v7 = [v53 objectForKeyedSubscript:?];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v68[0] = @"SigmaAfterNormalizing";
  v68[1] = @"LocalEpsilon";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v9 = [v8 countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@.%@.%@) in metadata, expected numbers.", @"DediscoTaskConfig", @"DPConfig", v13];
          v17 = _DPPrivacyBudgetError(8, v43);

          v44 = +[_DPLog framework];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [_DPSemanticVersion initWithString:v17 error:v44];
          }

          selfCopy4 = self;
          v16 = parametersCopy;
          v31 = v52;
          v18 = v53;
          if (error)
          {
            v45 = v17;
            v42 = 0;
            *error = v17;
          }

          else
          {
            v42 = 0;
          }

          goto LABEL_31;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = parametersCopy;
  v8 = [_DPBudgetAuditor maxApproximateDPFromPlist:parametersCopy error:error];
  if (v8)
  {
    v17 = [_DPBudgetAuditor targetApproximateDPFromDPConfig:v7 error:error];
    v18 = v53;
    if (!v17)
    {
      goto LABEL_25;
    }

    v19 = [v53 objectForKeyedSubscript:?];
    LODWORD(v20) = [v19 unsignedIntValue];

    v20 = v20 <= 1 ? 1 : v20;
    v21 = [v7 objectForKeyedSubscript:@"SigmaAfterNormalizing"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [v7 objectForKeyedSubscript:@"LocalEpsilon"];
    [v24 doubleValue];
    v26 = v25;

    v27 = [parametersCopy objectForKeyedSubscript:@"epsilon"];
    [v27 doubleValue];
    LODWORD(v24) = [_DPBudgetAuditor checkMetadataLocalEpsilon:error defaultLocalEpsilon:v26 error:v28];

    if (v24)
    {
      v51 = v20;
      v29 = [[_DPSymmetricRAPPORWithOHE alloc] initWithBatchSize:v20 localEpsilon:error error:v26];
      selfCopy4 = self;
      v31 = v52;
      if (v29)
      {
        v32 = [[_DPHistogramWithAggregatorDiscreteGaussian alloc] initWithSigma:v29 rappor:error error:v23];
        if (v32)
        {
          v49 = v29;
          v50 = v32;
          v33 = +[_DPLog framework];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v63 = v23;
            v64 = 2048;
            v65 = v26;
            v66 = 1024;
            v67 = v51;
            _os_log_debug_impl(&dword_22622D000, v33, OS_LOG_TYPE_DEBUG, "Histogram with aggregator discrete Gaussian uses sigma = %f, symmetric RAPPOR local epsilon = %f, min batch size = %d", buf, 0x1Cu);
          }

          v48 = [v52 mutableCopy];
          v34 = [v52 objectForKeyedSubscript:@"DediscoTaskConfig"];
          v35 = [v34 mutableCopy];

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v51];
          [v35 setObject:v36 forKeyedSubscript:@"MinBatchSize"];

          v37 = [v7 mutableCopy];
          v38 = MEMORY[0x277CCABB0];
          [(_DPHistogramWithAggregatorDiscreteGaussian *)v50 squaredL2Sensitivity];
          v39 = [v38 numberWithDouble:?];
          [v37 setObject:v39 forKeyedSubscript:@"SquaredL2Sensitivity"];

          [v35 setObject:v37 forKeyedSubscript:@"DPConfig"];
          [v48 setObject:v35 forKeyedSubscript:@"DediscoTaskConfig"];
          v40 = v48;

          v57.receiver = self;
          v57.super_class = _DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor;
          v41 = [(_DPBudgetAuditor *)&v57 initWithMetadata:v40 plistParameters:parametersCopy targetADP:v17 maxADP:v8 analysis:v50 error:error];

          selfCopy4 = v41;
          v32 = v50;
          v31 = v40;
          v42 = selfCopy4;
          v29 = v49;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
LABEL_25:
      v42 = 0;
      selfCopy4 = self;
      v31 = v52;
    }

LABEL_31:
  }

  else
  {
    v42 = 0;
    v18 = v53;
    selfCopy4 = self;
    v31 = v52;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v42;
}

@end