@interface EMFIndexStrategyDefault
- (double)_calculateCumulativeTermWeightForQueryTokenCounts:(id)a3 inDocumentID:(id)a4;
- (id)calculateDocumentWeightsForQueryTokenCounts:(id)a3;
- (id)commonDocumentsForTerms:(id)a3;
- (id)postingsForTerm:(id)a3;
- (id)termWeightForTerm:(id)a3 inDocument:(id)a4;
- (id)termsForDocument:(id)a3;
@end

@implementation EMFIndexStrategyDefault

- (id)postingsForTerm:(id)a3
{
  v4 = a3;
  v5 = [(EMFAbstractIndexStrategy *)self termIndex];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)termsForDocument:(id)a3
{
  v4 = a3;
  v5 = [(EMFAbstractIndexStrategy *)self documentIndex];
  v6 = [v4 stringValue];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (id)termWeightForTerm:(id)a3 inDocument:(id)a4
{
  v6 = a3;
  v7 = [(EMFIndexStrategyDefault *)self termsForDocument:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKey:@"w"];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)commonDocumentsForTerms:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(EMFIndexStrategyDefault *)self postingsForTerm:*(*(&v16 + 1) + 8 * i), v16];
        if (v9)
        {
          v13 = [MEMORY[0x1E695DFD8] setWithArray:v12];
          [v5 intersectSet:v13];
        }

        else
        {
          [v5 addObjectsFromArray:v12];
        }

        v9 = 1;
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)calculateDocumentWeightsForQueryTokenCounts:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [(EMFIndexStrategyDefault *)self commonDocumentsForTerms:v5];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [(EMFIndexStrategyDefault *)self _calculateCumulativeTermWeightForQueryTokenCounts:v4 inDocumentID:v13, v17];
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v7 setObject:v14 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];

  return v15;
}

- (double)_calculateCumulativeTermWeightForQueryTokenCounts:(id)a3 inDocumentID:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:v13];
        [v14 doubleValue];
        v16 = v15;
        v17 = [(EMFIndexStrategyDefault *)self termWeightForTerm:v13 inDocument:v7];
        v18 = v17;
        if (v17)
        {
          [v17 doubleValue];
        }

        else
        {
          v19 = 0.0;
        }

        v11 = v11 + v19 * v16;
      }

      v9 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

@end