@interface CNBehaviorSubject
- (CNBehaviorSubject)initWithSeed:(id)seed schedulerProvider:(id)provider;
- (id)_addObserver:(id)observer;
- (id)resultWithResourceLock:(id)lock;
- (id)subscribe:(id)subscribe;
- (void)_removeObserver:(id)observer;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
- (void)performWithResourceLock:(id)lock;
@end

@implementation CNBehaviorSubject

- (CNBehaviorSubject)initWithSeed:(id)seed schedulerProvider:(id)provider
{
  seedCopy = seed;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = CNBehaviorSubject;
  v8 = [(CNBehaviorSubject *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [CNObservableEvent eventWithResult:seedCopy];
    mostRecentEvent = v8->_mostRecentEvent;
    v8->_mostRecentEvent = v11;

    objc_storeStrong(&v8->_schedulerProvider, provider);
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

- (id)resultWithResourceLock:(id)lock
{
  lockCopy = lock;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CNBehaviorSubject_resultWithResourceLock___block_invoke;
  v8[3] = &unk_1E6ED5140;
  v10 = &v11;
  v5 = lockCopy;
  v9 = v5;
  [(CNBehaviorSubject *)self performWithResourceLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __44__CNBehaviorSubject_resultWithResourceLock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)performWithResourceLock:(id)lock
{
  lockCopy = lock;
  resourceLock = [(CNBehaviorSubject *)self resourceLock];
  CNRunWithLock(resourceLock, lockCopy);
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [(CNBehaviorSubject *)self _addObserver:subscribeCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__CNBehaviorSubject_subscribe___block_invoke;
  v9[3] = &unk_1E6ED5168;
  v9[4] = self;
  v10 = subscribeCopy;
  v6 = subscribeCopy;
  v7 = [CNCancelationToken tokenWithCancelationBlock:v9];

  return v7;
}

- (id)_addObserver:(id)observer
{
  observerCopy = observer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__CNBehaviorSubject__addObserver___block_invoke;
  v8[3] = &unk_1E6ED5190;
  v9 = observerCopy;
  selfCopy = self;
  v5 = observerCopy;
  v6 = [(CNBehaviorSubject *)self resultWithResourceLock:v8];

  return v6;
}

id __34__CNBehaviorSubject__addObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) schedulerProvider];
  v4 = [_CNBufferedObserver bufferObserver:v2 schedulerProvider:v3];

  v5 = [*(a1 + 40) mostRecentEvent];
  [v5 dematerializeWithObserver:v4];

  [v4 resume];
  v6 = [*(a1 + 40) observers];
  [v6 addObject:v4];

  return v4;
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CNBehaviorSubject__removeObserver___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(CNBehaviorSubject *)self performWithResourceLock:v6];
}

void __37__CNBehaviorSubject__removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)observerDidReceiveResult:(id)result
{
  v23 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = +[CNObservableContractEnforcement shouldSwizzleNilResults];
  if (!resultCopy && v5)
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

    resultCopy = [MEMORY[0x1E695DFB0] null];
  }

  enforcement = [(CNBehaviorSubject *)self enforcement];
  [enforcement observerDidReceiveResult:resultCopy];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__CNBehaviorSubject_observerDidReceiveResult___block_invoke;
  v20[3] = &unk_1E6ED5190;
  v20[4] = self;
  v9 = resultCopy;
  v21 = v9;
  v10 = [(CNBehaviorSubject *)self resultWithResourceLock:v20];
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

id __46__CNBehaviorSubject_observerDidReceiveResult___block_invoke(uint64_t a1)
{
  v2 = [CNObservableEvent eventWithResult:*(a1 + 40)];
  [*(a1 + 32) setMostRecentEvent:v2];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 copy];

  return v4;
}

- (void)observerDidComplete
{
  v16 = *MEMORY[0x1E69E9840];
  enforcement = [(CNBehaviorSubject *)self enforcement];
  [enforcement observerDidComplete];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__CNBehaviorSubject_observerDidComplete__block_invoke;
  v14[3] = &unk_1E6ED51B8;
  v14[4] = self;
  v4 = [(CNBehaviorSubject *)self resultWithResourceLock:v14];
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

id __40__CNBehaviorSubject_observerDidComplete__block_invoke(uint64_t a1)
{
  v2 = +[CNObservableEvent completionEvent];
  [*(a1 + 32) setMostRecentEvent:v2];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 copy];

  return v4;
}

- (void)observerDidFailWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  enforcement = [(CNBehaviorSubject *)self enforcement];
  [enforcement observerDidFailWithError:errorCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__CNBehaviorSubject_observerDidFailWithError___block_invoke;
  v17[3] = &unk_1E6ED5190;
  v17[4] = self;
  v6 = errorCopy;
  v18 = v6;
  v7 = [(CNBehaviorSubject *)self resultWithResourceLock:v17];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
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
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __46__CNBehaviorSubject_observerDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = [CNObservableEvent failureEventWithError:*(a1 + 40)];
  [*(a1 + 32) setMostRecentEvent:v2];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 copy];

  return v4;
}

- (void)observerDidReceiveResult:(NSObject *)a1 .cold.2(NSObject *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1859F0000, a1, OS_LOG_TYPE_ERROR, "Call stack: %{public}@", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

@end