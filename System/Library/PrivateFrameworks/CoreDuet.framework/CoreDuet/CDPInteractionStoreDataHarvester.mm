@interface CDPInteractionStoreDataHarvester
@end

@implementation CDPInteractionStoreDataHarvester

void __78___CDPInteractionStoreDataHarvester_loadWithLimit_dataPointReader_completion___block_invoke(void *a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v6 = a1[4];
  v7 = v6[2];
  v8 = [v6 predicate];
  v26 = v5;
  v33[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v10 = [v7 queryInteractionsUsingPredicate:v8 sortDescriptors:v9 limit:+[_CDPSimpleModel maxNumberOfEmailsSupported](_CDPSimpleModel error:{"maxNumberOfEmailsSupported"), 0}];
  v11 = a1[4];
  v12 = *(v11 + 32);
  *(v11 + 32) = v10;

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __78___CDPInteractionStoreDataHarvester_loadWithLimit_dataPointReader_completion___block_invoke_2;
  v31[3] = &unk_1E736A758;
  v31[4] = a1[4];
  v13 = MEMORY[0x193B00C50](v31);
  v14 = [*(a1[4] + 32) count];
  v15 = a1[7];
  if (v14 <= v15)
  {
    LODWORD(v15) = [*(a1[4] + 32) count];
  }

  if (v15 >= 1)
  {
    v16 = v15 & 0x7FFFFFFF;
    do
    {
      v17 = [*(a1[4] + 32) objectAtIndexedSubscript:v16 - 1];
      v18 = [v17 sender];
      (v13)[2](v13, v18);

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v19 = [v17 recipients];
      v20 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          v23 = 0;
          do
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v13[2](v13, *(*(&v27 + 1) + 8 * v23++));
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v21);
      }

      (*(a1[5] + 16))();
    }

    while (v16-- > 1);
  }

  (*(a1[6] + 16))();

  v25 = *MEMORY[0x1E69E9840];
}

void __78___CDPInteractionStoreDataHarvester_loadWithLimit_dataPointReader_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 identifier];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = [v9 identifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      [v6 mergeWithContact:v9];
    }

    else
    {
      v7 = *(*(a1 + 32) + 8);
      v8 = [v9 identifier];
      [v7 setObject:v9 forKeyedSubscript:v8];
    }
  }
}

@end