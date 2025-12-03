@interface GCDaemon
+ (id)createRootWorkloop;
- (GCDaemon)init;
- (id)serviceFor:(id)for client:(id)client;
@end

@implementation GCDaemon

- (GCDaemon)init
{
  v12.receiver = self;
  v12.super_class = GCDaemon;
  v2 = [(GCDaemon *)&v12 init];
  createRootWorkloop = [objc_opt_class() createRootWorkloop];
  workloop = v2->_workloop;
  v2->_workloop = createRootWorkloop;

  v5 = objc_opt_new();
  configServiceConnection = v2->_configServiceConnection;
  v2->_configServiceConnection = v5;

  [(GCConfigXPCServiceConnection *)v2->_configServiceConnection setClient:v2];
  [(GCIPCRemoteConnection *)v2->_configServiceConnection resume];
  v7 = *MEMORY[0x1E69E9C50];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __16__GCDaemon_init__block_invoke;
  handler[3] = &unk_1E8413BA8;
  v8 = v2;
  v11 = v8;
  xpc_activity_register("com.apple.GameController.mobileasset.DB.update", v7, handler);

  return v8;
}

void __16__GCDaemon_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) && xpc_activity_get_state(v3) == 2)
  {
    v4 = _os_activity_create(&dword_1D2C3B000, "[DB Mobile Asset Manager] Update DB Asset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = [(GCConfigXPCServiceServiceConnection *)GCConfigurationAssetManagementServiceConnection connection:*(*(a1 + 32) + 16) withClient:0];
    v6 = [v5 result];

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __16__GCDaemon_init__block_invoke_2;
    v9[3] = &unk_1E8413B80;
    v7 = v3;
    v10 = v7;
    v11 = &v12;
    v8 = [v6 checkForNewAssets:1 forceCatalogRefresh:0 completion:v9];
    v13[3] = xpc_activity_add_eligibility_changed_handler();
    xpc_activity_set_state(v7, 4);

    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
  }
}

void __16__GCDaemon_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v4;
  xpc_activity_set_completion_status();
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    xpc_activity_remove_eligibility_changed_handler();
  }
}

uint64_t __16__GCDaemon_init__block_invoke_3(uint64_t a1, xpc_activity_t activity)
{
  result = xpc_activity_should_defer(activity);
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 cancel];
  }

  return result;
}

- (id)serviceFor:(id)for client:(id)client
{
  forCopy = for;
  clientCopy = client;
  if (&unk_1F4E42070 == forCopy)
  {
    v8 = self->_workloop;
  }

  else
  {
    if (&unk_1F4E3AFD8 == forCopy)
    {
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      configAssetManagementServiceConnection = selfCopy2->_configAssetManagementServiceConnection;
      if (!configAssetManagementServiceConnection)
      {
        v11 = [(GCConfigXPCServiceServiceConnection *)GCConfigurationAssetManagementServiceConnection connection:selfCopy2->_configServiceConnection withClient:clientCopy];
        result = [v11 result];
        v13 = selfCopy2->_configAssetManagementServiceConnection;
        selfCopy2->_configAssetManagementServiceConnection = result;

        configAssetManagementServiceConnection = selfCopy2->_configAssetManagementServiceConnection;
      }
    }

    else
    {
      if (&unk_1F4E3BA08 != forCopy)
      {
        v8 = 0;
        goto LABEL_13;
      }

      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      configGenericDeviceDBServiceConnection = selfCopy2->_configGenericDeviceDBServiceConnection;
      if (!configGenericDeviceDBServiceConnection || [(GCConfigXPCServiceServiceConnection *)configGenericDeviceDBServiceConnection isInvalid])
      {
        v15 = [(GCConfigXPCServiceServiceConnection *)_GCGenericDeviceDBServiceConnection connection:selfCopy2->_configServiceConnection withClient:clientCopy];
        result2 = [v15 result];
        v17 = selfCopy2->_configGenericDeviceDBServiceConnection;
        selfCopy2->_configGenericDeviceDBServiceConnection = result2;
      }

      configAssetManagementServiceConnection = selfCopy2->_configGenericDeviceDBServiceConnection;
    }

    v8 = configAssetManagementServiceConnection;
    objc_sync_exit(selfCopy2);
  }

LABEL_13:

  return v8;
}

+ (id)createRootWorkloop
{
  v2 = dispatch_workloop_create("GameController Root Workloop");

  return v2;
}

@end