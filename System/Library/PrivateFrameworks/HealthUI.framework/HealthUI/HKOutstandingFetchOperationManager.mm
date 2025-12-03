@interface HKOutstandingFetchOperationManager
+ (id)sharedOperationManager;
- (BOOL)_noHighPriorityActiveOperations;
- (BOOL)_removeFetchOperationFromActiveOperations:(id)operations;
- (BOOL)_removeFetchOperationFromPendingOperations:(id)operations;
- (HKOutstandingFetchOperationManager)initWithMaxConcurrentFetchOperations:(int64_t)operations;
- (void)_executeFetchOperation:(id)operation;
- (void)_fillActiveFetchOperations;
- (void)_logOperationCompletion:(id)completion;
- (void)_logOperationStart:(id)start;
- (void)_rebalanceFetchOperations;
- (void)_setNeedsRebalanceFetchOperations;
- (void)addFetchOperation:(id)operation;
- (void)addFetchOperations:(id)operations;
- (void)fetchOperationDidUpdatePriority:(id)priority;
- (void)removeFetchOperation:(id)operation;
- (void)removeFetchOperations:(id)operations;
- (void)setMaxConcurrentFetchOperations:(int64_t)operations;
@end

@implementation HKOutstandingFetchOperationManager

+ (id)sharedOperationManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKOutstandingFetchOperationManager_sharedOperationManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedOperationManager_onceToken != -1)
  {
    dispatch_once(&sharedOperationManager_onceToken, block);
  }

  v2 = _outstandingFetchOperationManager;

  return v2;
}

void __60__HKOutstandingFetchOperationManager_sharedOperationManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[HKOutstandingFetchOperationManager alloc] initWithMaxConcurrentFetchOperations:5];
  [v1 setSharedOperationManager:v2];
}

- (HKOutstandingFetchOperationManager)initWithMaxConcurrentFetchOperations:(int64_t)operations
{
  v13.receiver = self;
  v13.super_class = HKOutstandingFetchOperationManager;
  v4 = [(HKOutstandingFetchOperationManager *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxConcurrentFetchOperations = operations;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingNormalPriorityFetchOperations = v5->_pendingNormalPriorityFetchOperations;
    v5->_pendingNormalPriorityFetchOperations = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingHighPriorityFetchOperations = v5->_pendingHighPriorityFetchOperations;
    v5->_pendingHighPriorityFetchOperations = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeFetchOperations = v5->_activeFetchOperations;
    v5->_activeFetchOperations = v10;
  }

  return v5;
}

- (void)setMaxConcurrentFetchOperations:(int64_t)operations
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  self->_maxConcurrentFetchOperations = operations;

  [(HKOutstandingFetchOperationManager *)self _setNeedsRebalanceFetchOperations];
}

