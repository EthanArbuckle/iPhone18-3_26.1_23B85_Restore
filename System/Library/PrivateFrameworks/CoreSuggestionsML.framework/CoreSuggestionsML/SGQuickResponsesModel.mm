@interface SGQuickResponsesModel
+ (id)_sharedInvalidKeysCache;
+ (id)_sharedTransformerCache;
+ (id)_transformerCacheKeyForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5;
+ (id)configForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5 vocabPath:(id)a6;
+ (id)featuresOf:(id)a3 inLanguage:(id)a4 andMode:(unint64_t)a5;
+ (id)featuresOf:(id)a3 withFeaturizer:(id)a4 source:(id)a5;
+ (id)labelOf:(id)a3 inLanguage:(id)a4;
+ (id)labelOf:(id)a3 withLabeler:(id)a4;
+ (id)modelForLanguage:(id)a3 mode:(unint64_t)a4 chunkPath:(id)a5 plistPath:(id)a6 vocabPath:(id)a7;
+ (id)modelForLanguage:(id)a3 mode:(unint64_t)a4 chunkPath:(id)a5 plistPath:(id)a6 vocabPath:(id)a7 modelTypeAndSubModelKey:(id)a8;
+ (id)newTransformerInstanceForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5 vocabPath:(id)a6;
+ (id)transformerInstanceForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5 vocabPath:(id)a6;
+ (void)_addModelAssetUpdateHandler;
- (SGQuickResponsesModel)initWithEntity:(id)a3 type:(id)a4 mode:(unint64_t)a5 language:(id)a6 class:(Class)a7 modelPath:(id)a8 plistPath:(id)a9 vocabPath:(id)a10;
- (id)featuresOf:(id)a3;
- (id)labelOf:(id)a3;
- (id)predict:(id)a3;
@end

@implementation SGQuickResponsesModel

- (SGQuickResponsesModel)initWithEntity:(id)a3 type:(id)a4 mode:(unint64_t)a5 language:(id)a6 class:(Class)a7 modelPath:(id)a8 plistPath:(id)a9 vocabPath:(id)a10
{
  v60 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v48 = a4;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = objc_opt_class();
  if (v18 && v21 == a7)
  {
    v47 = v16;
    v22 = [SGMultiLabelEspressoClassifierCached classifierWithEspressoModelFile:v18];
  }

  else
  {
    if (objc_opt_class() != a7)
    {
      goto LABEL_16;
    }

    if (!v18)
    {
      v23 = v19;
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = modelModeName(a5);
      v18 = [v24 initWithFormat:@"%@_%@_%@%@Model.chunk", v25, v17, v16, v48];

      v26 = [SGDefaultAssets checkFilesystemPathForFilename:v18];
      if (!v26)
      {
        v19 = v23;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v51 = [v18 UTF8String];
          _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to locate assets resource %s", buf, 0xCu);
        }

        goto LABEL_18;
      }

      v27 = v26;

      v18 = v27;
      v19 = v23;
    }

    v47 = v16;
    v22 = PMLReadChunkFile();
  }

  v28 = v22;
  if (!v22)
  {
    v16 = v47;
LABEL_16:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 136316162;
      v51 = [v18 UTF8String];
      v52 = 2112;
      v53 = v48;
      v54 = 2112;
      v55 = v16;
      v56 = 2048;
      v57 = a5;
      v58 = 2112;
      v59 = v17;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to load model file resource %s, with type:%@, modelEntity:%@, mode:%lu, language:%@", buf, 0x34u);
    }

