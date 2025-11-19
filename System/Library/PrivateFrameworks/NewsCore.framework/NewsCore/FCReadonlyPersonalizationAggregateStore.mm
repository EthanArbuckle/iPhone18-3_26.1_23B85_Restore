@interface FCReadonlyPersonalizationAggregateStore
- (FCReadonlyPersonalizationAggregateStore)init;
- (FCReadonlyPersonalizationAggregateStore)initWithGenerator:(id)a3;
- (NSDictionary)allAggregates;
- (id)aggregateForFeatureKey:(id)a3;
- (id)aggregatesForFeatureKeys:(id)a3;
- (id)aggregatesForFeatures:(id)a3;
- (id)baselineAggregateWithConfigurableValues:(id)a3;
- (void)enumerateAggregatesUsingBlock:(id)a3;
- (void)modifyLocalAggregatesForFeatureKeys:(id)a3 withAction:(unint64_t)a4 actionCount:(unint64_t)a5 defaultClicks:(double)a6 defaultImpressions:(double)a7 impressionBias:(double)a8 configurableValues:(id)a9;
- (void)prepareAggregatesForUseWithCompletionHandler:(id)a3;
- (void)processTodayPersonalizationUpdates:(id)a3 withConfigurableValues:(id)a4;
- (void)updateFeatures:(id)a3 withAction:(unint64_t)a4 displayRank:(int64_t)a5 groupRank:(int64_t)a6 individually:(BOOL)a7 configurableValues:(id)a8;
@end

@implementation FCReadonlyPersonalizationAggregateStore

- (FCReadonlyPersonalizationAggregateStore)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCReadonlyPersonalizationAggregateStore init]";
    v10 = 2080;
    v11 = "FCPersonalizationAggregate.m";
    v12 = 1024;
    v13 = 116;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCReadonlyPersonalizationAggregateStore init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCReadonlyPersonalizationAggregateStore)initWithGenerator:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "generator"];
    *buf = 136315906;
    v20 = "[FCReadonlyPersonalizationAggregateStore initWithGenerator:]";
    v21 = 2080;
    v22 = "FCPersonalizationAggregate.m";
    v23 = 1024;
    v24 = 121;
    v25 = 2114;
    v26 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18.receiver = self;
  v18.super_class = FCReadonlyPersonalizationAggregateStore;
  v6 = [(FCReadonlyPersonalizationAggregateStore *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_generator, a3);
    v8 = [FCDerivedPersonalizationData alloc];
    v9 = [(FCDerivedPersonalizationData *)v8 initWithAggregates:MEMORY[0x1E695E0F8] scoringType:0 decayRate:0.0];
    derivedPersonalizationData = v7->_derivedPersonalizationData;
    v7->_derivedPersonalizationData = v9;

    v11 = [[FCOnce alloc] initWithOptions:1];
    prepareOnce = v7->_prepareOnce;
    v7->_prepareOnce = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    overrideAggregatesByFeatureKey = v7->_overrideAggregatesByFeatureKey;
    v7->_overrideAggregatesByFeatureKey = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)modifyLocalAggregatesForFeatureKeys:(id)a3 withAction:(unint64_t)a4 actionCount:(unint64_t)a5 defaultClicks:(double)a6 defaultImpressions:(double)a7 impressionBias:(double)a8 configurableValues:(id)a9
{
  v38 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a9;
  v18 = objc_alloc_init(MEMORY[0x1E69B6EF0]);
  [v18 setDefaultClicks:a6];
  [v18 setDefaultImpressions:a7];
  [v18 setImpressionBias:a8];
  v19 = [MEMORY[0x1E695DF00] date];
  [v18 setTimestamp:{objc_msgSend(v19, "fc_millisecondTimeIntervalSince1970")}];

  [v18 addAction:a4 count:a5];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v16;
  v20 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v33 + 1) + 8 * v23);
        v25 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
        v26 = [v25 objectForKeyedSubscript:v24];

        if (!v26)
        {
          v26 = objc_alloc_init(MEMORY[0x1E69B6EE8]);
          [v26 setFeatureKey:v24];
          v27 = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
          v28 = [v27 aggregateForFeatureKey:v24];

          if (v28)
          {
            [v28 clicks];
            [v26 setClicks:?];
            [v28 impressions];
            [v26 setImpressions:?];
            v29 = [v28 lastModified];
            [v26 setTimestamp:{objc_msgSend(v29, "fc_millisecondTimeIntervalSince1970")}];

            [v26 setEventCount:{objc_msgSend(v28, "eventCount")}];
          }

          v30 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
          [v30 setObject:v26 forKeyedSubscript:v24];
        }

        [v18 applyToAggregate:v26 withTreatment:v17];

        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)updateFeatures:(id)a3 withAction:(unint64_t)a4 displayRank:(int64_t)a5 groupRank:(int64_t)a6 individually:(BOOL)a7 configurableValues:(id)a8
{
  v39 = a7;
  v37 = a5;
  v38 = a6;
  v57 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v41 = a8;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0x1E69E9C10];
    v16 = *v44;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        v19 = [v18 personalizationIdentifier];

        if (v19)
        {
          [v10 addObject:v18];
          v20 = [v18 personalizationIdentifier];
          [v11 addObject:v20];
LABEL_8:

          goto LABEL_10;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Found a personalization feature without a personalization identifier"];
          *buf = 136315906;
          v49 = "[FCReadonlyPersonalizationAggregateStore updateFeatures:withAction:displayRank:groupRank:individually:configurableValues:]";
          v50 = 2080;
          v51 = "FCPersonalizationAggregate.m";
          v52 = 1024;
          v53 = 192;
          v54 = 2114;
          v55 = v20;
          _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          goto LABEL_8;
        }

