@interface SGQuickResponsesModel
+ (id)_sharedInvalidKeysCache;
+ (id)_sharedTransformerCache;
+ (id)_transformerCacheKeyForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path;
+ (id)configForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath;
+ (id)featuresOf:(id)of inLanguage:(id)language andMode:(unint64_t)mode;
+ (id)featuresOf:(id)of withFeaturizer:(id)featurizer source:(id)source;
+ (id)labelOf:(id)of inLanguage:(id)language;
+ (id)labelOf:(id)of withLabeler:(id)labeler;
+ (id)modelForLanguage:(id)language mode:(unint64_t)mode chunkPath:(id)path plistPath:(id)plistPath vocabPath:(id)vocabPath;
+ (id)modelForLanguage:(id)language mode:(unint64_t)mode chunkPath:(id)path plistPath:(id)plistPath vocabPath:(id)vocabPath modelTypeAndSubModelKey:(id)key;
+ (id)newTransformerInstanceForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath;
+ (id)transformerInstanceForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath;
+ (void)_addModelAssetUpdateHandler;
- (SGQuickResponsesModel)initWithEntity:(id)entity type:(id)type mode:(unint64_t)mode language:(id)language class:(Class)class modelPath:(id)path plistPath:(id)plistPath vocabPath:(id)self0;
- (id)featuresOf:(id)of;
- (id)labelOf:(id)of;
- (id)predict:(id)predict;
@end

@implementation SGQuickResponsesModel

- (SGQuickResponsesModel)initWithEntity:(id)entity type:(id)type mode:(unint64_t)mode language:(id)language class:(Class)class modelPath:(id)path plistPath:(id)plistPath vocabPath:(id)self0
{
  v60 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  typeCopy = type;
  languageCopy = language;
  pathCopy = path;
  plistPathCopy = plistPath;
  vocabPathCopy = vocabPath;
  v21 = objc_opt_class();
  if (pathCopy && v21 == class)
  {
    v47 = entityCopy;
    v22 = [SGMultiLabelEspressoClassifierCached classifierWithEspressoModelFile:pathCopy];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      goto LABEL_16;
    }

    if (!pathCopy)
    {
      v23 = plistPathCopy;
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = modelModeName(mode);
      pathCopy = [v24 initWithFormat:@"%@_%@_%@%@Model.chunk", v25, languageCopy, entityCopy, typeCopy];

      v26 = [SGDefaultAssets checkFilesystemPathForFilename:pathCopy];
      if (!v26)
      {
        plistPathCopy = v23;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          uTF8String = [pathCopy UTF8String];
          _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to locate assets resource %s", buf, 0xCu);
        }

        goto LABEL_18;
      }

      v27 = v26;

      pathCopy = v27;
      plistPathCopy = v23;
    }

    v47 = entityCopy;
    v22 = PMLReadChunkFile();
  }

  v28 = v22;
  if (!v22)
  {
    entityCopy = v47;
LABEL_16:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 136316162;
      uTF8String = [pathCopy UTF8String];
      v52 = 2112;
      v53 = typeCopy;
      v54 = 2112;
      v55 = entityCopy;
      v56 = 2048;
      modeCopy = mode;
      v58 = 2112;
      v59 = languageCopy;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to load model file resource %s, with type:%@, modelEntity:%@, mode:%lu, language:%@", buf, 0x34u);
    }

LABEL_18:
    selfCopy = 0;
    goto LABEL_27;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:240 description:{@"Chunk file at %@ not the same class as type %@", pathCopy, typeCopy}];
  }

  v29 = [objc_opt_class() transformerInstanceForLanguage:languageCopy mode:mode plistPath:plistPathCopy vocabPath:vocabPathCopy];
  v30 = v29;
  if (v29)
  {
    v45 = plistPathCopy;
    config = [v29 config];
    mode = [config mode];
    config2 = [v30 config];
    v34 = config2;
    if (mode == 1)
    {
      replies = [config2 replies];
      modelCount = [replies modelCount];
    }

    else
    {
      replies = [config2 labels];
      modelCount = [replies count];
    }

    v38 = modelCount;

    if ([v28 outputDimension] != v38)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"model.outputDimension == configCount"}];
    }

    v49.receiver = self;
    v49.super_class = SGQuickResponsesModel;
    v39 = [(SGQuickResponsesModel *)&v49 init];
    p_isa = &v39->super.isa;
    plistPathCopy = v45;
    if (v39)
    {
      objc_storeStrong(&v39->_model, v28);
      objc_storeStrong(p_isa + 2, v30);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  entityCopy = v47;
LABEL_27:

  v41 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)labelOf:(id)of
{
  transformer = self->_transformer;
  ofCopy = of;
  labeler = [(SGQuickResponsesTransformerInstance *)transformer labeler];
  v6 = [SGQuickResponsesModel labelOf:ofCopy withLabeler:labeler];

  return v6;
}

