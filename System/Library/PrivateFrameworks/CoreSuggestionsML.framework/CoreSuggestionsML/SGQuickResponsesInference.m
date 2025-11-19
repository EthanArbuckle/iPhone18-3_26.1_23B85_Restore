@interface SGQuickResponsesInference
+ (id)dynamicIndicesAndTopIsDynamic:(id)a3 config:(id)a4;
+ (id)dynamicLabelForScore:(id)a3 config:(id)a4;
+ (id)languageForLocale:(id)a3 withLanguageDetectionForMessage:(id)a4;
+ (id)normalizeLabelScores:(id)a3;
+ (id)proactiveTriggerForDynamicLabel:(id)a3 context:(id)a4 language:(id)a5 useContactNames:(BOOL)a6;
+ (id)quickResponsesForMessage:(id)a3 context:(id)a4 time:(id)a5 maxResponses:(unint64_t)a6 locale:(id)a7 recipientHandles:(id)a8 chunkPath:(id)a9 plistPath:(id)a10 espressoBinFilePath:(id)a11 vocabFilePath:(id)a12 includeCustomResponses:(BOOL)a13 includeResponsesToRobots:(BOOL)a14;
+ (id)quickResponsesForMessage:(id)a3 conversationTurns:(id)a4 maxResponses:(unint64_t)a5 localeIdentifier:(id)a6 recipientHandles:(id)a7 chunkPath:(id)a8 plistPath:(id)a9 espressoBinFilePath:(id)a10 vocabFilePath:(id)a11 useContactNames:(BOOL)a12 includeCustomResponses:(BOOL)a13 includeResponsesToRobots:(BOOL)a14;
+ (id)stringsForQuickResponses:(id)a3;
+ (void)registerDisplayedQuickResponses:(id)a3 plistPath:(id)a4 vocabPath:(id)a5;
+ (void)registerResponse:(id)a3 position:(id)a4 isCanned:(BOOL)a5 isUsingQuickResponses:(BOOL)a6 locale:(id)a7 plistPath:(id)a8 vocabPath:(id)a9;
- (SGQuickResponsesInference)initWithLanguage:(id)a3 chunkPath:(id)a4 plistPath:(id)a5 espressoBinFilePath:(id)a6 vocabFilePath:(id)a7;
- (SGQuickResponsesInference)initWithLanguage:(id)a3 plistPath:(id)a4 espressoBinFilePath:(id)a5 vocabFilePath:(id)a6 storeDirectory:(id)a7;
- (SGQuickResponsesInference)initWithModel:(id)a3 ranking:(id)a4 personalization:(id)a5 rng:(id)a6 store:(id)a7;
- (id)_getMergedPromptForMessage:(id)a3 conversationTurns:(id)a4;
- (id)addCustomResponsesToCommonResponses:(id)a3 language:(id)a4 locale:(id)a5 recipient:(id)a6 modelScores:(id)a7 maxResponses:(unint64_t)a8 customResponsesParams:(id)a9;
- (id)customResponsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 context:(id)a5 language:(id)a6 locale:(id)a7 recipients:(id)a8;
- (id)quickResponsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 conversationHistory:(id)a5 context:(id)a6 time:(id)a7 language:(id)a8 locale:(id)a9 recipients:(id)a10 useContactNames:(BOOL)a11 includeCustomResponses:(BOOL)a12 includeResponsesToRobots:(BOOL)a13;
- (id)quickResponsesFromReplyPositions:(id)a3 isConfident:(BOOL)a4 config:(id)a5;
- (id)randomizedReplyPositionsForSemanticClass:(unint64_t)a3 responseCount:(unint64_t)a4 config:(id)a5;
- (id)replyPositionsForSemanticClass:(unint64_t)a3 responseCount:(unint64_t)a4 config:(id)a5;
- (id)replyPositionsFromSemanticClasses:(id)a3 config:(id)a4;
- (id)scoresAndIsConfidentForMessage:(id)a3 language:(id)a4 locale:(id)a5;
- (id)signpostedQuickResponsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 conversationHistory:(id)a5 context:(id)a6 time:(id)a7 language:(id)a8 locale:(id)a9 recipients:(id)a10 useContactNames:(BOOL)a11 includeCustomResponses:(BOOL)a12 includeResponsesToRobots:(BOOL)a13;
@end

@implementation SGQuickResponsesInference

