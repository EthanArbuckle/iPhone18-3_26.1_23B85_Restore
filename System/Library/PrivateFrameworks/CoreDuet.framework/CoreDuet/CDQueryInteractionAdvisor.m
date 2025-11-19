@interface CDQueryInteractionAdvisor
@end

@implementation CDQueryInteractionAdvisor

void __82___CDQueryInteractionAdvisor_adviseInteractionsForKeywordsInString_usingSettings___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(*(a1[4] + 8) + 40);
    v12 = v5;
    v7 = a3;
    v8 = [v6 objectForKeyedSubscript:v12];
    if (!v8)
    {
      [*(*(a1[5] + 8) + 40) addObject:v12];
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:a1[6]];
      [*(*(a1[4] + 8) + 40) setObject:v8 forKeyedSubscript:v12];
    }

    v9 = [v8 objectForKeyedSubscript:v7];
    v10 = [v9 intValue];

    v11 = [MEMORY[0x1E696AD98] numberWithInt:(v10 + 1)];
    [v8 setObject:v11 forKeyedSubscript:v7];

    v5 = v12;
  }
}

uint64_t __82___CDQueryInteractionAdvisor_adviseInteractionsForKeywordsInString_usingSettings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

@end