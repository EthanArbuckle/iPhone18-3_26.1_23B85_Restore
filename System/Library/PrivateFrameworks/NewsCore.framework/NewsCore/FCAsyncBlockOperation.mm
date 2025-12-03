@interface FCAsyncBlockOperation
+ (id)asyncBlockOperationWithBlock:(id)block;
+ (id)asyncBlockOperationWithMainThreadBlock:(id)block;
- (FCAsyncBlockOperation)init;
- (FCAsyncBlockOperation)initWithBlock:(id)block;
- (void)start;
@end

@implementation FCAsyncBlockOperation

- (void)start
{
  if ([(FCAsyncBlockOperation *)self isCancelled])
  {
    [(FCAsyncBlockOperation *)self willChangeValueForKey:@"isFinished"];
    atomic_store(1u, &self->_finished);

    [(FCAsyncBlockOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(FCAsyncBlockOperation *)self willChangeValueForKey:@"isExecuting"];
    atomic_store(1u, &self->_executing);
    [(FCAsyncBlockOperation *)self didChangeValueForKey:@"isExecuting"];
    v3 = objc_autoreleasePoolPush();
    block = [(FCAsyncBlockOperation *)self block];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__FCAsyncBlockOperation_start__block_invoke;
    v5[3] = &unk_1E7C36EA0;
    v5[4] = self;
    (block)[2](block, v5);

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t __30__FCAsyncBlockOperation_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"isExecuting"];
  atomic_store(0, (*(a1 + 32) + 248));
  [*(a1 + 32) didChangeValueForKey:@"isExecuting"];
  [*(a1 + 32) willChangeValueForKey:@"isFinished"];
  atomic_store(1u, (*(a1 + 32) + 249));
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"isFinished"];
}

+ (id)asyncBlockOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [objc_alloc(objc_opt_class()) initWithBlock:blockCopy];

  return v4;
}

+ (id)asyncBlockOperationWithMainThreadBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__FCAsyncBlockOperation_asyncBlockOperationWithMainThreadBlock___block_invoke;
  v8[3] = &unk_1E7C3A148;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [self asyncBlockOperationWithBlock:v8];

  return v6;
}

void __64__FCAsyncBlockOperation_asyncBlockOperationWithMainThreadBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__FCAsyncBlockOperation_asyncBlockOperationWithMainThreadBlock___block_invoke_2;
  v5[3] = &unk_1E7C39090;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  FCPerformBlockOnMainThread(v5);
}

- (FCAsyncBlockOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAsyncBlockOperation init]";
    v10 = 2080;
    v11 = "FCAsyncBlockOperation.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAsyncBlockOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAsyncBlockOperation)initWithBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v13 = "[FCAsyncBlockOperation initWithBlock:]";
    v14 = 2080;
    v15 = "FCAsyncBlockOperation.m";
    v16 = 1024;
    v17 = 45;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCAsyncBlockOperation;
  v5 = [(FCAsyncBlockOperation *)&v11 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

@end