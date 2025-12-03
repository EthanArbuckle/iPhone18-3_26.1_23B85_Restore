@interface SGQuickResponsesInference
+ (id)dynamicIndicesAndTopIsDynamic:(id)dynamic config:(id)config;
+ (id)dynamicLabelForScore:(id)score config:(id)config;
+ (id)languageForLocale:(id)locale withLanguageDetectionForMessage:(id)message;
+ (id)normalizeLabelScores:(id)scores;
+ (id)proactiveTriggerForDynamicLabel:(id)label context:(id)context language:(id)language useContactNames:(BOOL)names;
+ (id)quickResponsesForMessage:(id)message context:(id)context time:(id)time maxResponses:(unint64_t)responses locale:(id)locale recipientHandles:(id)handles chunkPath:(id)path plistPath:(id)self0 espressoBinFilePath:(id)self1 vocabFilePath:(id)self2 includeCustomResponses:(BOOL)self3 includeResponsesToRobots:(BOOL)self4;
+ (id)quickResponsesForMessage:(id)message conversationTurns:(id)turns maxResponses:(unint64_t)responses localeIdentifier:(id)identifier recipientHandles:(id)handles chunkPath:(id)path plistPath:(id)plistPath espressoBinFilePath:(id)self0 vocabFilePath:(id)self1 useContactNames:(BOOL)self2 includeCustomResponses:(BOOL)self3 includeResponsesToRobots:(BOOL)self4;
+ (id)stringsForQuickResponses:(id)responses;
+ (void)registerDisplayedQuickResponses:(id)responses plistPath:(id)path vocabPath:(id)vocabPath;
+ (void)registerResponse:(id)response position:(id)position isCanned:(BOOL)canned isUsingQuickResponses:(BOOL)responses locale:(id)locale plistPath:(id)path vocabPath:(id)vocabPath;
- (SGQuickResponsesInference)initWithLanguage:(id)language chunkPath:(id)path plistPath:(id)plistPath espressoBinFilePath:(id)filePath vocabFilePath:(id)vocabFilePath;
- (SGQuickResponsesInference)initWithLanguage:(id)language plistPath:(id)path espressoBinFilePath:(id)filePath vocabFilePath:(id)vocabFilePath storeDirectory:(id)directory;
- (SGQuickResponsesInference)initWithModel:(id)model ranking:(id)ranking personalization:(id)personalization rng:(id)rng store:(id)store;
- (id)_getMergedPromptForMessage:(id)message conversationTurns:(id)turns;
- (id)addCustomResponsesToCommonResponses:(id)responses language:(id)language locale:(id)locale recipient:(id)recipient modelScores:(id)scores maxResponses:(unint64_t)maxResponses customResponsesParams:(id)params;
- (id)customResponsesForMessage:(id)message maximumResponses:(unint64_t)responses context:(id)context language:(id)language locale:(id)locale recipients:(id)recipients;
- (id)quickResponsesForMessage:(id)message maximumResponses:(unint64_t)responses conversationHistory:(id)history context:(id)context time:(id)time language:(id)language locale:(id)locale recipients:(id)self0 useContactNames:(BOOL)self1 includeCustomResponses:(BOOL)self2 includeResponsesToRobots:(BOOL)self3;
- (id)quickResponsesFromReplyPositions:(id)positions isConfident:(BOOL)confident config:(id)config;
- (id)randomizedReplyPositionsForSemanticClass:(unint64_t)class responseCount:(unint64_t)count config:(id)config;
- (id)replyPositionsForSemanticClass:(unint64_t)class responseCount:(unint64_t)count config:(id)config;
- (id)replyPositionsFromSemanticClasses:(id)classes config:(id)config;
- (id)scoresAndIsConfidentForMessage:(id)message language:(id)language locale:(id)locale;
- (id)signpostedQuickResponsesForMessage:(id)message maximumResponses:(unint64_t)responses conversationHistory:(id)history context:(id)context time:(id)time language:(id)language locale:(id)locale recipients:(id)self0 useContactNames:(BOOL)self1 includeCustomResponses:(BOOL)self2 includeResponsesToRobots:(BOOL)self3;
@end

@implementation SGQuickResponsesInference

- (id)customResponsesForMessage:(id)message maximumResponses:(unint64_t)responses context:(id)context language:(id)language locale:(id)locale recipients:(id)recipients
{
  messageCopy = message;
  contextCopy = context;
  languageCopy = language;
  localeCopy = locale;
  recipientsCopy = recipients;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:887 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  config = [(SGQuickResponsesModel *)self->_model config];
  v21 = config;
  if (messageCopy && ([config customResponsesParameters], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    v23 = [(SGQuickResponsesInference *)self scoresAndIsConfidentForMessage:messageCopy language:languageCopy locale:localeCopy];
    v24 = v23;
    if (v23)
    {
      v58 = languageCopy;
      v62 = contextCopy;
      v63 = recipientsCopy;
      modelScores = [v23 modelScores];
      normalizedModelScores = [v24 normalizedModelScores];
      customResponsesParameters = [v21 customResponsesParameters];
      useNonNegativeClassesOnly = [customResponsesParameters useNonNegativeClassesOnly];

      v59 = normalizedModelScores;
      if (useNonNegativeClassesOnly)
      {
        v29 = normalizedModelScores;

        modelScores = v29;
      }

      customResponsesParameters2 = [v21 customResponsesParameters];
      languageCopy = v58;
      responsesCopy = responses;
      v61 = v24;
      if (v63 && [v63 count] == 1)
      {
        firstObject = [v63 firstObject];
      }

      else
      {
        firstObject = 0;
      }

      store = self->_store;
      [customResponsesParameters2 distanceThreshold];
      v35 = v34;
      [customResponsesParameters2 countExponent];
      v37 = v36;
      [customResponsesParameters2 minDecayedCountForPrediction];
      v39 = v38;
      compatibilityVersion = [customResponsesParameters2 compatibilityVersion];
      allowProfanity = [customResponsesParameters2 allowProfanity];
      [customResponsesParameters2 minimumTimeIntervalSecs];
      v43 = v42;
      [customResponsesParameters2 usageSpreadExponent];
      *&v45 = v44;
      LOBYTE(v56) = allowProfanity;
      v57 = modelScores;
      *&v44 = v35;
      *&v46 = v37;
      *&v47 = v39;
      v48 = [(SGQuickResponsesStore *)store nearestCustomResponsesAndScoresToPromptEmbedding:modelScores recipient:firstObject limit:responsesCopy withinRadius:compatibilityVersion responseCountExponent:v58 minimumDecayedCount:localeCopy compatibilityVersion:v44 language:v46 locale:v47 allowProfanity:v43 minimumTimeInterval:v45 usageSpreadExponent:v56];
      v49 = objc_opt_new();
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __107__SGQuickResponsesInference_customResponsesForMessage_maximumResponses_context_language_locale_recipients___block_invoke;
      v64[3] = &unk_278EB78C8;
      v50 = v49;
      v65 = v50;
      v66 = customResponsesParameters2;
      v51 = customResponsesParameters2;
      [v48 enumerateObjectsUsingBlock:v64];
      v52 = firstObject;
      v53 = v66;
      v32 = v50;

      v24 = v61;
      contextCopy = v62;
      recipientsCopy = v63;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error obtaining scores for message.", buf, 2u);
      }

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

void __107__SGQuickResponsesInference_customResponsesForMessage_maximumResponses_context_language_locale_recipients___block_invoke(uint64_t a1, void *a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v15[0] = @"reply";
  v4 = a2;
  v5 = [v4 first];
  v16[0] = v5;
  v15[1] = @"distance";
  v6 = [v4 second];
  v16[1] = v6;
  v15[2] = @"confident";
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 second];

  [v8 doubleValue];
  v10 = v9;
  [*(a1 + 40) distanceThreshold];
  v12 = [v7 numberWithInt:v10 < v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v3 addObject:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)addCustomResponsesToCommonResponses:(id)responses language:(id)language locale:(id)locale recipient:(id)recipient modelScores:(id)scores maxResponses:(unint64_t)maxResponses customResponsesParams:(id)params
{
  v70 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  languageCopy = language;
  localeCopy = locale;
  recipientCopy = recipient;
  scoresCopy = scores;
  paramsCopy = params;
  if ([paramsCopy isCustomResponsesEnabled])
  {
    v62 = responsesCopy;
    v21 = sgSignpostHandle();
    ptr = 7;
    v22 = os_signpost_id_make_with_pointer(v21, &ptr);

    v23 = sgSignpostHandle();
    v24 = v23;
    v59 = v22 - 1;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "AddCustomResponses", "Start", buf, 2u);
    }

    spid = v22;

    store = self->_store;
    [paramsCopy distanceThreshold];
    v27 = v26;
    [paramsCopy countExponent];
    v29 = v28;
    [paramsCopy minDecayedCountForPrediction];
    v31 = v30;
    compatibilityVersion = [paramsCopy compatibilityVersion];
    allowProfanity = [paramsCopy allowProfanity];
    [paramsCopy minimumTimeIntervalSecs];
    v35 = v34;
    [paramsCopy usageSpreadExponent];
    *&v37 = v36;
    LOBYTE(v56) = allowProfanity;
    v60 = recipientCopy;
    *&v36 = v27;
    *&v38 = v29;
    *&v39 = v31;
    v61 = localeCopy;
    v40 = [(SGQuickResponsesStore *)store nearestCustomResponsesToPromptEmbedding:scoresCopy recipient:recipientCopy limit:maxResponses withinRadius:compatibilityVersion responseCountExponent:languageCopy minimumDecayedCount:localeCopy compatibilityVersion:v36 language:v38 locale:v39 allowProfanity:v35 minimumTimeInterval:v37 usageSpreadExponent:v56];
    v41 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v42 = v40;
    v43 = [v42 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v64;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v64 != v45)
          {
            objc_enumerationMutation(v42);
          }

          BYTE2(v57) = 1;
          LOWORD(v57) = 1;
          v47 = [[SGQuickResponse alloc] initWithText:*(*(&v63 + 1) + 8 * i) lang:languageCopy replyTextId:-1 styleGroupId:-1 semanticClassId:-1 modelId:-1 categoryId:-1 isCustomResponse:v57 isRobotResponse:spid isConfident:?];
          [v41 addObject:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v44);
    }

    if ([v41 count])
    {
      responsesCopy = v62;
      if ([v41 count] < maxResponses && objc_msgSend(v62, "count"))
      {
        [v62 enumerateObjectsUsingBlock:&__block_literal_global_150];
        v48 = [v41 arrayByAddingObjectsFromArray:v62];
        v49 = [SGDeduperML bucketerWithMapping:&__block_literal_global_154];
        v50 = [SGDeduperML dedupe:v48 bucketer:v49 resolver:&__block_literal_global_157];
      }

      else
      {
        v50 = [v41 copy];
      }

      recipientCopy = v60;
      if ([v50 count] > maxResponses)
      {
        v51 = [v50 subarrayWithRange:{0, maxResponses}];

        v50 = v51;
      }

      localeCopy = v61;
      v52 = sgSignpostHandle();
      v53 = v52;
      if (v59 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24799E000, v53, OS_SIGNPOST_INTERVAL_END, spid, "AddCustomResponses", "Completed", buf, 2u);
      }
    }

    else
    {
      responsesCopy = v62;
      v50 = v62;
      recipientCopy = v60;
      localeCopy = v61;
    }
  }

  else
  {
    v50 = responsesCopy;
  }

  v54 = *MEMORY[0x277D85DE8];

  return v50;
}

