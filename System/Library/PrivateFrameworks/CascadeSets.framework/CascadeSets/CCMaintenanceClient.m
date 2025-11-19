@interface CCMaintenanceClient
+ (id)sharedInstance;
- (BOOL)performNightlyMaintenanceWithError:(id *)a3;
- (CCMaintenanceClient)init;
- (id)client;
@end

@implementation CCMaintenanceClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CCMaintenanceClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, block);
  }

  v2 = sharedInstance__pasExprOnceResult;

  return v2;
}

void __37__CCMaintenanceClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

- (CCMaintenanceClient)init
{
  v7.receiver = self;
  v7.super_class = CCMaintenanceClient;
  v2 = [(CCMaintenanceClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.cascade.CCMaintenanceClient", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (id)client
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2ED5D00];
  v3 = [MEMORY[0x1E696B0B8] bm_connectionWithMachServiceName:@"com.apple.cascade.Maintenance" queue:0 options:0];
  v4 = [[CCXPCClient alloc] initWithRemoteObjectXPCInterface:v2 exportedXPCInterface:0 connection:v3 clientId:@"CCMaintenanceClient" interruptionCode:5 invalidationCode:4 useCase:0];

  return v4;
}

- (BOOL)performNightlyMaintenanceWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CCMaintenanceClient_performNightlyMaintenanceWithError___block_invoke;
  v7[3] = &unk_1E7C8ADD0;
  v7[4] = &v8;
  [(CCMaintenanceClient *)self _performNightlyMaintenanceSynchronously:1 completion:v7];
  v4 = v9[5];
  if (a3 && v4)
  {
    v4 = v4;
    *a3 = v4;
  }

  v5 = v4 == 0;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __74__CCMaintenanceClient__performNightlyMaintenanceSynchronously_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__CCMaintenanceClient__performNightlyMaintenanceSynchronously_completion___block_invoke_2;
  v6[3] = &unk_1E7C8AE18;
  v7 = v4;
  v5 = v4;
  [a2 performNightlyMaintenanceWithCompletionHandler:v6];
}

void __74__CCMaintenanceClient__performNightlyMaintenanceSynchronously_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__CCMaintenanceClient__performNightlyMaintenanceSynchronously_completion___block_invoke_2_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __74__CCMaintenanceClient__performNightlyMaintenanceSynchronously_completion___block_invoke_2_cold_2(v5);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__CCMaintenanceClient__performNightlyMaintenanceSynchronously_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "CCMaintenanceClient performNightlyMaintenance failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end