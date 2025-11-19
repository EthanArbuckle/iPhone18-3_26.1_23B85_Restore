@interface CATOperationQueue
+ (id)backgroundQueue;
+ (id)currentQueue;
+ (id)mainQueue;
- (CATOperationQueueDelegate)delegate;
- (id)description;
- (void)addOperation:(id)a3;
- (void)addOperations:(id)a3 waitUntilFinished:(BOOL)a4;
- (void)delegateOperationDidFinish:(id)a3;
- (void)delegateWillAddOperation:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setUnderlyingQueue:(id)a3;
@end

@implementation CATOperationQueue

- (void)setUnderlyingQueue:(id)a3
{
  v5 = a3;
  v6 = +[CATOperationQueue backgroundQueue];

  if (v6 == self)
  {
    [(CATOperationQueue *)a2 setUnderlyingQueue:?];
  }

  v7.receiver = self;
  v7.super_class = CATOperationQueue;
  [(CATOperationQueue *)&v7 setUnderlyingQueue:v5];
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CATOperationQueue.m" lineNumber:59 description:{@"%@ cannot use +currentQueue, call +[NSOperationQueue currentQueue] instead.", a1}];

  return 0;
}

+ (id)mainQueue
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CATOperationQueue.m" lineNumber:66 description:{@"%@ cannot use +mainQueue, call +[NSOperationQueue mainQueue] instead.", a1}];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CATOperationQueue *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p { name = '%@', suspended = %d, operationCount = %lu, maxConcurrentOperationCount = %ld }>", v4, self, v5, -[CATOperationQueue isSuspended](self, "isSuspended"), -[CATOperationQueue operationCount](self, "operationCount"), -[CATOperationQueue maxConcurrentOperationCount](self, "maxConcurrentOperationCount")];

  return v6;
}

- (void)addOperation:(id)a3
{
  v4 = a3;
  [(CATOperationQueue *)self startObserving:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 operationWillEnqueueOntoOperationQueue:self];
  }

  [(CATOperationQueue *)self delegateWillAddOperation:v4];
  v5.receiver = self;
  v5.super_class = CATOperationQueue;
  [(CATOperationQueue *)&v5 addOperation:v4];
}

- (void)addOperations:(id)a3 waitUntilFinished:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(CATOperationQueue *)self addOperation:*(*(&v21 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v6;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (a6 == @"_CATOperationQueueIsFinishedObservationContext")
  {
    v12 = *MEMORY[0x277CCA300];
    v13 = a5;
    v14 = [v13 objectForKeyedSubscript:v12];
    v15 = [v14 BOOLValue];

    v16 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    v17 = [v16 BOOLValue];
    if ((v15 & 1) == 0 && v17)
    {
      [(CATOperationQueue *)self delegateOperationDidFinish:v10];
      [(CATOperationQueue *)self stopObserving:v10];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CATOperationQueue;
    v11 = a5;
    [(CATOperationQueue *)&v18 observeValueForKeyPath:a3 ofObject:v10 change:v11 context:a6];
  }
}

- (void)delegateOperationDidFinish:(id)a3
{
  v5 = a3;
  v4 = [(CATOperationQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 operationQueue:self operationDidFinish:v5];
  }
}

- (void)delegateWillAddOperation:(id)a3
{
  v5 = a3;
  v4 = [(CATOperationQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 operationQueue:self willAddOperation:v5];
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