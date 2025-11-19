@interface _EFConcatenatingObservable
+ (void)subscribeObserver:(id)a3 toObservables:(id)a4 unless:(id)a5;
@end

@implementation _EFConcatenatingObservable

+ (void)subscribeObserver:(id)a3 toObservables:(id)a4 unless:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 firstObject];
  if (v11)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __69___EFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke;
    v26[3] = &unk_1E82484E0;
    v27 = v10;
    v28 = v8;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69___EFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_2;
    v21[3] = &unk_1E8248508;
    v22 = v27;
    v25 = a1;
    v23 = v28;
    v24 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __69___EFConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_3;
    v18 = &unk_1E8248530;
    v12 = v22;
    v19 = v12;
    v20 = v23;
    v13 = [EFObserver observerWithResultBlock:v26 completionBlock:v21 failureBlock:&v15];
    v14 = [v11 subscribe:{v13, v15, v16, v17, v18}];
    [v12 addCancelable:v14];
  }

  else if (([v10 isCanceled] & 1) == 0)
  {
    [v8 observerDidComplete];
  }
}

@end