- (id)customResponsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 context:(id)a5 language:(id)a6 locale:(id)a7 recipients:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v15)
  {
    v55 = [MEMORY[0x277CCA890] currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:887 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  v20 = [(SGQuickResponsesModel *)self->_model config];
  v21 = v20;
  if (v15 && ([v20 customResponsesParameters], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    v23 = [(SGQuickResponsesInference *)self scoresAndIsConfidentForMessage:v15 language:v17 locale:v18];
    v24 = v23;
    if (v23)
    {
      v58 = v17;
      v62 = v16;
      v63 = v19;
      v25 = [v23 modelScores];
      v26 = [v24 normalizedModelScores];
      v27 = [v21 customResponsesParameters];
      v28 = [v27 useNonNegativeClassesOnly];

      v59 = v26;
      if (v28)
      {
        v29 = v26;

        v25 = v29;
      }

      v30 = [v21 customResponsesParameters];
      v17 = v58;
      v60 = a4;
      v61 = v24;
      if (v63 && [v63 count] == 1)
      {
        v31 = [v63 firstObject];
      }

      else
      {
        v31 = 0;
      }

      store = self->_store;
      [v30 distanceThreshold];
      v35 = v34;
      [v30 countExponent];
      v37 = v36;
      [v30 minDecayedCountForPrediction];
      v39 = v38;
      v40 = [v30 compatibilityVersion];
      v41 = [v30 allowProfanity];
      [v30 minimumTimeIntervalSecs];
      v43 = v42;
      [v30 usageSpreadExponent];
      *&v45 = v44;
      LOBYTE(v56) = v41;
      v57 = v25;
      *&v44 = v35;
      *&v46 = v37;
      *&v47 = v39;
      v48 = [(SGQuickResponsesStore *)store nearestCustomResponsesAndScoresToPromptEmbedding:v25 recipient:v31 limit:v60 withinRadius:v40 responseCountExponent:v58 minimumDecayedCount:v18 compatibilityVersion:v44 language:v46 locale:v47 allowProfanity:v43 minimumTimeInterval:v45 usageSpreadExponent:v56];
      v49 = objc_opt_new();
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __107__SGQuickResponsesInference_customResponsesForMessage_maximumResponses_context_language_locale_recipients___block_invoke;
      v64[3] = &unk_278EB78C8;
      v50 = v49;
      v65 = v50;
      v66 = v30;
      v51 = v30;
      [v48 enumerateObjectsUsingBlock:v64];
      v52 = v31;
      v53 = v66;
      v32 = v50;

      v24 = v61;
      v16 = v62;
      v19 = v63;
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

- (id)addCustomResponsesToCommonResponses:(id)a3 language:(id)a4 locale:(id)a5 recipient:(id)a6 modelScores:(id)a7 maxResponses:(unint64_t)a8 customResponsesParams:(id)a9
{
  v70 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  if ([v20 isCustomResponsesEnabled])
  {
    v62 = v15;
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
    [v20 distanceThreshold];
    v27 = v26;
    [v20 countExponent];
    v29 = v28;
    [v20 minDecayedCountForPrediction];
    v31 = v30;
    v32 = [v20 compatibilityVersion];
    v33 = [v20 allowProfanity];
    [v20 minimumTimeIntervalSecs];
    v35 = v34;
    [v20 usageSpreadExponent];
    *&v37 = v36;
    LOBYTE(v56) = v33;
    v60 = v18;
    *&v36 = v27;
    *&v38 = v29;
    *&v39 = v31;
    v61 = v17;
    v40 = [(SGQuickResponsesStore *)store nearestCustomResponsesToPromptEmbedding:v19 recipient:v18 limit:a8 withinRadius:v32 responseCountExponent:v16 minimumDecayedCount:v17 compatibilityVersion:v36 language:v38 locale:v39 allowProfanity:v35 minimumTimeInterval:v37 usageSpreadExponent:v56];
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
          v47 = [[SGQuickResponse alloc] initWithText:*(*(&v63 + 1) + 8 * i) lang:v16 replyTextId:-1 styleGroupId:-1 semanticClassId:-1 modelId:-1 categoryId:-1 isCustomResponse:v57 isRobotResponse:spid isConfident:?];
          [v41 addObject:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v44);
    }

    if ([v41 count])
    {
      v15 = v62;
      if ([v41 count] < a8 && objc_msgSend(v62, "count"))
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

      v18 = v60;
      if ([v50 count] > a8)
      {
        v51 = [v50 subarrayWithRange:{0, a8}];

        v50 = v51;
      }

      v17 = v61;
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
      v15 = v62;
      v50 = v62;
      v18 = v60;
      v17 = v61;
    }
  }

  else
  {
    v50 = v15;
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

- (id)quickResponsesFromReplyPositions:(id)a3 isConfident:(BOOL)a4 config:(id)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = v7;
  if (v6)
  {
    v62 = [v7 language];
    v63 = objc_opt_new();
    v9 = [v8 replies];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v51 = v8;
      v11 = [v8 replies];
      v59 = [v11 replyTextParent];
      v58 = [v11 styleGroupParent];
      v57 = [v11 semanticClassParent];
      v56 = [v11 models];
      v60 = v11;
      v55 = [v11 replyTexts];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v52 = v6;
      obj = v6;
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
            v17 = [v16 first];
            v18 = [v17 unsignedIntegerValue];

            v19 = [v16 second];
            v20 = [v19 unsignedIntegerValue];

            v21 = [v60 semanticClassReplyTexts];
            v22 = [v21 objectAtIndexedSubscript:v18];
            v23 = [v22 firstObject];
            v24 = [v23 unsignedIntegerValue];

            v25 = [v59 objectAtIndexedSubscript:v24 + v20];
            v26 = [v25 unsignedIntegerValue];

            v27 = [v58 objectAtIndexedSubscript:v26];
            v28 = [v27 unsignedIntegerValue];

            v29 = [v57 objectAtIndexedSubscript:v28];
            v30 = [v29 unsignedIntegerValue];

            v31 = [v56 objectAtIndexedSubscript:v30];
            v32 = [v31 category];

            v33 = [v55 objectAtIndexedSubscript:v24 + v20];
            BYTE2(v50) = a4;
            LOWORD(v50) = 0;
            v34 = [SGQuickResponse initWithText:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:" lang:v33 replyTextId:v62 styleGroupId:v24 + v20 semanticClassId:v26 modelId:v28 categoryId:v30 isCustomResponse:v32 isRobotResponse:v50 isConfident:?];
            [v63 addObject:v34];
          }

          v13 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v13);
      }

      v8 = v51;
      v6 = v52;
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v60 = v6;
      v35 = [v60 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v35)
      {
        v36 = v35;
        v53 = v6;
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
            v40 = [v39 first];
            v41 = [v40 unsignedIntegerValue];

            v42 = [v39 second];
            v43 = [v42 unsignedIntegerValue];

            v44 = [v8 replies];
            v45 = [v44 replyTextsForIndex:v41];
            v46 = [v45 objectAtIndexedSubscript:v43];

            BYTE2(v50) = a4;
            LOWORD(v50) = 0;
            v47 = [SGQuickResponse initWithText:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:" lang:v46 replyTextId:v62 styleGroupId:-1 semanticClassId:-1 modelId:v41 categoryId:-1 isCustomResponse:-1 isRobotResponse:v50 isConfident:?];
            [v63 addObject:v47];
          }

          v36 = [v60 countByEnumeratingWithState:&v68 objects:v73 count:16];
        }

        while (v36);
        v6 = v53;
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

- (id)randomizedReplyPositionsForSemanticClass:(unint64_t)a3 responseCount:(unint64_t)a4 config:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11 = [v8 replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [v8 replies];
  v14 = v13;
  if (isKindOfClass)
  {
    v34 = v8;
    v15 = [v13 semanticClassStyleGroups];
    v33 = [v15 objectAtIndexedSubscript:a3];

    v16 = [v14 styleGroupReplyTexts];
    v17 = [v14 semanticClassReplyTexts];
    v18 = [v17 objectAtIndexedSubscript:a3];
    v19 = [v18 firstObject];
    v20 = [v19 unsignedIntegerValue];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __91__SGQuickResponsesInference_randomizedReplyPositionsForSemanticClass_responseCount_config___block_invoke;
    v35[3] = &unk_278EB7880;
    v21 = v16;
    v36 = v21;
    v37 = self;
    v40 = v20;
    v22 = v9;
    v38 = v22;
    v39 = v10;
    [v33 enumerateObjectsUsingBlock:v35];
    [SGRandomization shuffleMutableArray:v22 withRng:self->_rng];
    if ([v22 count] <= a4)
    {
      a4 = [v22 count];
    }

    v23 = [v22 subarrayWithRange:{0, a4}];

    v8 = v34;
  }

  else
  {
    v24 = [v13 replyCountForIndex:a3];

    if (v24 >= a4)
    {
      v25 = a4;
    }

    else
    {
      v25 = v24;
    }

    v14 = [SGRandomization shuffledSamplingWithoutReplacementForK:v25 fromN:v24 withRng:self->_rng];
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

- (id)replyPositionsForSemanticClass:(unint64_t)a3 responseCount:(unint64_t)a4 config:(id)a5
{
  v7 = a5;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [v7 replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [v7 replies];
  v13 = v12;
  if (isKindOfClass)
  {
    v39 = v7;
    v14 = [v12 semanticClassStyleGroups];
    v15 = [v14 objectAtIndexedSubscript:a3];

    v16 = [v13 styleGroupReplyTexts];
    if ([v15 count] <= a4)
    {
      a4 = [v15 count];
    }

    v17 = [v13 semanticClassReplyTexts];
    v18 = [v17 objectAtIndexedSubscript:a3];
    v19 = [v18 firstObject];
    v41 = [v19 unsignedIntegerValue];

    if (a4)
    {
      v20 = 0;
      v40 = a4;
      do
      {
        v21 = [v15 objectAtIndexedSubscript:v20];
        v22 = [v16 objectAtIndexedSubscript:{objc_msgSend(v21, "unsignedIntegerValue")}];
        v23 = [v22 firstObject];
        v24 = v9;
        v25 = v8;
        v26 = v16;
        v27 = v15;
        v28 = [v23 unsignedIntegerValue];

        v29 = objc_alloc(MEMORY[0x277CCABB0]);
        v30 = v28 - v41;
        v15 = v27;
        v16 = v26;
        v8 = v25;
        v9 = v24;
        v31 = [v29 initWithUnsignedInteger:v30];
        v32 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v24 second:v31];
        [v8 addObject:v32];

        ++v20;
      }

      while (v40 != v20);
    }

    v7 = v39;
  }

  else
  {
    if ([v12 replyCountForIndex:a3] <= a4)
    {
      v33 = [v7 replies];
      a4 = [v33 replyCountForIndex:a3];
    }

    if (a4)
    {
      v34 = 0;
      do
      {
        v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v34];
        v36 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v9 second:v35];
        [v8 addObject:v36];

        ++v34;
      }

      while (a4 != v34);
    }
  }

  return v8;
}

- (id)replyPositionsFromSemanticClasses:(id)a3 config:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v34 = v7;
    v8 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = v6;
    v9 = v6;
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
          v16 = [v15 unsignedIntegerValue];

          v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v16 + 1];
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
    v42 = self;
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
          v28 = [v27 unsignedIntegerValue];

          v29 = [v26 objectAtIndexedSubscript:{objc_msgSend(v26, "count") - v28}];
          [v20 addObject:v29];
          v30 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v28 - 1];
          [v8 setObject:v30 forKeyedSubscript:v25];
        }

        v22 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v22);
    }

    v6 = v33;
    v7 = v34;
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

