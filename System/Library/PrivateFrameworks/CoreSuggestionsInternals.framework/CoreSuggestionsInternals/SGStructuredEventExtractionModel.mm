@interface SGStructuredEventExtractionModel
+ (id)sharedInstance;
- (BOOL)isSenderSupportedForExtraction:(id)extraction;
- (BOOL)isSenderSupportedForMLDefaultExtraction:(id)extraction;
- (BOOL)isSenderSupportedForMLHybridExtraction:(id)extraction;
- (BOOL)isSenderSupportedForPFLTraining:(id)training;
- (BOOL)isSenderSupportedForShadowExtraction:(id)extraction;
- (id)_init;
- (id)engineConfig;
- (id)gazetteer;
- (id)inputMapping;
- (id)loadModel;
- (id)outputMapping;
- (id)supportedProviders;
- (unint64_t)addressComponentThreshold;
- (unint64_t)maxMergeDistanceForSection:(id)section label:(id)label;
- (unint64_t)stripRepeatedContentForSectionLength:(id)length label:(id)label;
- (void)updateAll;
@end

@implementation SGStructuredEventExtractionModel

- (id)gazetteer
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(SGExtractionModel *)self currentModelURLForModelName:@"structuredEventGazetteer"];
  if (v2)
  {
    v9 = 0;
    v3 = [objc_alloc(MEMORY[0x277CD89B8]) initWithContentsOfURL:v2 error:&v9];
    v4 = v9;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = sgEventsLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "SGPOSTagger: Unable to create gazetteer %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = sgEventsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGStructuredEventExtractionModel: Unable to get URL for Gazetteer", buf, 2u);
    }

    v3 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)addressComponentThreshold
{
  engineConfig = [(SGStructuredEventExtractionModel *)self engineConfig];
  v3 = engineConfig;
  if (engineConfig)
  {
    v4 = [engineConfig objectForKeyedSubscript:@"addressComponentThreshold"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v4 unsignedIntegerValue];

        goto LABEL_9;
      }
    }
  }

  v6 = sgEventsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "SGStructuredEventExtractionModel: No configuration loaded", v8, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_9:

  return unsignedIntegerValue;
}

- (unint64_t)stripRepeatedContentForSectionLength:(id)length label:(id)label
{
  lengthCopy = length;
  labelCopy = label;
  engineConfig = [(SGStructuredEventExtractionModel *)self engineConfig];
  if (engineConfig)
  {
    labelCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@.%@", @"stripRepeatedContentInSections", lengthCopy, labelCopy];
    v10 = [engineConfig valueForKeyPath:labelCopy];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v10 unsignedIntegerValue];

        goto LABEL_9;
      }
    }
  }

  v12 = sgEventsLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "SGStructuredEventExtractionModel: No configuration loaded", buf, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_9:

  return unsignedIntegerValue;
}

- (unint64_t)maxMergeDistanceForSection:(id)section label:(id)label
{
  sectionCopy = section;
  labelCopy = label;
  engineConfig = [(SGStructuredEventExtractionModel *)self engineConfig];
  if (engineConfig)
  {
    labelCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@.%@", @"sectionLabelTokenMergeDistance", sectionCopy, labelCopy];
    v10 = [engineConfig valueForKeyPath:labelCopy];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v10 unsignedIntegerValue];
LABEL_8:

        goto LABEL_13;
      }
    }

    v12 = [engineConfig objectForKeyedSubscript:@"defaultLabelTokenMergeDistance"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        goto LABEL_8;
      }
    }
  }

  v13 = sgEventsLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_231E60000, v13, OS_LOG_TYPE_FAULT, "SGStructuredEventExtractionModel: No configuration loaded", buf, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_13:

  return unsignedIntegerValue;
}

- (id)outputMapping
{
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  structuredEventOutputMapping = [v3 structuredEventOutputMapping];

  outputMapping = structuredEventOutputMapping;
  if (!structuredEventOutputMapping)
  {
    outputMapping = self->_outputMapping;
  }

  v6 = outputMapping;

  return v6;
}

- (id)inputMapping
{
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  structuredEventInputMapping = [v3 structuredEventInputMapping];

  inputMapping = structuredEventInputMapping;
  if (!structuredEventInputMapping)
  {
    inputMapping = self->_inputMapping;
  }

  v6 = inputMapping;

  return v6;
}

- (id)engineConfig
{
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  engineConfig = [v3 engineConfig];

  engineConfig = engineConfig;
  if (!engineConfig)
  {
    engineConfig = self->_engineConfig;
  }

  v6 = engineConfig;

  return v6;
}