- (id)featuresOf:(id)of
{
  transformer = self->_transformer;
  ofCopy = of;
  featurizer = [(SGQuickResponsesTransformerInstance *)transformer featurizer];
  source = [(SGQuickResponsesTransformerInstance *)self->_transformer source];
  v8 = [SGQuickResponsesModel featuresOf:ofCopy withFeaturizer:featurizer source:source];

  return v8;
}

- (id)predict:(id)predict
{
  predictCopy = predict;
  v5 = objc_opt_class();
  source = [predictCopy source];
  if (([v5 isEqual:{objc_msgSend(source, "modelClass")}] & 1) == 0)
  {
    __assert_rtn("[SGQuickResponsesModel predict:]", "SGQuickResponsesModel.m", 67, "[[self class] isEqual:features.source.modelClass]");
  }

  model = self->_model;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = self->_model;
  vector = [predictCopy vector];
  v11 = vector;
  if (isKindOfClass)
  {
    vectorWithConstantColumn = [vector vectorWithConstantColumn];
    v13 = [(PMLMultiLabelClassifierProtocol *)v9 predict:vectorWithConstantColumn];
  }

  else
  {
    v13 = [(PMLMultiLabelClassifierProtocol *)v9 predict:vector];
  }

  return v13;
}

+ (id)newTransformerInstanceForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:345 description:{@"%@ must implement +newTransformerInstanceForLanguage:mode:plistPath:", objc_opt_class()}];

  return 0;
}

+ (void)_addModelAssetUpdateHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SGQuickResponsesModel__addModelAssetUpdateHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_addModelAssetUpdateHandler_onceToken_499 != -1)
  {
    dispatch_once(&_addModelAssetUpdateHandler_onceToken_499, block);
  }
}

uint64_t __52__SGQuickResponsesModel__addModelAssetUpdateHandler__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__SGQuickResponsesModel__addModelAssetUpdateHandler__block_invoke_2;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = *(a1 + 32);
  return [SGModelAsset registerOnUpdateBlock:v2];
}

void __52__SGQuickResponsesModel__addModelAssetUpdateHandler__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _sharedTransformerCache];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) _sharedInvalidKeysCache];
  [v3 runWithLockAcquired:&__block_literal_global_81];
}

+ (id)_sharedInvalidKeysCache
{
  if (_sharedInvalidKeysCache__pasOnceToken795 != -1)
  {
    dispatch_once(&_sharedInvalidKeysCache__pasOnceToken795, &__block_literal_global_73);
  }

  v3 = _sharedInvalidKeysCache__pasExprOnceResult;

  return [v3 result];
}

void __48__SGQuickResponsesModel__sharedInvalidKeysCache__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_76];
  v2 = _sharedInvalidKeysCache__pasExprOnceResult;
  _sharedInvalidKeysCache__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __48__SGQuickResponsesModel__sharedInvalidKeysCache__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = objc_opt_new();
  v2 = [v0 initWithGuardedData:v1];

  return v2;
}

+ (id)_sharedTransformerCache
{
  if (_sharedTransformerCache__pasOnceToken794 != -1)
  {
    dispatch_once(&_sharedTransformerCache__pasOnceToken794, &__block_literal_global_501);
  }

  v3 = _sharedTransformerCache__pasExprOnceResult;

  return [v3 result];
}

void __48__SGQuickResponsesModel__sharedTransformerCache__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_70 idleTimeout:600.0];
  v2 = _sharedTransformerCache__pasExprOnceResult;
  _sharedTransformerCache__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __48__SGQuickResponsesModel__sharedTransformerCache__block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:6];

  return v0;
}

