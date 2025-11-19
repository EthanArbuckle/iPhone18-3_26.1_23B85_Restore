@interface CPLInMemoryResourceDownloadTask
+ (id)failedTaskForResource:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (CPLInMemoryResourceDownloadTask)initWithResource:(id)a3 taskIdentifier:(id)a4 launchHandler:(id)a5 completionHandler:(id)a6;
- (void)associateCloudResource:(id)a3 ofRecord:(id)a4;
- (void)cancelTask;
- (void)finishWithData:(id)a3 error:(id)a4;
- (void)launchTransportTask:(id)a3;
@end

@implementation CPLInMemoryResourceDownloadTask

- (void)launchTransportTask:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CPLInMemoryResourceDownloadTask_launchTransportTask___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14457;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

uint64_t __55__CPLInMemoryResourceDownloadTask_launchTransportTask___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
    v3 = *(*(a1 + 32) + 56);

    return [v3 runWithNoSyncSession];
  }

  return result;
}

- (void)finishWithData:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__CPLInMemoryResourceDownloadTask_finishWithData_error___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14457;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __56__CPLInMemoryResourceDownloadTask_finishWithData_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(*(a1[4] + 88) + 16))();
  v4 = a1[4];
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

- (void)cancelTask
{
  v5.receiver = self;
  v5.super_class = CPLInMemoryResourceDownloadTask;
  [(CPLResourceTransferTask *)&v5 cancelTask];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CPLInMemoryResourceDownloadTask_cancelTask__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__CPLInMemoryResourceDownloadTask_cancelTask__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[7];
  if (v2)
  {

    [v2 cancel];
  }

  else
  {
    v3 = +[CPLErrors operationCancelledError];
    [v1 finishWithData:0 error:v3];
  }
}

- (void)associateCloudResource:(id)a3 ofRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  cloudResource = self->_cloudResource;
  self->_cloudResource = v6;
  v10 = v6;

  cloudRecord = self->_cloudRecord;
  self->_cloudRecord = v7;
}

- (CPLInMemoryResourceDownloadTask)initWithResource:(id)a3 taskIdentifier:(id)a4 launchHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v21.receiver = self;
  v21.super_class = CPLInMemoryResourceDownloadTask;
  v12 = [(CPLResourceTransferTask *)&v21 initWithResource:a3 taskIdentifier:a4];
  if (v12)
  {
    v13 = CPLCopyDefaultSerialQueueAttributes();
    v14 = dispatch_queue_create("com.apple.cpl.inmemorydownloadtask", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    v16 = [v10 copy];
    launchHandler = v12->_launchHandler;
    v12->_launchHandler = v16;

    v18 = [v11 copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v18;
  }

  return v12;
}

+ (id)failedTaskForResource:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__CPLInMemoryResourceDownloadTask_failedTaskForResource_error_completionHandler___block_invoke;
  v17[3] = &unk_1E861DED8;
  v18 = v8;
  v14 = v8;
  v15 = [v11 initWithResource:v10 taskIdentifier:v13 launchHandler:v17 completionHandler:v9];

  return v15;
}

@end