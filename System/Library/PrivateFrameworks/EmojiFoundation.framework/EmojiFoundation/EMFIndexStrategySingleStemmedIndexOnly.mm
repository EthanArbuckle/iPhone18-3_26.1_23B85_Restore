@interface EMFIndexStrategySingleStemmedIndexOnly
- (id)_calculateDocumentWeightsForQueryTokenCounts:(id)a3;
- (id)_commonDocumentsForTerms:(id)a3;
- (id)_postingsForTerm:(id)a3;
- (id)_postingsForTerms:(id)a3;
- (id)_termWeightForTerm:(id)a3 inDocument:(id)a4;
- (id)_termsForDocument:(id)a3;
- (id)postingsForTerm:(id)a3;
- (id)termWeightForTerm:(id)a3 inDocument:(id)a4;
- (id)termsForDocument:(id)a3;
@end

@implementation EMFIndexStrategySingleStemmedIndexOnly

- (id)postingsForTerm:(id)a3
{
  v3 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _postingsForTerm:a3];
  v4 = [v3 objectForKeyedSubscript:@"postings"];

  return v4;
}

- (id)termsForDocument:(id)a3
{
  v4 = [a3 stringValue];
  v5 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _termsForDocument:v4];

  return v5;
}

- (id)termWeightForTerm:(id)a3 inDocument:(id)a4
{
  v6 = a3;
  v7 = [a4 stringValue];
  v8 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _termWeightForTerm:v6 inDocument:v7];

  return v8;
}

- (id)_postingsForTerm:(id)a3
{
  v4 = a3;
  v5 = [(EMFAbstractIndexStrategy *)self termIndex];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_postingsForTerms:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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

- (id)_termsForDocument:(id)a3
{
  v4 = a3;
  v5 = [(EMFAbstractIndexStrategy *)self documentIndex];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_termWeightForTerm:(id)a3 inDocument:(id)a4
{
  v6 = a3;
  v7 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _termsForDocument:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:v6];
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

- (id)_commonDocumentsForTerms:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _postingsForTerms:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
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
        v14 = [v13 allKeys];

        if (v9)
        {
          v15 = [MEMORY[0x1E695DFD8] setWithArray:v14];
          [v6 intersectSet:v15];
        }

        else
        {
          [v6 addObjectsFromArray:v14];
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

- (id)_calculateDocumentWeightsForQueryTokenCounts:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v4 = [v30 allKeys];
  v5 = [(EMFIndexStrategySingleStemmedIndexOnly *)self _commonDocumentsForTerms:v4];

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
        v10 = v30;
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