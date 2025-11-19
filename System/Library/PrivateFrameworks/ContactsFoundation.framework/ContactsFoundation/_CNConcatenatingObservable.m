@interface _CNConcatenatingObservable
+ (void)subscribeObserver:(id)a3 toObservables:(id)a4 unless:(id)a5;
@end

@implementation _CNConcatenatingObservable

+ (void)subscribeObserver:(id)a3 toObservables:(id)a4 unless:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 firstObject];
  if (v11)
  {
    objc_initWeak(location, v10);
    v12 = [v9 _cn_tail];
    v13 = objc_opt_class();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke;
    v29[3] = &unk_1E6ED8170;
    objc_copyWeak(&v31, location);
    v14 = v8;
    v30 = v14;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_2;
    v25[3] = &unk_1E6ED8198;
    objc_copyWeak(v28, location);
    v28[1] = a1;
    v15 = v14;
    v26 = v15;
    v16 = v12;
    v27 = v16;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __69___CNConcatenatingObservable_subscribeObserver_toObservables_unless___block_invoke_3;
    v22 = &unk_1E6ED7D50;
    objc_copyWeak(&v24, location);
    v23 = v15;
    v17 = [CNObserver blockObserverOfClass:v13 withResultBlock:v29 completionBlock:v25 failureBlock:&v19];
    v18 = [v11 subscribe:{v17, v19, v20, v21, v22}];

    [v10 addCancelable:v18];
    objc_destroyWeak(&v24);

    objc_destroyWeak(v28);
    objc_destroyWeak(&v31);

    objc_destroyWeak(location);
  }

  else if (([v10 isCanceled] & 1) == 0)
  {
    [v8 observerDidComplete];
  }
}

@end