id __138__SGQuickResponsesInference_addCustomResponsesToCommonResponses_language_locale_recipient_modelScores_maxResponses_customResponsesParams___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v2 arrayWithObject:v3];

  return v4;
}

id __138__SGQuickResponsesInference_addCustomResponsesToCommonResponses_language_locale_recipient_modelScores_maxResponses_customResponsesParams___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 text];
  v3 = [SGQuickResponsesInference normalizeStringForDeduping:v2];

  return v3;
}

- (id)quickResponsesFromReplyPositions:(id)positions isConfident:(BOOL)confident config:(id)config
{
  v74 = *MEMORY[0x277D85DE8];
  positionsCopy = positions;
  configCopy = config;
  v8 = configCopy;
  if (positionsCopy)
  {
    language = [configCopy language];
    v63 = objc_opt_new();
    replies = [v8 replies];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v51 = v8;
      replies2 = [v8 replies];
      replyTextParent = [replies2 replyTextParent];
      styleGroupParent = [replies2 styleGroupParent];
      semanticClassParent = [replies2 semanticClassParent];
      models = [replies2 models];
      v60 = replies2;
      replyTexts = [replies2 replyTexts];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v52 = positionsCopy;
      obj = positionsCopy;
      v12 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v65;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v65 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v64 + 1) + 8 * i);
            first = [v16 first];
            unsignedIntegerValue = [first unsignedIntegerValue];

            second = [v16 second];
            unsignedIntegerValue2 = [second unsignedIntegerValue];

            semanticClassReplyTexts = [v60 semanticClassReplyTexts];
            v22 = [semanticClassReplyTexts objectAtIndexedSubscript:unsignedIntegerValue];
            firstObject = [v22 firstObject];
            unsignedIntegerValue3 = [firstObject unsignedIntegerValue];

            v25 = [replyTextParent objectAtIndexedSubscript:unsignedIntegerValue3 + unsignedIntegerValue2];
            unsignedIntegerValue4 = [v25 unsignedIntegerValue];

            v27 = [styleGroupParent objectAtIndexedSubscript:unsignedIntegerValue4];
            unsignedIntegerValue5 = [v27 unsignedIntegerValue];

            v29 = [semanticClassParent objectAtIndexedSubscript:unsignedIntegerValue5];
            unsignedIntegerValue6 = [v29 unsignedIntegerValue];

            v31 = [models objectAtIndexedSubscript:unsignedIntegerValue6];
            category = [v31 category];

            v33 = [replyTexts objectAtIndexedSubscript:unsignedIntegerValue3 + unsignedIntegerValue2];
            BYTE2(v50) = confident;
            LOWORD(v50) = 0;
            v34 = [SGQuickResponse initWithText:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:" lang:v33 replyTextId:language styleGroupId:unsignedIntegerValue3 + unsignedIntegerValue2 semanticClassId:unsignedIntegerValue4 modelId:unsignedIntegerValue5 categoryId:unsignedIntegerValue6 isCustomResponse:category isRobotResponse:v50 isConfident:?];
            [v63 addObject:v34];
          }

          v13 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v13);
      }

      v8 = v51;
      positionsCopy = v52;
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v60 = positionsCopy;
      v35 = [v60 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v35)
      {
        v36 = v35;
        v53 = positionsCopy;
        v37 = *v69;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v69 != v37)
            {
              objc_enumerationMutation(v60);
            }

            v39 = *(*(&v68 + 1) + 8 * j);
            first2 = [v39 first];
            unsignedIntegerValue7 = [first2 unsignedIntegerValue];

            second2 = [v39 second];
            unsignedIntegerValue8 = [second2 unsignedIntegerValue];

            replies3 = [v8 replies];
            v45 = [replies3 replyTextsForIndex:unsignedIntegerValue7];
            v46 = [v45 objectAtIndexedSubscript:unsignedIntegerValue8];

            BYTE2(v50) = confident;
            LOWORD(v50) = 0;
            v47 = [SGQuickResponse initWithText:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:" lang:v46 replyTextId:language styleGroupId:-1 semanticClassId:-1 modelId:unsignedIntegerValue7 categoryId:-1 isCustomResponse:-1 isRobotResponse:v50 isConfident:?];
            [v63 addObject:v47];
          }

          v36 = [v60 countByEnumeratingWithState:&v68 objects:v73 count:16];
        }

        while (v36);
        positionsCopy = v53;
      }
    }
  }

  else
  {
    v63 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v63;
}

- (id)randomizedReplyPositionsForSemanticClass:(unint64_t)class responseCount:(unint64_t)count config:(id)config
{
  v46 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:class];
  replies = [configCopy replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  replies2 = [configCopy replies];
  v14 = replies2;
  if (isKindOfClass)
  {
    v34 = configCopy;
    semanticClassStyleGroups = [replies2 semanticClassStyleGroups];
    v33 = [semanticClassStyleGroups objectAtIndexedSubscript:class];

    styleGroupReplyTexts = [v14 styleGroupReplyTexts];
    semanticClassReplyTexts = [v14 semanticClassReplyTexts];
    v18 = [semanticClassReplyTexts objectAtIndexedSubscript:class];
    firstObject = [v18 firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __91__SGQuickResponsesInference_randomizedReplyPositionsForSemanticClass_responseCount_config___block_invoke;
    v35[3] = &unk_278EB7880;
    v21 = styleGroupReplyTexts;
    v36 = v21;
    selfCopy = self;
    v40 = unsignedIntegerValue;
    v22 = v9;
    v38 = v22;
    v39 = v10;
    [v33 enumerateObjectsUsingBlock:v35];
    [SGRandomization shuffleMutableArray:v22 withRng:self->_rng];
    if ([v22 count] <= count)
    {
      count = [v22 count];
    }

    v23 = [v22 subarrayWithRange:{0, count}];

    configCopy = v34;
  }

  else
  {
    v24 = [replies2 replyCountForIndex:class];

    if (v24 >= count)
    {
      countCopy = count;
    }

    else
    {
      countCopy = v24;
    }

    v14 = [SGRandomization shuffledSamplingWithoutReplacementForK:countCopy fromN:v24 withRng:self->_rng];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v42;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v14);
          }

          v30 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v10 second:*(*(&v41 + 1) + 8 * i)];
          [v9 addObject:v30];
        }

        v27 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v27);
    }

    v23 = v9;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v23;
}

