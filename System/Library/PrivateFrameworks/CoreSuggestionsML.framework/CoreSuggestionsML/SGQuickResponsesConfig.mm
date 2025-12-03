@interface SGQuickResponsesConfig
+ (id)_cacheKeyForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath;
+ (id)_dictionaryForPlistPath:(id)path mode:(unint64_t)mode;
+ (id)_sharedCache;
+ (id)_vocabForVocabPath:(id)path mode:(unint64_t)mode;
+ (id)configWithLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath;
+ (id)modelTypeAndSubModelKeyForLanguage:(id)language plistPath:(id)path vocabPath:(id)vocabPath warmupBlock:(id)block;
+ (void)_addModelAssetUpdateHandler;
- (BOOL)isValidConfigForWordPieceWithLazyVocab:(id)vocab;
- (SGQuickResponsesConfig)initWithLanguage:(id)language mode:(unint64_t)mode dictionary:(id)dictionary lazyVocab:(id)vocab;
- (SGQuickResponsesConfig)initWithLanguage:(id)language mode:(unint64_t)mode dictionary:(id)dictionary vocab:(id)vocab;
- (SGQuickResponsesConfig)initWithLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath;
@end

@implementation SGQuickResponsesConfig

- (BOOL)isValidConfigForWordPieceWithLazyVocab:(id)vocab
{
  v20 = *MEMORY[0x277D85DE8];
  vocabCopy = vocab;
  if ([(SGModelHyperparameters *)self->_modelHyperparameters vectorizerStrategy]== 6)
  {
    getObject = [vocabCopy getObject];
    vocab = self->_vocab;
    self->_vocab = getObject;

    if (self->_vocab)
    {
      if ([(NSArray *)self->_preprocessingMethods count]<= 1)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:1165 description:{@"Invalid parameter not satisfying: %@", @"_preprocessingMethods.count >= 2"}];
      }

      v8 = [(NSArray *)self->_preprocessingMethods objectAtIndexedSubscript:[(NSArray *)self->_preprocessingMethods count]- 2];
      v9 = [v8 isEqualToString:@"finalizeForWordPieceCaseInsensitive"];
      v10 = v9 | [v8 isEqualToString:@"finalizeForWordPieceCaseSensitive"];
      if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v15 = v8;
        v16 = 2112;
        v17 = @"finalizeForWordPieceCaseInsensitive";
        v18 = 2112;
        v19 = @"finalizeForWordPieceCaseSensitive";
        _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesConfig: final preprocessing step %@ is not %@ or %@", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesConfig: Strategy PMLHashingVectorizerStrategyWordPiece used but no vocab present", buf, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (SGQuickResponsesConfig)initWithLanguage:(id)language mode:(unint64_t)mode dictionary:(id)dictionary lazyVocab:(id)vocab
{
  v119 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  dictionaryCopy = dictionary;
  vocabCopy = vocab;
  v14 = dictionaryCopy;
  v15 = v14;
  if (v14)
  {

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v115.receiver = self;
      v115.super_class = SGQuickResponsesConfig;
      self = [(SGQuickResponsesConfig *)&v115 init];
      if (!self)
      {
        goto LABEL_73;
      }

      v16 = objc_autoreleasePoolPush();
      if (mode == 1)
      {
        languageCopy2 = language;
        v17 = [v15 objectForKeyedSubscript:@"PREDICTION_REPLIES"];
        v18 = [v17 objectForKeyedSubscript:languageCopy];
        if (v18)
        {
        }

        else
        {
          v50 = [v15 objectForKeyedSubscript:@"MODEL_HEADS"];
          v51 = [v50 objectForKeyedSubscript:languageCopy];

          if (!v51)
          {
LABEL_39:
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_44;
            }

            *buf = 138412290;
            v118 = languageCopy;
            v89 = MEMORY[0x277D86220];
            v90 = "SGQuickResponses: no available configuration found to support prediction for language %@";
LABEL_65:
            _os_log_debug_impl(&dword_24799E000, v89, OS_LOG_TYPE_DEBUG, v90, buf, 0xCu);
            goto LABEL_44;
          }
        }

        v52 = [v15 objectForKeyedSubscript:@"PREDICTION_MODEL_HYPERPARAMETERS"];
        v53 = [v52 objectForKeyedSubscript:languageCopy];
        if (v53)
        {
          v54 = v53;
          v55 = [v15 objectForKeyedSubscript:@"PREDICTION_PREPROCESSING_METHODS"];
          v56 = [v55 objectForKeyedSubscript:languageCopy];

          if (v56)
          {
            v57 = [SGQuickResponsesPredictionParameters alloc];
            v58 = [v15 objectForKeyedSubscript:@"PREDICTION_PARAMETERS"];
            v59 = [(SGQuickResponsesPredictionParameters *)v57 initWithDictionary:v58];

            if (v59)
            {
              predictionParams = self->_predictionParams;
              self->_predictionParams = v59;

              v61 = [SGModelHyperparameters alloc];
              v62 = [v15 objectForKeyedSubscript:@"PREDICTION_MODEL_HYPERPARAMETERS"];
              v63 = [v62 objectForKeyedSubscript:languageCopy];
              modelTypeName = [(SGQuickResponsesPredictionParameters *)self->_predictionParams modelTypeName];
              v65 = [(SGModelHyperparameters *)v61 initWithDictionary:v63 modelTypeName:modelTypeName];

              if (v65)
              {
                modelHyperparameters = self->_modelHyperparameters;
                self->_modelHyperparameters = v65;

                v67 = [v15 objectAssertedForKey:@"PREDICTION_PREPROCESSING_METHODS"];
                v68 = [v67 arrayAssertedForKey:languageCopy];

                v47 = languageCopy2;
                if (!v68)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    v48 = MEMORY[0x277D86220];
                    v49 = "[[dict objectAssertedForKey:PREDICTION_PREPROCESSING_METHODS] arrayAssertedForKey:language]";
                    goto LABEL_80;
                  }

                  goto LABEL_44;
                }

                context = v16;
                preprocessingMethods = self->_preprocessingMethods;
                self->_preprocessingMethods = v68;

                v70 = [v15 objectForKeyedSubscript:@"MODEL_HEADS"];
                if (!v70)
                {
                  goto LABEL_55;
                }

                v71 = v70;
                v72 = [v15 objectForKeyedSubscript:@"MODEL_HEADS"];
                v73 = [v72 objectForKeyedSubscript:languageCopy];

                if (v73)
                {
                  v104 = vocabCopy;
                  selfCopy = self;
                  v74 = objc_opt_new();
                  v111 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  v75 = [v15 objectForKeyedSubscript:@"MODEL_HEADS"];
                  v76 = [v75 objectForKeyedSubscript:languageCopy];

                  obj = v76;
                  v77 = [v76 countByEnumeratingWithState:&v111 objects:v116 count:16];
                  if (v77)
                  {
                    v78 = v77;
                    v79 = *v112;
                    do
                    {
                      for (i = 0; i != v78; ++i)
                      {
                        if (*v112 != v79)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v81 = *(*(&v111 + 1) + 8 * i);
                        v82 = [v15 objectForKeyedSubscript:{@"MODEL_HEADS", v104, selfCopy}];
                        [v82 objectForKeyedSubscript:languageCopy];
                        v83 = v15;
                        v85 = v84 = languageCopy;
                        v86 = [v85 objectForKeyedSubscript:v81];

                        languageCopy = v84;
                        v15 = v83;

                        v87 = [[SGModelHead alloc] initWithDictionary:v86 key:v81];
                        [v74 setObject:v87 forKeyedSubscript:v81];
                      }

                      v78 = [obj countByEnumeratingWithState:&v111 objects:v116 count:16];
                    }

                    while (v78);
                  }

                  v88 = 40;
                  vocabCopy = v104;
                  self = selfCopy;
                  v47 = languageCopy2;
                }

                else
                {
LABEL_55:
                  v94 = [v15 objectForKeyedSubscript:@"PREDICTION_REPLIES"];
                  v95 = [v94 objectForKeyedSubscript:languageCopy];
                  v74 = [SGQuickResponsesReplies repliesWithArray:v95];

                  if (!v74)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      v48 = MEMORY[0x277D86220];
                      v49 = "[SGQuickResponsesReplies repliesWithArray:dict[PREDICTION_REPLIES][language]]";
                      goto LABEL_80;
                    }

                    goto LABEL_44;
                  }

                  v88 = 32;
                }

                v96 = *(&self->super.isa + v88);
                *(&self->super.isa + v88) = v74;

                v46 = 1;
                goto LABEL_58;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                goto LABEL_44;
              }

              *buf = 0;
              v48 = MEMORY[0x277D86220];
              v49 = "[[SGModelHyperparameters alloc] initWithDictionary:dict[PREDICTION_MODEL_HYPERPARAMETERS][language] modelTypeName:_predictionParams.modelTypeName]";
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                goto LABEL_44;
              }

              *buf = 0;
              v48 = MEMORY[0x277D86220];
              v49 = "[[SGQuickResponsesPredictionParameters alloc] initWithDictionary:dict[PREDICTION_PARAMETERS]]";
            }

            goto LABEL_80;
          }
        }

        else
        {
        }

        goto LABEL_39;
      }

      v21 = [v15 objectForKeyedSubscript:@"CLASSIFICATION_LABELS"];
      v22 = [v21 objectForKeyedSubscript:languageCopy];
      if (v22)
      {
        v23 = v22;
        modeCopy = mode;
        languageCopy3 = language;
        v24 = [v15 objectForKeyedSubscript:@"CLASSIFICATION_MODEL_HYPERPARAMETERS"];
        v25 = [v24 objectForKeyedSubscript:languageCopy];
        if (v25)
        {
          v26 = v25;
          [v15 objectForKeyedSubscript:@"CLASSIFICATION_PREPROCESSING_METHODS"];
          v27 = context = v16;
          v28 = [v27 objectForKeyedSubscript:languageCopy];

          v16 = context;
          if (v28)
          {
            v29 = [SGQuickResponsesClassificationParameters alloc];
            v30 = [v15 objectForKeyedSubscript:@"CLASSIFICATION_PARAMETERS"];
            v31 = [(SGQuickResponsesClassificationParameters *)v29 initWithDictionary:v30 language:languageCopy];

            if (v31)
            {
              v32 = v15;
              v33 = vocabCopy;
              classificationParams = self->_classificationParams;
              self->_classificationParams = v31;

              v35 = [SGModelHyperparameters alloc];
              v36 = [v32 objectForKeyedSubscript:@"CLASSIFICATION_MODEL_HYPERPARAMETERS"];
              v37 = [v36 objectForKeyedSubscript:languageCopy];
              v38 = [(SGModelHyperparameters *)v35 initWithDictionary:v37 modelTypeName:@"quickResponsesEspressoClassifierMultiLabel"];

              if (v38)
              {
                v39 = self->_modelHyperparameters;
                self->_modelHyperparameters = v38;

                v40 = [v32 objectAssertedForKey:@"CLASSIFICATION_PREPROCESSING_METHODS"];
                v41 = [v40 arrayAssertedForKey:languageCopy];

                vocabCopy = v33;
                if (!v41)
                {
                  v15 = v32;
                  v16 = context;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    v48 = MEMORY[0x277D86220];
                    v49 = "[[dict objectAssertedForKey:CLASSIFICATION_PREPROCESSING_METHODS] arrayAssertedForKey:language]";
                    goto LABEL_80;
                  }

                  goto LABEL_44;
                }

                v42 = self->_preprocessingMethods;
                self->_preprocessingMethods = v41;

                v43 = [v32 objectAssertedForKey:@"CLASSIFICATION_LABELS"];
                v44 = [v43 arrayAssertedForKey:languageCopy];

                v15 = v32;
                if (!v44)
                {
                  v16 = context;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    v48 = MEMORY[0x277D86220];
                    v49 = "[[dict objectAssertedForKey:CLASSIFICATION_LABELS] arrayAssertedForKey:language]";
                    goto LABEL_80;
                  }

                  goto LABEL_44;
                }

                labels = self->_labels;
                self->_labels = v44;

                v46 = modeCopy;
                v47 = languageCopy3;
                if ([(NSArray *)self->_labels count]<= 0x1000)
                {
LABEL_58:
                  v97 = [v15 objectForKeyedSubscript:{@"CUSTOM_RESPONSES_PARAMETERS", v104, selfCopy}];

                  if (v97)
                  {
                    v98 = [SGCustomResponsesParameters alloc];
                    v99 = [v15 objectForKeyedSubscript:@"CUSTOM_RESPONSES_PARAMETERS"];
                    v100 = [(SGCustomResponsesParameters *)v98 initWithDictionary:v99];

                    v16 = context;
                    if (!v100)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                      {
                        *buf = 0;
                        v48 = MEMORY[0x277D86220];
                        v49 = "[[SGCustomResponsesParameters alloc] initWithDictionary:dict[CUSTOM_RESPONSES_PARAMETERS]]";
                        goto LABEL_80;
                      }

LABEL_44:
                      objc_autoreleasePoolPop(v16);
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v118 = languageCopy;
                      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGQuickResponses: no available configuration found to support custom responses for language %@", buf, 0xCu);
                    }

                    v100 = 0;
                    v16 = context;
                  }

                  customResponsesParameters = self->_customResponsesParameters;
                  self->_customResponsesParameters = v100;

                  objc_storeStrong(&self->_language, v47);
                  self->_mode = v46;
                  v102 = [(SGModelHyperparameters *)self->_modelHyperparameters sessionDescriptorForLanguage:languageCopy];
                  sessionDescriptor = self->_sessionDescriptor;
                  self->_sessionDescriptor = v102;

                  if (![(SGQuickResponsesConfig *)self isValidConfigForWordPieceWithLazyVocab:vocabCopy])
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      v48 = MEMORY[0x277D86220];
                      v49 = "[self isValidConfigForWordPieceWithLazyVocab:lazyVocab]";
                      goto LABEL_80;
                    }

                    goto LABEL_44;
                  }

                  objc_autoreleasePoolPop(v16);
LABEL_73:
                  self = self;
                  selfCopy2 = self;
                  goto LABEL_46;
                }

                v16 = context;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_44;
                }

                *buf = 0;
                v48 = MEMORY[0x277D86220];
                v49 = "SGQuickResponsesConfig: Training class count exceeds maximum";
              }

              else
              {
                vocabCopy = v33;
                v15 = v32;
                v16 = context;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_44;
                }

                *buf = 0;
                v48 = MEMORY[0x277D86220];
                v49 = "[[SGModelHyperparameters alloc] initWithDictionary:dict[CLASSIFICATION_MODEL_HYPERPARAMETERS][language] modelTypeName:SG_QUICK_RESPONSES_MULTICLASS_ESPRESSO_CLASSIFIER]";
              }
            }

            else
            {
              v16 = context;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                goto LABEL_44;
              }

              *buf = 0;
              v48 = MEMORY[0x277D86220];
              v49 = "[[SGQuickResponsesClassificationParameters alloc] initWithDictionary:dict[CLASSIFICATION_PARAMETERS] language:language]";
            }

