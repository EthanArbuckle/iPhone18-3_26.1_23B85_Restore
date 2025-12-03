@interface CDMEmbeddingProtoService
+ (BOOL)isSiriInputRepresentationModel:(id)model;
+ (id)getCDMServiceAssetConfig;
- (BOOL)hasEmbedderOrchestrator;
- (id)addEmbeddingModelItemToEmbedders:(id)embedders;
- (id)assetsPathURLForModelBundle:(id)bundle;
- (id)createEmbedderOrchestrator:(id)orchestrator;
- (id)createEmbedderOrchestrator:(id)orchestrator embedding_bert_path:(id)embedding_bert_path embedding_config_path:(id)embedding_config_path reformulation_path:(id)reformulation_path;
- (id)createEmbeddingConfigItemEqualToNilResponse;
- (id)createEmbeddingProtoServiceErrorWithCode:(int64_t)code description:(id)description;
- (id)createEmbeddingsBundleMissingPathResponse;
- (id)createEmptyEmbeddingsBundleResponse:(id)response;
- (id)createNoStableEmbeddingsModelFoundResponse;
- (id)createNotReadyForHandleProtoResponse;
- (id)createOrchestratorConstructFailureResponse;
- (id)doEmbedding:(id)embedding;
- (id)getSpecificEmbeddingModelItem:(id)item dependentEmbeddingConfigs:(id)configs embeddingVersion:(id)version;
- (id)getStableEmbeddingModelItem:(id)item;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)legacyEmbeddingPaths:(id)paths;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
@end

@implementation CDMEmbeddingProtoService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMEmbeddingProtoRequestCommand];
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
  v7[0] = @"siri_input_representations";
  v7[1] = @"temp_model";
  v8 = @"com.apple.siri.nl.owl";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)hasEmbedderOrchestrator
{
  embedders = self->_embedders;
  if (embedders)
  {
    LOBYTE(embedders) = [(NSMutableArray *)embedders count]!= 0;
  }

  return embedders;
}