void __91__SGQuickResponsesInference_randomizedReplyPositionsForSemanticClass_responseCount_config___block_invoke(uint64_t a1, void *a2)
{
  v11 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntegerValue")}];
  v3 = [v11 count];
  v4 = *(*(a1 + 40) + 40);
  if (v4)
  {
    v5 = [v4 next] % v3;
  }

  else
  {
    v5 = arc4random_uniform(v3);
  }

  v6 = [v11 objectAtIndexedSubscript:v5];
  v7 = [v6 unsignedIntegerValue];

  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v7 - *(a1 + 64)];
  v9 = *(a1 + 48);
  v10 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:*(a1 + 56) second:v8];
  [v9 addObject:v10];
}

- (id)replyPositionsForSemanticClass:(unint64_t)class responseCount:(unint64_t)count config:(id)config
{
  configCopy = config;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:class];
  replies = [configCopy replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  replies2 = [configCopy replies];
  v13 = replies2;
  if (isKindOfClass)
  {
    v39 = configCopy;
    semanticClassStyleGroups = [replies2 semanticClassStyleGroups];
    v15 = [semanticClassStyleGroups objectAtIndexedSubscript:class];

    styleGroupReplyTexts = [v13 styleGroupReplyTexts];
    if ([v15 count] <= count)
    {
      count = [v15 count];
    }

    semanticClassReplyTexts = [v13 semanticClassReplyTexts];
    v18 = [semanticClassReplyTexts objectAtIndexedSubscript:class];
    firstObject = [v18 firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    if (count)
    {
      v20 = 0;
      countCopy = count;
      do
      {
        v21 = [v15 objectAtIndexedSubscript:v20];
        v22 = [styleGroupReplyTexts objectAtIndexedSubscript:{objc_msgSend(v21, "unsignedIntegerValue")}];
        firstObject2 = [v22 firstObject];
        v24 = v9;
        v25 = v8;
        v26 = styleGroupReplyTexts;
        v27 = v15;
        unsignedIntegerValue2 = [firstObject2 unsignedIntegerValue];

        v29 = objc_alloc(MEMORY[0x277CCABB0]);
        v30 = unsignedIntegerValue2 - unsignedIntegerValue;
        v15 = v27;
        styleGroupReplyTexts = v26;
        v8 = v25;
        v9 = v24;
        v31 = [v29 initWithUnsignedInteger:v30];
        v32 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v24 second:v31];
        [v8 addObject:v32];

        ++v20;
      }

      while (countCopy != v20);
    }

    configCopy = v39;
  }

  else
  {
    if ([replies2 replyCountForIndex:class] <= count)
    {
      replies3 = [configCopy replies];
      count = [replies3 replyCountForIndex:class];
    }

    if (count)
    {
      v34 = 0;
      do
      {
        v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v34];
        v36 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v9 second:v35];
        [v8 addObject:v36];

        ++v34;
      }

      while (count != v34);
    }
  }

  return v8;
}

- (id)replyPositionsFromSemanticClasses:(id)classes config:(id)config
{
  v50 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  configCopy = config;
  if (classesCopy)
  {
    v34 = configCopy;
    v8 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = classesCopy;
    v9 = classesCopy;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:v14];
          unsignedIntegerValue = [v15 unsignedIntegerValue];

          v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:unsignedIntegerValue + 1];
          [v8 setObject:v17 forKeyedSubscript:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v11);
    }

    v18 = objc_opt_new();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __70__SGQuickResponsesInference_replyPositionsFromSemanticClasses_config___block_invoke;
    v40[3] = &unk_278EB7858;
    v41 = v34;
    selfCopy = self;
    v19 = v18;
    v43 = v19;
    [v8 enumerateKeysAndObjectsUsingBlock:v40];
    v20 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v21 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v36 + 1) + 8 * j);
          v26 = [v19 objectForKeyedSubscript:v25];
          v27 = [v8 objectForKeyedSubscript:v25];
          unsignedIntegerValue2 = [v27 unsignedIntegerValue];

          v29 = [v26 objectAtIndexedSubscript:{objc_msgSend(v26, "count") - unsignedIntegerValue2}];
          [v20 addObject:v29];
          v30 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:unsignedIntegerValue2 - 1];
          [v8 setObject:v30 forKeyedSubscript:v25];
        }

        v22 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v22);
    }

    classesCopy = v33;
    configCopy = v34;
  }

  else
  {
    v20 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v20;
}

void __70__SGQuickResponsesInference_replyPositionsFromSemanticClasses_config___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 unsignedIntegerValue];
  v8 = [v5 unsignedIntegerValue];

  v9 = [*(a1 + 32) predictionParams];
  v10 = [v9 isPersonalizationDisabled];

  if (v10)
  {
    v11 = [*(a1 + 32) predictionParams];
    v12 = [v11 isReplyTextRandomized];

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v12)
    {
      v15 = [v13 randomizedReplyPositionsForSemanticClass:v7 responseCount:v8 config:v14];
      goto LABEL_6;
    }
  }

  else
  {
    v14 = *(a1 + 32);
    v13 = *(*(a1 + 40) + 32);
  }

  v15 = [v13 replyPositionsForSemanticClass:v7 responseCount:v8 config:v14];
LABEL_6:
  v16 = v15;
  [*(a1 + 48) setObject:v15 forKeyedSubscript:v6];
}