LABEL_80:
            _os_log_fault_impl(&dword_24799E000, v48, OS_LOG_TYPE_FAULT, v49, buf, 2u);
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

LABEL_43:
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_44;
      }

      *buf = 138412290;
      v118 = languageCopy;
      v89 = MEMORY[0x277D86220];
      v90 = "SGQuickResponses: no available configuration found to support training for language %@";
      goto LABEL_65;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v19 = MEMORY[0x277D86220];
      v20 = "[dict isKindOfClass:NSDictionary.class]";
      goto LABEL_11;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v19 = MEMORY[0x277D86220];
    v20 = "dict";
LABEL_11:
    _os_log_fault_impl(&dword_24799E000, v19, OS_LOG_TYPE_FAULT, v20, buf, 2u);
  }

LABEL_45:
  selfCopy2 = 0;
LABEL_46:

  v92 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (SGQuickResponsesConfig)initWithLanguage:(id)language mode:(unint64_t)mode dictionary:(id)dictionary vocab:(id)vocab
{
  vocabCopy = vocab;
  dictionaryCopy = dictionary;
  languageCopy = language;
  v13 = [SGLazyInit alloc];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__SGQuickResponsesConfig_initWithLanguage_mode_dictionary_vocab___block_invoke;
  v18[3] = &unk_278EB74D8;
  v19 = vocabCopy;
  v14 = vocabCopy;
  v15 = [(SGLazyInit *)v13 initWithInitializer:v18 destructor:0];
  v16 = [(SGQuickResponsesConfig *)self initWithLanguage:languageCopy mode:mode dictionary:dictionaryCopy lazyVocab:v15];

  return v16;
}

