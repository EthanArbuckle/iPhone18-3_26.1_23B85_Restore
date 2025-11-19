@interface GCGenericDeviceDriverConfigurationServiceConnection
@end

@implementation GCGenericDeviceDriverConfigurationServiceConnection

void __75___GCGenericDeviceDriverConfigurationServiceConnection_fetchDeviceSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75___GCGenericDeviceDriverConfigurationServiceConnection_fetchDeviceSnapshot__block_invoke_2;
  v6[3] = &unk_1E8414FF0;
  v7 = v4;
  v5 = v4;
  [a2 fetchDeviceSnapshotWithReply:v6];
}

void __75___GCGenericDeviceDriverConfigurationServiceConnection_applyConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75___GCGenericDeviceDriverConfigurationServiceConnection_applyConfiguration___block_invoke_2;
  v8[3] = &unk_1E8414DC8;
  v9 = v5;
  v7 = v5;
  [a2 applyConfiguration:v6 withReply:v8];
}

@end