- (id)quickResponsesForMessage:(id)message maximumResponses:(unint64_t)responses conversationHistory:(id)history context:(id)context time:(id)time language:(id)language locale:(id)locale recipients:(id)self0 useContactNames:(BOOL)self1 includeCustomResponses:(BOOL)self2 includeResponsesToRobots:(BOOL)self3
{
  v178 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  historyCopy = history;
  contextCopy = context;
  timeCopy = time;
  languageCopy = language;
  localeCopy = locale;
  recipientsCopy = recipients;
  v22 = objc_autoreleasePoolPush();
  contextCopy2 = v22;
  v167 = messageCopy;
  if (messageCopy)
  {
    context = v22;
    config = [(SGQuickResponsesModel *)self->_model config];
    selfCopy = self;
    if (localeCopy)
    {
      v26 = [SGLanguageDetection languageForLocaleIdentifier:localeCopy];
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = languageCopy;
    }

    v28 = v27;

    v29 = sgLogHandle();
    v30 = os_signpost_id_generate(v29);

    v31 = sgLogHandle();
    v32 = v31;
    v33 = v30 - 1;
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "QuickResponsesForMessageRobo", " enableTelemetry=YES ", buf, 2u);
    }

    v160 = v28;
    if (robots)
    {
      v34 = [SGQuickResponsesToRobots repliesToRobot:v167 language:v28 recipients:recipientsCopy];
      if ([v34 count])
      {
        v35 = sgLogHandle();
        v36 = v35;
        v37 = recipientsCopy;
        if (v33 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24799E000, v36, OS_SIGNPOST_INTERVAL_END, v30, "QuickResponsesForMessageRobo", &unk_2479DB655, buf, 2u);
        }

        v38 = historyCopy;
        v39 = v36;
        goto LABEL_107;
      }
    }

    v40 = sgLogHandle();
    v41 = v40;
    if (v33 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v41, OS_SIGNPOST_INTERVAL_END, v30, "QuickResponsesForMessageRobo", &unk_2479DB655, buf, 2u);
    }

    language = [config language];
    v39 = language;
    if (v28 && ([language isEqualToString:v28]& 1) == 0)
    {
      v37 = recipientsCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v175 = localeCopy;
        v176 = 2112;
        v177 = v39;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot predict for locale %@ using model with language %@", buf, 0x16u);
      }

      v34 = 0;
      v38 = historyCopy;
      goto LABEL_107;
    }

    v156 = v39;
    config2 = [(SGQuickResponsesModel *)self->_model config];
    predictionParams = [config2 predictionParams];
    maxPromptLength = [predictionParams maxPromptLength];

    v37 = recipientsCopy;
    if ([v167 length] > maxPromptLength)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v175 = maxPromptLength;
        _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Returning nil because message length exceeds maximum length %ld)", buf, 0xCu);
      }

      v34 = 0;
      v38 = historyCopy;
      v39 = v156;
      goto LABEL_107;
    }

    v38 = historyCopy;
    if (!historyCopy)
    {
      v46 = +[SGConversationTracker instance];
      v47 = [objc_alloc(MEMORY[0x277D01F70]) initWithText:v167 senderID:contextCopy timestamp:timeCopy];
      v38 = [v46 addMessage:v47];
    }

    v48 = selfCopy;
    v154 = [(SGQuickResponsesInference *)selfCopy _getMergedPromptForMessage:v167 conversationTurns:v38];
    v49 = [SGQuickResponsesInference scoresAndIsConfidentForMessage:selfCopy language:"scoresAndIsConfidentForMessage:language:locale:" locale:?];
    v152 = v49;
    if (!v49)
    {
      v39 = v156;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error obtaining scores for message.", buf, 2u);
      }

      v34 = 0;
      goto LABEL_106;
    }

    v50 = v49;
    v165 = v38;
    modelScores = [v49 modelScores];
    normalizedModelScores = [v50 normalizedModelScores];
    responsesCopy = responses;
    if (!responses)
    {
      predictionParams2 = [config predictionParams];
      responsesCopy = [predictionParams2 defaultResponsesToReturn];
    }

    p_isa = &v48->super.isa;
    replies = [config replies];
    if (responsesCopy >= [replies maxDistinctReplies])
    {
      replies2 = [config replies];
      responsesCopy = [replies2 maxDistinctReplies];
    }

    predictionParams3 = [config predictionParams];
    v151 = modelScores;
    if ([predictionParams3 hasNegativeClass])
    {
      v57 = [modelScores objectAtIndexedSubscript:0];
      [v57 doubleValue];
      v59 = v58;
      predictionParams4 = [config predictionParams];
      [predictionParams4 negativeClassMaximumToPredict];
      v145 = v59 >= v61;

      modelScores = v151;
    }

    else
    {
      v145 = 0;
    }

    v149 = responsesCopy;

    if (normalizedModelScores)
    {
      v62 = normalizedModelScores;
    }

    else
    {
      v62 = modelScores;
    }

    v63 = [SGQuickResponsesScoring sortedWithUnweightedScores:v62 config:config];
    v64 = [v63 objectAtIndexedSubscript:0];
    [v64 value];
    v66 = v65;
    predictionParams5 = [config predictionParams];
    [predictionParams5 minToShowThreshold];
    v143 = v66 < v68;

    v69 = sgLogHandle();
    v70 = os_signpost_id_generate(v69);

    v71 = sgLogHandle();
    v72 = v71;
    v147 = v70 - 1;
    if (v70 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v72, OS_SIGNPOST_INTERVAL_BEGIN, v70, "QuickResponsesForMessageTriggers", " enableTelemetry=YES ", buf, 2u);
    }

    spid = v70;

    v73 = [objc_opt_class() dynamicIndicesAndTopIsDynamic:v63 config:config];
    predictionParams6 = [config predictionParams];
    dynamicLabelsEnabled = [predictionParams6 dynamicLabelsEnabled];

    v76 = v73;
    v150 = v73;
    if (!dynamicLabelsEnabled)
    {
      goto LABEL_62;
    }

    second = [v73 second];
    if ([second BOOLValue])
    {
      v78 = [v63 objectAtIndexedSubscript:0];
      [v78 value];
      v80 = v79;
      predictionParams7 = [config predictionParams];
      [predictionParams7 minToShowThreshold];
      v83 = v82;

      v76 = v150;
      if (v80 < v83)
      {
LABEL_62:
        first = [v76 first];
        v157 = first;
        if ([first count])
        {
          v102 = [v63 mutableCopy];
          [v102 removeObjectsAtIndexes:first];
          predictionParams8 = [config predictionParams];
          modelTypeName = [predictionParams8 modelTypeName];
          v105 = [modelTypeName isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"];

          customResponsesCopy2 = customResponses;
          v107 = v145;
          if (v105)
          {
            v108 = [objc_opt_class() normalizeLabelScores:v102];

            v63 = v108;
          }

          v109 = v147;
          v110 = v149;

          modelScores = v151;
        }

        else
        {
          customResponsesCopy2 = customResponses;
          v109 = v147;
          v110 = v149;
          v107 = v145;
        }

        v111 = v143 || v107;
        v112 = sgLogHandle();
        v113 = v112;
        if (v109 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24799E000, v113, OS_SIGNPOST_INTERVAL_END, spid, "QuickResponsesForMessageTriggers", &unk_2479DB655, buf, 2u);
        }

        v114 = [p_isa[3] resultsForModelScores:v63 responseCount:v110 config:config];
        [p_isa replyPositionsFromSemanticClasses:v114 config:config];
        v148 = v144 = v111;
        v115 = [p_isa quickResponsesFromReplyPositions:? isConfident:? config:?];
        v146 = v114;
        if (recipientsCopy && [recipientsCopy count] == 1)
        {
          firstObject = [recipientsCopy firstObject];
        }

        else
        {
          firstObject = 0;
        }

        v116 = sgLogHandle();
        v117 = os_signpost_id_generate(v116);

        v118 = sgLogHandle();
        v119 = v118;
        if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24799E000, v119, OS_SIGNPOST_INTERVAL_BEGIN, v117, "QuickResponsesForMessageCustom", " enableTelemetry=YES ", buf, 2u);
        }

        if (customResponsesCopy2)
        {
          customResponsesParameters = [config customResponsesParameters];
          useNonNegativeClassesOnly = [customResponsesParameters useNonNegativeClassesOnly];

          if (useNonNegativeClassesOnly)
          {
            modelScores = normalizedModelScores;
          }

          else
          {
            modelScores = v151;
          }

          if (v115)
          {
            if (modelScores)
            {
              customResponsesParameters2 = [config customResponsesParameters];

              if (customResponsesParameters2)
              {
                customResponsesParameters3 = [config customResponsesParameters];
                [p_isa addCustomResponsesToCommonResponses:v115 language:languageCopy locale:localeCopy recipient:firstObject modelScores:modelScores maxResponses:v149 customResponsesParams:customResponsesParameters3];
                v124 = v63;
                v126 = v125 = languageCopy;

                v115 = v126;
                languageCopy = v125;
                v63 = v124;
              }
            }
          }
        }

        v127 = sgLogHandle();
        v128 = v127;
        if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24799E000, v128, OS_SIGNPOST_INTERVAL_END, v117, "QuickResponsesForMessageCustom", &unk_2479DB655, buf, 2u);
        }

        if ([v115 count] == responses)
        {
          v129 = v63;
          v130 = languageCopy;
          predictionParams9 = [config predictionParams];
          v132 = v144 & [predictionParams9 filterNonConfident];

          if (v132 == 1)
          {
            v170 = 0u;
            v171 = 0u;
            v168 = 0u;
            v169 = 0u;
            v34 = v115;
            v133 = [v34 countByEnumeratingWithState:&v168 objects:v172 count:16];
            if (v133)
            {
              v134 = v133;
              v135 = *v169;
              while (2)
              {
                v136 = modelScores;
                for (i = 0; i != v134; ++i)
                {
                  if (*v169 != v135)
                  {
                    objc_enumerationMutation(v34);
                  }

                  if ([*(*(&v168 + 1) + 8 * i) isCustomResponse])
                  {
                    v138 = v115;
                    languageCopy = v130;
                    v37 = recipientsCopy;
                    modelScores = v136;
                    goto LABEL_103;
                  }
                }

                v134 = [v34 countByEnumeratingWithState:&v168 objects:v172 count:16];
                modelScores = v136;
                if (v134)
                {
                  continue;
                }

                break;
              }
            }

            v138 = v115;

            v34 = 0;
          }

          else
          {
            v138 = v115;
            v34 = v115;
          }

          languageCopy = v130;
          v37 = recipientsCopy;
LABEL_103:
          v63 = v129;
        }

        else
        {
          v138 = v115;
          v37 = recipientsCopy;
          v34 = 0;
        }

        second = v146;

        v38 = v165;
        goto LABEL_105;
      }

      v84 = objc_opt_class();
      v85 = [v63 objectAtIndexedSubscript:0];
      second = [v84 dynamicLabelForScore:v85 config:config];

      if (second)
      {
        v86 = [objc_opt_class() proactiveTriggerForDynamicLabel:second context:v154 language:languageCopy useContactNames:names];
        if (v86)
        {
          v87 = v86;
          v88 = languageCopy;
          v89 = sgQuicktypeLogHandle();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            v90 = [v63 objectAtIndexedSubscript:0];
            [v90 value];
            *buf = 138412546;
            v175 = v87;
            v176 = 2048;
            v177 = v91;
            _os_log_impl(&dword_24799E000, v89, OS_LOG_TYPE_DEFAULT, "QuickResponses - trigger: %@, score: %f", buf, 0x16u);
          }

          v92 = [SGQuickResponse alloc];
          v93 = [v63 objectAtIndexedSubscript:0];
          [v93 value];
          v95 = v94;
          predictionParams10 = [config predictionParams];
          [predictionParams10 minToShowThreshold];
          v157 = v87;
          v98 = [(SGQuickResponse *)v92 initWithProactiveTrigger:v87 isConfident:v95 >= v97];

          v99 = sgLogHandle();
          v100 = v99;
          if (v147 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_24799E000, v100, OS_SIGNPOST_INTERVAL_END, spid, "QuickResponsesForMessageTriggers", &unk_2479DB655, buf, 2u);
          }

          v148 = v98;
          v173 = v98;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v173 count:1];
          languageCopy = v88;
          v38 = v165;
          v37 = recipientsCopy;
