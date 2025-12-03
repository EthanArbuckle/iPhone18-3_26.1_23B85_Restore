@interface DESSparsification
- (BOOL)reportErrorWithErrorStr:(id)str error:(id *)error;
- (id)splitResultToChunksWithResult:(id)result recipe:(id)recipe baseKey:(id)key error:(id *)error;
@end

@implementation DESSparsification

- (BOOL)reportErrorWithErrorStr:(id)str error:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  strCopy = str;
  v6 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [DESSparsification reportErrorWithErrorStr:strCopy error:v6];
  }

  if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = strCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v7 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2008 userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
  return error != 0;
}

- (id)splitResultToChunksWithResult:(id)result recipe:(id)recipe baseKey:(id)key error:(id *)error
{
  v116 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  recipeCopy = recipe;
  keyCopy = key;
  v110 = 0.0;
  useAdaptiveClipping = [recipeCopy useAdaptiveClipping];
  if (useAdaptiveClipping)
  {
    maxNorm = [recipeCopy maxNorm];
    [maxNorm doubleValue];
    v16 = v15;

    recipeUserInfo = [recipeCopy recipeUserInfo];
    v18 = [recipeUserInfo objectForKeyedSubscript:@"ClippingIndicatorScale"];
    [v18 doubleValue];
    v20 = v19;

    *&v21 = v16;
    *&v22 = v20;
    if (![DESAdaptiveClipping computeClippingIndicator:resultCopy clippingBound:&v110 scale:v21 clippingIndicator:v22])
    {
      v63 = MEMORY[0x277CCACA8];
      recipeID = [recipeCopy recipeID];
      v40 = [v63 stringWithFormat:@"Recipe %@ has %@=%f but failed to compute the adaptive clipping indicator", recipeID, @"ClippingIndicatorScale", *&v20];

      [(DESSparsification *)self reportErrorWithErrorStr:v40 error:error];
      v62 = 0;
      goto LABEL_28;
    }

    v23 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      recipeID2 = [recipeCopy recipeID];
      *buf = 138412546;
      v113 = recipeID2;
      v114 = 2048;
      v115 = v110;
      _os_log_impl(&dword_248FF7000, v23, OS_LOG_TYPE_INFO, "Recipe %@ uses adaptive clipping, indicator=%f", buf, 0x16u);
    }

    v99 = useAdaptiveClipping;
    selfCopy2 = self;
    errorCopy2 = error;
    v25 = resultCopy;

    v26 = 1;
  }

  else
  {
    v99 = 0;
    selfCopy2 = self;
    errorCopy2 = error;
    v25 = resultCopy;
    v26 = 0;
  }

  recipeUserInfo2 = [recipeCopy recipeUserInfo];
  v28 = [recipeUserInfo2 objectForKeyedSubscript:@"sparsification"];
  v29 = [v28 objectForKeyedSubscript:@"chunkClippingBounds"];
  if (!v29)
  {
    goto LABEL_23;
  }

  v30 = v29;
  v104 = keyCopy;
  recipeUserInfo3 = [recipeCopy recipeUserInfo];
  v32 = [recipeUserInfo3 objectForKeyedSubscript:@"sparsification"];
  v33 = [v32 objectForKeyedSubscript:@"numChunks"];
  if (!v33)
  {

    keyCopy = v104;
LABEL_23:

    goto LABEL_24;
  }

  v34 = v33;
  obj = v26;
  [recipeCopy recipeUserInfo];
  v35 = v105 = recipeCopy;
  v36 = [v35 objectForKeyedSubscript:@"sparsification"];
  v37 = [v36 objectForKeyedSubscript:@"sparsificationMapFile"];

  recipeCopy = v105;
  keyCopy = v104;
  if (!v37)
  {
LABEL_24:
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Recipe does not include all keys required for sparsification and chunking. Required keys include %@, %@, %@, %@", @"sparsification", @"chunkClippingBounds", @"numChunks", @"sparsificationMapFile"];
    [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v40 error:errorCopy2];
    v62 = 0;
    resultCopy = v25;
    goto LABEL_28;
  }

  recipeUserInfo4 = [v105 recipeUserInfo];
  v39 = [recipeUserInfo4 objectForKeyedSubscript:@"sparsification"];
  v40 = [v39 objectForKeyedSubscript:@"chunkClippingBounds"];

  recipeUserInfo5 = [v105 recipeUserInfo];
  v42 = [recipeUserInfo5 objectForKeyedSubscript:@"sparsification"];
  v43 = [v42 objectForKeyedSubscript:@"numChunks"];
  intValue = [v43 intValue];

  v45 = [v40 count];
  resultCopy = v25;
  v46 = [v25 length];
  v47 = &obj[v46 >> 2];
  if (v47 >= intValue && v45 == intValue)
  {
    v48 = v46;
    v95 = &obj[v46 >> 2];
    *__upper_bound = intValue;
    v97 = v40;
    v98 = v25;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    obja = [v105 attachments];
    v49 = [obja countByEnumeratingWithState:&v106 objects:v111 count:16];
    if (v49)
    {
      v50 = v49;
      v93 = v48;
      v94 = v48 >> 2;
      v51 = *v107;
      while (2)
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v107 != v51)
          {
            objc_enumerationMutation(obja);
          }

          v53 = *(*(&v106 + 1) + 8 * i);
          lastPathComponent = [v53 lastPathComponent];
          recipeUserInfo6 = [recipeCopy recipeUserInfo];
          v56 = [recipeUserInfo6 objectForKeyedSubscript:@"sparsification"];
          v57 = [v56 objectForKeyedSubscript:@"sparsificationMapFile"];
          v58 = [lastPathComponent isEqualToString:v57];

          if (v58)
          {
            v67 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              [DESSparsification splitResultToChunksWithResult:v53 recipe:v67 baseKey:? error:?];
            }

            v68 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v53 options:1 error:errorCopy2];
            v40 = v97;
            resultCopy = v98;
            keyCopy = v104;
            recipeCopy = v105;
            if (v68)
            {
              v61 = v68;

              v69 = [v61 length];
              if (v69 == v95)
              {
                v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
                if (__upper_bound[0])
                {
                  v71 = 1;
                  do
                  {
                    v72 = [MEMORY[0x277CCABB0] numberWithInt:v71];
                    v73 = [keyCopy resultsKeyStringForChunk:v72];

                    v74 = [DESChunk alloc];
                    v75 = [v97 objectAtIndexedSubscript:v71 - 1];
                    v76 = objc_alloc_init(MEMORY[0x277CBEB28]);
                    v77 = [(DESChunk *)v74 initWithKey:v73 clippingBound:v75 data:v76];

                    keyCopy = v104;
                    [v70 addObject:v77];

                    ++v71;
                  }

                  while (v71 != __upper_bound[0] + 1);
                }

                bytes = [v61 bytes];
                resultCopy = v98;
                bytes2 = [v98 bytes];
                v80 = v94;
                v81 = *__upper_bound;
                if (v93 >= 4)
                {
                  v82 = bytes2;
                  do
                  {
                    v84 = *bytes++;
                    v83 = v84;
                    if (v84)
                    {
                      if (v83 > *__upper_bound)
                      {
                        v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Chunk mapping value = %8u, which is greater than number of chunks = %lu, found in map file", v83, *__upper_bound];
                        [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v92 error:errorCopy2];

                        v62 = 0;
                        recipeCopy = v105;
                        goto LABEL_49;
                      }

                      v85 = [v70 objectAtIndexedSubscript:(v83 - 1)];
                      data = [v85 data];
                      [data appendBytes:v82 length:4];

                      keyCopy = v104;
                    }

                    v82 += 4;
                    --v80;
                  }

                  while (v80);
                }

                if (v99)
                {
                  v87 = [v70 objectAtIndexedSubscript:{objc_msgSend(v70, "count") - 1}];
                  data2 = [v87 data];
                  [data2 appendBytes:&v110 length:4];
                }

                recipeCopy = v105;
                if (__upper_bound[0] >= 2)
                {
                  do
                  {
                    [v70 exchangeObjectAtIndex:v81 - 1 withObjectAtIndex:arc4random_uniform(v81)];
                    --v81;
                  }

                  while (v81 > 1);
                }

                v62 = v70;
LABEL_49:
              }

              else
              {
                v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"Length of sparsification mapping file does not match number of statistics to be privatised and aggregated: number of statistics = %lu number of byte values in mapping file = %lu", v95, v69];;
                [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v90 error:errorCopy2];

                v62 = 0;
              }
            }

            else
            {
              if (errorCopy2)
              {
                v89 = *errorCopy2;
              }

              else
              {
                v89 = 0;
              }

              v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sparsification map file was not readable: %@", v89];
              [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v91 error:errorCopy2];

              v62 = 0;
              v61 = obja;
            }

            goto LABEL_27;
          }

          recipeCopy = v105;
        }

        v50 = [obja countByEnumeratingWithState:&v106 objects:v111 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    v59 = MEMORY[0x277CCACA8];
    attachments = [recipeCopy attachments];
    v61 = [v59 stringWithFormat:@"Sparsification map file not found in recipe attachments. Recipe attachments = %@", attachments];

    [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v61 error:errorCopy2];
    v62 = 0;
    v40 = v97;
    resultCopy = v98;
  }

  else
  {
    v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incorrect settings for chunking parameters: size of result vector = %lu number of chunks = %lu; number of clipping bounds = %lu", v47, intValue, v45];;
    [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v61 error:errorCopy2];
    v62 = 0;
  }

  keyCopy = v104;
LABEL_27:

LABEL_28:
  v65 = *MEMORY[0x277D85DE8];

  return v62;
}

- (void)reportErrorWithErrorStr:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)splitResultToChunksWithResult:(uint64_t)a1 recipe:(NSObject *)a2 baseKey:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_248FF7000, a2, OS_LOG_TYPE_DEBUG, "Sparsification map file found at: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end