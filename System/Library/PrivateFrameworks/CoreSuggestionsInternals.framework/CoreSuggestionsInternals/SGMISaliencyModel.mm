@interface SGMISaliencyModel
+ (double)saliencyThreshold;
+ (id)defaultModel;
+ (id)getSaliencyOutputOf:(id)of forArray:(id)array;
+ (id)saliencyForFeatureVector:(id)vector;
+ (int64_t)ruleBasedInferenceFor:(id)for;
+ (int64_t)ruleBasedInferenceFor:(id)for config:(id)config;
@end

@implementation SGMISaliencyModel

+ (id)getSaliencyOutputOf:(id)of forArray:(id)array
{
  v27[2] = *MEMORY[0x277D85DE8];
  ofCopy = of;
  arrayCopy = array;
  v7 = objc_alloc(MEMORY[0x277CBFF48]);
  v27[0] = &unk_284749590;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(arrayCopy, "count")}];
  v27[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v25 = 0;
  v10 = [v7 initWithShape:v9 dataType:65568 error:&v25];
  v11 = v25;

  if (v10)
  {
    if ([arrayCopy count])
    {
      v12 = 0;
      do
      {
        v13 = [arrayCopy objectAtIndexedSubscript:v12];
        v26[0] = &unk_284749578;
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v12];
        v26[1] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
        [v10 setObject:v13 forKeyedSubscript:v15];

        ++v12;
      }

      while ([arrayCopy count] > v12);
    }

    v16 = [[SGMISaliencyModelFeatureProvider alloc] initWithData:v10];
    v24 = v11;
    v17 = [ofCopy predictionFromFeatures:v16 error:&v24];
    v18 = v24;

    if (v17)
    {
      v19 = [v17 featureValueForName:@"Identity"];
      multiArrayValue = [v19 multiArrayValue];

      if (multiArrayValue)
      {
        v21 = [[SGMISaliencyModelOutput alloc] initWithData:multiArrayValue];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v11 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (double)saliencyThreshold
{
  v2 = +[SGMISaliencyModelConfig defaultConfig];
  v3 = v2;
  if (v2)
  {
    threshold = [v2 threshold];
    [threshold doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 2.0;
  }

  return v6;
}

+ (id)saliencyForFeatureVector:(id)vector
{
  v76 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v5 = +[SGMISaliencyModelConfig defaultConfig];
  v6 = v5;
  if (v5)
  {
    featureNames = [v5 featureNames];
    defaultModel = [self defaultModel];
    if (defaultModel)
    {
      selfCopy = self;
      v9 = [vectorCopy flatVectorForFeatureNames:featureNames];
      v67 = defaultModel;
      modelDescription = [defaultModel modelDescription];
      inputDescriptionsByName = [modelDescription inputDescriptionsByName];
      v12 = [inputDescriptionsByName objectForKeyedSubscript:@"featureVector"];
      multiArrayConstraint = [v12 multiArrayConstraint];
      shape = [multiArrayConstraint shape];
      v15 = [shape objectAtIndexedSubscript:1];

      v16 = v15;
      v17 = [v9 count];
      if (v17 == [v15 unsignedIntegerValue])
      {
        v18 = objc_alloc(MEMORY[0x277CBFF48]);
        v71[0] = &unk_284749590;
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        v71[1] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
        v69 = 0;
        v21 = [v18 initWithShape:v20 dataType:65568 error:&v69];
        v22 = v69;

        if (v21)
        {
          v64 = v22;
          v65 = v15;
          if ([v9 count])
          {
            v23 = 0;
            do
            {
              v24 = [v9 objectAtIndexedSubscript:v23];
              [v24 doubleValue];
              v26 = v25;

              mean = [v6 mean];
              v28 = [mean objectAtIndexedSubscript:v23];
              [v28 doubleValue];
              v30 = v29;

              v31 = [v6 std];
              v32 = [v31 objectAtIndexedSubscript:v23];
              [v32 doubleValue];
              v34 = v33;

              v35 = [MEMORY[0x277CCABB0] numberWithDouble:(v26 - v30) / v34];
              v70[0] = &unk_284749578;
              v36 = [MEMORY[0x277CCABB0] numberWithInt:v23];
              v70[1] = v36;
              v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
              [v21 setObject:v35 forKeyedSubscript:v37];

              ++v23;
            }

            while ([v9 count] > v23);
          }

          v38 = [[SGMISaliencyModelFeatureProvider alloc] initWithData:v21];
          v68 = v64;
          defaultModel = v67;
          v39 = [v67 predictionFromFeatures:v38 error:&v68];
          v63 = v68;

          if (v39)
          {
            v40 = [v39 featureValueForName:@"Identity"];
            multiArrayValue = [v40 multiArrayValue];

            v62 = v39;
            if (multiArrayValue)
            {
              v42 = [[SGMISaliencyModelOutput alloc] initWithData:multiArrayValue];
              [(SGMISaliencyModelOutput *)v42 regularScore];
              v44 = exp(v43);
              [(SGMISaliencyModelOutput *)v42 salientScore];
              v46 = exp(v45);
              v47 = v46 / (v44 + v46);
              [selfCopy saliencyThreshold];
              v49 = v47 > v48;
              v50 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
              v51 = v49;
              defaultModel = v67;
              [vectorCopy saliencyWithScore:v50 isSalient:v51];
              defaultSaliencyOnError = v52 = multiArrayValue;
            }

            else
            {
              v59 = sgMailIntelligenceLogHandle();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_231E60000, v59, OS_LOG_TYPE_ERROR, "SGMISaliencyModel: Error while parsing SGMISaliencyModel inference.", buf, 2u);
              }

              defaultSaliencyOnError = [vectorCopy defaultSaliencyOnError];
              v52 = 0;
            }

            v16 = v65;
            v22 = v63;

            v39 = v62;
          }

          else
          {
            v58 = sgMailIntelligenceLogHandle();
            v22 = v63;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v73 = v63;
              _os_log_error_impl(&dword_231E60000, v58, OS_LOG_TYPE_ERROR, "SGMISaliencyModel: Error while running SGMISaliencyModel inference: %@", buf, 0xCu);
            }

            defaultSaliencyOnError = [vectorCopy defaultSaliencyOnError];
            v16 = v65;
          }
        }

        else
        {
          v57 = sgMailIntelligenceLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v73 = v22;
            _os_log_error_impl(&dword_231E60000, v57, OS_LOG_TYPE_ERROR, "SGMISaliencyModel: Error while initializing MLMultiArray for SGMISaliencyModel inference: %@", buf, 0xCu);
          }

          defaultSaliencyOnError = [vectorCopy defaultSaliencyOnError];
          defaultModel = v67;
        }
      }

      else
      {
        v56 = sgMailIntelligenceLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v73 = v15;
          v74 = 2048;
          v75 = [v9 count];
          _os_log_error_impl(&dword_231E60000, v56, OS_LOG_TYPE_ERROR, "Error while preparing feature vector for mlmodel: dimension mismatch, expecting %@ got %lu", buf, 0x16u);
        }

        defaultSaliencyOnError = [vectorCopy defaultSaliencyOnError];
        defaultModel = v67;
      }
    }

    else
    {
      v55 = sgMailIntelligenceLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v55, OS_LOG_TYPE_ERROR, "Error - Couldn't get default saliency model when trying to run inference.", buf, 2u);
      }

      defaultSaliencyOnError = [vectorCopy defaultSaliencyOnError];
    }
  }

  else
  {
    v54 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v54, OS_LOG_TYPE_ERROR, "SGMISaliencyModel: Unable to load SGMISaliencyModelConfig defaultConfig", buf, 2u);
    }

    defaultSaliencyOnError = [vectorCopy defaultSaliencyOnError];
  }

  v60 = *MEMORY[0x277D85DE8];

  return defaultSaliencyOnError;
}

