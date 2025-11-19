@interface CNFlatMapObservable
@end

@implementation CNFlatMapObservable

void __34___CNFlatMapObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [*(a1 + 32) resourceLock];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34___CNFlatMapObservable_subscribe___block_invoke_2;
  v16[3] = &unk_1E6ED5168;
  v17 = *(a1 + 32);
  v18 = v4;
  v6 = v4;
  [v5 performBlock:v16];

  [v6 _cn_each:&__block_literal_global_42];
  v7 = [*(a1 + 32) resourceLock];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __34___CNFlatMapObservable_subscribe___block_invoke_4;
  v14[3] = &unk_1E6ED5830;
  v15 = *(a1 + 32);
  [v7 performBlock:v14];

  v8 = [*(a1 + 32) downstream];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34___CNFlatMapObservable_subscribe___block_invoke_6;
  v10[3] = &unk_1E6ED57E0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v3;
  v9 = v3;
  [v8 performBlock:v10];
}

void __34___CNFlatMapObservable_subscribe___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) decorators];
  v3 = [v2 allObjects];
  [v3 _cn_each:&__block_literal_global_18_1];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) tokens];
  v6 = [v5 allObjects];
  [v4 setArray:v6];

  v7 = [*(a1 + 32) tokens];
  [v7 removeAllObjects];
}

void __34___CNFlatMapObservable_subscribe___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) decorators];
  v1 = [v2 allObjects];
  [v1 _cn_each:&__block_literal_global_21_0];
}

uint64_t __34___CNFlatMapObservable_subscribe___block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) isObserverReceiving];
  if (result)
  {
    [*(a1 + 32) setObserverReceiving:0];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 observerDidFailWithError:v4];
  }

  return result;
}

void __34___CNFlatMapObservable_subscribe___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = [*(a1 + 32) resourceLock];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __34___CNFlatMapObservable_subscribe___block_invoke_8;
  v13 = &unk_1E6ED5808;
  v15 = &v16;
  v14 = *(a1 + 32);
  [v4 performBlock:&v10];

  if (v17[3])
  {
    v5 = *(a1 + 40);
    v6 = [v3 doOnError:{*(a1 + 56), v10, v11, v12, v13}];
    v7 = [v5 subscribeInnerObservable:v6 observer:*(a1 + 48) context:*(a1 + 32)];

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v9 = [v7 token];
    [WeakRetained addCancelable:v9];
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __34___CNFlatMapObservable_subscribe___block_invoke_8(uint64_t a1)
{
  result = [*(a1 + 32) isOperatorReceiving];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __34___CNFlatMapObservable_subscribe___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceLock];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34___CNFlatMapObservable_subscribe___block_invoke_10;
  v3[3] = &unk_1E6ED5168;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 performBlock:v3];
}

void __34___CNFlatMapObservable_subscribe___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) setOperatorReceiving:0];
  v2 = [*(a1 + 32) decorators];
  v3 = [v2 count];

  if (!v3)
  {
    v4 = [*(a1 + 32) downstream];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34___CNFlatMapObservable_subscribe___block_invoke_11;
    v5[3] = &unk_1E6ED5168;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v4 performBlock:v5];
  }
}

uint64_t __34___CNFlatMapObservable_subscribe___block_invoke_11(uint64_t a1)
{
  result = [*(a1 + 32) isObserverReceiving];
  if (result)
  {
    [*(a1 + 32) setObserverReceiving:0];
    v3 = *(a1 + 40);

    return [v3 observerDidComplete];
  }

  return result;
}

void __34___CNFlatMapObservable_subscribe___block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) tokens];
  [v2 addObject:*(a1 + 40)];
}

void __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) decorators];
  v3 = [v2 count];

  if (!v3)
  {
    [*(a1 + 40) resume];
  }

  v4 = [*(a1 + 32) decorators];
  [v4 enqueue:*(a1 + 40)];
}

void __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_3;
  v6[3] = &unk_1E6ED6800;
  objc_copyWeak(&v9, a1 + 6);
  v7 = a1[4];
  v5 = v3;
  v8 = v5;
  [WeakRetained performBlock:v6];

  objc_destroyWeak(&v9);
}

void __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_4;
  v3[3] = &unk_1E6ED5168;
  v4 = a1[4];
  v5 = a1[5];
  [WeakRetained performBlock:v3];
}

void __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_5(id *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_6;
  v3[3] = &unk_1E6ED8368;
  v2 = a1[4];
  v4 = a1[5];
  objc_copyWeak(&v7, a1 + 7);
  objc_copyWeak(&v8, a1 + 8);
  v5 = a1[4];
  v6 = a1[6];
  [v2 performBlock:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_6(id *a1)
{
  v2 = [a1[4] resourceLock];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_7;
  v3[3] = &unk_1E6ED8340;
  objc_copyWeak(&v6, a1 + 7);
  objc_copyWeak(&v7, a1 + 8);
  v4 = a1[5];
  v5 = a1[6];
  [v2 performBlock:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
}

void __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained tokens];
  [v4 removeObject:v3];

  v5 = [WeakRetained decorators];
  [v5 dequeueObject:*(a1 + 32)];

  v6 = [WeakRetained decorators];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [WeakRetained isOperatorReceiving];

    if ((v7 & 1) == 0)
    {
      v12 = [WeakRetained downstream];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_8;
      v13[3] = &unk_1E6ED5168;
      v14 = WeakRetained;
      v15 = *(a1 + 40);
      [v12 performBlock:v13];

      goto LABEL_7;
    }
  }

  v8 = [WeakRetained decorators];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [WeakRetained decorators];
    v11 = [v10 peek];
    [v11 resume];
  }

LABEL_7:
}

uint64_t __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_8(uint64_t a1)
{
  result = [*(a1 + 32) isObserverReceiving];
  if (result)
  {
    [*(a1 + 32) setObserverReceiving:0];
    v3 = *(a1 + 40);

    return [v3 observerDidComplete];
  }

  return result;
}

void __66___CNFlatMapObservable_subscribeInnerObservable_observer_context___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) tokens];
  [v2 addObject:*(a1 + 40)];
}

@end