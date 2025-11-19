@interface SGQuickResponsesPersonalization
+ (id)augmentRecords:(id)a3 semanticClass:(unint64_t)a4 config:(id)a5;
+ (id)deduplicatedReplyTextsForReplyPositions:(id)a3 semanticClass:(unint64_t)a4 responseCount:(unint64_t)a5 config:(id)a6;
- (SGQuickResponsesPersonalization)initWithStore:(id)a3 withRng:(id)a4;
- (id)replyPositionsForSemanticClass:(unint64_t)a3 responseCount:(unint64_t)a4 config:(id)a5;
- (id)sortedReplyPositionsForSemanticClass:(unint64_t)a3 config:(id)a4;
- (void)registerDisplayedResponses:(id)a3 config:(id)a4;
- (void)registerSelectedResponse:(id)a3 config:(id)a4;
- (void)registerWrittenResponse:(id)a3 config:(id)a4;
@end

@implementation SGQuickResponsesPersonalization

- (void)registerWrittenResponse:(id)a3 config:(id)a4
{
  v6 = MEMORY[0x277CCA900];
  v7 = a4;
  v8 = a3;
  v9 = [v6 whitespaceAndNewlineCharacterSet];
  v16 = [v8 stringByTrimmingCharactersInSet:v9];

  v10 = [SGQuickResponsesReplies normalizeReplyText:v16];
  v11 = [v7 replies];
  v12 = [v11 normalizedReplyTextsSet];
  v13 = [v12 containsObject:v10];

  store = self->_store;
  v15 = [v7 language];

  [(SGQuickResponsesStore *)store addWrittenToResponse:v10 language:v15 isMatch:v13];
}

- (void)registerSelectedResponse:(id)a3 config:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [SGQuickResponsesReplies normalizeReplyText:v6];
  v9 = [v7 replies];
  v10 = [v9 normalizedReplyTextsSet];
  v11 = [v10 containsObject:v8];

  if (v11)
  {
    store = self->_store;
    v13 = [v7 language];
    [(SGQuickResponsesStore *)store addSelectedToResponse:v8 language:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No reply text string exists in config for selected response: %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerDisplayedResponses:(id)a3 config:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [SGQuickResponsesReplies normalizeReplyText:v11];
        v13 = [v6 replies];
        v14 = [v13 normalizedReplyTextsSet];
        v15 = [v14 containsObject:v12];

        if (v15)
        {
          [v20 addObject:v12];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v11;
          _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "No reply text string exists in config for displayed response: %@", buf, 0xCu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  store = self->_store;
  v17 = [v6 language];
  [(SGQuickResponsesStore *)store addDisplayedToResponses:v20 language:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)sortedReplyPositionsForSemanticClass:(unint64_t)a3 config:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 replies];
  v8 = [v7 replyTextsForIndex:a3];

  store = self->_store;
  v10 = [v6 language];
  v11 = [(SGQuickResponsesStore *)store recordsForResponsesInternal:v8 language:v10];

  if (v11)
  {
    v12 = [SGQuickResponsesPersonalization augmentRecords:v11 semanticClass:a3 config:v6];

    v13 = [SGQuickResponsesReplyOption sortedReplyOptionsForRecords:v12 config:v6];
    v14 = [v6 predictionParams];
    v15 = [v14 isReplyTextRandomized];

    if (v15)
    {
      [SGRandomization shuffleMutableArray:v13 inApproxEqualEpsilon:&__block_literal_global_110 withValueBlock:self->_rng withRng:0.000001];
    }

    v16 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * i) position];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v16 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

double __79__SGQuickResponsesPersonalization_sortedReplyPositionsForSemanticClass_config___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ucb];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)replyPositionsForSemanticClass:(unint64_t)a3 responseCount:(unint64_t)a4 config:(id)a5
{
  v8 = a5;
  v9 = [(SGQuickResponsesPersonalization *)self sortedReplyPositionsForSemanticClass:a3 config:v8];
  if (!v9)
  {
    v10 = [v8 replies];
    v11 = [v10 replyCountForIndex:a3];

    v9 = [SGRandomization shuffledSamplingWithoutReplacementForK:v11 fromN:v11 withRng:self->_rng];
  }

  v12 = [SGQuickResponsesPersonalization deduplicatedReplyTextsForReplyPositions:v9 semanticClass:a3 responseCount:a4 config:v8];

  return v12;
}

- (SGQuickResponsesPersonalization)initWithStore:(id)a3 withRng:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SGQuickResponsesPersonalization;
  v8 = [(SGQuickResponsesPersonalization *)&v12 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = +[SGQuickResponsesStore sharedInstance];
    }

    store = v8->_store;
    v8->_store = v9;

    objc_storeStrong(&v8->_rng, a4);
  }

  return v8;
}

