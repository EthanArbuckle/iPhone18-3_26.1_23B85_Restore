@interface GCGenericDeviceDBServiceConnection
@end

@implementation GCGenericDeviceDBServiceConnection

void __57___GCGenericDeviceDBServiceConnection_hasModelForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57___GCGenericDeviceDBServiceConnection_hasModelForDevice___block_invoke_2;
  v8[3] = &unk_1E8414DC8;
  v9 = v5;
  v7 = v5;
  [a2 hasModelForDevice:v6 reply:v8];
}

void __57___GCGenericDeviceDBServiceConnection_hasModelForDevice___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  (*(v2 + 16))(v2, v3, 0);
}

void __62___GCGenericDeviceDBServiceConnection_preparedModelForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___GCGenericDeviceDBServiceConnection_preparedModelForDevice___block_invoke_2;
  v8[3] = &unk_1E8414E18;
  v9 = v5;
  v7 = v5;
  [a2 preparedModelForDevice:v6 reply:v8];
}

@end