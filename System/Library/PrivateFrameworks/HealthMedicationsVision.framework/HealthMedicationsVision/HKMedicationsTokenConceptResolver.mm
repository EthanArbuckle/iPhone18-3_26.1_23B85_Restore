@interface HKMedicationsTokenConceptResolver
- (HKMedicationsTokenConceptResolver)initWithAssetInterface:(id)interface;
- (double)_tokenMatchScoreForMedication:(id)medication usingTokens:(id)tokens;
- (id)_collectAllMedicationCandidatesUsingTokens:(id)tokens;
- (id)_expandedMedicationsFromCandidates:(id)candidates;
- (id)rankMedicationsUsingTokens:(id)tokens candidates:(id)candidates;
- (id)recognizedMedicationsFromTextBlock:(id)block;
- (id)recognizedMedicationsFromTranscript:(id)transcript;
- (id)removeMedicationsFromNoisyTokensUsingTokens:(id)tokens candidates:(id)candidates;
- (id)removeStowawayIngredientsUsingTokens:(id)tokens candidates:(id)candidates;
@end

@implementation HKMedicationsTokenConceptResolver

- (HKMedicationsTokenConceptResolver)initWithAssetInterface:(id)interface
{
  interfaceCopy = interface;
  v9.receiver = self;
  v9.super_class = HKMedicationsTokenConceptResolver;
  v5 = [(HKMedicationsTokenConceptResolver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(HKMedicationsTokenConceptResolver *)v5 setAssetInterface:interfaceCopy];
    v7 = objc_alloc_init(HKMedicationsTokenizer);
    [(HKMedicationsTokenConceptResolver *)v6 setTokenizer:v7];
  }

  return v6;
}

- (id)recognizedMedicationsFromTextBlock:(id)block
{
  getTranscript = [block getTranscript];
  v5 = [(HKMedicationsTokenConceptResolver *)self recognizedMedicationsFromTranscript:getTranscript];

  return v5;
}

