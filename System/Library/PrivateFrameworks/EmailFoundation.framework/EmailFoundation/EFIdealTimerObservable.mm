@interface EFIdealTimerObservable
@end

@implementation EFIdealTimerObservable

void __37___EFIdealTimerObservable_subscribe___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFB0] null];
  [v1 observerDidReceiveResult:?];
}

uint64_t __37___EFIdealTimerObservable_subscribe___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  [*(a1 + 32) lock];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(a1 + 64);
  if (v3 - *(v4 + 24) >= v5)
  {
    v6 = fmod(v3 - *(a1 + 72), *(a1 + 64));
    if (v6 >= 2.22044605e-16)
    {
      *(v4 + 24) = v3 + v5 - v6;
      v7 = [*(a1 + 40) afterDelay:*(a1 + 48) performBlock:?];
    }

    else
    {
      *(v4 + 24) = v3;
      [*(a1 + 40) performBlock:*(a1 + 48)];
    }
  }

  v8 = *(a1 + 32);

  return [v8 unlock];
}

@end