LABEL_105:
          v39 = v156;

LABEL_106:
LABEL_107:

          contextCopy2 = context;
          goto LABEL_108;
        }
      }

      v76 = v150;
    }

    goto LABEL_62;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"message"}];

  v34 = 0;
  v38 = historyCopy;
  v37 = recipientsCopy;
LABEL_108:
  objc_autoreleasePoolPop(contextCopy2);

  v139 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)scoresAndIsConfidentForMessage:(id)message language:(id)language locale:(id)locale
{
  v56 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  languageCopy = language;
  localeCopy = locale;
  config = [(SGQuickResponsesModel *)self->_model config];
  config2 = [(SGQuickResponsesModel *)self->_model config];
  predictionParams = [config2 predictionParams];
  maxPromptLength = [predictionParams maxPromptLength];

  if ([messageCopy length] <= maxPromptLength)
  {
    config3 = [(SGQuickResponsesModel *)self->_model config];
    language = [config3 language];

    if (localeCopy)
    {
      v18 = [SGLanguageDetection languageForLocaleIdentifier:localeCopy];
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = languageCopy;
    }

    v20 = v19;

    if (v20 && ([language isEqualToString:v20] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v53 = localeCopy;
        v54 = 2112;
        v55 = language;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot predict for locale %@ using model with language %@", buf, 0x16u);
      }

      v15 = 0;
    }

    else
    {
      v51 = language;
      v21 = sgLogHandle();
      v22 = os_signpost_id_generate(v21);

      v23 = sgLogHandle();
      v24 = v23;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24799E000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "QuickResponsesForMessageFeaturization", " enableTelemetry=YES ", buf, 2u);
      }

      v25 = [(SGQuickResponsesModel *)self->_model featuresOf:messageCopy];
      v26 = sgLogHandle();
      v27 = v26;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24799E000, v27, OS_SIGNPOST_INTERVAL_END, v22, "QuickResponsesForMessageFeaturization", &unk_2479DB655, buf, 2u);
      }

      if (v25)
      {
        v28 = sgLogHandle();
        v29 = os_signpost_id_generate(v28);

        v30 = sgLogHandle();
        v31 = v30;
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24799E000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "QuickResponsesForMessagePrediction", " enableTelemetry=YES ", buf, 2u);
        }

        v32 = [(SGQuickResponsesModel *)self->_model predict:v25];
        v33 = sgLogHandle();
        v34 = v33;
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24799E000, v34, OS_SIGNPOST_INTERVAL_END, v29, "QuickResponsesForMessagePrediction", &unk_2479DB655, buf, 2u);
        }

        if (v32)
        {
          predictionParams2 = [config predictionParams];
          hasNegativeClass = [predictionParams2 hasNegativeClass];

          if (hasNegativeClass)
          {
            v37 = 0.0;
            if ([v32 count] >= 2)
            {
              v38 = 1;
              do
              {
                v39 = [v32 objectAtIndexedSubscript:v38];
                [v39 doubleValue];
                v37 = v37 + v40;

                ++v38;
              }

              while ([v32 count] > v38);
            }

            v41 = [v32 subarrayWithRange:{0, objc_msgSend(v32, "count") - 1}];
            v42 = [v41 mutableCopy];

            [v42 setObject:&unk_28599AF18 atIndexedSubscript:0];
            if ([v42 count] >= 2)
            {
              v50 = v25;
              v43 = 1;
              do
              {
                v44 = MEMORY[0x277CCABB0];
                v45 = [v42 objectAtIndexedSubscript:v43];
                [v45 doubleValue];
                v47 = [v44 numberWithDouble:v46 / v37];
                [v42 setObject:v47 atIndexedSubscript:v43];

                ++v43;
              }

              while ([v42 count] > v43);
              v25 = v50;
            }
          }

          else
          {
            v42 = 0;
          }

          v15 = [SGQuickResponsesScores quickResponsesScoresWithModelScores:v32 normalizedModelScores:v42];
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v53 = languageCopy;
            _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not predict score (prediction for language %@ not supported?)", buf, 0xCu);
          }

          v15 = 0;
        }

        language = v51;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = languageCopy;
          _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Could not featurize (prediction for language %@ not supported?)", buf, 0xCu);
        }

        v15 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v53 = maxPromptLength;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Returning nil because message length exceeds maximum length %ld)", buf, 0xCu);
    }

    v15 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)signpostedQuickResponsesForMessage:(id)message maximumResponses:(unint64_t)responses conversationHistory:(id)history context:(id)context time:(id)time language:(id)language locale:(id)locale recipients:(id)self0 useContactNames:(BOOL)self1 includeCustomResponses:(BOOL)self2 includeResponsesToRobots:(BOOL)self3
{
  recipientsCopy = recipients;
  localeCopy = locale;
  languageCopy = language;
  timeCopy = time;
  contextCopy = context;
  historyCopy = history;
  messageCopy = message;
  v25 = sgLogHandle();
  v26 = os_signpost_id_generate(v25);

  v27 = sgLogHandle();
  v28 = v27;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "QuickResponsesForMessage", " enableTelemetry=YES ", buf, 2u);
  }

  BYTE2(v33) = robots;
  BYTE1(v33) = customResponses;
  LOBYTE(v33) = 1;
  v29 = [SGQuickResponsesInference quickResponsesForMessage:"quickResponsesForMessage:maximumResponses:conversationHistory:context:time:language:locale:recipients:useContactNames:includeCustomResponses:includeResponsesToRobots:" maximumResponses:messageCopy conversationHistory:responses context:historyCopy time:contextCopy language:timeCopy locale:languageCopy recipients:localeCopy useContactNames:recipientsCopy includeCustomResponses:v33 includeResponsesToRobots:?];

  v30 = sgLogHandle();
  v31 = v30;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v36 = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v31, OS_SIGNPOST_INTERVAL_END, v26, "QuickResponsesForMessage", &unk_2479DB655, v36, 2u);
  }

  return v29;
}

- (id)_getMergedPromptForMessage:(id)message conversationTurns:(id)turns
{
  model = self->_model;
  turnsCopy = turns;
  messageCopy = message;
  config = [(SGQuickResponsesModel *)model config];
  predictionParams = [config predictionParams];

  maxPromptLength = [predictionParams maxPromptLength];
  [predictionParams maxPromptWindowSeconds];
  v12 = v11;
  promptJoiningString = [predictionParams promptJoiningString];
  v14 = [SGConversationTracker getMergedPromptForMessage:messageCopy conversationTurns:turnsCopy maxPromptLength:maxPromptLength maxPromptWindowSeconds:promptJoiningString promptJoiningString:v12];

  return v14;
}