+ (id)_transformerCacheKeyForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path
{
  v8 = MEMORY[0x277CCACA8];
  pathCopy = path;
  languageCopy = language;
  v11 = [v8 alloc];
  if (languageCopy)
  {
    v12 = languageCopy;
  }

  else
  {
    v12 = &stru_285992FC0;
  }

  v13 = NSStringFromClass(self);
  v14 = v13;
  if (pathCopy)
  {
    v15 = pathCopy;
  }

  else
  {
    v15 = &stru_285992FC0;
  }

  v16 = [v11 initWithFormat:@"%@%lu%@%@", v12, mode, v13, v15];

  return v16;
}

+ (id)transformerInstanceForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath
{
  v56 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  pathCopy = path;
  vocabPathCopy = vocabPath;
  if (__mockTransformerForTesting)
  {
    v13 = objc_opt_class();
    source = [__mockTransformerForTesting source];
    modelClass = [source modelClass];

    if (v13 == modelClass)
    {
      config = [__mockTransformerForTesting config];
      language = [config language];
      if ([language isEqualToString:languageCopy])
      {
        mode = [config mode];

        if (mode == mode)
        {
          v19 = __mockTransformerForTesting;

          goto LABEL_16;
        }
      }

      else
      {
      }
    }
  }

  v20 = objc_autoreleasePoolPush();
  v21 = [self _transformerCacheKeyForLanguage:languageCopy mode:mode plistPath:pathCopy];
  if (mode != 1 && !pathCopy)
  {
    [self _addModelAssetUpdateHandler];
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__510;
  v46 = __Block_byref_object_dispose__511;
  v47 = 0;
  _sharedInvalidKeysCache = [self _sharedInvalidKeysCache];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __81__SGQuickResponsesModel_transformerInstanceForLanguage_mode_plistPath_vocabPath___block_invoke;
  v34[3] = &unk_278EB7980;
  v23 = v21;
  v35 = v23;
  v39 = &v42;
  selfCopy = self;
  v24 = languageCopy;
  v36 = v24;
  modeCopy = mode;
  v25 = pathCopy;
  v37 = v25;
  v38 = vocabPathCopy;
  [_sharedInvalidKeysCache runWithLockAcquired:v34];

  v26 = v43[5];
  if (!v26)
  {
    v27 = MEMORY[0x277D86220];
    v28 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = modelModeName(mode);
      *buf = 138413058;
      v49 = v32;
      v50 = 2112;
      v51 = v24;
      v52 = 2112;
      v53 = v33;
      v54 = 2112;
      v55 = v25;
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "No transformer instance for model %@ in language %@ and mode %@ at path %@", buf, 0x2Au);
    }

    v26 = v43[5];
  }

  v19 = v26;

  _Block_object_dispose(&v42, 8);
  objc_autoreleasePoolPop(v20);
LABEL_16:

  v29 = *MEMORY[0x277D85DE8];

  return v19;
}

void __81__SGQuickResponsesModel_transformerInstanceForLanguage_mode_plistPath_vocabPath___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (([v11 containsObject:*(a1 + 32)] & 1) == 0)
  {
    v3 = [*(a1 + 72) _sharedTransformerCache];
    v4 = [v3 objectForKey:*(a1 + 32)];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v7 = [*(a1 + 72) newTransformerInstanceForLanguage:*(a1 + 40) mode:*(a1 + 80) plistPath:*(a1 + 48) vocabPath:*(a1 + 56)];
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v10 = [*(a1 + 72) _sharedTransformerCache];
        [v10 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 32)];
      }

      else
      {
        [v11 addObject:*(a1 + 32)];
      }
    }
  }
}

