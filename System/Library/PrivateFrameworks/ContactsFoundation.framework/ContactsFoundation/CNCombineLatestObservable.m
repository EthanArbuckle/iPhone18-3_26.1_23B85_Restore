@interface CNCombineLatestObservable
@end

@implementation CNCombineLatestObservable

void __40___CNCombineLatestObservable_subscribe___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40___CNCombineLatestObservable_subscribe___block_invoke_2;
  v24[3] = &unk_1E6ED72C8;
  objc_copyWeak(v26, (a1 + 56));
  v26[1] = a3;
  v25 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __40___CNCombineLatestObservable_subscribe___block_invoke_3;
  v21[3] = &unk_1E6ED72F0;
  objc_copyWeak(v23, (a1 + 56));
  v23[1] = a3;
  v22 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40___CNCombineLatestObservable_subscribe___block_invoke_4;
  v18[3] = &unk_1E6ED7318;
  objc_copyWeak(v20, (a1 + 56));
  v20[1] = a3;
  v19 = *(a1 + 32);
  v7 = [CNObserver blockObserverOfClass:v6 withResultBlock:v24 completionBlock:v21 failureBlock:v18];
  v8 = [v5 subscribe:v7];

  v9 = *(a1 + 40);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __40___CNCombineLatestObservable_subscribe___block_invoke_5;
  v14 = &unk_1E6ED7340;
  v15 = v9;
  v17 = a3;
  v10 = v8;
  v16 = v10;
  [v9 performWithResourceLock:&v11];
  [*(a1 + 48) addCancelable:{v10, v11, v12, v13, v14, v15}];

  objc_destroyWeak(v20);
  objc_destroyWeak(v23);

  objc_destroyWeak(v26);
}

void __40___CNCombineLatestObservable_subscribe___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained observableAtIndex:*(a1 + 48) didReceiveResult:v3 forObserver:*(a1 + 32)];
}

void __40___CNCombineLatestObservable_subscribe___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained observableAtIndexDidComplete:*(a1 + 48) forObserver:*(a1 + 32)];
}

void __40___CNCombineLatestObservable_subscribe___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained observableAtIndex:*(a1 + 48) didFailWithError:v3 forObserver:*(a1 + 32)];
}

void __40___CNCombineLatestObservable_subscribe___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) activeObservableIndexes];
  v3 = [v2 containsIndex:*(a1 + 48)];

  if (v3)
  {
    v4 = [*(a1 + 32) tokens];
    [v4 replaceObjectAtIndex:*(a1 + 48) withObject:*(a1 + 40)];
  }
}

void __77___CNCombineLatestObservable_observableAtIndex_didReceiveResult_forObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  [v2 replaceObjectAtIndex:*(a1 + 56) withObject:*(a1 + 40)];

  v3 = [*(a1 + 32) silentObservableIndexes];
  [v3 removeIndex:*(a1 + 56)];

  v4 = [*(a1 + 32) silentObservableIndexes];
  LODWORD(v3) = (off_1EF43FF28)(&__block_literal_global_68, v4);

  if (v3)
  {
    v5 = [*(a1 + 32) results];
    v6 = [v5 copy];

    v7 = [*(a1 + 32) resultScheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77___CNCombineLatestObservable_observableAtIndex_didReceiveResult_forObserver___block_invoke_2;
    v9[3] = &unk_1E6ED5168;
    v10 = *(a1 + 48);
    v11 = v6;
    v8 = v6;
    [v7 performBlock:v9];
  }
}

void __71___CNCombineLatestObservable_observableAtIndexDidComplete_forObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tokens];
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x1E695DFB0] null];
  [v2 replaceObjectAtIndex:v3 withObject:v4];

  v5 = [*(a1 + 32) activeObservableIndexes];
  [v5 removeIndex:*(a1 + 48)];

  v6 = [*(a1 + 32) activeObservableIndexes];
  LODWORD(v5) = (off_1EF43FF28)(&__block_literal_global_68, v6);

  if (v5)
  {
    v7 = [*(a1 + 32) resultScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71___CNCombineLatestObservable_observableAtIndexDidComplete_forObserver___block_invoke_2;
    v8[3] = &unk_1E6ED5830;
    v9 = *(a1 + 40);
    [v7 performBlock:v8];
  }
}

void __77___CNCombineLatestObservable_observableAtIndex_didFailWithError_forObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeObservableIndexes];
  v3 = [v2 mutableCopy];

  [v3 removeIndex:*(a1 + 56)];
  v4 = [*(a1 + 32) tokens];
  v5 = [v4 objectsAtIndexes:v3];

  v6 = [v5 _cn_filter:&__block_literal_global_7_2];
  [v6 _cn_each:&__block_literal_global_42];

  v7 = [*(a1 + 32) resultScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___CNCombineLatestObservable_observableAtIndex_didFailWithError_forObserver___block_invoke_2;
  v8[3] = &unk_1E6ED5168;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v7 performBlock:v8];
}

@end