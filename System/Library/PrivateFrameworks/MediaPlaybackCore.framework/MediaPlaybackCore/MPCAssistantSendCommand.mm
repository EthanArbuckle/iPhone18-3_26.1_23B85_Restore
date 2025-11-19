@interface MPCAssistantSendCommand
- (BOOL)_isAnyDeviceControllable:(id)a3 forBundleID:(id)a4;
- (MPCAssistantSendCommand)init;
- (void)_checkForAccount:(id)a3 destination:(id)a4 origin:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)_findEndpointFromEndpoints:(id)a3 byGroupLeader:(id)a4;
- (void)_formGroupAndSendCommand:(unsigned int)a3 withOptions:(id)a4 toExternalDestination:(id)a5 completion:(id)a6;
- (void)_sendCommand:(unsigned int)a3 path:(id)a4 options:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)_sendCommand:(unsigned int)a3 withOptions:(id)a4 toEndpoint:(void *)a5 toDestination:(id)a6 completion:(id)a7;
- (void)sendCommand:(unsigned int)a3 withOptions:(id)a4 toEndpoint:(id)a5 toDestination:(id)a6 completion:(id)a7;
- (void)sendMediaRemoteCommand:(unsigned int)a3 withOptions:(id)a4 toEndpointDestination:(id)a5 completion:(id)a6;
@end

@implementation MPCAssistantSendCommand

- (void)_findEndpointFromEndpoints:(id)a3 byGroupLeader:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if (MRAVEndpointGetDesignatedGroupLeader())
      {
        v13 = MRAVOutputDeviceCopyUniqueIdentifier();
        v14 = [v6 isEqualToString:{v13, v16}];

        if (v14)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isAnyDeviceControllable:(id)a3 forBundleID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (MRAVOutputDeviceIsRemoteControllable() && ((IsSystemPodcastApplication & 1) != 0 || (MRAVOutputDeviceCanAccessAppleMusic() & 1) != 0))
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)_sendCommand:(unsigned int)a3 path:(id)a4 options:(id)a5 queue:(id)a6 completion:(id)a7
{
  v8 = a7;
  v7 = v8;
  MRMediaRemoteSendCommandToPlayerWithResult();
}

- (void)_sendCommand:(unsigned int)a3 withOptions:(id)a4 toEndpoint:(void *)a5 toDestination:(id)a6 completion:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v16 = dispatch_queue_create("com.apple.mediaplayer.assistant.callback", v15);

  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = MRMediaRemoteCopyCommandDescription();
    *buf = 138543618;
    v32 = v18;
    v33 = 2114;
    v34 = a5;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "Sending command: %{public}@ endpoint %{public}@...", buf, 0x16u);
  }

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __88__MPCAssistantSendCommand__sendCommand_withOptions_toEndpoint_toDestination_completion___block_invoke;
  v24[3] = &unk_1E82314B8;
  v28 = v16;
  v29 = v14;
  v25 = v13;
  v26 = self;
  v30 = a3;
  v27 = v12;
  v20 = v16;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  [(MPCAssistantConnection *)connection connectToEndpoint:a5 completion:v24];
}

void __88__MPCAssistantSendCommand__sendCommand_withOptions_toEndpoint_toDestination_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = *(*(a1 + 64) + 16);

    v5();
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = a3;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEBUG, "Sending command to remote origin %@...", buf, 0xCu);
    }

    v8 = [*(a1 + 32) createPlayerPath];
    v9 = objc_alloc(MEMORY[0x1E69B0AD0]);
    v10 = [v8 client];
    v11 = [v8 player];
    v12 = [v9 initWithOrigin:a3 client:v10 player:v11];

    v13 = *(a1 + 72);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__MPCAssistantSendCommand__sendCommand_withOptions_toEndpoint_toDestination_completion___block_invoke_40;
    v17[3] = &unk_1E8231350;
    v16 = *(a1 + 56);
    v18 = *(a1 + 64);
    [v14 _sendCommand:v13 path:v12 options:v15 queue:v16 completion:v17];
  }
}

- (void)_formGroupAndSendCommand:(unsigned int)a3 withOptions:(id)a4 toExternalDestination:(id)a5 completion:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 outputDeviceUIDs];
  v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v15 = dispatch_queue_create("com.apple.mediaplayer.assistant.grouping", v14);

  if (a3 - 121 > 0xB || (v16 = 1, ((1 << (a3 - 121)) & 0x803) == 0))
  {
    v16 = 0;
  }

  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v44 = v13;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEBUG, "Searching for output devices matching UIDs: %{public}@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke;
  aBlock[3] = &unk_1E82313C8;
  v18 = v10;
  v36 = v18;
  v41 = v16;
  v19 = v11;
  v37 = v19;
  v42 = a3;
  v20 = v15;
  v38 = v20;
  v39 = self;
  v21 = v12;
  v40 = v21;
  v22 = _Block_copy(aBlock);
  discovery = self->_discovery;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_26;
  v29[3] = &unk_1E8231490;
  v29[4] = self;
  v30 = v19;
  v31 = v20;
  v32 = v18;
  v33 = v21;
  v34 = v22;
  v24 = v22;
  v25 = v18;
  v26 = v20;
  v27 = v19;
  v28 = v21;
  [(MPCAssistantDiscovery *)discovery discoverRemoteControlEndpointsMatchingUIDs:v13 completion:v29];
}

void __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 72)];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69B1218]];

  v6 = [*(a1 + 40) createPlayerPath];
  v8 = v3;
  v9 = *(a1 + 64);
  v7 = v3;
  MRAVEndpointGroupDevicesAndSendCommandWithResult();
}

void __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (![v6 count])
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "Send to external destination: No devices found.", buf, 2u);
    }

    v10 = 1;
    goto LABEL_12;
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) appBundleID];
  LOBYTE(v7) = [v7 _isAnyDeviceControllable:v6 forBundleID:v8];

  if ((v7 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "Send to external destination: Not remote controllable.", buf, 2u);
    }

    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEBUG, "No remote controllable device found among devices: %{public}@", buf, 0xCu);
    }

    v10 = 2;