- (id)recognizedMedicationsFromTranscript:(id)transcript
{
  transcriptCopy = transcript;
  v5 = objc_autoreleasePoolPush();
  if ([transcriptCopy length])
  {
    tokenizer = [(HKMedicationsTokenConceptResolver *)self tokenizer];
    v7 = [tokenizer wordsFromTranscript:transcriptCopy];

    v8 = [(HKMedicationsTokenConceptResolver *)self _collectAllMedicationCandidatesUsingTokens:v7];
    v9 = [(HKMedicationsTokenConceptResolver *)self _expandedMedicationsFromCandidates:v8];
    v10 = [(HKMedicationsTokenConceptResolver *)self removeMedicationsFromNoisyTokensUsingTokens:v7 candidates:v9];
    v11 = [(HKMedicationsTokenConceptResolver *)self removeStowawayIngredientsUsingTokens:v7 candidates:v10];
    v12 = [(HKMedicationsTokenConceptResolver *)self rankMedicationsUsingTokens:v7 candidates:v11];
    array = [v12 array];
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  objc_autoreleasePoolPop(v5);

  return array;
}

- (id)_collectAllMedicationCandidatesUsingTokens:(id)tokens
{
  v33 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = tokensCopy;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = objc_alloc(MEMORY[0x277CBEB98]);
        assetInterface = [(HKMedicationsTokenConceptResolver *)self assetInterface];
        v31 = v9;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v22 = 0;
        v13 = [assetInterface genericMedicationsFromTokens:v12 error:&v22];
        v14 = v22;
        v15 = [v10 initWithArray:v13];

        if (v14)
        {
          _HKInitializeLogging();
          v16 = HKLogMedication();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy = self;
            v29 = 2114;
            v30 = v14;
            _os_log_error_impl(&dword_2518A4000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Error searching generic medication: %{public}@", buf, 0x16u);
          }
        }

        else if ([v15 count])
        {
          [v20 setObject:v15 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_expandedMedicationsFromCandidates:(id)candidates
{
  v43 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  context = objc_autoreleasePoolPush();
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = candidatesCopy;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [candidatesCopy allKeys];
  v25 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v25)
  {
    v22 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v33 + 1) + 8 * v5);
        v27 = v5;
        v6 = [v24 objectForKeyedSubscript:context];
        v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
          do
          {
            v12 = 0;
            do
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v29 + 1) + 8 * v12);
              assetInterface = [(HKMedicationsTokenConceptResolver *)self assetInterface];
              v28 = 0;
              v15 = [assetInterface expandedGenericMedicationSearchResult:v13 error:&v28];
              v16 = v28;

              if (v16)
              {
                _HKInitializeLogging();
                v17 = HKLogMedication();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  selfCopy = self;
                  v39 = 2112;
                  v40 = v16;
                  _os_log_error_impl(&dword_2518A4000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Error expanding generic medication: %@{public}@", buf, 0x16u);
                }
              }

              else
              {
                [v7 addObject:v15];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v10);
        }

        [v23 setObject:v7 forKeyedSubscript:v26];
        v5 = v27 + 1;
      }

      while (v27 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)removeMedicationsFromNoisyTokensUsingTokens:(id)tokens candidates:(id)candidates
{
  v76 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  candidatesCopy = candidates;
  context = objc_autoreleasePoolPush();
  v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = tokensCopy;
  v39 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v39)
  {
    v38 = *v68;
    do
    {
      v6 = 0;
      do
      {
        if (*v68 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v6;
        v44 = [candidatesCopy objectForKeyedSubscript:{*(*(&v67 + 1) + 8 * v6), context}];
        if (v44)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v47 = [v44 countByEnumeratingWithState:&v63 objects:v74 count:16];
          if (v47)
          {
            v46 = *v64;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v64 != v46)
                {
                  objc_enumerationMutation(v44);
                }

                v8 = *(*(&v63 + 1) + 8 * i);
                v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v62 = 0u;
                ingredients = [v8 ingredients];
                v11 = [ingredients countByEnumeratingWithState:&v59 objects:v73 count:16];
                if (v11)
                {
                  v12 = v11;
                  v45 = v8;
                  v48 = i;
                  v49 = ingredients;
                  v13 = *v60;
                  v14 = 0.0;
                  do
                  {
                    for (j = 0; j != v12; ++j)
                    {
                      if (*v60 != v13)
                      {
                        objc_enumerationMutation(v49);
                      }

                      ingredientName = [*(*(&v59 + 1) + 8 * j) ingredientName];
                      tokenizer = [(HKMedicationsTokenConceptResolver *)self tokenizer];
                      v18 = [tokenizer wordsFromTranscript:ingredientName];

                      v57 = 0u;
                      v58 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v19 = v18;
                      v20 = [v19 countByEnumeratingWithState:&v55 objects:v72 count:16];
                      if (v20)
                      {
                        v21 = v20;
                        v22 = *v56;
                        do
                        {
                          for (k = 0; k != v21; ++k)
                          {
                            if (*v56 != v22)
                            {
                              objc_enumerationMutation(v19);
                            }

                            v24 = *(*(&v55 + 1) + 8 * k);
                            [v9 addObject:v24];
                            v14 = v14 + [v24 length];
                          }

                          v21 = [v19 countByEnumeratingWithState:&v55 objects:v72 count:16];
                        }

                        while (v21);
                      }
                    }

                    v12 = [v49 countByEnumeratingWithState:&v59 objects:v73 count:16];
                  }

                  while (v12);

                  i = v48;
                  if (v14 > 0.0)
                  {
                    [v9 intersectSet:obj];
                    v53 = 0u;
                    v54 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v25 = v9;
                    v26 = [v25 countByEnumeratingWithState:&v51 objects:v71 count:16];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = *v52;
                      v29 = 0.0;
                      do
                      {
                        for (m = 0; m != v27; ++m)
                        {
                          if (*v52 != v28)
                          {
                            objc_enumerationMutation(v25);
                          }

                          v29 = v29 + [*(*(&v51 + 1) + 8 * m) length];
                        }

                        v27 = [v25 countByEnumeratingWithState:&v51 objects:v71 count:16];
                      }

                      while (v27);
                    }

                    else
                    {
                      v29 = 0.0;
                    }

                    v31 = [v25 count];
                    if (v29 / v14 >= 0.5)
                    {
                      v32 = v31;
                      allKeys = [candidatesCopy allKeys];
                      v34 = [allKeys count];

                      if (v32 == v34)
                      {
                        [v41 addObject:v45];
                      }
                    }
                  }
                }

                else
                {
                }
              }

              v47 = [v44 countByEnumeratingWithState:&v63 objects:v74 count:16];
            }

            while (v47);
          }
        }

        v6 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v39);
  }

  objc_autoreleasePoolPop(context);
  v35 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)removeStowawayIngredientsUsingTokens:(id)tokens candidates:(id)candidates
{
  v48 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  candidatesCopy = candidates;
  context = objc_autoreleasePoolPush();
  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = candidatesCopy;
  v26 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v26)
  {
    v25 = *v42;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        ingredients = [v7 ingredients];
        v32 = [ingredients countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (!v32)
        {

LABEL_25:
          [v24 addObject:v7];
          continue;
        }

        v27 = v7;
        v28 = i;
        v9 = 0;
        v31 = *v38;
        v29 = ingredients;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v29);
            }

            ingredientName = [*(*(&v37 + 1) + 8 * j) ingredientName];
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v12 = tokensCopy;
            v13 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = 0;
              v16 = *v34;
              do
              {
                for (k = 0; k != v14; ++k)
                {
                  if (*v34 != v16)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v18 = *(*(&v33 + 1) + 8 * k);
                  lowercaseString = [ingredientName lowercaseString];
                  LOBYTE(v18) = [lowercaseString containsString:v18];

                  v15 |= v18;
                }

                v14 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
              }

              while (v14);

              v9 |= v15 ^ 1;
            }

            else
            {

              v9 = 1;
            }
          }

          v32 = [v29 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v32);

        v7 = v27;
        i = v28;
        if ((v9 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v26);
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)rankMedicationsUsingTokens:(id)tokens candidates:(id)candidates
{
  tokensCopy = tokens;
  candidatesCopy = candidates;
  v8 = objc_autoreleasePoolPush();
  allObjects = [candidatesCopy allObjects];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __75__HKMedicationsTokenConceptResolver_rankMedicationsUsingTokens_candidates___block_invoke;
  v18 = &unk_2796D2AC8;
  selfCopy = self;
  v10 = tokensCopy;
  v20 = v10;
  v11 = [allObjects sortedArrayUsingComparator:&v15];

  v12 = objc_alloc(MEMORY[0x277CBEB70]);
  v13 = [v12 initWithArray:{v11, v15, v16, v17, v18, selfCopy}];

  objc_autoreleasePoolPop(v8);

  return v13;
}

