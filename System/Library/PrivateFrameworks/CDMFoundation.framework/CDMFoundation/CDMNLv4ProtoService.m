@interface CDMNLv4ProtoService
+ (id)assetsPathURLForModelBundle:(id)a3;
+ (id)buildEmptyNLv4ResponseCommand:(id)a3;
+ (id)getCDMServiceAssetConfig;
+ (id)getParserEnum;
+ (id)parserFromAssetDirectory:(id)a3 selfMetadata:(id)a4 error:(id *)a5;
+ (id)xpcActivitySupported;
+ (id)xpcEventStreamsSupported;
+ (void)handleTrialAssetUpdate:(id)a3 selfMetadata:(id)a4;
+ (void)handleXPCActivity:(id)a3 withAssets:(id)a4 withSelfMetadata:(id)a5;
+ (void)handleXPCEvent:(id)a3 fromStream:(id)a4 withAssets:(id)a5 withSelfMetadata:(id)a6;
- (id)assetsPathURLForModelBundle:(id)a3;
- (id)buildNLv4ResponseCommand:(id)a3 requestId:(id)a4;
- (id)doNLv4Inference:(id)a3 outError:(id *)a4;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)parserFromAssetDirectory:(id)a3 selfMetadata:(id)a4 error:(id *)a5;
- (id)setup:(id)a3;
- (id)warmup:(id)a3;
@end

@implementation CDMNLv4ProtoService

+ (id)xpcEventStreamsSupported
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [XPCStreamEventRegistration registrationWithStream:@"com.apple.notifyd.matching" eventName:@"com.apple.trial.NamespaceUpdate.SIRI_UNDERSTANDING_NL" dagServiceClass:objc_opt_class()];
  v4 = [XPCStreamEventRegistration registrationWithStream:@"com.apple.notifyd.matching" eventName:@"com.apple.siri.uaf.com.apple.siri.understanding" dagServiceClass:objc_opt_class()];
  v5 = [v2 arrayWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)xpcActivitySupported
{
  v2 = [MEMORY[0x1E695DFA8] set];
  [v2 addObject:@"com.apple.siri.cdm.xpc_activity.post_install"];
  [v2 addObject:@"com.apple.siri.cdm.xpc_activity.maintenance"];

  return v2;
}

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMNLv4ProtoRequestCommand];
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
  v7 = @"temp_model";
  v8 = @"com.apple.siri.nl.nlv4";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)assetsPathURLForModelBundle:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() assetsPathURLForModelBundle:v3];

  return v4;
}

- (id)doNLv4Inference:(id)a3 outError:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[CDMNLv4ProtoService doNLv4Inference:outError:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start NLv4 Inference", buf, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  parser = v8->_parser;
  v18 = 0;
  v10 = [(SNLPNaturalLanguageParser *)parser inferenceResponseForRequest:v6 error:&v18];
  v11 = v18;
  if (!v10)
  {
    v12 = CDMLogContext;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = [v11 localizedDescription];
      *buf = 136315650;
      v20 = "[CDMNLv4ProtoService doNLv4Inference:outError:]";
      v21 = 2112;
      v22 = @"nlv4";
      v23 = 2112;
      v24 = v17;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: [insights-cdm-%@]:\nNLv4 inference error: %@", buf, 0x20u);
    }

    v13 = v11;
    *a4 = v11;
  }

  objc_sync_exit(v8);
  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[CDMNLv4ProtoService doNLv4Inference:outError:]";
    _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s CDMNLv4ProtoService::doNLv4Inference finished", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)parserFromAssetDirectory:(id)a3 selfMetadata:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() parserFromAssetDirectory:v7 selfMetadata:v8 error:a5];

  return v9;
}

- (id)buildNLv4ResponseCommand:(id)a3 requestId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 hypotheses];
  v8 = +[CDMNLv4ProtoService getParserEnum];
  [CDMNLServiceUtils populateParser:v7 parserToSet:v8];

  v9 = objc_alloc_init(MEMORY[0x1E69D1158]);
  [v9 setRequestId:v6];
  v10 = [v5 hypotheses];
  [v9 setParses:v10];

  v11 = [[CDMNLv4ProtoResponseCommand alloc] initWithParserResponse:v5 nluResponse:v9];

  return v11;
}

