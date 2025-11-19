@interface _EFMergingObservable
+ (void)subscribeObserver:(id)a3 toObservables:(id)a4 unless:(id)a5;
@end

@implementation _EFMergingObservable

+ (void)subscribeObserver:(id)a3 toObservables:(id)a4 unless:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v22 = a4;
  v23 = a5;
  v7 = objc_alloc_init(EFManualCancelationToken);
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v22;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = *v40;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = +[EFPromise promise];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke;
        v37[3] = &unk_1E8248648;
        v38 = v25;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_2;
        v35[3] = &unk_1E8248580;
        v36 = v12;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_3;
        v33[3] = &unk_1E82485A8;
        v13 = v36;
        v34 = v13;
        v14 = [EFObserver observerWithResultBlock:v37 completionBlock:v35 failureBlock:v33];
        v15 = [v11 subscribe:v14];

        [v26 addObject:v13];
        [(EFManualCancelationToken *)v7 addCancelable:v13];
        [(EFManualCancelationToken *)v7 addCancelable:v15];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v8);
  }

  v16 = [EFFuture join:v26];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_4;
  v30[3] = &unk_1E82484E0;
  v17 = v7;
  v31 = v17;
  v18 = v25;
  v32 = v18;
  [v16 addSuccessBlock:v30];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_5;
  v27[3] = &unk_1E8248530;
  v19 = v17;
  v28 = v19;
  v20 = v18;
  v29 = v20;
  [v16 addFailureBlock:v27];
  [v23 addCancelable:v19];

  v21 = *MEMORY[0x1E69E9840];
}

@end