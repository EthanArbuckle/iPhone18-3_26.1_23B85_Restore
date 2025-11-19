@interface FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider
- (FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider)initWithReadonlyPersonalizationAggregateStore:(id)a3 personalizationTreatment:(id)a4;
- (id)aggregateVectorForTags:(id)a3;
@end

@implementation FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider

- (FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider)initWithReadonlyPersonalizationAggregateStore:(id)a3 personalizationTreatment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider;
  v9 = [(FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_aggregateStore, a3);
    objc_storeStrong(&v10->_personalizationTreatment, a4);
  }

  return v10;
}

- (id)aggregateVectorForTags:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [[FCTagIDFeature alloc] initWithTagID:v11];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v8);
  }

  v13 = [(FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider *)self aggregateStore];
  v14 = [(FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider *)self personalizationTreatment];
  v15 = [v13 baselineAggregateWithConfigurableValues:v14];

  v16 = [(FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider *)self aggregateStore];
  v17 = [v5 allValues];
  v18 = [v16 aggregatesForFeatures:v17];

  v19 = [(FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider *)self personalizationTreatment];
  v20 = [v19 defaultScoringConfig];
  [v20 decayFactor];
  v22 = v21;

  [v15 personalizationValueWithBaseline:0 decayRate:v22];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __104__FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider_aggregateVectorForTags___block_invoke;
  v30[3] = &unk_1E7C3FDE8;
  v31 = v18;
  v32 = v5;
  v33 = v15;
  v34 = v22;
  v35 = v23;
  v24 = v15;
  v25 = v5;
  v26 = v18;
  v27 = [v6 fc_arrayByTransformingWithBlock:v30];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

id __104__FCReadonlyPersonalizationAggregateStoreBasedUserVectorAggregateVectorProvider_aggregateVectorForTags___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:a2];
  v5 = [v3 fc_safeObjectForKey:v4];

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    [v5 personalizationValueWithBaseline:*(a1 + 48) decayRate:*(a1 + 56)];
    v8 = [v6 numberWithDouble:v7 - *(a1 + 64)];
  }

  else
  {
    v8 = &unk_1F2E71B88;
  }

  return v8;
}

@end