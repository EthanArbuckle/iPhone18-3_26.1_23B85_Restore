@interface CATBlockOperationObserver
- (CATBlockOperationObserver)init;
- (void)invokeBlock:(id)a3 operation:(id)a4;
- (void)operationDidFinish:(id)a3;
- (void)operationDidProgress:(id)a3;
- (void)operationDidStart:(id)a3;
- (void)setDelegateQueue:(id)a3;
@end

@implementation CATBlockOperationObserver

- (void)setDelegateQueue:(id)a3
{
  v5 = a3;
  p_delegateQueue = &self->_delegateQueue;
  if (self->_delegateQueue != v5)
  {
    v8 = v5;
    objc_storeStrong(p_delegateQueue, a3);
    v7 = v8;
    if (!v8)
    {
      v7 = MEMORY[0x277D85CD0];
    }

    dispatch_set_target_queue(self->mQueue, v7);
    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_delegateQueue, v5);
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

- (void)operationDidStart:(id)a3
{
  v4 = a3;
  v5 = [(CATBlockOperationObserver *)self didStart];
  [(CATBlockOperationObserver *)self invokeBlock:v5 operation:v4];
}

- (void)operationDidProgress:(id)a3
{
  v4 = a3;
  v5 = [(CATBlockOperationObserver *)self didProgress];
  [(CATBlockOperationObserver *)self invokeBlock:v5 operation:v4];
}

- (void)operationDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(CATBlockOperationObserver *)self didFinish];
  [(CATBlockOperationObserver *)self invokeBlock:v5 operation:v4];
}

- (void)invokeBlock:(id)a3 operation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    mQueue = self->mQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__CATBlockOperationObserver_invokeBlock_operation___block_invoke;
    v11[3] = &unk_278DA71E0;
    v13 = v6;
    v12 = v7;
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