- (BOOL)isSenderSupportedForMLHybridExtraction:(id)extraction
{
  extractionCopy = extraction;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  if (!supportedProviders)
  {
    goto LABEL_5;
  }

  v7 = [supportedProviders objectForKeyedSubscript:@"mlHybridExtractionSenders"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"mlHybridExtractionSenders"];
  v9 = [v8 objectForKeyedSubscript:extractionCopy];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (BOOL)isSenderSupportedForPFLTraining:(id)training
{
  trainingCopy = training;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  if (!supportedProviders)
  {
    goto LABEL_5;
  }

  v7 = [supportedProviders objectForKeyedSubscript:@"schemaOrgSenders"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"schemaOrgSenders"];
  v9 = [v8 objectForKeyedSubscript:trainingCopy];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (BOOL)isSenderSupportedForMLDefaultExtraction:(id)extraction
{
  extractionCopy = extraction;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  if (!supportedProviders)
  {
    goto LABEL_5;
  }

  v7 = [supportedProviders objectForKeyedSubscript:@"mlDefaultExtractionSenders"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"mlDefaultExtractionSenders"];
  v9 = [v8 objectForKeyedSubscript:extractionCopy];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (BOOL)isSenderSupportedForShadowExtraction:(id)extraction
{
  extractionCopy = extraction;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  if (!supportedProviders)
  {
    goto LABEL_5;
  }

  v7 = [supportedProviders objectForKeyedSubscript:@"shadowSenders"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"shadowSenders"];
  v9 = [v8 objectForKeyedSubscript:extractionCopy];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (BOOL)isSenderSupportedForExtraction:(id)extraction
{
  extractionCopy = extraction;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  if (!supportedProviders)
  {
    goto LABEL_5;
  }

  v7 = [supportedProviders objectForKeyedSubscript:@"extractionSenders"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"extractionSenders"];
  v9 = [v8 objectForKeyedSubscript:extractionCopy];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (id)supportedProviders
{
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  supportedProviders = [v3 supportedProviders];

  supportedProviders = supportedProviders;
  if (!supportedProviders)
  {
    supportedProviders = self->_supportedProviders;
  }

  v6 = supportedProviders;

  return v6;
}

- (id)loadModel
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setComputeUnits:0];
  v4 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  modelPath = [v4 modelPath];
  v6 = modelPath;
  if (modelPath && [modelPath length])
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "SGStructuredEventExtractionModel: Loading model from trial override at path: %@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6];
  }

  else
  {
    v8 = [(SGExtractionModel *)self currentModelURLForModelName:@"StructuredEventModel"];
  }

  v9 = v8;
  if (v8)
  {
    v16 = 0;
    v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 configuration:v3 error:&v16];
    v11 = v16;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = sgEventsLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "Unable to load model from URL: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)updateAll
{
  v3 = [objc_opt_class() loadLazyPlistWithBasename:@"StructuredEventInputMapping"];
  inputMapping = self->_inputMapping;
  self->_inputMapping = v3;

  v5 = [objc_opt_class() loadLazyPlistWithBasename:@"StructuredEventOutputMapping"];
  outputMapping = self->_outputMapping;
  self->_outputMapping = v5;

  v7 = [objc_opt_class() loadLazyPlistWithBasename:@"SupportedProviders"];
  supportedProviders = self->_supportedProviders;
  self->_supportedProviders = v7;

  v9 = [objc_opt_class() loadLazyPlistWithBasename:@"StructuredEventEngineConfig"];
  engineConfig = self->_engineConfig;
  self->_engineConfig = v9;

  MEMORY[0x2821F96F8](v9, engineConfig);
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = SGStructuredEventExtractionModel;
  v2 = [(SGStructuredEventExtractionModel *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(SGStructuredEventExtractionModel *)v2 updateAll];
    v4 = +[SGAsset localeAsset];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__SGStructuredEventExtractionModel__init__block_invoke;
    v9[3] = &unk_27894D660;
    v5 = v3;
    v10 = v5;
    v6 = [v4 registerUpdateHandler:v9];
    assetUpdateToken = v5->_assetUpdateToken;
    v5->_assetUpdateToken = v6;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_4637 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_4637, &__block_literal_global_4638);
  }

  v3 = sharedInstance__pasExprOnceResult_4639;

  return v3;
}

void __50__SGStructuredEventExtractionModel_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[SGStructuredEventExtractionModel alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_4639;
  sharedInstance__pasExprOnceResult_4639 = v1;

  objc_autoreleasePoolPop(v0);
}

@end