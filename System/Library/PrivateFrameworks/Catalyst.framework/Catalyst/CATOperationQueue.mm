@interface CATOperationQueue
+ (id)backgroundQueue;
+ (id)currentQueue;
+ (id)mainQueue;
- (CATOperationQueueDelegate)delegate;
- (id)description;
- (void)addOperation:(id)operation;
- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished;
- (void)delegateOperationDidFinish:(id)finish;
- (void)delegateWillAddOperation:(id)operation;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setUnderlyingQueue:(id)queue;
@end

@implementation CATOperationQueue

- (void)setUnderlyingQueue:(id)queue
{
  queueCopy = queue;
  v6 = +[CATOperationQueue backgroundQueue];

  if (v6 == self)
  {
    [(CATOperationQueue *)a2 setUnderlyingQueue:?];
  }

  v7.receiver = self;
  v7.super_class = CATOperationQueue;
  [(CATOperationQueue *)&v7 setUnderlyingQueue:queueCopy];
}

+ (id)backgroundQueue
{
  if (backgroundQueue_onceToken != -1)
  {
    +[CATOperationQueue backgroundQueue];
  }

  v3 = backgroundQueue_backgroundQueue;

  return v3;
}

uint64_t __36__CATOperationQueue_backgroundQueue__block_invoke()
{
  v0 = objc_opt_new();
  v1 = backgroundQueue_backgroundQueue;
  backgroundQueue_backgroundQueue = v0;

  v2 = backgroundQueue_backgroundQueue;

  return [v2 setName:@"Global Background Queue"];
}

+ (id)currentQueue
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATOperationQueue.m" lineNumber:59 description:{@"%@ cannot use +currentQueue, call +[NSOperationQueue currentQueue] instead.", self}];

  return 0;
}

+ (id)mainQueue
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATOperationQueue.m" lineNumber:66 description:{@"%@ cannot use +mainQueue, call +[NSOperationQueue mainQueue] instead.", self}];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(CATOperationQueue *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p { name = '%@', suspended = %d, operationCount = %lu, maxConcurrentOperationCount = %ld }>", v4, self, name, -[CATOperationQueue isSuspended](self, "isSuspended"), -[CATOperationQueue operationCount](self, "operationCount"), -[CATOperationQueue maxConcurrentOperationCount](self, "maxConcurrentOperationCount")];

  return v6;
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  [(CATOperationQueue *)self startObserving:operationCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [operationCopy operationWillEnqueueOntoOperationQueue:self];
  }

  [(CATOperationQueue *)self delegateWillAddOperation:operationCopy];
  v5.receiver = self;
  v5.super_class = CATOperationQueue;
  [(CATOperationQueue *)&v5 addOperation:operationCopy];
}

- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished
{
  finishedCopy = finished;
  v27 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [operationsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(operationsCopy);
        }

        [(CATOperationQueue *)self addOperation:*(*(&v21 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [operationsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  if (finishedCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = operationsCopy;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v15++) waitUntilFinished];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (context == @"_CATOperationQueueIsFinishedObservationContext")
  {
    v12 = *MEMORY[0x277CCA300];
    changeCopy = change;
    v14 = [changeCopy objectForKeyedSubscript:v12];
    bOOLValue = [v14 BOOLValue];

    v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    bOOLValue2 = [v16 BOOLValue];
    if ((bOOLValue & 1) == 0 && bOOLValue2)
    {
      [(CATOperationQueue *)self delegateOperationDidFinish:objectCopy];
      [(CATOperationQueue *)self stopObserving:objectCopy];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CATOperationQueue;
    changeCopy2 = change;
    [(CATOperationQueue *)&v18 observeValueForKeyPath:path ofObject:objectCopy change:changeCopy2 context:context];
  }
}

- (void)delegateOperationDidFinish:(id)finish
{
  finishCopy = finish;
  delegate = [(CATOperationQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate operationQueue:self operationDidFinish:finishCopy];
  }
}

- (void)delegateWillAddOperation:(id)operation
{
  operationCopy = operation;
  delegate = [(CATOperationQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate operationQueue:self willAddOperation:operationCopy];
  }
}

- (CATOperationQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setUnderlyingQueue:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CATOperationQueue.m" lineNumber:32 description:{@"%@ cannot call %@ for backgroundQueue", a2, v4}];
}

@end