- (id)doEmbedding:(id)embedding
{
  v55 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v52 = "[CDMEmbeddingProtoService doEmbedding:]";
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Start doEmbedding", buf, 0xCu);
  }

  if ([(CDMDataDispatcherContext *)self->_dataDispatcherContext cdmSELFLoggingPolicyType]== 2)
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v52 = "[CDMEmbeddingProtoService doEmbedding:]";
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s CDMEmbeddingProtoService::doEmbedding input: <Redacted>", buf, 0xCu);
    }
  }

  else
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      request = [embeddingCopy request];
      *buf = 136315395;
      v52 = "[CDMEmbeddingProtoService doEmbedding:]";
      v53 = 2117;
      v54 = request;
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s CDMEmbeddingProtoService::doEmbedding input: %{sensitive}@", buf, 0x16u);
    }
  }

  v38 = objc_alloc_init(MEMORY[0x1E69D12B8]);
  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_embedders, "count")}];
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_embedders, "count")}];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v36 = [(NSMutableArray *)self->_embedders count];
    *buf = 136315394;
    v52 = "[CDMEmbeddingProtoService doEmbedding:]";
    v53 = 2048;
    v54 = v36;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Running doEmbedding for %lu embedders", buf, 0x16u);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_embedders;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v6)
  {
    v45 = 0;
    v41 = *v47;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x1E69D12C0]);
        v10 = objc_alloc_init(MEMORY[0x1E69D12C0]);
        snlpEmbedder = [v8 snlpEmbedder];
        request2 = [embeddingCopy request];
        v13 = [snlpEmbedder getEmbeddings:request2];

        [v9 setEmbeddingDim:{objc_msgSend(v13, "embeddingDim")}];
        embeddingTensorOutputs = [v13 embeddingTensorOutputs];
        v15 = [embeddingTensorOutputs objectAtIndexedSubscript:0];
        embeddingTensor = [v15 embeddingTensor];
        [v9 setEmbeddingTensor:embeddingTensor];

        embeddingConfigItem = [v8 embeddingConfigItem];
        [v9 setIsStableEmbeddingsVersion:{objc_msgSend(embeddingConfigItem, "isStableEmbeddingModel")}];

        embeddingConfigItem2 = [v8 embeddingConfigItem];
        embeddingModelVersion = [embeddingConfigItem2 embeddingModelVersion];
        [v9 setEmbeddingVersion:embeddingModelVersion];

        if ([v9 isStableEmbeddingsVersion])
        {
          v20 = v13;

          v45 = v20;
        }

        [v44 addObject:{v9, v38}];
        [v10 setEmbeddingDim:{objc_msgSend(v13, "embeddingDim")}];
        subwordEmbeddingTensorOutputs = [v13 subwordEmbeddingTensorOutputs];
        v22 = [subwordEmbeddingTensorOutputs objectAtIndexedSubscript:0];
        embeddingTensor2 = [v22 embeddingTensor];
        [v10 setEmbeddingTensor:embeddingTensor2];

        embeddingConfigItem3 = [v8 embeddingConfigItem];
        embeddingModelVersion2 = [embeddingConfigItem3 embeddingModelVersion];
        [v10 setEmbeddingVersion:embeddingModelVersion2];

        [v43 addObject:v10];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v6);

    if (v45)
    {
      tokenChain = [v45 tokenChain];
      [v38 setTokenChain:tokenChain];

      [v38 setNumToken:{objc_msgSend(v45, "numToken")}];
      subwordTokenChain = [v45 subwordTokenChain];
      [v38 setSubwordTokenChain:subwordTokenChain];

      [v38 setNumSubwordToken:{objc_msgSend(v45, "numSubwordToken")}];
      [v38 setEmbeddingTensorOutputs:v44];
      [v38 setSubwordEmbeddingTensorOutputs:v43];
      v28 = [[CDMEmbeddingProtoResponseCommand alloc] initWithResponse:v38 embeddingConfigs:self->_embeddingConfigs];
      v29 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v52 = "[CDMEmbeddingProtoService doEmbedding:]";
        _os_log_impl(&dword_1DC287000, v29, OS_LOG_TYPE_INFO, "%s CDMEmbeddingProtoService::doEmbedding finished", buf, 0xCu);
      }

      v30 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        embeddingTensorOutputs2 = [v38 embeddingTensorOutputs];
        v32 = [embeddingTensorOutputs2 count];
        *buf = 136315394;
        v52 = "[CDMEmbeddingProtoService doEmbedding:]";
        v53 = 2048;
        v54 = v32;
        _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s CDMEmbeddingProtoService::doEmbedding produced %lu embedding tensors", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
  }

  self->super.super._serviceState = 3;
  v28 = [[CDMEmbeddingProtoResponseCommand alloc] initWithResponse:v38 embeddingConfigs:self->_embeddingConfigs];
  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No stable embeddings model found. Aborting setup."];
  v33 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "[CDMEmbeddingProtoService doEmbedding:]";
    v53 = 2112;
    v54 = v45;
    _os_log_error_impl(&dword_1DC287000, v33, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
  }

  v30 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:2 description:v45];
  [(CDMBaseCommand *)v28 setCmdError:v30];
LABEL_28:

  v34 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)createEmbedderOrchestrator:(id)orchestrator
{
  orchestratorCopy = orchestrator;
  v4 = [objc_alloc(MEMORY[0x1E69D1460]) initFromAssetDirectoryURL:orchestratorCopy];

  return v4;
}