LABEL_10:
        ++v17;
      }

      while (v14 != v17);
      v21 = [v12 countByEnumeratingWithState:&v43 objects:v56 count:16];
      v14 = v21;
    }

    while (v21);
  }

  v22 = [(FCReadonlyPersonalizationAggregateStore *)self baselineAggregateWithConfigurableValues:v41];
  v23 = FCPersonalizationAggregateImpressionBiasForAction(a4, v37, v38, v41);
  [v41 featureImpressionPrior];
  v25 = v24;
  v26 = [v41 defaultScoringConfig];
  [v26 decayFactor];
  [v22 personalizationValueWithBaseline:0 decayRate:?];
  v28 = v25 * v27;
  [v41 featureImpressionPrior];
  v29 = 1;
  [(FCReadonlyPersonalizationAggregateStore *)self modifyLocalAggregatesForFeatureKeys:v11 withAction:a4 actionCount:1 defaultClicks:v41 defaultImpressions:v28 impressionBias:v30 configurableValues:v23];

  v31 = [v22 featureKey];
  v47 = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  if (v39)
  {
    v29 = [v11 count];
  }

  [v22 clicks];
  v34 = v33;
  [v22 impressions];
  [(FCReadonlyPersonalizationAggregateStore *)self modifyLocalAggregatesForFeatureKeys:v32 withAction:a4 actionCount:v29 defaultClicks:v41 defaultImpressions:v34 impressionBias:v35 configurableValues:v23];

  v36 = *MEMORY[0x1E69E9840];
}

- (id)baselineAggregateWithConfigurableValues:(id)a3
{
  v4 = FCPersonalizationAggregateBaselineAggregateWithConfigurableValues(self, a3);
  v5 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  v6 = [v4 featureKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v9;
}

- (id)aggregateForFeatureKey:(id)a3
{
  v4 = a3;
  v5 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
    v8 = [v9 aggregateForFeatureKey:v4];
  }

  return v8;
}

- (id)aggregatesForFeatureKeys:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  v8 = [v7 fc_subdictionaryForKeys:v5];
  [v6 addEntriesFromDictionary:v8];

  v9 = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
  v10 = [v9 aggregatesForFeatureKeys:v5];

  [v6 addEntriesFromDictionary:v10];

  return v6;
}