- (SGQuickResponsesConfig)initWithLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath
{
  v20 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  pathCopy = path;
  vocabPathCopy = vocabPath;
  v13 = [SGQuickResponsesConfig _dictionaryForPlistPath:pathCopy mode:mode];
  v14 = [SGQuickResponsesConfig _vocabForVocabPath:vocabPathCopy mode:mode];

  if (v13)
  {
    self = [(SGQuickResponsesConfig *)self initWithLanguage:languageCopy mode:mode dictionary:v13 lazyVocab:v14];
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v18 = 138412290;
      v19 = pathCopy;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponses: Invalid plist path %@", &v18, 0xCu);
    }

    selfCopy = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)configWithLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath
{
  languageCopy = language;
  pathCopy = path;
  vocabPathCopy = vocabPath;
  if (![languageCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:1047 description:{@"Invalid parameter not satisfying: %@", @"language.length"}];
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [SGQuickResponsesConfig _cacheKeyForLanguage:languageCopy mode:mode plistPath:pathCopy vocabPath:vocabPathCopy];
  v16 = +[SGQuickResponsesConfig _sharedCache];
  v17 = [v16 objectForKey:v15];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = [[SGQuickResponsesConfig alloc] initWithLanguage:languageCopy mode:mode plistPath:pathCopy vocabPath:vocabPathCopy];
    if (v18)
    {
      v19 = +[SGQuickResponsesConfig _sharedCache];
      [v19 setObject:v18 forKey:v15];
    }
  }

  objc_autoreleasePoolPop(v14);

  return v18;
}

