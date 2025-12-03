@interface HDCloudSyncCompoundOperation
- (BOOL)hasEncounteredSubOperationError;
- (HDCloudSyncCompoundOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncCompoundOperation)initWithConfiguration:(id)configuration cloudState:(id)state name:(id)name continueOnSubOperationError:(BOOL)error;
- (NSArray)operations;
- (id)_compoundError;
- (id)description;
- (id)operationsOfType:(Class)type;
- (void)_clearOperationAndRunRemaining:(uint64_t)remaining;
- (void)_invalidate;
- (void)_recordError:(uint64_t)error;
- (void)_runRemainingOperations;
- (void)addOperation:(id)operation transitionHandler:(id)handler;
- (void)addOperationOfClass:(Class)class transitionHandler:(id)handler;
- (void)main;
- (void)skip;
- (void)start;
@end

@implementation HDCloudSyncCompoundOperation

- (HDCloudSyncCompoundOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncCompoundOperation)initWithConfiguration:(id)configuration cloudState:(id)state name:(id)name continueOnSubOperationError:(BOOL)error
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = HDCloudSyncCompoundOperation;
  v11 = [(HDCloudSyncOperation *)&v17 initWithConfiguration:configuration cloudState:state];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    operations = v11->_operations;
    v11->_operations = v14;

    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_continueOnSubOperationError = error;
  }

  return v11;
}

- (void)start
{
  preparationHandler = [(HDCloudSyncCompoundOperation *)self preparationHandler];
  v4 = preparationHandler;
  if (preparationHandler)
  {
    (*(preparationHandler + 16))(preparationHandler, self);
  }

  v5.receiver = self;
  v5.super_class = HDCloudSyncCompoundOperation;
  [(HDCloudSyncOperation *)&v5 start];
}

- (void)_invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(self + 104);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          if (![v7 status])
          {
            [v7 skip];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    [*(self + 104) removeAllObjects];
    v8 = *(self + 120);
    *(self + 120) = 0;

    v9 = *(self + 128);
    *(self + 128) = 0;

    os_unfair_lock_unlock((self + 112));
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_operations count])
  {
    v3 = 100 * [(NSMutableArray *)self->_operations count];
    progress = [(HDCloudSyncOperation *)self progress];
    [progress setTotalUnitCount:v3];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_operations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          progress2 = [(HDCloudSyncOperation *)self progress];
          progress3 = [v10 progress];
          [progress2 addChild:progress3 withPendingUnitCount:100];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __36__HDCloudSyncCompoundOperation_main__block_invoke;
    v22[3] = &unk_278613088;
    v22[4] = self;
    lastObject = [(NSMutableArray *)self->_operations lastObject];
    [lastObject setOnError:v22];

    v14 = [(NSMutableArray *)self->_operations lastObject:MEMORY[0x277D85DD0]];
    [v14 setOnSuccess:&v21];

    cloudState = [(HDCloudSyncOperation *)self cloudState];
    firstObject = [(NSMutableArray *)self->_operations firstObject];
    [firstObject setCloudState:cloudState];

    v17 = [(NSMutableArray *)self->_operations copy];
    remainingOperations = self->_remainingOperations;
    self->_remainingOperations = v17;

    [(HDCloudSyncCompoundOperation *)self _runRemainingOperations];
    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v20 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncCompoundOperation *)self finishWithSuccess:1 error:0];
  }
}

void __36__HDCloudSyncCompoundOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [(HDCloudSyncCompoundOperation *)*(a1 + 32) _recordError:v6];
  v4 = *(a1 + 32);
  if (v4[152] == 1)
  {
    v5 = [(HDCloudSyncCompoundOperation *)v4 _compoundError];
    [v4 finishWithSuccess:0 error:v5];
  }

  else
  {
    [v4 finishWithSuccess:0 error:v6];
  }
}

- (void)_recordError:(uint64_t)error
{
  v3 = a2;
  if (error)
  {
    v7 = v3;
    os_unfair_lock_lock((error + 112));
    v4 = *(error + 144);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = *(error + 144);
      *(error + 144) = v5;

      v4 = *(error + 144);
    }

    [v4 addObject:v7];
    os_unfair_lock_unlock((error + 112));
    v3 = v7;
  }
}

- (id)_compoundError
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    v2 = [*(self + 144) count];
    v3 = *(self + 144);
    if (v2 == 1)
    {
      firstObject = [v3 firstObject];
    }

    else if ([v3 count] < 2)
    {
      firstObject = 0;
    }

    else
    {
      v5 = MEMORY[0x277CCA9B8];
      v6 = *MEMORY[0x277CCBDB0];
      v11 = @"HDCloudSyncCompoundOperationUnderlyingErrorsKey";
      v7 = [*(self + 144) copy];
      v12[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      firstObject = [v5 errorWithDomain:v6 code:711 userInfo:v8];
    }

    os_unfair_lock_unlock((self + 112));
  }

  else
  {
    firstObject = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

void __36__HDCloudSyncCompoundOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 cloudState];
  [*(a1 + 32) setCloudState:v3];

  v4 = [(HDCloudSyncCompoundOperation *)*(a1 + 32) _compoundError];
  v7 = v4;
  if (v4)
  {
    v5 = 0;
    v6 = v4;
  }

  else
  {
    v5 = 1;
    v6 = 0;
  }

  [*(a1 + 32) finishWithSuccess:v5 error:v6];
}

