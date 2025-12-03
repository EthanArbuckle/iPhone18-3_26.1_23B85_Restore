@interface CDMCcqrAerCbRService
+ (BOOL)suppressCcqrUsingCurContext:(id)context;
+ (id)getCDMServiceAssetConfig;
+ (void)CcqrAerCbRServiceLogInitIfNeeded;
- (BOOL)skipServiceSetup:(id)setup;
- (id)createSetupResponseWithError:(id)error;
- (id)doInference:(id)inference status:(id *)status;
- (id)getPredictor:(id)predictor FilesPath:(id)path modelType:(id)type status:(id *)status;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)match:(id)match;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
- (void)debugCcqrResponse:(id)response;
@end

@implementation CDMCcqrAerCbRService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMQRRequestCommand];
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
  v7 = @"marrs/ccqr";
  v8 = @"com.apple.siri.nl.marrs.ccqr";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];
  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (void)CcqrAerCbRServiceLogInitIfNeeded
{
  if (CcqrAerCbRServiceLogInitIfNeeded_once[0] != -1)
  {
    dispatch_once(CcqrAerCbRServiceLogInitIfNeeded_once, &__block_literal_global_6980);
  }
}

- (BOOL)skipServiceSetup:(id)setup
{
  setupCopy = setup;
  if (AFDeviceSupportsSAE() && [CDMCcqrServiceUtils isNLRouterAssetAvailable:setupCopy])
  {
    v4 = objc_alloc_init(NLRouterExperimentTrialController);
    v5 = ![(NLRouterExperimentTrialController *)v4 suppressRewrite];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)doInference:(id)inference status:(id *)status
{
  inferenceCopy = inference;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(QueryRewriter *)selfCopy->_ccqrPredictor predictWithInput:inferenceCopy status:status];
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)getPredictor:(id)predictor FilesPath:(id)path modelType:(id)type status:(id *)status
{
  v21 = *MEMORY[0x1E69E9840];
  self->_modelType = 1;
  pathCopy = path;
  predictorCopy = predictor;
  if ([type isEqualToString:@"JointCCQR"])
  {
    self->_modelType = 4;
  }

  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (self->_modelType == 1)
    {
      v16 = @"AER";
    }

    else
    {
      v16 = @"AER + CBR";
    }

    v17 = 136315394;
    v18 = "[CDMCcqrAerCbRService getPredictor:FilesPath:modelType:status:]";
    v19 = 2112;
    v20 = v16;
    _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s CCQR initialized with %@ functionality", &v17, 0x16u);
  }

  v13 = [objc_alloc(MEMORY[0x1E69AE150]) initWithLocale:predictorCopy filesPath:pathCopy predictorType:self->_modelType status:status];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)debugCcqrResponse:(id)response
{
  v19 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  rewriteHypothesesCount = [responseCopy rewriteHypothesesCount];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "[CDMCcqrAerCbRService debugCcqrResponse:]";
    v17 = 2048;
    v18 = rewriteHypothesesCount;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s CcqrAerCbR: Generated %lu rewrite hypotheses.", &v15, 0x16u);
  }

  if (rewriteHypothesesCount)
  {
    v6 = [responseCopy rewriteHypothesesAtIndex:0];
    rewriteType = [v6 rewriteType];

    v8 = CDMOSLoggerForCategory(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (rewriteType)
    {
      if (v9)
      {
        v15 = 136315138;
        v16 = "[CDMCcqrAerCbRService debugCcqrResponse:]";
        v10 = "%s Reference Resolution";
LABEL_13:
        _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, v10, &v15, 0xCu);
      }
    }

    else if (v9)
    {
      v15 = 136315138;
      v16 = "[CDMCcqrAerCbRService debugCcqrResponse:]";
      v10 = "%s Correction by Repetition";
      goto LABEL_13;
    }

    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [responseCopy rewriteHypothesesAtIndex:0];
      utterance = [v13 utterance];
      v15 = 136315394;
      v16 = "[CDMCcqrAerCbRService debugCcqrResponse:]";
      v17 = 2112;
      v18 = utterance;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Rewritten Utterance: %@", &v15, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)handle:(id)handle
{
  v26 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    v17 = v5;
    qrRequest = [handleCopy qrRequest];
    *buf = 136315650;
    v21 = "[CDMCcqrAerCbRService handle:]";
    v22 = 2112;
    v23 = @"queryrewrite";
    v24 = 2112;
    v25 = qrRequest;
    _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nQUERYREWRITEQRRequest: %@", buf, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_ccqrPredictor)
  {
    objc_sync_exit(selfCopy);

    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[CDMCcqrAerCbRService handle:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Calling CCQR (AER & CbR)", buf, 0xCu);
    }

    qrRequest2 = [handleCopy qrRequest];
    v9 = [CDMCcqrServiceUtils leftShiftSiriResponse:qrRequest2];

    v19 = 0;
    v10 = [(CDMCcqrAerCbRService *)selfCopy doInference:v9 status:&v19];
    v11 = v19;
    [(CDMCcqrAerCbRService *)selfCopy debugCcqrResponse:v10];
    v12 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "[CDMCcqrAerCbRService handle:]";
      v22 = 2112;
      v23 = @"queryrewrite";
      v24 = 2112;
      v25 = v10;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nQUERYREWRITEQRResponse: %@", buf, 0x20u);
    }

    v13 = [[CDMQRResponseCommand alloc] initWithResponse:v10];

    selfCopy = v9;
  }

  else
  {
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CDMCcqrAerCbRService handle:]";
      _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: CCQR (AER & CbR): Predictor not initialized!", buf, 0xCu);
    }

    objc_sync_exit(selfCopy);
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)match:(id)match
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [(SiriNLUOverrideProxy *)self->_overrideProxy matchWithInputs:match overrideNamespace:2];
  v5 = v4;
  if (!v4 || ![v4 hasCcqrOverrideTemplate])
  {
    goto LABEL_18;
  }

  ccqrOverrideTemplate = [v5 ccqrOverrideTemplate];
  if (([ccqrOverrideTemplate hasRewriteMessage] & 1) == 0)
  {
    goto LABEL_17;
  }

  ccqrOverrideTemplate2 = [v5 ccqrOverrideTemplate];
  rewriteMessage = [ccqrOverrideTemplate2 rewriteMessage];
  if (([rewriteMessage hasRewriteType] & 1) == 0)
  {

LABEL_17:
    goto LABEL_18;
  }

  ccqrOverrideTemplate3 = [v5 ccqrOverrideTemplate];
  rewriteMessage2 = [ccqrOverrideTemplate3 rewriteMessage];
  hasRewrittenUtterance = [rewriteMessage2 hasRewrittenUtterance];

  if (hasRewrittenUtterance)
  {
    v12 = [[CDMQRResponseCommand alloc] initWithResponse:0];
    ccqrOverrideTemplate4 = [v5 ccqrOverrideTemplate];
    rewriteMessage3 = [ccqrOverrideTemplate4 rewriteMessage];
    rewrittenUtterance = [rewriteMessage3 rewrittenUtterance];

    v16 = [(CDMCcqrAerCbROverridesProxy *)self->_overrideProxy getRewriteHypothesisWithOverrideUtterance:rewrittenUtterance];
    v17 = v16;
    if (v16)
    {
      utterance = [v16 utterance];
      v19 = [utterance isEqualToString:&stru_1F5800F50];

      if ((v19 & 1) == 0)
      {
        ccqrOverrideTemplate5 = [v5 ccqrOverrideTemplate];
        rewriteMessage4 = [ccqrOverrideTemplate5 rewriteMessage];
        rewriteType = [rewriteMessage4 rewriteType];

        if (rewriteType)
        {
          if (rewriteType != 1)
          {
            if (rewriteType != 2)
            {
              v29 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v31 = "[CDMCcqrAerCbRService match:]";
                _os_log_error_impl(&dword_1DC287000, v29, OS_LOG_TYPE_ERROR, "%s [ERR]: CCQR override did not find the correct rewrite type", buf, 0xCu);
              }

              v26 = 0;
              goto LABEL_15;
            }

            rewriteType = 0;
          }

          [v17 setRewriteType:rewriteType];
        }

        v23 = objc_alloc_init(MEMORY[0x1E69D1360]);
        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];
        [v23 setRewriteHypotheses:v24];

        v25 = [[CDMQRResponseCommand alloc] initWithResponse:v23];
        v12 = v25;
      }
    }

    v12 = v12;
    v26 = v12;