+ (id)modelTypeAndSubModelKeyForLanguage:(id)language plistPath:(id)path vocabPath:(id)vocabPath warmupBlock:(id)block
{
  languageCopy = language;
  pathCopy = path;
  vocabPathCopy = vocabPath;
  blockCopy = block;
  if (![languageCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:1008 description:{@"Invalid parameter not satisfying: %@", @"language.length"}];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [SGQuickResponsesConfig _cacheKeyForLanguage:languageCopy mode:1 plistPath:pathCopy vocabPath:vocabPathCopy];
  v17 = +[SGQuickResponsesConfig _sharedCache];
  v18 = [v17 objectForKey:v16];

  v38 = pathCopy;
  v39 = vocabPathCopy;
  v37 = blockCopy;
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277D42648]);
    predictionParams = [v18 predictionParams];
    [predictionParams modelTypeName];
    v22 = v21 = v15;
    predictionParams2 = [v18 predictionParams];
    subModelKeyString = [predictionParams2 subModelKeyString];
    v25 = [v19 initWithFirst:v22 second:subModelKeyString];

    v15 = v21;
  }

  else
  {
    v26 = [SGQuickResponsesConfig _dictionaryForPlistPath:pathCopy mode:1];
    if (v26)
    {
      v36 = v15;
      if (modelTypeAndSubModelKeyForLanguage_plistPath_vocabPath_warmupBlock___pasOnceToken125 != -1)
      {
        dispatch_once(&modelTypeAndSubModelKeyForLanguage_plistPath_vocabPath_warmupBlock___pasOnceToken125, &__block_literal_global_748);
      }

      v27 = modelTypeAndSubModelKeyForLanguage_plistPath_vocabPath_warmupBlock___pasExprOnceResult;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93__SGQuickResponsesConfig_modelTypeAndSubModelKeyForLanguage_plistPath_vocabPath_warmupBlock___block_invoke_2;
      block[3] = &unk_278EB7490;
      v41 = v16;
      v42 = vocabPathCopy;
      v46 = 1;
      v43 = languageCopy;
      v28 = v26;
      v44 = v28;
      v45 = blockCopy;
      v29 = v27;
      v30 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v29, v30);

      v31 = [v28 objectForKeyedSubscript:@"PREDICTION_PARAMETERS"];
      v32 = [SGQuickResponsesPredictionParameters _modelTypeNameForDictionary:v31];
      v33 = [SGQuickResponsesPredictionParameters _subModelKeyStringForDictionary:v31];
      v25 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v32 second:v33];

      v15 = v36;
    }

    else
    {
      v25 = 0;
    }
  }

  objc_autoreleasePoolPop(v15);

  return v25;
}