- (void)_runRemainingOperations
{
  if (self && (atomic_exchange((self + 136), 1u) & 1) == 0)
  {
    if ([self status] == 1)
    {
      v2 = 0;
      while (1)
      {
        os_unfair_lock_lock((self + 112));
        if (*(self + 120) || ![*(self + 128) count])
        {
          firstObject = 0;
        }

        else
        {
          firstObject = [*(self + 128) firstObject];
          objc_storeStrong((self + 120), firstObject);
          v4 = [*(self + 128) subarrayWithRange:{1, objc_msgSend(*(self + 128), "count") - 1}];
          v5 = *(self + 128);
          *(self + 128) = v4;
        }

        os_unfair_lock_unlock((self + 112));

        if (!firstObject)
        {
          break;
        }

        [firstObject start];
        v2 = firstObject;
        if ([self status] != 1)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      firstObject = 0;
LABEL_13:
    }

    atomic_store(0, (self + 136));
  }
}

- (void)skip
{
  v3.receiver = self;
  v3.super_class = HDCloudSyncCompoundOperation;
  [(HDCloudSyncOperation *)&v3 skip];
  [(HDCloudSyncCompoundOperation *)self _invalidate];
}

- (BOOL)hasEncounteredSubOperationError
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_operationErrors count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSArray)operations
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_operations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addOperationOfClass:(Class)class transitionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [class alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cloudState = [(HDCloudSyncOperation *)self cloudState];
  v10 = [v7 initWithConfiguration:configuration cloudState:cloudState];

  [(HDCloudSyncCompoundOperation *)self addOperation:v10 transitionHandler:handlerCopy];
}

- (void)_clearOperationAndRunRemaining:(uint64_t)remaining
{
  v3 = a2;
  os_unfair_lock_lock((remaining + 112));
  v4 = *(remaining + 120);

  if (v4 == v3)
  {
    *(remaining + 120) = 0;

    os_unfair_lock_unlock((remaining + 112));
  }

  else
  {
    os_unfair_lock_unlock((remaining + 112));
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__clearOperationAndRunRemaining_ object:remaining file:@"HDCloudSyncCompoundOperation.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"isCurrentOperation"}];
  }

  [(HDCloudSyncCompoundOperation *)remaining _runRemainingOperations];
}

- (void)addOperation:(id)operation transitionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  if ([(HDCloudSyncOperation *)self status])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncCompoundOperation.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  lastObject = [(NSMutableArray *)self->_operations lastObject];
  v10 = lastObject;
  if (!handlerCopy || lastObject)
  {
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__HDCloudSyncCompoundOperation_addOperation_transitionHandler___block_invoke;
    v20[3] = &unk_278627988;
    objc_copyWeak(&v23, &location);
    v12 = operationCopy;
    v21 = v12;
    v13 = handlerCopy;
    v22 = v13;
    [v10 setOnError:v20];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__HDCloudSyncCompoundOperation_addOperation_transitionHandler___block_invoke_2;
    v16[3] = &unk_2786279B0;
    objc_copyWeak(&v19, &location);
    v14 = v12;
    v17 = v14;
    v18 = v13;
    [v10 setOnSuccess:v16];
    [(NSMutableArray *)self->_operations addObject:v14];
    os_unfair_lock_unlock(&self->_lock);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncCompoundOperation.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"preceedingOperation != nil"}];
  }
}

void __63__HDCloudSyncCompoundOperation_addOperation_transitionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  v12 = v8;
  if (WeakRetained)
  {
    v13 = [WeakRetained cloudState];
    [v11 setCloudState:v13];

    if (v12 && (WeakRetained[152] & 1) != 0)
    {
      v12[2](v12, v9, v11);
    }

    [(HDCloudSyncCompoundOperation *)WeakRetained _recordError:v10];
    if (WeakRetained[152] == 1)
    {
      [(HDCloudSyncCompoundOperation *)WeakRetained _clearOperationAndRunRemaining:v9];
    }

    else
    {
      [WeakRetained finishWithSuccess:0 error:v10];
    }
  }
}

void __63__HDCloudSyncCompoundOperation_addOperation_transitionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  if (WeakRetained)
  {
    v9 = [v6 cloudState];
    [WeakRetained setCloudState:v9];

    v10 = [v6 cloudState];
    [v7 setCloudState:v10];

    if (v8)
    {
      v8[2](v8, v6, v7);
    }

    [(HDCloudSyncCompoundOperation *)WeakRetained _clearOperationAndRunRemaining:v6];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  operations = [(HDCloudSyncCompoundOperation *)self operations];
  v8 = [operations count];
  operations2 = [(HDCloudSyncCompoundOperation *)self operations];
  v10 = [operations2 hk_map:&__block_literal_global_183];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = [v3 stringWithFormat:@"<%@:%p %@ (%ld): %@>", v5, self, name, v8, v11];

  return v12;
}

NSString *__43__HDCloudSyncCompoundOperation_description__block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)operationsOfType:(Class)type
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_opt_isKindOfClass())
  {
    [v5 addObject:self];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  operations = [(HDCloudSyncCompoundOperation *)self operations];
  v7 = [operations countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(operations);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) operationsOfType:type];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [operations countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end