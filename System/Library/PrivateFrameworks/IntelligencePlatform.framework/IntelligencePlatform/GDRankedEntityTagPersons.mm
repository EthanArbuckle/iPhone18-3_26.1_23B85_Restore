@interface GDRankedEntityTagPersons
- (GDRankedEntityTagPersons)initWithTag:(int64_t)tag scoredEntities:(id)entities entityRelevanceInferenceEventId:(int64_t)id;
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
  scoredEntities = [(GDScoreRankedEntityTagPersonsInner *)self->inner scoredEntities];
  v5 = [scoredEntities countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(scoredEntities);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [GDScoredPersonEntity alloc];
        idValue = [v9 idValue];
        [v9 score];
        v12 = [(GDScoredPersonEntity *)v10 initWithIDValue:idValue score:?];
        [v3 addObject:v12];
      }

      v6 = [scoredEntities countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (GDRankedEntityTagPersons)initWithTag:(int64_t)tag scoredEntities:(id)entities entityRelevanceInferenceEventId:(int64_t)id
{
  v32 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  v30.receiver = self;
  v30.super_class = GDRankedEntityTagPersons;
  v9 = [(GDRankedEntityTagPersons *)&v30 init];
  if (v9)
  {
    idCopy = id;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = entitiesCopy;
    v11 = entitiesCopy;
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
          idValue = [v16 idValue];
          [v16 score];
          v19 = [(GDScoredPersonInner *)v17 initWithIdValue:idValue score:0 inferenceEventIdValue:?];
          [v10 addObject:v19];
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v20 = [[GDScoreRankedEntityTagPersonsInner alloc] initWithGdTag:tag scoredEntities:v10 inferenceEventIdValue:idCopy];
    inner = v9->inner;
    v9->inner = v20;

    entitiesCopy = v25;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

@end