LABEL_12:
    v13 = MPCAssistantCreateError(v10);
    [*(*(a1 + 32) + 16) stopDiscovery];
    (*(*(a1 + 64) + 16))();

    goto LABEL_13;
  }

  v14 = v5;
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = v6;
  v19 = *(a1 + 72);
  v20 = *(a1 + 64);
  MRAVEndpointPredictGroupLeader();

LABEL_13:
}

void __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) _findEndpointFromEndpoints:*(a1 + 40) byGroupLeader:v4];
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_2_28;
    v9[3] = &unk_1E8231440;
    v9[4] = v7;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v14 = v4;
    v17 = v6;
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    [v8 connectToEndpoint:v6 completion:v9];
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_2_28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_3;
    v12[3] = &unk_1E8231418;
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = v4;
    v9 = *(a1 + 56);
    v10 = *(a1 + 96);
    v16 = v9;
    v20 = v10;
    v11 = *(a1 + 80);
    v17 = *(a1 + 32);
    v18 = v11;
    v19 = *(a1 + 88);
    [v5 _checkForAccount:v6 destination:v8 origin:v15 queue:v7 completion:v12];
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_3(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ([*(a1 + 32) containsObject:*(a1 + 40)])
    {
      v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 40);
        *buf = 138543362;
        v11 = v4;
        _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEBUG, "Sending pause to future group leader at: %{public}@", buf, 0xCu);
      }

      v9 = *(a1 + 72);
      v8 = *(a1 + 32);
      MRMediaRemoteSendCommandForOriginWithReply();
    }

    else
    {
      v7 = *(*(a1 + 72) + 16);

      v7();
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "Send to external destination: No matching account.", buf, 2u);
    }

    v6 = MPCAssistantCreateError(2);
    [*(*(a1 + 64) + 16) stopDiscovery];
    (*(*(a1 + 80) + 16))();
  }
}

void __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MRMediaRemoteCopyCommandDescription();
  if ([v3 containsObject:&unk_1F4598FE0])
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 48);
      *buf = 138543618;
      v20 = v4;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "Sent %{public}@ to %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AD60] string];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * v11) unsignedShortValue];
          v12 = MRMediaRemoteCopyCommandHandlerStatusDescription();
          [v5 appendString:v12];

          [v5 appendString:@" "];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
      }

      while (v9);
    }

    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      *buf = 138543874;
      v20 = v4;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "Sent %{public}@ to %{public}@: %{public}@", buf, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __97__MPCAssistantSendCommand__formGroupAndSendCommand_withOptions_toExternalDestination_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MRMediaRemoteCopyCommandDescription();
  v11 = [v7 error];

  if (v11)
  {
    v12 = [v7 error];
    IsInformational = MRMediaRemoteErrorIsInformational();

    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    v15 = v14;
    if (IsInformational)
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      v16 = [v7 error];
      *v29 = 138543874;
      *&v29[4] = v10;
      *&v29[12] = 2114;
      *&v29[14] = v9;
      *&v29[22] = 2114;
      v30 = v16;
      v17 = "Sent %{public}@ to %{public}@ informational: %{public}@";
      v18 = v15;
      v19 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v16 = [v7 error];
      *v29 = 138543874;
      *&v29[4] = v10;
      *&v29[12] = 2114;
      *&v29[14] = v9;
      *&v29[22] = 2114;
      v30 = v16;
      v17 = "Sent %{public}@ to %{public}@ error: %{public}@";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_1C5C61000, v18, v19, v17, v29, 0x20u);
  }

  else
  {
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *v29 = 138543618;
      *&v29[4] = v10;
      *&v29[12] = 2114;
      *&v29[14] = v9;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEBUG, "Sent %{public}@ to %{public}@", v29, 0x16u);
    }
  }

LABEL_10:

  if (!v8)
  {
    v25 = [MEMORY[0x1E69B0B08] currentSettings];
    v26 = [v25 isMultiplayerHost];

    v24 = 0;
    if ([*(a1 + 32) count] != 1 || (v26 & 1) != 0)
    {
      goto LABEL_27;
    }

    v27 = 6;
LABEL_23:
    v24 = MPCAssistantCreateError(v27);
    goto LABEL_27;
  }

  v20 = [v8 domain];
  v21 = [v20 isEqualToString:*MEMORY[0x1E69B0DC0]];

  if (!v21)
  {
LABEL_18:
    v24 = 0;
    goto LABEL_27;
  }

  v22 = [v8 code];
  switch(v22)
  {
    case 200:
      v27 = 7;
      goto LABEL_23;
    case 202:
      goto LABEL_18;
    case 201:
      v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "The remote group leader went silent. Logs on the external device should be checked.", v29, 2u);
      }

      goto LABEL_18;
  }

  v24 = v8;
  v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *v29 = 138543362;
    *&v29[4] = v24;
    _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_ERROR, "Got error when grouping devices: %{public}@", v29, 0xCu);
  }

LABEL_27:
  [*(*(a1 + 40) + 16) stopDiscovery];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v7, v24, [*(a1 + 32) count]);
}

