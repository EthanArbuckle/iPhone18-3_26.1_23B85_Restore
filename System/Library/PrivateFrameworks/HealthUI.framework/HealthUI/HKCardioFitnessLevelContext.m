@interface HKCardioFitnessLevelContext
@end

@implementation HKCardioFitnessLevelContext

void __106___HKCardioFitnessLevelContext__updateContextItemWithChartPointCountForDateInterval_timeScope_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 userInfo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = [v12 userInfo];
            if ([v15 classification] == *(*(a1 + 32) + 40))
            {
              ++v9;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v17 = *(a1 + 32);
    v18 = [v17 cardioFitnessLevel];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v20 = [v17 _cardioFitnessContextItemWithLevel:v18 chartPointCount:v19 forTimeScope:*(a1 + 48)];
    [*(a1 + 32) setLastUpdatedItem:v20];

    v16 = *(*(a1 + 40) + 16);
  }

  else
  {
    v16 = *(*(a1 + 40) + 16);
  }

  v16();
}

void __102___HKCardioFitnessLevelContext__updateContextItemWithSampleCountForDateInterval_timeScope_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v4 = [*(*(a1 + 32) + 72) sampleType];
    v5 = [v7 objectForKeyedSubscript:v4];

    v6 = [*(a1 + 32) _cardioFitnessContextItemWithLevel:objc_msgSend(*(a1 + 32) sampleCount:{"cardioFitnessLevel"), v5}];
    [*(a1 + 32) setLastUpdatedItem:v6];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end