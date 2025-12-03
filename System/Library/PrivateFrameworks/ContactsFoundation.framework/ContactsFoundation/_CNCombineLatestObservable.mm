@interface _CNCombineLatestObservable
- (_CNCombineLatestObservable)initWithObservables:(id)observables;
- (_CNCombineLatestObservable)initWithObservables:(id)observables resultScheduler:(id)scheduler schedulerProvider:(id)provider;
- (id)subscribe:(id)subscribe;
- (void)observableAtIndex:(unint64_t)index didFailWithError:(id)error forObserver:(id)observer;
- (void)observableAtIndex:(unint64_t)index didReceiveResult:(id)result forObserver:(id)observer;
- (void)observableAtIndexDidComplete:(unint64_t)complete forObserver:(id)observer;
- (void)performWithResourceLock:(id)lock;
@end

@implementation _CNCombineLatestObservable

- (_CNCombineLatestObservable)initWithObservables:(id)observables
{
  observablesCopy = observables;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [(_CNCombineLatestObservable *)self initWithObservables:observablesCopy resultScheduler:0 schedulerProvider:v5];

  return v6;
}

- (_CNCombineLatestObservable)initWithObservables:(id)observables resultScheduler:(id)scheduler schedulerProvider:(id)provider
{
  observablesCopy = observables;
  schedulerCopy = scheduler;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = _CNCombineLatestObservable;
  v11 = [(_CNCombineLatestObservable *)&v28 init];
  if (v11)
  {
    v12 = [observablesCopy _cn_map:&__block_literal_global_47];
    v13 = [v12 copy];
    observables = v11->_observables;
    v11->_observables = v13;

    v15 = [observablesCopy _cn_map:&__block_literal_global_5_0];
    v16 = [v15 mutableCopy];
    results = v11->_results;
    v11->_results = v16;

    v18 = [observablesCopy _cn_map:&__block_literal_global_8_1];
    v19 = [v18 mutableCopy];
    tokens = v11->_tokens;
    v11->_tokens = v19;

    v21 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(observablesCopy, "count")}];
    silentObservableIndexes = v11->_silentObservableIndexes;
    v11->_silentObservableIndexes = v21;

    v23 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(observablesCopy, "count")}];
    activeObservableIndexes = v11->_activeObservableIndexes;
    v11->_activeObservableIndexes = v23;

    v25 = schedulerCopy;
    if (!schedulerCopy)
    {
      v25 = [providerCopy newSerialSchedulerWithName:@"com.apple.contacts.reactive.combine-latest.results"];
    }

    objc_storeStrong(&v11->_resultScheduler, v25);
    if (!schedulerCopy)
    {
    }

    v26 = v11;
  }

  return v11;
}

- (void)performWithResourceLock:(id)lock
{
  lockCopy = lock;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lockCopy[2]();
  objc_sync_exit(selfCopy);
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = objc_alloc_init(_CNCombineLatestObservableCancelationToken);
  objc_initWeak(&location, self);
  observables = [(_CNCombineLatestObservable *)self observables];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40___CNCombineLatestObservable_subscribe___block_invoke;
  v12[3] = &unk_1E6ED7368;
  objc_copyWeak(&v16, &location);
  v7 = subscribeCopy;
  v13 = v7;
  selfCopy = self;
  v8 = v5;
  v15 = v8;
  [observables enumerateObjectsUsingBlock:v12];

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

- (void)observableAtIndex:(unint64_t)index didReceiveResult:(id)result forObserver:(id)observer
{
  resultCopy = result;
  observerCopy = observer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77___CNCombineLatestObservable_observableAtIndex_didReceiveResult_forObserver___block_invoke;
  v12[3] = &unk_1E6ED6910;
  v12[4] = self;
  v13 = resultCopy;
  v14 = observerCopy;
  indexCopy = index;
  v10 = observerCopy;
  v11 = resultCopy;
  [(_CNCombineLatestObservable *)self performWithResourceLock:v12];
}

- (void)observableAtIndexDidComplete:(unint64_t)complete forObserver:(id)observer
{
  observerCopy = observer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71___CNCombineLatestObservable_observableAtIndexDidComplete_forObserver___block_invoke;
  v8[3] = &unk_1E6ED7340;
  v9 = observerCopy;
  completeCopy = complete;
  v8[4] = self;
  v7 = observerCopy;
  [(_CNCombineLatestObservable *)self performWithResourceLock:v8];
}

- (void)observableAtIndex:(unint64_t)index didFailWithError:(id)error forObserver:(id)observer
{
  errorCopy = error;
  observerCopy = observer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77___CNCombineLatestObservable_observableAtIndex_didFailWithError_forObserver___block_invoke;
  v12[3] = &unk_1E6ED6910;
  v12[4] = self;
  v13 = observerCopy;
  v14 = errorCopy;
  indexCopy = index;
  v10 = errorCopy;
  v11 = observerCopy;
  [(_CNCombineLatestObservable *)self performWithResourceLock:v12];
}

@end