- (id)quickResponsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 conversationHistory:(id)a5 context:(id)a6 time:(id)a7 language:(id)a8 locale:(id)a9 recipients:(id)a10 useContactNames:(BOOL)a11 includeCustomResponses:(BOOL)a12 includeResponsesToRobots:(BOOL)a13
{
  v178 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v164 = a5;
  v163 = a6;
  v162 = a7;
  v20 = a8;
  v21 = a9;
  v166 = a10;
  v22 = objc_autoreleasePoolPush();
  v23 = v22;
  v167 = v19;
  if (v19)
  {
    context = v22;
    v24 = [(SGQuickResponsesModel *)self->_model config];
    v25 = self;
    if (v21)
    {
      v26 = [SGLanguageDetection languageForLocaleIdentifier:v21];
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
      v27 = v20;
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
    if (a13)
    {
      v34 = [SGQuickResponsesToRobots repliesToRobot:v167 language:v28 recipients:v166];
      if ([v34 count])
      {
        v35 = sgLogHandle();
        v36 = v35;
        v37 = v166;
        if (v33 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24799E000, v36, OS_SIGNPOST_INTERVAL_END, v30, "QuickResponsesForMessageRobo", &unk_2479DB655, buf, 2u);
        }

        v38 = v164;
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

    v42 = [v24 language];
    v39 = v42;
    if (v28 && ([v42 isEqualToString:v28]& 1) == 0)
    {
      v37 = v166;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v175 = v21;
        v176 = 2112;
        v177 = v39;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot predict for locale %@ using model with language %@", buf, 0x16u);
      }

      v34 = 0;
      v38 = v164;
      goto LABEL_107;
    }

    v156 = v39;
    v43 = [(SGQuickResponsesModel *)self->_model config];
    v44 = [v43 predictionParams];
    v45 = [v44 maxPromptLength];

    v37 = v166;
    if ([v167 length] > v45)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v175 = v45;
        _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Returning nil because message length exceeds maximum length %ld)", buf, 0xCu);
      }

      v34 = 0;
      v38 = v164;
      v39 = v156;
      goto LABEL_107;
    }

    v38 = v164;
    if (!v164)
    {
      v46 = +[SGConversationTracker instance];
      v47 = [objc_alloc(MEMORY[0x277D01F70]) initWithText:v167 senderID:v163 timestamp:v162];
      v38 = [v46 addMessage:v47];
    }

    v48 = v25;
    v154 = [(SGQuickResponsesInference *)v25 _getMergedPromptForMessage:v167 conversationTurns:v38];
    v49 = [SGQuickResponsesInference scoresAndIsConfidentForMessage:v25 language:"scoresAndIsConfidentForMessage:language:locale:" locale:?];
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
    v51 = [v49 modelScores];
    v153 = [v50 normalizedModelScores];
    v52 = a4;
    if (!a4)
    {
      v53 = [v24 predictionParams];
      v52 = [v53 defaultResponsesToReturn];
    }

    p_isa = &v48->super.isa;
    v54 = [v24 replies];
    if (v52 >= [v54 maxDistinctReplies])
    {
      v55 = [v24 replies];
      v52 = [v55 maxDistinctReplies];
    }

    v56 = [v24 predictionParams];
    v151 = v51;
    if ([v56 hasNegativeClass])
    {
      v57 = [v51 objectAtIndexedSubscript:0];
      [v57 doubleValue];
      v59 = v58;
      v60 = [v24 predictionParams];
      [v60 negativeClassMaximumToPredict];
      v145 = v59 >= v61;

      v51 = v151;
    }

    else
    {
      v145 = 0;
    }

    v149 = v52;

    if (v153)
    {
      v62 = v153;
    }

    else
    {
      v62 = v51;
    }

    v63 = [SGQuickResponsesScoring sortedWithUnweightedScores:v62 config:v24];
    v64 = [v63 objectAtIndexedSubscript:0];
    [v64 value];
    v66 = v65;
    v67 = [v24 predictionParams];
    [v67 minToShowThreshold];
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

    v73 = [objc_opt_class() dynamicIndicesAndTopIsDynamic:v63 config:v24];
    v74 = [v24 predictionParams];
    v75 = [v74 dynamicLabelsEnabled];

    v76 = v73;
    v150 = v73;
    if (!v75)
    {
      goto LABEL_62;
    }

    v77 = [v73 second];
    if ([v77 BOOLValue])
    {
      v78 = [v63 objectAtIndexedSubscript:0];
      [v78 value];
      v80 = v79;
      v81 = [v24 predictionParams];
      [v81 minToShowThreshold];
      v83 = v82;

      v76 = v150;
      if (v80 < v83)
      {
LABEL_62:
        v101 = [v76 first];
        v157 = v101;
        if ([v101 count])
        {
          v102 = [v63 mutableCopy];
          [v102 removeObjectsAtIndexes:v101];
          v103 = [v24 predictionParams];
          v104 = [v103 modelTypeName];
          v105 = [v104 isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"];

          v106 = a12;
          v107 = v145;
          if (v105)
          {
            v108 = [objc_opt_class() normalizeLabelScores:v102];

            v63 = v108;
          }

          v109 = v147;
          v110 = v149;

          v51 = v151;
        }

        else
        {
          v106 = a12;
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

        v114 = [p_isa[3] resultsForModelScores:v63 responseCount:v110 config:v24];
        [p_isa replyPositionsFromSemanticClasses:v114 config:v24];
        v148 = v144 = v111;
        v115 = [p_isa quickResponsesFromReplyPositions:? isConfident:? config:?];
        v146 = v114;
        if (v166 && [v166 count] == 1)
        {
          v158 = [v166 firstObject];
        }

        else
        {
          v158 = 0;
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

        if (v106)
        {
          v120 = [v24 customResponsesParameters];
          v121 = [v120 useNonNegativeClassesOnly];

          if (v121)
          {
            v51 = v153;
          }

          else
          {
            v51 = v151;
          }

          if (v115)
          {
            if (v51)
            {
              v122 = [v24 customResponsesParameters];

              if (v122)
              {
                v123 = [v24 customResponsesParameters];
                [p_isa addCustomResponsesToCommonResponses:v115 language:v20 locale:v21 recipient:v158 modelScores:v51 maxResponses:v149 customResponsesParams:v123];
                v124 = v63;
                v126 = v125 = v20;

                v115 = v126;
                v20 = v125;
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

        if ([v115 count] == a4)
        {
          v129 = v63;
          v130 = v20;
          v131 = [v24 predictionParams];
          v132 = v144 & [v131 filterNonConfident];

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
                v136 = v51;
                for (i = 0; i != v134; ++i)
                {
                  if (*v169 != v135)
                  {
                    objc_enumerationMutation(v34);
                  }

                  if ([*(*(&v168 + 1) + 8 * i) isCustomResponse])
                  {
                    v138 = v115;
                    v20 = v130;
                    v37 = v166;
                    v51 = v136;
                    goto LABEL_103;
                  }
                }

                v134 = [v34 countByEnumeratingWithState:&v168 objects:v172 count:16];
                v51 = v136;
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

          v20 = v130;
          v37 = v166;
LABEL_103:
          v63 = v129;
        }

        else
        {
          v138 = v115;
          v37 = v166;
          v34 = 0;
        }

        v77 = v146;

        v38 = v165;
        goto LABEL_105;
      }

      v84 = objc_opt_class();
      v85 = [v63 objectAtIndexedSubscript:0];
      v77 = [v84 dynamicLabelForScore:v85 config:v24];

      if (v77)
      {
        v86 = [objc_opt_class() proactiveTriggerForDynamicLabel:v77 context:v154 language:v20 useContactNames:a11];
        if (v86)
        {
          v87 = v86;
          v88 = v20;
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
          v96 = [v24 predictionParams];
          [v96 minToShowThreshold];
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
          v20 = v88;
          v38 = v165;
          v37 = v166;
LABEL_105:
          v39 = v156;

LABEL_106:
LABEL_107:

          v23 = context;
          goto LABEL_108;
        }
      }

      v76 = v150;
    }

    goto LABEL_62;
  }

  v141 = [MEMORY[0x277CCA890] currentHandler];
  [v141 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"message"}];

  v34 = 0;
  v38 = v164;
  v37 = v166;
LABEL_108:
  objc_autoreleasePoolPop(v23);

  v139 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)scoresAndIsConfidentForMessage:(id)a3 language:(id)a4 locale:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SGQuickResponsesModel *)self->_model config];
  v12 = [(SGQuickResponsesModel *)self->_model config];
  v13 = [v12 predictionParams];
  v14 = [v13 maxPromptLength];

  if ([v8 length] <= v14)
  {
    v16 = [(SGQuickResponsesModel *)self->_model config];
    v17 = [v16 language];

    if (v10)
    {
      v18 = [SGLanguageDetection languageForLocaleIdentifier:v10];
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
      v19 = v9;
    }

    v20 = v19;

    if (v20 && ([v17 isEqualToString:v20] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v53 = v10;
        v54 = 2112;
        v55 = v17;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot predict for locale %@ using model with language %@", buf, 0x16u);
      }

      v15 = 0;
    }

    else
    {
      v51 = v17;
      v21 = sgLogHandle();
      v22 = os_signpost_id_generate(v21);

      v23 = sgLogHandle();
      v24 = v23;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24799E000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "QuickResponsesForMessageFeaturization", " enableTelemetry=YES ", buf, 2u);
      }

      v25 = [(SGQuickResponsesModel *)self->_model featuresOf:v8];
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
          v35 = [v11 predictionParams];
          v36 = [v35 hasNegativeClass];

          if (v36)
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
            v53 = v9;
            _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not predict score (prediction for language %@ not supported?)", buf, 0xCu);
          }

          v15 = 0;
        }

        v17 = v51;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = v9;
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
      v53 = v14;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Returning nil because message length exceeds maximum length %ld)", buf, 0xCu);
    }

    v15 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)signpostedQuickResponsesForMessage:(id)a3 maximumResponses:(unint64_t)a4 conversationHistory:(id)a5 context:(id)a6 time:(id)a7 language:(id)a8 locale:(id)a9 recipients:(id)a10 useContactNames:(BOOL)a11 includeCustomResponses:(BOOL)a12 includeResponsesToRobots:(BOOL)a13
{
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = sgLogHandle();
  v26 = os_signpost_id_generate(v25);

  v27 = sgLogHandle();
  v28 = v27;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "QuickResponsesForMessage", " enableTelemetry=YES ", buf, 2u);
  }

  BYTE2(v33) = a13;
  BYTE1(v33) = a12;
  LOBYTE(v33) = 1;
  v29 = [SGQuickResponsesInference quickResponsesForMessage:"quickResponsesForMessage:maximumResponses:conversationHistory:context:time:language:locale:recipients:useContactNames:includeCustomResponses:includeResponsesToRobots:" maximumResponses:v24 conversationHistory:a4 context:v23 time:v22 language:v21 locale:v20 recipients:v19 useContactNames:v18 includeCustomResponses:v33 includeResponsesToRobots:?];

  v30 = sgLogHandle();
  v31 = v30;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v36 = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v31, OS_SIGNPOST_INTERVAL_END, v26, "QuickResponsesForMessage", &unk_2479DB655, v36, 2u);
  }

  return v29;
}

