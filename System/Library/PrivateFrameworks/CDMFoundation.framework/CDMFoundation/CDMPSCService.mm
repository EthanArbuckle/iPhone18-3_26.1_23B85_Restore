@interface CDMPSCService
+ (id)_emptyResponse;
+ (id)getCDMServiceAssetConfig;
- (id)assetsPathURLForModelBundle:(id)a3;
- (id)doInference:(id)a3 error:(id *)a4;
- (id)getSNLPPommesServerClassifierPath:(id)a3 error:(id *)a4;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
- (id)warmup:(id)a3;
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

- (id)getSNLPPommesServerClassifierPath:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[CDMPSCService getSNLPPommesServerClassifierPath:error:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s creating SNLPPommesServerClassifier: %@", &v14, 0x16u);
  }

  v8 = [MEMORY[0x1E69D1478] classifierWithPathURL:v6 error:a4];
  pscOrchestrator = self->_pscOrchestrator;
  self->_pscOrchestrator = v8;

  v10 = self->_pscOrchestrator;
  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)doInference:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[CDMPSCService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start PSC", &v12, 0xCu);
  }

  v8 = [(SNLPPommesServerClassifier *)self->_pscOrchestrator responseForRequest:v6 error:a4];
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

- (id)assetsPathURLForModelBundle:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 resourcePath];
  v11 = 0;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v11];

  if (v6 && (v11 & 1) != 0)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:1];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[CDMPSCService assetsPathURLForModelBundle:]";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: PSC assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)warmup:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDMPSCService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm PSC model", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    v6 = [v4 dynamicConfig];
    v7 = [v6 embeddingConfigs];

    v8 = [v7 getEmbeddingConfigForFactor:@"com.apple.siri.nl.psc"];
    v9 = [v8 embeddingModelDimension];
    v10 = [CDMNLServiceUtils buildSetupITFMRequest:v9];
    v11 = self;
    objc_sync_enter(v11);
    pscOrchestrator = v11->_pscOrchestrator;
    v24 = 0;
    v13 = [(SNLPPommesServerClassifier *)pscOrchestrator responseForRequest:v10 error:&v24];
    v14 = v24;
    if (!v13)
    {
      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = [v14 localizedDescription];
        *buf = 136315394;
        v26 = "[CDMPSCService warmup:]";
        v27 = 2112;
        v28 = v22;
        v23 = v22;
        _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to run warm-up inference call: %@", buf, 0x16u);
      }
    }

    objc_sync_exit(v11);
  }

  else
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v26 = "[CDMPSCService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. PSC will not prewarm.", buf, 0xCu);
    }
  }

  v16 = [CDMWarmupResponseCommand alloc];
  v17 = [(CDMBaseService *)self serviceState];
  v18 = [(CDMBaseService *)self serviceName];
  v19 = [(CDMWarmupResponseCommand *)v16 initWithServiceState:v17 serviceName:v18];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)setup:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDMPSCService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s PSC model setup", buf, 0xCu);
  }

  v6 = [v4 dynamicConfig];
  v7 = [v6 getAssetForFactorName:@"com.apple.siri.nl.psc"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  v9 = [v4 dynamicConfig];
  v10 = [v9 getAssetBundlePathForFactorName:@"com.apple.siri.nl.psc"];

  if (v10)
  {
    v11 = [(CDMPSCService *)self assetsPathURLForModelBundle:v10];
    if (v11)
    {
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v26 = "[CDMPSCService setup:]";
        v27 = 2112;
        v28 = v11;
        _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s PSC proto service passing assets path to SNLPPommesServerClassifier: %@", buf, 0x16u);
      }

      v13 = self;
      objc_sync_enter(v13);
      v24 = 0;
      v14 = [(CDMPSCService *)v13 getSNLPPommesServerClassifierPath:v11 error:&v24];
      v15 = v24;

      if (!v14)
      {
        v16 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = [v15 localizedDescription];
          *buf = 136315394;
          v26 = "[CDMPSCService setup:]";
          v27 = 2112;
          v28 = v23;
          _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to create PSC Orchestrator: %@", buf, 0x16u);
        }

        v13->super.super._serviceState = 3;
        v12 = [(CDMBaseService *)v13 createSetupResponseCommand];
        [v12 setCmdError:v15];
      }

      objc_sync_exit(v13);
      if (v14)
      {
        v17 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v26 = "[CDMPSCService setup:]";
          _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s PSC model loaded", buf, 0xCu);
        }

        v13->super.super._serviceState = 2;
        v12 = [(CDMBaseService *)v13 createSetupResponseCommand];
      }
    }

    else
    {
      self->super.super._serviceState = 4;
      v12 = [(CDMBaseService *)self createSetupResponseCommand];
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
      [v12 setCmdError:v20];

      v11 = 0;
    }
  }

  else
  {
    self->super.super._serviceState = 4;
    v12 = [(CDMBaseService *)self createSetupResponseCommand];
    v11 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find/load PSC model bundle directory"];
    [v12 setCmdError:v11];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)handle:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v47 = "[CDMPSCService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Running PSC inference...", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    v6 = self;
    objc_sync_enter(v6);
    if (!v6->_pscOrchestrator)
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
      v9 = [v4 parserRequest];
      v10 = [v9 tokenisedUtterance];
      v11 = [v10 originalUtterance];
      v12 = v11;
      v13 = [v11 UTF8String];
      *buf = 136315394;
      v47 = "[CDMPSCService handle:]";
      v48 = 2080;
      v49 = v13;
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
      v15 = [v4 parserRequest];
      v45 = 0;
      v16 = [CDMNluLogUtil writePSCRequestToDisk:v15 error:&v45];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [v4 parserRequest];
    v18 = [v17 tokenisedUtterance];
    v19 = [v18 tokenChain];
    v20 = [v19 tokens];

    v21 = [v20 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v21)
    {
      v22 = *v42;
LABEL_16:
      v23 = 0;
      while (1)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v20);
        }

        if (([*(*(&v41 + 1) + 8 * v23) isWhitespace] & 1) == 0)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v20 countByEnumeratingWithState:&v41 objects:v52 count:16];
          if (v21)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v29 = v6;
      objc_sync_enter(v29);
      v30 = [v4 parserRequest];
      v40 = 0;
      v28 = [(CDMPSCService *)v29 doInference:v30 error:&v40];
      v31 = v40;

      if (v28)
      {
        v32 = CDMLogContext;
        if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v47 = "[CDMPSCService handle:]";
          v48 = 2112;
          v49 = @"psc";
          v50 = 2112;
          v51 = v28;
          _os_log_debug_impl(&dword_1DC287000, v32, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nPSC Response: %@", buf, 0x20u);
        }
      }

      else
      {
        v33 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v38 = [v31 localizedDescription];
          *buf = 136315394;
          v47 = "[CDMPSCService handle:]";
          v48 = 2112;
          v49 = v38;
          _os_log_error_impl(&dword_1DC287000, v33, OS_LOG_TYPE_ERROR, "%s [ERR]: PSC inference failed with error: %@", buf, 0x16u);
        }
      }

      objc_sync_exit(v29);
      if (v28)
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

    v28 = [objc_opt_class() _emptyResponse];
LABEL_38:
    v27 = [CDMNLServiceUtils buildPSCResponse:v28 pscRequest:v4];
    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      v39 = 0;
      v35 = [CDMNluLogUtil writePSCResponseToDisk:v28 error:&v39];
    }

    objc_sync_exit(v6);
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
    v28 = [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    [(CDMBaseCommand *)v27 setCmdError:v28];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v27;
}

@end