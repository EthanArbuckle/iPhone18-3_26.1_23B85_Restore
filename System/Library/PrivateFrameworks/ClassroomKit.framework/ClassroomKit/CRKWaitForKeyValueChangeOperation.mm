@interface CRKWaitForKeyValueChangeOperation
- (CRKWaitForKeyValueChangeOperation)initWithObject:(id)object keyPaths:(id)paths conditionEvaluator:(id)evaluator;
- (void)beginObservingObject;
- (void)cancel;
- (void)endObservingObject;
- (void)evaluateConditions;
- (void)main;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CRKWaitForKeyValueChangeOperation

- (CRKWaitForKeyValueChangeOperation)initWithObject:(id)object keyPaths:(id)paths conditionEvaluator:(id)evaluator
{
  objectCopy = object;
  pathsCopy = paths;
  evaluatorCopy = evaluator;
  v19.receiver = self;
  v19.super_class = CRKWaitForKeyValueChangeOperation;
  v12 = [(CRKWaitForKeyValueChangeOperation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_object, object);
    v14 = [pathsCopy copy];
    keyPaths = v13->_keyPaths;
    v13->_keyPaths = v14;

    v16 = MEMORY[0x245D3AAD0](evaluatorCopy);
    conditionEvaluator = v13->_conditionEvaluator;
    v13->_conditionEvaluator = v16;
  }

  return v13;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKWaitForKeyValueChangeOperation;
  [(CRKWaitForKeyValueChangeOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CRKWaitForKeyValueChangeOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__CRKWaitForKeyValueChangeOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    [*(a1 + 32) endObservingObject];
    [*(a1 + 32) setConditionEvaluator:0];
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v3];
  }
}

- (void)main
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(CRKWaitForKeyValueChangeOperation *)self isExecuting])
    {
      [(CRKWaitForKeyValueChangeOperation *)self beginObservingObject];

      [(CRKWaitForKeyValueChangeOperation *)self evaluateConditions];
    }
  }

  else
  {

    [(CRKWaitForKeyValueChangeOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)beginObservingObject
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(CRKWaitForKeyValueChangeOperation *)self isObserving])
  {
    [(CRKWaitForKeyValueChangeOperation *)self setObserving:1];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    keyPaths = [(CRKWaitForKeyValueChangeOperation *)self keyPaths];
    v4 = [keyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(keyPaths);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          object = [(CRKWaitForKeyValueChangeOperation *)self object];
          [object addObserver:self forKeyPath:v8 options:0 context:@"WaitForKeyValueChangeOperationObservationContext"];

          ++v7;
        }

        while (v5 != v7);
        v5 = [keyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)endObservingObject
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(CRKWaitForKeyValueChangeOperation *)self isObserving])
  {
    [(CRKWaitForKeyValueChangeOperation *)self setObserving:0];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    keyPaths = [(CRKWaitForKeyValueChangeOperation *)self keyPaths];
    v4 = [keyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(keyPaths);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          object = [(CRKWaitForKeyValueChangeOperation *)self object];
          [object removeObserver:self forKeyPath:v8 context:@"WaitForKeyValueChangeOperationObservationContext"];

          ++v7;
        }

        while (v5 != v7);
        v5 = [keyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"WaitForKeyValueChangeOperationObservationContext")
  {

    [(CRKWaitForKeyValueChangeOperation *)self evaluateConditions:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKWaitForKeyValueChangeOperation;
    [(CRKWaitForKeyValueChangeOperation *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)evaluateConditions
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(CRKWaitForKeyValueChangeOperation *)self isExecuting])
    {
      conditionEvaluator = [(CRKWaitForKeyValueChangeOperation *)self conditionEvaluator];
      v5 = conditionEvaluator[2]();

      if (v5)
      {
        [(CRKWaitForKeyValueChangeOperation *)self endObservingObject];
        [(CRKWaitForKeyValueChangeOperation *)self setConditionEvaluator:0];

        [(CRKWaitForKeyValueChangeOperation *)self endOperationWithResultObject:0];
      }
    }
  }

  else
  {

    [(CRKWaitForKeyValueChangeOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

@end