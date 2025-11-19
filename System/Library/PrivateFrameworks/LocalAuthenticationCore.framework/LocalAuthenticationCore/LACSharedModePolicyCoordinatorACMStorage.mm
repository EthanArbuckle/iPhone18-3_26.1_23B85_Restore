@interface LACSharedModePolicyCoordinatorACMStorage
- (LACSharedModePolicyCoordinatorACMStorage)init;
- (void)performRequest:(id)a3 completion:(id)a4;
@end

@implementation LACSharedModePolicyCoordinatorACMStorage

- (LACSharedModePolicyCoordinatorACMStorage)init
{
  v8.receiver = self;
  v8.super_class = LACSharedModePolicyCoordinatorACMStorage;
  v2 = [(LACSharedModePolicyCoordinatorACMStorage *)&v8 init];
  if (v2)
  {
    v3 = [LACSecureStorage alloc];
    v4 = [[LACSecureStorageConfiguration alloc] initWithBypassEntitlementChecks:1];
    v5 = [(LACSecureStorage *)v3 initWithConfig:v4];
    storage = v2->_storage;
    v2->_storage = v5;
  }

  return v2;
}

- (void)performRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  storage = self->_storage;
  v8 = a3;
  v9 = [v8 value];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__LACSharedModePolicyCoordinatorACMStorage_performRequest_completion___block_invoke;
  v11[3] = &unk_1E7A97310;
  v12 = v6;
  v10 = v6;
  [(LACSecureStorage *)storage setObject:v9 forRequest:v8 completionHandler:v11];
}

@end