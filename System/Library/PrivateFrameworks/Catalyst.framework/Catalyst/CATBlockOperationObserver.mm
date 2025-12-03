@interface CATBlockOperationObserver
- (CATBlockOperationObserver)init;
- (void)invokeBlock:(id)block operation:(id)operation;
- (void)operationDidFinish:(id)finish;
- (void)operationDidProgress:(id)progress;
- (void)operationDidStart:(id)start;
- (void)setDelegateQueue:(id)queue;
@end

@implementation CATBlockOperationObserver

- (void)setDelegateQueue:(id)queue
{
  queueCopy = queue;
  p_delegateQueue = &self->_delegateQueue;
  if (self->_delegateQueue != queueCopy)
  {
    v8 = queueCopy;
    objc_storeStrong(p_delegateQueue, queue);
    v7 = v8;
    if (!v8)
    {
      v7 = MEMORY[0x277D85CD0];
    }

    dispatch_set_target_queue(self->mQueue, v7);
    queueCopy = v8;
  }

  MEMORY[0x2821F96F8](p_delegateQueue, queueCopy);
}

- (CATBlockOperationObserver)init
{
  v7.receiver = self;
  v7.super_class = CATBlockOperationObserver;
  v2 = [(CATBlockOperationObserver *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    dispatch_set_target_queue(*(v2 + 1), MEMORY[0x277D85CD0]);
  }

  return v2;
}

- (void)operationDidStart:(id)start
{
  startCopy = start;
  didStart = [(CATBlockOperationObserver *)self didStart];
  [(CATBlockOperationObserver *)self invokeBlock:didStart operation:startCopy];
}

- (void)operationDidProgress:(id)progress
{
  progressCopy = progress;
  didProgress = [(CATBlockOperationObserver *)self didProgress];
  [(CATBlockOperationObserver *)self invokeBlock:didProgress operation:progressCopy];
}

- (void)operationDidFinish:(id)finish
{
  finishCopy = finish;
  didFinish = [(CATBlockOperationObserver *)self didFinish];
  [(CATBlockOperationObserver *)self invokeBlock:didFinish operation:finishCopy];
}

- (void)invokeBlock:(id)block operation:(id)operation
{
  blockCopy = block;
  operationCopy = operation;
  if (blockCopy)
  {
    mQueue = self->mQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__CATBlockOperationObserver_invokeBlock_operation___block_invoke;
    v11[3] = &unk_278DA71E0;
    v13 = blockCopy;
    v12 = operationCopy;
    v9 = v11;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __CATPerformBlock_block_invoke;
    block[3] = &unk_278DA7208;
    v15 = v9;
    v10 = mQueue;
    dispatch_async(v10, block);
  }
}

@end