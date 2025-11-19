@interface SGQuickResponsesRanking
- (SGQuickResponsesRanking)initWithSeed:(unint64_t)a3;
- (id)classResultsForScores:(id)a3 numResponses:(id)a4 responseCount:(unint64_t)a5 config:(id)a6;
- (id)indexesForScores:(id)a3 numResponses:(id)a4;
- (id)resultsForModelScores:(id)a3 responseCount:(unint64_t)a4 config:(id)a5;
- (id)semanticClassesForCategory:(unint64_t)a3 responseCount:(unint64_t)a4 configReplies:(id)a5;
- (id)semanticClassesForResults:(id)a3 scores:(id)a4 numResponses:(id)a5 config:(id)a6;
@end

@implementation SGQuickResponsesRanking

- (id)semanticClassesForCategory:(unint64_t)a3 responseCount:(unint64_t)a4 configReplies:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [v8 categorySemanticClasses];
  v10 = [v9 objectAtIndexedSubscript:a3];

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v10];
  [SGRandomization shuffleMutableArray:v11 withRng:self->_rng];
  if ([v11 count] >= a4)
  {
    v23 = [v11 subarrayWithRange:{0, a4}];
  }

  else
  {
    v26 = self;
    v27 = a4;
    v12 = objc_opt_new();
    v29 = v8;
    v13 = [v8 semanticClasses];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = [v13 objectAtIndexedSubscript:{objc_msgSend(v19, "unsignedIntegerValue", v26)}];
          v21 = [v20 count] - 1;

          for (; v21; --v21)
          {
            [v12 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    [SGRandomization shuffleMutableArray:v12 withRng:v26->_rng];
    v22 = [v12 subarrayWithRange:{0, v27 - objc_msgSend(v11, "count")}];
    v23 = [v11 arrayByAddingObjectsFromArray:v22];

    v10 = v28;
    v8 = v29;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)semanticClassesForResults:(id)a3 scores:(id)a4 numResponses:(id)a5 config:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 predictionParams];
  v15 = [v14 isPerCategory];

  if (v15 & 1) != 0 && ([v13 replies], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, (isKindOfClass))
  {
    v41 = v13;
    v18 = [v13 replies];
    v19 = [v18 categoryModels];
    v20 = [v19 count];

    v21 = objc_opt_new();
    v22 = objc_opt_new();
    v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:0];
    if (v20)
    {
      v24 = MEMORY[0x277CBEBF8];
      do
      {
        [v21 addObject:v24];
        [v22 addObject:v23];
        --v20;
      }

      while (v20);
    }

    v40 = v23;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __80__SGQuickResponsesRanking_semanticClassesForResults_scores_numResponses_config___block_invoke;
    v50[3] = &unk_278EB85F8;
    v43 = v11;
    v51 = v11;
    v25 = v21;
    v52 = v25;
    v53 = self;
    v39 = v18;
    v54 = v39;
    v42 = v12;
    [v12 enumerateObjectsUsingBlock:v50];
    v26 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v44 = v10;
    obj = v10;
    v27 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = [*(*(&v46 + 1) + 8 * i) unsignedIntegerValue];
          v32 = [v22 objectAtIndexedSubscript:v31];
          v33 = [v32 unsignedIntegerValue];

          v34 = [v25 objectAtIndexedSubscript:v31];
          v35 = [v34 objectAtIndexedSubscript:v33];

          v36 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v33 + 1];
          [v22 setObject:v36 atIndexedSubscript:v31];

          [v26 addObject:v35];
        }

        v28 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v28);
    }

    v11 = v43;
    v10 = v44;
    v13 = v41;
    v12 = v42;
  }

  else
  {
    v26 = v10;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v26;
}

void __80__SGQuickResponsesRanking_semanticClassesForResults_scores_numResponses_config___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v8 = [v7 index];

  v9 = [v6 unsignedIntegerValue];
  v10 = [*(a1 + 48) semanticClassesForCategory:v8 responseCount:v9 configReplies:*(a1 + 56)];
  [*(a1 + 40) setObject:v10 atIndexedSubscript:v8];
}

- (id)indexesForScores:(id)a3 numResponses:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SGQuickResponsesRanking_indexesForScores_numResponses___block_invoke;
  v13[3] = &unk_278EB85D0;
  v14 = v5;
  v8 = v7;
  v15 = v8;
  v9 = v5;
  [v6 enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __57__SGQuickResponsesRanking_indexesForScores_numResponses___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unsignedIntegerValue];
  v6 = objc_alloc(MEMORY[0x277CCABB0]);
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = [v6 initWithUnsignedInteger:{objc_msgSend(v7, "index")}];

  for (; v5; --v5)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (id)classResultsForScores:(id)a3 numResponses:(id)a4 responseCount:(unint64_t)a5 config:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [v13 predictionParams];
  v15 = [v14 responsesToShowAtTopForDiversity];

  if (v15 && v15 < a5)
  {
    v16 = [SGQuickResponsesDistributingCount numResponsesForScores:v11 responseCount:v15 config:v13];
    v17 = objc_opt_new();
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __83__SGQuickResponsesRanking_classResultsForScores_numResponses_responseCount_config___block_invoke;
    v27 = &unk_278EB85A8;
    v28 = v16;
    v29 = self;
    v30 = v17;
    v31 = a2;
    v18 = v17;
    v19 = v16;
    [v12 enumerateObjectsUsingBlock:&v24];
    v20 = [(SGQuickResponsesRanking *)self indexesForScores:v11 numResponses:v19, v24, v25, v26, v27];
    v21 = [(SGQuickResponsesRanking *)self indexesForScores:v11 numResponses:v18];
    v22 = [v20 arrayByAddingObjectsFromArray:v21];
  }

  else
  {
    v22 = [(SGQuickResponsesRanking *)self indexesForScores:v11 numResponses:v12];
  }

  return v22;
}

void __83__SGQuickResponsesRanking_classResultsForScores_numResponses_responseCount_config___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    [v11 unsignedIntegerValue];
    v6 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v6 = [v5 unsignedIntegerValue];

    if ([v11 unsignedIntegerValue] < v6)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"SGQuickResponsesRanking.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"num.unsignedIntegerValue >= headerCount"}];
    }
  }

  v8 = [v11 unsignedIntegerValue] - v6;
  v9 = *(a1 + 48);
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v8];
  [v9 addObject:v10];
}

- (id)resultsForModelScores:(id)a3 responseCount:(unint64_t)a4 config:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = [SGQuickResponsesDistributingCount numResponsesForScores:v8 responseCount:a4 config:v9];
    v11 = [(SGQuickResponsesRanking *)self classResultsForScores:v8 numResponses:v10 responseCount:a4 config:v9];
    v12 = [(SGQuickResponsesRanking *)self semanticClassesForResults:v11 scores:v8 numResponses:v10 config:v9];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (SGQuickResponsesRanking)initWithSeed:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = SGQuickResponsesRanking;
  v4 = [(SGQuickResponsesRanking *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D42618]) initWithSeed:a3];
    rng = v4->_rng;
    v4->_rng = v5;
  }

  return v4;
}

@end