- (id)_getMergedPromptForMessage:(id)a3 conversationTurns:(id)a4
{
  model = self->_model;
  v6 = a4;
  v7 = a3;
  v8 = [(SGQuickResponsesModel *)model config];
  v9 = [v8 predictionParams];

  v10 = [v9 maxPromptLength];
  [v9 maxPromptWindowSeconds];
  v12 = v11;
  v13 = [v9 promptJoiningString];
  v14 = [SGConversationTracker getMergedPromptForMessage:v7 conversationTurns:v6 maxPromptLength:v10 maxPromptWindowSeconds:v13 promptJoiningString:v12];

  return v14;
}

- (SGQuickResponsesInference)initWithLanguage:(id)a3 plistPath:(id)a4 espressoBinFilePath:(id)a5 vocabFilePath:(id)a6 storeDirectory:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (![v17 length])
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"storeDirectory.length"}];
  }

  v18 = [[SGQuickResponsesStore alloc] initInDirectory:v17 inMemory:0 withMigration:1];
  if (v18)
  {
    v19 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel modelForLanguage:v13 mode:1 chunkPath:v15 plistPath:v14 vocabPath:v16];
    v20 = v19;
    if (v19)
    {
      v30 = v13;
      v21 = [v19 config];
      v22 = [v21 predictionParams];
      v23 = [v22 isPersonalizationDisabled];

      v24 = objc_opt_new();
      if (v23)
      {
        self = [(SGQuickResponsesInference *)self initWithModel:v20 ranking:v24 personalization:0 rng:0 store:v18];
      }

      else
      {
        v26 = objc_opt_new();
        self = [(SGQuickResponsesInference *)self initWithModel:v20 ranking:v24 personalization:v26 rng:0 store:v18];
      }

      v25 = self;
      v13 = v30;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v17;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "QuickResponses: Could not initialize SGQuickResponsesStore in directory - %@", buf, 0xCu);
    }

    v25 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (SGQuickResponsesInference)initWithLanguage:(id)a3 chunkPath:(id)a4 plistPath:(id)a5 espressoBinFilePath:(id)a6 vocabFilePath:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [SGQuickResponsesConfig modelTypeAndSubModelKeyForLanguage:v12 plistPath:v14 vocabPath:v16 warmupBlock:&__block_literal_global_424];
  if (v17)
  {
    v18 = v13;
    v19 = [v17 first];
    v20 = [v19 isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"];

    if (v20)
    {
      v21 = v15;

      v18 = v21;
    }

    v22 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel modelForLanguage:v12 mode:1 chunkPath:v18 plistPath:v14 vocabPath:v16 modelTypeAndSubModelKey:v17];
    v23 = v22;
    if (v22)
    {
      v31 = v15;
      v32 = v13;
      v24 = [v22 config];
      v25 = [v24 predictionParams];
      v26 = [v25 isPersonalizationDisabled];

      v27 = objc_opt_new();
      if (v26)
      {
        self = [(SGQuickResponsesInference *)self initWithModel:v23 ranking:v27 personalization:0 rng:0 store:0];
      }

      else
      {
        v29 = objc_opt_new();
        self = [(SGQuickResponsesInference *)self initWithModel:v23 ranking:v27 personalization:v29 rng:0 store:0];
      }

      v13 = v32;

      v28 = self;
      v15 = v31;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void __100__SGQuickResponsesInference_initWithLanguage_chunkPath_plistPath_espressoBinFilePath_vocabFilePath___block_invoke()
{
  +[SGQuickResponsesToRobots warmup];
  +[SGQuickResponsesStore warmup];

  SGPersonalizeEmojisWarmup();
}

- (SGQuickResponsesInference)initWithModel:(id)a3 ranking:(id)a4 personalization:(id)a5 rng:(id)a6 store:(id)a7
{
  v11 = a3;
  v14 = a3;
  v15 = a4;
  obj = a5;
  v16 = a5;
  v40 = a6;
  v17 = a6;
  v18 = a7;
  if (!v14)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"model"}];

    if (v15)
    {
      goto LABEL_3;
    }

LABEL_13:
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"ranking"}];

    goto LABEL_3;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_3:
  v38 = a2;
  v19 = v16;
  if (!v16)
  {
    [v14 config];
    v20 = v18;
    v21 = v11;
    v22 = v14;
    v23 = a4;
    v24 = self;
    v26 = v25 = v15;
    [v26 predictionParams];
    v27 = v37 = v17;
    v28 = [v27 isPersonalizationDisabled];

    v17 = v37;
    v15 = v25;
    self = v24;
    a4 = v23;
    v14 = v22;
    v11 = v21;
    v18 = v20;
    if ((v28 & 1) == 0)
    {
      v29 = [MEMORY[0x277CCA890] currentHandler];
      [v29 handleFailureInMethod:v38 object:self file:@"SGQuickResponsesInference.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"personalization != nil || model.config.predictionParams.isPersonalizationDisabled"}];

      v17 = v37;
    }
  }

  v41.receiver = self;
  v41.super_class = SGQuickResponsesInference;
  v30 = [(SGQuickResponsesInference *)&v41 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_model, v11);
    objc_storeStrong(&v31->_ranking, a4);
    objc_storeStrong(&v31->_personalization, obj);
    objc_storeStrong(&v31->_rng, v40);
    if (v18)
    {
      v32 = v18;
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

+ (void)registerResponse:(id)a3 position:(id)a4 isCanned:(BOOL)a5 isUsingQuickResponses:(BOOL)a6 locale:(id)a7 plistPath:(id)a8 vocabPath:(id)a9
{
  v12 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = objc_autoreleasePoolPush();
  if (v12 && !a6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SGQuickResponses: attempted to register a canned response but not using QuickResponses.", buf, 2u);
    }

    v20 = v14;
    goto LABEL_27;
  }

  v21 = +[SGConversationTracker instance];
  [v21 clear];

  v20 = _PASRepairString();

  if (v16)
  {
    v22 = [SGLanguageDetection languageForLocaleIdentifier:v16];
    if (v22)
    {
      v23 = v22;
      v24 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel configForLanguage:v22 mode:1 plistPath:v17 vocabPath:v18];
      v25 = v24;
      if (!v24)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v40 = v17;
          v41 = 2112;
          v42 = v23;
          _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGQuickResponses: attempted to register a response but config at %@ is nil (language %@ not supported?).", buf, 0x16u);
        }

        goto LABEL_26;
      }

      v38 = v24;
      if (v15 && v12 && (v37 = [v15 unsignedIntegerValue], objc_msgSend(v25, "predictionParams"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "defaultResponsesToReturn"), v26, v28 = v37 >= v27, v25 = v38, v28))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v15;
          v31 = MEMORY[0x277D86220];
          v32 = "SGQuickResponses: attempted to register a canned response at position %@ that is not likely to have come from QuickResponses.";
          v33 = 12;
          goto LABEL_23;
        }
      }

      else
      {
        v29 = [v25 predictionParams];
        v30 = [v29 isPersonalizationDisabled];

        if (!v30)
        {
          v34 = objc_opt_new();
          v35 = v34;
          v25 = v38;
          if (v12)
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

+ (void)registerDisplayedQuickResponses:(id)a3 plistPath:(id)a4 vocabPath:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if ([v8 count])
  {
    v12 = [v8 firstObject];
    v13 = [v12 lang];

    if (v13)
    {
      v14 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel configForLanguage:v13 mode:1 plistPath:v9 vocabPath:v10];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 predictionParams];
        v17 = [v16 isPersonalizationDisabled];

        if (v17)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SGQuickResponses: attempted to register displayed responses but personalization is disabled.", &v21, 2u);
          }
        }

        else
        {
          v18 = [a1 stringsForQuickResponses:v8];
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
        v22 = v13;
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

+ (id)dynamicLabelForScore:(id)a3 config:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v8 replies];
    v12 = [v8 predictionParams];
    v13 = [v12 isPerCategory];

    if (v13)
    {
      v14 = [v11 categorySemanticClasses];
      v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "index")}];

      if ([v15 count] != 1)
      {
        v26 = sgQuicktypeLogHandle();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
LABEL_14:

          v21 = 0;
          goto LABEL_15;
        }

        *buf = 134218240;
        v32 = [v7 index];
        v33 = 2048;
        v34 = [v15 count];
        v27 = "SGQuickResponses: dynamic label (score index %tu) should have one semantic class (count - %tu)!";
