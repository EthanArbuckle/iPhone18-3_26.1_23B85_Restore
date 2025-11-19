@interface CDMSNLCProtoService
+ (id)_stockServerResponse;
+ (id)getCDMServiceAssetConfig;
+ (id)getParserEnum;
- (id)assetsPathURLForModelBundle:(id)a3;
- (id)doInference:(id)a3 error:(id *)a4;
- (id)getSNLPServerNLClassifierPath:(id)a3 error:(id *)a4;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
- (id)warmup:(id)a3;
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

- (id)getSNLPServerNLClassifierPath:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[CDMSNLCProtoService getSNLPServerNLClassifierPath:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s creating _snlcInferenceOrchestrator", &v14, 0xCu);
  }

  v8 = [MEMORY[0x1E69D14A0] classifierWithPathURL:v6 error:a4];
  snlcOrchestrator = self->_snlcOrchestrator;
  self->_snlcOrchestrator = v8;

  v10 = self->_snlcOrchestrator;
  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
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
      v13 = "[CDMSNLCProtoService assetsPathURLForModelBundle:]";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: SNLC assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)doInference:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[CDMSNLCProtoService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start SNLC", &v12, 0xCu);
  }

  v8 = [(SNLPServerNLClassifier *)self->_snlcOrchestrator responseForRequest:v6 error:a4];
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

- (id)warmup:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDMSNLCProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm SNLC model", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    v6 = [v4 dynamicConfig];
    v7 = [v6 embeddingConfigs];

    v8 = [v7 getEmbeddingConfigForFactor:@"com.apple.siri.nl.snlc"];
    v9 = [v8 embeddingModelDimension];
    v10 = [CDMNLServiceUtils buildSetupSNLCProtoRequest:v9];
    v11 = self;
    objc_sync_enter(v11);
    v23 = 0;
    v12 = [(CDMSNLCProtoService *)v11 doInference:v10 error:&v23];
    v13 = v23;
    if (!v12)
    {
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v21 = [v13 localizedDescription];
        *buf = 136315394;
        v25 = "[CDMSNLCProtoService warmup:]";
        v26 = 2112;
        v27 = v21;
        v22 = v21;
        _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: SNLC inference failed with error: %@", buf, 0x16u);
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
      v25 = "[CDMSNLCProtoService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. SNLC will not prewarm.", buf, 0xCu);
    }
  }

  v15 = [CDMWarmupResponseCommand alloc];
  v16 = [(CDMBaseService *)self serviceState];
  v17 = [(CDMBaseService *)self serviceName];
  v18 = [(CDMWarmupResponseCommand *)v15 initWithServiceState:v16 serviceName:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)setup:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDMSNLCProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s SNLC model setup", buf, 0xCu);
  }

  v6 = [v4 dynamicConfig];
  v7 = [v6 getAssetForFactorName:@"com.apple.siri.nl.snlc"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  v9 = [v4 dynamicConfig];
  v10 = [v9 getAssetBundlePathForFactorName:@"com.apple.siri.nl.snlc"];

  if (v10)
  {
    v11 = [(CDMSNLCProtoService *)self assetsPathURLForModelBundle:v10];
    if (v11)
    {
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v26 = "[CDMSNLCProtoService setup:]";
        v27 = 2112;
        v28 = v11;
        _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s SNLC proto service passing assets path to SNLPServerNLClassifier: %@", buf, 0x16u);
      }

      v13 = self;
      objc_sync_enter(v13);
      v24 = 0;
      v14 = [(CDMSNLCProtoService *)v13 getSNLPServerNLClassifierPath:v11 error:&v24];
      v15 = v24;

      if (!v14)
      {
        v16 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = [v15 localizedDescription];
          *buf = 136315394;
          v26 = "[CDMSNLCProtoService setup:]";
          v27 = 2112;
          v28 = v23;
          _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to create SNLC Orchestrator: %@", buf, 0x16u);
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
          v26 = "[CDMSNLCProtoService setup:]";
          _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s SNLC model loaded", buf, 0xCu);
        }

        v13->super.super._serviceState = 2;
        v12 = [(CDMBaseService *)v13 createSetupResponseCommand];
      }
    }

    else
    {
      self->super.super._serviceState = 3;
      v12 = [(CDMBaseService *)self createSetupResponseCommand];
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
      [v12 setCmdError:v20];

      v11 = 0;
    }
  }

  else
  {
    self->super.super._serviceState = 3;
    v12 = [(CDMBaseService *)self createSetupResponseCommand];
    v11 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find/load SNLC model bundle directory"];
    [v12 setCmdError:v11];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)handle:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v59 = "[CDMSNLCProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Running SNLC inference...", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    v6 = self;
    objc_sync_enter(v6);
    if (!v6->_snlcOrchestrator)
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
      v9 = [v4 parserRequest];
      v10 = [v9 tokenisedUtterance];
      v11 = [v10 originalUtterance];
      v12 = v11;
      v13 = [v11 UTF8String];
      *buf = 136315394;
      v59 = "[CDMSNLCProtoService handle:]";
      v60 = 2080;
      v61 = v13;
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
      v15 = [v4 parserRequest];
      v57 = 0;
      v16 = [CDMNluLogUtil writeSNLCRequestToDisk:v15 error:&v57];
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v17 = [v4 parserRequest];
    v18 = [v17 tokenisedUtterance];
    v19 = [v18 tokenChain];
    v20 = [v19 tokens];

    v21 = [v20 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v21)
    {
      v22 = *v54;
LABEL_16:
      v23 = 0;
      while (1)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v20);
        }

        if (([*(*(&v53 + 1) + 8 * v23) isWhitespace] & 1) == 0)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v20 countByEnumeratingWithState:&v53 objects:v64 count:16];
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
      v52 = 0;
      [(CDMSNLCProtoService *)v29 doInference:v30 error:&v52];
      v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v31 = v52;

      objc_sync_exit(v29);
      if (v28 == 0.0)
      {
        goto LABEL_31;
      }

      v32 = [*&v28 hypotheses];
      v33 = [v32 objectAtIndexedSubscript:0];
      [v33 probability];
      v35 = v34;
      v36 = [*&v28 hypotheses];
      v37 = [v36 objectAtIndexedSubscript:1];
      [v37 probability];
      if (v35 > v38)
      {
        v39 = [*&v28 hypotheses];
        [v39 objectAtIndexedSubscript:0];
      }

      else
      {
        v39 = [*&v28 hypotheses];
        [v39 objectAtIndexedSubscript:1];
      }
      v41 = ;

      v42 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v48 = [v41 label];
        [v41 probability];
        v50 = "Device";
        if (!v48)
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
    v27 = [CDMNLServiceUtils buildSNLCProtoResponse:*&v28 snlcRequest:v4 parserToSet:v43];

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

    objc_sync_exit(v6);
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