@interface CNForkJoinObservable
@end

@implementation CNForkJoinObservable

void __35___CNForkJoinObservable_subscribe___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __35___CNForkJoinObservable_subscribe___block_invoke_2;
  v19[3] = &unk_1E6ED8748;
  v20 = a1[4];
  v22 = a3;
  v21 = a1[5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35___CNForkJoinObservable_subscribe___block_invoke_3;
  v15[3] = &unk_1E6ED7340;
  v16 = a1[4];
  v18 = a3;
  v17 = a1[5];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __35___CNForkJoinObservable_subscribe___block_invoke_4;
  v12 = &unk_1E6ED59E0;
  v13 = a1[6];
  v14 = a1[5];
  v7 = [CNObserver blockObserverOfClass:v6 withResultBlock:v19 completionBlock:v15 failureBlock:&v9];
  v8 = [v5 subscribe:{v7, v9, v10, v11, v12}];

  [a1[6] addCancelable:v8];
}

void __35___CNForkJoinObservable_subscribe___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancel];
  [*(a1 + 40) observerDidFailWithError:v4];
}

@end