@interface EMFIndexStrategyDefault
- (double)_calculateCumulativeTermWeightForQueryTokenCounts:(id)counts inDocumentID:(id)d;
- (id)calculateDocumentWeightsForQueryTokenCounts:(id)counts;
- (id)commonDocumentsForTerms:(id)terms;
- (id)postingsForTerm:(id)term;
- (id)termWeightForTerm:(id)term inDocument:(id)document;
- (id)termsForDocument:(id)document;
@end

@implementation EMFIndexStrategyDefault

- (id)postingsForTerm:(id)term
{
  termCopy = term;
  termIndex = [(EMFAbstractIndexStrategy *)self termIndex];
  v6 = [termIndex objectForKey:termCopy];

  return v6;
}

- (id)termsForDocument:(id)document
{
  documentCopy = document;
  documentIndex = [(EMFAbstractIndexStrategy *)self documentIndex];
  stringValue = [documentCopy stringValue];

  v7 = [documentIndex objectForKey:stringValue];

  return v7;
}

- (id)termWeightForTerm:(id)term inDocument:(id)document
{
  termCopy = term;
  v7 = [(EMFIndexStrategyDefault *)self termsForDocument:document];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:termCopy];
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

- (id)commonDocumentsForTerms:(id)terms
{
  v21 = *MEMORY[0x1E69E9840];
  termsCopy = terms;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = termsCopy;
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

- (id)calculateDocumentWeightsForQueryTokenCounts:(id)counts
{
  v22 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  allKeys = [countsCopy allKeys];
  v6 = [(EMFIndexStrategyDefault *)self commonDocumentsForTerms:allKeys];

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
        [(EMFIndexStrategyDefault *)self _calculateCumulativeTermWeightForQueryTokenCounts:countsCopy inDocumentID:v13, v17];
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

- (double)_calculateCumulativeTermWeightForQueryTokenCounts:(id)counts inDocumentID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  dCopy = d;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [countsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(countsCopy);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [countsCopy objectForKeyedSubscript:v13];
        [v14 doubleValue];
        v16 = v15;
        v17 = [(EMFIndexStrategyDefault *)self termWeightForTerm:v13 inDocument:dCopy];
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

      v9 = [countsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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