- (SGQuickResponsesInference)initWithLanguage:(id)language plistPath:(id)path espressoBinFilePath:(id)filePath vocabFilePath:(id)vocabFilePath storeDirectory:(id)directory
{
  v33 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  pathCopy = path;
  filePathCopy = filePath;
  vocabFilePathCopy = vocabFilePath;
  directoryCopy = directory;
  if (![directoryCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"storeDirectory.length"}];
  }

  v18 = [[SGQuickResponsesStore alloc] initInDirectory:directoryCopy inMemory:0 withMigration:1];
  if (v18)
  {
    v19 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel modelForLanguage:languageCopy mode:1 chunkPath:filePathCopy plistPath:pathCopy vocabPath:vocabFilePathCopy];
    v20 = v19;
    if (v19)
    {
      v30 = languageCopy;
      config = [v19 config];
      predictionParams = [config predictionParams];
      isPersonalizationDisabled = [predictionParams isPersonalizationDisabled];

      v24 = objc_opt_new();
      if (isPersonalizationDisabled)
      {
        self = [(SGQuickResponsesInference *)self initWithModel:v20 ranking:v24 personalization:0 rng:0 store:v18];
      }

      else
      {
        v26 = objc_opt_new();
        self = [(SGQuickResponsesInference *)self initWithModel:v20 ranking:v24 personalization:v26 rng:0 store:v18];
      }

      selfCopy = self;
      languageCopy = v30;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = directoryCopy;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "QuickResponses: Could not initialize SGQuickResponsesStore in directory - %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SGQuickResponsesInference)initWithLanguage:(id)language chunkPath:(id)path plistPath:(id)plistPath espressoBinFilePath:(id)filePath vocabFilePath:(id)vocabFilePath
{
  languageCopy = language;
  pathCopy = path;
  plistPathCopy = plistPath;
  filePathCopy = filePath;
  vocabFilePathCopy = vocabFilePath;
  v17 = [SGQuickResponsesConfig modelTypeAndSubModelKeyForLanguage:languageCopy plistPath:plistPathCopy vocabPath:vocabFilePathCopy warmupBlock:&__block_literal_global_424];
  if (v17)
  {
    v18 = pathCopy;
    first = [v17 first];
    v20 = [first isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"];

    if (v20)
    {
      v21 = filePathCopy;

      v18 = v21;
    }

    v22 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel modelForLanguage:languageCopy mode:1 chunkPath:v18 plistPath:plistPathCopy vocabPath:vocabFilePathCopy modelTypeAndSubModelKey:v17];
    v23 = v22;
    if (v22)
    {
      v31 = filePathCopy;
      v32 = pathCopy;
      config = [v22 config];
      predictionParams = [config predictionParams];
      isPersonalizationDisabled = [predictionParams isPersonalizationDisabled];

      v27 = objc_opt_new();
      if (isPersonalizationDisabled)
      {
        self = [(SGQuickResponsesInference *)self initWithModel:v23 ranking:v27 personalization:0 rng:0 store:0];
      }

      else
      {
        v29 = objc_opt_new();
        self = [(SGQuickResponsesInference *)self initWithModel:v23 ranking:v27 personalization:v29 rng:0 store:0];
      }

      pathCopy = v32;

      selfCopy = self;
      filePathCopy = v31;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __100__SGQuickResponsesInference_initWithLanguage_chunkPath_plistPath_espressoBinFilePath_vocabFilePath___block_invoke()
{
  +[SGQuickResponsesToRobots warmup];
  +[SGQuickResponsesStore warmup];

  SGPersonalizeEmojisWarmup();
}

- (SGQuickResponsesInference)initWithModel:(id)model ranking:(id)ranking personalization:(id)personalization rng:(id)rng store:(id)store
{
  modelCopy = model;
  modelCopy2 = model;
  rankingCopy = ranking;
  obj = personalization;
  personalizationCopy = personalization;
  rngCopy = rng;
  rngCopy2 = rng;
  storeCopy = store;
  if (!modelCopy2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"model"}];

    if (rankingCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"ranking"}];

    goto LABEL_3;
  }

  if (!rankingCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  v38 = a2;
  v19 = personalizationCopy;
  if (!personalizationCopy)
  {
    [modelCopy2 config];
    v20 = storeCopy;
    v21 = modelCopy;
    v22 = modelCopy2;
    rankingCopy2 = ranking;
    selfCopy = self;
    v26 = v25 = rankingCopy;
    [v26 predictionParams];
    v27 = v37 = rngCopy2;
    isPersonalizationDisabled = [v27 isPersonalizationDisabled];

    rngCopy2 = v37;
    rankingCopy = v25;
    self = selfCopy;
    ranking = rankingCopy2;
    modelCopy2 = v22;
    modelCopy = v21;
    storeCopy = v20;
    if ((isPersonalizationDisabled & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:v38 object:self file:@"SGQuickResponsesInference.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"personalization != nil || model.config.predictionParams.isPersonalizationDisabled"}];

      rngCopy2 = v37;
    }
  }

  v41.receiver = self;
  v41.super_class = SGQuickResponsesInference;
  v30 = [(SGQuickResponsesInference *)&v41 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_model, modelCopy);
    objc_storeStrong(&v31->_ranking, ranking);
    objc_storeStrong(&v31->_personalization, obj);
    objc_storeStrong(&v31->_rng, rngCopy);
    if (storeCopy)
    {
      v32 = storeCopy;
    }

    else
    {
      v32 = +[SGQuickResponsesStore sharedInstance];
    }

    store = v31->_store;
    v31->_store = v32;
  }

  return v31;
}

+ (void)registerResponse:(id)response position:(id)position isCanned:(BOOL)canned isUsingQuickResponses:(BOOL)responses locale:(id)locale plistPath:(id)path vocabPath:(id)vocabPath
{
  cannedCopy = canned;
  v43 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  positionCopy = position;
  localeCopy = locale;
  pathCopy = path;
  vocabPathCopy = vocabPath;
  v19 = objc_autoreleasePoolPush();
  if (cannedCopy && !responses)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SGQuickResponses: attempted to register a canned response but not using QuickResponses.", buf, 2u);
    }

    v20 = responseCopy;
    goto LABEL_27;
  }

  v21 = +[SGConversationTracker instance];
  [v21 clear];

  v20 = _PASRepairString();

  if (localeCopy)
  {
    v22 = [SGLanguageDetection languageForLocaleIdentifier:localeCopy];
    if (v22)
    {
      v23 = v22;
      v24 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel configForLanguage:v22 mode:1 plistPath:pathCopy vocabPath:vocabPathCopy];
      v25 = v24;
      if (!v24)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v40 = pathCopy;
          v41 = 2112;
          v42 = v23;
          _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGQuickResponses: attempted to register a response but config at %@ is nil (language %@ not supported?).", buf, 0x16u);
        }

        goto LABEL_26;
      }

      v38 = v24;
      if (positionCopy && cannedCopy && (v37 = [positionCopy unsignedIntegerValue], objc_msgSend(v25, "predictionParams"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "defaultResponsesToReturn"), v26, v28 = v37 >= v27, v25 = v38, v28))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = positionCopy;
          v31 = MEMORY[0x277D86220];
          v32 = "SGQuickResponses: attempted to register a canned response at position %@ that is not likely to have come from QuickResponses.";
          v33 = 12;
          goto LABEL_23;
        }
      }

      else
      {
        predictionParams = [v25 predictionParams];
        isPersonalizationDisabled = [predictionParams isPersonalizationDisabled];

        if (!isPersonalizationDisabled)
        {
          v34 = objc_opt_new();
          v35 = v34;
          v25 = v38;
          if (cannedCopy)
          {
            [v34 registerSelectedResponse:v20 config:v38];
          }

          else
          {
            [v34 registerWrittenResponse:v20 config:v38];
          }

          goto LABEL_26;
        }

        v25 = v38;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v31 = MEMORY[0x277D86220];
          v32 = "SGQuickResponses: attempted to register displayed responses but personalization is disabled.";
          v33 = 2;
LABEL_23:
          _os_log_impl(&dword_24799E000, v31, OS_LOG_TYPE_INFO, v32, buf, v33);
        }
      }

LABEL_26:

      goto LABEL_27;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGQuickResponses: attempted to register a response but language is nil.", buf, 2u);
  }

LABEL_27:
  objc_autoreleasePoolPop(v19);

  v36 = *MEMORY[0x277D85DE8];
}

