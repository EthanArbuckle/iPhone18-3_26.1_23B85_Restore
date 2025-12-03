@interface MPCAssistantEndpointContext
- (MPCAssistantEndpointContext)init;
- (void)_discoverLocalEndpointFromClusterUsingDeviceInfo:(id)info completion:(id)completion;
- (void)_discoverLocalEndpointFromDeviceInfo:(id)info completion:(id)completion;
- (void)_discoverLocalEndpointFromHomeTheaterUsingDeviceInfo:(id)info completion:(id)completion;
- (void)_discoverLocalEndpointFromMultiplayerUsingDeviceInfo:(id)info completion:(id)completion;
- (void)_modifyOutputDevices:(id)devices onEndpoint:(id)endpoint completion:(id)completion;
- (void)_updateDiscoverableDeviceList:(id)list deviceInfo:(id)info completion:(id)completion;
- (void)modifySystemMusicContextForDestination:(id)destination completion:(id)completion;
- (void)modifySystemMusicContextForEndpointDestination:(id)destination completion:(id)completion;
- (void)modifySystemMusicContextForEndpointDestination:(id)destination discoveryHandler:(id)handler completion:(id)completion;
@end

@implementation MPCAssistantEndpointContext

- (void)_modifyOutputDevices:(id)devices onEndpoint:(id)endpoint completion:(id)completion
{
  completionCopy = completion;
  callbackQueue = self->_callbackQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__MPCAssistantEndpointContext__modifyOutputDevices_onEndpoint_completion___block_invoke;
  v11[3] = &unk_1E8238D28;
  v12 = completionCopy;
  v10 = completionCopy;
  [endpoint setOutputDevices:devices initiator:@"MPCAssistantEndpointContext" withReplyQueue:callbackQueue completion:v11];
}

void __74__MPCAssistantEndpointContext__modifyOutputDevices_onEndpoint_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (MRMediaRemoteErrorIsInformational() & 1) == 0)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "Failed to set output devices on primary endpoint: %{public}@", &v7, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = MPCAssistantCreateError(4);
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_discoverLocalEndpointFromMultiplayerUsingDeviceInfo:(id)info completion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  discoveryEndpoint = self->_discoveryEndpoint;
  deviceUID = [info deviceUID];
  v13[0] = deviceUID;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__MPCAssistantEndpointContext__discoverLocalEndpointFromMultiplayerUsingDeviceInfo_completion___block_invoke;
  v11[3] = &unk_1E8231030;
  v12 = completionCopy;
  v10 = completionCopy;
  [(MPCAssistantDiscovery *)discoveryEndpoint discoverRemoteControlEndpointsMatchingUIDs:v9 completion:v11];
}

void __95__MPCAssistantEndpointContext__discoverLocalEndpointFromMultiplayerUsingDeviceInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

- (void)_discoverLocalEndpointFromClusterUsingDeviceInfo:(id)info completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = MEMORY[0x1E69B0980];
  infoCopy = info;
  sharedController = [v8 sharedController];
  if ([sharedController clusterType] != 1)
  {
    mEMORY[0x1E69B0980] = [MEMORY[0x1E69B0980] sharedController];
    clusterType = [mEMORY[0x1E69B0980] clusterType];

    if (clusterType == 3)
    {
      goto LABEL_5;
    }

    sharedController = [MEMORY[0x1E696AAA8] currentHandler];
    [sharedController handleFailureInMethod:a2 object:self file:@"MPCAssistantEndpointContext.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"MRAVClusterController.sharedController.clusterType == MRAVOutputDeviceClusterTypeStereoPair || MRAVClusterController.sharedController.clusterType == MRAVOutputDeviceClusterTypeGenericAudio"}];
  }

LABEL_5:
  deviceUID = [infoCopy deviceUID];
  isAirPlayActive = [infoCopy isAirPlayActive];

  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (isAirPlayActive)
  {
    if (v16)
    {
      *buf = 138543362;
      v25 = deviceUID;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "Searching for endpoint, pilot %{public}@", buf, 0xCu);
    }

    discoveryEndpoint = self->_discoveryEndpoint;
    v23 = deviceUID;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__MPCAssistantEndpointContext__discoverLocalEndpointFromClusterUsingDeviceInfo_completion___block_invoke;
    v20[3] = &unk_1E8231008;
    v21 = deviceUID;
    v22 = completionCopy;
    [(MPCAssistantDiscovery *)discoveryEndpoint discoverRemoteControlEndpointsMatchingUIDs:v18 completion:v20];
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "Not being airplayed to", buf, 2u);
    }

    LocalEndpoint = MRAVEndpointGetLocalEndpoint();
    (*(completionCopy + 2))(completionCopy, LocalEndpoint);
  }
}