- (void)_checkForAccount:(id)a3 destination:(id)a4 origin:(id)a5 queue:(id)a6 completion:(id)a7
{
  v223[0] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v13 isLocallyHosted])
  {
    v16 = [MEMORY[0x1E69B0AA0] localOrigin];

    v13 = v16;
  }

  v17 = [v12 appBundleID];
  IsSystemApplication = MRMediaRemoteApplicationIsSystemApplication();

  if (IsSystemApplication & 1) != 0 || ([v12 appBundleID], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x1E69B12F0]), v19, (v20) || (objc_msgSend(v12, "appBundleID"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", *MEMORY[0x1E69B12F8]), v21, (v22))
  {
LABEL_6:
    v23 = [v11 valueForKey:*MEMORY[0x1E69B1278]];
    if (!v23)
    {
      v15[2](v15, 1);
LABEL_212:

      goto LABEL_213;
    }

    v216 = 0;
    v24 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v23 error:&v216];
    v25 = v216;
    if (v25)
    {
      v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "Cannot decode active identity", buf, 2u);
      }

      goto LABEL_11;
    }

    if (!v24)
    {
LABEL_11:
      v15[2](v15, 1);
LABEL_211:

      goto LABEL_212;
    }

    v213 = v24;
    v27 = [v24 accountDSID];
    memset(&v218, 0, sizeof(v218));
    *buf = 4001;
    CC_SHA1_Init(&v218);
    v28 = v27;
    v29 = [v28 UTF8String];
    v30 = [v28 length];
    v31 = v30;
    if (*buf > 3000)
    {
      if (*buf > 4000)
      {
        switch(*buf)
        {
          case 0xFA1:
            CC_SHA1_Update(&v218, v29, v30);
            break;
          case 0x10A0:
            CC_SHA256_Update(&v218, v29, v30);
            break;
          case 0x11A0:
            CC_SHA512_Update(&v218, v29, v30);
            break;
        }

        goto LABEL_115;
      }

      if (*buf != 3001)
      {
        if (*buf == 4000)
        {
          CC_MD5_Update(&v218, v29, v30);
        }

        goto LABEL_115;
      }

      if (!v29)
      {
        goto LABEL_115;
      }

      v218.count[0] += v30;
      if (v30 + LODWORD(v218.hash[7]) <= 0x1F)
      {
        memcpy(&v218.wbuf[-5] + LODWORD(v218.hash[7]), v29, v30);
        v74 = LODWORD(v218.hash[7]) + v31;
LABEL_89:
        LODWORD(v218.hash[7]) = v74;
        goto LABEL_115;
      }

      v87 = &v29[v30];
      if (LODWORD(v218.hash[7]))
      {
        v212 = &v29[v30];
        memcpy(&v218.wbuf[-5] + LODWORD(v218.hash[7]), v29, (32 - LODWORD(v218.hash[7])));
        v87 = v212;
        v218.count[1] = 0x9E3779B185EBCA87 * __ROR8__(v218.count[1] - 0x3D4D51C2D82B14B1 * v218.hash[3], 33);
        v218.hash[0] = 0x9E3779B185EBCA87 * __ROR8__(v218.hash[0] - 0x3D4D51C2D82B14B1 * v218.hash[4], 33);
        v218.hash[1] = 0x9E3779B185EBCA87 * __ROR8__(v218.hash[1] - 0x3D4D51C2D82B14B1 * v218.hash[5], 33);
        v218.hash[2] = 0x9E3779B185EBCA87 * __ROR8__(v218.hash[2] - 0x3D4D51C2D82B14B1 * v218.hash[6], 33);
        v29 += (32 - LODWORD(v218.hash[7]));
        LODWORD(v218.hash[7]) = 0;
      }

      if ((v29 + 32) <= v87)
      {
        v88 = v218.count[1];
        v90 = v218.hash[1];
        v91 = v218.hash[0];
        v89 = v218.hash[2];
        do
        {
          v88 = 0x9E3779B185EBCA87 * __ROR8__(v88 - 0x3D4D51C2D82B14B1 * *v29, 33);
          v91 = 0x9E3779B185EBCA87 * __ROR8__(v91 - 0x3D4D51C2D82B14B1 * *(v29 + 1), 33);
          v90 = 0x9E3779B185EBCA87 * __ROR8__(v90 - 0x3D4D51C2D82B14B1 * *(v29 + 2), 33);
          v89 = 0x9E3779B185EBCA87 * __ROR8__(v89 - 0x3D4D51C2D82B14B1 * *(v29 + 3), 33);
          v29 += 32;
        }

        while (v29 <= v87 - 32);
        v218.count[1] = v88;
        v218.hash[0] = v91;
        v218.hash[1] = v90;
        v218.hash[2] = v89;
      }

      if (v29 < v87)
      {
        v74 = v87 - v29;
        __memcpy_chk();
        goto LABEL_89;
      }

LABEL_115:

      memset(&v219[8], 0, 64);
      *v219 = *buf;
      if (*buf > 3000)
      {
        if (*buf > 4000)
        {
          switch(*buf)
          {
            case 0xFA1:
              CC_SHA1_Final(&v219[8], &v218);
              break;
            case 0x10A0:
              CC_SHA256_Final(&v219[8], &v218);
              break;
            case 0x11A0:
              CC_SHA512_Final(&v219[8], &v218);
              break;
          }

          goto LABEL_162;
        }

        if (*buf != 3001)
        {
          if (*buf == 4000)
          {
            CC_MD5_Final(&v219[8], &v218);
          }

LABEL_162:
          v220[0] = *v219;
          v220[1] = *&v219[16];
          v220[2] = *&v219[32];
          v220[3] = *&v219[48];
          v221 = *&v219[64];
          if (*v219 <= 3999)
          {
            if (*v219 > 2999)
            {
              if (*v219 == 3000)
              {
                LODWORD(v222[0]) = bswap32(DWORD2(v220[0]));
                v198 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                v199 = 0;
                v200 = v198 + 1;
                do
                {
                  v201 = *(v222 + v199);
                  *(v200 - 1) = MSVFastHexStringFromBytes_hexCharacters_30108[v201 >> 4];
                  *v200 = MSVFastHexStringFromBytes_hexCharacters_30108[v201 & 0xF];
                  v200 += 2;
                  ++v199;
                }

                while (v199 != 4);
                v176 = objc_alloc(MEMORY[0x1E696AEC0]);
                v177 = v198;
                v178 = 8;
              }

              else
              {
                if (*v219 != 3001)
                {
                  goto LABEL_214;
                }

                v222[0] = bswap64(*(&v220[0] + 1));
                v172 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                v173 = 0;
                v174 = v172 + 1;
                do
                {
                  v175 = *(v222 + v173);
                  *(v174 - 1) = MSVFastHexStringFromBytes_hexCharacters_30108[v175 >> 4];
                  *v174 = MSVFastHexStringFromBytes_hexCharacters_30108[v175 & 0xF];
                  v174 += 2;
                  ++v173;
                }

                while (v173 != 8);
                v176 = objc_alloc(MEMORY[0x1E696AEC0]);
                v177 = v172;
                v178 = 16;
              }

              v191 = [v176 initWithBytesNoCopy:v177 length:v178 encoding:4 freeWhenDone:{1, v212}];
LABEL_210:

              v208 = [(__CFString *)v191 substringToIndex:7];

              v214 = v208;
              v215 = v15;
              v209 = v208;
              MRMediaRemoteGetSupportedCommandsForApp();

              v24 = v213;
              goto LABEL_211;
            }

            if (*v219 == 1000)
            {
              v185 = *(&v220[0] + 1);
              if (*(&v220[0] + 1))
              {
                v186 = v223 + 1;
                quot = *(&v220[0] + 1);
                do
                {
                  v188 = lldiv(quot, 10);
                  quot = v188.quot;
                  if (v188.rem >= 0)
                  {
                    LOBYTE(v189) = v188.rem;
                  }

                  else
                  {
                    v189 = -v188.rem;
                  }

                  *(v186 - 2) = v189 + 48;
                  v190 = (v186 - 2);
                  --v186;
                }

                while (v188.quot);
                if (v185 < 0)
                {
                  *(v186 - 2) = 45;
                  v190 = (v186 - 2);
                }

                v191 = CFStringCreateWithBytes(0, v190, v223 - v190, 0x8000100u, 0);
                goto LABEL_210;
              }

              goto LABEL_215;
            }

            if (*v219 == 2000)
            {
              v157 = DWORD2(v220[0]);
              if (DWORD2(v220[0]))
              {
                v158 = v28;
                v159 = v223;
                do
                {
                  v160 = ldiv(v157, 10);
                  v157 = v160.quot;
                  if (v160.rem >= 0)
                  {
                    LOBYTE(v161) = v160.rem;
                  }

                  else
                  {
                    v161 = -v160.rem;
                  }

                  *--v159 = v161 + 48;
                }

                while (v160.quot);
                v162 = CFStringCreateWithBytes(0, v159, v223 - v159, 0x8000100u, 0);
                goto LABEL_209;
              }

LABEL_215:
              v191 = @"0";
              goto LABEL_210;
            }

LABEL_214:
            v210 = [MEMORY[0x1E696AAA8] currentHandler];
            v211 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
            [v210 handleFailureInFunction:v211 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

            v191 = &stru_1F454A698;
            goto LABEL_210;
          }

          if (*v219 > 4255)
          {
            if (*v219 == 4256)
            {
              v158 = v28;
              v202 = v220 + 8;
              v203 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
              v204 = v203;
              for (i = 0; i != 64; i += 2)
              {
                v206 = *v202++;
                v207 = &v203[i];
                *v207 = MSVFastHexStringFromBytes_hexCharacters_30108[v206 >> 4];
                v207[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v206 & 0xF];
              }

              v169 = objc_alloc(MEMORY[0x1E696AEC0]);
              v170 = v204;
              v171 = 64;
            }

            else
            {
              if (*v219 != 4512)
              {
                goto LABEL_214;
              }

              v158 = v28;
              v179 = v220 + 8;
              v180 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
              v181 = v180;
              for (j = 0; j != 128; j += 2)
              {
                v183 = *v179++;
                v184 = &v180[j];
                *v184 = MSVFastHexStringFromBytes_hexCharacters_30108[v183 >> 4];
                v184[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v183 & 0xF];
              }

              v169 = objc_alloc(MEMORY[0x1E696AEC0]);
              v170 = v181;
              v171 = 128;
            }
          }

          else if (*v219 == 4000)
          {
            v158 = v28;
            v192 = v220 + 8;
            v193 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
            v194 = v193;
            for (k = 0; k != 32; k += 2)
            {
              v196 = *v192++;
              v197 = &v193[k];
              *v197 = MSVFastHexStringFromBytes_hexCharacters_30108[v196 >> 4];
              v197[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v196 & 0xF];
            }

            v169 = objc_alloc(MEMORY[0x1E696AEC0]);
            v170 = v194;
            v171 = 32;
          }

          else
          {
            if (*v219 != 4001)
            {
              goto LABEL_214;
            }

            v158 = v28;
            v163 = v220 + 8;
            v164 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
            v165 = v164;
            for (m = 0; m != 40; m += 2)
            {
              v167 = *v163++;
              v168 = &v164[m];
              *v168 = MSVFastHexStringFromBytes_hexCharacters_30108[v167 >> 4];
              v168[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v167 & 0xF];
            }

            v169 = objc_alloc(MEMORY[0x1E696AEC0]);
            v170 = v165;
            v171 = 40;
          }

          v162 = [v169 initWithBytesNoCopy:v170 length:v171 encoding:4 freeWhenDone:{1, v212}];
LABEL_209:
          v191 = v162;
          v28 = v158;
          goto LABEL_210;
        }

        if (v218.count[0] < 0x20)
        {
          v138 = v218.hash[1] + 0x27D4EB2F165667C5;
        }

        else
        {
          v138 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v218.hash[0], 57) + __ROR8__(v218.count[1], 63) + __ROR8__(v218.hash[1], 52) + __ROR8__(v218.hash[2], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v218.count[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v218.hash[0], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v218.hash[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v218.hash[2], 33))) - 0x7A1435883D4D519DLL;
        }

        v139 = v138 + v218.count[0];
        v140 = &v218.hash[3];
        v141 = v218.count[0] & 0x1F;
        if (v141 >= 8)
        {
          do
          {
            v142 = *v140++;
            v139 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v142, 33)) ^ v139, 37);
            v141 -= 8;
          }

          while (v141 > 7);
        }

        if (v141 >= 4)
        {
          v143 = *v140;
          v140 = (v140 + 4);
          v139 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v143) ^ v139, 41);
          v141 -= 4;
        }

        for (; v141; --v141)
        {
          v144 = *v140;
          v140 = (v140 + 1);
          v139 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v144) ^ v139, 53);
        }

        v145 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v139 ^ (v139 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v139 ^ (v139 >> 33))) >> 29));
        v133 = v145 ^ HIDWORD(v145);