LABEL_15:

    goto LABEL_19;
  }

LABEL_18:
  v26 = 0;
LABEL_19:

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)setup:(id)setup
{
  v67 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v62 = "[CDMCcqrAerCbRService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up CCQR (AER & CbR) service", buf, 0xCu);
  }

  +[CDMCcqrAerCbRService CcqrAerCbRServiceLogInitIfNeeded];
  dynamicConfig = [setupCopy dynamicConfig];
  languageCode = [dynamicConfig languageCode];

  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v62 = "[CDMCcqrAerCbRService setup:]";
    v63 = 2112;
    v64 = languageCode;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Checking CDMCcqrAerCbRService assets for locale: %@", buf, 0x16u);
  }

  if (![(CDMCcqrAerCbRService *)self skipServiceSetup:languageCode])
  {
    dynamicConfig2 = [setupCopy dynamicConfig];
    v13 = [dynamicConfig2 getAssetForFactorName:@"com.apple.siri.nl.marrs.ccqr"];
    nlAsset = self->_nlAsset;
    self->_nlAsset = v13;

    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v48 = self->_nlAsset;
      *buf = 136315650;
      v62 = "[CDMCcqrAerCbRService setup:]";
      v63 = 2112;
      v64 = v48;
      v65 = 2112;
      v66 = @"com.apple.siri.nl.marrs.ccqr";
      _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Asset is: [%@] for factor: %@.", buf, 0x20u);
    }

    getAssetMetadata = [(NLAsset *)self->_nlAsset getAssetMetadata];
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v49 = [getAssetMetadata description];
      *buf = 136315394;
      v62 = "[CDMCcqrAerCbRService setup:]";
      v63 = 2112;
      v64 = v49;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s CCQRAerCbR Asset Metadata: %@", buf, 0x16u);
    }

    dynamicConfig3 = [setupCopy dynamicConfig];
    v59 = [dynamicConfig3 getAssetBundlePathForFactorName:@"com.apple.siri.nl.marrs.ccqr"];

    if (v59)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      dynamicConfig4 = [setupCopy dynamicConfig];
      languageCode2 = [dynamicConfig4 languageCode];
      resourcePath = [v59 resourcePath];
      v22 = [getAssetMetadata objectForKey:@"modelType"];
      v60 = 0;
      v23 = [(CDMCcqrAerCbRService *)selfCopy getPredictor:languageCode2 FilesPath:resourcePath modelType:v22 status:&v60];
      v24 = v60;
      ccqrPredictor = selfCopy->_ccqrPredictor;
      selfCopy->_ccqrPredictor = v23;

      if (v24)
      {
        localizedDescription = [v24 localizedDescription];
        v10 = [(CDMBaseService *)selfCopy createErrorWithCode:1 description:localizedDescription];

        selfCopy->super.super._serviceState = 4;
        v27 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v62 = "[CDMCcqrAerCbRService setup:]";
          _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, "%s CCQR (AER & CbR) model Disabled", buf, 0xCu);
        }
      }

      else
      {
        selfCopy->super.super._serviceState = 2;
        v27 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v62 = "[CDMCcqrAerCbRService setup:]";
          _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, "%s CCQR (AER & CbR) model loaded", buf, 0xCu);
        }

        v10 = 0;
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      v10 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find Siri CCQR (AER & CbR) model bundle directory"]);
      self->super.super._serviceState = 4;
    }

    if (!+[CDMFeatureFlags isTrieOverridesEnabled])
    {
      goto LABEL_50;
    }

    v28 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v62 = "[CDMCcqrAerCbRService setup:]";
      _os_log_debug_impl(&dword_1DC287000, v28, OS_LOG_TYPE_DEBUG, "%s Trie Overrides FF Enabled, CCQR loading override trie bundle", buf, 0xCu);
    }

    dynamicConfig5 = [setupCopy dynamicConfig];
    v30 = [dynamicConfig5 getAssetBundlePathForFactorName:@"com.apple.siri.nl.overrides"];

    if (!v30)
    {
      v47 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Unable to find CCQR Trie Overrides assets from overrides namespace"];

      self->super.super._serviceState = 4;
      v10 = v47;
      goto LABEL_50;
    }

    resourcePath2 = [v30 resourcePath];
    v56 = [resourcePath2 stringByAppendingPathComponent:@"trie_bundle"];

    resourcePath3 = [v59 resourcePath];
    v57 = [resourcePath3 stringByAppendingPathComponent:@"trie_bundle"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    LODWORD(resourcePath3) = [defaultManager fileExistsAtPath:v56];
    v34 = [defaultManager fileExistsAtPath:v57];
    if (!resourcePath3)
    {
      v11 = [(CDMCcqrAerCbRService *)self createSetupResponseWithError:v10];
      v46 = 0;
      goto LABEL_49;
    }

    v11 = v34;
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v36 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v62 = "[CDMCcqrAerCbRService setup:]";
      _os_log_impl(&dword_1DC287000, v36, OS_LOG_TYPE_INFO, "%s Trie overrides: CCQR service detects global overrides assets factor has trie bundle, getting the shared trie overrides store", buf, 0xCu);
    }

    v37 = [[_TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy alloc] initWithUseTrie:1 useMemory:selfCopy2->_useMemoryForOverrideStore templatePattern:0];
    overrideProxy = selfCopy2->_overrideProxy;
    selfCopy2->_overrideProxy = v37;

    if (v11)
    {
      v39 = os_signpost_id_generate(CDMLogContext);
      v40 = CDMCcqrAerCbRServiceLogContext;
      v41 = v40;
      v55 = v39 - 1;
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "Load Trie Overrides", "", buf, 2u);
      }

      spid = v39;

      v42 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v62 = "[CDMCcqrAerCbRService setup:]";
        _os_log_impl(&dword_1DC287000, v42, OS_LOG_TYPE_INFO, "%s Trie overrides initializing CCQR component overrides from ccqr bundle", buf, 0xCu);
      }

      v11 = [(SiriNLUOverrideProxy *)selfCopy2->_overrideProxy loadComponentOverrideTrieStoreWithTrieFilePath:v57];
      v43 = CDMCcqrAerCbRServiceLogContext;
      v44 = v43;
      if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v44, OS_SIGNPOST_INTERVAL_END, spid, "Load Trie Overrides", "", buf, 2u);
      }

      if (!v11)
      {
        v50 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v62 = "[CDMCcqrAerCbRService setup:]";
          _os_log_impl(&dword_1DC287000, v50, OS_LOG_TYPE_INFO, "%s Trie Overrides: Fail to load CCQR Trie overrides bundle", buf, 0xCu);
        }

        v51 = [(CDMBaseService *)selfCopy2 createErrorWithCode:1 description:@"Unable to initialize CCQR component override from trie assets"];

        selfCopy2->super.super._serviceState = 4;
        v11 = [(CDMCcqrAerCbRService *)selfCopy2 createSetupResponseWithError:v51];
        v46 = 0;
        v10 = v51;
        goto LABEL_48;
      }

      v45 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v62 = "[CDMCcqrAerCbRService setup:]";
        _os_log_impl(&dword_1DC287000, v45, OS_LOG_TYPE_INFO, "%s Trie Overrides: Successfully initialized CCQR Trie component overrides and re-used shared trie overrides store", buf, 0xCu);
      }
    }

    v46 = 1;
