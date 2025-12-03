@interface CDMNLv4ProtoService
+ (id)assetsPathURLForModelBundle:(id)bundle;
+ (id)buildEmptyNLv4ResponseCommand:(id)command;
+ (id)getCDMServiceAssetConfig;
+ (id)getParserEnum;
+ (id)parserFromAssetDirectory:(id)directory selfMetadata:(id)metadata error:(id *)error;
+ (id)xpcActivitySupported;
+ (id)xpcEventStreamsSupported;
+ (void)handleTrialAssetUpdate:(id)update selfMetadata:(id)metadata;
+ (void)handleXPCActivity:(id)activity withAssets:(id)assets withSelfMetadata:(id)metadata;
+ (void)handleXPCEvent:(id)event fromStream:(id)stream withAssets:(id)assets withSelfMetadata:(id)metadata;
- (id)assetsPathURLForModelBundle:(id)bundle;
- (id)buildNLv4ResponseCommand:(id)command requestId:(id)id;
- (id)doNLv4Inference:(id)inference outError:(id *)error;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)parserFromAssetDirectory:(id)directory selfMetadata:(id)metadata error:(id *)error;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
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

- (id)assetsPathURLForModelBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [objc_opt_class() assetsPathURLForModelBundle:bundleCopy];

  return v4;
}

- (id)doNLv4Inference:(id)inference outError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  inferenceCopy = inference;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[CDMNLv4ProtoService doNLv4Inference:outError:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start NLv4 Inference", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  parser = selfCopy->_parser;
  v18 = 0;
  v10 = [(SNLPNaturalLanguageParser *)parser inferenceResponseForRequest:inferenceCopy error:&v18];
  v11 = v18;
  if (!v10)
  {
    v12 = CDMLogContext;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v11 localizedDescription];
      *buf = 136315650;
      v20 = "[CDMNLv4ProtoService doNLv4Inference:outError:]";
      v21 = 2112;
      v22 = @"nlv4";
      v23 = 2112;
      v24 = localizedDescription;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: [insights-cdm-%@]:\nNLv4 inference error: %@", buf, 0x20u);
    }

    v13 = v11;
    *error = v11;
  }

  objc_sync_exit(selfCopy);
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

- (id)parserFromAssetDirectory:(id)directory selfMetadata:(id)metadata error:(id *)error
{
  directoryCopy = directory;
  metadataCopy = metadata;
  v9 = [objc_opt_class() parserFromAssetDirectory:directoryCopy selfMetadata:metadataCopy error:error];

  return v9;
}

- (id)buildNLv4ResponseCommand:(id)command requestId:(id)id
{
  commandCopy = command;
  idCopy = id;
  hypotheses = [commandCopy hypotheses];
  v8 = +[CDMNLv4ProtoService getParserEnum];
  [CDMNLServiceUtils populateParser:hypotheses parserToSet:v8];

  v9 = objc_alloc_init(MEMORY[0x1E69D1158]);
  [v9 setRequestId:idCopy];
  hypotheses2 = [commandCopy hypotheses];
  [v9 setParses:hypotheses2];

  v11 = [[CDMNLv4ProtoResponseCommand alloc] initWithParserResponse:commandCopy nluResponse:v9];

  return v11;
}

- (id)handle:(id)handle
{
  v50 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[CDMNLv4ProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s calling NLv4 Inference", buf, 0xCu);
  }

  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    parserRequest = [handleCopy parserRequest];
    v42 = 0;
    v7 = [CDMNluLogUtil writeNlv4RequestToDisk:parserRequest error:&v42];
  }

  if (self->super.super._serviceState == 2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_parser)
    {
      objc_sync_exit(selfCopy);

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      parserRequest2 = [handleCopy parserRequest];
      tokenisedUtterance = [parserRequest2 tokenisedUtterance];
      tokenChain = [tokenisedUtterance tokenChain];
      tokens = [tokenChain tokens];

      v13 = [tokens countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v13)
      {
        v14 = *v39;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v39 != v14)
            {
              objc_enumerationMutation(tokens);
            }

            if (([*(*(&v38 + 1) + 8 * i) isWhitespace] & 1) == 0)
            {

              parserRequest3 = [handleCopy parserRequest];
              v37 = 0;
              v21 = [(CDMNLv4ProtoService *)selfCopy doNLv4Inference:parserRequest3 outError:&v37];
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

                hypotheses = [v21 hypotheses];
                v26 = [hypotheses count];
                parserRequest4 = [handleCopy parserRequest];
                LODWORD(v26) = v26 > [parserRequest4 maxNumParses];

                if (v26)
                {
                  v28 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    hypotheses2 = [v21 hypotheses];
                    v33 = [hypotheses2 count];
                    parserRequest5 = [handleCopy parserRequest];
                    maxNumParses = [parserRequest5 maxNumParses];
                    *buf = 136315650;
                    v44 = "[CDMNLv4ProtoService handle:]";
                    v45 = 2048;
                    v46 = v33;
                    v47 = 2048;
                    v48 = maxNumParses;
                    _os_log_error_impl(&dword_1DC287000, v28, OS_LOG_TYPE_ERROR, "%s [ERR]: The number of parses in the response (%lu) is greater than the max num parses in the request (%llu)", buf, 0x20u);
                  }
                }

                requestId = [handleCopy requestId];
                v17 = [(CDMNLv4ProtoService *)selfCopy buildNLv4ResponseCommand:v21 requestId:requestId];
              }

              selfCopy = v22;
              goto LABEL_34;
            }
          }

          v13 = [tokens countByEnumeratingWithState:&v38 objects:v49 count:16];
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

      selfCopy = [handleCopy requestId];
      v17 = [CDMNLv4ProtoService buildEmptyNLv4ResponseCommand:selfCopy];
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

      objc_sync_exit(selfCopy);
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
    selfCopy = [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    [(CDMBaseCommand *)v17 setCmdError:selfCopy];
  }