LABEL_149:
        *&v219[8] = v133;
        goto LABEL_162;
      }

      if (*buf <= 1999)
      {
        if (!*buf)
        {
          v135 = [MEMORY[0x1E696AAA8] currentHandler];
          v136 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
          [v135 handleFailureInFunction:v136 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

          goto LABEL_162;
        }

        if (*buf != 1000)
        {
          goto LABEL_162;
        }

        v103 = (v218.count[0] + v218.count[1]) ^ __ROR8__(v218.count[1], 51);
        v104 = v218.hash[0] + (v218.hash[1] ^ v218.hash[2]);
        v105 = __ROR8__(v218.hash[1] ^ v218.hash[2], 48);
        v106 = (v104 ^ v105) + __ROR8__(v218.count[0] + v218.count[1], 32);
        v107 = v106 ^ __ROR8__(v104 ^ v105, 43);
        v108 = v104 + v103;
        v109 = v108 ^ __ROR8__(v103, 47);
        v110 = (v106 ^ v218.hash[2]) + v109;
        v111 = v110 ^ __ROR8__(v109, 51);
        v112 = (__ROR8__(v108, 32) ^ 0xFFLL) + v107;
        v113 = __ROR8__(v107, 48);
        v114 = __ROR8__(v110, 32) + (v112 ^ v113);
        v115 = v114 ^ __ROR8__(v112 ^ v113, 43);
        v116 = v111 + v112;
        v117 = v116 ^ __ROR8__(v111, 47);
        v118 = v117 + v114;
        v119 = v118 ^ __ROR8__(v117, 51);
        v120 = __ROR8__(v116, 32) + v115;
        v121 = __ROR8__(v115, 48);
        v122 = __ROR8__(v118, 32) + (v120 ^ v121);
        v123 = v122 ^ __ROR8__(v120 ^ v121, 43);
        v124 = v119 + v120;
        v125 = v124 ^ __ROR8__(v119, 47);
        v126 = v125 + v122;
        v127 = v126 ^ __ROR8__(v125, 51);
        v128 = __ROR8__(v124, 32) + v123;
        v129 = __ROR8__(v123, 48);
        v130 = __ROR8__(v126, 32) + (v128 ^ v129);
        v131 = v130 ^ __ROR8__(v128 ^ v129, 43);
        v132 = v127 + v128;
        v218.count[0] = v130;
        v218.count[1] = v132 ^ __ROR8__(v127, 47);
        v218.hash[0] = __ROR8__(v132, 32);
        v218.hash[1] = v131;
        v133 = v218.count[1] ^ v130 ^ v218.hash[0] ^ v131;
        goto LABEL_149;
      }

      if (*buf != 2000)
      {
        if (*buf != 3000)
        {
          goto LABEL_162;
        }

        if (HIDWORD(v218.count[0]))
        {
          v134 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v218.count[1], xmmword_1C60451B0), vshlq_u32(*&v218.count[1], xmmword_1C60451A0)));
        }

        else
        {
          v134 = LODWORD(v218.hash[0]) + 374761393;
        }

        v146 = LODWORD(v218.count[0]) + v134;
        v147 = &v218.hash[1];
        v148 = v218.hash[3] & 0xF;
        if (v148 >= 4)
        {
          do
          {
            v149 = *v147;
            v147 = (v147 + 4);
            HIDWORD(v150) = v146 - 1028477379 * v149;
            LODWORD(v150) = HIDWORD(v150);
            v146 = 668265263 * (v150 >> 15);
            v148 -= 4;
          }

          while (v148 > 3);
        }

        for (; v148; --v148)
        {
          v151 = *v147;
          v147 = (v147 + 1);
          HIDWORD(v152) = v146 + 374761393 * v151;
          LODWORD(v152) = HIDWORD(v152);
          v146 = -1640531535 * (v152 >> 21);
        }

        v153 = -1028477379 * ((-2048144777 * (v146 ^ (v146 >> 15))) ^ ((-2048144777 * (v146 ^ (v146 >> 15))) >> 13));
        v154 = v153 ^ HIWORD(v153);
        goto LABEL_161;
      }

      switch(BYTE3(v218.count[1]))
      {
        case 1u:
          v137 = LOBYTE(v218.count[1]);
          break;
        case 2u:
          v137 = LOWORD(v218.count[1]);
          break;
        case 3u:
          v137 = LOWORD(v218.count[1]) | (BYTE2(v218.count[1]) << 16);
          break;
        default:
          v155 = v218.count[0];
          goto LABEL_160;
      }

      v155 = (461845907 * ((380141568 * v137) | ((-862048943 * v137) >> 17))) ^ LODWORD(v218.count[0]);