+ (id)augmentRecords:(id)a3 semanticClass:(unint64_t)a4 config:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v8 replies];
    v12 = [v11 semanticClassSelectedPseudocounts];
    v13 = [v12 objectAtIndexedSubscript:a4];
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_new();
  v15 = [v8 predictionParams];
  [v15 personalizationDisplayedPseudocount];
  v17 = v16;

  v18 = [v8 predictionParams];
  [v18 personalizationSelectedPseudocountPerSemanticClass];
  v20 = v19;

  v21 = [v7 replyRecords];
  v22 = [v21 count];

  if (v22)
  {
    v23 = 0;
    do
    {
      v24 = [v7 replyRecords];
      v25 = [v24 objectAtIndexedSubscript:v23];

      v26 = v20;
      if (v13)
      {
        v27 = [v13 objectAtIndexedSubscript:v23];
        [v27 doubleValue];
        v26 = v20 * v28;
      }

      [v25 selected];
      v30 = v26 + v29;
      [v25 matched];
      v32 = v26 + v31;
      v33 = [SGQuickResponsesReplyRecord alloc];
      [v25 displayed];
      v35 = [(SGQuickResponsesReplyRecord *)v33 initWithDisplayed:v17 + v34 selected:v30 matched:v32];
      [v14 addObject:v35];

      ++v23;
      v36 = [v7 replyRecords];
      v37 = [v36 count];
    }

    while (v23 < v37);
  }

  v38 = [v8 replies];
  v39 = [v38 replyTextCount];

  v40 = [v8 replies];
  v41 = [v40 replyClassCount];

  v42 = [SGQuickResponsesRecords alloc];
  [v7 totalOpportunities];
  v44 = v43 + v17 * v41;
  [v7 totalDisplayed];
  v46 = v45 + v17 * v39;
  [v7 totalSelected];
  v48 = v47 + v20 * v41;
  [v7 totalMatched];
  v50 = v49 + v20 * v41;
  [v7 totalUnmatched];
  v52 = [(SGQuickResponsesRecords *)v42 initWithReplyRecords:v14 totalOpportunities:v44 totalDisplayed:v46 totalSelected:v48 totalMatched:v50 totalUnmatched:v51 + v17 * v39 - v20 * v41];

  return v52;
}

+ (id)deduplicatedReplyTextsForReplyPositions:(id)a3 semanticClass:(unint64_t)a4 responseCount:(unint64_t)a5 config:(id)a6
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v56 = objc_opt_new();
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v11 = [v10 replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v51 = v10;
    v13 = [v10 replies];
    v14 = [v13 semanticClassStyleGroups];
    v15 = [v14 objectAtIndexedSubscript:a4];

    v16 = [v13 semanticClassReplyTexts];
    v17 = [v16 objectAtIndexedSubscript:a4];

    v50 = v13;
    v58 = [v13 replyTextParent];
    v18 = [v15 firstObject];
    v57 = [v18 unsignedIntegerValue];

    v49 = v15;
    v19 = [v15 count];
    v20 = [v17 firstObject];
    v21 = [v20 unsignedIntegerValue];

    v48 = v17;
    v22 = [v17 count];
    for (i = objc_opt_new(); v19; --v19)
    {
      v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:0];
      [i addObject:v24];
    }

    if (v22 >= a5)
    {
      v25 = a5;
    }

    else
    {
      v25 = v22;
    }

    v52 = v9;
    v53 = v25;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v9;
    v26 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v60;
LABEL_9:
      v30 = 0;
      while (1)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v59 + 1) + 8 * v30);
        v32 = [v58 objectAtIndexedSubscript:{objc_msgSend(v31, "unsignedIntegerValue") + v21}];
        v33 = [v32 unsignedIntegerValue];

        v34 = v33 - v57;
        v35 = [i objectAtIndexedSubscript:v33 - v57];
        v36 = [v35 unsignedIntegerValue];

        if (!v36)
        {
          v37 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:1];
          [i setObject:v37 atIndexedSubscript:v34];

          v38 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v55 second:v31];
          [v56 addObject:v38];
          ++v28;

          if (v28 >= v53)
          {
            break;
          }
        }

        if (v27 == ++v30)
        {
          v27 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v27)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    v10 = v51;
    v9 = v52;
  }

  else
  {
    v41 = [v9 count];
    if (a5 && v41)
    {
      v42 = 1;
      do
      {
        v43 = objc_alloc(MEMORY[0x277D42648]);
        v44 = [v9 objectAtIndexedSubscript:v42 - 1];
        v45 = [v43 initWithFirst:v55 second:v44];

        [v56 addObject:v45];
        v46 = [v9 count];
        if (v42 >= a5)
        {
          break;
        }
      }

      while (v42++ < v46);
    }
  }

  v39 = *MEMORY[0x277D85DE8];

  return v56;
}

@end