@interface CDRateLimiter
@end

@implementation CDRateLimiter

uint64_t __25___CDRateLimiter_debited__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) recordTimeAndRefillIfNeeded];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v4 + 1;
  v5 = *(a1 + 32);
  if (v4 >= *(v5 + 40))
  {
    v6 = 0;
    --*(v5 + 16);
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  return result;
}

uint64_t __35___CDRateLimiter_sharedRateLimiter__block_invoke()
{
  v0 = [[_CDRateLimiter alloc] initWithCount:300 perPeriod:60.0];
  v1 = sharedRateLimiter__sharedRateLimiter;
  sharedRateLimiter__sharedRateLimiter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __24___CDRateLimiter_credit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) recordTimeAndRefillIfNeeded];
  --*(*(a1 + 32) + 16);
  return result;
}

@end