LABEL_19:
        _os_log_fault_impl(&dword_24799E000, v26, OS_LOG_TYPE_FAULT, v27, buf, 0x16u);
        goto LABEL_14;
      }

      v16 = [v15 objectAtIndexedSubscript:0];
      v17 = [v16 unsignedIntegerValue];
    }

    else
    {
      v17 = [v7 index];
    }

    v22 = [v11 semanticClassReplyTexts];
    v15 = [v22 objectAtIndexedSubscript:v17];

    if ([v15 count] == 1)
    {
      v23 = [v15 objectAtIndexedSubscript:0];
      v24 = [v23 unsignedIntegerValue];

      v25 = [v11 replyTexts];
      v21 = [v25 objectAtIndexedSubscript:v24];

      goto LABEL_15;
    }

    v26 = sgQuicktypeLogHandle();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 134218240;
    v32 = [v7 index];
    v33 = 2048;
    v34 = [v15 count];
    v27 = "SGQuickResponses: dynamic label (score index %tu) should have one reply text per semantic class (count - %tu)!";
    goto LABEL_19;
  }

  v18 = [v7 index];
  v19 = [v8 replies];
  v20 = [v19 replyCountForIndex:v18];

  if (v20 != 1)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesInference.m" lineNumber:1125 description:{@"Invalid parameter not satisfying: %@", @"[config.replies replyCountForIndex:semanticClassIndex] == 1"}];
  }

  v11 = [v8 replies];
  v15 = [v11 replyTextsForIndex:v18];
  v21 = [v15 firstObject];
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)proactiveTriggerForDynamicLabel:(id)a3 context:(id)a4 language:(id)a5 useContactNames:(BOOL)a6
{
  v42[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  v28 = a6;
  v12 = v11;
  v24 = v12;
  v13 = v10;
  v25 = v13;
  v14 = MEMORY[0x24C1B0A20](v23);
  v15 = [proactiveTriggerForDynamicLabel_context_language_useContactNames__triggerForLabel objectForKeyedSubscript:v9];
  if (!v15)
  {
    v20 = sgQuicktypeLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_fault_impl(&dword_24799E000, v20, OS_LOG_TYPE_FAULT, "SGQuickResponses: Could not find trigger for dynamic label %@", buf, 0xCu);
    }

LABEL_14:

    v18 = 0;
    goto LABEL_15;
  }

  if (([v9 isEqualToString:@"thirdPartyPhoneUEhPTkUuM3AK"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"thirdPartyEmailRU1BSUwuMXAK") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"thirdPartyPostalUE9TVEFMLjFwCg"))
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
      *&buf[4] = v9;
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

+ (id)normalizeLabelScores:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v5];
      [v7 value];
      v6 = v6 + v8;

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  else
  {
    v6 = 0.0;
  }

  if ([v3 count])
  {
    v9 = 0;
    do
    {
      v10 = [SGQuickResponsesClassScore alloc];
      v11 = [v3 objectAtIndexedSubscript:v9];
      [v11 value];
      v13 = v12 / v6;
      v14 = [v3 objectAtIndexedSubscript:v9];
      v15 = -[SGQuickResponsesClassScore initWithValue:index:](v10, "initWithValue:index:", [v14 index], v13);
      [v4 setObject:v15 atIndexedSubscript:v9];

      ++v9;
    }

    while (v9 < [v3 count]);
  }

  return v4;
}