LABEL_160:
      v156 = -2048144789 * (HIDWORD(v218.count[0]) ^ v155 ^ ((HIDWORD(v218.count[0]) ^ v155) >> 16));
      v154 = (-1028477387 * (v156 ^ (v156 >> 13))) ^ ((-1028477387 * (v156 ^ (v156 >> 13))) >> 16);
      LODWORD(v218.count[0]) = v154;
LABEL_161:
      *&v219[8] = v154;
      goto LABEL_162;
    }

    if (*buf <= 1999)
    {
      if (!*buf)
      {
        v70 = [MEMORY[0x1E696AAA8] currentHandler];
        v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
        [v70 handleFailureInFunction:v71 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

        goto LABEL_115;
      }

      if (*buf != 1000)
      {
        goto LABEL_115;
      }

      v35 = HIBYTE(v218.hash[2]);
      v36 = v218.hash[2] & 0xFFFFFFFFFFFFFFLL;
      v37 = HIBYTE(v218.hash[2]) & 7;
      if (v37)
      {
        v38 = 8 - v37;
        v39 = v30 - (8 - v37);
        if (v30 < 8 - v37)
        {
LABEL_37:
          if (v31)
          {
            v62 = 0;
            v63 = 0;
            v64 = v31;
            do
            {
              v65 = *v29++;
              v63 |= v65 << v62;
              v62 += 8;
              --v64;
            }

            while (v64);
            if (v37)
            {
              v66 = (v63 << (8 * v37)) | ((v31 + v35) << 56) | v36;
            }

            else
            {
              v66 = v63 | ((v31 + v35) << 56);
            }
          }

          else
          {
            if (v37)
            {
              goto LABEL_115;
            }

            v66 = v35 << 56;
          }

          v218.hash[2] = v66;
          goto LABEL_115;
        }

        v40 = 8 * v37;
        v41 = v29;
        v42 = v218.hash[2] & 0xFFFFFFFFFFFFFFLL;
        do
        {
          v43 = *v41++;
          v42 |= v43 << v40;
          v40 += 8;
        }

        while (v40 != 64);
        v44 = (v218.count[0] + v218.count[1]) ^ __ROR8__(v218.count[1], 51);
        v45 = v218.hash[0] + (v218.hash[1] ^ v42);
        v46 = __ROR8__(v218.hash[1] ^ v42, 48);
        v47 = (v45 ^ v46) + __ROR8__(v218.count[0] + v218.count[1], 32);
        v48 = v47 ^ __ROR8__(v45 ^ v46, 43);
        v49 = v45 + v44;
        v218.hash[0] = __ROR8__(v49, 32);
        v218.hash[1] = v48;
        v218.count[0] = v47 ^ v42;
        v218.count[1] = v49 ^ __ROR8__(v44, 47);
        v29 += v38;
        v218.hash[2] = (v38 + v35) << 56;
        v31 = v39;
      }

      if (v31 >= 8)
      {
        v50 = v218.count[1];
        v51 = v218.count[0];
        v52 = v218.hash[1];
        v53 = v218.hash[0];
        do
        {
          v54 = *v29;
          v29 += 8;
          v55 = v54 ^ v52;
          v56 = v51 + v50;
          v57 = v56 ^ __ROR8__(v50, 51);
          v58 = v55 + v53;
          v59 = __ROR8__(v55, 48);
          v60 = (v58 ^ v59) + __ROR8__(v56, 32);
          v52 = v60 ^ __ROR8__(v58 ^ v59, 43);
          v61 = v58 + v57;
          v50 = v61 ^ __ROR8__(v57, 47);
          v53 = __ROR8__(v61, 32);
          v218.hash[0] = v53;
          v218.hash[1] = v52;
          v51 = v60 ^ v54;
          v218.count[0] = v51;
          v218.count[1] = v50;
          v31 -= 8;
          v35 += 8;
        }

        while (v31 > 7);
      }

      v37 = 0;
      goto LABEL_37;
    }

    if (*buf != 2000)
    {
      if (*buf != 3000 || !v29)
      {
        goto LABEL_115;
      }

      v68 = v30 > 0xF || (LODWORD(v218.count[0]) + v30) > 0xF;
      LODWORD(v218.count[0]) += v30;
      HIDWORD(v218.count[0]) |= v68;
      if (v30 + LODWORD(v218.hash[3]) > 0xF)
      {
        v79 = &v29[v30];
        if (LODWORD(v218.hash[3]))
        {
          v212 = &v29[v30];
          memcpy(&v218.wbuf[-7] + LODWORD(v218.hash[3]), v29, (16 - LODWORD(v218.hash[3])));
          v79 = v212;
          HIDWORD(v80) = LODWORD(v218.count[1]) - 2048144777 * LODWORD(v218.hash[1]);
          LODWORD(v80) = HIDWORD(v80);
          v81 = -1640531535 * (v80 >> 19);
          HIDWORD(v80) = HIDWORD(v218.count[1]) - 2048144777 * HIDWORD(v218.hash[1]);
          LODWORD(v80) = HIDWORD(v80);
          LODWORD(v218.count[1]) = v81;
          HIDWORD(v218.count[1]) = -1640531535 * (v80 >> 19);
          HIDWORD(v80) = LODWORD(v218.hash[0]) - 2048144777 * LODWORD(v218.hash[2]);
          LODWORD(v80) = HIDWORD(v80);
          LODWORD(v218.hash[0]) = -1640531535 * (v80 >> 19);
          HIDWORD(v80) = HIDWORD(v218.hash[0]) - 2048144777 * HIDWORD(v218.hash[2]);
          LODWORD(v80) = HIDWORD(v80);
          v29 += (16 - LODWORD(v218.hash[3]));
          HIDWORD(v218.hash[0]) = -1640531535 * (v80 >> 19);
          LODWORD(v218.hash[3]) = 0;
        }

        if (v29 <= v79 - 16)
        {
          v82 = v218.count[1];
          v83 = HIDWORD(v218.count[1]);
          v84 = v218.hash[0];
          v85 = HIDWORD(v218.hash[0]);
          do
          {
            HIDWORD(v86) = v82 - 2048144777 * *v29;
            LODWORD(v86) = HIDWORD(v86);
            v82 = -1640531535 * (v86 >> 19);
            HIDWORD(v86) = v83 - 2048144777 * *(v29 + 1);
            LODWORD(v86) = HIDWORD(v86);
            v83 = -1640531535 * (v86 >> 19);
            HIDWORD(v86) = v84 - 2048144777 * *(v29 + 2);
            LODWORD(v86) = HIDWORD(v86);
            v84 = -1640531535 * (v86 >> 19);
            HIDWORD(v86) = v85 - 2048144777 * *(v29 + 3);
            LODWORD(v86) = HIDWORD(v86);
            v85 = -1640531535 * (v86 >> 19);
            v29 += 16;
          }

          while (v29 <= v79 - 16);
          v218.count[1] = __PAIR64__(v83, v82);
          v218.hash[0] = __PAIR64__(v85, v84);
        }

        if (v29 >= v79)
        {
          goto LABEL_115;
        }

        v69 = v79 - v29;
        __memcpy_chk();
      }

      else
      {
        memcpy(&v218.wbuf[-7] + LODWORD(v218.hash[3]), v29, v30);
        v69 = LODWORD(v218.hash[3]) + v31;
      }

      LODWORD(v218.hash[3]) = v69;
      goto LABEL_115;
    }

    v72 = v30 + BYTE3(v218.count[1]);
    if (v72 < 4)
    {
      v73 = &buf[BYTE3(v218.count[1])];
      if (v30 <= 1u)
      {
        if (!v30)
        {
LABEL_114:
          HIDWORD(v218.count[0]) += v31;
          goto LABEL_115;
        }

        if (v30 == 1)
        {
          v73[16] = *v29;
          goto LABEL_114;
        }

LABEL_98:
        memcpy(v73 + 16, v29, v30);
        goto LABEL_114;
      }

      if (v30 == 2)
      {
        v92 = *v29;
      }

      else
      {
        if (v30 != 3)
        {
          goto LABEL_98;
        }

        v92 = *v29;
        v73[18] = v29[2];
      }

      *(v73 + 8) = v92;
      goto LABEL_114;
    }

    LOBYTE(v75) = 0;
    v76 = v72 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v218.count[1]) > 1u)
    {
      if (BYTE3(v218.count[1]) != 2)
      {
        LOBYTE(v77) = 0;
        LOBYTE(v78) = 0;
        v93 = 0;
        if (BYTE3(v218.count[1]) == 3)
        {
          LOBYTE(v77) = v218.count[1];
          v75 = HIBYTE(LOWORD(v218.count[1]));
          LOBYTE(v78) = BYTE2(v218.count[1]);
          v93 = *v29;
        }

        goto LABEL_104;
      }

      LOBYTE(v77) = v218.count[1];
      v75 = HIBYTE(LOWORD(v218.count[1]));
      v78 = *v29;
    }

    else
    {
      if (!BYTE3(v218.count[1]))
      {
        v77 = *v29;
        v75 = *v29 >> 8;
        v78 = HIWORD(*v29);
        v93 = HIBYTE(*v29);
        goto LABEL_104;
      }

      LOBYTE(v77) = v218.count[1];
      LOBYTE(v75) = *v29;
      v78 = *(v29 + 1);
    }

    v93 = v78 >> 8;