+ (int64_t)ruleBasedInferenceFor:(id)for config:(id)config
{
  if (!config)
  {
    return 2;
  }

  forCopy = for;
  saliencyOverrideRules = [config saliencyOverrideRules];
  v7 = [forCopy evaluateFirstMatchAmong:saliencyOverrideRules defaultValue:2];

  return v7;
}

+ (int64_t)ruleBasedInferenceFor:(id)for
{
  forCopy = for;
  v4 = +[SGMISaliencyModelConfig defaultConfig];
  v5 = [SGMISaliencyModel ruleBasedInferenceFor:forCopy config:v4];

  return v5;
}

+ (id)defaultModel
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGMISaliencyModel: Loading CoreML model.", buf, 2u);
  }

  v3 = +[SGMITrialClientWrapper sharedInstance];
  modelPath = [v3 modelPath];
  v5 = modelPath;
  if (!modelPath || ![modelPath length])
  {
    v8 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v15 = "SGMISaliencyModel: Invalid model path specifeid via Trial configuration.";
      goto LABEL_24;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_20;
  }

  v6 = sgMailIntelligenceLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGMISaliencyModel: Loading model from Trial at path: %@", buf, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v5];
  if (!v7)
  {
    v8 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v15 = "SGMISaliencyModel: Error converting model path to file URL";
LABEL_24:
      _os_log_fault_impl(&dword_231E60000, v8, OS_LOG_TYPE_FAULT, v15, buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v8 = v7;
  v9 = objc_opt_new();
  [v9 setComputeUnits:0];
  v18 = 0;
  v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 configuration:v9 error:&v18];
  v11 = v18;
  v12 = sgMailIntelligenceLogHandle();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "SGMISaliencyModel: Finished loading CoreML model.", buf, 2u);
    }

    v14 = v10;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_fault_impl(&dword_231E60000, v13, OS_LOG_TYPE_FAULT, "SGMISaliencyModel: Error while initializing MLModel: %@", buf, 0xCu);
    }
  }

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

@end