- (id)createEmbedderOrchestrator:(id)orchestrator embedding_bert_path:(id)embedding_bert_path embedding_config_path:(id)embedding_config_path reformulation_path:(id)reformulation_path
{
  orchestratorCopy = orchestrator;
  embedding_bert_pathCopy = embedding_bert_path;
  embedding_config_pathCopy = embedding_config_path;
  reformulation_pathCopy = reformulation_path;
  v13 = [objc_alloc(MEMORY[0x1E69D1460]) initFromSourceVocabPath:orchestratorCopy bertModelPath:embedding_bert_pathCopy bertConfigPath:embedding_config_pathCopy reformulatorPath:reformulation_pathCopy];

  return v13;
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
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[CDMEmbeddingProtoService assetsPathURLForModelBundle:]";
      v14 = 2112;
      v15 = resourcePath;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: Embeddings assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)handle:(id)handle
{
  v24 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  request = [handleCopy request];
  text = [request text];

  if ([(CDMDataDispatcherContext *)self->_dataDispatcherContext cdmSELFLoggingPolicyType]== 2)
  {

    text = @"<Redacted>";
  }

  v7 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315651;
    v19 = "[CDMEmbeddingProtoService handle:]";
    v20 = 2112;
    v21 = @"embedding";
    v22 = 2117;
    v23 = text;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nEmbeddingRequest text: %{sensitive}@", &v18, 0x20u);
  }

  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[CDMEmbeddingProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s calling SiriBERT embedding", &v18, 0xCu);
  }

  if ([(CDMEmbeddingProtoService *)self getServiceState]!= 2)
  {
    createNotReadyForHandleProtoResponse = [(CDMEmbeddingProtoService *)self createNotReadyForHandleProtoResponse];
    goto LABEL_11;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CDMEmbeddingProtoService *)selfCopy hasEmbedderOrchestrator])
  {
    objc_sync_exit(selfCopy);

    createNotReadyForHandleProtoResponse = [(CDMEmbeddingProtoService *)selfCopy doEmbedding:handleCopy];
LABEL_11:
    v11 = createNotReadyForHandleProtoResponse;
    goto LABEL_17;
  }

  embedders = selfCopy->_embedders;
  v13 = CDMLogContext;
  v14 = os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_ERROR);
  if (embedders)
  {
    if (v14)
    {
      v18 = 136315394;
      v19 = "[CDMEmbeddingProtoService handle:]";
      v20 = 2112;
      v21 = @"embedding";
      v15 = "%s [ERR]: [insights-cdm-%@]:\nNo embedders were loaded";
LABEL_21:
      _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, v15, &v18, 0x16u);
    }
  }

  else if (v14)
  {
    v18 = 136315394;
    v19 = "[CDMEmbeddingProtoService handle:]";
    v20 = 2112;
    v21 = @"embedding";
    v15 = "%s [ERR]: [insights-cdm-%@]:\n_embedders array is nil";
    goto LABEL_21;
  }

  objc_sync_exit(selfCopy);

  v11 = 0;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)addEmbeddingModelItemToEmbedders:(id)embedders
{
  v55 = *MEMORY[0x1E69E9840];
  embeddersCopy = embedders;
  if (embeddersCopy)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      embeddingModelVersion = [embeddersCopy embeddingModelVersion];
      *buf = 136315394;
      v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v47 = 2112;
      v48 = embeddingModelVersion;
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Processing embedding config for model %@", buf, 0x16u);
    }

    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      isStableEmbeddingModel = [embeddersCopy isStableEmbeddingModel];
      *buf = 136315394;
      v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v47 = 1024;
      LODWORD(v48) = isStableEmbeddingModel;
      _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Is stable model: %d", buf, 0x12u);
    }

    v7 = MEMORY[0x1E696AAE8];
    embeddingModelPath = [embeddersCopy embeddingModelPath];
    v9 = [v7 bundleWithPath:embeddingModelPath];

    if (!v9)
    {
      self->super.super._serviceState = 3;
      createSetupResponseCommand2 = [(CDMEmbeddingProtoService *)self createEmptyEmbeddingsBundleResponse:embeddersCopy];
      goto LABEL_19;
    }

    bundlePath = [v9 bundlePath];
    v11 = [CDMEmbeddingProtoService isSiriInputRepresentationModel:bundlePath];

    if (v11)
    {
      v12 = [(CDMEmbeddingProtoService *)self assetsPathURLForModelBundle:v9];
      if (v12)
      {
        v13 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
          v47 = 2112;
          v48 = v12;
          _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Embeddings proto service passing assets path to embeddings orchestrator: %@", buf, 0x16u);
        }

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          embeddingModelVersion2 = [embeddersCopy embeddingModelVersion];
          *buf = 136315394;
          v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
          v47 = 2112;
          v48 = embeddingModelVersion2;
          _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s creating SNLPEmbedder for embeddings model: %@", buf, 0x16u);
        }

        v17 = [(CDMEmbeddingProtoService *)selfCopy2 createEmbedderOrchestrator:v12];
        v18 = [[Embedder alloc] initWithSnlpEmbedder:v17 andEmbeddingConfigItem:embeddersCopy];
        [(NSMutableArray *)selfCopy2->_embedders addObject:v18];
        v19 = v12;
        goto LABEL_14;
      }

      self->super.super._serviceState = 3;
      createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      v33 = MEMORY[0x1E696AEC0];
      v34 = [v9 description];
      v19 = [v33 stringWithFormat:@"Could not look up embeddings assets path %@", v34];

      v35 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
        v47 = 2112;
        v48 = v19;
        _os_log_impl(&dword_1DC287000, v35, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
      }

      v36 = [(CDMBaseService *)self createErrorWithCode:1 description:v19];
      [createSetupResponseCommand setCmdError:v36];

