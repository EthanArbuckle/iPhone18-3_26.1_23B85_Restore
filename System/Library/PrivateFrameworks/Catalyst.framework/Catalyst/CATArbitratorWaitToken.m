@interface CATArbitratorWaitToken
@end

@implementation CATArbitratorWaitToken

void __33___CATArbitratorWaitToken_resume__block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) performCompletionBlock];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __49___CATArbitratorWaitToken_performCompletionBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = [v7 resourceProxy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];

  [v7 invalidate];
}

@end