- (id)aggregatesForFeatures:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF20];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__FCReadonlyPersonalizationAggregateStore_aggregatesForFeatures___block_invoke;
  v9[3] = &unk_1E7C37D00;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 fc_dictionary:v9];

  return v7;
}

void __65__FCReadonlyPersonalizationAggregateStore_aggregatesForFeatures___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__FCReadonlyPersonalizationAggregateStore_aggregatesForFeatures___block_invoke_2;
  v6[3] = &unk_1E7C47218;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __65__FCReadonlyPersonalizationAggregateStore_aggregatesForFeatures___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 personalizationIdentifier];
  v4 = [*(a1 + 32) aggregateForFeatureKey:v3];
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v5];
  }
}

- (void)enumerateAggregatesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
  v6 = [v5 allAggregates];
  v7 = [v6 mutableCopy];

  v8 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  [v7 addEntriesFromDictionary:v8];

  v9 = [v7 allValues];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__FCReadonlyPersonalizationAggregateStore_enumerateAggregatesUsingBlock___block_invoke;
  v11[3] = &unk_1E7C46B18;
  v12 = v4;
  v10 = v4;
  [v9 enumerateObjectsUsingBlock:v11];
}

- (NSDictionary)allAggregates
{
  v3 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  v4 = [v3 count];

  v5 = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
  v6 = [v5 allAggregates];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 mutableCopy];

    v5 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
    [v8 addEntriesFromDictionary:v5];
    v7 = v8;
  }

  return v7;
}

- (void)processTodayPersonalizationUpdates:(id)a3 withConfigurableValues:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEBUG, "Processing past events for accurate News Today Widget personalization", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__FCReadonlyPersonalizationAggregateStore_processTodayPersonalizationUpdates_withConfigurableValues___block_invoke;
  v10[3] = &unk_1E7C47268;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v6 enumerateObjectsUsingBlock:v10];
}

void __101__FCReadonlyPersonalizationAggregateStore_processTodayPersonalizationUpdates_withConfigurableValues___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101__FCReadonlyPersonalizationAggregateStore_processTodayPersonalizationUpdates_withConfigurableValues___block_invoke_2;
  v5[3] = &unk_1E7C47240;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

void __101__FCReadonlyPersonalizationAggregateStore_processTodayPersonalizationUpdates_withConfigurableValues___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [FCPersonalizationFeature featuresFromTodayPersonalizationEvent:v4];
  v5 = [v4 action] - 2;
  if (v5 > 4)
  {
    v6 = 22;
  }

  else
  {
    v6 = qword_1B681B7B0[v5];
  }

  v7 = [v4 overallOrder];
  v8 = [v4 sectionOrder];

  [v3 updateFeatures:v9 withAction:v6 displayRank:v7 groupRank:v8 individually:1 configurableValues:*(a1 + 40)];
}

- (void)prepareAggregatesForUseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FCReadonlyPersonalizationAggregateStore *)self prepareOnce];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__FCReadonlyPersonalizationAggregateStore_prepareAggregatesForUseWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7C36EA0;
  v6[4] = self;
  [v5 executeOnce:v6];

  v4[2](v4);
}

void __88__FCReadonlyPersonalizationAggregateStore_prepareAggregatesForUseWithCompletionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) generator];
  v3 = [v2 generateDerivedData];

  v4 = FCReadonlyPersonalizationAggregateStoreLog;
  if (os_log_type_enabled(FCReadonlyPersonalizationAggregateStoreLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = NSStringFromFCScoringType([v3 scoringType]);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Generated personalization data with scoring type %{public}@", &v8, 0xCu);
  }

  [*(a1 + 32) setDerivedPersonalizationData:v3];
  [*(a1 + 32) setScoringType:{objc_msgSend(v3, "scoringType")}];
  [v3 decayRate];
  [*(a1 + 32) setDecayRate:?];

  v7 = *MEMORY[0x1E69E9840];
}

@end