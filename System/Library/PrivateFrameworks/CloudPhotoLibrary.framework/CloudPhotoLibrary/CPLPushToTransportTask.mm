@interface CPLPushToTransportTask
+ (BOOL)dontAutoRetry;
- (id)enumerateScopesForTaskInTransaction:(id)transaction;
- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier;
- (id)scopeFilterInTransaction:(id)transaction;
- (id)taskIdentifier;
- (void)cancel:(BOOL)cancel;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskDidFinishWithError:(id)error;
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

- (void)taskDidFinishWithError:(id)error
{
  highPriority = self->_highPriority;
  errorCopy = error;
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  scheduler = [engineLibrary scheduler];
  v8 = scheduler;
  v9 = &CPLEngineElementEndOfUploadHighPriority;
  if (!highPriority)
  {
    v9 = &CPLEngineElementEndOfUpload;
  }

  [scheduler willRunEngineElement:*v9];

  v10.receiver = self;
  v10.super_class = CPLPushToTransportTask;
  [(CPLEngineSyncTask *)&v10 taskDidFinishWithError:errorCopy];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CPLPushToTransportTask_task_didFinishWithError___block_invoke;
  v7[3] = &unk_1E861D310;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
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

- (void)cancel:(BOOL)cancel
{
  if (cancel)
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

- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transportScopeCopy = transportScope;
  sessionCopy = session;
  scopeCopy = scope;
  v14 = [CPLPushToTransportScopeTask alloc];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLPushToTransportScopeTask *)v14 initWithEngineLibrary:engineLibrary session:sessionCopy clientCacheIdentifier:identifierCopy scope:scopeCopy transportScope:transportScopeCopy];

  [(CPLPushToTransportScopeTask *)v16 setHighPriority:self->_highPriority];
  return v16;
}

- (id)scopeFilterInTransaction:(id)transaction
{
  session = [(CPLEngineSyncTask *)self session];
  scopeIdentifiersExcludedFromPushToTransport = [session scopeIdentifiersExcludedFromPushToTransport];

  if (scopeIdentifiersExcludedFromPushToTransport)
  {
    scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
    v7 = [scopes filterForExcludedScopeIdentifiers:scopeIdentifiersExcludedFromPushToTransport];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)enumerateScopesForTaskInTransaction:(id)transaction
{
  highPriority = self->_highPriority;
  scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
  v5 = scopes;
  if (highPriority)
  {
    [scopes enumeratorForScopesNeedingToPushHighPriorityChangesToTransport];
  }

  else
  {
    [scopes enumeratorForScopesNeedingToPushChangesToTransport];
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

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"CPLDontAutoRetryPushToTransport"];

  return v4;
}

@end