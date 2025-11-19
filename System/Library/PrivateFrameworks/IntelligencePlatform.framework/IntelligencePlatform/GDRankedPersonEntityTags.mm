@interface GDRankedPersonEntityTags
- (GDRankedPersonEntityTags)initWithIDValue:(int64_t)a3 scoredPersonEntityTags:(id)a4 entityRelevanceInferenceEventId:(int64_t)a5;
- (NSArray)scoredPersonEntityTags;
@end

@implementation GDRankedPersonEntityTags

- (NSArray)scoredPersonEntityTags
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(GDScoreRankedPersonEntityTagsInner *)self->inner scoredPersonEntityTags];
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
        v10 = [GDScoredPersonEntityTagType alloc];
        v11 = [v9 gdTag];
        [v9 score];
        v12 = [(GDScoredPersonEntityTagType *)v10 initWithTag:v11 score:?];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (GDRankedPersonEntityTags)initWithIDValue:(int64_t)a3 scoredPersonEntityTags:(id)a4 entityRelevanceInferenceEventId:(int64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v28.receiver = self;
  v28.super_class = GDRankedPersonEntityTags;
  v8 = [(GDRankedPersonEntityTags *)&v28 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [GDScoredPersonEntityTagInner alloc];
          v17 = [v15 tag];
          [v15 score];
          v18 = [(GDScoredPersonEntityTagInner *)v16 initWithGdTag:v17 score:0 inferenceEventIdValue:?];
          [v9 addObject:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    v19 = [[GDScoreRankedPersonEntityTagsInner alloc] initWithIdValue:a3 scoredPersonEntityTags:v9 inferenceEventIdValue:0];
    inner = v8->inner;
    v8->inner = v19;

    v7 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

@end