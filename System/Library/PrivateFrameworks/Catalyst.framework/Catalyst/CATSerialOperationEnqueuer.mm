@interface CATSerialOperationEnqueuer
- (CATSerialOperationEnqueuer)initWithTargetOperationQueue:(id)queue;
- (void)addOperation:(id)operation;
- (void)checkIfOperationIsFinished:(id)finished;
- (void)dealloc;
- (void)enqueueNextOperation;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performThreadSafeBlock:(id)block;
@end

@implementation CATSerialOperationEnqueuer

- (void)dealloc
{
  if (self->mCurrentlyExecutingOperation)
  {
    [(CATSerialOperationEnqueuer *)self stopObservingOperation:?];
  }

  v3.receiver = self;
  v3.super_class = CATSerialOperationEnqueuer;
  [(CATSerialOperationEnqueuer *)&v3 dealloc];
}

- (CATSerialOperationEnqueuer)initWithTargetOperationQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CATSerialOperationEnqueuer;
  v6 = [(CATSerialOperationEnqueuer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mTargetQueue, queue);
    v8 = objc_opt_new();
    mPendingOperations = v7->mPendingOperations;
    v7->mPendingOperations = v8;

    v7->mLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__CATSerialOperationEnqueuer_addOperation___block_invoke;
  v6[3] = &unk_278DA7470;
  v6[4] = self;
  v7 = operationCopy;
  v5 = operationCopy;
  [(CATSerialOperationEnqueuer *)self performThreadSafeBlock:v6];
}

uint64_t __43__CATSerialOperationEnqueuer_addOperation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 enqueueNextOperation];
}

- (void)enqueueNextOperation
{
  p_mCurrentlyExecutingOperation = &self->mCurrentlyExecutingOperation;
  if (!self->mCurrentlyExecutingOperation)
  {
    cat_popFirstObject = [(NSMutableArray *)self->mPendingOperations cat_popFirstObject];
    v5 = cat_popFirstObject;
    if (cat_popFirstObject)
    {
      v6 = cat_popFirstObject;
      objc_storeStrong(p_mCurrentlyExecutingOperation, cat_popFirstObject);
      objc_storeStrong(&self->mStrongSelf, self);
      [(NSOperationQueue *)self->mTargetQueue addOperation:v6];
      [(CATSerialOperationEnqueuer *)self startObservingOperation:v6];
      cat_popFirstObject = [(CATSerialOperationEnqueuer *)self checkIfOperationIsFinished:v6];
      v5 = v6;
    }

    MEMORY[0x2821F96F8](cat_popFirstObject, v5);
  }
}

- (void)checkIfOperationIsFinished:(id)finished
{
  finishedCopy = finished;
  v5 = finishedCopy;
  if (self->mCurrentlyExecutingOperation == finishedCopy)
  {
    v8 = finishedCopy;
    finishedCopy = [(NSOperation *)finishedCopy isFinished];
    v5 = v8;
    if (finishedCopy)
    {
      [(CATSerialOperationEnqueuer *)self stopObservingOperation:v8];
      mCurrentlyExecutingOperation = self->mCurrentlyExecutingOperation;
      self->mCurrentlyExecutingOperation = 0;

      mStrongSelf = self->mStrongSelf;
      self->mStrongSelf = 0;

      finishedCopy = [(CATSerialOperationEnqueuer *)self enqueueNextOperation];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](finishedCopy, v5);
}

- (void)performThreadSafeBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->mLock);
  blockCopy[2](blockCopy);

  os_unfair_lock_unlock(&self->mLock);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v11 = objectCopy;
  if (context == @"CATSerialOperationEnqueuerObservationContext")
  {
    v12 = objectCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [CATSerialOperationEnqueuer observeValueForKeyPath:ofObject:change:context:];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__CATSerialOperationEnqueuer_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v14[3] = &unk_278DA7470;
    v14[4] = self;
    v15 = v12;
    v13 = v12;
    [(CATSerialOperationEnqueuer *)self performThreadSafeBlock:v14];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CATSerialOperationEnqueuer;
    [(CATSerialOperationEnqueuer *)&v16 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATSerialOperationEnqueuer observeValueForKeyPath:ofObject:change:context:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CATSerialOperationEnqueuer.m" lineNumber:142 description:{@"expected %@, got %@", v2, v4}];
}

@end