uint64_t __75__HKMedicationsTokenConceptResolver_rankMedicationsUsingTokens_candidates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _tokenMatchScoreForMedication:v5 usingTokens:*(a1 + 40)];
  v8 = v7;
  [*(a1 + 32) _tokenMatchScoreForMedication:v6 usingTokens:*(a1 + 40)];
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v5 genericMedicationName];
      v12 = [v6 genericMedicationName];
      v10 = [v11 caseInsensitiveCompare:v12];
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (double)_tokenMatchScoreForMedication:(id)medication usingTokens:(id)tokens
{
  v30 = *MEMORY[0x277D85DE8];
  medicationCopy = medication;
  tokensCopy = tokens;
  context = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = medicationCopy;
  ingredients = [medicationCopy ingredients];
  v10 = [ingredients countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(ingredients);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        tokenizer = [(HKMedicationsTokenConceptResolver *)self tokenizer];
        ingredientName = [v14 ingredientName];
        v17 = [tokenizer wordsFromTranscript:ingredientName];
        [v8 unionSet:v17];

        ++v13;
      }

      while (v11 != v13);
      v11 = [ingredients countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v18 = [v8 mutableCopy];
  [v18 intersectSet:tokensCopy];
  v19 = [v18 count];
  v20 = [v8 count];

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
  return v19 / v20;
}

@end