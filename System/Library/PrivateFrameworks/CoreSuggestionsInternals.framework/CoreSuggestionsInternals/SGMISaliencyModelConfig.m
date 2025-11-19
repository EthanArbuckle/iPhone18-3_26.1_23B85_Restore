@interface SGMISaliencyModelConfig
+ (id)defaultConfig;
+ (id)groundTruthVersion;
+ (id)inferenceVersion;
+ (id)rulesFromFeatures:(id)a3 lowerBounds:(id)a4 upperBounds:(id)a5 outputs:(id)a6;
- (SGMISaliencyModelConfig)initWithSaliencyOverrideRules:(id)a3 featureNames:(id)a4 mean:(id)a5 std:(id)a6 groundTruthEstimatorRules:(id)a7 threshold:(id)a8 minCountToConsiderATokenAsHighlyDiscriminant:(id)a9 ratioToConsiderATokenAsHighlyDiscriminant:(id)a10 minCountToConsiderATokenAsExtremelyDiscriminant:(id)a11 ratioToConsiderATokenAsExtremelyDiscriminant:(id)a12;
@end

@implementation SGMISaliencyModelConfig

- (SGMISaliencyModelConfig)initWithSaliencyOverrideRules:(id)a3 featureNames:(id)a4 mean:(id)a5 std:(id)a6 groundTruthEstimatorRules:(id)a7 threshold:(id)a8 minCountToConsiderATokenAsHighlyDiscriminant:(id)a9 ratioToConsiderATokenAsHighlyDiscriminant:(id)a10 minCountToConsiderATokenAsExtremelyDiscriminant:(id)a11 ratioToConsiderATokenAsExtremelyDiscriminant:(id)a12
{
  v35 = a3;
  v34 = a4;
  obj = a5;
  v33 = a5;
  v32 = a6;
  v36 = a7;
  v31 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v37.receiver = self;
  v37.super_class = SGMISaliencyModelConfig;
  v22 = [(SGMISaliencyModelConfig *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_saliencyOverrideRules, a3);
    objc_storeStrong(&v23->_featureNames, a4);
    objc_storeStrong(&v23->_mean, obj);
    objc_storeStrong(&v23->_std, a6);
    objc_storeStrong(&v23->_groundTruthEstimatorRules, a7);
    v24 = [v36 _pas_mappedArrayWithTransform:&__block_literal_global_11811];
    groundTruthEstimatorFeatures = v23->_groundTruthEstimatorFeatures;
    v23->_groundTruthEstimatorFeatures = v24;

    objc_storeStrong(&v23->_threshold, a8);
    v23->_minCountToConsiderATokenAsHighlyDiscriminant = [v18 unsignedIntegerValue];
    [v19 doubleValue];
    v23->_ratioToConsiderATokenAsHighlyDiscriminant = v26;
    v23->_minCountToConsiderATokenAsExtremelyDiscriminant = [v20 unsignedIntegerValue];
    [v21 doubleValue];
    v23->_ratioToConsiderATokenAsExtremelyDiscriminant = v27;
  }

  return v23;
}

+ (id)inferenceVersion
{
  v2 = +[SGMITrialClientWrapper sharedInstance];
  v3 = [v2 modelInferenceVersion];

  return v3;
}

+ (id)groundTruthVersion
{
  v2 = +[SGMITrialClientWrapper sharedInstance];
  v3 = [v2 modelGroundTruthVersion];

  return v3;
}

