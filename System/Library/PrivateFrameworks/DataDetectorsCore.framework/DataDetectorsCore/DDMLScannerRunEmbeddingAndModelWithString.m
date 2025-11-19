@interface DDMLScannerRunEmbeddingAndModelWithString
@end

@implementation DDMLScannerRunEmbeddingAndModelWithString

uint64_t ___DDMLScannerRunEmbeddingAndModelWithString_block_invoke(uint64_t a1)
{
  v2 = +[DDMLTaggerModel currentTaggerModel];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void ___DDMLScannerRunEmbeddingAndModelWithString_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) substringWithRange:{a3, a4}];
  [v7 setString:v8];

  [v7 setRange:{a3, a4}];
  v41 = v7;
  [*(a1 + 40) addObject:v7];
  v9 = objc_opt_new();
  v10 = *(a1 + 48);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = ___DDMLScannerRunEmbeddingAndModelWithString_block_invoke_3;
  v57[3] = &unk_1E80022B8;
  v59 = *(a1 + 64);
  v11 = v9;
  v58 = v11;
  [v10 enumerateTokenVectorsInRange:a3 usingBlock:{a4, v57}];
  v12 = [v11 count];
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
  if (*(a1 + 64))
  {
    v14 = 0;
    do
    {
      [v13 addObject:&unk_1F3B7DD80];
      ++v14;
    }

    while (v14 < *(a1 + 64));
  }

  v40 = a1;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v43 = *v54;
    v17 = v12;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v54 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v21)
        {
          v22 = v21;
          LODWORD(v23) = 0;
          v24 = *v50;
          do
          {
            v25 = 0;
            v23 = v23;
            do
            {
              if (*v50 != v24)
              {
                objc_enumerationMutation(v20);
              }

              [*(*(&v49 + 1) + 8 * v25) floatValue];
              v27 = v26;
              v28 = [v13 objectAtIndexedSubscript:v23];
              [v28 floatValue];
              v30 = v29;

              *&v31 = (v27 / v17) + v30;
              v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
              [v13 setObject:v32 atIndexedSubscript:v23];

              ++v23;
              ++v25;
            }

            while (v22 != v25);
            v22 = [v20 countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v22);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v16);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = v13;
  v34 = [v33 countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v46;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v45 + 1) + 8 * j) floatValue];
        v44 = v38;
        [*(v40 + 56) appendBytes:&v44 length:4];
      }

      v35 = [v33 countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v35);
  }

  v39 = *MEMORY[0x1E69E9840];
}

void ___DDMLScannerRunEmbeddingAndModelWithString_block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count] != *(a1 + 40))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<DDMLToken *> *_DDMLScannerRunEmbeddingAndModelWithString(NLContextualEmbedding *__strong, MRLNeuralNetworkRef, NSString *__strong)_block_invoke_3"}];
    [v3 handleFailureInFunction:v4 file:@"DDMLScanner.m" lineNumber:896 description:@"tokenVector has unexpected dimensions"];
  }

  [*(a1 + 32) addObject:v5];
}

@end