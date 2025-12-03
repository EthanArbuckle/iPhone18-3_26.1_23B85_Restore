@interface FCAsyncSerialQueue
- (BOOL)suspended;
- (FCAsyncSerialQueue)initWithUnderlyingQueue:(id)queue qualityOfService:(int64_t)service;
- (void)cancelAllBlocks;
- (void)enqueueBlock:(id)block;
- (void)enqueueBlockForMainThread:(id)thread;
- (void)enqueueOperation:(id)operation;
- (void)withQualityOfService:(int64_t)service enqueueBlock:(id)block;
- (void)withQualityOfService:(int64_t)service enqueueBlockForMainThread:(id)thread;
@end

@implementation FCAsyncSerialQueue

- (FCAsyncSerialQueue)initWithUnderlyingQueue:(id)queue qualityOfService:(int64_t)service
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = FCAsyncSerialQueue;
  v7 = [(FCAsyncSerialQueue *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    serialOperationQueue = v7->_serialOperationQueue;
    v7->_serialOperationQueue = v8;

    [(NSOperationQueue *)v7->_serialOperationQueue setQualityOfService:service];
    [(NSOperationQueue *)v7->_serialOperationQueue setMaxConcurrentOperationCount:1];
    if (queueCopy)
    {
      [(NSOperationQueue *)v7->_serialOperationQueue setUnderlyingQueue:queueCopy];
    }
  }

  return v7;
}

- (void)enqueueBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue fc_addAsyncOperationWithBlock:blockCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    serialOperationQueue = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v8 = "[FCAsyncSerialQueue enqueueBlock:]";
    v9 = 2080;
    v10 = "FCAsyncSerialQueue.m";
    v11 = 1024;
    v12 = 51;
    v13 = 2114;
    v14 = serialOperationQueue;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)withQualityOfService:(int64_t)service enqueueBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v7 = [FCAsyncBlockOperation asyncBlockOperationWithBlock:blockCopy];
    [v7 setQualityOfService:service];
    serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue addOperation:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v12 = "[FCAsyncSerialQueue withQualityOfService:enqueueBlock:]";
    v13 = 2080;
    v14 = "FCAsyncSerialQueue.m";
    v15 = 1024;
    v16 = 61;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)enqueueBlockForMainThread:(id)thread
{
  v18 = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  v5 = threadCopy;
  if (threadCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__FCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke;
    v8[3] = &unk_1E7C3A148;
    v9 = threadCopy;
    [(FCAsyncSerialQueue *)self enqueueBlock:v8];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v11 = "[FCAsyncSerialQueue enqueueBlockForMainThread:]";
    v12 = 2080;
    v13 = "FCAsyncSerialQueue.m";
    v14 = 1024;
    v15 = 74;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __48__FCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__FCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke_2;
  v5[3] = &unk_1E7C39090;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)withQualityOfService:(int64_t)service enqueueBlockForMainThread:(id)thread
{
  v19 = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  if (threadCopy)
  {
    v7 = [FCAsyncBlockOperation asyncBlockOperationWithMainThreadBlock:threadCopy];
    [v7 setQualityOfService:service];
    serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue addOperation:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v12 = "[FCAsyncSerialQueue withQualityOfService:enqueueBlockForMainThread:]";
    v13 = 2080;
    v14 = "FCAsyncSerialQueue.m";
    v15 = 1024;
    v16 = 88;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)enqueueOperation:(id)operation
{
  operationCopy = operation;
  serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue addOperation:operationCopy];
}

- (void)cancelAllBlocks
{
  serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue cancelAllOperations];
}

- (BOOL)suspended
{
  serialOperationQueue = [(FCAsyncSerialQueue *)self serialOperationQueue];
  isSuspended = [serialOperationQueue isSuspended];

  return isSuspended;
}

@end