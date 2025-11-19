@interface CDMCcqrAerCbRService
+ (BOOL)suppressCcqrUsingCurContext:(id)a3;
+ (id)getCDMServiceAssetConfig;
+ (void)CcqrAerCbRServiceLogInitIfNeeded;
- (BOOL)skipServiceSetup:(id)a3;
- (id)createSetupResponseWithError:(id)a3;
- (id)doInference:(id)a3 status:(id *)a4;
- (id)getPredictor:(id)a3 FilesPath:(id)a4 modelType:(id)a5 status:(id *)a6;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)match:(id)a3;
- (id)setup:(id)a3;
- (id)warmup:(id)a3;
- (void)debugCcqrResponse:(id)a3;
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

- (BOOL)skipServiceSetup:(id)a3
{
  v3 = a3;
  if (AFDeviceSupportsSAE() && [CDMCcqrServiceUtils isNLRouterAssetAvailable:v3])
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

- (id)doInference:(id)a3 status:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(QueryRewriter *)v7->_ccqrPredictor predictWithInput:v6 status:a4];
  objc_sync_exit(v7);

  return v8;
}

- (id)getPredictor:(id)a3 FilesPath:(id)a4 modelType:(id)a5 status:(id *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  self->_modelType = 1;
  v10 = a4;
  v11 = a3;
  if ([a5 isEqualToString:@"JointCCQR"])
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

  v13 = [objc_alloc(MEMORY[0x1E69AE150]) initWithLocale:v11 filesPath:v10 predictorType:self->_modelType status:a6];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)debugCcqrResponse:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 rewriteHypothesesCount];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "[CDMCcqrAerCbRService debugCcqrResponse:]";
    v17 = 2048;
    v18 = v4;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s CcqrAerCbR: Generated %lu rewrite hypotheses.", &v15, 0x16u);
  }

  if (v4)
  {
    v6 = [v3 rewriteHypothesesAtIndex:0];
    v7 = [v6 rewriteType];

    v8 = CDMOSLoggerForCategory(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7)
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
      v13 = [v3 rewriteHypothesesAtIndex:0];
      v14 = [v13 utterance];
      v15 = 136315394;
      v16 = "[CDMCcqrAerCbRService debugCcqrResponse:]";
      v17 = 2112;
      v18 = v14;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Rewritten Utterance: %@", &v15, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)handle:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    v17 = v5;
    v18 = [v4 qrRequest];
    *buf = 136315650;
    v21 = "[CDMCcqrAerCbRService handle:]";
    v22 = 2112;
    v23 = @"queryrewrite";
    v24 = 2112;
    v25 = v18;
    _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nQUERYREWRITEQRRequest: %@", buf, 0x20u);
  }

  v6 = self;
  objc_sync_enter(v6);
  if (v6->_ccqrPredictor)
  {
    objc_sync_exit(v6);

    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[CDMCcqrAerCbRService handle:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Calling CCQR (AER & CbR)", buf, 0xCu);
    }

    v8 = [v4 qrRequest];
    v9 = [CDMCcqrServiceUtils leftShiftSiriResponse:v8];

    v19 = 0;
    v10 = [(CDMCcqrAerCbRService *)v6 doInference:v9 status:&v19];
    v11 = v19;
    [(CDMCcqrAerCbRService *)v6 debugCcqrResponse:v10];
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

    v6 = v9;
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

    objc_sync_exit(v6);
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)match:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [(SiriNLUOverrideProxy *)self->_overrideProxy matchWithInputs:a3 overrideNamespace:2];
  v5 = v4;
  if (!v4 || ![v4 hasCcqrOverrideTemplate])
  {
    goto LABEL_18;
  }

  v6 = [v5 ccqrOverrideTemplate];
  if (([v6 hasRewriteMessage] & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = [v5 ccqrOverrideTemplate];
  v8 = [v7 rewriteMessage];
  if (([v8 hasRewriteType] & 1) == 0)
  {

LABEL_17:
    goto LABEL_18;
  }

  v9 = [v5 ccqrOverrideTemplate];
  v10 = [v9 rewriteMessage];
  v11 = [v10 hasRewrittenUtterance];

  if (v11)
  {
    v12 = [[CDMQRResponseCommand alloc] initWithResponse:0];
    v13 = [v5 ccqrOverrideTemplate];
    v14 = [v13 rewriteMessage];
    v15 = [v14 rewrittenUtterance];

    v16 = [(CDMCcqrAerCbROverridesProxy *)self->_overrideProxy getRewriteHypothesisWithOverrideUtterance:v15];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 utterance];
      v19 = [v18 isEqualToString:&stru_1F5800F50];

      if ((v19 & 1) == 0)
      {
        v20 = [v5 ccqrOverrideTemplate];
        v21 = [v20 rewriteMessage];
        v22 = [v21 rewriteType];

        if (v22)
        {
          if (v22 != 1)
          {
            if (v22 != 2)
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

            v22 = 0;
          }

          [v17 setRewriteType:v22];
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

- (id)setup:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v62 = "[CDMCcqrAerCbRService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up CCQR (AER & CbR) service", buf, 0xCu);
  }

  +[CDMCcqrAerCbRService CcqrAerCbRServiceLogInitIfNeeded];
  v6 = [v4 dynamicConfig];
  v7 = [v6 languageCode];

  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v62 = "[CDMCcqrAerCbRService setup:]";
    v63 = 2112;
    v64 = v7;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Checking CDMCcqrAerCbRService assets for locale: %@", buf, 0x16u);
  }

  if (![(CDMCcqrAerCbRService *)self skipServiceSetup:v7])
  {
    v12 = [v4 dynamicConfig];
    v13 = [v12 getAssetForFactorName:@"com.apple.siri.nl.marrs.ccqr"];
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

    v58 = [(NLAsset *)self->_nlAsset getAssetMetadata];
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v49 = [v58 description];
      *buf = 136315394;
      v62 = "[CDMCcqrAerCbRService setup:]";
      v63 = 2112;
      v64 = v49;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s CCQRAerCbR Asset Metadata: %@", buf, 0x16u);
    }

    v17 = [v4 dynamicConfig];
    v59 = [v17 getAssetBundlePathForFactorName:@"com.apple.siri.nl.marrs.ccqr"];

    if (v59)
    {
      v18 = self;
      objc_sync_enter(v18);
      v19 = [v4 dynamicConfig];
      v20 = [v19 languageCode];
      v21 = [v59 resourcePath];
      v22 = [v58 objectForKey:@"modelType"];
      v60 = 0;
      v23 = [(CDMCcqrAerCbRService *)v18 getPredictor:v20 FilesPath:v21 modelType:v22 status:&v60];
      v24 = v60;
      ccqrPredictor = v18->_ccqrPredictor;
      v18->_ccqrPredictor = v23;

      if (v24)
      {
        v26 = [v24 localizedDescription];
        v10 = [(CDMBaseService *)v18 createErrorWithCode:1 description:v26];

        v18->super.super._serviceState = 4;
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
        v18->super.super._serviceState = 2;
        v27 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v62 = "[CDMCcqrAerCbRService setup:]";
          _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, "%s CCQR (AER & CbR) model loaded", buf, 0xCu);
        }

        v10 = 0;
      }

      objc_sync_exit(v18);
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

    v29 = [v4 dynamicConfig];
    v30 = [v29 getAssetBundlePathForFactorName:@"com.apple.siri.nl.overrides"];

    if (!v30)
    {
      v47 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Unable to find CCQR Trie Overrides assets from overrides namespace"];

      self->super.super._serviceState = 4;
      v10 = v47;
      goto LABEL_50;
    }

    v31 = [v30 resourcePath];
    v56 = [v31 stringByAppendingPathComponent:@"trie_bundle"];

    v32 = [v59 resourcePath];
    v57 = [v32 stringByAppendingPathComponent:@"trie_bundle"];

    v33 = [MEMORY[0x1E696AC08] defaultManager];
    LODWORD(v32) = [v33 fileExistsAtPath:v56];
    v34 = [v33 fileExistsAtPath:v57];
    if (!v32)
    {
      v11 = [(CDMCcqrAerCbRService *)self createSetupResponseWithError:v10];
      v46 = 0;
      goto LABEL_49;
    }

    v11 = v34;
    v35 = self;
    objc_sync_enter(v35);
    v36 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v62 = "[CDMCcqrAerCbRService setup:]";
      _os_log_impl(&dword_1DC287000, v36, OS_LOG_TYPE_INFO, "%s Trie overrides: CCQR service detects global overrides assets factor has trie bundle, getting the shared trie overrides store", buf, 0xCu);
    }

    v37 = [[_TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy alloc] initWithUseTrie:1 useMemory:v35->_useMemoryForOverrideStore templatePattern:0];
    overrideProxy = v35->_overrideProxy;
    v35->_overrideProxy = v37;

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

      v11 = [(SiriNLUOverrideProxy *)v35->_overrideProxy loadComponentOverrideTrieStoreWithTrieFilePath:v57];
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

        v51 = [(CDMBaseService *)v35 createErrorWithCode:1 description:@"Unable to initialize CCQR component override from trie assets"];

        v35->super.super._serviceState = 4;
        v11 = [(CDMCcqrAerCbRService *)v35 createSetupResponseWithError:v51];
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
    objc_sync_exit(v35);

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

- (id)warmup:(id)a3
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
  v8 = [(CDMBaseService *)self serviceState];
  v9 = [(CDMBaseService *)self serviceName];
  v10 = [(CDMWarmupResponseCommand *)v7 initWithServiceState:v8 serviceName:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)createSetupResponseWithError:(id)a3
{
  v4 = a3;
  v5 = [(CDMBaseService *)self createSetupResponseCommand];
  [v5 setCmdError:v4];

  return v5;
}

+ (BOOL)suppressCcqrUsingCurContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 nlContext];
  v5 = [v4 systemDialogActs];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [v3 legacyNlContext];
  v12 = [v11 previousDomainName];
  v13 = [v12 isEqualToString:@"arithmetic"];

  if (v13)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v23 = "+[CDMCcqrAerCbRService suppressCcqrUsingCurContext:]";
      v24 = 2112;
      v25 = @"arithmetic";
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Skipping ccqr to reason #3: Disable certain domain(s): %@", buf, 0x16u);
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