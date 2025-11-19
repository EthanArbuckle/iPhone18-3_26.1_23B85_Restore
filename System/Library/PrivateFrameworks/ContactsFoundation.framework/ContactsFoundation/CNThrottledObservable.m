@interface CNThrottledObservable
@end

@implementation CNThrottledObservable

void __36___CNThrottledObservable_subscribe___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delayToken];
  [v1 cancel];
}

void __36___CNThrottledObservable_subscribe___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v5 = a1[4];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __36___CNThrottledObservable_subscribe___block_invoke_3;
  v22[3] = &unk_1E6ED7D00;
  v22[4] = WeakRetained;
  v6 = v3;
  v23 = v6;
  v24 = &v25;
  CNRunWithLock(v5, v22);
  if (*(v26 + 24) == 1)
  {
    v7 = [WeakRetained observerScheduler];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __36___CNThrottledObservable_subscribe___block_invoke_4;
    v20[3] = &unk_1E6ED5168;
    v20[4] = WeakRetained;
    v21 = a1[5];
    [v7 performBlock:v20];
  }

  v8 = [WeakRetained delayToken];
  [v8 cancel];

  v9 = [WeakRetained observerScheduler];
  [WeakRetained interval];
  v11 = v10;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __36___CNThrottledObservable_subscribe___block_invoke_5;
  v16 = &unk_1E6ED57E0;
  v17 = WeakRetained;
  v18 = a1[5];
  v19 = a1[4];
  v12 = [v9 afterDelay:&v13 performBlock:v11];
  [WeakRetained setDelayToken:{v12, v13, v14, v15, v16, v17}];

  _Block_object_dispose(&v25, 8);
}

uint64_t __36___CNThrottledObservable_subscribe___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setMostRecentResult:*(a1 + 40)];
  if ([*(a1 + 32) isCoalescing] & 1) == 0 && (objc_msgSend(*(a1 + 32), "options"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v2 = *(a1 + 32);

  return [v2 setIsCoalescing:1];
}

void __36___CNThrottledObservable_subscribe___block_invoke_5(uint64_t a1)
{
  if (([*(a1 + 32) options] & 2) != 0)
  {
    [*(a1 + 32) observerScheduler_sendResultToObserver:*(a1 + 40)];
  }

  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36___CNThrottledObservable_subscribe___block_invoke_6;
  v3[3] = &unk_1E6ED5830;
  v3[4] = *(a1 + 32);
  CNRunWithLock(v2, v3);
}

void __36___CNThrottledObservable_subscribe___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delayToken];
  [v3 cancel];

  v4 = [WeakRetained observerScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___CNThrottledObservable_subscribe___block_invoke_8;
  v5[3] = &unk_1E6ED5168;
  v5[4] = WeakRetained;
  v6 = *(a1 + 32);
  [v4 performBlock:v5];
}

uint64_t __36___CNThrottledObservable_subscribe___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) observerScheduler_sendResultToObserver:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 observerDidComplete];
}

void __36___CNThrottledObservable_subscribe___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delayToken];
  [v5 cancel];

  v6 = [WeakRetained observerScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36___CNThrottledObservable_subscribe___block_invoke_10;
  v8[3] = &unk_1E6ED5168;
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  [v6 performBlock:v8];
}

uint64_t __65___CNThrottledObservable_observerScheduler_sendResultToObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mostRecentResult];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setMostRecentResult:0];
}

@end