void __93__SGQuickResponsesConfig_modelTypeAndSubModelKeyForLanguage_plistPath_vocabPath_warmupBlock___block_invoke_2(void *a1)
{
  v2 = +[SGQuickResponsesConfig _sharedCache];
  v7 = [v2 objectForKey:a1[4]];

  if (!v7)
  {
    v3 = [SGQuickResponsesConfig _vocabForVocabPath:a1[5] mode:a1[9]];
    v4 = [[SGQuickResponsesConfig alloc] initWithLanguage:a1[6] mode:a1[9] dictionary:a1[7] lazyVocab:v3];
    if (v4)
    {
      v5 = +[SGQuickResponsesConfig _sharedCache];
      [v5 setObject:v4 forKey:a1[4]];
    }
  }

  v6 = a1[8];
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void __93__SGQuickResponsesConfig_modelTypeAndSubModelKeyForLanguage_plistPath_vocabPath_warmupBlock___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.suggestions.quickResponsesConfigWarmup", v1);
  v3 = modelTypeAndSubModelKeyForLanguage_plistPath_vocabPath_warmupBlock___pasExprOnceResult;
  modelTypeAndSubModelKeyForLanguage_plistPath_vocabPath_warmupBlock___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

+ (id)_vocabForVocabPath:(id)path mode:(unint64_t)mode
{
  pathCopy = path;
  if (pathCopy)
  {
    v6 = [SGLazyInit alloc];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__SGQuickResponsesConfig__vocabForVocabPath_mode___block_invoke;
    v10[3] = &unk_278EB74D8;
    v11 = pathCopy;
    v7 = [(SGLazyInit *)v6 initWithInitializer:v10 destructor:0];
  }

  else
  {
    v8 = [SGLazyInit alloc];
    if (mode == 1)
    {
      v7 = [(SGLazyInit *)v8 initWithInitializer:&__block_literal_global_740 destructor:0];
    }

    else
    {
      v7 = [(SGLazyInit *)v8 initWithInitializer:&__block_literal_global_742 destructor:0];
      +[SGQuickResponsesConfig _addModelAssetUpdateHandler];
    }
  }

  return v7;
}

+ (id)_dictionaryForPlistPath:(id)path mode:(unint64_t)mode
{
  v12 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (pathCopy)
  {
    v6 = [SGDefaultAssets dictionaryWithPlistAssetPath:pathCopy];
  }

  else
  {
    if (mode != 1)
    {
      v7 = +[SGModelAsset quickResponses];
      +[SGQuickResponsesConfig _addModelAssetUpdateHandler];
      if (v7)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    v6 = +[SGDefaultAssets quickResponsesPrediction];
  }

  v7 = v6;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v10 = 138412290;
    v11 = pathCopy;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponses: Invalid plist path %@", &v10, 0xCu);
  }

LABEL_9:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)_addModelAssetUpdateHandler
{
  if (_addModelAssetUpdateHandler_onceToken != -1)
  {
    dispatch_once(&_addModelAssetUpdateHandler_onceToken, &__block_literal_global_733);
  }
}

void __53__SGQuickResponsesConfig__addModelAssetUpdateHandler__block_invoke_2()
{
  v0 = +[SGQuickResponsesConfig _sharedCache];
  [v0 removeAllObjects];
}

+ (id)_sharedCache
{
  if (_sharedCache__pasOnceToken123 != -1)
  {
    dispatch_once(&_sharedCache__pasOnceToken123, &__block_literal_global_726);
  }

  v3 = _sharedCache__pasExprOnceResult;

  return [v3 result];
}

void __38__SGQuickResponsesConfig__sharedCache__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_730 idleTimeout:600.0];
  v2 = _sharedCache__pasExprOnceResult;
  _sharedCache__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __38__SGQuickResponsesConfig__sharedCache__block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:6];

  return v0;
}

+ (id)_cacheKeyForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath
{
  v9 = MEMORY[0x277CCACA8];
  vocabPathCopy = vocabPath;
  pathCopy = path;
  languageCopy = language;
  v13 = [v9 alloc];
  v14 = &stru_285992FC0;
  if (pathCopy)
  {
    v15 = pathCopy;
  }

  else
  {
    v15 = &stru_285992FC0;
  }

  if (vocabPathCopy)
  {
    v14 = vocabPathCopy;
  }

  v16 = [v13 initWithFormat:@"%@-%lu-%@-%@", languageCopy, mode, v15, v14];

  return v16;
}

@end