+ (void)registerDisplayedQuickResponses:(id)responses plistPath:(id)path vocabPath:(id)vocabPath
{
  v23 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  pathCopy = path;
  vocabPathCopy = vocabPath;
  v11 = objc_autoreleasePoolPush();
  if ([responsesCopy count])
  {
    firstObject = [responsesCopy firstObject];
    lang = [firstObject lang];

    if (lang)
    {
      v14 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel configForLanguage:lang mode:1 plistPath:pathCopy vocabPath:vocabPathCopy];
      v15 = v14;
      if (v14)
      {
        predictionParams = [v14 predictionParams];
        isPersonalizationDisabled = [predictionParams isPersonalizationDisabled];

        if (isPersonalizationDisabled)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SGQuickResponses: attempted to register displayed responses but personalization is disabled.", &v21, 2u);
          }
        }

        else
        {
          v18 = [self stringsForQuickResponses:responsesCopy];
          if ([v18 count])
          {
            v19 = objc_opt_new();
            [v19 registerDisplayedResponses:v18 config:v15];
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v21 = 138412290;
        v22 = lang;
        _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGQuickResponses: attempted to register displayed responses but config is nil (language %@ not supported?).", &v21, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGQuickResponses: attempted to register displayed responses but language is nil.", &v21, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v21) = 0;
    _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGQuickResponses: attempted to register displayed responses with 0 responses.", &v21, 2u);
  }

  objc_autoreleasePoolPop(v11);

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)dynamicLabelForScore:(id)score config:(id)config
{
  v35 = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  configCopy = config;
  replies = [configCopy replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    replies2 = [configCopy replies];
    predictionParams = [configCopy predictionParams];
    isPerCategory = [predictionParams isPerCategory];

    if (isPerCategory)
    {
      categorySemanticClasses = [replies2 categorySemanticClasses];
      v15 = [categorySemanticClasses objectAtIndexedSubscript:{objc_msgSend(scoreCopy, "index")}];

      if ([v15 count] != 1)
      {
        v26 = sgQuicktypeLogHandle();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
LABEL_14:

          firstObject = 0;
          goto LABEL_15;
        }

        *buf = 134218240;
        index = [scoreCopy index];
        v33 = 2048;
        v34 = [v15 count];
        v27 = "SGQuickResponses: dynamic label (score index %tu) should have one semantic class (count - %tu)!";
LABEL_19:
        _os_log_fault_impl(&dword_24799E000, v26, OS_LOG_TYPE_FAULT, v27, buf, 0x16u);
        goto LABEL_14;
      }

      v16 = [v15 objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v16 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = [scoreCopy index];
    }

    semanticClassReplyTexts = [replies2 semanticClassReplyTexts];
    v15 = [semanticClassReplyTexts objectAtIndexedSubscript:unsignedIntegerValue];

    if ([v15 count] == 1)
    {
      v23 = [v15 objectAtIndexedSubscript:0];
      unsignedIntegerValue2 = [v23 unsignedIntegerValue];

      replyTexts = [replies2 replyTexts];
      firstObject = [replyTexts objectAtIndexedSubscript:unsignedIntegerValue2];

      goto LABEL_15;
    }

    v26 = sgQuicktypeLogHandle();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 134218240;
    index = [scoreCopy index];
    v33 = 2048;
    v34 = [v15 count];
    v27 = "SGQuickResponses: dynamic label (score index %tu) should have one reply text per semantic class (count - %tu)!";
    goto LABEL_19;
  }

  index2 = [scoreCopy index];
  replies3 = [configCopy replies];
  v20 = [replies3 replyCountForIndex:index2];

  if (v20 != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:1125 description:{@"Invalid parameter not satisfying: %@", @"[config.replies replyCountForIndex:semanticClassIndex] == 1"}];
  }

  replies2 = [configCopy replies];
  v15 = [replies2 replyTextsForIndex:index2];
  firstObject = [v15 firstObject];
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)proactiveTriggerForDynamicLabel:(id)label context:(id)context language:(id)language useContactNames:(BOOL)names
{
  v42[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  contextCopy = context;
  languageCopy = language;
  if (proactiveTriggerForDynamicLabel_context_language_useContactNames__onceToken != -1)
  {
    dispatch_once(&proactiveTriggerForDynamicLabel_context_language_useContactNames__onceToken, &__block_literal_global_174);
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__438;
  v39 = __Block_byref_object_dispose__439;
  v40 = &stru_285992FC0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__438;
  v33 = __Block_byref_object_dispose__439;
  v34 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__SGQuickResponsesInference_proactiveTriggerForDynamicLabel_context_language_useContactNames___block_invoke_2;
  v23[3] = &unk_278EB7940;
  v26 = &v29;
  v27 = &v35;
  namesCopy = names;
  v12 = languageCopy;
  v24 = v12;
  v13 = contextCopy;
  v25 = v13;
  v14 = MEMORY[0x24C1B0A20](v23);
  v15 = [proactiveTriggerForDynamicLabel_context_language_useContactNames__triggerForLabel objectForKeyedSubscript:labelCopy];
  if (!v15)
  {
    v20 = sgQuicktypeLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = labelCopy;
      _os_log_fault_impl(&dword_24799E000, v20, OS_LOG_TYPE_FAULT, "SGQuickResponses: Could not find trigger for dynamic label %@", buf, 0xCu);
    }

LABEL_14:

    v18 = 0;
    goto LABEL_15;
  }

  if (([labelCopy isEqualToString:@"thirdPartyPhoneUEhPTkUuM3AK"] & 1) != 0 || (objc_msgSend(labelCopy, "isEqualToString:", @"thirdPartyEmailRU1BSUwuMXAK") & 1) != 0 || objc_msgSend(labelCopy, "isEqualToString:", @"thirdPartyPostalUE9TVEFMLjFwCg"))
  {
    v14[2](v14);
    v16 = v30[5];
    if (v16 != v36[5])
    {
      v17 = v16;
      v18 = [v15 mutableCopy];
      v42[0] = proactiveTriggerForDynamicLabel_context_language_useContactNames__givenNameQualifier;
      *buf = v17;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v42 count:1];
      [v18 setObject:v19 forKey:proactiveTriggerForDynamicLabel_context_language_useContactNames__qualifiersKey];

      goto LABEL_15;
    }

    v20 = sgQuicktypeLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = labelCopy;
      _os_log_impl(&dword_24799E000, v20, OS_LOG_TYPE_DEFAULT, "SGQuickResponses: No name found for thirdparty dynamic label: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = v15;
LABEL_15:

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __94__SGQuickResponsesInference_proactiveTriggerForDynamicLabel_context_language_useContactNames___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    objc_storeStrong(v3, *(*(*(a1 + 56) + 8) + 40));
    if (*(a1 + 64))
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = getSGNameDetectorClass_softClass_440;
    v21 = getSGNameDetectorClass_softClass_440;
    if (!getSGNameDetectorClass_softClass_440)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __getSGNameDetectorClass_block_invoke_441;
      v17[3] = &unk_278EB8500;
      v17[4] = &v18;
      __getSGNameDetectorClass_block_invoke_441(v17);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [[v6 alloc] initWithLanguage:*(a1 + 32)];
    v9 = [v8 detectNames:*(a1 + 40) algorithm:v5];

    if ([v9 count] == 1)
    {
      v10 = [v9 firstObject];
      v11 = *(a1 + 40);
      v12 = [v10 range];
      v14 = [v11 substringWithRange:{v12, v13}];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }
}

void __94__SGQuickResponsesInference_proactiveTriggerForDynamicLabel_context_language_useContactNames___block_invoke()
{
  v54[8] = *MEMORY[0x277D85DE8];
  v32 = *MEMORY[0x277D22F30];
  v31 = *MEMORY[0x277D22FE8];
  v0 = *MEMORY[0x277D22F40];
  v1 = *MEMORY[0x277D22F18];
  v2 = *MEMORY[0x277D23050];
  v3 = *MEMORY[0x277D22FE0];
  v4 = *MEMORY[0x277D22FB8];
  v5 = *MEMORY[0x277D23028];
  v6 = *MEMORY[0x277D22F68];
  v7 = *MEMORY[0x277D23040];
  v8 = *MEMORY[0x277D22F28];
  v9 = *MEMORY[0x277D22FF8];
  v10 = proactiveTriggerForDynamicLabel_context_language_useContactNames__qualifiersKey;
  proactiveTriggerForDynamicLabel_context_language_useContactNames__qualifiersKey = v9;
  v36 = v8;
  v34 = v7;
  v11 = v6;
  v12 = v5;
  v29 = v4;
  v13 = v3;
  v14 = v2;
  v35 = v1;
  v15 = v0;
  v16 = v31;
  v17 = v32;

  objc_storeStrong(&proactiveTriggerForDynamicLabel_context_language_useContactNames__givenNameQualifier, *MEMORY[0x277D22F80]);
  v52[2] = v11;
  v53[0] = @"firstPartyPhoneUEhPTkUuMXAK";
  v51[0] = v17;
  v51[1] = v14;
  v52[0] = v16;
  v52[1] = v13;
  v51[2] = v12;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
  v54[0] = v33;
  v53[1] = @"firstPartyEmailRU1BSUwuMXAK";
  v49[0] = v17;
  v49[1] = v14;
  v50[0] = v15;
  v50[1] = v13;
  v27 = v15;
  v49[2] = v12;
  v50[2] = v11;
  v30 = v11;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
  v54[1] = v28;
  v53[2] = @"firstPartyPostalUE9TVEFMLjFwCg";
  v47[0] = v17;
  v47[1] = v14;
  v48[0] = v35;
  v48[1] = v13;
  v47[2] = v12;
  v48[2] = v11;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
  v54[2] = v26;
  v53[3] = @"thirdPartyPhoneUEhPTkUuM3AK";
  v45[0] = v17;
  v45[1] = v14;
  v46[0] = v16;
  v46[1] = v13;
  v45[2] = v12;
  v46[2] = v34;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
  v54[3] = v25;
  v53[4] = @"thirdPartyEmailRU1BSUwuMXAK";
  v43[0] = v17;
  v43[1] = v14;
  v44[0] = v15;
  v44[1] = v13;
  v43[2] = v12;
  v44[2] = v34;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
  v54[4] = v18;
  v53[5] = @"thirdPartyPostalUE9TVEFMLjFwCg";
  v41[0] = v17;
  v41[1] = v14;
  v42[0] = v35;
  v42[1] = v13;
  v41[2] = v12;
  v42[2] = v34;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v54[5] = v19;
  v53[6] = @"firstPartyLocTE9DLjFwCg";
  v39[0] = v14;
  v39[1] = v12;
  v40[0] = v29;
  v40[1] = v36;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v54[6] = v20;
  v53[7] = @"photoSharingUEhPVE8K";
  v37 = v14;
  v38 = @"photosharing";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v54[7] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:8];
  v23 = proactiveTriggerForDynamicLabel_context_language_useContactNames__triggerForLabel;
  proactiveTriggerForDynamicLabel_context_language_useContactNames__triggerForLabel = v22;

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)normalizeLabelScores:(id)scores
{
  scoresCopy = scores;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(scoresCopy, "count")}];
  if ([scoresCopy count])
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v7 = [scoresCopy objectAtIndexedSubscript:v5];
      [v7 value];
      v6 = v6 + v8;

      ++v5;
    }

    while (v5 < [scoresCopy count]);
  }

  else
  {
    v6 = 0.0;
  }

  if ([scoresCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [SGQuickResponsesClassScore alloc];
      v11 = [scoresCopy objectAtIndexedSubscript:v9];
      [v11 value];
      v13 = v12 / v6;
      v14 = [scoresCopy objectAtIndexedSubscript:v9];
      v15 = -[SGQuickResponsesClassScore initWithValue:index:](v10, "initWithValue:index:", [v14 index], v13);
      [v4 setObject:v15 atIndexedSubscript:v9];

      ++v9;
    }

    while (v9 < [scoresCopy count]);
  }

  return v4;
}

