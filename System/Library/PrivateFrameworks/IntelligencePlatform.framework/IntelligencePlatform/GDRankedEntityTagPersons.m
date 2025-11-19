@interface GDRankedEntityTagPersons
- (GDRankedEntityTagPersons)initWithTag:(int64_t)a3 scoredEntities:(id)a4 entityRelevanceInferenceEventId:(int64_t)a5;
- (NSArray)scoredEntities;
@end

@implementation GDRankedEntityTagPersons

- (NSArray)scoredEntities
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(GDScoreRankedEntityTagPersonsInner *)self->inner scoredEntities];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [GDScoredPersonEntity alloc];
        v11 = [v9 idValue];
        [v9 score];
        v12 = [(GDScoredPersonEntity *)v10 initWithIDValue:v11 score:?];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (GDRankedEntityTagPersons)initWithTag:(int64_t)a3 scoredEntities:(id)a4 entityRelevanceInferenceEventId:(int64_t)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v30.receiver = self;
  v30.super_class = GDRankedEntityTagPersons;
  v9 = [(GDRankedEntityTagPersons *)&v30 init];
  if (v9)
  {
    v24 = a5;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [GDScoredPersonInner alloc];
          v18 = [v16 idValue];
          [v16 score];
          v19 = [(GDScoredPersonInner *)v17 initWithIdValue:v18 score:0 inferenceEventIdValue:?];
          [v10 addObject:v19];
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v20 = [[GDScoreRankedEntityTagPersonsInner alloc] initWithGdTag:a3 scoredEntities:v10 inferenceEventIdValue:v24];
    inner = v9->inner;
    v9->inner = v20;

    v8 = v25;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

@end