void __91__MPCAssistantEndpointContext__discoverLocalEndpointFromClusterUsingDeviceInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v42 = v6;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "Searching endpoint for leader: %{public}@", buf, 0xCu);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = [v3 outputDevices];
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      v29 = *v36;
      v30 = v7;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = [v3 designatedGroupLeader];
          v14 = [v12 uid];
          v15 = [v13 containsUID:v14];

          if (v15)
          {
            v16 = [v12 clusterComposition];
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v32;
              while (2)
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v32 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = [*(*(&v31 + 1) + 8 * j) uid];
                  v23 = [v22 isEqualToString:*(a1 + 32)];

                  if (v23)
                  {
                    (*(*(a1 + 40) + 16))();

                    goto LABEL_28;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v10 = v29;
            v7 = v30;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v9);
    }

    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v42 = v3;
      v24 = "cluster is not group leader. Endpoint: %{public}@";
      v25 = v4;
      v26 = 12;
LABEL_26:
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v24 = "No discoverable pair";
    v25 = v4;
    v26 = 2;
    goto LABEL_26;
  }

  v27 = *(a1 + 40);
  LocalEndpoint = MRAVEndpointGetLocalEndpoint();
  (*(v27 + 16))(v27, LocalEndpoint);
LABEL_28:
}

- (void)_discoverLocalEndpointFromHomeTheaterUsingDeviceInfo:(id)info completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  mEMORY[0x1E69B0980] = [MEMORY[0x1E69B0980] sharedController];
  clusterType = [mEMORY[0x1E69B0980] clusterType];

  if (clusterType != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCAssistantEndpointContext.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"MRAVClusterController.sharedController.clusterType == MRAVOutputDeviceClusterTypeHomeTheater"}];
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [infoCopy deviceUID];
    *buf = 138543362;
    v24 = deviceUID;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "Local endpoint: %{public}@", buf, 0xCu);
  }

  discoveryEndpoint = self->_discoveryEndpoint;
  deviceUID2 = [infoCopy deviceUID];
  v22 = deviceUID2;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95__MPCAssistantEndpointContext__discoverLocalEndpointFromHomeTheaterUsingDeviceInfo_completion___block_invoke;
  v19[3] = &unk_1E8231008;
  v20 = infoCopy;
  v21 = completionCopy;
  v16 = completionCopy;
  v17 = infoCopy;
  [(MPCAssistantDiscovery *)discoveryEndpoint discoverRemoteControlEndpointsMatchingUIDs:v15 completion:v19];
}

