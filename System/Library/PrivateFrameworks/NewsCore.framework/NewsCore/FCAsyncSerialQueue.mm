@interface FCAsyncSerialQueue
- (BOOL)suspended;
- (FCAsyncSerialQueue)initWithUnderlyingQueue:(id)a3 qualityOfService:(int64_t)a4;
- (void)cancelAllBlocks;
- (void)enqueueBlock:(id)a3;
- (void)enqueueBlockForMainThread:(id)a3;
- (void)enqueueOperation:(id)a3;
- (void)withQualityOfService:(int64_t)a3 enqueueBlock:(id)a4;
- (void)withQualityOfService:(int64_t)a3 enqueueBlockForMainThread:(id)a4;
@end

@implementation FCAsyncSerialQueue

- (FCAsyncSerialQueue)initWithUnderlyingQueue:(id)a3 qualityOfService:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FCAsyncSerialQueue;
  v7 = [(FCAsyncSerialQueue *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    serialOperationQueue = v7->_serialOperationQueue;
    v7->_serialOperationQueue = v8;

    [(NSOperationQueue *)v7->_serialOperationQueue setQualityOfService:a4];
    [(NSOperationQueue *)v7->_serialOperationQueue setMaxConcurrentOperationCount:1];
    if (v6)
    {
      [(NSOperationQueue *)v7->_serialOperationQueue setUnderlyingQueue:v6];
    }
  }

  return v7;
}

- (void)enqueueBlock:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [v5 fc_addAsyncOperationWithBlock:v4];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v8 = "[FCAsyncSerialQueue enqueueBlock:]";
    v9 = 2080;
    v10 = "FCAsyncSerialQueue.m";
    v11 = 1024;
    v12 = 51;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)withQualityOfService:(int64_t)a3 enqueueBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = [FCAsyncBlockOperation asyncBlockOperationWithBlock:v6];
    [v7 setQualityOfService:a3];
    v8 = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [v8 addOperation:v7];
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

- (void)enqueueBlockForMainThread:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__FCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke;
    v8[3] = &unk_1E7C3A148;
    v9 = v4;
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

- (void)withQualityOfService:(int64_t)a3 enqueueBlockForMainThread:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = [FCAsyncBlockOperation asyncBlockOperationWithMainThreadBlock:v6];
    [v7 setQualityOfService:a3];
    v8 = [(FCAsyncSerialQueue *)self serialOperationQueue];
    [v8 addOperation:v7];
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

- (void)enqueueOperation:(id)a3
{
  v4 = a3;
  v5 = [(FCAsyncSerialQueue *)self serialOperationQueue];
  [v5 addOperation:v4];
}

- (void)cancelAllBlocks
{
  v2 = [(FCAsyncSerialQueue *)self serialOperationQueue];
  [v2 cancelAllOperations];
}

- (BOOL)suspended
{
  v2 = [(FCAsyncSerialQueue *)self serialOperationQueue];
  v3 = [v2 isSuspended];

  return v3;
}

@end