+ (id)dynamicIndicesAndTopIsDynamic:(id)a3 config:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v7 = [v6 replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 replies];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__SGQuickResponsesInference_dynamicIndicesAndTopIsDynamic_config___block_invoke_2;
    v13[3] = &unk_278EB7918;
    v14 = v6;
    v10 = v9;
    v15 = v10;
    v16 = &v28;
    v17 = &v22;
    [v5 enumerateObjectsUsingBlock:v13];
    v11 = [MEMORY[0x277D42648] tupleWithFirst:v29[5] second:v23[5]];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__SGQuickResponsesInference_dynamicIndicesAndTopIsDynamic_config___block_invoke;
    v18[3] = &unk_278EB78F0;
    v19 = v6;
    v20 = &v28;
    v21 = &v22;
    [v5 enumerateObjectsUsingBlock:v18];
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

+ (id)quickResponsesForMessage:(id)a3 conversationTurns:(id)a4 maxResponses:(unint64_t)a5 localeIdentifier:(id)a6 recipientHandles:(id)a7 chunkPath:(id)a8 plistPath:(id)a9 espressoBinFilePath:(id)a10 vocabFilePath:(id)a11 useContactNames:(BOOL)a12 includeCustomResponses:(BOOL)a13 includeResponsesToRobots:(BOOL)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  if ([v23 length] || objc_msgSend(v25, "length"))
  {
    v40 = v19;
    context = objc_autoreleasePoolPush();
    v27 = [SGLanguageDetection languageForLocaleIdentifier:v21];
    v28 = [[SGQuickResponsesInference alloc] initWithLanguage:v27 chunkPath:v23 plistPath:v24 espressoBinFilePath:v25 vocabFilePath:v26];
    v29 = a5;
    v30 = v23;
    v31 = v26;
    v32 = v25;
    v33 = v24;
    v34 = v20;
    v35 = v28;
    BYTE2(v38) = a14;
    LOWORD(v38) = __PAIR16__(a13, a12);
    v36 = [SGQuickResponsesInference signpostedQuickResponsesForMessage:v28 maximumResponses:"signpostedQuickResponsesForMessage:maximumResponses:conversationHistory:context:time:language:locale:recipients:useContactNames:includeCustomResponses:includeResponsesToRobots:" conversationHistory:v40 context:v29 time:v34 language:0 locale:0 recipients:v27 useContactNames:v21 includeCustomResponses:v22 includeResponsesToRobots:v38];

    v20 = v34;
    v24 = v33;
    v25 = v32;
    v26 = v31;
    v23 = v30;

    v19 = v40;
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

+ (id)quickResponsesForMessage:(id)a3 context:(id)a4 time:(id)a5 maxResponses:(unint64_t)a6 locale:(id)a7 recipientHandles:(id)a8 chunkPath:(id)a9 plistPath:(id)a10 espressoBinFilePath:(id)a11 vocabFilePath:(id)a12 includeCustomResponses:(BOOL)a13 includeResponsesToRobots:(BOOL)a14
{
  v41 = *MEMORY[0x277D85DE8];
  v38 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  context = objc_autoreleasePoolPush();
  v24 = _PASRepairString();
  v25 = [SGQuickResponsesInference languageForLocale:v18 withLanguageDetectionForMessage:v24];
  v37 = v20;
  if (v25)
  {
    v26 = [[SGQuickResponsesInference alloc] initWithLanguage:v25 chunkPath:v20 plistPath:v21 espressoBinFilePath:v22 vocabFilePath:v23];
    v27 = v26;
    if (v26)
    {
      BYTE2(v34) = a14;
      BYTE1(v34) = a13;
      LOBYTE(v34) = 1;
      v28 = v19;
      v33 = v19;
      v29 = v17;
      v30 = [SGQuickResponsesInference signpostedQuickResponsesForMessage:v26 maximumResponses:"signpostedQuickResponsesForMessage:maximumResponses:conversationHistory:context:time:language:locale:recipients:useContactNames:includeCustomResponses:includeResponsesToRobots:" conversationHistory:v24 context:a6 time:0 language:v38 locale:v17 recipients:v25 useContactNames:v18 includeCustomResponses:v33 includeResponsesToRobots:v34];
    }

    else
    {
      v28 = v19;
      v29 = v17;
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
    v28 = v19;
    v29 = v17;
    v30 = 0;
  }

  objc_autoreleasePoolPop(context);
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)stringsForQuickResponses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
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

          v10 = [*(*(&v13 + 1) + 8 * i) text];
          [v4 addObject:v10];
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

+ (id)languageForLocale:(id)a3 withLanguageDetectionForMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "QuickResponses: No message was passed in.", buf, 2u);
    }

    goto LABEL_13;
  }

  if (![v6 length])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "QuickResponses: Message length 0 passed in, ignoring.", v14, 2u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v5)
  {
LABEL_8:
    v10 = [SGLanguageDetection languageForLocaleIdentifier:v5];

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
    v5 = v9;
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