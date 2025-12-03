@interface CDMPSCService
+ (id)_emptyResponse;
+ (id)getCDMServiceAssetConfig;
- (id)assetsPathURLForModelBundle:(id)bundle;
- (id)doInference:(id)inference error:(id *)error;
- (id)getSNLPPommesServerClassifierPath:(id)path error:(id *)error;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
@end

@implementation CDMPSCService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMPSCRequestCommand];
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
  v7 = @"model_bundle_psc";
  v8 = @"com.apple.siri.nl.psc";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];
  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)_emptyResponse
{
  v2 = objc_alloc_init(MEMORY[0x1E69D12D8]);

  return v2;
}

- (id)getSNLPPommesServerClassifierPath:(id)path error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[CDMPSCService getSNLPPommesServerClassifierPath:error:]";
    v16 = 2112;
    v17 = pathCopy;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s creating SNLPPommesServerClassifier: %@", &v14, 0x16u);
  }

  v8 = [MEMORY[0x1E69D1478] classifierWithPathURL:pathCopy error:error];
  pscOrchestrator = self->_pscOrchestrator;
  self->_pscOrchestrator = v8;

  v10 = self->_pscOrchestrator;
  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)doInference:(id)inference error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  inferenceCopy = inference;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[CDMPSCService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start PSC", &v12, 0xCu);
  }

  v8 = [(SNLPPommesServerClassifier *)self->_pscOrchestrator responseForRequest:inferenceCopy error:error];
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[CDMPSCService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s PSC finished", &v12, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
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
      v13 = "[CDMPSCService assetsPathURLForModelBundle:]";
      v14 = 2112;
      v15 = resourcePath;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: PSC assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)warmup:(id)warmup
{
  v29 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDMPSCService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm PSC model", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    dynamicConfig = [warmupCopy dynamicConfig];
    embeddingConfigs = [dynamicConfig embeddingConfigs];

    v8 = [embeddingConfigs getEmbeddingConfigForFactor:@"com.apple.siri.nl.psc"];
    embeddingModelDimension = [v8 embeddingModelDimension];
    v10 = [CDMNLServiceUtils buildSetupITFMRequest:embeddingModelDimension];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    pscOrchestrator = selfCopy->_pscOrchestrator;
    v24 = 0;
    v13 = [(SNLPPommesServerClassifier *)pscOrchestrator responseForRequest:v10 error:&v24];
    v14 = v24;
    if (!v13)
    {
      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v14 localizedDescription];
        *buf = 136315394;
        v26 = "[CDMPSCService warmup:]";
        v27 = 2112;
        v28 = localizedDescription;
        v23 = localizedDescription;
        _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to run warm-up inference call: %@", buf, 0x16u);
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
      v26 = "[CDMPSCService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, embeddingConfigs, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. PSC will not prewarm.", buf, 0xCu);
    }
  }

  v16 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v19 = [(CDMWarmupResponseCommand *)v16 initWithServiceState:serviceState serviceName:serviceName];

  v20 = *MEMORY[0x1E69E9840];

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
    v26 = "[CDMPSCService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s PSC model setup", buf, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  v7 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.psc"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v10 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.psc"];

  if (v10)
  {
    v11 = [(CDMPSCService *)self assetsPathURLForModelBundle:v10];
    if (v11)
    {
      createSetupResponseCommand = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(createSetupResponseCommand, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v26 = "[CDMPSCService setup:]";
        v27 = 2112;
        v28 = v11;
        _os_log_debug_impl(&dword_1DC287000, createSetupResponseCommand, OS_LOG_TYPE_DEBUG, "%s PSC proto service passing assets path to SNLPPommesServerClassifier: %@", buf, 0x16u);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v24 = 0;
      v14 = [(CDMPSCService *)selfCopy getSNLPPommesServerClassifierPath:v11 error:&v24];
      v15 = v24;

      if (!v14)
      {
        v16 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v15 localizedDescription];
          *buf = 136315394;
          v26 = "[CDMPSCService setup:]";
          v27 = 2112;
          v28 = localizedDescription;
          _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to create PSC Orchestrator: %@", buf, 0x16u);
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
          v26 = "[CDMPSCService setup:]";
          _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s PSC model loaded", buf, 0xCu);
        }

        selfCopy->super.super._serviceState = 2;
        createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
      }
    }

    else
    {
      self->super.super._serviceState = 4;
      createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not look up PSC assets path"];
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "[CDMPSCService setup:]";
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
    self->super.super._serviceState = 4;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    v11 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find/load PSC model bundle directory"];
    [createSetupResponseCommand setCmdError:v11];
  }

  v21 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)handle:(id)handle
{
  v53 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v47 = "[CDMPSCService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Running PSC inference...", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_pscOrchestrator)
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v47 = "[CDMPSCService handle:]";
        _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: _pscOrchestrator not initialized", buf, 0xCu);
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
      v47 = "[CDMPSCService handle:]";
      v48 = 2080;
      v49 = uTF8String;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s PSC Request for utterance: %s", buf, 0x16u);
    }

    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[CDMPSCService handle:]";
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Handling PSC Request", buf, 0xCu);
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      parserRequest2 = [handleCopy parserRequest];
      v45 = 0;
      v16 = [CDMNluLogUtil writePSCRequestToDisk:parserRequest2 error:&v45];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    parserRequest3 = [handleCopy parserRequest];
    tokenisedUtterance2 = [parserRequest3 tokenisedUtterance];
    tokenChain = [tokenisedUtterance2 tokenChain];
    tokens = [tokenChain tokens];

    v21 = [tokens countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v21)
    {
      v22 = *v42;
LABEL_16:
      v23 = 0;
      while (1)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(tokens);
        }

        if (([*(*(&v41 + 1) + 8 * v23) isWhitespace] & 1) == 0)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [tokens countByEnumeratingWithState:&v41 objects:v52 count:16];
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
      v40 = 0;
      _emptyResponse = [(CDMPSCService *)v29 doInference:parserRequest4 error:&v40];
      v31 = v40;

      if (_emptyResponse)
      {
        v32 = CDMLogContext;
        if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v47 = "[CDMPSCService handle:]";
          v48 = 2112;
          v49 = @"psc";
          v50 = 2112;
          v51 = _emptyResponse;
          _os_log_debug_impl(&dword_1DC287000, v32, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nPSC Response: %@", buf, 0x20u);
        }
      }

      else
      {
        v33 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v31 localizedDescription];
          *buf = 136315394;
          v47 = "[CDMPSCService handle:]";
          v48 = 2112;
          v49 = localizedDescription;
          _os_log_error_impl(&dword_1DC287000, v33, OS_LOG_TYPE_ERROR, "%s [ERR]: PSC inference failed with error: %@", buf, 0x16u);
        }
      }

      objc_sync_exit(v29);
      if (_emptyResponse)
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_22:

      v24 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v47 = "[CDMPSCService handle:]";
        _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s No non whitespace tokens found. Skipping call to PSC model inference.", buf, 0xCu);
      }
    }

    v34 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[CDMPSCService handle:]";
      _os_log_impl(&dword_1DC287000, v34, OS_LOG_TYPE_INFO, "%s Given that PSC model call has been incomplete, returning an empty response.", buf, 0xCu);
    }

    _emptyResponse = [objc_opt_class() _emptyResponse];
LABEL_38:
    v27 = [CDMNLServiceUtils buildPSCResponse:_emptyResponse pscRequest:handleCopy];
    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      v39 = 0;
      v35 = [CDMNluLogUtil writePSCResponseToDisk:_emptyResponse error:&v39];
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
      v47 = "[CDMPSCService handle:]";
      v48 = 2048;
      v49 = serviceState;
      _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v27 = objc_alloc_init(CDMPSCResponseCommand);
    _emptyResponse = [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    [(CDMBaseCommand *)v27 setCmdError:_emptyResponse];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v27;
}

@end