LABEL_104:
    v94 = v72 & 3;
    v95 = (v78 << 16) | (v93 << 24) | v77 | (v75 << 8);
    HIDWORD(v96) = (461845907 * ((380141568 * v95) | ((-862048943 * v95) >> 17))) ^ LODWORD(v218.count[0]);
    LODWORD(v96) = HIDWORD(v96);
    v97 = 5 * (v96 >> 19) - 430675100;
    LODWORD(v218.count[0]) = v97;
    v98 = &v29[-BYTE3(v218.count[1]) + 4];
    v99 = &v29[v76 - BYTE3(v218.count[1])];
    while (v98 < v99)
    {
      v100 = *v98;
      v98 += 4;
      HIDWORD(v101) = (461845907 * ((380141568 * v100) | ((-862048943 * v100) >> 17))) ^ v97;
      LODWORD(v101) = HIDWORD(v101);
      v97 = 5 * (v101 >> 19) - 430675100;
      LODWORD(v218.count[0]) = v97;
    }

    if (v94 > 1)
    {
      if (v94 == 2)
      {
        LOWORD(v218.count[1]) = *v99;
      }

      else
      {
        v102 = *v99;
        BYTE2(v218.count[1]) = v99[2];
        LOWORD(v218.count[1]) = v102;
      }
    }

    else if (v94)
    {
      LOBYTE(v218.count[1]) = *v99;
    }

    BYTE3(v218.count[1]) = v94;
    goto LABEL_114;
  }

  v32 = [MEMORY[0x1E69708A8] standardUserDefaults];
  if ([v32 sonicHijack])
  {
    v33 = [v12 appBundleID];
    v34 = [v33 isEqualToString:@"com.apple.Sonic"];

    if (v34)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15[2](v15, 1);
LABEL_213:
}

