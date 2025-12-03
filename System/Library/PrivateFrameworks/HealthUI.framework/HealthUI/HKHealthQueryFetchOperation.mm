@interface HKHealthQueryFetchOperation
- (HKHealthQueryFetchOperation)initWithHealthStore:(id)store operationDescription:(id)description completion:(id)completion;
- (void)completedWithResults:(id)results error:(id)error;
- (void)startOperationWithCompletion:(id)completion;
- (void)stopOperation;
@end

@implementation HKHealthQueryFetchOperation

- (HKHealthQueryFetchOperation)initWithHealthStore:(id)store operationDescription:(id)description completion:(id)completion
{
  storeCopy = store;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = HKHealthQueryFetchOperation;
  v11 = [(HKFetchOperation *)&v17 initWithOperationDescription:description];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_healthStore, store);
    v13 = _Block_copy(completionCopy);
    lockedClientCompletion = v12->_lockedClientCompletion;
    v12->_lockedClientCompletion = v13;

    lockedFetchOperationManager = v12->_lockedFetchOperationManager;
    v12->_lockedFetchOperationManager = 0;

    v12->_callbackLock._os_unfair_lock_opaque = 0;
  }

  return v12;
}

- (void)startOperationWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_callbackLock);
  v5 = _Block_copy(completionCopy);
  lockedFetchOperationManager = self->_lockedFetchOperationManager;
  self->_lockedFetchOperationManager = v5;

  os_unfair_lock_unlock(&self->_callbackLock);
  if ([(NSArray *)self->_queries count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_queries;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(HKHealthStore *)self->_healthStore executeQuery:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [(HKHealthQueryFetchOperation *)self completedWithResults:MEMORY[0x1E695E0F0] error:0];
  }
}

- (void)stopOperation
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_queries;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(HKHealthStore *)self->_healthStore stopQuery:*(*(&v10 + 1) + 8 * v7++), v10];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_lock(&self->_callbackLock);
  lockedClientCompletion = self->_lockedClientCompletion;
  self->_lockedClientCompletion = 0;

  lockedFetchOperationManager = self->_lockedFetchOperationManager;
  self->_lockedFetchOperationManager = 0;

  os_unfair_lock_unlock(&self->_callbackLock);
}

- (void)completedWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  os_unfair_lock_lock(&self->_callbackLock);
  lockedClientCompletion = self->_lockedClientCompletion;
  if (lockedClientCompletion)
  {
    lockedClientCompletion[2](lockedClientCompletion, self, resultsCopy, errorCopy);
    v8 = self->_lockedClientCompletion;
    self->_lockedClientCompletion = 0;
  }

  lockedFetchOperationManager = self->_lockedFetchOperationManager;
  if (lockedFetchOperationManager)
  {
    lockedFetchOperationManager[2](lockedFetchOperationManager, errorCopy == 0, errorCopy);
    v10 = self->_lockedFetchOperationManager;
    self->_lockedFetchOperationManager = 0;
  }

  os_unfair_lock_unlock(&self->_callbackLock);
}

@end