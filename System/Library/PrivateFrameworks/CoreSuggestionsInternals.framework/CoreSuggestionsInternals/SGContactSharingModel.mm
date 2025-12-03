@interface SGContactSharingModel
+ (id)newTransformerInstanceForLanguage:(id)language;
+ (int64_t)labelForProbabilities:(id)probabilities;
@end

@implementation SGContactSharingModel

+ (int64_t)labelForProbabilities:(id)probabilities
{
  v26 = *MEMORY[0x277D85DE8];
  probabilitiesCopy = probabilities;
  if ([probabilitiesCopy count] != 7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGContactSharingModel.m" lineNumber:71 description:{@"SGContactSharingModel - Provided probabilities (count %ld) do not match valid SGContactSharingLabels (count %ld).", objc_msgSend(probabilitiesCopy, "count"), 7}];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = probabilitiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v22;
    v12 = 0.0;
    do
    {
      v13 = 0;
      v14 = v9;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v21 + 1) + 8 * v13);
        [v15 doubleValue];
        if (v16 > v12)
        {
          [v15 doubleValue];
          v12 = v17;
          v10 = v14;
        }

        ++v14;
        ++v13;
      }

      while (v8 != v13);
      v9 += v8;
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)newTransformerInstanceForLanguage:(id)language
{
  v25 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  asset = [MEMORY[0x277D02558] asset];
  v5 = [asset filesystemPathForAssetDataRelativePath:@"PQT_ContactSharing_TrainingTransformers.plist"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 objectForKeyedSubscript:languageCopy];
      if (!v8)
      {
        v10 = sgLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v23 = 138412290;
          v24 = languageCopy;
          _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "SGContactSharingModel - Could not find transformer instance for language: %@", &v23, 0xCu);
        }

        v18 = 0;
        goto LABEL_19;
      }

      v9 = objc_alloc(MEMORY[0x277D41F60]);
      v10 = [v9 initWithClassNameKey:*MEMORY[0x277D41F98]];
      v11 = [v8 objectForKeyedSubscript:@"MODEL_FEATURIZER"];
      v12 = MEMORY[0x277CBEBF8];
      v13 = MEMORY[0x277CBEC10];
      v14 = [v10 readObjectWithPlist:v11 chunks:MEMORY[0x277CBEBF8] context:MEMORY[0x277CBEC10]];

      v15 = objc_alloc(MEMORY[0x277D41F68]);
      v16 = [v8 objectForKeyedSubscript:@"MODEL_SOURCE_SESSION_DESCRIPTOR"];
      v17 = [v15 initWithPlist:v16 chunks:v12 context:v13];

      if (v14 && v17)
      {
        v18 = [[SGTransformerInstance alloc] initWithTransformer:v14 sessionDescriptor:v17 modelClass:objc_opt_class()];
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v20 = sgLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v23) = 0;
        _os_log_fault_impl(&dword_231E60000, v20, OS_LOG_TYPE_FAULT, "SGContactSharing Model - Could not initialize featurizer and sessionDescriptor from config.", &v23, 2u);
      }

      if (!_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        v18 = 0;
        goto LABEL_18;
      }

LABEL_21:
      abort();
    }
  }

  v19 = sgLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    v23 = 138412290;
    v24 = v5;
    _os_log_fault_impl(&dword_231E60000, v19, OS_LOG_TYPE_FAULT, "SGContactSharingModel - Invalid model config for path: %@", &v23, 0xCu);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    goto LABEL_21;
  }

  v18 = 0;
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

@end