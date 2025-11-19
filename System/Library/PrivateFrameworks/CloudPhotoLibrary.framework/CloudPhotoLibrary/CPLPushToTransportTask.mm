@interface CPLPushToTransportTask
+ (BOOL)dontAutoRetry;
- (id)enumerateScopesForTaskInTransaction:(id)a3;
- (id)newScopedTaskWithScope:(id)a3 session:(id)a4 transportScope:(id)a5 clientCacheIdentifier:(id)a6;
- (id)scopeFilterInTransaction:(id)a3;
- (id)taskIdentifier;
- (void)cancel:(BOOL)a3;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)taskDidFinishWithError:(id)a3;
@end

@implementation CPLPushToTransportTask

- (id)taskIdentifier
{
  if (self->_highPriority)
  {
    return @"engine.sync.pushtotransport.highpriority";
  }

  else
  {
    return @"engine.sync.pushtotransport";
  }
}

- (void)taskDidFinishWithError:(id)a3
{
  highPriority = self->_highPriority;
  v5 = a3;
  v6 = [(CPLEngineSyncTask *)self engineLibrary];
  v7 = [v6 scheduler];
  v8 = v7;
  v9 = &CPLEngineElementEndOfUploadHighPriority;
  if (!highPriority)
  {
    v9 = &CPLEngineElementEndOfUpload;
  }

  [v7 willRunEngineElement:*v9];

  v10.receiver = self;
  v10.super_class = CPLPushToTransportTask;
  [(CPLEngineSyncTask *)&v10 taskDidFinishWithError:v5];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CPLPushToTransportTask_task_didFinishWithError___block_invoke;
  v7[3] = &unk_1E861D310;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(CPLEngineMultiscopeSyncTask *)self dispatchAsyncWithCurrentSubtask:v7];
}

void __50__CPLPushToTransportTask_task_didFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(*(a1 + 32) + 168) == 1 && v4 == 0)
  {
    v6 = +[CPLErrors operationCancelledError];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  v8.receiver = *(a1 + 32);
  v8.super_class = CPLPushToTransportTask;
  objc_msgSendSuper2(&v8, sel_task_didFinishWithError_, v3, v6);
}

- (void)cancel:(BOOL)a3
{
  if (a3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __33__CPLPushToTransportTask_cancel___block_invoke;
    v4[3] = &unk_1E861D2E8;
    v4[4] = self;
    v5 = 1;
    [(CPLEngineMultiscopeSyncTask *)self dispatchAsyncWithCurrentSubtask:v4];
  }

  else
  {

    [(CPLEngineMultiscopeSyncTask *)self cancel];
  }
}

uint64_t __33__CPLPushToTransportTask_cancel___block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 168) = 1;
  if (a2)
  {
    return [a2 cancel:*(a1 + 40)];
  }

  else
  {
    return [*(a1 + 32) cancel];
  }
}

- (id)newScopedTaskWithScope:(id)a3 session:(id)a4 transportScope:(id)a5 clientCacheIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CPLPushToTransportScopeTask alloc];
  v15 = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLPushToTransportScopeTask *)v14 initWithEngineLibrary:v15 session:v12 clientCacheIdentifier:v10 scope:v13 transportScope:v11];

  [(CPLPushToTransportScopeTask *)v16 setHighPriority:self->_highPriority];
  return v16;
}

- (id)scopeFilterInTransaction:(id)a3
{
  v4 = [(CPLEngineSyncTask *)self session];
  v5 = [v4 scopeIdentifiersExcludedFromPushToTransport];

  if (v5)
  {
    v6 = [(CPLEngineMultiscopeSyncTask *)self scopes];
    v7 = [v6 filterForExcludedScopeIdentifiers:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)enumerateScopesForTaskInTransaction:(id)a3
{
  highPriority = self->_highPriority;
  v4 = [(CPLEngineMultiscopeSyncTask *)self scopes];
  v5 = v4;
  if (highPriority)
  {
    [v4 enumeratorForScopesNeedingToPushHighPriorityChangesToTransport];
  }

  else
  {
    [v4 enumeratorForScopesNeedingToPushChangesToTransport];
  }
  v6 = ;

  return v6;
}

+ (BOOL)dontAutoRetry
{
  if (_dontAutoRetry)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"CPLDontAutoRetryPushToTransport"];

  return v4;
}

@end