LABEL_33:
      goto LABEL_34;
    }

    v19 = [(CDMEmbeddingProtoService *)self legacyEmbeddingPaths:v9];
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      srcVocabPath = [v19 srcVocabPath];
      modelPath = [v19 modelPath];
      configPath = [v19 configPath];
      reformulationPath = [v19 reformulationPath];
      *buf = 136316162;
      v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v47 = 2112;
      v48 = srcVocabPath;
      v49 = 2112;
      v50 = modelPath;
      v51 = 2112;
      v52 = configPath;
      v53 = 2112;
      v54 = reformulationPath;
      _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s SrcVocabPath:%@, Model path:%@, Model config path:%@, Reformulation path:%@", buf, 0x34u);
    }

    srcVocabPath2 = [v19 srcVocabPath];
    if (srcVocabPath2)
    {
      modelPath2 = [v19 modelPath];
      if (modelPath2)
      {
        configPath2 = [v19 configPath];
        if (configPath2)
        {
          reformulationPath2 = [v19 reformulationPath];
          v28 = reformulationPath2 == 0;

          if (!v28)
          {
            selfCopy2 = self;
            objc_sync_enter(selfCopy2);
            srcVocabPath3 = [v19 srcVocabPath];
            modelPath3 = [v19 modelPath];
            configPath3 = [v19 configPath];
            reformulationPath3 = [v19 reformulationPath];
            v17 = [(CDMEmbeddingProtoService *)selfCopy2 createEmbedderOrchestrator:srcVocabPath3 embedding_bert_path:modelPath3 embedding_config_path:configPath3 reformulation_path:reformulationPath3];

            v18 = [[Embedder alloc] initWithSnlpEmbedder:v17 andEmbeddingConfigItem:embeddersCopy];
            [(NSMutableArray *)selfCopy2->_embedders addObject:v18];
LABEL_14:

            objc_sync_exit(selfCopy2);
            self->super.super._serviceState = 2;
            createSetupResponseCommand2 = [(CDMBaseService *)self createSetupResponseCommand];
LABEL_19:
            createSetupResponseCommand = createSetupResponseCommand2;
LABEL_34:

            goto LABEL_35;
          }

          goto LABEL_32;
        }
      }
    }

LABEL_32:
    self->super.super._serviceState = 3;
    createSetupResponseCommand = [(CDMEmbeddingProtoService *)self createEmbeddingsBundleMissingPathResponse];
    goto LABEL_33;
  }

  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s The CDMEmbeddingConfigItem to be used is nil. Fail the setup.", buf, 0xCu);
  }

  self->super.super._serviceState = 3;
  createSetupResponseCommand = [(CDMEmbeddingProtoService *)self createEmbeddingConfigItemEqualToNilResponse];
