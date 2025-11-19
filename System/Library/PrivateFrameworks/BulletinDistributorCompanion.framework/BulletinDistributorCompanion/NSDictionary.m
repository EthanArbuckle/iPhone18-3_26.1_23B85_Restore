@interface NSDictionary
@end

@implementation NSDictionary

void __54__NSDictionary_BLTNSNullRemoval__objectWithNoNSNulls___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = 0;
  v6 = [a3 objectWithNoNSNulls:&v10];
  v7 = v10;
  if (!v6)
  {
    v8 = *(a1 + 40);
    v9 = MEMORY[0x277CBEC38];
    goto LABEL_5;
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  if ([v7 count])
  {
    v8 = *(a1 + 40);
    v9 = v7;
LABEL_5:
    [v8 setObject:v9 forKeyedSubscript:v5];
  }
}

void __52__NSDictionary_BLTNSNullRemoval__objectWithNSNulls___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 objectSentinelNull];
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:v10];
  }

  else
  {
    v8 = [v7 objectForKeyedSubscript:v10];
    v9 = [v8 objectWithNSNulls:v5];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
  }
}

void __37__NSDictionary_BLTSizeOf__blt_sizeof__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [a2 blt_sizeof];
  v6 = [v5 blt_sizeof];

  *(*(*(a1 + 32) + 8) + 24) += v6;
}

@end