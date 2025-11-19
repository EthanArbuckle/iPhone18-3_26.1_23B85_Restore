@interface DKHistogram
@end

@implementation DKHistogram

double __52___DKHistogram_addHistogram_decayingExistingCounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 countForValueDouble:v7];
  v9 = v8;
  [v6 doubleValue];
  v11 = v10;

  v12 = v9 + v11 * *(a1 + 56);
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [*(*(a1 + 40) + 8) setObject:v13 forKeyedSubscript:v7];

  v14 = *(*(a1 + 48) + 8);
  result = v12 + *(v14 + 24);
  *(v14 + 24) = result;
  return result;
}

void __52___DKHistogram_addHistogram_decayingExistingCounts___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v6)
  {
    [*(*(a1 + 40) + 8) setObject:v5 forKeyedSubscript:v8];
    [v5 doubleValue];
    *(*(*(a1 + 48) + 8) + 24) = v7 + *(*(*(a1 + 48) + 8) + 24);
  }
}

@end