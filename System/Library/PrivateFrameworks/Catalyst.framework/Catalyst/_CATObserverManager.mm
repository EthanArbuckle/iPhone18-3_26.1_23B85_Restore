@interface _CATObserverManager
- (_CATObserverManager)initWithOperation:(id)operation;
- (void)addObserver:(id)observer;
- (void)notifyObserversOperationDidProgress:(id)progress;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operationDidFinish:(id)finish;
- (void)operationDidProgress:(id)progress;
- (void)operationDidStart:(id)start;
- (void)removeObserver:(id)observer;
@end

@implementation _CATObserverManager

- (_CATObserverManager)initWithOperation:(id)operation
{
  operationCopy = operation;
  if (!operationCopy)
  {
    [_CATObserverManager initWithOperation:];
  }

  v23.receiver = self;
  v23.super_class = _CATObserverManager;
  v5 = [(_CATObserverManager *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->mOperation = operationCopy;
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    uUID = [(CATOperation *)operationCopy UUID];
    uUIDString = [uUID UUIDString];
    v11 = [v7 stringWithFormat:@"%@.%@", v8, uUIDString];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    mQueue = v6->mQueue;
    v6->mQueue = v12;

    objc_initWeak(&location, v6);
    objc_initWeak(&from, operationCopy);
    v14 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v6->mQueue);
    mProgressSource = v6->mProgressSource;
    v6->mProgressSource = v14;

    v16 = v6->mProgressSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __41___CATObserverManager_initWithOperation___block_invoke;
    handler[3] = &unk_278DA7508;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, &from);
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(v6->mProgressSource);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [_CATObserverManager addObserver:];
  }

  v5 = self->mOperation;
  mQueue = self->mQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35___CATObserverManager_addObserver___block_invoke;
  v11[3] = &unk_278DA7280;
  v12 = observerCopy;
  selfCopy = self;
  v14 = v5;
  v7 = v11;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_2;
  block[3] = &unk_278DA7208;
  v16 = v7;
  v8 = mQueue;
  v9 = v5;
  v10 = observerCopy;
  dispatch_async(v8, block);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  mQueue = self->mQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38___CATObserverManager_removeObserver___block_invoke;
  v9[3] = &unk_278DA7530;
  objc_copyWeak(&v11, &location);
  v10 = observerCopy;
  v6 = v9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_2;
  block[3] = &unk_278DA7208;
  v14 = v6;
  v7 = mQueue;
  v8 = observerCopy;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)operationDidStart:(id)start
{
  startCopy = start;
  if (self->mOperation != startCopy)
  {
    [(_CATObserverManager *)a2 operationDidStart:startCopy];
  }

  [(CATOperation *)startCopy addObserver:self forKeyPath:@"completedUnitCount" options:7 context:@"_CATOperationCompletedUnitCountObservationContext"];
  mQueue = self->mQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41___CATObserverManager_operationDidStart___block_invoke;
  v10[3] = &unk_278DA7470;
  v10[4] = self;
  v11 = startCopy;
  v7 = v10;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_2;
  block[3] = &unk_278DA7208;
  v13 = v7;
  v8 = mQueue;
  v9 = startCopy;
  dispatch_async(v8, block);
}

- (void)operationDidProgress:(id)progress
{
  if (self->mOperation != progress)
  {
    [(_CATObserverManager *)progress operationDidProgress:a2, self];
  }

  mQueue = self->mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44___CATObserverManager_operationDidProgress___block_invoke;
  v7[3] = &unk_278DA72D0;
  v7[4] = self;
  v5 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_2;
  block[3] = &unk_278DA7208;
  v9 = v5;
  v6 = mQueue;
  dispatch_async(v6, block);
}

- (void)notifyObserversOperationDidProgress:(id)progress
{
  v17 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  if (progressCopy && (self->mState - 5) >= 0xFFFFFFFE)
  {
    allObjects = [(NSMutableSet *)self->mObservers allObjects];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allObjects);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 operationDidProgress:progressCopy];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)operationDidFinish:(id)finish
{
  finishCopy = finish;
  if (self->mOperation != finishCopy)
  {
    [(_CATObserverManager *)a2 operationDidFinish:finishCopy];
  }

  mQueue = self->mQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42___CATObserverManager_operationDidFinish___block_invoke;
  v10[3] = &unk_278DA7470;
  v10[4] = self;
  v11 = finishCopy;
  v7 = v10;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_2;
  block[3] = &unk_278DA7208;
  v13 = v7;
  v8 = mQueue;
  v9 = finishCopy;
  dispatch_async(v8, block);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (context == @"_CATOperationCompletedUnitCountObservationContext")
  {
    v12 = *MEMORY[0x277CCA300];
    changeCopy = change;
    v14 = [changeCopy objectForKeyedSubscript:v12];
    integerValue = [v14 integerValue];

    v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    integerValue2 = [v16 integerValue];
    if (integerValue == integerValue2)
    {
      goto LABEL_4;
    }

    changeCopy2 = objectCopy;
    if (integerValue2 < [changeCopy2 totalUnitCount])
    {
      [(_CATObserverManager *)self operationDidProgress:changeCopy2];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _CATObserverManager;
    changeCopy2 = change;
    [(_CATObserverManager *)&v18 observeValueForKeyPath:path ofObject:objectCopy change:changeCopy2 context:context];
  }

LABEL_4:
}

- (void)initWithOperation:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"operation" object:? file:? lineNumber:? description:?];
}

- (void)addObserver:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)operationDidStart:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(a1);
  [v7 handleFailureInMethod:a1 object:a2 file:@"CATOperation.m" lineNumber:556 description:{@"%@ cannot call %@ with an operation (%@) not being observed", a2, v6, a3}];
}

- (void)operationDidProgress:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA890];
  v6 = a1;
  v9 = [v5 currentHandler];
  v7 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0();
  [v8 handleFailureInMethod:a3 object:v7 file:v6 lineNumber:? description:?];
}

- (void)operationDidFinish:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(a1);
  [v7 handleFailureInMethod:a1 object:a2 file:@"CATOperation.m" lineNumber:612 description:{@"%@ cannot call %@ with an operation (%@) not being observed", a2, v6, a3}];
}

@end