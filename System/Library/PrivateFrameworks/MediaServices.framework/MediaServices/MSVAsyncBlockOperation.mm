@interface MSVAsyncBlockOperation
- (MSVAsyncBlockOperation)initWithStartHandler:(id)handler;
- (id)cancellationHandler;
- (void)cancel;
- (void)finishWithError:(id)error;
- (void)setCancellationHandler:(id)handler;
@end

@implementation MSVAsyncBlockOperation

- (void)setCancellationHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MSVAsyncBlockOperation_setCancellationHandler___block_invoke;
  v7[3] = &unk_1E7982B00;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __49__MSVAsyncBlockOperation_setCancellationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  *(v3 + 280) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)cancellationHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__46;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MSVAsyncBlockOperation_cancellationHandler__block_invoke;
  v5[3] = &unk_1E7982B78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = MEMORY[0x1B26EC6C0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __45__MSVAsyncBlockOperation_cancellationHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1B26EC6C0](*(*(a1 + 32) + 280));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)finishWithError:(id)error
{
  v4.receiver = self;
  v4.super_class = MSVAsyncBlockOperation;
  [(MSVAsyncOperation *)&v4 finishWithError:error];
  [(MSVAsyncBlockOperation *)self setCancellationHandler:0];
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = MSVAsyncBlockOperation;
  [(MSVAsyncBlockOperation *)&v5 cancel];
  cancellationHandler = [(MSVAsyncBlockOperation *)self cancellationHandler];
  v4 = cancellationHandler;
  if (cancellationHandler)
  {
    (*(cancellationHandler + 16))(cancellationHandler);
  }
}

- (MSVAsyncBlockOperation)initWithStartHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = MSVAsyncBlockOperation;
  v5 = [(MSVAsyncOperation *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.mediaservices.MSVAsyncBlockOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    v8 = MEMORY[0x1B26EC6C0](handlerCopy);
    startHandler = v5->_startHandler;
    v5->_startHandler = v8;
  }

  return v5;
}

@end