void __95__MPCAssistantEndpointContext__discoverLocalEndpointFromHomeTheaterUsingDeviceInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v4;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "Discovered primary endpoint: %{public}@", buf, 0xCu);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95__MPCAssistantEndpointContext__discoverLocalEndpointFromHomeTheaterUsingDeviceInfo_completion___block_invoke_64;
    v24[3] = &unk_1E8230FE0;
    v25 = *(a1 + 32);
    v6 = [v4 outputDevicesMatchingPredicate:v24];
    if ([v6 count])
    {
      v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v4;
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "Breakaway from endpoint: %{public}@", buf, 0xCu);
      }

      v8 = *(a1 + 40);
      LocalEndpoint = MRAVEndpointGetLocalEndpoint();
      (*(v8 + 16))(v8, LocalEndpoint);
      goto LABEL_24;
    }

    v16 = [v4 designatedGroupLeader];
    v17 = [v16 groupContainsGroupLeader];

    if (v17)
    {
      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
LABEL_24:

        goto LABEL_25;
      }

      *buf = 138543362;
      v27 = v4;
      v19 = "Discovered primary endpoint: %{public}@";
    }

    else
    {
      v20 = [MEMORY[0x1E69B0980] sharedController];
      v21 = [v20 needsCommandRedirection];

      if (!v21)
      {
        v22 = MRAVEndpointGetLocalEndpoint();

        v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = v22;
          _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "Takeover legacy endpoint: %{public}@", buf, 0xCu);
        }

        (*(*(a1 + 40) + 16))();
        v4 = v22;
        goto LABEL_24;
      }

      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 138543362;
      v27 = v4;
      v19 = "Takeover discovered endpoint: %{public}@";
    }

    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_23;
  }

  v10 = [MEMORY[0x1E69B0980] sharedController];
  v11 = [v10 needsCommandRedirection];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_ERROR, "No discovered endpoint, failing because device requires command redirection", buf, 2u);
    }

    v14 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_ERROR, "No discovered endpoint, use local", buf, 2u);
    }

    v15 = *(a1 + 40);
    MRAVEndpointGetLocalEndpoint();
    v14 = *(v15 + 16);
  }

  v14();
LABEL_25:
}

uint64_t __95__MPCAssistantEndpointContext__discoverLocalEndpointFromHomeTheaterUsingDeviceInfo_completion___block_invoke_64(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [*(a1 + 32) deviceUID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_discoverLocalEndpointFromDeviceInfo:(id)info completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"discoverLocalEndpointFromDeviceInfo", uUIDString];
  deviceUID = [infoCopy deviceUID];

  if (deviceUID)
  {
    deviceUID2 = [infoCopy deviceUID];
    [(__CFString *)v11 appendFormat:@" for %@", deviceUID2];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v11;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__MPCAssistantEndpointContext__discoverLocalEndpointFromDeviceInfo_completion___block_invoke;
  aBlock[3] = &unk_1E8230FB8;
  v15 = infoCopy;
  v32 = v15;
  v16 = uUIDString;
  v33 = v16;
  v17 = date;
  v34 = v17;
  v18 = completionCopy;
  v35 = v18;
  v19 = _Block_copy(aBlock);
  mEMORY[0x1E69B0980] = [MEMORY[0x1E69B0980] sharedController];
  clusterType = [mEMORY[0x1E69B0980] clusterType];

  deviceUID3 = [v15 deviceUID];
  v23 = [deviceUID3 length];

  if (!v23)
  {
    v25 = _MRLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v37 = @"discoverLocalEndpointFromDeviceInfo";
      v38 = 2114;
      v39 = v16;
      v40 = 2112;
      v41 = @"Non groupable";
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  if (clusterType <= 1)
  {
    if (clusterType)
    {
      if (clusterType == 1)
      {
        v24 = _MRLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v37 = @"discoverLocalEndpointFromDeviceInfo";
          v38 = 2114;
          v39 = v16;
          v40 = 2112;
          v41 = @"Stereo Pair";
LABEL_19:
          _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }

      goto LABEL_28;
    }

    currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
    isMultiplayerHost = [currentSettings isMultiplayerHost];

    if (isMultiplayerHost)
    {
      v29 = _MRLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v37 = @"discoverLocalEndpointFromDeviceInfo";
        v38 = 2114;
        v39 = v16;
        v40 = 2112;
        v41 = @"Multiplayer";
        _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      [(MPCAssistantEndpointContext *)self _discoverLocalEndpointFromMultiplayerUsingDeviceInfo:v15 completion:v19];
      goto LABEL_28;
    }

LABEL_14:
    mEMORY[0x1E69B09A0] = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
    v19[2](v19, mEMORY[0x1E69B09A0]);

    goto LABEL_28;
  }

  if (clusterType == 2)
  {
    v30 = _MRLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v37 = @"discoverLocalEndpointFromDeviceInfo";
      v38 = 2114;
      v39 = v16;
      v40 = 2112;
      v41 = @"Home Theater";
      _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [(MPCAssistantEndpointContext *)self _discoverLocalEndpointFromHomeTheaterUsingDeviceInfo:v15 completion:v19];
  }

  else if (clusterType == 3)
  {
    v24 = _MRLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v37 = @"discoverLocalEndpointFromDeviceInfo";
      v38 = 2114;
      v39 = v16;
      v40 = 2112;
      v41 = @"Generic Audio Group";
      goto LABEL_19;
    }

LABEL_20:

    [(MPCAssistantEndpointContext *)self _discoverLocalEndpointFromClusterUsingDeviceInfo:v15 completion:v19];
  }

LABEL_28:
}

void __79__MPCAssistantEndpointContext__discoverLocalEndpointFromDeviceInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) deviceUID];

  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = [*(a1 + 32) deviceUID];
        v9 = [MEMORY[0x1E695DF00] date];
        [v9 timeIntervalSinceDate:*(a1 + 48)];
        v29 = 138544386;
        v30 = @"discoverLocalEndpointFromDeviceInfo";
        v31 = 2114;
        v32 = v7;
        v33 = 2112;
        v34 = v3;
        v35 = 2114;
        v36 = v8;
        v37 = 2048;
        v38 = v10;
        v11 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v12 = v5;
        v13 = 52;