+ (id)modelForLanguage:(id)language mode:(unint64_t)mode chunkPath:(id)path plistPath:(id)plistPath vocabPath:(id)vocabPath modelTypeAndSubModelKey:(id)key
{
  v32 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  pathCopy = path;
  plistPathCopy = plistPath;
  vocabPathCopy = vocabPath;
  keyCopy = key;
  v18 = pathCopy;
  first = [keyCopy first];
  v20 = [first isEqualToString:@"quickResponsesBinaryLogisticMultiLabel"];

  if (v20)
  {
    v21 = [(SGQuickResponsesModel *)[SGQuickResponsesClassificationModel alloc] initWithEntity:@"quickResponses" type:@"BinaryLogisticMultiLabel" mode:mode language:languageCopy class:objc_opt_class() modelPath:v18 plistPath:plistPathCopy vocabPath:vocabPathCopy];
  }

  else
  {
    first2 = [keyCopy first];
    v23 = [first2 isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      second = [keyCopy second];
      v26 = [v24 initWithFormat:@"%@:%@", v18, second];

      v21 = [(SGQuickResponsesModel *)[SGQuickResponsesClassificationModel alloc] initWithEntity:@"quickResponses" type:@"EspressoClassifierMultiLabel" mode:mode language:languageCopy class:objc_opt_class() modelPath:v26 plistPath:plistPathCopy vocabPath:vocabPathCopy];
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      first3 = [keyCopy first];
      *buf = 136315138;
      uTF8String = [first3 UTF8String];
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown model name: %s", buf, 0xCu);
    }

    v21 = 0;
  }

  v26 = v18;
LABEL_9:

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)modelForLanguage:(id)language mode:(unint64_t)mode chunkPath:(id)path plistPath:(id)plistPath vocabPath:(id)vocabPath
{
  v30 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  pathCopy = path;
  plistPathCopy = plistPath;
  vocabPathCopy = vocabPath;
  v16 = [SGQuickResponsesConfig configWithLanguage:languageCopy mode:mode plistPath:plistPathCopy vocabPath:vocabPathCopy];
  v17 = v16;
  if (v16)
  {
    predictionParams = [v16 predictionParams];
    modelTypeName = [predictionParams modelTypeName];

    predictionParams2 = [v17 predictionParams];
    subModelKeyString = [predictionParams2 subModelKeyString];

    v22 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:modelTypeName second:subModelKeyString];
    v23 = [self modelForLanguage:languageCopy mode:mode chunkPath:pathCopy plistPath:plistPathCopy vocabPath:vocabPathCopy modelTypeAndSubModelKey:v22];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = 138412546;
      v27 = languageCopy;
      v28 = 2112;
      v29 = plistPathCopy;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "config not found for language %@ and plist path %@", &v26, 0x16u);
    }

    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)labelOf:(id)of inLanguage:(id)language
{
  ofCopy = of;
  v7 = [self transformerInstanceForLanguage:language mode:0];
  v8 = v7;
  if (v7)
  {
    labeler = [v7 labeler];
    v10 = [SGQuickResponsesModel labelOf:ofCopy withLabeler:labeler];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)labelOf:(id)of withLabeler:(id)labeler
{
  ofCopy = of;
  labelerCopy = labeler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"[data isKindOfClass:NSString.class]"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [labelerCopy transform:ofCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"[label isKindOfClass:NSNumber.class]"}];
  }

  objc_autoreleasePoolPop(v9);

  return v10;
}

+ (id)featuresOf:(id)of inLanguage:(id)language andMode:(unint64_t)mode
{
  ofCopy = of;
  v9 = [self transformerInstanceForLanguage:language mode:mode];
  v10 = v9;
  if (v9)
  {
    featurizer = [v9 featurizer];
    source = [v10 source];
    v13 = [SGQuickResponsesModel featuresOf:ofCopy withFeaturizer:featurizer source:source];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)featuresOf:(id)of withFeaturizer:(id)featurizer source:(id)source
{
  ofCopy = of;
  featurizerCopy = featurizer;
  sourceCopy = source;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"[data isKindOfClass:NSString.class]"}];
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [featurizerCopy transform:ofCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"[vector isKindOfClass:PMLSparseVector.class]"}];
  }

  v14 = [[SGModelFeatures alloc] initWithSource:sourceCopy vector:v13];

  objc_autoreleasePoolPop(v12);

  return v14;
}

+ (id)configForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath
{
  vocabPathCopy = vocabPath;
  pathCopy = path;
  languageCopy = language;
  v12 = [objc_opt_class() transformerInstanceForLanguage:languageCopy mode:mode plistPath:pathCopy vocabPath:vocabPathCopy];

  config = [v12 config];

  return config;
}

@end