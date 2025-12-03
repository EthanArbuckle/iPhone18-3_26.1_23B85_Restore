@interface GCConfigXPCService
- (GCConfigXPCService)init;
- (id)serviceFor:(id)for client:(id)client;
- (void)connectToAssetManagementServiceWithClient:(id)client reply:(id)reply;
- (void)connectToGenericDeviceDBServiceWithClient:(id)client reply:(id)reply;
@end

@implementation GCConfigXPCService

- (GCConfigXPCService)init
{
  v12.receiver = self;
  v12.super_class = GCConfigXPCService;
  v2 = [(GCConfigXPCService *)&v12 init];
  v3 = GCLookupDispatchWorkloop(v2, 0);
  workloop = v2->_workloop;
  v2->_workloop = v3;

  if (!v2->_workloop)
  {
    v5 = dispatch_workloop_create("GameController Root Workloop");
    v6 = v2->_workloop;
    v2->_workloop = v5;
  }

  v7 = [[_GCConfigurationDataManager alloc] initWithProvider:v2];
  configurationManager = v2->_configurationManager;
  v2->_configurationManager = v7;

  v9 = [[_GCGenericDeviceDB alloc] initWithProvider:v2];
  genericDeviceDB = v2->_genericDeviceDB;
  v2->_genericDeviceDB = v9;

  return v2;
}

- (id)serviceFor:(id)for client:(id)client
{
  forCopy = for;
  if (&unk_1F4E42070 != forCopy || (workloop = self->_workloop) == 0)
  {
    if (objc_opt_class() == forCopy)
    {
      v8 = 16;
    }

    else
    {
      if (&unk_1F4E3BA08 != forCopy)
      {
        v6 = 0;
        goto LABEL_11;
      }

      v8 = 24;
    }

    workloop = *(&self->super.isa + v8);
  }

  v6 = workloop;
LABEL_11:

  return v6;
}

- (void)connectToAssetManagementServiceWithClient:(id)client reply:(id)reply
{
  v17[2] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  replyCopy = reply;
  v8 = _os_activity_create(&dword_1D2C3B000, "[Config Service/XPC] Connect to AssetManagementService", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = GCLookupService(self, &unk_1F4E3AFD8, 0, 0);
  if (v9)
  {
    v10 = [[GCConfigurationAssetManagementServiceXPCProxy alloc] initWithService:v9];
    replyCopy[2](replyCopy, v10, 0);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A588];
    v16[0] = *MEMORY[0x1E696A578];
    v16[1] = v12;
    v17[0] = @"Connect to AssetManagementService failed";
    v17[1] = @"Service not found";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v13 = [v11 errorWithDomain:@"GCServiceError" code:1 userInfo:v10];
    (replyCopy)[2](replyCopy, 0, v13);
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)connectToGenericDeviceDBServiceWithClient:(id)client reply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  v8 = _os_activity_create(&dword_1D2C3B000, "[Config Service/XPC] Connect to GenericDeviceDBService", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v8, &v9);
  replyCopy[2](replyCopy, self->_genericDeviceDB, 0);
  os_activity_scope_leave(&v9);
}

@end