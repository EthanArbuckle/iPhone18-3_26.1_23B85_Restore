@interface CDMEmbeddingProtoService
+ (BOOL)isSiriInputRepresentationModel:(id)a3;
+ (id)getCDMServiceAssetConfig;
- (BOOL)hasEmbedderOrchestrator;
- (id)addEmbeddingModelItemToEmbedders:(id)a3;
- (id)assetsPathURLForModelBundle:(id)a3;
- (id)createEmbedderOrchestrator:(id)a3;
- (id)createEmbedderOrchestrator:(id)a3 embedding_bert_path:(id)a4 embedding_config_path:(id)a5 reformulation_path:(id)a6;
- (id)createEmbeddingConfigItemEqualToNilResponse;
- (id)createEmbeddingProtoServiceErrorWithCode:(int64_t)a3 description:(id)a4;
- (id)createEmbeddingsBundleMissingPathResponse;
- (id)createEmptyEmbeddingsBundleResponse:(id)a3;
- (id)createNoStableEmbeddingsModelFoundResponse;
- (id)createNotReadyForHandleProtoResponse;
- (id)createOrchestratorConstructFailureResponse;
- (id)doEmbedding:(id)a3;
- (id)getSpecificEmbeddingModelItem:(id)a3 dependentEmbeddingConfigs:(id)a4 embeddingVersion:(id)a5;
- (id)getStableEmbeddingModelItem:(id)a3;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)legacyEmbeddingPaths:(id)a3;
- (id)setup:(id)a3;
- (id)warmup:(id)a3;
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

- (id)doEmbedding:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v42 = a3;
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
      v37 = [v42 request];
      *buf = 136315395;
      v52 = "[CDMEmbeddingProtoService doEmbedding:]";
      v53 = 2117;
      v54 = v37;
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
        v11 = [v8 snlpEmbedder];
        v12 = [v42 request];
        v13 = [v11 getEmbeddings:v12];

        [v9 setEmbeddingDim:{objc_msgSend(v13, "embeddingDim")}];
        v14 = [v13 embeddingTensorOutputs];
        v15 = [v14 objectAtIndexedSubscript:0];
        v16 = [v15 embeddingTensor];
        [v9 setEmbeddingTensor:v16];

        v17 = [v8 embeddingConfigItem];
        [v9 setIsStableEmbeddingsVersion:{objc_msgSend(v17, "isStableEmbeddingModel")}];

        v18 = [v8 embeddingConfigItem];
        v19 = [v18 embeddingModelVersion];
        [v9 setEmbeddingVersion:v19];

        if ([v9 isStableEmbeddingsVersion])
        {
          v20 = v13;

          v45 = v20;
        }

        [v44 addObject:{v9, v38}];
        [v10 setEmbeddingDim:{objc_msgSend(v13, "embeddingDim")}];
        v21 = [v13 subwordEmbeddingTensorOutputs];
        v22 = [v21 objectAtIndexedSubscript:0];
        v23 = [v22 embeddingTensor];
        [v10 setEmbeddingTensor:v23];

        v24 = [v8 embeddingConfigItem];
        v25 = [v24 embeddingModelVersion];
        [v10 setEmbeddingVersion:v25];

        [v43 addObject:v10];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v6);

    if (v45)
    {
      v26 = [v45 tokenChain];
      [v38 setTokenChain:v26];

      [v38 setNumToken:{objc_msgSend(v45, "numToken")}];
      v27 = [v45 subwordTokenChain];
      [v38 setSubwordTokenChain:v27];

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
        v31 = [v38 embeddingTensorOutputs];
        v32 = [v31 count];
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

- (id)createEmbedderOrchestrator:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69D1460]) initFromAssetDirectoryURL:v3];

  return v4;
}

