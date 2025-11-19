@interface CNBufferingObservable
@end

@implementation CNBufferingObservable

void __36___CNBufferingObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 results];
  v6 = [MEMORY[0x1E695DFB0] null];
  [v5 _cn_addObject:v4 orPlaceholder:v6];

  v9 = [*(a1 + 32) strategy];
  v7 = *(a1 + 32);
  v8 = [v7 results];
  [v9 buffer:v7 didReceiveResults:v8 forObserver:*(a1 + 40)];
}

uint64_t __36___CNBufferingObservable_subscribe___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  v3 = [v2 count];

  if (v3)
  {
    [*(a1 + 32) sendBufferedResultsToObserver:*(a1 + 40)];
  }

  v4 = *(a1 + 40);

  return [v4 observerDidComplete];
}

@end