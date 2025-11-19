@interface CATSerialOperationEnqueuer
- (CATSerialOperationEnqueuer)initWithTargetOperationQueue:(id)a3;
- (void)addOperation:(id)a3;
- (void)checkIfOperationIsFinished:(id)a3;
- (void)dealloc;
- (void)enqueueNextOperation;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performThreadSafeBlock:(id)a3;
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

- (CATSerialOperationEnqueuer)initWithTargetOperationQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CATSerialOperationEnqueuer;
  v6 = [(CATSerialOperationEnqueuer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mTargetQueue, a3);
    v8 = objc_opt_new();
    mPendingOperations = v7->mPendingOperations;
    v7->mPendingOperations = v8;

    v7->mLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)addOperation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__CATSerialOperationEnqueuer_addOperation___block_invoke;
  v6[3] = &unk_278DA7470;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
    v4 = [(NSMutableArray *)self->mPendingOperations cat_popFirstObject];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      objc_storeStrong(p_mCurrentlyExecutingOperation, v4);
      objc_storeStrong(&self->mStrongSelf, self);
      [(NSOperationQueue *)self->mTargetQueue addOperation:v6];
      [(CATSerialOperationEnqueuer *)self startObservingOperation:v6];
      v4 = [(CATSerialOperationEnqueuer *)self checkIfOperationIsFinished:v6];
      v5 = v6;
    }

    MEMORY[0x2821F96F8](v4, v5);
  }
}

- (void)checkIfOperationIsFinished:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->mCurrentlyExecutingOperation == v4)
  {
    v8 = v4;
    v4 = [(NSOperation *)v4 isFinished];
    v5 = v8;
    if (v4)
    {
      [(CATSerialOperationEnqueuer *)self stopObservingOperation:v8];
      mCurrentlyExecutingOperation = self->mCurrentlyExecutingOperation;
      self->mCurrentlyExecutingOperation = 0;

      mStrongSelf = self->mStrongSelf;
      self->mStrongSelf = 0;

      v4 = [(CATSerialOperationEnqueuer *)self enqueueNextOperation];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)performThreadSafeBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->mLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->mLock);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = v10;
  if (a6 == @"CATSerialOperationEnqueuerObservationContext")
  {
    v12 = v10;
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
    [(CATSerialOperationEnqueuer *)&v16 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
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