LABEL_35:

  v39 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)getStableEmbeddingModelItem:(id)item
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemCopy = item;
  v4 = [itemCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(itemCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isStableEmbeddingModel])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [itemCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)getSpecificEmbeddingModelItem:(id)item dependentEmbeddingConfigs:(id)configs embeddingVersion:(id)version
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  configsCopy = configs;
  versionCopy = version;
  v23 = itemCopy;
  v10 = [itemCopy objectForKey:versionCopy];

  v11 = versionCopy;
  if (v10)
  {
    v11 = [itemCopy objectForKey:versionCopy];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = configsCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v22 = configsCopy;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        embeddingModelVersion = [v16 embeddingModelVersion];
        v18 = [embeddingModelVersion rangeOfString:v11] == 0x7FFFFFFFFFFFFFFFLL;

        if (!v18)
        {
          v19 = v16;
          goto LABEL_13;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)warmup:(id)warmup
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[CDMEmbeddingProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Prewarm Embedding models", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels]&& [(CDMEmbeddingProtoService *)self hasEmbedderOrchestrator])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_embedders;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v15 + 1) + 8 * i) warmup];
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[CDMEmbeddingProtoService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, &v5->super.super, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. Embedding models will not prewarm.", buf, 0xCu);
    }
  }

  v9 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v12 = [(CDMWarmupResponseCommand *)v9 initWithServiceState:serviceState serviceName:serviceName];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)setup:(id)setup
{
  v30 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v26 = 136315138;
    v27 = "[CDMEmbeddingProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setup CDMEmbeddingProtoService", &v26, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  embeddingConfigs = [dynamicConfig embeddingConfigs];
  embeddingConfigs = self->_embeddingConfigs;
  self->_embeddingConfigs = embeddingConfigs;

  dataDispatcherContext = [setupCopy dataDispatcherContext];
  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = dataDispatcherContext;

  dynamicConfig2 = [setupCopy dynamicConfig];
  embeddingVersion = [dynamicConfig2 embeddingVersion];

  getDependentEmbeddingConfigs = [(CDMEmbeddingConfigs *)self->_embeddingConfigs getDependentEmbeddingConfigs];
  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v25 = [getDependentEmbeddingConfigs count];
    v26 = 136315394;
    v27 = "[CDMEmbeddingProtoService setup:]";
    v28 = 2048;
    v29 = v25;
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Initialize _embedders array with capacity %lu", &v26, 0x16u);
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(getDependentEmbeddingConfigs, "count")}];
  embedders = self->_embedders;
  self->_embedders = v15;

  if (embeddingVersion)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v26 = 136315394;
      v27 = "[CDMEmbeddingProtoService setup:]";
      v28 = 2112;
      v29 = embeddingVersion;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s Client Embedding version is not nil and the value is %@.", &v26, 0x16u);
    }

    getEmbeddingVersionDictionary = [(CDMEmbeddingConfigs *)self->_embeddingConfigs getEmbeddingVersionDictionary];
    v19 = [(CDMEmbeddingProtoService *)self getSpecificEmbeddingModelItem:getEmbeddingVersionDictionary dependentEmbeddingConfigs:getDependentEmbeddingConfigs embeddingVersion:embeddingVersion];
    if (v19)
    {
      createNoStableEmbeddingsModelFoundResponse = [(CDMEmbeddingProtoService *)self addEmbeddingModelItemToEmbedders:v19];
LABEL_16:

      goto LABEL_18;
    }

    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v26 = 136315138;
      v27 = "[CDMEmbeddingProtoService setup:]";
      _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Embedding version not found; fallback to stable embedding.", &v26, 0xCu);
    }
  }

  v19 = [(CDMEmbeddingProtoService *)self getStableEmbeddingModelItem:getDependentEmbeddingConfigs];
  if (v19)
  {
    createNoStableEmbeddingsModelFoundResponse = [(CDMEmbeddingProtoService *)self addEmbeddingModelItemToEmbedders:v19];
    getEmbeddingVersionDictionary = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(getEmbeddingVersionDictionary, OS_LOG_TYPE_INFO))
    {
      embeddingModelVersion = [v19 embeddingModelVersion];
      v26 = 136315394;
      v27 = "[CDMEmbeddingProtoService setup:]";
      v28 = 2112;
      v29 = embeddingModelVersion;
      _os_log_impl(&dword_1DC287000, getEmbeddingVersionDictionary, OS_LOG_TYPE_INFO, "%s Embeddings model successfully loaded: %@", &v26, 0x16u);
    }

    goto LABEL_16;
  }

  self->super.super._serviceState = 3;
  createNoStableEmbeddingsModelFoundResponse = [(CDMEmbeddingProtoService *)self createNoStableEmbeddingsModelFoundResponse];
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];

  return createNoStableEmbeddingsModelFoundResponse;
}

