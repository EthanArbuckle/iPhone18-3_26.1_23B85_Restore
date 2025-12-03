@interface SGMISaliencyModelConfig
+ (id)defaultConfig;
+ (id)groundTruthVersion;
+ (id)inferenceVersion;
+ (id)rulesFromFeatures:(id)features lowerBounds:(id)bounds upperBounds:(id)upperBounds outputs:(id)outputs;
- (SGMISaliencyModelConfig)initWithSaliencyOverrideRules:(id)rules featureNames:(id)names mean:(id)mean std:(id)std groundTruthEstimatorRules:(id)estimatorRules threshold:(id)threshold minCountToConsiderATokenAsHighlyDiscriminant:(id)discriminant ratioToConsiderATokenAsHighlyDiscriminant:(id)self0 minCountToConsiderATokenAsExtremelyDiscriminant:(id)self1 ratioToConsiderATokenAsExtremelyDiscriminant:(id)self2;
@end

@implementation SGMISaliencyModelConfig

- (SGMISaliencyModelConfig)initWithSaliencyOverrideRules:(id)rules featureNames:(id)names mean:(id)mean std:(id)std groundTruthEstimatorRules:(id)estimatorRules threshold:(id)threshold minCountToConsiderATokenAsHighlyDiscriminant:(id)discriminant ratioToConsiderATokenAsHighlyDiscriminant:(id)self0 minCountToConsiderATokenAsExtremelyDiscriminant:(id)self1 ratioToConsiderATokenAsExtremelyDiscriminant:(id)self2
{
  rulesCopy = rules;
  namesCopy = names;
  obj = mean;
  meanCopy = mean;
  stdCopy = std;
  estimatorRulesCopy = estimatorRules;
  thresholdCopy = threshold;
  discriminantCopy = discriminant;
  highlyDiscriminantCopy = highlyDiscriminant;
  extremelyDiscriminantCopy = extremelyDiscriminant;
  asExtremelyDiscriminantCopy = asExtremelyDiscriminant;
  v37.receiver = self;
  v37.super_class = SGMISaliencyModelConfig;
  v22 = [(SGMISaliencyModelConfig *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_saliencyOverrideRules, rules);
    objc_storeStrong(&v23->_featureNames, names);
    objc_storeStrong(&v23->_mean, obj);
    objc_storeStrong(&v23->_std, std);
    objc_storeStrong(&v23->_groundTruthEstimatorRules, estimatorRules);
    v24 = [estimatorRulesCopy _pas_mappedArrayWithTransform:&__block_literal_global_11811];
    groundTruthEstimatorFeatures = v23->_groundTruthEstimatorFeatures;
    v23->_groundTruthEstimatorFeatures = v24;

    objc_storeStrong(&v23->_threshold, threshold);
    v23->_minCountToConsiderATokenAsHighlyDiscriminant = [discriminantCopy unsignedIntegerValue];
    [highlyDiscriminantCopy doubleValue];
    v23->_ratioToConsiderATokenAsHighlyDiscriminant = v26;
    v23->_minCountToConsiderATokenAsExtremelyDiscriminant = [extremelyDiscriminantCopy unsignedIntegerValue];
    [asExtremelyDiscriminantCopy doubleValue];
    v23->_ratioToConsiderATokenAsExtremelyDiscriminant = v27;
  }

  return v23;
}

+ (id)inferenceVersion
{
  v2 = +[SGMITrialClientWrapper sharedInstance];
  modelInferenceVersion = [v2 modelInferenceVersion];

  return modelInferenceVersion;
}

+ (id)groundTruthVersion
{
  v2 = +[SGMITrialClientWrapper sharedInstance];
  modelGroundTruthVersion = [v2 modelGroundTruthVersion];

  return modelGroundTruthVersion;
}