LABEL_18:
    v37 = 0;
    goto LABEL_27;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:240 description:{@"Chunk file at %@ not the same class as type %@", v18, v48}];
  }

  v29 = [objc_opt_class() transformerInstanceForLanguage:v17 mode:a5 plistPath:v19 vocabPath:v20];
  v30 = v29;
  if (v29)
  {
    v45 = v19;
    v31 = [v29 config];
    v32 = [v31 mode];
    v33 = [v30 config];
    v34 = v33;
    if (v32 == 1)
    {
      v35 = [v33 replies];
      v36 = [v35 modelCount];
    }

    else
    {
      v35 = [v33 labels];
      v36 = [v35 count];
    }

    v38 = v36;

    if ([v28 outputDimension] != v38)
    {
      v44 = [MEMORY[0x277CCA890] currentHandler];
      [v44 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"model.outputDimension == configCount"}];
    }

    v49.receiver = self;
    v49.super_class = SGQuickResponsesModel;
    v39 = [(SGQuickResponsesModel *)&v49 init];
    p_isa = &v39->super.isa;
    v19 = v45;
    if (v39)
    {
      objc_storeStrong(&v39->_model, v28);
      objc_storeStrong(p_isa + 2, v30);
    }

    self = p_isa;
    v37 = self;
  }

  else
  {
    v37 = 0;
  }

  v16 = v47;
LABEL_27:

  v41 = *MEMORY[0x277D85DE8];
  return v37;
}

- (id)labelOf:(id)a3
{
  transformer = self->_transformer;
  v4 = a3;
  v5 = [(SGQuickResponsesTransformerInstance *)transformer labeler];
  v6 = [SGQuickResponsesModel labelOf:v4 withLabeler:v5];

  return v6;
}

- (id)featuresOf:(id)a3
{
  transformer = self->_transformer;
  v5 = a3;
  v6 = [(SGQuickResponsesTransformerInstance *)transformer featurizer];
  v7 = [(SGQuickResponsesTransformerInstance *)self->_transformer source];
  v8 = [SGQuickResponsesModel featuresOf:v5 withFeaturizer:v6 source:v7];

  return v8;
}

- (id)predict:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 source];
  if (([v5 isEqual:{objc_msgSend(v6, "modelClass")}] & 1) == 0)
  {
    __assert_rtn("[SGQuickResponsesModel predict:]", "SGQuickResponsesModel.m", 67, "[[self class] isEqual:features.source.modelClass]");
  }

  model = self->_model;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = self->_model;
  v10 = [v4 vector];
  v11 = v10;
  if (isKindOfClass)
  {
    v12 = [v10 vectorWithConstantColumn];
    v13 = [(PMLMultiLabelClassifierProtocol *)v9 predict:v12];
  }

  else
  {
    v13 = [(PMLMultiLabelClassifierProtocol *)v9 predict:v10];
  }

  return v13;
}

+ (id)newTransformerInstanceForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5 vocabPath:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesModel.m" lineNumber:345 description:{@"%@ must implement +newTransformerInstanceForLanguage:mode:plistPath:", objc_opt_class()}];

  return 0;
}

+ (void)_addModelAssetUpdateHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SGQuickResponsesModel__addModelAssetUpdateHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)_transformerCacheKeyForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 alloc];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_285992FC0;
  }

  v13 = NSStringFromClass(a1);
  v14 = v13;
  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = &stru_285992FC0;
  }

  v16 = [v11 initWithFormat:@"%@%lu%@%@", v12, a4, v13, v15];

  return v16;
}