LABEL_8:
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, v11, &v29, v13);

LABEL_14:
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (!v6)
    {
      goto LABEL_15;
    }

    v16 = *(a1 + 40);
    v8 = [MEMORY[0x1E695DF00] date];
    [v8 timeIntervalSinceDate:*(a1 + 48)];
    v29 = 138544130;
    v30 = @"discoverLocalEndpointFromDeviceInfo";
    v31 = 2114;
    v32 = v16;
    v33 = 2112;
    v34 = v3;
    v35 = 2048;
    v36 = v17;
    v18 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v19 = v5;
    v20 = 42;
LABEL_13:
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, v18, &v29, v20);
    goto LABEL_14;
  }

  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    v21 = *(a1 + 40);
    v8 = [MEMORY[0x1E695DF00] date];
    [v8 timeIntervalSinceDate:*(a1 + 48)];
    v29 = 138543874;
    v30 = @"discoverLocalEndpointFromDeviceInfo";
    v31 = 2114;
    v32 = v21;
    v33 = 2048;
    v34 = v22;
    v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v19 = v5;
    v20 = 32;
    goto LABEL_13;
  }

  if (v6)
  {
    v14 = *(a1 + 40);
    v8 = [*(a1 + 32) deviceUID];
    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSinceDate:*(a1 + 48)];
    v29 = 138544130;
    v30 = @"discoverLocalEndpointFromDeviceInfo";
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v8;
    v35 = 2048;
    v36 = v15;
    v11 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v12 = v5;
    v13 = 42;
    goto LABEL_8;
  }

LABEL_15:

  (*(*(a1 + 56) + 16))(*(a1 + 56), v3, v23, v24, v25, v26, v27, v28);
}

- (void)_updateDiscoverableDeviceList:(id)list deviceInfo:(id)info completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  listCopy = list;
  infoCopy = info;
  completionCopy = completion;
  deviceUID = [infoCopy deviceUID];
  if (![listCopy containsObject:deviceUID])
  {
    goto LABEL_8;
  }

  tightSyncUID = [infoCopy tightSyncUID];
  if (![tightSyncUID length])
  {

LABEL_8:
    goto LABEL_9;
  }

  shouldSearchForLogicalDevices = [(MPCAssistantEndpointContext *)self shouldSearchForLogicalDevices];

  if (!shouldSearchForLogicalDevices)
  {
LABEL_9:
    completionCopy[2](completionCopy, listCopy);
    goto LABEL_10;
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    tightSyncUID2 = [infoCopy tightSyncUID];
    *buf = 138543362;
    v25 = tightSyncUID2;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "Discover logical devices: %{public}@", buf, 0xCu);
  }

  discoveryLogical = self->_discoveryLogical;
  tightSyncUID3 = [infoCopy tightSyncUID];
  v23 = tightSyncUID3;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__MPCAssistantEndpointContext__updateDiscoverableDeviceList_deviceInfo_completion___block_invoke;
  v19[3] = &unk_1E8232278;
  v20 = listCopy;
  selfCopy = self;
  v22 = completionCopy;
  [(MPCAssistantDiscovery *)discoveryLogical discoverAirplayDevicesMatchingLogicalDeviceIDs:v18 expectedCount:1 completion:v19];