- (void)addFetchOperations:(id)operations
{
  v14 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [operationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(operationsCopy);
        }

        [(HKOutstandingFetchOperationManager *)self addFetchOperation:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [operationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addFetchOperation:(id)operation
{
  operationCopy = operation;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _delegate = [operationCopy _delegate];

  if (_delegate != self)
  {
    _delegate2 = [operationCopy _delegate];

    if (_delegate2)
    {
      [(HKOutstandingFetchOperationManager *)a2 addFetchOperation:?];
    }

    [operationCopy _setDelegate:self];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [operationCopy setQueueTime:?];
    highPriority = [operationCopy highPriority];
    v8 = 16;
    if (highPriority)
    {
      v8 = 24;
    }

    [*(&self->super.isa + v8) addObject:operationCopy];
    [(HKOutstandingFetchOperationManager *)self _setNeedsRebalanceFetchOperations];
  }
}

- (void)removeFetchOperations:(id)operations
{
  v14 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [operationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(operationsCopy);
        }

        [(HKOutstandingFetchOperationManager *)self removeFetchOperation:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [operationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeFetchOperation:(id)operation
{
  operationCopy = operation;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(HKOutstandingFetchOperationManager *)self _removeFetchOperationFromPendingOperations:operationCopy]|| [(HKOutstandingFetchOperationManager *)self _removeFetchOperationFromActiveOperations:operationCopy])
  {
    [(HKOutstandingFetchOperationManager *)self _setNeedsRebalanceFetchOperations];
  }
}

- (BOOL)_removeFetchOperationFromPendingOperations:(id)operations
{
  operationsCopy = operations;
  p_pendingNormalPriorityFetchOperations = &self->_pendingNormalPriorityFetchOperations;
  v6 = [(NSMutableArray *)self->_pendingNormalPriorityFetchOperations indexOfObject:operationsCopy];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v6;
LABEL_6:
    v12 = [(NSMutableArray *)*p_pendingNormalPriorityFetchOperations objectAtIndexedSubscript:v11];
    [v12 _setDelegate:0];
    [(NSMutableArray *)*p_pendingNormalPriorityFetchOperations removeObjectAtIndex:v11];

    v10 = 1;
    goto LABEL_7;
  }

  pendingHighPriorityFetchOperations = self->_pendingHighPriorityFetchOperations;
  p_pendingHighPriorityFetchOperations = &self->_pendingHighPriorityFetchOperations;
  v9 = [(NSMutableArray *)pendingHighPriorityFetchOperations indexOfObject:operationsCopy];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9;
    p_pendingNormalPriorityFetchOperations = p_pendingHighPriorityFetchOperations;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)_removeFetchOperationFromActiveOperations:(id)operations
{
  v4 = [(NSMutableArray *)self->_activeFetchOperations indexOfObject:operations];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSMutableArray *)self->_activeFetchOperations objectAtIndexedSubscript:v4];
    [v5 stopOperation];
    [v5 _setDelegate:0];
    [(NSMutableArray *)self->_activeFetchOperations removeObjectAtIndex:v4];
  }

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_setNeedsRebalanceFetchOperations
{
  if (!self->_needsRebalanceFetchOperations)
  {
    self->_needsRebalanceFetchOperations = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__HKOutstandingFetchOperationManager__setNeedsRebalanceFetchOperations__block_invoke;
    block[3] = &unk_1E81B55A8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_rebalanceFetchOperations
{
  if (self->_needsRebalanceFetchOperations)
  {
    [(HKOutstandingFetchOperationManager *)self _fillActiveFetchOperations];
    self->_needsRebalanceFetchOperations = 0;
  }
}

- (void)_fillActiveFetchOperations
{
  for (i = self->_activeFetchOperations; [(NSMutableArray *)i count]< self->_maxConcurrentFetchOperations && [(NSMutableArray *)self->_pendingHighPriorityFetchOperations count]; i = self->_activeFetchOperations)
  {
    firstObject = [(NSMutableArray *)self->_pendingHighPriorityFetchOperations firstObject];
    [(HKOutstandingFetchOperationManager *)self _executeFetchOperation:firstObject];
    [(NSMutableArray *)self->_pendingHighPriorityFetchOperations removeObjectAtIndex:0];
  }

  if ([(HKOutstandingFetchOperationManager *)self _noHighPriorityActiveOperations])
  {
    while ([(NSMutableArray *)self->_activeFetchOperations count]< self->_maxConcurrentFetchOperations && [(NSMutableArray *)self->_pendingNormalPriorityFetchOperations count])
    {
      firstObject2 = [(NSMutableArray *)self->_pendingNormalPriorityFetchOperations firstObject];
      [(HKOutstandingFetchOperationManager *)self _executeFetchOperation:firstObject2];
      [(NSMutableArray *)self->_pendingNormalPriorityFetchOperations removeObjectAtIndex:0];
    }
  }
}

- (BOOL)_noHighPriorityActiveOperations
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_activeFetchOperations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) highPriority])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)_executeFetchOperation:(id)operation
{
  operationCopy = operation;
  [(HKOutstandingFetchOperationManager *)self _logOperationStart:operationCopy];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [operationCopy setExecutionTime:?];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __61__HKOutstandingFetchOperationManager__executeFetchOperation___block_invoke;
  v9 = &unk_1E81BA228;
  selfCopy = self;
  v11 = operationCopy;
  v5 = operationCopy;
  [v5 startOperationWithCompletion:&v6];
  [(NSMutableArray *)self->_activeFetchOperations addObject:v5, v6, v7, v8, v9, selfCopy];
}

void __61__HKOutstandingFetchOperationManager__executeFetchOperation___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__HKOutstandingFetchOperationManager__executeFetchOperation___block_invoke_2;
  v2[3] = &unk_1E81B5AD0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __61__HKOutstandingFetchOperationManager__executeFetchOperation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _logOperationCompletion:*(a1 + 40)];
  [*(a1 + 32) _removeFetchOperationFromActiveOperations:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _setNeedsRebalanceFetchOperations];
}

- (void)_logOperationStart:(id)start
{
  v9 = *MEMORY[0x1E69E9840];
  startCopy = start;
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    operationDescription = [startCopy operationDescription];
  }

  else
  {
    operationDescription = @"Redacted Description";
  }

  _HKInitializeLogging();
  v5 = HKUILogCharting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = [startCopy highPriority];
    v7 = 2112;
    v8 = operationDescription;
    _os_log_impl(&dword_1C3942000, v5, OS_LOG_TYPE_DEFAULT, "ChartQuery: highpriority %d for %@", v6, 0x12u);
  }
}

- (void)_logOperationCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    operationDescription = [completionCopy operationDescription];
  }

  else
  {
    operationDescription = @"Redacted Description";
  }

  _HKInitializeLogging();
  v7 = HKUILogCharting();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [completionCopy executionTime];
    v9 = v5 - v8;
    [completionCopy executionTime];
    v11 = v10;
    [completionCopy queueTime];
    v13 = 134218498;
    v14 = v9;
    v15 = 2048;
    v16 = v11 - v12;
    v17 = 2112;
    v18 = operationDescription;
    _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_DEFAULT, "ChartQuery: running %lgs queued %lgs for %@", &v13, 0x20u);
  }
}

- (void)fetchOperationDidUpdatePriority:(id)priority
{
  priorityCopy = priority;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(HKOutstandingFetchOperationManager *)self _removeFetchOperationFromPendingOperations:priorityCopy])
  {
    [(HKOutstandingFetchOperationManager *)self addFetchOperation:priorityCopy];
  }
}

- (void)addFetchOperation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOutstandingFetchOperationManager.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"[fetchOperation _delegate] == nil"}];
}

@end