void __80__MPCAssistantSendCommand__checkForAccount_destination_origin_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      v8 = *MEMORY[0x1E69B0D50];
      v17 = *MEMORY[0x1E69B0D50];
      v18 = *v24;
      do
      {
        v9 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (MEMORY[0x1C6954DE0](*(*(&v23 + 1) + 8 * v9)) == 133)
          {
            v10 = MRMediaRemoteCommandInfoCopyOptions();
            v11 = [v10 objectForKeyedSubscript:v8];
            v19 = 0u;
            v20 = 0u;
            v21 = 0u;
            v22 = 0u;
            v12 = v11;
            v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v20;
              while (2)
              {
                v16 = 0;
                do
                {
                  if (*v20 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  if ([*(*(&v19 + 1) + 8 * v16) hasSuffix:{*(a1 + 32), v17, v18}])
                  {
                    (*(*(a1 + 40) + 16))();

                    goto LABEL_22;
                  }

                  ++v16;
                }

                while (v14 != v16);
                v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v17;
            v7 = v18;
          }

          ++v9;
        }

        while (v9 != v6);
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_22:
}

- (void)sendCommand:(unsigned int)a3 withOptions:(id)a4 toEndpoint:(id)a5 toDestination:(id)a6 completion:(id)a7
{
  v10 = *&a3;
  v12 = a7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__MPCAssistantSendCommand_sendCommand_withOptions_toEndpoint_toDestination_completion___block_invoke;
  v14[3] = &unk_1E8231350;
  v15 = v12;
  v13 = v12;
  [(MPCAssistantSendCommand *)self _sendCommand:v10 withOptions:a4 toEndpoint:a5 toDestination:a6 completion:v14];
}

void __87__MPCAssistantSendCommand_sendCommand_withOptions_toEndpoint_toDestination_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:v6 error:v5];

  (*(*(a1 + 32) + 16))();
}

- (void)sendMediaRemoteCommand:(unsigned int)a3 withOptions:(id)a4 toEndpointDestination:(id)a5 completion:(id)a6
{
  v8 = *&a3;
  v57 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MRMediaRemoteCopyCommandDescription();
  v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v15 = dispatch_queue_create("com.apple.assistant.SendCommand", v14);

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "Command %{public}@ to destination: %{public}@", buf, 0x16u);
  }

  v32 = [v11 outputDeviceUIDs];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v56 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke;
  aBlock[3] = &unk_1E8231260;
  v52 = buf;
  v31 = v12;
  v51 = v31;
  v17 = _Block_copy(aBlock);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_2;
  v41[3] = &unk_1E82312D8;
  v18 = v13;
  v42 = v18;
  v19 = v15;
  v48 = buf;
  v43 = v19;
  v44 = self;
  v49 = v8;
  v20 = v10;
  v45 = v20;
  v21 = v11;
  v46 = v21;
  v22 = v17;
  v47 = v22;
  v23 = _Block_copy(v41);
  if ([v32 count])
  {
    if ([v21 singleGroup])
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_3;
      v38[3] = &unk_1E8231300;
      v40 = buf;
      v39 = v22;
      [(MPCAssistantSendCommand *)self _formGroupAndSendCommand:v8 withOptions:v20 toExternalDestination:v21 completion:v38];
      v24 = v39;
    }

    else
    {
      discovery = self->_discovery;
      v28 = [v21 outputDeviceUIDs];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_4;
      v33[3] = &unk_1E8231328;
      v34 = v21;
      v35 = self;
      v36 = v22;
      v37 = v23;
      [(MPCAssistantDiscovery *)discovery discoverRemoteControlEndpointsMatchingUIDs:v28 completion:v33];

      v24 = v34;
    }
  }

  else
  {
    v25 = [v21 outputGroups];
    v26 = [v25 count] == 0;

    if (v26)
    {
      if ([v21 origin])
      {
        v24 = [v21 createPlayerPath];
        [(MPCAssistantSendCommand *)self _sendCommand:v8 path:v24 options:v20 queue:v19 completion:v22];
      }

      else
      {
        v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *v53 = 138543362;
          v54 = v21;
          _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_ERROR, "Cannot send command: no output devices specified in destination: %{public}@", v53, 0xCu);
        }

        v24 = MPCAssistantCreateError(8);
        v30 = [[MPCAssistantSendCommandResult alloc] initWithReturnStatuses:0 error:v24];
        (*(v31 + 2))(v31, v30);
      }
    }

    else
    {
      v24 = [v21 outputGroups];
      (*(v23 + 2))(v23, v24);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:v6 error:v5];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  [(MPCAssistantSendCommandResult *)v8 setDevicesControlled:v7];

  (*(*(a1 + 32) + 16))();
}