- (id)handle:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[CDMNLv4ProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s calling NLv4 Inference", buf, 0xCu);
  }

  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    v6 = [v4 parserRequest];
    v42 = 0;
    v7 = [CDMNluLogUtil writeNlv4RequestToDisk:v6 error:&v42];
  }

  if (self->super.super._serviceState == 2)
  {
    v8 = self;
    objc_sync_enter(v8);
    if (v8->_parser)
    {
      objc_sync_exit(v8);

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = [v4 parserRequest];
      v10 = [v9 tokenisedUtterance];
      v11 = [v10 tokenChain];
      v12 = [v11 tokens];

      v13 = [v12 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v13)
      {
        v14 = *v39;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v39 != v14)
            {
              objc_enumerationMutation(v12);
            }

            if (([*(*(&v38 + 1) + 8 * i) isWhitespace] & 1) == 0)
            {

              v20 = [v4 parserRequest];
              v37 = 0;
              v21 = [(CDMNLv4ProtoService *)v8 doNLv4Inference:v20 outError:&v37];
              v22 = v37;

              if (v22)
              {
                v17 = objc_alloc_init(CDMNLv4ProtoResponseCommand);
                [(CDMBaseCommand *)v17 setCmdError:v22];
              }

              else
              {
                if (+[CDMFeatureFlags isLogNluEnabled])
                {
                  v36 = 0;
                  v24 = [CDMNluLogUtil writeNlv4ResponseToDisk:v21 error:&v36];
                }

                v25 = [v21 hypotheses];
                v26 = [v25 count];
                v27 = [v4 parserRequest];
                LODWORD(v26) = v26 > [v27 maxNumParses];

                if (v26)
                {
                  v28 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    v32 = [v21 hypotheses];
                    v33 = [v32 count];
                    v34 = [v4 parserRequest];
                    v35 = [v34 maxNumParses];
                    *buf = 136315650;
                    v44 = "[CDMNLv4ProtoService handle:]";
                    v45 = 2048;
                    v46 = v33;
                    v47 = 2048;
                    v48 = v35;
                    _os_log_error_impl(&dword_1DC287000, v28, OS_LOG_TYPE_ERROR, "%s [ERR]: The number of parses in the response (%lu) is greater than the max num parses in the request (%llu)", buf, 0x20u);
                  }
                }

                v29 = [v4 requestId];
                v17 = [(CDMNLv4ProtoService *)v8 buildNLv4ResponseCommand:v21 requestId:v29];
              }

              v8 = v22;
              goto LABEL_34;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v38 objects:v49 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v16 = CDMLogContext;
      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v44 = "[CDMNLv4ProtoService handle:]";
        v45 = 2112;
        v46 = @"nlv4";
        _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s [WARN]: [insights-cdm-%@]:\nNo non whitespace tokens found. Skipping call to the model.", buf, 0x16u);
      }

      v8 = [v4 requestId];
      v17 = [CDMNLv4ProtoService buildEmptyNLv4ResponseCommand:v8];
    }

    else
    {
      v23 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v44 = "[CDMNLv4ProtoService handle:]";
        _os_log_error_impl(&dword_1DC287000, v23, OS_LOG_TYPE_ERROR, "%s [ERR]: _parser not initialized", buf, 0xCu);
      }

      objc_sync_exit(v8);
      v17 = 0;
    }
  }

  else
  {
    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      serviceState = self->super.super._serviceState;
      *buf = 136315394;
      v44 = "[CDMNLv4ProtoService handle:]";
      v45 = 2048;
      v46 = serviceState;
      _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v17 = objc_alloc_init(CDMNLv4ProtoResponseCommand);
    v8 = [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    [(CDMBaseCommand *)v17 setCmdError:v8];
  }

LABEL_34:

  v30 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)warmup:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDMNLv4ProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm NLv4 model", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    v6 = [v4 dynamicConfig];
    v7 = [v6 embeddingConfigs];

    v8 = [v7 getEmbeddingConfigForFactor:@"com.apple.siri.nl.nlv4"];
    v9 = [v8 embeddingModelDimension];
    v10 = [CDMNLServiceUtils buildSetupNLv4ProtoRequest:v9];
    v11 = self;
    objc_sync_enter(v11);
    if (v11->_parser)
    {
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v26 = "[CDMNLv4ProtoService warmup:]";
        _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Performing NLv4 warmup request", buf, 0xCu);
      }

      v24 = 0;
      v13 = [(CDMNLv4ProtoService *)v11 doNLv4Inference:v10 outError:&v24];
      v14 = v24;
      if (!v13)
      {
        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v14 localizedDescription];
          *buf = 136315394;
          v26 = "[CDMNLv4ProtoService warmup:]";
          v27 = 2112;
          v28 = v16;
          v23 = v16;
          _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Warmup NLv4 request failed: %@", buf, 0x16u);
        }
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
      v26 = "[CDMNLv4ProtoService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. NLv4 will not prewarm.", buf, 0xCu);
    }
  }

  v17 = [CDMWarmupResponseCommand alloc];
  v18 = [(CDMBaseService *)self serviceState];
  v19 = [(CDMBaseService *)self serviceName];
  v20 = [(CDMWarmupResponseCommand *)v17 initWithServiceState:v18 serviceName:v19];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)setup:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v33 = "[CDMNLv4ProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s NLv4 model setup...", buf, 0xCu);
  }

  v6 = [v4 dynamicConfig];
  v7 = [v6 getAssetForFactorName:@"com.apple.siri.nl.nlv4"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  v9 = [v4 dynamicConfig];
  v10 = [v9 getAssetBundlePathForFactorName:@"com.apple.siri.nl.nlv4"];

  if (v10)
  {
    v11 = [(CDMNLv4ProtoService *)self assetsPathURLForModelBundle:v10];
    if (v11)
    {
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v33 = "[CDMNLv4ProtoService setup:]";
        v34 = 2112;
        v35 = v11;
        _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s NLv4 proto service passing assets path to NLv4IO: %@", buf, 0x16u);
      }

      v13 = self;
      objc_sync_enter(v13);
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[CDMNLv4ProtoService setup:]";
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Creating _parser", buf, 0xCu);
      }

      v15 = [v4 selfMetadata];
      v31 = 0;
      v16 = [(CDMNLv4ProtoService *)v13 parserFromAssetDirectory:v11 selfMetadata:v15 error:&v31];
      v17 = v31;
      parser = v13->_parser;
      v13->_parser = v16;

      v19 = v13->_parser;
      if (!v19)
      {
        v13->super.super._serviceState = 3;
        v15 = [(CDMBaseService *)v13 createSetupResponseCommand];
        v20 = MEMORY[0x1E696AEC0];
        v21 = [v17 localizedDescription];
        v22 = [v20 stringWithFormat:@"Error during NLv4 parser init: %@", v21];

        v23 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "[CDMNLv4ProtoService setup:]";
          v34 = 2112;
          v35 = v22;
          _os_log_error_impl(&dword_1DC287000, v23, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
        }

        v24 = [(CDMBaseService *)v13 createErrorWithCode:1 description:v22];
        [v15 setCmdError:v24];
      }

      objc_sync_exit(v13);
      if (v19)
      {
        v25 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v33 = "[CDMNLv4ProtoService setup:]";
          _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s NLv4 model loaded during setup", buf, 0xCu);
        }

        v13->super.super._serviceState = 2;
        v15 = [(CDMBaseService *)v13 createSetupResponseCommand];
      }
    }

    else
    {
      self->super.super._serviceState = 3;
      v15 = [(CDMBaseService *)self createSetupResponseCommand];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not look up NLv4 assets path"];
      v27 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v33 = "[CDMNLv4ProtoService setup:]";
        v34 = 2112;
        v35 = v26;
        _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
      }

      v28 = [(CDMBaseService *)self createErrorWithCode:1 description:v26];
      [v15 setCmdError:v28];

      v11 = 0;
    }
  }

  else
  {
    self->super.super._serviceState = 3;
    v15 = [(CDMBaseService *)self createSetupResponseCommand];
    v11 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find/load NLv4 model bundle directory"];
    [v15 setCmdError:v11];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)assetsPathURLForModelBundle:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 resourcePath];
  v5 = [v4 stringByAppendingPathComponent:@"model_bundle/v3/"];

  v12 = 0;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5 isDirectory:&v12];

  if (v7 && (v12 & 1) != 0)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "+[CDMNLv4ProtoService assetsPathURLForModelBundle:]";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: NLv4 assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)parserFromAssetDirectory:(id)a3 selfMetadata:(id)a4 error:(id *)a5
{
  v5 = [MEMORY[0x1E69D1470] parserFromAssetDirectory:a3 metadata:a4 error:a5];

  return v5;
}

