@interface CCSetStoreUpdateServiceExported
- (BOOL)_setupAdminConnection;
- (CCSetStoreUpdateServiceExported)initWithQueue:(id)a3 process:(id)a4 connection:(id)a5 writeAccess:(id)a6 donateConnectionFactory:(id)a7;
- (id)useCase;
- (void)performMaintenanceOnAllSets:(id)a3 completion:(id)a4;
- (void)removeAllSets:(id)a3 completion:(id)a4;
- (void)useCase;
@end

@implementation CCSetStoreUpdateServiceExported

- (id)useCase
{
  v3 = [MEMORY[0x1E696B0B8] currentConnection];
  v4 = [v3 bm_remoteUseCase];

  useCase = self->_useCase;
  p_useCase = &self->_useCase;
  v5 = useCase;
  if (useCase)
  {
    if (v4 && ([(NSString *)v5 isEqual:v4]& 1) == 0)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(CCSetStoreUpdateServiceExported *)p_useCase useCase];
      }
    }

    v9 = *p_useCase;
  }

  else
  {
    objc_storeStrong(p_useCase, v4);
    v9 = v4;
  }

  v10 = v9;

  return v9;
}

- (CCSetStoreUpdateServiceExported)initWithQueue:(id)a3 process:(id)a4 connection:(id)a5 writeAccess:(id)a6 donateConnectionFactory:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CCSetStoreUpdateServiceExported;
  v17 = [(CCSetStoreUpdateServiceExported *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_process, a4);
    objc_storeStrong(&v18->_writeAccess, a6);
    objc_storeStrong(&v18->_donateConnectionFactory, a7);
    objc_storeStrong(&v18->_queue, a3);
    objc_storeStrong(&v18->_connection, a5);
  }

  return v18;
}

- (BOOL)_setupAdminConnection
{
  v3 = MEMORY[0x1E698E970];
  process = self->_process;
  v5 = [(CCSetStoreUpdateServiceExported *)self useCase];
  v6 = [v3 policyForProcess:process connectionFlags:0 useCase:v5];

  v7 = [v6 allowsAccessToAllSetsWithMode:3];
  if (v7)
  {
    v8 = [[CCSetStoreAdminConnection alloc] initWithConnection:self->_connection writeAccess:self->_writeAccess];
    adminConnection = self->_adminConnection;
    self->_adminConnection = v8;
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CCSetStoreUpdateServiceExported *)v10 _setupAdminConnection];
    }
  }

  return v7;
}

- (void)performMaintenanceOnAllSets:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(CCSetStoreUpdateServiceExported *)self _setupAdminConnection])
  {
    [(CCSetStoreAdminConnection *)self->_adminConnection performMaintenanceOnAllSets:v7 completion:v6];
  }

  else
  {
    v6[2](v6, 2);
  }
}

- (void)removeAllSets:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(CCSetStoreUpdateServiceExported *)self _setupAdminConnection])
  {
    [(CCSetStoreAdminConnection *)self->_adminConnection removeAllSets:v7 completion:v6];
  }

  else
  {
    v6[2](v6, 2);
  }
}

- (void)useCase
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_1DA444000, log, OS_LOG_TYPE_FAULT, "CCSetDonationServerExported - Ignoring use-case change from %@ to %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_setupDonateConnectionWithItemType:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 descriptionOfProcessAndUseCase];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setupDonateConnectionWithItemType:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 descriptionOfProcessAndUseCase];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

@end