void __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Default_Oversize");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543874;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = [v20 count];
    *&buf[22] = 2114;
    v51 = v20;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "Command %{public}@ all %lu endpoints: %{public}@", buf, 0x20u);
  }

  v5 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v51 = __Block_byref_object_copy__466;
  v52 = __Block_byref_object_dispose__467;
  v53 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__466;
  v45 = __Block_byref_object_dispose__467;
  v46 = 0;
  if ([v20 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = v20;
    v7 = [v6 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v7)
    {
      v22 = *v38;
      obj = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v37 + 1) + 8 * i);
          dispatch_group_enter(v5);
          v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 138543362;
            v48 = v9;
            _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "To endpoint: %{public}@", v47, 0xCu);
          }

          v11 = MRAVEndpointCopyOutputDevices();
          v12 = *(a1 + 40);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_6;
          block[3] = &unk_1E82394D8;
          v36 = *(a1 + 80);
          v13 = v11;
          v35 = v13;
          dispatch_sync(v12, block);
          v14 = *(a1 + 88);
          v16 = *(a1 + 48);
          v15 = *(a1 + 56);
          v17 = *(a1 + 64);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_2_8;
          v27[3] = &unk_1E8231288;
          v31 = &v41;
          v28 = *(a1 + 32);
          v33 = v9;
          v29 = *(a1 + 40);
          v32 = buf;
          v30 = v5;
          [v16 _sendCommand:v14 withOptions:v15 toEndpoint:v9 toDestination:v17 completion:v27];
        }

        v6 = obj;
        v7 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v18 = MPCAssistantCreateError(1);
    v6 = v42[5];
    v42[5] = v18;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_2_10;
  v23[3] = &unk_1E82312B0;
  v19 = *(a1 + 40);
  v23[4] = *(a1 + 48);
  v24 = *(a1 + 72);
  v25 = buf;
  v26 = &v41;
  dispatch_group_notify(v5, v19, v23);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(buf, 8);
}

void __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (![*(a1 + 32) originatingDeviceControl] || objc_msgSend(v5, "count") || (v7 = *(a1 + 40), objc_msgSend(*(a1 + 32), "appBundleID"), v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = objc_msgSend(v7, "_isAnyDeviceControllable:forBundleID:", v6, v8), v8, (v7 & 1) != 0))
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = [v6 count];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "Send to originating device: Not remote controllable.", &v14, 2u);
      }

      v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      v12 = 2;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138543362;
        v15 = v6;
        v12 = 2;
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEBUG, "No remote controllable device found among devices: %{public}@", &v14, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "Send to originating device: Unable to discover", &v14, 2u);
      }

      v12 = 1;
    }

    v13 = MPCAssistantCreateError(v12);
    [*(*(a1 + 40) + 16) stopDiscovery];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_2_8(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    IsInformational = MRMediaRemoteErrorIsInformational();
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    v9 = v8;
    if (IsInformational)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 72);
        *buf = 138543874;
        v27 = v10;
        v28 = 2114;
        v29 = v11;
        v30 = 2114;
        v31 = v6;
        v12 = "Sent %{public}@ to %{public}@ informational: %{public}@";
        v13 = v9;
        v14 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
        v17 = 32;
        goto LABEL_10;
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 72);
      *buf = 138543874;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 2114;
      v31 = v6;
      v12 = "Sent %{public}@ to %{public}@ error: %{public}@";
      v13 = v9;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 72);
      *buf = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      v12 = "Sent %{public}@ to %{public}@";
      v13 = v9;
      v14 = OS_LOG_TYPE_DEFAULT;
      v17 = 22;
LABEL_10:
      _os_log_impl(&dword_1C5C61000, v13, v14, v12, buf, v17);
    }
  }

  v20 = *(a1 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_9;
  v23[3] = &unk_1E82394D8;
  v21 = *(a1 + 64);
  v24 = v5;
  v25 = v21;
  v22 = v5;
  dispatch_sync(v20, v23);
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_2_10(uint64_t a1)
{
  [*(*(a1 + 32) + 16) stopDiscovery];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __95__MPCAssistantSendCommand_sendMediaRemoteCommand_withOptions_toEndpointDestination_completion___block_invoke_9(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 40))
  {
    v3 = [*(a1 + 32) error];

    if (!v3)
    {
      return;
    }

    v2 = *(*(a1 + 40) + 8);
  }

  v4 = *(a1 + 32);

  objc_storeStrong((v2 + 40), v4);
}

- (MPCAssistantSendCommand)init
{
  v8.receiver = self;
  v8.super_class = MPCAssistantSendCommand;
  v2 = [(MPCAssistantSendCommand *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPCAssistantConnection);
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = objc_alloc_init(MPCAssistantDiscovery);
    discovery = v2->_discovery;
    v2->_discovery = v5;
  }

  return v2;
}

@end