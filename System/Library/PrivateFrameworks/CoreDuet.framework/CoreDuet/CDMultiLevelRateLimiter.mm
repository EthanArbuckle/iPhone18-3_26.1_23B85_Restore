@interface CDMultiLevelRateLimiter
@end

@implementation CDMultiLevelRateLimiter

void __35___CDMultiLevelRateLimiter_debited__block_invoke(uint64_t a1)
{
  [*(a1 + 32) recordTimeAndRefillIfNeededRaw];
  v2 = *(*(a1 + 32) + 24);
  while (v2 > 0)
  {
    v3 = [*(*(a1 + 32) + 56) objectAtIndexedSubscript:--v2];
    v4 = [v3 integerValue];
    v5 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:v2];
    v6 = [v5 integerValue];

    if (v4 == v6)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      return;
    }
  }

  v7 = *(a1 + 32);
  if (*(v7 + 24) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = [*(v7 + 56) objectAtIndexedSubscript:v8];
      v11 = [v9 numberWithInteger:{objc_msgSend(v10, "integerValue") + 1}];
      [*(*(a1 + 32) + 56) setObject:v11 atIndexedSubscript:v8];

      ++v8;
      v7 = *(a1 + 32);
    }

    while (v8 < *(v7 + 24));
  }
}

void __34___CDMultiLevelRateLimiter_credit__block_invoke(uint64_t a1)
{
  [*(a1 + 32) recordTimeAndRefillIfNeededRaw];
  v2 = *(a1 + 32);
  if (*(v2 + 24) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [*(v2 + 56) objectAtIndexedSubscript:v3];
      v5 = [v4 integerValue];

      if (v5)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5 - 1];
        [*(*(a1 + 32) + 56) setObject:v6 atIndexedSubscript:v3];
      }

      ++v3;
      v2 = *(a1 + 32);
    }

    while (v3 < *(v2 + 24));
  }
}

@end