LABEL_10:
}

void __83__MPCAssistantEndpointContext__updateDiscoverableDeviceList_deviceInfo_completion___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = a1[4];
  v5 = a2;
  v10 = [v3 setWithArray:v4];
  v6 = NSStringFromSelector("uid");
  v7 = [v5 valueForKeyPath:v6];

  [v10 addObjectsFromArray:v7];
  [*(a1[5] + 16) stopDiscovery];
  v8 = a1[6];
  v9 = [v10 allObjects];
  (*(v8 + 16))(v8, v9);
}

- (void)modifySystemMusicContextForEndpointDestination:(id)destination discoveryHandler:(id)handler completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  handlerCopy = handler;
  completionCopy = completion;
  localDeviceInfo = [MEMORY[0x1E69B0A20] localDeviceInfo];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke;
  aBlock[3] = &unk_1E8230F68;
  aBlock[4] = self;
  v12 = localDeviceInfo;
  v35 = v12;
  v13 = completionCopy;
  v36 = v13;
  v14 = handlerCopy;
  v37 = v14;
  v15 = _Block_copy(aBlock);
  outputGroupID = [destinationCopy outputGroupID];

  if (outputGroupID)
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      outputGroupID2 = [destinationCopy outputGroupID];
      *buf = 138543362;
      selfCopy2 = outputGroupID2;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "Discover devices of group: %{public}@", buf, 0xCu);
    }

    discoveryAudio = self->_discoveryAudio;
    outputGroupID3 = [destinationCopy outputGroupID];
    [(MPCAssistantDiscovery *)discoveryAudio discoverAirplayDevicesMatchingGroupID:outputGroupID3 completion:v15];
  }

  else
  {
    outputDeviceUIDs = [destinationCopy outputDeviceUIDs];
    v22 = [outputDeviceUIDs count];

    if (v22)
    {
      outputDeviceUIDs2 = [destinationCopy outputDeviceUIDs];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_15;
      v30[3] = &unk_1E8232278;
      v31 = destinationCopy;
      selfCopy = self;
      v33 = v15;
      [(MPCAssistantEndpointContext *)self _updateDiscoverableDeviceList:outputDeviceUIDs2 deviceInfo:v12 completion:v30];

      outputGroupID3 = v31;
    }

    else
    {
      v24 = MRAVEndpointGetLocalEndpoint();
      v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Sending default local endpoint to caller", buf, 0xCu);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_16;
      v27[3] = &unk_1E8230F90;
      v28 = v24;
      v29 = v13;
      v26 = v14[2];
      outputGroupID3 = v24;
      v26(v14, outputGroupID3, 0, v27);
    }
  }
}

void __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 msv_map:&__block_literal_global_159];
    *buf = 134218242;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Resolved devices: %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_12;
  v12[3] = &unk_1E8230F40;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v14 = v9;
  v12[4] = v10;
  v15 = *(a1 + 56);
  v13 = v3;
  v11 = v3;
  [v7 _discoverLocalEndpointFromDeviceInfo:v8 completion:v12];
}

void __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outputDeviceUIDs];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "Discover devices: %{public}@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 24) discoverAirplayDevicesMatchingUIDs:v3 completion:*(a1 + 48)];
}

void __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 134217984;
      v13 = v5;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Sending discovered local endpoint to caller", buf, 0xCu);
    }

    v6 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_13;
    v9[3] = &unk_1E8230F18;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    v11 = *(a1 + 48);
    (*(v6 + 16))(v6, v3, v10, v9);
  }

  else
  {
    v8 = MPCAssistantCreateError(2);
    (*(*(a1 + 48) + 16))();
  }
}

