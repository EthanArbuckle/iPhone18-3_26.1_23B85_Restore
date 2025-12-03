@interface CDMMentionDetectorService
+ (id)getCDMServiceAssetConfig;
- (id)getPredictor:(id)predictor forLocale:(id)locale status:(id *)status;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)predictWithInput:(id)input forLocale:(id)locale status:(id *)status;
- (id)setup:(id)setup;
@end

@implementation CDMMentionDetectorService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMMentionDetectorRequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v7 = @"marrs/md";
  v8 = @"com.apple.siri.nl.marrs.md";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];
  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)predictWithInput:(id)input forLocale:(id)locale status:(id *)status
{
  v5 = [(MRRMultimodalMentionDetector *)self->_mentionDetector detectMentionsInUtteranceRequest:input status:status];

  return v5;
}

- (id)getPredictor:(id)predictor forLocale:(id)locale status:(id *)status
{
  predictorCopy = predictor;
  localeCopy = locale;
  v9 = [objc_alloc(MEMORY[0x1E69AE140]) initWithAssets:predictorCopy forLocale:localeCopy status:status];

  return v9;
}

- (id)handle:(id)handle
{
  v32 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[CDMMentionDetectorService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling Mention Detection", buf, 0xCu);
  }

  if (!handleCopy || !self->_mentionDetector || ([handleCopy mdRequest], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v7))
  {
    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[CDMMentionDetectorService handle:]";
      _os_log_error_impl(&dword_1DC287000, v18, OS_LOG_TYPE_ERROR, "%s [ERR]: Mention Detection: Either Request and/or Predictor is nil", buf, 0xCu);
    }

    goto LABEL_20;
  }

  turnInput = [handleCopy turnInput];
  if (turnInput)
  {
    turnInput2 = [handleCopy turnInput];
    turnContext = [turnInput2 turnContext];
    nlContext = [turnContext nlContext];
    salientEntities = [nlContext salientEntities];
    v13 = [salientEntities count] == 0;

    if (v13)
    {
      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v27 = "[CDMMentionDetectorService handle:]";
        _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Skipping MD as there are no salient entities", buf, 0xCu);
      }

LABEL_20:
      v19 = 0;
      goto LABEL_21;
    }
  }

  v14 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v27 = "[CDMMentionDetectorService handle:]";
    v28 = 2112;
    v29 = @"mentiondetector";
    v30 = 2112;
    v31 = handleCopy;
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMENTIONDETECTORRequest: %@", buf, 0x20u);
  }

  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    mdRequest = [handleCopy mdRequest];
    [CDMMentionDetectorServiceUtils logMDRequestToFile:mdRequest];
  }

  mdRequest2 = [handleCopy mdRequest];
  v25 = 0;
  v17 = [(CDMMentionDetectorService *)self predictWithInput:mdRequest2 forLocale:0 status:&v25];
  v18 = v25;

  v19 = [[CDMMentionDetectorResponseCommand alloc] initWithResponse:v17];
  [(CDMBaseCommand *)v19 setCmdError:v18];
  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    cmdError = [(CDMBaseCommand *)v19 cmdError];
    v21 = cmdError == 0;

    if (v21)
    {
      [CDMMentionDetectorServiceUtils logMDResponseToFile:v17];
    }
  }

  v22 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v27 = "[CDMMentionDetectorService handle:]";
    v28 = 2112;
    v29 = @"mentiondetector";
    v30 = 2112;
    v31 = v17;
    _os_log_debug_impl(&dword_1DC287000, v22, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMENTIONDETECTORResponse: %@", buf, 0x20u);
  }

LABEL_21:
  v23 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)setup:(id)setup
{
  v29 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[CDMMentionDetectorService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up Mention Detector service", buf, 0xCu);
  }

  v6 = objc_alloc_init(CDMSetupResponseCommand);
  dynamicConfig = [setupCopy dynamicConfig];
  v8 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.marrs.md"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v8;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v11 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.marrs.md"];

  if (v11)
  {
    resourcePath = [v11 resourcePath];
    dynamicConfig3 = [setupCopy dynamicConfig];
    languageCode = [dynamicConfig3 languageCode];
    v26 = 0;
    v15 = [(CDMMentionDetectorService *)self getPredictor:resourcePath forLocale:languageCode status:&v26];
    v16 = v26;
    mentionDetector = self->_mentionDetector;
    self->_mentionDetector = v15;

    if (v16)
    {
      localizedDescription = [v16 localizedDescription];
      v19 = [(CDMBaseService *)self createErrorWithCode:1 description:localizedDescription];
      [(CDMBaseCommand *)v6 setCmdError:v19];

      self->super.super._serviceState = 4;
      createSetupResponseCommand = v6;
      goto LABEL_12;
    }
  }

  else
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[CDMMentionDetectorService setup:]";
      _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Mention Detector model bundle not found", buf, 0xCu);
    }
  }

  self->super.super._serviceState = 2;
  v22 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[CDMMentionDetectorService setup:]";
    _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s Mention Detector loaded", buf, 0xCu);
  }

  v16 = 0;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
LABEL_12:
  v23 = createSetupResponseCommand;

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end