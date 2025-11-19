@interface MPCAssistantPause
- (void)pauseDevicesByUID:(id)a3 withRefId:(id)a4 audioRoutingInfo:(id)a5 completion:(id)a6;
- (void)pauseDevicesByUID:(id)a3 withRefId:(id)a4 audioRoutingInfo:(id)a5 source:(id)a6 completion:(id)a7;
@end

@implementation MPCAssistantPause

- (void)pauseDevicesByUID:(id)a3 withRefId:(id)a4 audioRoutingInfo:(id)a5 source:(id)a6 completion:(id)a7
{
  v10 = a7;
  v11 = MEMORY[0x1E69B0AE0];
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[v11 alloc] initWithName:@"MPCAssistantPause.pauseDevicesByUID" requestID:v13 reason:v12];

  v16 = MEMORY[0x1E69B0990];
  v17 = [v14 allKeys];

  v18 = qos_class_self();
  v19 = dispatch_get_global_queue(v18, 0);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__MPCAssistantPause_pauseDevicesByUID_withRefId_audioRoutingInfo_source_completion___block_invoke;
  v21[3] = &unk_1E8238D28;
  v22 = v10;
  v20 = v10;
  [v16 pauseOutputDeviceUIDs:v17 details:v15 queue:v19 completion:v21];
}

void __84__MPCAssistantPause_pauseDevicesByUID_withRefId_audioRoutingInfo_source_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 description];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)pauseDevicesByUID:(id)a3 withRefId:(id)a4 audioRoutingInfo:(id)a5 completion:(id)a6
{
  v10 = MEMORY[0x1E696AAE8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v15 = [v10 mainBundle];
  v14 = [v15 bundleIdentifier];
  [(MPCAssistantPause *)self pauseDevicesByUID:v13 withRefId:v12 audioRoutingInfo:*&a5 source:v14 completion:v11];
}

@end