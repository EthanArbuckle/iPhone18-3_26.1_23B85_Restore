@interface LNVocabularyStrictPicker
- (id)pickTermsFromCorpora:(id)corpora;
@end

@implementation LNVocabularyStrictPicker

- (id)pickTermsFromCorpora:(id)corpora
{
  v21 = *MEMORY[0x1E69E9840];
  corporaCopy = corpora;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = corporaCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v5);
      }

      if (v8 == 1000)
      {
        break;
      }

      v11 = 1000 - v8;
      getTerms = [*(*(&v16 + 1) + 8 * v10) getTerms];
      if (1000 - v8 < [getTerms count] || (v11 = objc_msgSend(getTerms, "count")) != 0)
      {
        v13 = [getTerms subarrayWithRange:{0, v11}];
        [v4 addObjectsFromArray:v13];
        v8 += v11;
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

@end