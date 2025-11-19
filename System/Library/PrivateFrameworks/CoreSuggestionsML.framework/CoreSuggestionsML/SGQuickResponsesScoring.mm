@interface SGQuickResponsesScoring
+ (id)categoryScoresWithModelScores:(id)a3 configReplies:(id)a4;
+ (id)modelScoresWithUnweightedScores:(id)a3 configReplies:(id)a4;
+ (id)sortedWithUnweightedScores:(id)a3 config:(id)a4;
@end

@implementation SGQuickResponsesScoring

+ (id)categoryScoresWithModelScores:(id)a3 configReplies:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 categoryModels];
  v8 = [v7 count];

  for (i = objc_opt_new(); v8; --v8)
  {
    v10 = objc_opt_new();
    [i addObject:v10];
  }

  v11 = [v6 models];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SGQuickResponsesScoring_categoryScoresWithModelScores_configReplies___block_invoke;
  v17[3] = &unk_278EB85D0;
  v18 = v11;
  v12 = i;
  v19 = v12;
  v13 = v11;
  [v5 enumerateObjectsUsingBlock:v17];
  v14 = v19;
  v15 = v12;

  return v12;
}

void __71__SGQuickResponsesScoring_categoryScoresWithModelScores_configReplies___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v8 = [v7 category];

  v11 = [*(a1 + 40) objectAtIndexedSubscript:v8];
  [v6 doubleValue];
  v10 = v9;

  [v11 addScore:v10];
}

+ (id)modelScoresWithUnweightedScores:(id)a3 configReplies:(id)a4
{
  v5 = a3;
  v6 = [a4 models];
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__SGQuickResponsesScoring_modelScoresWithUnweightedScores_configReplies___block_invoke;
  v13[3] = &unk_278EB85D0;
  v14 = v6;
  v8 = v7;
  v15 = v8;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __73__SGQuickResponsesScoring_modelScoresWithUnweightedScores_configReplies___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 doubleValue];
  v6 = v5;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v7 scoreWeight];
  v9 = v6 * v8;

  v10 = *(a1 + 40);
  v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v9];
  [v10 addObject:v11];
}

+ (id)sortedWithUnweightedScores:(id)a3 config:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v6 replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 replies];
    v11 = [SGQuickResponsesScoring modelScoresWithUnweightedScores:v5 configReplies:v10];
    v12 = [SGQuickResponsesScoring categoryScoresWithModelScores:v11 configReplies:v10];
    v13 = [v6 predictionParams];
    [v13 weightForCategoryAverage];
    v15 = v14;

    v16 = [v6 predictionParams];
    [v16 weightForCategoryMax];
    v18 = v17;

    v19 = [v6 predictionParams];
    [v19 weightForIndividualModel];
    v21 = v20;

    v22 = [v6 predictionParams];
    v23 = [v22 isPerCategory];

    if (v23)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __61__SGQuickResponsesScoring_sortedWithUnweightedScores_config___block_invoke_2;
      v41[3] = &unk_278EB8648;
      v42[1] = v15;
      v42[2] = v18;
      v24 = v42;
      v42[0] = v7;
      [v12 enumerateObjectsUsingBlock:v41];
    }

    else
    {
      v29 = [v10 models];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __61__SGQuickResponsesScoring_sortedWithUnweightedScores_config___block_invoke_3;
      v34[3] = &unk_278EB8670;
      v24 = &v35;
      v35 = v12;
      v38 = v15;
      v39 = v18;
      v36 = v11;
      v40 = v21;
      v37 = v7;
      [v29 enumerateObjectsUsingBlock:v34];
    }

    v30 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0];
    v31 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v30, 0}];
    [v7 sortUsingDescriptors:v31];

    v32 = v7;
  }

  else
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __61__SGQuickResponsesScoring_sortedWithUnweightedScores_config___block_invoke;
    v43[3] = &unk_278EB8620;
    v25 = v7;
    v44 = v25;
    [v5 enumerateObjectsUsingBlock:v43];
    v26 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0];
    v27 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v26, 0}];
    [v25 sortUsingDescriptors:v27];

    v28 = v25;
    v10 = v44;
  }

  return v7;
}

void __61__SGQuickResponsesScoring_sortedWithUnweightedScores_config___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SGQuickResponsesClassScore alloc];
  [v5 doubleValue];
  v8 = v7;

  v9 = [(SGQuickResponsesClassScore *)v6 initWithValue:a3 index:v8];
  [v4 addObject:v9];
}

void __61__SGQuickResponsesScoring_sortedWithUnweightedScores_config___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 average];
  v7 = v6;
  v8 = *(a1 + 40);
  [v5 maximum];
  v10 = v9;

  v11 = v10 * *(a1 + 48) + v7 * v8;
  v12 = *(a1 + 32);
  v13 = [[SGQuickResponsesClassScore alloc] initWithValue:a3 index:v11];
  [v12 addObject:v13];
}

void __61__SGQuickResponsesScoring_sortedWithUnweightedScores_config___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v22, "category")}];
  [v5 average];
  v7 = v6;
  v8 = *(a1 + 56);
  [v5 maximum];
  v10 = v9;
  v11 = *(a1 + 64);
  v12 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v12 doubleValue];
  v14 = v13;
  v15 = *(a1 + 72);

  v16 = [v22 semanticClassIndex];
  v17 = [v22 semanticClasses];
  v18 = [v17 count];

  if (v16 < v18 + v16)
  {
    v19 = v10 * v11 + v7 * v8 + v14 * v15;
    do
    {
      v20 = *(a1 + 48);
      v21 = [[SGQuickResponsesClassScore alloc] initWithValue:v16 index:v19];
      [v20 addObject:v21];

      ++v16;
      --v18;
    }

    while (v18);
  }
}

@end