@interface CNPublishingSubject
- (CNPublishingSubject)initWithObservable:(id)a3;
- (id)_allObservers;
- (id)subscribe:(id)a3;
- (void)_addObserver:(id)a3;
- (void)_removeObserver:(id)a3;
- (void)_subscribeToObservableIfNecessary;
- (void)cleanUpAfterTermination;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation CNPublishingSubject

- (CNPublishingSubject)initWithObservable:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNPublishingSubject;
  v6 = [(CNPublishingSubject *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observable, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v7->_observers;
    v7->_observers = v8;

    v10 = objc_alloc_init(CNObservableContractEnforcement);
    enforcement = v7->_enforcement;
    v7->_enforcement = v10;

    v12 = v7;
  }

  return v7;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  [(CNPublishingSubject *)self _addObserver:v4];
  [(CNPublishingSubject *)self _subscribeToObservableIfNecessary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__CNPublishingSubject_subscribe___block_invoke;
  v8[3] = &unk_1E6ED5168;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [CNCancelationToken tokenWithCancelationBlock:v8];

  return v6;
}

- (void)_addObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)_removeObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (id)_allObservers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:v2->_observers];
  objc_sync_exit(v2);

  return v3;
}

- (void)_subscribeToObservableIfNecessary
{
  v2 = self;
  objc_sync_enter(v2);
  upstreamToken = v2->_upstreamToken;
  objc_sync_exit(v2);

  if (!upstreamToken)
  {
    v4 = [(CNObservable *)v2->_observable subscribe:v2];
    v5 = v2->_upstreamToken;
    v2->_upstreamToken = v4;

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

- (void)observerDidReceiveResult:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
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

  v8 = [(CNPublishingSubject *)self enforcement];
  [v8 observerDidReceiveResult:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(CNPublishingSubject *)self _allObservers];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) observerDidReceiveResult:v4];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)observerDidComplete
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CNPublishingSubject *)self enforcement];
  [v3 observerDidComplete];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(CNPublishingSubject *)self _allObservers];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(CNPublishingSubject *)self cleanUpAfterTermination];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFailWithError:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNPublishingSubject *)self enforcement];
  [v5 observerDidFailWithError:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CNPublishingSubject *)self _allObservers];
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

        [*(*(&v12 + 1) + 8 * v10++) observerDidFailWithError:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(CNPublishingSubject *)self cleanUpAfterTermination];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpAfterTermination
{
  [(CNCancelable *)self->_upstreamToken cancel];
  upstreamToken = self->_upstreamToken;
  self->_upstreamToken = 0;
}

@end