LABEL_34:

  v30 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)warmup:(id)warmup
{
  v29 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDMNLv4ProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm NLv4 model", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    dynamicConfig = [warmupCopy dynamicConfig];
    embeddingConfigs = [dynamicConfig embeddingConfigs];

    v8 = [embeddingConfigs getEmbeddingConfigForFactor:@"com.apple.siri.nl.nlv4"];
    embeddingModelDimension = [v8 embeddingModelDimension];
    v10 = [CDMNLServiceUtils buildSetupNLv4ProtoRequest:embeddingModelDimension];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_parser)
    {
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v26 = "[CDMNLv4ProtoService warmup:]";
        _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Performing NLv4 warmup request", buf, 0xCu);
      }

      v24 = 0;
      v13 = [(CDMNLv4ProtoService *)selfCopy doNLv4Inference:v10 outError:&v24];
      v14 = v24;
      if (!v13)
      {
        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [v14 localizedDescription];
          *buf = 136315394;
          v26 = "[CDMNLv4ProtoService warmup:]";
          v27 = 2112;
          v28 = localizedDescription;
          v23 = localizedDescription;
          _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Warmup NLv4 request failed: %@", buf, 0x16u);
        }
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
      v26 = "[CDMNLv4ProtoService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, embeddingConfigs, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. NLv4 will not prewarm.", buf, 0xCu);
    }
  }

  v17 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v20 = [(CDMWarmupResponseCommand *)v17 initWithServiceState:serviceState serviceName:serviceName];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)setup:(id)setup
{
  v36 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v33 = "[CDMNLv4ProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s NLv4 model setup...", buf, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  v7 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.nlv4"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v10 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.nlv4"];

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

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[CDMNLv4ProtoService setup:]";
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Creating _parser", buf, 0xCu);
      }

      selfMetadata = [setupCopy selfMetadata];
      v31 = 0;
      v16 = [(CDMNLv4ProtoService *)selfCopy parserFromAssetDirectory:v11 selfMetadata:selfMetadata error:&v31];
      v17 = v31;
      parser = selfCopy->_parser;
      selfCopy->_parser = v16;

      v19 = selfCopy->_parser;
      if (!v19)
      {
        selfCopy->super.super._serviceState = 3;
        selfMetadata = [(CDMBaseService *)selfCopy createSetupResponseCommand];
        v20 = MEMORY[0x1E696AEC0];
        localizedDescription = [v17 localizedDescription];
        v22 = [v20 stringWithFormat:@"Error during NLv4 parser init: %@", localizedDescription];

        v23 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "[CDMNLv4ProtoService setup:]";
          v34 = 2112;
          v35 = v22;
          _os_log_error_impl(&dword_1DC287000, v23, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
        }

        v24 = [(CDMBaseService *)selfCopy createErrorWithCode:1 description:v22];
        [selfMetadata setCmdError:v24];
      }

      objc_sync_exit(selfCopy);
      if (v19)
      {
        v25 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v33 = "[CDMNLv4ProtoService setup:]";
          _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s NLv4 model loaded during setup", buf, 0xCu);
        }

        selfCopy->super.super._serviceState = 2;
        selfMetadata = [(CDMBaseService *)selfCopy createSetupResponseCommand];
      }
    }

    else
    {
      self->super.super._serviceState = 3;
      selfMetadata = [(CDMBaseService *)self createSetupResponseCommand];
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
      [selfMetadata setCmdError:v28];

      v11 = 0;
    }
  }

  else
  {
    self->super.super._serviceState = 3;
    selfMetadata = [(CDMBaseService *)self createSetupResponseCommand];
    v11 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find/load NLv4 model bundle directory"];
    [selfMetadata setCmdError:v11];
  }

  v29 = *MEMORY[0x1E69E9840];

  return selfMetadata;
}

