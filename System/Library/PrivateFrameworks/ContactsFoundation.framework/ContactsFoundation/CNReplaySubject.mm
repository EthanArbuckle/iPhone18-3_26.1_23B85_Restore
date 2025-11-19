@interface CNReplaySubject
- (CNReplaySubject)init;
- (CNReplaySubject)initWithCapacity:(unint64_t)a3 schedulerProvider:(id)a4;
- (CNReplaySubject)initWithQueue:(id)a3 schedulerProvider:(id)a4;
- (CNReplaySubject)initWithSchedulerProvider:(id)a3;
- (id)resourceLock_removeAllObservers;
- (id)resourceLock_upToDateObserverFromObserver:(id)a3;
- (id)resultWithResourceLock:(id)a3;
- (id)subscribe:(id)a3;
- (void)_removeObserver:(id)a3;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
- (void)performWithResourceLock:(id)a3;
- (void)resourceLock_scheduleReplayToObserver:(id)a3;
- (void)resourceLock_swapBufferingStrategiesGivenNewTerminatingEvent:(id)a3;
@end

@implementation CNReplaySubject

- (CNReplaySubject)init
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(CNReplaySubject *)self initWithSchedulerProvider:v3];

  return v4;
}

- (CNReplaySubject)initWithSchedulerProvider:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNQueue);
  v6 = [(CNReplaySubject *)self initWithQueue:v5 schedulerProvider:v4];

  return v6;
}

- (CNReplaySubject)initWithCapacity:(unint64_t)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = [CNQueue boundedQueueWithCapacity:a3];
  v8 = [(CNReplaySubject *)self initWithQueue:v7 schedulerProvider:v6];

  return v8;
}

- (CNReplaySubject)initWithQueue:(id)a3 schedulerProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = CNReplaySubject;
  v8 = [(CNReplaySubject *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [_CNObservableEventBufferingStrategy strategyWithQueue:v6];
    recentEventStrategy = v8->_recentEventStrategy;
    v8->_recentEventStrategy = v11;

    objc_storeStrong(&v8->_schedulerProvider, a4);
    v13 = objc_alloc_init(CNUnfairLock);
    resourceLock = v8->_resourceLock;
    v8->_resourceLock = v13;

    v15 = objc_alloc_init(CNObservableContractEnforcement);
    enforcement = v8->_enforcement;
    v8->_enforcement = v15;

    v17 = v8;
  }

  return v8;
}

- (id)resultWithResourceLock:(id)a3
{
  v4 = a3;
  v5 = [(CNReplaySubject *)self resourceLock];
  v6 = CNResultWithLock(v5, v4);

  return v6;
}

- (void)performWithResourceLock:(id)a3
{
  v4 = a3;
  v5 = [(CNReplaySubject *)self resourceLock];
  CNRunWithLock(v5, v4);
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__CNReplaySubject_subscribe___block_invoke;
  v8[3] = &unk_1E6ED5190;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(CNReplaySubject *)self resultWithResourceLock:v8];

  return v6;
}

CNCancelationToken *__29__CNReplaySubject_subscribe___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceLock_upToDateObserverFromObserver:*(a1 + 40)];
  v3 = [*(a1 + 32) recentEventStrategy];
  v4 = [v3 isSequenceTerminated];

  if (v4)
  {
    v5 = objc_alloc_init(CNCancelationToken);
  }

  else
  {
    v6 = [*(a1 + 32) observers];
    [v6 addObject:v2];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__CNReplaySubject_subscribe___block_invoke_2;
    v8[3] = &unk_1E6ED5168;
    v8[4] = *(a1 + 32);
    v9 = v2;
    v5 = [CNCancelationToken tokenWithCancelationBlock:v8];
  }

  return v5;
}

- (id)resourceLock_upToDateObserverFromObserver:(id)a3
{
  v4 = a3;
  v5 = [(CNReplaySubject *)self schedulerProvider];
  v6 = [_CNBufferedObserver bufferObserver:v4 schedulerProvider:v5];

  [(CNReplaySubject *)self resourceLock_scheduleReplayToObserver:v6];
  [v6 resume];

  return v6;
}

- (void)resourceLock_scheduleReplayToObserver:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CNReplaySubject *)self recentEventStrategy];
  v6 = [v5 allEvents];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) dematerializeWithObserver:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CNReplaySubject__removeObserver___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CNReplaySubject *)self performWithResourceLock:v6];
}

void __35__CNReplaySubject__removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (id)resourceLock_removeAllObservers
{
  v3 = [(CNReplaySubject *)self observers];
  v4 = [v3 copy];

  v5 = [(CNReplaySubject *)self observers];
  [v5 removeAllObjects];

  return v4;
}

- (void)observerDidReceiveResult:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CNObservableContractEnforcement shouldSwizzleNilResults];
  if (!v4 && v5)
  {
    v6 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v6];
    }

    v7 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v7];
    }

    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = [(CNReplaySubject *)self enforcement];
  [v8 observerDidReceiveResult:v4];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __44__CNReplaySubject_observerDidReceiveResult___block_invoke;
  v20[3] = &unk_1E6ED5190;
  v20[4] = self;
  v9 = v4;
  v21 = v9;
  v10 = [(CNReplaySubject *)self resultWithResourceLock:v20];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) observerDidReceiveResult:v9];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

id __44__CNReplaySubject_observerDidReceiveResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentEventStrategy];
  v3 = [CNObservableEvent eventWithResult:*(a1 + 40)];
  [v2 addEvent:v3];

  v4 = [*(a1 + 32) observers];
  v5 = [v4 copy];

  return v5;
}

- (void)observerDidComplete
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CNReplaySubject *)self enforcement];
  [v3 observerDidComplete];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__CNReplaySubject_observerDidComplete__block_invoke;
  v14[3] = &unk_1E6ED51B8;
  v14[4] = self;
  v4 = [(CNReplaySubject *)self resultWithResourceLock:v14];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) observerDidComplete];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

id __38__CNReplaySubject_observerDidComplete__block_invoke(uint64_t a1)
{
  v2 = +[CNObservableEvent completionEvent];
  v3 = [*(a1 + 32) resourceLock_removeAllObservers];
  [*(a1 + 32) resourceLock_swapBufferingStrategiesGivenNewTerminatingEvent:v2];

  return v3;
}

- (void)observerDidFailWithError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNReplaySubject *)self enforcement];
  [v5 observerDidFailWithError:v4];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__CNReplaySubject_observerDidFailWithError___block_invoke;
  v17[3] = &unk_1E6ED5190;
  v6 = v4;
  v18 = v6;
  v19 = self;
  v7 = [(CNReplaySubject *)self resultWithResourceLock:v17];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) observerDidFailWithError:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __44__CNReplaySubject_observerDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = [CNObservableEvent failureEventWithError:*(a1 + 32)];
  v3 = [*(a1 + 40) resourceLock_removeAllObservers];
  [*(a1 + 40) resourceLock_swapBufferingStrategiesGivenNewTerminatingEvent:v2];

  return v3;
}

- (void)resourceLock_swapBufferingStrategiesGivenNewTerminatingEvent:(id)a3
{
  v4 = a3;
  v5 = [(CNReplaySubject *)self recentEventStrategy];
  v6 = [v5 allEvents];

  v8 = [v6 arrayByAddingObject:v4];

  v7 = [_CNObservableEventBufferingStrategy strategyWithEvents:v8];
  [(CNReplaySubject *)self setRecentEventStrategy:v7];
}

@end