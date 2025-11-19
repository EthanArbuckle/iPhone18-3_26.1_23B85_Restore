@interface DESSparsification
- (BOOL)reportErrorWithErrorStr:(id)a3 error:(id *)a4;
- (id)splitResultToChunksWithResult:(id)a3 recipe:(id)a4 baseKey:(id)a5 error:(id *)a6;
@end

@implementation DESSparsification

- (BOOL)reportErrorWithErrorStr:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [DESSparsification reportErrorWithErrorStr:v5 error:v6];
  }

  if (a4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a4 = [v7 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2008 userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
  return a4 != 0;
}

- (id)splitResultToChunksWithResult:(id)a3 recipe:(id)a4 baseKey:(id)a5 error:(id *)a6
{
  v116 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v110 = 0.0;
  v13 = [v11 useAdaptiveClipping];
  if (v13)
  {
    v14 = [v11 maxNorm];
    [v14 doubleValue];
    v16 = v15;

    v17 = [v11 recipeUserInfo];
    v18 = [v17 objectForKeyedSubscript:@"ClippingIndicatorScale"];
    [v18 doubleValue];
    v20 = v19;

    *&v21 = v16;
    *&v22 = v20;
    if (![DESAdaptiveClipping computeClippingIndicator:v10 clippingBound:&v110 scale:v21 clippingIndicator:v22])
    {
      v63 = MEMORY[0x277CCACA8];
      v64 = [v11 recipeID];
      v40 = [v63 stringWithFormat:@"Recipe %@ has %@=%f but failed to compute the adaptive clipping indicator", v64, @"ClippingIndicatorScale", *&v20];

      [(DESSparsification *)self reportErrorWithErrorStr:v40 error:a6];
      v62 = 0;
      goto LABEL_28;
    }

    v23 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v11 recipeID];
      *buf = 138412546;
      v113 = v24;
      v114 = 2048;
      v115 = v110;
      _os_log_impl(&dword_248FF7000, v23, OS_LOG_TYPE_INFO, "Recipe %@ uses adaptive clipping, indicator=%f", buf, 0x16u);
    }

    v99 = v13;
    v102 = self;
    v103 = a6;
    v25 = v10;

    v26 = 1;
  }

  else
  {
    v99 = 0;
    v102 = self;
    v103 = a6;
    v25 = v10;
    v26 = 0;
  }

  v27 = [v11 recipeUserInfo];
  v28 = [v27 objectForKeyedSubscript:@"sparsification"];
  v29 = [v28 objectForKeyedSubscript:@"chunkClippingBounds"];
  if (!v29)
  {
    goto LABEL_23;
  }

  v30 = v29;
  v104 = v12;
  v31 = [v11 recipeUserInfo];
  v32 = [v31 objectForKeyedSubscript:@"sparsification"];
  v33 = [v32 objectForKeyedSubscript:@"numChunks"];
  if (!v33)
  {

    v12 = v104;
LABEL_23:

    goto LABEL_24;
  }

  v34 = v33;
  obj = v26;
  [v11 recipeUserInfo];
  v35 = v105 = v11;
  v36 = [v35 objectForKeyedSubscript:@"sparsification"];
  v37 = [v36 objectForKeyedSubscript:@"sparsificationMapFile"];

  v11 = v105;
  v12 = v104;
  if (!v37)
  {
LABEL_24:
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Recipe does not include all keys required for sparsification and chunking. Required keys include %@, %@, %@, %@", @"sparsification", @"chunkClippingBounds", @"numChunks", @"sparsificationMapFile"];
    [(DESSparsification *)v102 reportErrorWithErrorStr:v40 error:v103];
    v62 = 0;
    v10 = v25;
    goto LABEL_28;
  }

  v38 = [v105 recipeUserInfo];
  v39 = [v38 objectForKeyedSubscript:@"sparsification"];
  v40 = [v39 objectForKeyedSubscript:@"chunkClippingBounds"];

  v41 = [v105 recipeUserInfo];
  v42 = [v41 objectForKeyedSubscript:@"sparsification"];
  v43 = [v42 objectForKeyedSubscript:@"numChunks"];
  v44 = [v43 intValue];

  v45 = [v40 count];
  v10 = v25;
  v46 = [v25 length];
  v47 = &obj[v46 >> 2];
  if (v47 >= v44 && v45 == v44)
  {
    v48 = v46;
    v95 = &obj[v46 >> 2];
    *__upper_bound = v44;
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
          v54 = [v53 lastPathComponent];
          v55 = [v11 recipeUserInfo];
          v56 = [v55 objectForKeyedSubscript:@"sparsification"];
          v57 = [v56 objectForKeyedSubscript:@"sparsificationMapFile"];
          v58 = [v54 isEqualToString:v57];

          if (v58)
          {
            v67 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              [DESSparsification splitResultToChunksWithResult:v53 recipe:v67 baseKey:? error:?];
            }

            v68 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v53 options:1 error:v103];
            v40 = v97;
            v10 = v98;
            v12 = v104;
            v11 = v105;
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
                    v73 = [v12 resultsKeyStringForChunk:v72];

                    v74 = [DESChunk alloc];
                    v75 = [v97 objectAtIndexedSubscript:v71 - 1];
                    v76 = objc_alloc_init(MEMORY[0x277CBEB28]);
                    v77 = [(DESChunk *)v74 initWithKey:v73 clippingBound:v75 data:v76];

                    v12 = v104;
                    [v70 addObject:v77];

                    ++v71;
                  }

                  while (v71 != __upper_bound[0] + 1);
                }

                v78 = [v61 bytes];
                v10 = v98;
                v79 = [v98 bytes];
                v80 = v94;
                v81 = *__upper_bound;
                if (v93 >= 4)
                {
                  v82 = v79;
                  do
                  {
                    v84 = *v78++;
                    v83 = v84;
                    if (v84)
                    {
                      if (v83 > *__upper_bound)
                      {
                        v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Chunk mapping value = %8u, which is greater than number of chunks = %lu, found in map file", v83, *__upper_bound];
                        [(DESSparsification *)v102 reportErrorWithErrorStr:v92 error:v103];

                        v62 = 0;
                        v11 = v105;
                        goto LABEL_49;
                      }

                      v85 = [v70 objectAtIndexedSubscript:(v83 - 1)];
                      v86 = [v85 data];
                      [v86 appendBytes:v82 length:4];

                      v12 = v104;
                    }

                    v82 += 4;
                    --v80;
                  }

                  while (v80);
                }

                if (v99)
                {
                  v87 = [v70 objectAtIndexedSubscript:{objc_msgSend(v70, "count") - 1}];
                  v88 = [v87 data];
                  [v88 appendBytes:&v110 length:4];
                }

                v11 = v105;
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
                [(DESSparsification *)v102 reportErrorWithErrorStr:v90 error:v103];

                v62 = 0;
              }
            }

            else
            {
              if (v103)
              {
                v89 = *v103;
              }

              else
              {
                v89 = 0;
              }

              v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sparsification map file was not readable: %@", v89];
              [(DESSparsification *)v102 reportErrorWithErrorStr:v91 error:v103];

              v62 = 0;
              v61 = obja;
            }

            goto LABEL_27;
          }

          v11 = v105;
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
    v60 = [v11 attachments];
    v61 = [v59 stringWithFormat:@"Sparsification map file not found in recipe attachments. Recipe attachments = %@", v60];

    [(DESSparsification *)v102 reportErrorWithErrorStr:v61 error:v103];
    v62 = 0;
    v40 = v97;
    v10 = v98;
  }

  else
  {
    v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incorrect settings for chunking parameters: size of result vector = %lu number of chunks = %lu; number of clipping bounds = %lu", v47, v44, v45];;
    [(DESSparsification *)v102 reportErrorWithErrorStr:v61 error:v103];
    v62 = 0;
  }

  v12 = v104;
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