+ (id)assetsPathURLForModelBundle:(id)bundle
{
  v17 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  resourcePath = [bundleCopy resourcePath];
  v5 = [resourcePath stringByAppendingPathComponent:@"model_bundle/bundleCopy/"];

  v12 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5 isDirectory:&v12];

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

+ (id)parserFromAssetDirectory:(id)directory selfMetadata:(id)metadata error:(id *)error
{
  v5 = [MEMORY[0x1E69D1470] parserFromAssetDirectory:directory metadata:metadata error:error];

  return v5;
}

+ (id)getParserEnum
{
  v2 = objc_alloc_init(MEMORY[0x1E69D11A8]);
  [v2 setAlgorithm:2];
  [v2 setParserId:3];

  return v2;
}

+ (id)buildEmptyNLv4ResponseCommand:(id)command
{
  commandCopy = command;
  v4 = objc_alloc_init(MEMORY[0x1E69D1318]);
  v5 = objc_alloc_init(MEMORY[0x1E69D1158]);
  [v5 setRequestId:commandCopy];
  v6 = [[CDMNLv4ProtoResponseCommand alloc] initWithParserResponse:v4 nluResponse:v5];

  return v6;
}

+ (void)handleTrialAssetUpdate:(id)update selfMetadata:(id)metadata
{
  v27 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  metadataCopy = metadata;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = "+[CDMNLv4ProtoService(SystemEvent) handleTrialAssetUpdate:selfMetadata:]";
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Pre-compiling NLv4 mil assets to E5RT.", buf, 0xCu);
  }

  v9 = [updateCopy getAssetBundlePathForFactorName:@"com.apple.siri.nl.nlv4"];
  v10 = [CDMNLv4ProtoService assetsPathURLForModelBundle:v9];
  if (v10)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "+[CDMNLv4ProtoService(SystemEvent) handleTrialAssetUpdate:selfMetadata:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s Triggering on-device E5RT compilation of NLv4 model assets.", buf, 0xCu);
    }

    v22 = 0;
    v13 = [selfCopy parserFromAssetDirectory:v10 selfMetadata:metadataCopy error:&v22];
    v14 = v22;
    v15 = v14;
    if (!v13)
    {
      v16 = MEMORY[0x1E696AEC0];
      localizedDescription = [v14 localizedDescription];
      v18 = [v16 stringWithFormat:@"Error during NLv4 parser init: %@", localizedDescription];

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

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not look up NLv4 assets path"];
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "+[CDMNLv4ProtoService(SystemEvent) handleTrialAssetUpdate:selfMetadata:]";
      v25 = 2112;
      v26 = selfCopy;
      _os_log_error_impl(&dword_1DC287000, v20, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)handleXPCActivity:(id)activity withAssets:(id)assets withSelfMetadata:(id)metadata
{
  v17 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  assetsCopy = assets;
  metadataCopy = metadata;
  if (activityCopy == @"com.apple.siri.cdm.xpc_activity.post_install" || activityCopy == @"com.apple.siri.cdm.xpc_activity.maintenance")
  {
    [self handleTrialAssetUpdate:assetsCopy selfMetadata:metadataCopy];
  }

  else
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "+[CDMNLv4ProtoService(SystemEvent) handleXPCActivity:withAssets:withSelfMetadata:]";
      v15 = 2112;
      v16 = activityCopy;
      _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: Unhandled activity type: %@", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)handleXPCEvent:(id)event fromStream:(id)stream withAssets:(id)assets withSelfMetadata:(id)metadata
{
  v26 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  streamCopy = stream;
  assetsCopy = assets;
  metadataCopy = metadata;
  v14 = [XPCStreamEventUtils getXPCEventName:eventCopy];
  if (!v14)
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "+[CDMNLv4ProtoService(SystemEvent) handleXPCEvent:fromStream:withAssets:withSelfMetadata:]";
      v22 = 2048;
      v23 = eventCopy;
      v16 = "%s [ERR]: Could not extract XPC event name for event %p";
      v17 = v15;
      v18 = 22;
      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (![@"com.apple.notifyd.matching" isEqualToString:streamCopy] || (objc_msgSend(@"com.apple.trial.NamespaceUpdate.SIRI_UNDERSTANDING_NL", "isEqualToString:", v14) & 1) == 0 && !objc_msgSend(@"com.apple.siri.uaf.com.apple.siri.understanding", "isEqualToString:", v14))
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315650;
      v21 = "+[CDMNLv4ProtoService(SystemEvent) handleXPCEvent:fromStream:withAssets:withSelfMetadata:]";
      v22 = 2112;
      v23 = streamCopy;
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

  [self handleTrialAssetUpdate:assetsCopy selfMetadata:metadataCopy];
LABEL_10:

  v19 = *MEMORY[0x1E69E9840];
}

@end