@interface CDMSNLCProtoService
+ (id)_stockServerResponse;
+ (id)getCDMServiceAssetConfig;
+ (id)getParserEnum;
- (id)assetsPathURLForModelBundle:(id)bundle;
- (id)doInference:(id)inference error:(id *)error;
- (id)getSNLPServerNLClassifierPath:(id)path error:(id *)error;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
@end

@implementation CDMSNLCProtoService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMSNLCProtoRequestCommand];
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
  v7 = @"model_bundle_snlc";
  v8 = @"com.apple.siri.nl.snlc";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)getSNLPServerNLClassifierPath:(id)path error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[CDMSNLCProtoService getSNLPServerNLClassifierPath:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s creating _snlcInferenceOrchestrator", &v14, 0xCu);
  }

  v8 = [MEMORY[0x1E69D14A0] classifierWithPathURL:pathCopy error:error];
  snlcOrchestrator = self->_snlcOrchestrator;
  self->_snlcOrchestrator = v8;

  v10 = self->_snlcOrchestrator;
  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)assetsPathURLForModelBundle:(id)bundle
{
  v16 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  resourcePath = [bundleCopy resourcePath];
  v11 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:resourcePath isDirectory:&v11];

  if (v6 && (v11 & 1) != 0)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:resourcePath isDirectory:1];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[CDMSNLCProtoService assetsPathURLForModelBundle:]";
      v14 = 2112;
      v15 = resourcePath;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: SNLC assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)doInference:(id)inference error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  inferenceCopy = inference;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[CDMSNLCProtoService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start SNLC", &v12, 0xCu);
  }

  v8 = [(SNLPServerNLClassifier *)self->_snlcOrchestrator responseForRequest:inferenceCopy error:error];
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[CDMSNLCProtoService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s SNLC finished", &v12, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)warmup:(id)warmup
{
  v28 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDMSNLCProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm SNLC model", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    dynamicConfig = [warmupCopy dynamicConfig];
    embeddingConfigs = [dynamicConfig embeddingConfigs];

    v8 = [embeddingConfigs getEmbeddingConfigForFactor:@"com.apple.siri.nl.snlc"];
    embeddingModelDimension = [v8 embeddingModelDimension];
    v10 = [CDMNLServiceUtils buildSetupSNLCProtoRequest:embeddingModelDimension];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23 = 0;
    v12 = [(CDMSNLCProtoService *)selfCopy doInference:v10 error:&v23];
    v13 = v23;
    if (!v12)
    {
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v13 localizedDescription];
        *buf = 136315394;
        v25 = "[CDMSNLCProtoService warmup:]";
        v26 = 2112;
        v27 = localizedDescription;
        v22 = localizedDescription;
        _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: SNLC inference failed with error: %@", buf, 0x16u);
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    embeddingConfigs = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(embeddingConfigs, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = "[CDMSNLCProtoService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, embeddingConfigs, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. SNLC will not prewarm.", buf, 0xCu);
    }
  }

  v15 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v18 = [(CDMWarmupResponseCommand *)v15 initWithServiceState:serviceState serviceName:serviceName];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)setup:(id)setup
{
  v29 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDMSNLCProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s SNLC model setup", buf, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  v7 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.snlc"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v10 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.snlc"];

  if (v10)
  {
    v11 = [(CDMSNLCProtoService *)self assetsPathURLForModelBundle:v10];
    if (v11)
    {
      createSetupResponseCommand = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(createSetupResponseCommand, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v26 = "[CDMSNLCProtoService setup:]";
        v27 = 2112;
        v28 = v11;
        _os_log_debug_impl(&dword_1DC287000, createSetupResponseCommand, OS_LOG_TYPE_DEBUG, "%s SNLC proto service passing assets path to SNLPServerNLClassifier: %@", buf, 0x16u);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v24 = 0;
      v14 = [(CDMSNLCProtoService *)selfCopy getSNLPServerNLClassifierPath:v11 error:&v24];
      v15 = v24;

      if (!v14)
      {
        v16 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v15 localizedDescription];
          *buf = 136315394;
          v26 = "[CDMSNLCProtoService setup:]";
          v27 = 2112;
          v28 = localizedDescription;
          _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to create SNLC Orchestrator: %@", buf, 0x16u);
        }

        selfCopy->super.super._serviceState = 3;
        createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
        [createSetupResponseCommand setCmdError:v15];
      }

      objc_sync_exit(selfCopy);
      if (v14)
      {
        v17 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v26 = "[CDMSNLCProtoService setup:]";
          _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s SNLC model loaded", buf, 0xCu);
        }

        selfCopy->super.super._serviceState = 2;
        createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
      }
    }

    else
    {
      self->super.super._serviceState = 3;
      createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not look up SNLC assets path"];
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "[CDMSNLCProtoService setup:]";
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
      }

      v20 = [(CDMBaseService *)self createErrorWithCode:1 description:v18];
      [createSetupResponseCommand setCmdError:v20];

      v11 = 0;
    }
  }

  else
  {
    self->super.super._serviceState = 3;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    v11 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find/load SNLC model bundle directory"];
    [createSetupResponseCommand setCmdError:v11];
  }

  v21 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)handle:(id)handle
{
  v65 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v59 = "[CDMSNLCProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Running SNLC inference...", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_snlcOrchestrator)
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v59 = "[CDMSNLCProtoService handle:]";
        _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: _snlcOrchestrator not initialized", buf, 0xCu);
      }
    }

    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      parserRequest = [handleCopy parserRequest];
      tokenisedUtterance = [parserRequest tokenisedUtterance];
      originalUtterance = [tokenisedUtterance originalUtterance];
      v12 = originalUtterance;
      uTF8String = [originalUtterance UTF8String];
      *buf = 136315394;
      v59 = "[CDMSNLCProtoService handle:]";
      v60 = 2080;
      v61 = uTF8String;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s SNLC Request for utterance: %s", buf, 0x16u);
    }

    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v59 = "[CDMSNLCProtoService handle:]";
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Handling SNLC Request", buf, 0xCu);
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      parserRequest2 = [handleCopy parserRequest];
      v57 = 0;
      v16 = [CDMNluLogUtil writeSNLCRequestToDisk:parserRequest2 error:&v57];
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    parserRequest3 = [handleCopy parserRequest];
    tokenisedUtterance2 = [parserRequest3 tokenisedUtterance];
    tokenChain = [tokenisedUtterance2 tokenChain];
    tokens = [tokenChain tokens];

    v21 = [tokens countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v21)
    {
      v22 = *v54;
LABEL_16:
      v23 = 0;
      while (1)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(tokens);
        }

        if (([*(*(&v53 + 1) + 8 * v23) isWhitespace] & 1) == 0)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [tokens countByEnumeratingWithState:&v53 objects:v64 count:16];
          if (v21)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v29 = selfCopy;
      objc_sync_enter(v29);
      parserRequest4 = [handleCopy parserRequest];
      v52 = 0;
      [(CDMSNLCProtoService *)v29 doInference:parserRequest4 error:&v52];
      v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v31 = v52;

      objc_sync_exit(v29);
      if (v28 == 0.0)
      {
        goto LABEL_31;
      }

      hypotheses = [*&v28 hypotheses];
      v33 = [hypotheses objectAtIndexedSubscript:0];
      [v33 probability];
      v35 = v34;
      hypotheses2 = [*&v28 hypotheses];
      v37 = [hypotheses2 objectAtIndexedSubscript:1];
      [v37 probability];
      if (v35 > v38)
      {
        hypotheses3 = [*&v28 hypotheses];
        [hypotheses3 objectAtIndexedSubscript:0];
      }

      else
      {
        hypotheses3 = [*&v28 hypotheses];
        [hypotheses3 objectAtIndexedSubscript:1];
      }
      v41 = ;

      v42 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        label = [v41 label];
        [v41 probability];
        v50 = "Device";
        if (!label)
        {
          v50 = "Server";
        }

        *buf = 136315650;
        v59 = "[CDMSNLCProtoService handle:]";
        v60 = 2080;
        v61 = v50;
        v62 = 2048;
        v63 = v49;
        _os_log_debug_impl(&dword_1DC287000, v42, OS_LOG_TYPE_DEBUG, "%s SNLC delegated this request to %s with probability %f", buf, 0x20u);
      }
    }

    else
    {
LABEL_22:

      v24 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v59 = "[CDMSNLCProtoService handle:]";
        _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s No non whitespace tokens found. Skipping call to SNLC model inference.", buf, 0xCu);
      }