+ (id)getParserEnum
{
  v2 = objc_alloc_init(MEMORY[0x1E69D11A8]);
  [v2 setAlgorithm:2];
  [v2 setParserId:3];

  return v2;
}

+ (id)buildEmptyNLv4ResponseCommand:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69D1318]);
  v5 = objc_alloc_init(MEMORY[0x1E69D1158]);
  [v5 setRequestId:v3];
  v6 = [[CDMNLv4ProtoResponseCommand alloc] initWithParserResponse:v4 nluResponse:v5];

  return v6;
}

+ (void)handleTrialAssetUpdate:(id)a3 selfMetadata:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = "+[CDMNLv4ProtoService(SystemEvent) handleTrialAssetUpdate:selfMetadata:]";
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Pre-compiling NLv4 mil assets to E5RT.", buf, 0xCu);
  }

  v9 = [v6 getAssetBundlePathForFactorName:@"com.apple.siri.nl.nlv4"];
  v10 = [CDMNLv4ProtoService assetsPathURLForModelBundle:v9];
  if (v10)
  {
    v11 = a1;
    objc_sync_enter(v11);
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "+[CDMNLv4ProtoService(SystemEvent) handleTrialAssetUpdate:selfMetadata:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s Triggering on-device E5RT compilation of NLv4 model assets.", buf, 0xCu);
    }

    v22 = 0;
    v13 = [v11 parserFromAssetDirectory:v10 selfMetadata:v7 error:&v22];
    v14 = v22;
    v15 = v14;
    if (!v13)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [v14 localizedDescription];
      v18 = [v16 stringWithFormat:@"Error during NLv4 parser init: %@", v17];

      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "+[CDMNLv4ProtoService(SystemEvent) handleTrialAssetUpdate:selfMetadata:]";
        v25 = 2112;
        v26 = v18;
        _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
      }
    }

    objc_sync_exit(v11);
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not look up NLv4 assets path"];
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "+[CDMNLv4ProtoService(SystemEvent) handleTrialAssetUpdate:selfMetadata:]";
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&dword_1DC287000, v20, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)handleXPCActivity:(id)a3 withAssets:(id)a4 withSelfMetadata:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 == @"com.apple.siri.cdm.xpc_activity.post_install" || v8 == @"com.apple.siri.cdm.xpc_activity.maintenance")
  {
    [a1 handleTrialAssetUpdate:v9 selfMetadata:v10];
  }

  else
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "+[CDMNLv4ProtoService(SystemEvent) handleXPCActivity:withAssets:withSelfMetadata:]";
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: Unhandled activity type: %@", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)handleXPCEvent:(id)a3 fromStream:(id)a4 withAssets:(id)a5 withSelfMetadata:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [XPCStreamEventUtils getXPCEventName:v10];
  if (!v14)
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "+[CDMNLv4ProtoService(SystemEvent) handleXPCEvent:fromStream:withAssets:withSelfMetadata:]";
      v22 = 2048;
      v23 = v10;
      v16 = "%s [ERR]: Could not extract XPC event name for event %p";
      v17 = v15;
      v18 = 22;
      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (![@"com.apple.notifyd.matching" isEqualToString:v11] || (objc_msgSend(@"com.apple.trial.NamespaceUpdate.SIRI_UNDERSTANDING_NL", "isEqualToString:", v14) & 1) == 0 && !objc_msgSend(@"com.apple.siri.uaf.com.apple.siri.understanding", "isEqualToString:", v14))
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315650;
      v21 = "+[CDMNLv4ProtoService(SystemEvent) handleXPCEvent:fromStream:withAssets:withSelfMetadata:]";
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v14;
      v16 = "%s [ERR]: Unhandled XPC event with streamName=%@, eventName=%@";
      v17 = v15;
      v18 = 32;
LABEL_12:
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, v16, &v20, v18);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  [a1 handleTrialAssetUpdate:v12 selfMetadata:v13];
LABEL_10:

  v19 = *MEMORY[0x1E69E9840];
}

@end