void __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134217984;
    v14 = v5;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Routing to devices", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_14;
  v10[3] = &unk_1E8236E20;
  v10[4] = v6;
  v8 = *(a1 + 48);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  [v6 _modifyOutputDevices:v7 onEndpoint:v9 completion:v10];
}

void __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_14(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Routing completed with error %@", &v6, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

id __106__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_discoveryHandler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 name];
  v5 = [v3 uid];

  v6 = [v2 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

- (void)modifySystemMusicContextForEndpointDestination:(id)destination completion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  localOrigin = [MEMORY[0x1E69B0AA0] localOrigin];
  v10 = completionCopy;
  v8 = destinationCopy;
  v9 = completionCopy;
  MRMediaRemoteGetDeviceInfo();
}

void __89__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_completion___block_invoke_2;
  aBlock[3] = &unk_1E8237188;
  aBlock[4] = *(a1 + 32);
  v7 = v5;
  v29 = v7;
  v31 = *(a1 + 48);
  v8 = v6;
  v30 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 40) outputGroupID];

  if (v10)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) outputGroupID];
      *buf = 138543362;
      v33 = v12;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "Discover devices of group: %{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 24);
    v15 = [v13 outputGroupID];
    [v14 discoverAirplayDevicesMatchingGroupID:v15 completion:v9];
  }

  else
  {
    v16 = [*(a1 + 40) outputDeviceUIDs];
    v17 = [v16 count];

    if (v17)
    {
      v18 = *(a1 + 32);
      v19 = [*(a1 + 40) outputDeviceUIDs];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __89__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_completion___block_invoke_6;
      v24[3] = &unk_1E8232278;
      v20 = *(a1 + 40);
      v21 = *(a1 + 32);
      v25 = v20;
      v26 = v21;
      v27 = v9;
      [v18 _updateDiscoverableDeviceList:v19 deviceInfo:v7 completion:v24];
    }

    else
    {
      v22 = *(a1 + 48);
      LocalEndpoint = MRAVEndpointGetLocalEndpoint();
      (*(v22 + 16))(v22, LocalEndpoint, 0);
    }
  }
}

void __89__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_completion___block_invoke_3;
  v9[3] = &unk_1E8230FB8;
  v13 = *(a1 + 56);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  [v4 _discoverLocalEndpointFromDeviceInfo:v5 completion:v9];
}

void __89__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outputDeviceUIDs];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "Discover devices: %{public}@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 24) discoverAirplayDevicesMatchingUIDs:v3 completion:*(a1 + 48)];
}

void __89__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) treeDescription];
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "Modify context: slow error=%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "Modify context: slow", buf, 2u);
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__MPCAssistantEndpointContext_modifySystemMusicContextForEndpointDestination_completion___block_invoke_2;
    v11[3] = &unk_1E8236B80;
    v13 = *(a1 + 56);
    v12 = v3;
    [v9 _modifyOutputDevices:v10 onEndpoint:v12 completion:v11];
  }

  else
  {
    v8 = MPCAssistantCreateError(2);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)modifySystemMusicContextForDestination:(id)destination completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__MPCAssistantEndpointContext_modifySystemMusicContextForDestination_completion___block_invoke;
  v8[3] = &unk_1E8230EA8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MPCAssistantEndpointContext *)self modifySystemMusicContextForEndpointDestination:destination completion:v8];
}

- (MPCAssistantEndpointContext)init
{
  v12.receiver = self;
  v12.super_class = MPCAssistantEndpointContext;
  v2 = [(MPCAssistantContext *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPCAssistantDiscovery);
    discoveryLogical = v2->_discoveryLogical;
    v2->_discoveryLogical = v3;

    v5 = objc_alloc_init(MPCAssistantDiscovery);
    discoveryAudio = v2->_discoveryAudio;
    v2->_discoveryAudio = v5;

    v7 = objc_alloc_init(MPCAssistantDiscovery);
    discoveryEndpoint = v2->_discoveryEndpoint;
    v2->_discoveryEndpoint = v7;

    v9 = dispatch_get_global_queue(0, 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;
  }

  return v2;
}

@end