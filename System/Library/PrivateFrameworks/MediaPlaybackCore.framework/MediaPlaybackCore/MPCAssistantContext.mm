@interface MPCAssistantContext
- (MPCAssistantContext)init;
- (void)modifySystemMusicContextForDestination:(id)destination completion:(id)completion;
@end

@implementation MPCAssistantContext

- (void)modifySystemMusicContextForDestination:(id)destination completion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__MPCAssistantContext_modifySystemMusicContextForDestination_completion___block_invoke;
  aBlock[3] = &unk_1E8238C08;
  v8 = completionCopy;
  v17 = v8;
  v9 = _Block_copy(aBlock);
  outputGroupID = [destinationCopy outputGroupID];

  if (outputGroupID)
  {
    discovery = self->_discovery;
    outputGroupID2 = [destinationCopy outputGroupID];
    [(MPCAssistantDiscovery *)discovery discoverAirplayDevicesMatchingGroupID:outputGroupID2 completion:v9];
  }

  else
  {
    outputDeviceUIDs = [destinationCopy outputDeviceUIDs];
    v14 = [outputDeviceUIDs count];

    if (!v14)
    {
      (*(v8 + 2))(v8, 0);
      goto LABEL_6;
    }

    v15 = self->_discovery;
    outputGroupID2 = [destinationCopy outputDeviceUIDs];
    [(MPCAssistantDiscovery *)v15 discoverAirplayDevicesMatchingUIDs:outputGroupID2 completion:v9];
  }

LABEL_6:
}

void __73__MPCAssistantContext_modifySystemMusicContextForDestination_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "Setting output devices on the shared audio presentation context: %{public}@", buf, 0xCu);
    }

    v5 = dispatch_get_global_queue(0, 0);
    MRAVOutputContextGetSharedAudioPresentationContext();
    v7 = *(a1 + 32);
    MRAVOutputContextSetOutputDevices();
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = MPCAssistantCreateError(1);
    (*(v6 + 16))(v6, v5);
  }
}

void __73__MPCAssistantContext_modifySystemMusicContextForDestination_completion___block_invoke_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = a2;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "Failed to set output devices on the shared audio presentation context: %{public}@", &v8, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = MPCAssistantCreateError(4);
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);

    v7();
  }
}

- (MPCAssistantContext)init
{
  v6.receiver = self;
  v6.super_class = MPCAssistantContext;
  v2 = [(MPCAssistantContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPCAssistantDiscovery);
    discovery = v2->_discovery;
    v2->_discovery = v3;
  }

  return v2;
}

@end