- (id)createEmbedderOrchestrator:(id)a3 embedding_bert_path:(id)a4 embedding_config_path:(id)a5 reformulation_path:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x1E69D1460]) initFromSourceVocabPath:v9 bertModelPath:v10 bertConfigPath:v11 reformulatorPath:v12];

  return v13;
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
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[CDMEmbeddingProtoService assetsPathURLForModelBundle:]";
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: Embeddings assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)handle:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 request];
  v6 = [v5 text];

  if ([(CDMDataDispatcherContext *)self->_dataDispatcherContext cdmSELFLoggingPolicyType]== 2)
  {

    v6 = @"<Redacted>";
  }

  v7 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315651;
    v19 = "[CDMEmbeddingProtoService handle:]";
    v20 = 2112;
    v21 = @"embedding";
    v22 = 2117;
    v23 = v6;
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
    v10 = [(CDMEmbeddingProtoService *)self createNotReadyForHandleProtoResponse];
    goto LABEL_11;
  }

  v9 = self;
  objc_sync_enter(v9);
  if ([(CDMEmbeddingProtoService *)v9 hasEmbedderOrchestrator])
  {
    objc_sync_exit(v9);

    v10 = [(CDMEmbeddingProtoService *)v9 doEmbedding:v4];
LABEL_11:
    v11 = v10;
    goto LABEL_17;
  }

  embedders = v9->_embedders;
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

  objc_sync_exit(v9);

  v11 = 0;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)addEmbeddingModelItemToEmbedders:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v4 embeddingModelVersion];
      *buf = 136315394;
      v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v47 = 2112;
      v48 = v37;
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Processing embedding config for model %@", buf, 0x16u);
    }

    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v38 = [v4 isStableEmbeddingModel];
      *buf = 136315394;
      v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v47 = 1024;
      LODWORD(v48) = v38;
      _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Is stable model: %d", buf, 0x12u);
    }

    v7 = MEMORY[0x1E696AAE8];
    v8 = [v4 embeddingModelPath];
    v9 = [v7 bundleWithPath:v8];

    if (!v9)
    {
      self->super.super._serviceState = 3;
      v20 = [(CDMEmbeddingProtoService *)self createEmptyEmbeddingsBundleResponse:v4];
      goto LABEL_19;
    }

    v10 = [v9 bundlePath];
    v11 = [CDMEmbeddingProtoService isSiriInputRepresentationModel:v10];

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

        v14 = self;
        objc_sync_enter(v14);
        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v4 embeddingModelVersion];
          *buf = 136315394;
          v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
          v47 = 2112;
          v48 = v16;
          _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s creating SNLPEmbedder for embeddings model: %@", buf, 0x16u);
        }

        v17 = [(CDMEmbeddingProtoService *)v14 createEmbedderOrchestrator:v12];
        v18 = [[Embedder alloc] initWithSnlpEmbedder:v17 andEmbeddingConfigItem:v4];
        [(NSMutableArray *)v14->_embedders addObject:v18];
        v19 = v12;
        goto LABEL_14;
      }

      self->super.super._serviceState = 3;
      v22 = [(CDMBaseService *)self createSetupResponseCommand];
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
      [v22 setCmdError:v36];

LABEL_33:
      goto LABEL_34;
    }

    v19 = [(CDMEmbeddingProtoService *)self legacyEmbeddingPaths:v9];
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v41 = [v19 srcVocabPath];
      v42 = [v19 modelPath];
      v43 = [v19 configPath];
      v44 = [v19 reformulationPath];
      *buf = 136316162;
      v46 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v47 = 2112;
      v48 = v41;
      v49 = 2112;
      v50 = v42;
      v51 = 2112;
      v52 = v43;
      v53 = 2112;
      v54 = v44;
      _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s SrcVocabPath:%@, Model path:%@, Model config path:%@, Reformulation path:%@", buf, 0x34u);
    }

    v24 = [v19 srcVocabPath];
    if (v24)
    {
      v25 = [v19 modelPath];
      if (v25)
      {
        v26 = [v19 configPath];
        if (v26)
        {
          v27 = [v19 reformulationPath];
          v28 = v27 == 0;

          if (!v28)
          {
            v14 = self;
            objc_sync_enter(v14);
            v29 = [v19 srcVocabPath];
            v30 = [v19 modelPath];
            v31 = [v19 configPath];
            v32 = [v19 reformulationPath];
            v17 = [(CDMEmbeddingProtoService *)v14 createEmbedderOrchestrator:v29 embedding_bert_path:v30 embedding_config_path:v31 reformulation_path:v32];

            v18 = [[Embedder alloc] initWithSnlpEmbedder:v17 andEmbeddingConfigItem:v4];
            [(NSMutableArray *)v14->_embedders addObject:v18];
LABEL_14:

            objc_sync_exit(v14);
            self->super.super._serviceState = 2;
            v20 = [(CDMBaseService *)self createSetupResponseCommand];
LABEL_19:
            v22 = v20;
LABEL_34:

            goto LABEL_35;
          }

          goto LABEL_32;
        }
      }
    }

LABEL_32:
    self->super.super._serviceState = 3;
    v22 = [(CDMEmbeddingProtoService *)self createEmbeddingsBundleMissingPathResponse];
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
  v22 = [(CDMEmbeddingProtoService *)self createEmbeddingConfigItemEqualToNilResponse];
