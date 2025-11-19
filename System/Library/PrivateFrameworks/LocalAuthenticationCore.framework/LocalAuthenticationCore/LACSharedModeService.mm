@interface LACSharedModeService
- (LACSharedModeService)initWithReplyQueue:(id)a3;
- (id)_dataSource;
- (id)_policyCoordinator;
- (id)_policyTraitsManager;
- (id)processor;
@end

@implementation LACSharedModeService

LACSharedModeDataSourceDefaultsDecorator *__35__LACSharedModeService__dataSource__block_invoke(uint64_t a1)
{
  v2 = [[LACSharedModeDataSourceFTRCAdapter alloc] initWithReplyQueue:*(*(a1 + 32) + 8)];
  if (+[LACGlobalDomain osVariantAllowsDomainOverrides])
  {
    v3 = [[LACSharedModeDataSourceDefaultsDecorator alloc] initWithDataSource:v2 replyQueue:*(*(a1 + 32) + 8)];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

- (id)_policyCoordinator
{
  v3 = objc_alloc_init(LACSharedModePolicyCoordinatorACMStorageRequestFactory);
  v4 = objc_alloc_init(LACSharedModePolicyCoordinatorACMStorage);
  v5 = [[LACSharedModePolicyCoordinatorACMAdapter alloc] initWithReplyQueue:self->_replyQueue storageRequestFactory:v3 storage:v4];

  return v5;
}

- (id)processor
{
  v3 = [LACSharedModeProcessor alloc];
  replyQueue = self->_replyQueue;
  v5 = [(LACSharedModeService *)self _dataSource];
  v6 = [(LACSharedModeService *)self _policyTraitsManager];
  v7 = [(LACSharedModeService *)self _policyCoordinator];
  v8 = [(LACSharedModeProcessor *)v3 initWithReplyQueue:replyQueue dataSource:v5 policyTraitsManager:v6 policyCoordinator:v7];

  return v8;
}

- (id)_policyTraitsManager
{
  v2 = objc_alloc_init(LACSharedModePolicyTraitsManager);

  return v2;
}

- (id)_dataSource
{
  v3 = [LACSharedModeDataSourceTaskDecorator alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__LACSharedModeService__dataSource__block_invoke;
  v7[3] = &unk_1E7A96790;
  v7[4] = self;
  v4 = __35__LACSharedModeService__dataSource__block_invoke(v7);
  v5 = [(LACSharedModeDataSourceTaskDecorator *)v3 initWithDataSource:v4 runtime:self->_runtime replyQueue:self->_replyQueue];

  return v5;
}

- (LACSharedModeService)initWithReplyQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = LACSharedModeService;
  v6 = [(LACSharedModeService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, a3);
    v8 = objc_alloc_init(LACSharedModeDataSourceTaskDecoratorRuntime);
    runtime = v7->_runtime;
    v7->_runtime = v8;
  }

  return v7;
}

LACSharedModeDataSourceFTRCAdapter *__35__LACSharedModeService__dataSource__block_invoke_2(uint64_t a1)
{
  v1 = [[LACSharedModeDataSourceFTRCAdapter alloc] initWithReplyQueue:*(*(a1 + 32) + 8)];

  return v1;
}

@end