@interface NAFuture
@end

@implementation NAFuture

void __68__NAFuture_FirewallRuleManager__blockAndWaitForCompletionWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

id __64__NAFuture_HMDUtilities__combineAllFuturesIgnoringEmptyResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 na_map:&__block_literal_global_761];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

id __64__NAFuture_HMDUtilities__combineAllFuturesIgnoringEmptyResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v2 && (isKindOfClass & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

id __66__NAFuture_HMDUtilities__combineAllFuturesFlatteningArrayResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 na_flatMap:&__block_literal_global_756];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

id __66__NAFuture_HMDUtilities__combineAllFuturesFlatteningArrayResults___block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v2 && (isKindOfClass & 1) != 0)
  {
    v4 = v2;
  }

  else
  {
    v8[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __67__NAFuture_HMDUtilities__futureWithRetryIntervals_workQueue_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) hmf_isEmpty])
  {
    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    v4 = [*(a1 + 32) firstObject];
    [v4 doubleValue];
    v6 = v5;

    v7 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
    v8 = dispatch_time(0, (v6 * 1000000000.0));
    v9 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__NAFuture_HMDUtilities__futureWithRetryIntervals_workQueue_block___block_invoke_3;
    block[3] = &unk_2797309E0;
    v18 = v7;
    v10 = *(a1 + 64);
    v11 = v9;
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    *&v14 = v11;
    *(&v14 + 1) = v13;
    *&v15 = v12;
    *(&v15 + 1) = v10;
    v19 = v14;
    v20 = v15;
    v16 = v7;
    dispatch_after(v8, v11, block);
  }
}

void __67__NAFuture_HMDUtilities__futureWithRetryIntervals_workQueue_block___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 64) futureWithRetryIntervals:*(a1 + 32) workQueue:*(a1 + 40) block:*(a1 + 56)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__NAFuture_HMDUtilities__futureWithRetryIntervals_workQueue_block___block_invoke_4;
  v4[3] = &unk_279727298;
  v5 = *(a1 + 48);
  v3 = [v2 addCompletionBlock:v4];
}

void __73__NAFuture_HMDUtilities__futureWithRetries_timeInterval_workQueue_block___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) <= 0)
  {
    v6 = *(a1 + 32);

    [v6 finishWithError:a2];
  }

  else
  {
    v3 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__NAFuture_HMDUtilities__futureWithRetries_timeInterval_workQueue_block___block_invoke_3;
    v7[3] = &unk_2797272C0;
    v5 = *(a1 + 56);
    v11 = *(a1 + 72);
    v12 = v5;
    v13 = *(a1 + 64);
    v8 = v4;
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    dispatch_after(v3, v8, v7);
  }
}

void __73__NAFuture_HMDUtilities__futureWithRetries_timeInterval_workQueue_block___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 56) futureWithRetries:*(a1 + 64) - 1 timeInterval:*(a1 + 32) workQueue:*(a1 + 48) block:*(a1 + 72)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__NAFuture_HMDUtilities__futureWithRetries_timeInterval_workQueue_block___block_invoke_4;
  v4[3] = &unk_279727298;
  v5 = *(a1 + 40);
  v3 = [v2 addCompletionBlock:v4];
}

@end