+ (id)dynamicIndicesAndTopIsDynamic:(id)dynamic config:(id)config
{
  dynamicCopy = dynamic;
  configCopy = config;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__438;
  v32 = __Block_byref_object_dispose__439;
  v33 = objc_opt_new();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__438;
  v26 = __Block_byref_object_dispose__439;
  v27 = MEMORY[0x277CBEC28];
  replies = [configCopy replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    replies2 = [configCopy replies];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__SGQuickResponsesInference_dynamicIndicesAndTopIsDynamic_config___block_invoke_2;
    v13[3] = &unk_278EB7918;
    v14 = configCopy;
    v10 = replies2;
    v15 = v10;
    v16 = &v28;
    v17 = &v22;
    [dynamicCopy enumerateObjectsUsingBlock:v13];
    v11 = [MEMORY[0x277D42648] tupleWithFirst:v29[5] second:v23[5]];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__SGQuickResponsesInference_dynamicIndicesAndTopIsDynamic_config___block_invoke;
    v18[3] = &unk_278EB78F0;
    v19 = configCopy;
    v20 = &v28;
    v21 = &v22;
    [dynamicCopy enumerateObjectsUsingBlock:v18];
    v11 = [MEMORY[0x277D42648] tupleWithFirst:v29[5] second:v23[5]];
    v10 = v19;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v11;
}

void __66__SGQuickResponsesInference_dynamicIndicesAndTopIsDynamic_config___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 replies];
  v8 = [v6 index];

  v11 = [v7 replyTextForIndex:v8 position:0];

  if ([SGQuickResponsesDynamicLabelSet isDynamicLabel:v11])
  {
    [*(*(a1[5] + 8) + 40) addIndex:a3];
    if (!a3)
    {
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = MEMORY[0x277CBEC38];
    }
  }
}

void __66__SGQuickResponsesInference_dynamicIndicesAndTopIsDynamic_config___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 predictionParams];
  v8 = [v7 isPerCategory];

  v9 = *(a1 + 40);
  if (v8)
  {
    v10 = [v9 categoryModels];
    v11 = [v6 index];

    v12 = [v10 objectAtIndexedSubscript:v11];
    v19 = [v12 objectAtIndexedSubscript:0];
  }

  else
  {
    v10 = [v9 semanticClassParent];
    v13 = [v6 index];

    v19 = [v10 objectAtIndexedSubscript:v13];
  }

  v14 = [*(a1 + 40) models];
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v19, "unsignedIntegerValue")}];
  v16 = [v15 dynamicLabel];

  if (v16)
  {
    [*(*(*(a1 + 48) + 8) + 40) addIndex:a3];
    if (!a3)
    {
      v17 = *(*(a1 + 56) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = MEMORY[0x277CBEC38];
    }
  }
}

+ (id)quickResponsesForMessage:(id)message conversationTurns:(id)turns maxResponses:(unint64_t)responses localeIdentifier:(id)identifier recipientHandles:(id)handles chunkPath:(id)path plistPath:(id)plistPath espressoBinFilePath:(id)self0 vocabFilePath:(id)self1 useContactNames:(BOOL)self2 includeCustomResponses:(BOOL)self3 includeResponsesToRobots:(BOOL)self4
{
  messageCopy = message;
  turnsCopy = turns;
  identifierCopy = identifier;
  handlesCopy = handles;
  pathCopy = path;
  plistPathCopy = plistPath;
  filePathCopy = filePath;
  vocabFilePathCopy = vocabFilePath;
  if ([pathCopy length] || objc_msgSend(filePathCopy, "length"))
  {
    v40 = messageCopy;
    context = objc_autoreleasePoolPush();
    v27 = [SGLanguageDetection languageForLocaleIdentifier:identifierCopy];
    v28 = [[SGQuickResponsesInference alloc] initWithLanguage:v27 chunkPath:pathCopy plistPath:plistPathCopy espressoBinFilePath:filePathCopy vocabFilePath:vocabFilePathCopy];
    responsesCopy = responses;
    v30 = pathCopy;
    v31 = vocabFilePathCopy;
    v32 = filePathCopy;
    v33 = plistPathCopy;
    v34 = turnsCopy;
    v35 = v28;
    BYTE2(v38) = robots;
    LOWORD(v38) = __PAIR16__(customResponses, names);
    v36 = [SGQuickResponsesInference signpostedQuickResponsesForMessage:v28 maximumResponses:"signpostedQuickResponsesForMessage:maximumResponses:conversationHistory:context:time:language:locale:recipients:useContactNames:includeCustomResponses:includeResponsesToRobots:" conversationHistory:v40 context:responsesCopy time:v34 language:0 locale:0 recipients:v27 useContactNames:identifierCopy includeCustomResponses:handlesCopy includeResponsesToRobots:v38];

    turnsCopy = v34;
    plistPathCopy = v33;
    filePathCopy = v32;
    vocabFilePathCopy = v31;
    pathCopy = v30;

    messageCopy = v40;
    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Required model file(s) not specified.", buf, 2u);
    }

    v36 = 0;
  }

  return v36;
}

+ (id)quickResponsesForMessage:(id)message context:(id)context time:(id)time maxResponses:(unint64_t)responses locale:(id)locale recipientHandles:(id)handles chunkPath:(id)path plistPath:(id)self0 espressoBinFilePath:(id)self1 vocabFilePath:(id)self2 includeCustomResponses:(BOOL)self3 includeResponsesToRobots:(BOOL)self4
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  timeCopy = time;
  localeCopy = locale;
  handlesCopy = handles;
  pathCopy = path;
  plistPathCopy = plistPath;
  filePathCopy = filePath;
  vocabFilePathCopy = vocabFilePath;
  context = objc_autoreleasePoolPush();
  v24 = _PASRepairString();
  v25 = [SGQuickResponsesInference languageForLocale:localeCopy withLanguageDetectionForMessage:v24];
  v37 = pathCopy;
  if (v25)
  {
    v26 = [[SGQuickResponsesInference alloc] initWithLanguage:v25 chunkPath:pathCopy plistPath:plistPathCopy espressoBinFilePath:filePathCopy vocabFilePath:vocabFilePathCopy];
    v27 = v26;
    if (v26)
    {
      BYTE2(v34) = robots;
      BYTE1(v34) = customResponses;
      LOBYTE(v34) = 1;
      v28 = handlesCopy;
      v33 = handlesCopy;
      v29 = timeCopy;
      v30 = [SGQuickResponsesInference signpostedQuickResponsesForMessage:v26 maximumResponses:"signpostedQuickResponsesForMessage:maximumResponses:conversationHistory:context:time:language:locale:recipients:useContactNames:includeCustomResponses:includeResponsesToRobots:" conversationHistory:v24 context:responses time:0 language:contextCopy locale:timeCopy recipients:v25 useContactNames:localeCopy includeCustomResponses:v33 includeResponsesToRobots:v34];
    }

    else
    {
      v28 = handlesCopy;
      v29 = timeCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = v25;
        _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Could not find inference model (an error occurred, or possibly prediction for language %@ not supported)", buf, 0xCu);
      }

      v30 = 0;
    }
  }

  else
  {
    v28 = handlesCopy;
    v29 = timeCopy;
    v30 = 0;
  }

  objc_autoreleasePoolPop(context);
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)stringsForQuickResponses:(id)responses
{
  v18 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  if (responsesCopy)
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = responsesCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          text = [*(*(&v13 + 1) + 8 * i) text];
          [v4 addObject:text];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)languageForLocale:(id)locale withLanguageDetectionForMessage:(id)message
{
  localeCopy = locale;
  messageCopy = message;
  v7 = messageCopy;
  if (!messageCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "QuickResponses: No message was passed in.", buf, 2u);
    }

    goto LABEL_13;
  }

  if (![messageCopy length])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "QuickResponses: Message length 0 passed in, ignoring.", v14, 2u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (localeCopy)
  {
LABEL_8:
    v10 = [SGLanguageDetection languageForLocaleIdentifier:localeCopy];

    goto LABEL_15;
  }

  v8 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "QuickResponses: No locale was passed in.", v13, 2u);
  }

  v9 = [SGLanguageDetection detectLanguageFromText:v7];
  if (v9)
  {
    localeCopy = v9;
    objc_autoreleasePoolPop(v8);
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "QuickResponses: No language was detected from the message.", v12, 2u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_14:
  v10 = 0;
LABEL_15:

  return v10;
}

@end