@interface CCSetStoreAdminXPCClient
+ (id)wrappedCompletion:(id)a3 retainingClient:(id)a4;
+ (void)performMaintenanceOnAllSets:(id)a3 clientId:(id)a4 shouldDeferBlock:(id)a5;
+ (void)removeAllSets:(id)a3 completion:(id)a4;
- (CCSetStoreAdminXPCClient)initWithClientId:(id)a3 shouldDeferBlock:(id)a4;
- (void)shouldDeferCurrentActivity:(id)a3;
@end

@implementation CCSetStoreAdminXPCClient

+ (id)wrappedCompletion:(id)a3 retainingClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CCSetStoreAdminXPCClient_wrappedCompletion_retainingClient___block_invoke;
  v11[3] = &unk_1E7C8B768;
  v12 = v6;
  v13 = v5;
  v7 = v5;
  v8 = v6;
  v9 = _Block_copy(v11);

  return v9;
}

uint64_t __62__CCSetStoreAdminXPCClient_wrappedCompletion_retainingClient___block_invoke(uint64_t a1, int a2)
{
  v4 = __biome_log_for_category();
  v5 = v4;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __62__CCSetStoreAdminXPCClient_wrappedCompletion_retainingClient___block_invoke_cold_2(a1, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__CCSetStoreAdminXPCClient_wrappedCompletion_retainingClient___block_invoke_cold_1(a2, a1, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)performMaintenanceOnAllSets:(id)a3 clientId:(id)a4 shouldDeferBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [objc_alloc(objc_opt_class()) initWithClientId:v9 shouldDeferBlock:v8];

  v11 = [objc_opt_class() wrappedCompletion:0 retainingClient:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__CCSetStoreAdminXPCClient_performMaintenanceOnAllSets_clientId_shouldDeferBlock___block_invoke;
  v13[3] = &unk_1E7C8B790;
  v14 = v7;
  v12 = v7;
  [v10 serviceRequest:1 completion:v11 usingBlock:v13];
}

+ (void)removeAllSets:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithClientId:@"removeAllSets" shouldDeferBlock:0];
  v8 = [objc_opt_class() wrappedCompletion:v6 retainingClient:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CCSetStoreAdminXPCClient_removeAllSets_completion___block_invoke;
  v10[3] = &unk_1E7C8B790;
  v11 = v5;
  v9 = v5;
  [v7 serviceRequest:1 completion:v8 usingBlock:v10];
}

- (CCSetStoreAdminXPCClient)initWithClientId:(id)a3 shouldDeferBlock:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x1E698E940];
  v12.receiver = self;
  v12.super_class = CCSetStoreAdminXPCClient;
  v8 = [(CCXPCClient *)&v12 initWithRemoteObjectInterface:&unk_1F2ED8570 exportedInterface:&unk_1F2ED2180 serviceName:@"com.apple.SetStoreUpdateService" clientId:a3 interruptionCode:5 invalidationCode:4 useCase:v7];
  if (v8)
  {
    v9 = _Block_copy(v6);
    shouldDeferBlock = v8->_shouldDeferBlock;
    v8->_shouldDeferBlock = v9;
  }

  return v8;
}

- (void)shouldDeferCurrentActivity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    shouldDeferBlock = self->_shouldDeferBlock;
    if (shouldDeferBlock)
    {
      v6 = shouldDeferBlock[2]();
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(CCSetStoreAdminXPCClient *)v6 shouldDeferCurrentActivity:v7];
      }
    }

    else
    {
      v6 = 0;
    }

    v4[2](v4, v6);
  }
}

void __62__CCSetStoreAdminXPCClient_wrappedCompletion_retainingClient___block_invoke_cold_1(unsigned __int16 a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = CCSetStoreAdminServiceResultDescription(a1);
  v6 = *(a2 + 32);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_ERROR, "Failed to complete client activity (serviceResult: %@): %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __62__CCSetStoreAdminXPCClient_wrappedCompletion_retainingClient___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Successfully completed client activity: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)shouldDeferCurrentActivity:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "CCSetStoreAdminXPCClient shouldDeferBlock: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end