LABEL_35:

  v39 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)getStableEmbeddingModelItem:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isStableEmbeddingModel])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)getSpecificEmbeddingModelItem:(id)a3 dependentEmbeddingConfigs:(id)a4 embeddingVersion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23 = v7;
  v10 = [v7 objectForKey:v9];

  v11 = v9;
  if (v10)
  {
    v11 = [v7 objectForKey:v9];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v22 = v8;
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
        v17 = [v16 embeddingModelVersion];
        v18 = [v17 rangeOfString:v11] == 0x7FFFFFFFFFFFFFFFLL;

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

- (id)warmup:(id)a3
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
  v10 = [(CDMBaseService *)self serviceState];
  v11 = [(CDMBaseService *)self serviceName];
  v12 = [(CDMWarmupResponseCommand *)v9 initWithServiceState:v10 serviceName:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)setup:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v26 = 136315138;
    v27 = "[CDMEmbeddingProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setup CDMEmbeddingProtoService", &v26, 0xCu);
  }

  v6 = [v4 dynamicConfig];
  v7 = [v6 embeddingConfigs];
  embeddingConfigs = self->_embeddingConfigs;
  self->_embeddingConfigs = v7;

  v9 = [v4 dataDispatcherContext];
  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = v9;

  v11 = [v4 dynamicConfig];
  v12 = [v11 embeddingVersion];

  v13 = [(CDMEmbeddingConfigs *)self->_embeddingConfigs getDependentEmbeddingConfigs];
  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v13 count];
    v26 = 136315394;
    v27 = "[CDMEmbeddingProtoService setup:]";
    v28 = 2048;
    v29 = v25;
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Initialize _embedders array with capacity %lu", &v26, 0x16u);
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  embedders = self->_embedders;
  self->_embedders = v15;

  if (v12)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v26 = 136315394;
      v27 = "[CDMEmbeddingProtoService setup:]";
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s Client Embedding version is not nil and the value is %@.", &v26, 0x16u);
    }

    v18 = [(CDMEmbeddingConfigs *)self->_embeddingConfigs getEmbeddingVersionDictionary];
    v19 = [(CDMEmbeddingProtoService *)self getSpecificEmbeddingModelItem:v18 dependentEmbeddingConfigs:v13 embeddingVersion:v12];
    if (v19)
    {
      v20 = [(CDMEmbeddingProtoService *)self addEmbeddingModelItemToEmbedders:v19];
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

  v19 = [(CDMEmbeddingProtoService *)self getStableEmbeddingModelItem:v13];
  if (v19)
  {
    v20 = [(CDMEmbeddingProtoService *)self addEmbeddingModelItemToEmbedders:v19];
    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = [v19 embeddingModelVersion];
      v26 = 136315394;
      v27 = "[CDMEmbeddingProtoService setup:]";
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s Embeddings model successfully loaded: %@", &v26, 0x16u);
    }

    goto LABEL_16;
  }

  self->super.super._serviceState = 3;
  v20 = [(CDMEmbeddingProtoService *)self createNoStableEmbeddingsModelFoundResponse];
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)legacyEmbeddingPaths:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v3 bundlePath];
    v18 = 136315394;
    v19 = "[CDMEmbeddingProtoService legacyEmbeddingPaths:]";
    v20 = 2112;
    v21 = v17;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Load legacy owl asset from: %@", &v18, 0x16u);
  }

  v5 = MEMORY[0x1E696AAE8];
  v6 = [v3 bundlePath];
  v7 = [v6 stringByAppendingPathComponent:@"model_bundle/v3/bert.mlmodelc"];
  v8 = [v7 stringByDeletingLastPathComponent];
  v9 = [v5 bundleWithPath:v8];

  v10 = [v9 pathForResource:@"src_vocab" ofType:@"txt"];
  v11 = [v3 pathForResource:@"model.espresso" ofType:@"net" inDirectory:@"model_bundle/v3/bert.mlmodelc"];
  v12 = [v3 pathForResource:@"config" ofType:@"json" inDirectory:@"model_bundle/v3/bert.mlmodelc"];
  v13 = [v9 pathForResource:@"reformulations" ofType:@"txt"];
  v14 = [[EmbeddingPaths alloc] initWithSrcVocabPath:v10 modelPath:v11 configPath:v12 reformulationPath:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)createOrchestratorConstructFailureResponse
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CDMBaseService *)self createSetupResponseCommand];
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
  [v3 setCmdError:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)createEmbeddingsBundleMissingPathResponse
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CDMBaseService *)self createSetupResponseCommand];
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
  [v3 setCmdError:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)createNoStableEmbeddingsModelFoundResponse
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CDMBaseService *)self createSetupResponseCommand];
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
  [v3 setCmdError:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)createEmbeddingConfigItemEqualToNilResponse
{
  v3 = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CDM EmbeddingConfigItem is Nil. Aborting setup."];
  v5 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:5 description:v4];
  [v3 setCmdError:v5];

  return v3;
}

- (id)createEmptyEmbeddingsBundleResponse:(id)a3
{
  v4 = a3;
  v5 = [(CDMBaseService *)self createSetupResponseCommand];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 embeddingModelPath];
  v8 = [v6 stringWithFormat:@"Not able to find/load Bert Embedding model bundle directory from path: %@.", v7];
  v9 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:1 description:v8];
  [v5 setCmdError:v9];

  return v5;
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

- (id)createEmbeddingProtoServiceErrorWithCode:(int64_t)a3 description:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E696ABC0];
  v8 = [(CDMBaseService *)self serviceName];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v7 errorWithDomain:v8 code:a3 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)isSiriInputRepresentationModel:(id)a3
{
  v3 = [a3 pathComponents];
  v4 = [v3 containsObject:@"siri_input_representations"];

  return v4;
}

@end