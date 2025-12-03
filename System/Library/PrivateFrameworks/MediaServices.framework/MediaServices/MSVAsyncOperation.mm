@interface MSVAsyncOperation
- (BOOL)_isExecuting;
- (BOOL)_isFinished;
- (MSVAsyncOperation)init;
- (NSError)error;
- (void)_setExecuting:(BOOL)executing;
- (void)_setFinished:(BOOL)finished;
- (void)finishWithError:(id)error;
- (void)setError:(id)error;
- (void)start;
@end

@implementation MSVAsyncOperation

- (void)_setFinished:(BOOL)finished
{
  accessQueue = [(MSVAsyncOperation *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__MSVAsyncOperation__setFinished___block_invoke;
  v6[3] = &unk_1E7982738;
  v6[4] = self;
  finishedCopy = finished;
  dispatch_sync(accessQueue, v6);
}

- (BOOL)_isFinished
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = [(MSVAsyncOperation *)self accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MSVAsyncOperation__isFinished__block_invoke;
  v5[3] = &unk_1E7982B78;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_setExecuting:(BOOL)executing
{
  accessQueue = [(MSVAsyncOperation *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MSVAsyncOperation__setExecuting___block_invoke;
  v6[3] = &unk_1E7982738;
  v6[4] = self;
  executingCopy = executing;
  dispatch_sync(accessQueue, v6);
}

- (BOOL)_isExecuting
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = [(MSVAsyncOperation *)self accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MSVAsyncOperation__isExecuting__block_invoke;
  v5[3] = &unk_1E7982B78;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setError:(id)error
{
  errorCopy = error;
  accessQueue = [(MSVAsyncOperation *)self accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__MSVAsyncOperation_setError___block_invoke;
  v7[3] = &unk_1E7982B28;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(accessQueue, v7);
}

uint64_t __30__MSVAsyncOperation_setError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSError)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4829;
  v11 = __Block_byref_object_dispose__4830;
  v12 = 0;
  accessQueue = [(MSVAsyncOperation *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__MSVAsyncOperation_error__block_invoke;
  v6[3] = &unk_1E7982B78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __26__MSVAsyncOperation_error__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  v5 = NSStringFromSelector(sel_error);
  [(MSVAsyncOperation *)self willChangeValueForKey:v5];

  v6 = NSStringFromSelector(sel_isFinished);
  [(MSVAsyncOperation *)self willChangeValueForKey:v6];

  v7 = NSStringFromSelector(sel_isExecuting);
  [(MSVAsyncOperation *)self willChangeValueForKey:v7];

  [(MSVAsyncOperation *)self setError:errorCopy];
  [(MSVAsyncOperation *)self _setExecuting:0];
  [(MSVAsyncOperation *)self _setFinished:1];
  v8 = NSStringFromSelector(sel_error);
  [(MSVAsyncOperation *)self didChangeValueForKey:v8];

  v9 = NSStringFromSelector(sel_isFinished);
  [(MSVAsyncOperation *)self didChangeValueForKey:v9];

  v10 = NSStringFromSelector(sel_isExecuting);
  [(MSVAsyncOperation *)self didChangeValueForKey:v10];
}

- (void)start
{
  v3 = NSStringFromSelector(sel_isExecuting);
  [(MSVAsyncOperation *)self willChangeValueForKey:v3];

  [(MSVAsyncOperation *)self _setExecuting:1];
  v4 = NSStringFromSelector(sel_isExecuting);
  [(MSVAsyncOperation *)self didChangeValueForKey:v4];

  [(MSVAsyncOperation *)self execute];
}

- (MSVAsyncOperation)init
{
  v6.receiver = self;
  v6.super_class = MSVAsyncOperation;
  v2 = [(MSVAsyncOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaservices.MSVAsyncOperation.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

@end