@interface _CNCombineLatestObservable
- (_CNCombineLatestObservable)initWithObservables:(id)a3;
- (_CNCombineLatestObservable)initWithObservables:(id)a3 resultScheduler:(id)a4 schedulerProvider:(id)a5;
- (id)subscribe:(id)a3;
- (void)observableAtIndex:(unint64_t)a3 didFailWithError:(id)a4 forObserver:(id)a5;
- (void)observableAtIndex:(unint64_t)a3 didReceiveResult:(id)a4 forObserver:(id)a5;
- (void)observableAtIndexDidComplete:(unint64_t)a3 forObserver:(id)a4;
- (void)performWithResourceLock:(id)a3;
@end

@implementation _CNCombineLatestObservable

- (_CNCombineLatestObservable)initWithObservables:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [(_CNCombineLatestObservable *)self initWithObservables:v4 resultScheduler:0 schedulerProvider:v5];

  return v6;
}

- (_CNCombineLatestObservable)initWithObservables:(id)a3 resultScheduler:(id)a4 schedulerProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = _CNCombineLatestObservable;
  v11 = [(_CNCombineLatestObservable *)&v28 init];
  if (v11)
  {
    v12 = [v8 _cn_map:&__block_literal_global_47];
    v13 = [v12 copy];
    observables = v11->_observables;
    v11->_observables = v13;

    v15 = [v8 _cn_map:&__block_literal_global_5_0];
    v16 = [v15 mutableCopy];
    results = v11->_results;
    v11->_results = v16;

    v18 = [v8 _cn_map:&__block_literal_global_8_1];
    v19 = [v18 mutableCopy];
    tokens = v11->_tokens;
    v11->_tokens = v19;

    v21 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
    silentObservableIndexes = v11->_silentObservableIndexes;
    v11->_silentObservableIndexes = v21;

    v23 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
    activeObservableIndexes = v11->_activeObservableIndexes;
    v11->_activeObservableIndexes = v23;

    v25 = v9;
    if (!v9)
    {
      v25 = [v10 newSerialSchedulerWithName:@"com.apple.contacts.reactive.combine-latest.results"];
    }

    objc_storeStrong(&v11->_resultScheduler, v25);
    if (!v9)
    {
    }

    v26 = v11;
  }

  return v11;
}

- (void)performWithResourceLock:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5[2]();
  objc_sync_exit(v4);
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_CNCombineLatestObservableCancelationToken);
  objc_initWeak(&location, self);
  v6 = [(_CNCombineLatestObservable *)self observables];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40___CNCombineLatestObservable_subscribe___block_invoke;
  v12[3] = &unk_1E6ED7368;
  objc_copyWeak(&v16, &location);
  v7 = v4;
  v13 = v7;
  v14 = self;
  v8 = v5;
  v15 = v8;
  [v6 enumerateObjectsUsingBlock:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40___CNCombineLatestObservable_subscribe___block_invoke_6;
  v11[3] = &unk_1E6ED5830;
  v11[4] = self;
  [(CNCancelationToken *)v8 addCancelationBlock:v11];
  v9 = v8;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v9;
}

- (void)observableAtIndex:(unint64_t)a3 didReceiveResult:(id)a4 forObserver:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77___CNCombineLatestObservable_observableAtIndex_didReceiveResult_forObserver___block_invoke;
  v12[3] = &unk_1E6ED6910;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  [(_CNCombineLatestObservable *)self performWithResourceLock:v12];
}

- (void)observableAtIndexDidComplete:(unint64_t)a3 forObserver:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71___CNCombineLatestObservable_observableAtIndexDidComplete_forObserver___block_invoke;
  v8[3] = &unk_1E6ED7340;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(_CNCombineLatestObservable *)self performWithResourceLock:v8];
}

- (void)observableAtIndex:(unint64_t)a3 didFailWithError:(id)a4 forObserver:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77___CNCombineLatestObservable_observableAtIndex_didFailWithError_forObserver___block_invoke;
  v12[3] = &unk_1E6ED6910;
  v12[4] = self;
  v13 = v9;
  v14 = v8;
  v15 = a3;
  v10 = v8;
  v11 = v9;
  [(_CNCombineLatestObservable *)self performWithResourceLock:v12];
}

@end