@interface MPCAssistantDiscovery
- (MPCAssistantDiscovery)init;
- (void)_discoverAirplayDevices:(id)devices;
- (void)dealloc;
- (void)discoverAirplayDevicesMatchingGroupID:(id)d completion:(id)completion;
- (void)discoverAirplayDevicesMatchingLogicalDeviceIDs:(id)ds expectedCount:(unint64_t)count completion:(id)completion;
- (void)discoverAirplayDevicesMatchingUIDs:(id)ds completion:(id)completion;
- (void)discoverRemoteControlEndpointsMatchingUIDs:(id)ds completion:(id)completion;
- (void)stopDiscovery;
@end

@implementation MPCAssistantDiscovery

- (void)_discoverAirplayDevices:(id)devices
{
  v16 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  MRAVReconnaissanceSessionSetReturnPartialResults();
  auxiliarySession = [MEMORY[0x1E6958460] auxiliarySession];
  v5 = *MEMORY[0x1E6958068];
  v13 = 0;
  v6 = [auxiliarySession setCategory:v5 error:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "Audio session category failed: %{public}@ (AirPlay devices may be missed)", buf, 0xCu);
    }
  }

  [auxiliarySession opaqueSessionID];
  MRAVReconnaissanceSessionSetTargetAudioSessionID();
  v11 = auxiliarySession;
  v12 = devicesCopy;
  v9 = devicesCopy;
  v10 = auxiliarySession;
  MRAVReconnaissanceSessionBeginSearch();
}

void __49__MPCAssistantDiscovery__discoverAirplayDevices___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(a1 + 32);
  v4(v3, a2);
}

- (void)stopDiscovery
{
  reconSession = self->_reconSession;
  if (reconSession)
  {
    CFRelease(reconSession);
    self->_reconSession = 0;
  }
}

- (void)discoverRemoteControlEndpointsMatchingUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  [(MPCAssistantDiscovery *)self stopDiscovery];
  v8 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();

  self->_reconSession = v8;
  MRAVReconnaissanceSessionSetWaitForCompleteClusters();
  MRAVReconnaissanceSessionSetWaitForUnanimousEndpoints();
  MRAVReconnaissanceSessionSetReturnPartialResults();
  v10 = completionCopy;
  v9 = completionCopy;
  MRAVReconnaissanceSessionBeginEndpointsSearch();
}

void __79__MPCAssistantDiscovery_discoverRemoteControlEndpointsMatchingUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v11 = a3;
    v19 = a2;
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134218240;
      v22 = [v11 count];
      v23 = 2048;
      v24 = [v19 count];
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "Found %lu endpoints, %lu devices.", &v21, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_17;
  }

  if ([v7 code] == 26)
  {
    v9 = [v8 domain];
    v10 = [v9 isEqualToString:*MEMORY[0x1E69B0DC0]];

    if (v10)
    {
      v11 = a3;
      v12 = [v11 count];
      v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v14)
        {
          v21 = 138543362;
          v22 = v11;
          v15 = "Timed out with partial discovery. Found endpoints: %{public}@";
          v16 = v13;
          v17 = 12;
LABEL_15:
          _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, v15, &v21, v17);
        }
      }

      else if (v14)
      {
        LOWORD(v21) = 0;
        v15 = "Timed out with no devices discovered";
        v16 = v13;
        v17 = 2;
        goto LABEL_15;
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), v11);
LABEL_17:

      goto LABEL_18;
    }
  }

  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21 = 138543362;
    v22 = v8;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "Failed to discover output devices error: %{public}@", &v21, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_18:
}

- (void)discoverAirplayDevicesMatchingUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  [(MPCAssistantDiscovery *)self stopDiscovery];
  v7 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();

  self->_reconSession = v7;
  MRAVReconnaissanceSessionSetWaitForCompleteClusters();
  [(MPCAssistantDiscovery *)self _discoverAirplayDevices:completionCopy];
}

- (void)discoverAirplayDevicesMatchingLogicalDeviceIDs:(id)ds expectedCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  [(MPCAssistantDiscovery *)self stopDiscovery];
  v8 = MRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDs();

  self->_reconSession = v8;
  MRAVReconnaissanceSessionSetWaitForCompleteClusters();
  MRAVReconnaissanceSessionSetExpectedLogicalDevices();
  [(MPCAssistantDiscovery *)self _discoverAirplayDevices:completionCopy];
}

- (void)discoverAirplayDevicesMatchingGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  [(MPCAssistantDiscovery *)self stopDiscovery];
  v7 = MRAVReconnaissanceSessionCreateWithMatchingOutputGroupIDFeatures();

  self->_reconSession = v7;
  [(MPCAssistantDiscovery *)self _discoverAirplayDevices:completionCopy];
}

- (void)dealloc
{
  [(MPCAssistantDiscovery *)self stopDiscovery];
  v3.receiver = self;
  v3.super_class = MPCAssistantDiscovery;
  [(MPCAssistantDiscovery *)&v3 dealloc];
}

- (MPCAssistantDiscovery)init
{
  v3.receiver = self;
  v3.super_class = MPCAssistantDiscovery;
  result = [(MPCAssistantDiscovery *)&v3 init];
  if (result)
  {
    result->_waitForCompleteClusters = 1;
  }

  return result;
}

@end