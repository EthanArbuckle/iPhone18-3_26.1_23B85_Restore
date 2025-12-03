@interface MPCAssistantPause
- (void)pauseDevicesByUID:(id)d withRefId:(id)id audioRoutingInfo:(id)info completion:(id)completion;
- (void)pauseDevicesByUID:(id)d withRefId:(id)id audioRoutingInfo:(id)info source:(id)source completion:(id)completion;
@end

@implementation MPCAssistantPause

- (void)pauseDevicesByUID:(id)d withRefId:(id)id audioRoutingInfo:(id)info source:(id)source completion:(id)completion
{
  completionCopy = completion;
  v11 = MEMORY[0x1E69B0AE0];
  sourceCopy = source;
  idCopy = id;
  dCopy = d;
  v15 = [[v11 alloc] initWithName:@"MPCAssistantPause.pauseDevicesByUID" requestID:idCopy reason:sourceCopy];

  v16 = MEMORY[0x1E69B0990];
  allKeys = [dCopy allKeys];

  v18 = qos_class_self();
  v19 = dispatch_get_global_queue(v18, 0);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__MPCAssistantPause_pauseDevicesByUID_withRefId_audioRoutingInfo_source_completion___block_invoke;
  v21[3] = &unk_1E8238D28;
  v22 = completionCopy;
  v20 = completionCopy;
  [v16 pauseOutputDeviceUIDs:allKeys details:v15 queue:v19 completion:v21];
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

- (void)pauseDevicesByUID:(id)d withRefId:(id)id audioRoutingInfo:(id)info completion:(id)completion
{
  v10 = MEMORY[0x1E696AAE8];
  completionCopy = completion;
  idCopy = id;
  dCopy = d;
  mainBundle = [v10 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(MPCAssistantPause *)self pauseDevicesByUID:dCopy withRefId:idCopy audioRoutingInfo:*&info source:bundleIdentifier completion:completionCopy];
}

@end