+ (id)defaultConfig
{
  v3 = +[SGMITrialClientWrapper sharedInstance];
  v4 = [v3 saliencyOverrideFeatureNames];
  v5 = [v3 saliencyOverrideFeatureLowerBounds];
  v6 = [v3 saliencyOverrideFeatureUpperBounds];
  v7 = [v3 saliencyOverrideOutputs];
  v8 = [a1 rulesFromFeatures:v4 lowerBounds:v5 upperBounds:v6 outputs:v7];

  if (v8)
  {
    v9 = [v3 modelFeatureNames];
    v10 = sgMap();

    v11 = [v3 modelFeatureStandardizationMeans];
    if (!v11)
    {
      v12 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v12, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, mean for feature standardization is nil.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_44;
    }

    v12 = [v3 modelFeatureStandardizationStandardDeviations];
    if (!v12)
    {
      v17 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v17, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, mean for feature standardization is nil.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_43;
    }

    v13 = [v3 modelGroundTruthFeatureNames];
    v14 = [v3 modelGroundTruthFeatureLowerBounds];
    v15 = [v3 modelGroundTruthFeatureUpperBounds];
    v16 = [v3 modelGroundTruthOutputs];
    v17 = [a1 rulesFromFeatures:v13 lowerBounds:v14 upperBounds:v15 outputs:v16];

    if (!v17)
    {
      v18 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v18, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error in processing ground truth estimation rules.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_42;
    }

    v18 = [v3 classificationThreshold];
    if (!v18)
    {
      v19 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v19, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, classification threshold is nil.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_41;
    }

    v19 = [v3 minCountToConsiderATokenAsHighlyDiscriminant];
    if (!v19)
    {
      v21 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v21, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, minCountToConsiderATokenAsHighlyDiscriminant is nil.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_40;
    }

    v20 = [v3 ratioToConsiderATokenAsHighlyDiscriminant];
    v21 = v20;
    if (!v20)
    {
      v27 = sgMailIntelligenceLogHandle();
      v31 = v27;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v27, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, ratioToConsiderATokenAsHighlyDiscriminant is nil.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_39;
    }

    v30 = v20;
    v22 = [v3 minCountToConsiderATokenAsExtremelyDiscriminant];
    v31 = v22;
    if (v22)
    {
      v23 = v22;
      v24 = [v3 ratioToConsiderATokenAsExtremelyDiscriminant];
      if (v24)
      {
        v25 = v24;
        v26 = [[SGMISaliencyModelConfig alloc] initWithSaliencyOverrideRules:v8 featureNames:v10 mean:v11 std:v12 groundTruthEstimatorRules:v17 threshold:v18 minCountToConsiderATokenAsHighlyDiscriminant:v19 ratioToConsiderATokenAsHighlyDiscriminant:v30 minCountToConsiderATokenAsExtremelyDiscriminant:v23 ratioToConsiderATokenAsExtremelyDiscriminant:v24];
LABEL_38:

        v21 = v30;
LABEL_39:

LABEL_40:
LABEL_41:

LABEL_42:
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      v28 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v28, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, ratioToConsiderATokenAsExtremelyDiscriminant is nil.", buf, 2u);
      }

      v25 = 0;
    }

    else
    {
      v25 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, v25, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, minCountToConsiderATokenAsExtremelyDiscriminant is nil.", buf, 2u);
      }
    }

    v26 = 0;
    goto LABEL_38;
  }

  v10 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_231E60000, v10, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error in processing outstanding saliency rules.", buf, 2u);
  }

  v26 = 0;
LABEL_45:

  return v26;
}

id __40__SGMISaliencyModelConfig_defaultConfig__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SGMIFeature prettyNamesReverseMapping];
  v4 = [v3 objectForKeyedSubscript:v2];

  return v4;
}

+ (id)rulesFromFeatures:(id)a3 lowerBounds:(id)a4 upperBounds:(id)a5 outputs:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v9)
  {
    v15 = sgMailIntelligenceLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v30 = "SGMISaliencyModelConfig: Could not process rule set; name array from Trial is nil.";
LABEL_23:
    _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_24;
  }

  if (!v10)
  {
    v15 = sgMailIntelligenceLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v30 = "SGMISaliencyModelConfig: Could not process rule set; lower bounds array from Trial is nil.";
    goto LABEL_23;
  }

  if (!v11)
  {
    v15 = sgMailIntelligenceLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v30 = "SGMISaliencyModelConfig: Could not process rule set; upper bounds array from Trial is nil.";
    goto LABEL_23;
  }

  if (!v12)
  {
    v15 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "SGMISaliencyModelConfig: Could not process rule set; outputs array from Trial is nil.";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v14 = [v9 count];
  if (v14 != [v10 count] || v14 != objc_msgSend(v11, "count") || v14 != objc_msgSend(v13, "count"))
  {
    v15 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "SGMISaliencyModelConfig: Inconsistent array sizes in Trial asset.";
      goto LABEL_23;
    }

LABEL_24:
    v29 = 0;
    goto LABEL_25;
  }

  v36 = v13;
  v15 = objc_opt_new();
  if (v14 < 1)
  {
LABEL_12:
    v15 = v15;
    v29 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0x278948000uLL;
    v34 = v14;
    v35 = v11;
    while (1)
    {
      v18 = [v9 objectAtIndex:{v16, v34}];
      v19 = [*(v17 + 3280) allFeaturePrettyNames];
      v20 = [v19 containsObject:v18];

      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = [SGMISaliencyModelConfigRule alloc];
      v37 = [*(v17 + 3280) prettyNamesReverseMapping];
      v22 = [v37 objectForKeyedSubscript:v18];
      v23 = [v10 objectAtIndex:v16];
      v24 = [v11 objectAtIndex:v16];
      [v36 objectAtIndex:v16];
      v25 = v9;
      v27 = v26 = v10;
      v28 = [(SGMISaliencyModelConfigRule *)v21 initWithFeatureName:v22 strictLowerBound:v23 strictUpperBound:v24 output:v27];
      [v15 addObject:v28];

      v10 = v26;
      v9 = v25;

      v11 = v35;
      v17 = 0x278948000;

      if (v34 == ++v16)
      {
        goto LABEL_12;
      }
    }

    v33 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v18;
      _os_log_error_impl(&dword_231E60000, v33, OS_LOG_TYPE_ERROR, "SGMISaliencyModelConfig: Unexpected feature %@", buf, 0xCu);
    }

    v29 = 0;
  }

  v13 = v36;
LABEL_25:

  v31 = *MEMORY[0x277D85DE8];

  return v29;
}

@end