- (id)legacyEmbeddingPaths:(id)paths
{
  v22 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    bundlePath = [pathsCopy bundlePath];
    v18 = 136315394;
    v19 = "[CDMEmbeddingProtoService legacyEmbeddingPaths:]";
    v20 = 2112;
    v21 = bundlePath;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Load legacy owl asset from: %@", &v18, 0x16u);
  }

  v5 = MEMORY[0x1E696AAE8];
  bundlePath2 = [pathsCopy bundlePath];
  v7 = [bundlePath2 stringByAppendingPathComponent:@"model_bundle/pathsCopy/bert.mlmodelc"];
  stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
  v9 = [v5 bundleWithPath:stringByDeletingLastPathComponent];

  v10 = [v9 pathForResource:@"src_vocab" ofType:@"txt"];
  v11 = [pathsCopy pathForResource:@"model.espresso" ofType:@"net" inDirectory:@"model_bundle/pathsCopy/bert.mlmodelc"];
  v12 = [pathsCopy pathForResource:@"config" ofType:@"json" inDirectory:@"model_bundle/pathsCopy/bert.mlmodelc"];
  v13 = [v9 pathForResource:@"reformulations" ofType:@"txt"];
  v14 = [[EmbeddingPaths alloc] initWithSrcVocabPath:v10 modelPath:v11 configPath:v12 reformulationPath:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)createOrchestratorConstructFailureResponse
{
  v13 = *MEMORY[0x1E69E9840];
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get EmbedderOrchestrator"];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[CDMEmbeddingProtoService createOrchestratorConstructFailureResponse]";
    v11 = 2112;
    v12 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v9, 0x16u);
  }

  v6 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:4 description:v4];
  [createSetupResponseCommand setCmdError:v6];

  v7 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)createEmbeddingsBundleMissingPathResponse
{
  v13 = *MEMORY[0x1E69E9840];
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not able to find/load all values needed for Embedding model bundle."];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[CDMEmbeddingProtoService createEmbeddingsBundleMissingPathResponse]";
    v11 = 2112;
    v12 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v9, 0x16u);
  }

  v6 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:3 description:v4];
  [createSetupResponseCommand setCmdError:v6];

  v7 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)createNoStableEmbeddingsModelFoundResponse
{
  v13 = *MEMORY[0x1E69E9840];
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No stable embeddings model found. Aborting setup."];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[CDMEmbeddingProtoService createNoStableEmbeddingsModelFoundResponse]";
    v11 = 2112;
    v12 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v9, 0x16u);
  }

  v6 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:2 description:v4];
  [createSetupResponseCommand setCmdError:v6];

  v7 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)createEmbeddingConfigItemEqualToNilResponse
{
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CDM EmbeddingConfigItem is Nil. Aborting setup."];
  v5 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:5 description:v4];
  [createSetupResponseCommand setCmdError:v5];

  return createSetupResponseCommand;
}

- (id)createEmptyEmbeddingsBundleResponse:(id)response
{
  responseCopy = response;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v6 = MEMORY[0x1E696AEC0];
  embeddingModelPath = [responseCopy embeddingModelPath];
  v8 = [v6 stringWithFormat:@"Not able to find/load Bert Embedding model bundle directory from path: %@.", embeddingModelPath];
  v9 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:1 description:v8];
  [createSetupResponseCommand setCmdError:v9];

  return createSetupResponseCommand;
}

- (id)createNotReadyForHandleProtoResponse
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    serviceState = self->super.super._serviceState;
    v9 = 136315394;
    v10 = "[CDMEmbeddingProtoService createNotReadyForHandleProtoResponse]";
    v11 = 2048;
    v12 = serviceState;
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", &v9, 0x16u);
  }

  v5 = objc_alloc_init(CDMEmbeddingProtoResponseCommand);
  v6 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:0 description:@"Service not ready to handle requests"];
  [(CDMBaseCommand *)v5 setCmdError:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)createEmbeddingProtoServiceErrorWithCode:(int64_t)code description:(id)description
{
  v14[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v7 = MEMORY[0x1E696ABC0];
  serviceName = [(CDMBaseService *)self serviceName];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = descriptionCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v7 errorWithDomain:serviceName code:code userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)isSiriInputRepresentationModel:(id)model
{
  pathComponents = [model pathComponents];
  v4 = [pathComponents containsObject:@"siri_input_representations"];

  return v4;
}

@end