+ (id)defaultConfig
{
  v3 = +[SGMITrialClientWrapper sharedInstance];
  saliencyOverrideFeatureNames = [v3 saliencyOverrideFeatureNames];
  saliencyOverrideFeatureLowerBounds = [v3 saliencyOverrideFeatureLowerBounds];
  saliencyOverrideFeatureUpperBounds = [v3 saliencyOverrideFeatureUpperBounds];
  saliencyOverrideOutputs = [v3 saliencyOverrideOutputs];
  v8 = [self rulesFromFeatures:saliencyOverrideFeatureNames lowerBounds:saliencyOverrideFeatureLowerBounds upperBounds:saliencyOverrideFeatureUpperBounds outputs:saliencyOverrideOutputs];

  if (v8)
  {
    modelFeatureNames = [v3 modelFeatureNames];
    v10 = sgMap();

    modelFeatureStandardizationMeans = [v3 modelFeatureStandardizationMeans];
    if (!modelFeatureStandardizationMeans)
    {
      modelFeatureStandardizationStandardDeviations = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(modelFeatureStandardizationStandardDeviations, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, modelFeatureStandardizationStandardDeviations, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, mean for feature standardization is nil.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_44;
    }

    modelFeatureStandardizationStandardDeviations = [v3 modelFeatureStandardizationStandardDeviations];
    if (!modelFeatureStandardizationStandardDeviations)
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

    modelGroundTruthFeatureNames = [v3 modelGroundTruthFeatureNames];
    modelGroundTruthFeatureLowerBounds = [v3 modelGroundTruthFeatureLowerBounds];
    modelGroundTruthFeatureUpperBounds = [v3 modelGroundTruthFeatureUpperBounds];
    modelGroundTruthOutputs = [v3 modelGroundTruthOutputs];
    v17 = [self rulesFromFeatures:modelGroundTruthFeatureNames lowerBounds:modelGroundTruthFeatureLowerBounds upperBounds:modelGroundTruthFeatureUpperBounds outputs:modelGroundTruthOutputs];

    if (!v17)
    {
      classificationThreshold = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(classificationThreshold, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, classificationThreshold, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error in processing ground truth estimation rules.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_42;
    }

    classificationThreshold = [v3 classificationThreshold];
    if (!classificationThreshold)
    {
      minCountToConsiderATokenAsHighlyDiscriminant = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(minCountToConsiderATokenAsHighlyDiscriminant, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_231E60000, minCountToConsiderATokenAsHighlyDiscriminant, OS_LOG_TYPE_FAULT, "SGMISaliencyModelConfig: Error, classification threshold is nil.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_41;
    }

    minCountToConsiderATokenAsHighlyDiscriminant = [v3 minCountToConsiderATokenAsHighlyDiscriminant];
    if (!minCountToConsiderATokenAsHighlyDiscriminant)
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

    ratioToConsiderATokenAsHighlyDiscriminant = [v3 ratioToConsiderATokenAsHighlyDiscriminant];
    v21 = ratioToConsiderATokenAsHighlyDiscriminant;
    if (!ratioToConsiderATokenAsHighlyDiscriminant)
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

    v30 = ratioToConsiderATokenAsHighlyDiscriminant;
    minCountToConsiderATokenAsExtremelyDiscriminant = [v3 minCountToConsiderATokenAsExtremelyDiscriminant];
    v31 = minCountToConsiderATokenAsExtremelyDiscriminant;
    if (minCountToConsiderATokenAsExtremelyDiscriminant)
    {
      v23 = minCountToConsiderATokenAsExtremelyDiscriminant;
      ratioToConsiderATokenAsExtremelyDiscriminant = [v3 ratioToConsiderATokenAsExtremelyDiscriminant];
      if (ratioToConsiderATokenAsExtremelyDiscriminant)
      {
        v25 = ratioToConsiderATokenAsExtremelyDiscriminant;
        v26 = [[SGMISaliencyModelConfig alloc] initWithSaliencyOverrideRules:v8 featureNames:v10 mean:modelFeatureStandardizationMeans std:modelFeatureStandardizationStandardDeviations groundTruthEstimatorRules:v17 threshold:classificationThreshold minCountToConsiderATokenAsHighlyDiscriminant:minCountToConsiderATokenAsHighlyDiscriminant ratioToConsiderATokenAsHighlyDiscriminant:v30 minCountToConsiderATokenAsExtremelyDiscriminant:v23 ratioToConsiderATokenAsExtremelyDiscriminant:ratioToConsiderATokenAsExtremelyDiscriminant];
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

+ (id)rulesFromFeatures:(id)features lowerBounds:(id)bounds upperBounds:(id)upperBounds outputs:(id)outputs
{
  v40 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  boundsCopy = bounds;
  upperBoundsCopy = upperBounds;
  outputsCopy = outputs;
  v13 = outputsCopy;
  if (!featuresCopy)
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

  if (!boundsCopy)
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

  if (!upperBoundsCopy)
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

  if (!outputsCopy)
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

  v14 = [featuresCopy count];
  if (v14 != [boundsCopy count] || v14 != objc_msgSend(upperBoundsCopy, "count") || v14 != objc_msgSend(v13, "count"))
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
    v35 = upperBoundsCopy;
    while (1)
    {
      v18 = [featuresCopy objectAtIndex:{v16, v34}];
      allFeaturePrettyNames = [*(v17 + 3280) allFeaturePrettyNames];
      v20 = [allFeaturePrettyNames containsObject:v18];

      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = [SGMISaliencyModelConfigRule alloc];
      prettyNamesReverseMapping = [*(v17 + 3280) prettyNamesReverseMapping];
      v22 = [prettyNamesReverseMapping objectForKeyedSubscript:v18];
      v23 = [boundsCopy objectAtIndex:v16];
      v24 = [upperBoundsCopy objectAtIndex:v16];
      [v36 objectAtIndex:v16];
      v25 = featuresCopy;
      v27 = v26 = boundsCopy;
      v28 = [(SGMISaliencyModelConfigRule *)v21 initWithFeatureName:v22 strictLowerBound:v23 strictUpperBound:v24 output:v27];
      [v15 addObject:v28];

      boundsCopy = v26;
      featuresCopy = v25;

      upperBoundsCopy = v35;
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