LABEL_48:
    objc_sync_exit(selfCopy2);

LABEL_49:
    if (!v46)
    {
LABEL_51:

      goto LABEL_52;
    }

LABEL_50:
    v11 = [(CDMCcqrAerCbRService *)self createSetupResponseWithError:v10];
    goto LABEL_51;
  }

  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v62 = "[CDMCcqrAerCbRService setup:]";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Skip CDMCcqrAerCbRService setup as NLRouter service requirements met", buf, 0xCu);
  }

  self->super.super._serviceState = 4;
  v10 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Skip CCQR service setup as NLRouter service requirements met."];
  v11 = [(CDMCcqrAerCbRService *)self createSetupResponseWithError:v10];
LABEL_52:

  v52 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)warmup:(id)warmup
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[CDMCcqrAerCbRService warmup:]";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Warming Up CDMCcqrAerCbRService", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    v5 = +[CDMCcqrServiceUtils buildQueryRewriteRequest];
    v13 = 0;
    v6 = [(CDMCcqrAerCbRService *)self doInference:v5 status:&v13];
  }

  v7 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v10 = [(CDMWarmupResponseCommand *)v7 initWithServiceState:serviceState serviceName:serviceName];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)createSetupResponseWithError:(id)error
{
  errorCopy = error;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  [createSetupResponseCommand setCmdError:errorCopy];

  return createSetupResponseCommand;
}

+ (BOOL)suppressCcqrUsingCurContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  nlContext = [contextCopy nlContext];
  systemDialogActs = [nlContext systemDialogActs];

  v6 = [systemDialogActs countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(systemDialogActs);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([v10 hasOffered] & 1) != 0 || (objc_msgSend(v10, "hasPrompted") & 1) != 0 || objc_msgSend(v10, "hasGaveOptions"))
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v23 = "+[CDMCcqrAerCbRService suppressCcqrUsingCurContext:]";
            _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Skipping ccqr to reason #1: Previous turn result in a active task, such that SDA is non-empty", buf, 0xCu);
          }

          goto LABEL_17;
        }
      }

      v7 = [systemDialogActs countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  legacyNlContext = [contextCopy legacyNlContext];
  previousDomainName = [legacyNlContext previousDomainName];
  v13 = [previousDomainName isEqualToString:@"arithmetic"];

  if (v13)
  {
    systemDialogActs = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(systemDialogActs, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v23 = "+[CDMCcqrAerCbRService suppressCcqrUsingCurContext:]";
      v24 = 2112;
      v25 = @"arithmetic";
      _os_log_debug_impl(&dword_1DC287000, systemDialogActs, OS_LOG_TYPE_DEBUG, "%s Skipping ccqr to reason #3: Disable certain domain(s): %@", buf, 0x16u);
    }

LABEL_17:

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __56__CDMCcqrAerCbRService_CcqrAerCbRServiceLogInitIfNeeded__block_invoke()
{
  CDMCcqrAerCbRServiceLogContext = os_log_create(CDMLoggingSubsystem, "CCQR");

  return MEMORY[0x1EEE66BB8]();
}

@end