LABEL_31:
      v40 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v59 = "[CDMSNLCProtoService handle:]";
        _os_log_impl(&dword_1DC287000, v40, OS_LOG_TYPE_INFO, "%s Given that SNLC model call has been incomplete, returning the default SERVER response.", buf, 0xCu);
      }

      [objc_opt_class() _stockServerResponse];
      v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    }

    v43 = +[CDMSNLCProtoService getParserEnum];
    v27 = [CDMNLServiceUtils buildSNLCProtoResponse:*&v28 snlcRequest:handleCopy parserToSet:v43];

    v44 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v59 = "[CDMSNLCProtoService handle:]";
      v60 = 2112;
      v61 = @"snlc";
      v62 = 2112;
      v63 = v28;
      _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nSNLCParserResponse: %@", buf, 0x20u);
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      v51 = 0;
      v45 = [CDMNluLogUtil writeSNLCResponseToDisk:*&v28 error:&v51];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v25 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      serviceState = self->super.super._serviceState;
      *buf = 136315394;
      v59 = "[CDMSNLCProtoService handle:]";
      v60 = 2048;
      v61 = serviceState;
      _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v27 = objc_alloc_init(CDMSNLCProtoResponseCommand);
    [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [(CDMBaseCommand *)v27 setCmdError:*&v28];
  }

  v46 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)getParserEnum
{
  v2 = objc_alloc_init(MEMORY[0x1E69D11A8]);
  [v2 setAlgorithm:2];
  [v2 setParserId:2];

  return v2;
}

+ (id)_stockServerResponse
{
  v2 = objc_alloc_init(MEMORY[0x1E69D12D8]);
  v3 = objc_alloc_init(MEMORY[0x1E69D12C8]);
  LODWORD(v4) = 1.0;
  [v3 setProbability:v4];
  [v3 setLabel:0];
  v5 = objc_alloc_init(MEMORY[0x1E69D12C8]);
  [v5 setProbability:0.0];
  [v5 setLabel:1];
  v6 = [MEMORY[0x1E695DF70] arrayWithObjects:{v3, v5, 0}];
  [v2 setHypotheses:v6];

  return v2;
}

@end