+ (id)transformerInstanceForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5 vocabPath:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (__mockTransformerForTesting)
  {
    v13 = objc_opt_class();
    v14 = [__mockTransformerForTesting source];
    v15 = [v14 modelClass];

    if (v13 == v15)
    {
      v16 = [__mockTransformerForTesting config];
      v17 = [v16 language];
      if ([v17 isEqualToString:v10])
      {
        v18 = [v16 mode];

        if (v18 == a4)
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
  v21 = [a1 _transformerCacheKeyForLanguage:v10 mode:a4 plistPath:v11];
  if (a4 != 1 && !v11)
  {
    [a1 _addModelAssetUpdateHandler];
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__510;
  v46 = __Block_byref_object_dispose__511;
  v47 = 0;
  v22 = [a1 _sharedInvalidKeysCache];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __81__SGQuickResponsesModel_transformerInstanceForLanguage_mode_plistPath_vocabPath___block_invoke;
  v34[3] = &unk_278EB7980;
  v23 = v21;
  v35 = v23;
  v39 = &v42;
  v40 = a1;
  v24 = v10;
  v36 = v24;
  v41 = a4;
  v25 = v11;
  v37 = v25;
  v38 = v12;
  [v22 runWithLockAcquired:v34];

  v26 = v43[5];
  if (!v26)
  {
    v27 = MEMORY[0x277D86220];
    v28 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = modelModeName(a4);
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

+ (id)modelForLanguage:(id)a3 mode:(unint64_t)a4 chunkPath:(id)a5 plistPath:(id)a6 vocabPath:(id)a7 modelTypeAndSubModelKey:(id)a8
{
  v32 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = v14;
  v19 = [v17 first];
  v20 = [v19 isEqualToString:@"quickResponsesBinaryLogisticMultiLabel"];

  if (v20)
  {
    v21 = [(SGQuickResponsesModel *)[SGQuickResponsesClassificationModel alloc] initWithEntity:@"quickResponses" type:@"BinaryLogisticMultiLabel" mode:a4 language:v13 class:objc_opt_class() modelPath:v18 plistPath:v15 vocabPath:v16];
  }

  else
  {
    v22 = [v17 first];
    v23 = [v22 isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [v17 second];
      v26 = [v24 initWithFormat:@"%@:%@", v18, v25];

      v21 = [(SGQuickResponsesModel *)[SGQuickResponsesClassificationModel alloc] initWithEntity:@"quickResponses" type:@"EspressoClassifierMultiLabel" mode:a4 language:v13 class:objc_opt_class() modelPath:v26 plistPath:v15 vocabPath:v16];
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v29 = [v17 first];
      *buf = 136315138;
      v31 = [v29 UTF8String];
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown model name: %s", buf, 0xCu);
    }

    v21 = 0;
  }

  v26 = v18;
LABEL_9:

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)modelForLanguage:(id)a3 mode:(unint64_t)a4 chunkPath:(id)a5 plistPath:(id)a6 vocabPath:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [SGQuickResponsesConfig configWithLanguage:v12 mode:a4 plistPath:v14 vocabPath:v15];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 predictionParams];
    v19 = [v18 modelTypeName];

    v20 = [v17 predictionParams];
    v21 = [v20 subModelKeyString];

    v22 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v19 second:v21];
    v23 = [a1 modelForLanguage:v12 mode:a4 chunkPath:v13 plistPath:v14 vocabPath:v15 modelTypeAndSubModelKey:v22];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = v14;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "config not found for language %@ and plist path %@", &v26, 0x16u);
    }

    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)labelOf:(id)a3 inLanguage:(id)a4
{
  v6 = a3;
  v7 = [a1 transformerInstanceForLanguage:a4 mode:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 labeler];
    v10 = [SGQuickResponsesModel labelOf:v6 withLabeler:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)labelOf:(id)a3 withLabeler:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesModel.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"[data isKindOfClass:NSString.class]"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [v8 transform:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesModel.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"[label isKindOfClass:NSNumber.class]"}];
  }

  objc_autoreleasePoolPop(v9);

  return v10;
}

+ (id)featuresOf:(id)a3 inLanguage:(id)a4 andMode:(unint64_t)a5
{
  v8 = a3;
  v9 = [a1 transformerInstanceForLanguage:a4 mode:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 featurizer];
    v12 = [v10 source];
    v13 = [SGQuickResponsesModel featuresOf:v8 withFeaturizer:v11 source:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)featuresOf:(id)a3 withFeaturizer:(id)a4 source:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesModel.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"[data isKindOfClass:NSString.class]"}];
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [v10 transform:v9];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesModel.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"[vector isKindOfClass:PMLSparseVector.class]"}];
  }

  v14 = [[SGModelFeatures alloc] initWithSource:v11 vector:v13];

  objc_autoreleasePoolPop(v12);

  return v14;
}

+ (id)configForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5 vocabPath:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [objc_opt_class() transformerInstanceForLanguage:v11 mode:a4 plistPath:v10 vocabPath:v9];

  v13 = [v12 config];

  return v13;
}

@end