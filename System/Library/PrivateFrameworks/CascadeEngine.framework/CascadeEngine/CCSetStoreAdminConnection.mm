@interface CCSetStoreAdminConnection
- (CCSetStoreAdminConnection)initWithConnection:(id)a3 writeAccess:(id)a4;
- (id)_shouldDeferActivityBlock;
- (void)performMaintenanceOnAllSets:(id)a3 completion:(id)a4;
- (void)removeAllSets:(id)a3 completion:(id)a4;
@end

@implementation CCSetStoreAdminConnection

- (CCSetStoreAdminConnection)initWithConnection:(id)a3 writeAccess:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CCSetStoreAdminConnection;
  v9 = [(CCSetStoreAdminConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_writeAccess, a4);
  }

  return v10;
}

- (id)_shouldDeferActivityBlock
{
  v2 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CCSetStoreAdminConnection__shouldDeferActivityBlock__block_invoke_1;
  v6[3] = &unk_1E85C30D8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x1DA74EA40](v6);

  return v4;
}

void __54__CCSetStoreAdminConnection__shouldDeferActivityBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__CCSetStoreAdminConnection__shouldDeferActivityBlock__block_invoke_cold_1(v2, v3);
  }
}

uint64_t __54__CCSetStoreAdminConnection__shouldDeferActivityBlock__block_invoke_1(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v1 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CCSetStoreAdminConnection__shouldDeferActivityBlock__block_invoke_2;
  v6[3] = &unk_1E85C30B0;
  v6[4] = &v7;
  [v1 shouldDeferCurrentActivity:v6];
  if (*(v8 + 24) == 1)
  {
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA444000, v2, OS_LOG_TYPE_DEFAULT, "Admin client has signaled to defer current activity", v5, 2u);
    }

    v3 = *(v8 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v3 & 1;
}

- (void)performMaintenanceOnAllSets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  writeAccess = self->_writeAccess;
  v9 = *MEMORY[0x1E698E940];
  v17 = 0;
  v10 = [(CCDataResourceWriteAccess *)writeAccess requestAccessToResource:v6 withMode:3 useCase:v9 error:&v17];
  v11 = v17;
  if (v10)
  {
    v12 = self->_writeAccess;
    v13 = [(CCSetStoreAdminConnection *)self _shouldDeferActivityBlock];
    v14 = [(CCDataResourceWriteAccess *)v12 performMaintenanceActivity:v13 accessAssertion:v10];

    if (v7)
    {
      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CCSetStoreAdminConnection performMaintenanceOnAllSets:completion:];
    }

    if (v7)
    {
      v15 = 2;
LABEL_10:
      v7[2](v7, v15);
    }
  }
}

- (void)removeAllSets:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  writeAccess = self->_writeAccess;
  v9 = *MEMORY[0x1E698E940];
  v24 = 0;
  v10 = [(CCDataResourceWriteAccess *)writeAccess requestAccessToResource:v6 withMode:3 useCase:v9 error:&v24];
  v11 = v24;
  if (v10)
  {
    v12 = MEMORY[0x1E698E9C8];
    v13 = [v10 container];
    v14 = [v12 pathForResource:v6 inContainer:v13];

    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v23 = v11;
    v16 = [v15 removeItemAtPath:v14 error:&v23];
    v17 = v23;

    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"Failed to remove";
      if (v16)
      {
        v19 = @"Successfully removed";
      }

      *buf = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_1DA444000, v18, OS_LOG_TYPE_DEFAULT, "%@ sets root directory: %@", buf, 0x16u);
    }

    if (v7)
    {
      if (v16)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      v7[2](v7, v20);
    }

    v11 = v17;
  }

  else
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CCSetStoreAdminConnection removeAllSets:completion:];
    }

    if (v7)
    {
      v7[2](v7, 2);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __54__CCSetStoreAdminConnection__shouldDeferActivityBlock__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DA444000, a2, OS_LOG_TYPE_ERROR, "Failed to check admin client for activity deferral: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)performMaintenanceOnAllSets:completion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA444000, v0, v1, "Failed to obtain access for maintenance at resource: %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeAllSets:completion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1DA444000, v0, v1, "Failed to obtain access to remove sets root directory with resource: %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end