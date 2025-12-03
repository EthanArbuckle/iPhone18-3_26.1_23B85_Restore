@interface EMFIndexStrategySingleStemmedIndexOnly
- (id)_calculateDocumentWeightsForQueryTokenCounts:(id)counts;
- (id)_commonDocumentsForTerms:(id)terms;
- (id)_postingsForTerm:(id)term;
- (id)_postingsForTerms:(id)terms;
- (id)_termWeightForTerm:(id)term inDocument:(id)document;
- (id)_termsForDocument:(id)document;
- (id)postingsForTerm:(id)term;
- (id)termWeightForTerm:(id)term inDocument:(id)document;
- (id)termsForDocument:(id)document;
@end

@implementation EMFIndexStrategySingleStemmedIndexOnly

- (id)postingsForTerm:(id)term
{
  v3 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _postingsForTerm:term];
  v4 = [v3 objectForKeyedSubscript:@"postings"];

  return v4;
}

- (id)termsForDocument:(id)document
{
  stringValue = [document stringValue];
  v5 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _termsForDocument:stringValue];

  return v5;
}

- (id)termWeightForTerm:(id)term inDocument:(id)document
{
  termCopy = term;
  stringValue = [document stringValue];
  v8 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _termWeightForTerm:termCopy inDocument:stringValue];

  return v8;
}

- (id)_postingsForTerm:(id)term
{
  termCopy = term;
  termIndex = [(EMFAbstractIndexStrategy *)self termIndex];
  v6 = [termIndex objectForKey:termCopy];

  return v6;
}

- (id)_postingsForTerms:(id)terms
{
  v20 = *MEMORY[0x1E69E9840];
  termsCopy = terms;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = termsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _postingsForTerm:v11, v15];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)_termsForDocument:(id)document
{
  documentCopy = document;
  documentIndex = [(EMFAbstractIndexStrategy *)self documentIndex];
  v6 = [documentIndex objectForKey:documentCopy];

  return v6;
}

- (id)_termWeightForTerm:(id)term inDocument:(id)document
{
  termCopy = term;
  v7 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _termsForDocument:document];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:termCopy];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKey:@"weight_norm"];
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

- (id)_commonDocumentsForTerms:(id)terms
{
  v24 = *MEMORY[0x1E69E9840];
  termsCopy = terms;
  v5 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _postingsForTerms:termsCopy];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = termsCopy;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [v5 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];
        v13 = [v12 objectForKeyedSubscript:@"postings"];
        allKeys = [v13 allKeys];

        if (v9)
        {
          v15 = [MEMORY[0x1E695DFD8] setWithArray:allKeys];
          [v6 intersectSet:v15];
        }

        else
        {
          [v6 addObjectsFromArray:allKeys];
        }

        v9 = 1;
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [v6 copy];

  return v16;
}

- (id)_calculateDocumentWeightsForQueryTokenCounts:(id)counts
{
  v41 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  allKeys = [countsCopy allKeys];
  v5 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _commonDocumentsForTerms:allKeys];

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v28 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = countsCopy;
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          v14 = 0.0;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v31 + 1) + 8 * j);
              v17 = [v10 objectForKeyedSubscript:v16];
              [v17 doubleValue];
              v19 = v18;
              v20 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _termWeightForTerm:v16 inDocument:v9];
              v21 = v20;
              if (v20)
              {
                [v20 doubleValue];
              }

              else
              {
                v22 = 0.0;
              }

              v14 = v14 + v22 * v19;
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v12);
        }

        else
        {
          v14 = 0.0;
        }

        v23 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "intValue")}];
        [v29 setObject:v23 forKey:v24];
      }

      v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  v25 = [v29 copy];

  return v25;
}

@end