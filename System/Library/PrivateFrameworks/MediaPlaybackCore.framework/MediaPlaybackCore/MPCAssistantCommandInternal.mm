@interface MPCAssistantCommandInternal
- (MPCAssistantCommandInternal)init;
- (id)_applyOriginatingDeviceUIDs:(id)a3;
- (void)_findOutputDevicesForDestination:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_setAnalyticsError:(id)a3;
- (void)_setAnalyticsKey:(id)a3 value:(id)a4;
- (void)sendCommand:(unsigned int)a3 toDestination:(id)a4 commandID:(id)a5 commandBuilder:(id)a6 completion:(id)a7;
- (void)sendCommandWithResult:(unsigned int)a3 toDestination:(id)a4 withOptions:(id)a5 completion:(id)a6;
- (void)sendPlaybackArchiveWithResult:(id)a3 toDestination:(id)a4 withOptions:(id)a5 completion:(id)a6;
- (void)sendPlaybackQueueWithResult:(id)a3 toDestination:(id)a4 withOptions:(id)a5 completion:(id)a6;
@end

@implementation MPCAssistantCommandInternal

- (void)_setAnalyticsError:(id)a3
{
  v6 = a3;
  if (v6)
  {
    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"success" value:MEMORY[0x1E695E110]];
    v4 = [v6 localizedFailureReason];
    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"errorString" value:v4];

    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"errorCode" value:v5];
  }

  else
  {
    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"success" value:MEMORY[0x1E695E118]];
  }
}

- (void)_setAnalyticsKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_group_enter(self->_analyticsGroup);
  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPCAssistantCommandInternal__setAnalyticsKey_value___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(analyticsQueue, block);
}

void __54__MPCAssistantCommandInternal__setAnalyticsKey_value___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    [*(a1[4] + 32) setObject:a1[6] forKeyedSubscript:a1[5]];
  }

  v3 = *(a1[4] + 48);

  dispatch_group_leave(v3);
}

- (void)_findOutputDevicesForDestination:(id)a3 options:(id)a4 completion:(id)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B10B0]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B10B8]];
    v16 = v15;
    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v17 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B10D0]];
      v18 = v17;
      if (v17)
      {
        v14 = v17;
      }

      else
      {
        v19 = [MEMORY[0x1E696AFB0] UUID];
        v14 = [v19 UUIDString];
      }
    }
  }

  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"findOutputDevicesForDestination", v14];
  v21 = v20;
  if (v8)
  {
    [v20 appendFormat:@" for %@", v8];
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v83 = v21;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v23 = qos_class_self();
  v24 = [(MPCAssistantCommandInternal *)self _applyOriginatingDeviceUIDs:v8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__MPCAssistantCommandInternal__findOutputDevicesForDestination_options_completion___block_invoke;
  aBlock[3] = &unk_1E8230D00;
  v81 = v23;
  v76 = @"findOutputDevicesForDestination";
  v25 = v14;
  v77 = v25;
  v78 = v24;
  v26 = v11;
  v79 = v26;
  v27 = v10;
  v80 = v27;
  v28 = v24;
  v29 = _Block_copy(aBlock);
  v30 = [(MPCAssistantCommandInternal *)self _applyOriginatingDeviceUIDs:v28];

  v31 = [MEMORY[0x1E69B0B08] currentSettings];
  v32 = [v31 supportPTOTRefactorPart2];

  if (v32)
  {
    v64 = self;
    v33 = v8;
    v34 = v25;
    v35 = v27;
    v36 = v26;
    v37 = v9;
    v38 = [v30 origin];
    if ([v38 isLocal])
    {
      v39 = [v30 mutableCopy];
      v40 = [v39 outputDeviceUIDs];

      if (v40)
      {
        v61 = [MEMORY[0x1E696AAA8] currentHandler];
        [v61 handleFailureInMethod:a2 object:v64 file:@"MPCAssistantCommand.m" lineNumber:653 description:{@"Invalid parameter not satisfying: %@", @"!newDestination.outputDeviceUIDs"}];
      }

      v41 = &unk_1F4599790;
      v42 = v39;
    }

    else
    {
      if ([v38 identifier] != 1129140302)
      {
        if (!v38)
        {
          goto LABEL_25;
        }

        v44 = [MEMORY[0x1E696AAA8] currentHandler];
        [v44 handleFailureInMethod:a2 object:v64 file:@"MPCAssistantCommand.m" lineNumber:661 description:{@"Invalid parameter not satisfying: %@", @"!origin"}];
        v39 = v30;
LABEL_24:

        v30 = v39;
LABEL_25:
        v29[2](v29, v30);

        v9 = v37;
        v26 = v36;
        v27 = v35;
        v25 = v34;
        v8 = v33;
        goto LABEL_28;
      }

      v42 = [v30 mutableCopy];
      v39 = v42;
      v41 = &unk_1F45997A8;
    }

    [v42 setOutputDeviceUIDs:v41];
    v44 = v30;
    goto LABEL_24;
  }

  v43 = [v30 outputDeviceUIDs];
  if ([v43 count])
  {

LABEL_27:
    v29[2](v29, v30);
    goto LABEL_28;
  }

  v45 = [v30 origin];

  if (v45)
  {
    goto LABEL_27;
  }

  v68 = [MEMORY[0x1E69B0A20] localDeviceInfo];
  v46 = [v68 deviceUID];
  v47 = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
  v48 = v47;
  v65 = v46;
  if ((!v46 || [v47 isProxyGroupPlayer]) && MSVDeviceIsAudioAccessory())
  {
    v49 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_DEFAULT, "Found Default Destination: Proxy Promotion", buf, 2u);
    }

    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"actualDestination" value:@"proxy promotion"];
    v50 = [v30 mutableCopy];
    v51 = v65;
    if (!v65)
    {
      v51 = [v48 uniqueIdentifier];
    }

    [MEMORY[0x1E695DEC8] arrayWithObject:v51];
    v52 = v66 = v48;
    [v50 setOutputDeviceUIDs:v52];

    v48 = v66;
    v29[2](v29, v50);
  }

  else
  {
    v53 = objc_alloc(MEMORY[0x1E69B0AE0]);
    v54 = [v53 initWithInitiator:*MEMORY[0x1E69B0968] requestID:v25 reason:@"findOutputDevicesForDestination"];
    v62 = MEMORY[0x1E69B0990];
    v63 = v8;
    v55 = v25;
    v56 = v27;
    v57 = v26;
    v58 = v9;
    sendCommandQueue = self->_sendCommandQueue;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __83__MPCAssistantCommandInternal__findOutputDevicesForDestination_options_completion___block_invoke_191;
    v69[3] = &unk_1E8230D28;
    v70 = v68;
    v71 = self;
    v72 = v54;
    v73 = v30;
    v74 = v29;
    v50 = v54;
    v60 = sendCommandQueue;
    v9 = v58;
    v26 = v57;
    v27 = v56;
    v25 = v55;
    v8 = v63;
    [v62 findMyGroupLeaderWithTimeout:v50 details:v60 queue:v69 completion:5.0];

    v51 = v65;
  }

LABEL_28:
}

void __83__MPCAssistantCommandInternal__findOutputDevicesForDestination_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qos_class_self();
  if (*(a1 + 72) != v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"priority degraded from %u -> %u", *(a1 + 72), v4];
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138543874;
      v32 = v7;
      v33 = 2114;
      v34 = v8;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v9 = *(a1 + 48);
  v10 = _MRLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v9)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = [MEMORY[0x1E695DF00] date];
      [v15 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v32 = v12;
      v33 = 2114;
      v34 = v13;
      v35 = 2112;
      v36 = v3;
      v37 = 2114;
      v38 = v14;
      v39 = 2048;
      v40 = v16;
      v17 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v18 = v10;
      v19 = 52;
      goto LABEL_17;
    }

    if (!v11)
    {
      goto LABEL_18;
    }

    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v32 = v24;
    v33 = 2114;
    v34 = v25;
    v35 = 2112;
    v36 = v3;
    v37 = 2048;
    v38 = v26;
    v17 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_14;
  }

  if (v9)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v32 = v20;
    v33 = 2114;
    v34 = v21;
    v35 = 2114;
    v36 = v22;
    v37 = 2048;
    v38 = v23;
    v17 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_14:
    v18 = v10;
    v19 = 42;
    goto LABEL_17;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  v15 = [MEMORY[0x1E695DF00] date];
  [v15 timeIntervalSinceDate:*(a1 + 56)];
  *buf = 138543874;
  v32 = v27;
  v33 = 2114;
  v34 = v28;
  v35 = 2048;
  v36 = v29;
  v17 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
  v18 = v10;
  v19 = 32;
LABEL_17:
  _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);

LABEL_18:
  v30 = *(a1 + 64);
  if (v30)
  {
    (*(v30 + 16))(v30, v3);
  }
}

void __83__MPCAssistantCommandInternal__findOutputDevicesForDestination_options_completion___block_invoke_191(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) deviceUID];

  if (v5)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v5;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "Found Default Destination: Group Leader %{public}@", buf, 0xCu);
    }

    [*(a1 + 40) _setAnalyticsKey:@"actualDestination" value:@"group leader"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__MPCAssistantCommandInternal__findOutputDevicesForDestination_options_completion___block_invoke_195;
    v23[3] = &unk_1E8236E20;
    v9 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = v5;
    v26 = *(a1 + 64);
    [v25 connectToExternalDeviceWithOptions:0 details:v9 completion:v23];
  }

  else if (v7)
  {
    v10 = v6;
    if ([v10 code] == 33 && (objc_msgSend(v10, "domain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", *MEMORY[0x1E69B0DC0]), v11, v12))
    {
      v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v28 = 0;
        _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEBUG, "Group leader endpoint is: %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) _setAnalyticsKey:@"actualDestination" value:@"group leader"];
      v14 = [*(a1 + 32) groupUID];
      v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v14;
        _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "Found Default Destination: WHA Group ID %{public}@", buf, 0xCu);
      }

      v16 = [*(a1 + 56) mutableCopy];
      [v16 setOutputGroupID:v14];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      v18 = v17;
      if (v10)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = [v10 treeDescription];
          *buf = 138543618;
          v28 = 0;
          v29 = 2114;
          v30 = v19;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "Group leader endpoint is: %{public}@ error=%{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v28 = 0;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEBUG, "Group leader endpoint is: %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    v21 = v20;
    if (v6)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = [v6 treeDescription];
        *buf = 138543618;
        v28 = 0;
        v29 = 2114;
        v30 = v22;
        _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "Group leader endpoint is: %{public}@ error=%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v28 = 0;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEBUG, "Group leader endpoint is: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __83__MPCAssistantCommandInternal__findOutputDevicesForDestination_options_completion___block_invoke_195(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([a2 code] == 119)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "Auth Skipped: Reforming group around local device without unauth device", buf, 2u);
    }

    v4 = [*(a1 + 32) mutableCopy];
    v5 = [*(a1 + 40) outputDevices];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__MPCAssistantCommandInternal__findOutputDevicesForDestination_options_completion___block_invoke_196;
    v11[3] = &unk_1E8230FE0;
    v12 = *(a1 + 40);
    v6 = [v5 msv_filter:v11];
    v7 = [v6 msv_map:&__block_literal_global_199];
    [v4 setOutputDeviceUIDs:v7];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ([*(a1 + 40) canStartNativePlayback])
    {
      v4 = [*(a1 + 32) mutableCopy];
      v14[0] = *(a1 + 40);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v4 setOutputGroups:v8];
    }

    else
    {
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "No CanStartNativePlayback: Reforming group", buf, 2u);
      }

      v4 = [*(a1 + 32) mutableCopy];
      v8 = [*(a1 + 40) resolvedOutputDevices];
      v10 = [v8 msv_map:&__block_literal_global_202];
      [v4 setOutputDeviceUIDs:v10];
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __83__MPCAssistantCommandInternal__findOutputDevicesForDestination_options_completion___block_invoke_196(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 designatedGroupLeader];
  v5 = [v4 uid];
  v6 = [v3 containsUID:v5];

  return v6 ^ 1u;
}

- (id)_applyOriginatingDeviceUIDs:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 mutableCopy];
  if (([v3 originatingDeviceControl] & 1) == 0)
  {
    v5 = [v3 outputDeviceUIDs];
    if ([v5 count])
    {
    }

    else
    {
      v6 = [v3 originatingOutputDeviceUID];

      if (v6)
      {
        v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v3 originatingOutputDeviceUID];
          *buf = 138543362;
          v14 = v8;
          _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "Originating device destination: %{public}@", buf, 0xCu);
        }

        v9 = [v3 originatingOutputDeviceUID];
        v12 = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
        [v4 setOutputDeviceUIDs:v10];

        [v4 setSingleGroup:0];
        [v4 setOriginatingDeviceControl:1];
      }
    }
  }

  return v4;
}

- (void)sendPlaybackArchiveWithResult:(id)a3 toDestination:(id)a4 withOptions:(id)a5 completion:(id)a6
{
  v79 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v78 = v10;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEBUG, "Send Playback Archive: %@", buf, 0xCu);
  }

  v15 = +[MPCAssistantRemoteControlDestination nowPlayingApplicationDestination];
  v16 = [MEMORY[0x1E696AFB0] UUID];
  if (v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF20] dictionary];
  }

  v18 = v17;
  v19 = *MEMORY[0x1E69B10B8];
  v20 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69B10B8]];

  v47 = v16;
  if (!v20)
  {
    v21 = [v18 mutableCopy];
    v22 = [v16 UUIDString];
    [v21 setObject:v22 forKeyedSubscript:v19];

    v18 = v21;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke;
  aBlock[3] = &unk_1E8230BC0;
  v23 = v10;
  v72 = v23;
  v24 = v18;
  v73 = v24;
  v74 = self;
  v25 = v15;
  v75 = v25;
  v26 = v12;
  v76 = v26;
  v27 = _Block_copy(aBlock);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_2;
  v64[3] = &unk_1E8230C10;
  v28 = v23;
  v65 = v28;
  v66 = self;
  v29 = v25;
  v67 = v29;
  v30 = v24;
  v68 = v30;
  v69 = v27;
  v31 = v26;
  v70 = v31;
  v46 = v27;
  v32 = _Block_copy(v64);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_4;
  v58[3] = &unk_1E8230C88;
  v33 = v28;
  v59 = v33;
  v34 = v30;
  v60 = v34;
  v61 = self;
  v62 = v29;
  v35 = v32;
  v63 = v35;
  v36 = v29;
  v37 = _Block_copy(v58);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_7;
  v52[3] = &unk_1E8230CB0;
  v38 = v33;
  v53 = v38;
  v54 = v34;
  v55 = self;
  v56 = v31;
  v57 = v35;
  v39 = v35;
  v40 = v34;
  v41 = v31;
  v42 = _Block_copy(v52);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_3_160;
  v48[3] = &unk_1E8230CD8;
  v49 = v38;
  v50 = v42;
  v51 = v37;
  v43 = v37;
  v44 = v42;
  v45 = v38;
  [(MPCAssistantCommandInternal *)self _findOutputDevicesForDestination:v13 options:v11 completion:v48];
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) BOOLValueForOption:3] && (objc_msgSend(*(a1 + 32), "supportedOptions") & 8) != 0)
  {
    v4 = [*(a1 + 40) mutableCopy];
    v11 = *MEMORY[0x1E69B11E8];
    v12[0] = &unk_1F4598FC8;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(MPCAssistantSendCommandResult *)v4 addEntriesFromDictionary:v5];

    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_156;
    v8[3] = &unk_1E8230BE8;
    v10 = *(a1 + 64);
    v9 = v3;
    [v6 sendCommandWithResult:135 toDestination:v7 withOptions:v4 completion:v8];

    goto LABEL_6;
  }

  if (*(a1 + 64))
  {
    v4 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:v3 error:0];
    (*(*(a1 + 64) + 16))();
LABEL_6:
  }
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) BOOLValueForOption:1] && (objc_msgSend(*(a1 + 32), "supportedOptions") & 2) != 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_3;
    v7[3] = &unk_1E8230BE8;
    v8 = v3;
    v9 = *(a1 + 64);
    [v4 sendCommandWithResult:134 toDestination:v5 withOptions:v6 completion:v7];
  }

  else if (*(a1 + 72))
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  MRSystemAppPlaybackQueueCreate();
  v4 = [*(a1 + 32) playbackSessionType];
  MRSystemAppPlaybackQueueSetCustomDataIdentifier();

  v5 = [*(a1 + 32) playbackSessionData];
  MRSystemAppPlaybackQueueSetCustomData();

  MRSystemAppPlaybackQueueSetReplaceIntent();
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  MRSystemAppPlaybackQueueDestroy();
  v7 = [*(a1 + 40) mutableCopy];
  [v7 setObject:ExternalRepresentation forKeyedSubscript:*MEMORY[0x1E69B1268]];
  v8 = *MEMORY[0x1E69B10D0];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B10D0]];
  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [*(a1 + 32) playbackSessionIdentifier];

  if (v10)
  {
    v9 = [*(a1 + 32) playbackSessionIdentifier];
    [v7 setObject:v9 forKeyedSubscript:v8];
LABEL_4:
  }

  v11 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_5;
  v17[3] = &unk_1E8230C60;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = *(a1 + 48);
  v14 = *(&v16 + 1);
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v19 = v16;
  v18 = v15;
  v20 = *(a1 + 64);
  [v11 sendCommandWithResult:122 toDestination:v3 withOptions:v7 completion:v17];
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) playbackSessionIdentifier];
  v5 = [*(a1 + 32) playbackSessionType];
  v6 = [*(a1 + 32) playbackSessionData];
  v7 = MRPlaybackSessionCreate();

  ExternalRepresentation = MRPlaybackSessionCreateExternalRepresentation();
  CFRelease(v7);
  if (ExternalRepresentation)
  {
    v9 = [*(a1 + 40) mutableCopy];
    v30 = *MEMORY[0x1E69B1190];
    v31 = ExternalRepresentation;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v9 addEntriesFromDictionary:v10];

    if ([*(a1 + 32) BOOLValueForOption:2])
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    v12 = [*(a1 + 40) mutableCopy];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69B1208]];

    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [v14 UUIDString];
    [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69B10B0]];

    v16 = *(a1 + 48);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_158;
    v24[3] = &unk_1E8230C60;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v25 = v17;
    v26 = v18;
    v27 = v3;
    v28 = v12;
    v29 = *(a1 + 64);
    v19 = v12;
    [v16 sendCommandWithResult:133 toDestination:v27 withOptions:v9 completion:v24];

    v20 = v25;
  }

  else
  {
    v9 = MPCAssistantCreateError(10);
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v34 = v7;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "Failed to create external representation from %@ with error %@ and status %@", buf, 0x20u);
    }

    v22 = [MPCAssistantSendCommandResult alloc];
    v32 = v19;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v20 = [(MPCAssistantSendCommandResult *)v22 initWithReturnStatuses:v23 error:v9];

    (*(*(a1 + 56) + 16))();
  }
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_3_160(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) type];
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = 48;
  }

  else
  {
    v4 = 40;
  }

  (*(*(a1 + v4) + 16))();
LABEL_6:
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_158(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) supportedOptions] & 2) != 0)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_2_159;
    v9[3] = &unk_1E8230C38;
    v8 = *(a1 + 56);
    v10 = *(a1 + 64);
    [v6 sendCommandWithResult:25 toDestination:v7 withOptions:v8 completion:v9];
  }

  else
  {
    v4 = *(a1 + 64);
    v5 = [v3 commandResult];
    (*(v4 + 16))(v4, v5);
  }
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_2_159(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 commandResult];
  (*(v2 + 16))(v2, v3);
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) supportedOptions] & 2) != 0)
  {
    if ([*(a1 + 32) BOOLValueForOption:2])
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    v5 = [*(a1 + 40) mutableCopy];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B1208]];

    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69B10B0]];

    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_6;
    v12[3] = &unk_1E8230C38;
    v13 = *(a1 + 64);
    [v10 sendCommandWithResult:25 toDestination:v11 withOptions:v5 completion:v12];
  }

  else
  {
    v4 = *(a1 + 64);
    v5 = [v3 commandResult];
    (*(v4 + 16))(v4, v5);
  }
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 commandResult];
  (*(v2 + 16))(v2, v3);
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) error];

  v4 = *(a1 + 40);
  if (v3)
  {
    (*(v4 + 16))(*(a1 + 40), *(a1 + 32));
  }

  else
  {
    v5 = [v6 commandResult];
    (*(v4 + 16))(v4, v5);
  }
}

void __98__MPCAssistantCommandInternal_sendPlaybackArchiveWithResult_toDestination_withOptions_completion___block_invoke_156(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v7 = v3;
    v4 = [*(a1 + 32) error];

    v5 = *(a1 + 40);
    if (v4)
    {
      v6 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:*(a1 + 32) error:0];
      (*(v5 + 16))(v5, v6);
    }

    else
    {
      (*(v5 + 16))(*(a1 + 40), v7);
    }

    v3 = v7;
  }
}

- (void)sendPlaybackQueueWithResult:(id)a3 toDestination:(id)a4 withOptions:(id)a5 completion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "Send Queue: %{public}@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__MPCAssistantCommandInternal_sendPlaybackQueueWithResult_toDestination_withOptions_completion___block_invoke;
  v18[3] = &unk_1E8230B98;
  v18[4] = self;
  v19 = v11;
  v20 = v10;
  v21 = v12;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  [(MPCAssistantCommandInternal *)self _findOutputDevicesForDestination:v13 options:v17 completion:v18];
}

void __96__MPCAssistantCommandInternal_sendPlaybackQueueWithResult_toDestination_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *MEMORY[0x1E69B10B0];
  v6 = a2;
  v7 = [v4 objectForKeyedSubscript:v5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__MPCAssistantCommandInternal_sendPlaybackQueueWithResult_toDestination_withOptions_completion___block_invoke_2;
  v8[3] = &unk_1E8230B70;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  [v3 sendCommand:122 toDestination:v6 commandID:v7 commandBuilder:v8 completion:*(a1 + 56)];
}

void __96__MPCAssistantCommandInternal_sendPlaybackQueueWithResult_toDestination_withOptions_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__MPCAssistantCommandInternal_sendPlaybackQueueWithResult_toDestination_withOptions_completion___block_invoke_3;
  v8[3] = &unk_1E8236DF8;
  v11 = v5;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v7 = v5;
  [v6 getPlaybackQueueWithDestination:a2 completion:v8];
}

void __96__MPCAssistantCommandInternal_sendPlaybackQueueWithResult_toDestination_withOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = [v7 mutableCopy];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
    }

    v9 = v8;
    [v5 _mediaRemotePlaybackQueue];
    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
    [v9 setObject:ExternalRepresentation forKeyedSubscript:*MEMORY[0x1E69B1268]];
    v11 = [*(a1 + 40) contextID];

    if (v11)
    {
      v12 = [*(a1 + 40) contextID];
      [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69B10D0]];
    }

    v13 = [*(a1 + 40) userIdentity];

    if (v13)
    {
      v14 = MEMORY[0x1E696ACC8];
      v15 = [*(a1 + 40) userIdentity];
      v22 = 0;
      v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v22];
      v17 = v22;

      if (v17)
      {
        v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v17 treeDescription];
          *buf = 138543618;
          v24 = v16;
          v25 = 2114;
          v26 = v19;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "Send Queue (User Identity): %{public}@ error=%{public}@", buf, 0x16u);
        }
      }

      else
      {
        [v9 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69B1278]];
        v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v24 = v16;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEBUG, "Send Queue (User Identity): %{public}@", buf, 0xCu);
        }
      }
    }

    v20 = [*(a1 + 40) homeKitUserIdentifier];

    if (v20)
    {
      v21 = [*(a1 + 40) homeKitUserIdentifier];
      [v9 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69B1128]];
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)sendCommand:(unsigned int)a3 toDestination:(id)a4 commandID:(id)a5 commandBuilder:(id)a6 completion:(id)a7
{
  v154 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v13)
  {
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v16 UUIDString];
  }

  v17 = [MEMORY[0x1E695DF00] now];
  v105 = a3;
  v107 = MRMediaRemoteCopyCommandDescription();
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"sendCommand: %@", v107];
  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v18, v13];
  v20 = v19;
  if (v12)
  {
    [(MPCAssistantCommandInternal *)v19 appendFormat:@" for %@", v12];
  }

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v149 = v20;
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v22 = qos_class_self();
  v102 = v12;
  v23 = [(MPCAssistantCommandInternal *)self _applyOriginatingDeviceUIDs:v12];
  v24 = [MEMORY[0x1E69B09C0] discoverySessionWithEndpointFeatures:8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke;
  aBlock[3] = &unk_1E8230828;
  v147 = v22;
  v103 = v18;
  v141 = v103;
  v25 = v13;
  v142 = v25;
  v106 = v24;
  v143 = v106;
  v26 = v23;
  v144 = v26;
  v27 = v17;
  v145 = v27;
  v28 = v15;
  v146 = v28;
  v29 = _Block_copy(aBlock);
  v134[0] = MEMORY[0x1E69E9820];
  v134[1] = 3221225472;
  v134[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_29;
  v134[3] = &unk_1E8230878;
  v101 = v14;
  v139 = v101;
  v104 = v25;
  v135 = v104;
  v100 = v27;
  v136 = v100;
  v30 = v26;
  v137 = v30;
  v138 = self;
  v31 = _Block_copy(v134);
  v32 = [MEMORY[0x1E69B0B08] currentSettings];
  v33 = [v32 supportPTOTRefactorPart2];

  if (!v33)
  {
    v99 = v31;
    v43 = [MEMORY[0x1E69B0A20] localDeviceInfo];
    v44 = [v43 deviceUID];
    v96 = v43;
    v97 = [v43 clusterID];
    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"command" value:v107];
    v45 = [v30 appBundleID];
    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"appBundleID" value:v45];

    v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v149 = v107;
      _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEFAULT, "Send Command: %{public}@", buf, 0xCu);
    }

    v98 = v28;

    v47 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v149 = self;
      v150 = 2112;
      v151 = v107;
      _os_log_impl(&dword_1C5C61000, v47, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> sendCommandWithResult %@", buf, 0x16u);
    }

    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_50;
    v125[3] = &unk_1E8230918;
    v48 = v107;
    v126 = v48;
    v127 = self;
    v49 = v29;
    v128 = v49;
    v50 = _Block_copy(v125);
    v51 = [MEMORY[0x1E69B0B08] currentSettings];
    v52 = [v51 canHostMultiplayerStream];

    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_67;
    v116[3] = &unk_1E8230AD0;
    v116[4] = self;
    v53 = v30;
    v117 = v53;
    v118 = v48;
    v54 = v99;
    v120 = v54;
    v55 = v49;
    v121 = v55;
    v123 = v105;
    v56 = v50;
    v122 = v56;
    v37 = v44;
    v119 = v37;
    v124 = v52;
    v57 = _Block_copy(v116);
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_5;
    v114[3] = &unk_1E8230AF8;
    v95 = v57;
    v115 = v95;
    v94 = _Block_copy(v114);
    if (!v53)
    {
      v78 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      v28 = v98;
      v40 = v104;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5C61000, v78, OS_LOG_TYPE_ERROR, "No valid destination provided.", buf, 2u);
      }

      v79 = MPCAssistantCreateError(1);
      v80 = [MPCAssistantSendCommandResult alloc];
      v81 = [(MPCAssistantSendCommandResult *)v80 initWithReturnStatuses:MEMORY[0x1E695E0F0] error:v79];
      (*(v56 + 2))(v56, v81);

      v38 = v102;
      v39 = v103;
      v82 = v56;
      v42 = v29;
      v36 = v96;
      v75 = v94;
      goto LABEL_49;
    }

    v91 = v55;
    v92 = v54;
    v93 = v56;
    v58 = MEMORY[0x1E696AD98];
    v59 = [v53 outputDeviceUIDs];
    v60 = [v58 numberWithUnsignedInteger:{objc_msgSend(v59, "count")}];
    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"requestedUIDs" value:v60];

    v61 = MEMORY[0x1E696AD98];
    v62 = [v53 outputGroups];
    v63 = [v61 numberWithUnsignedInteger:{objc_msgSend(v62, "count")}];
    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"outputGroups" value:v63];

    v64 = [v53 outputGroupID];
    v65 = [v64 length];
    v66 = MEMORY[0x1E695E118];
    v67 = MEMORY[0x1E695E110];
    if (v65)
    {
      v68 = MEMORY[0x1E695E118];
    }

    else
    {
      v68 = MEMORY[0x1E695E110];
    }

    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"outputGroupIDPresent" value:v68];

    if ([v53 singleGroup])
    {
      v69 = v66;
    }

    else
    {
      v69 = v67;
    }

    [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"formGroup" value:v69];
    v70 = [v53 outputGroups];
    v42 = v29;
    if (![v70 count])
    {
      v71 = [v53 outputDeviceUIDs];
      if (![v71 count])
      {
        v72 = [v53 outputGroupID];
        if (!v72)
        {
          v90 = [v53 origin];

          if (!v90)
          {
            v74 = _MRLogForCategory();
            v28 = v98;
            v39 = v103;
            v40 = v104;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_31;
            }

            *buf = 138543874;
            v149 = v103;
            v150 = 2114;
            v151 = v104;
            v152 = 2112;
            v153 = @"No identifiers requested, processing locally.";
            goto LABEL_30;
          }

LABEL_26:
          v28 = v98;
          if (![v53 singleGroup] || (objc_msgSend(v53, "outputGroupID"), v73 = objc_claimAutoreleasedReturnValue(), v73, !v73))
          {
            [v106 setDiscoveryMode:3];
            v76 = [v53 outputDeviceUIDs];
            if ([v76 containsObject:v37])
            {
              v77 = 1;
            }

            else
            {
              v83 = [v53 outputDeviceUIDs];
              v77 = [v83 containsObject:v97];
            }

            v38 = v102;
            if (![v53 singleGroup] || !v77)
            {
              v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Send to destination: %@", v53];
              v86 = _MRLogForCategory();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                v149 = v103;
                v150 = 2114;
                v151 = v104;
                v152 = 2112;
                v153 = v85;
                _os_log_impl(&dword_1C5C61000, v86, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
              }

              v87 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
              v42 = v29;
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v149 = v85;
                _os_log_impl(&dword_1C5C61000, v87, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }

              [(MPCAssistantCommandInternal *)self _setAnalyticsKey:@"actualDestination" value:@"remote"];
              v88 = v85;
              v89 = [v53 mutableCopy];
              [v89 setIsLocal:0];
              v108[0] = MEMORY[0x1E69E9820];
              v108[1] = 3221225472;
              v108[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_149;
              v108[3] = &unk_1E8230B48;
              v75 = v94;
              v110 = v94;
              v111 = v91;
              v108[4] = self;
              v113 = v105;
              v109 = v53;
              v82 = v93;
              v112 = v93;
              v92[2](v92, v89, v108);

              v28 = v98;
              v39 = v103;
              v40 = v104;
              v36 = v96;
              goto LABEL_49;
            }

            v84 = _MRLogForCategory();
            v39 = v103;
            v40 = v104;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v149 = v103;
              v150 = 2114;
              v151 = v104;
              v152 = 2112;
              v153 = @"Local identifier requested, processing locally.";
              _os_log_impl(&dword_1C5C61000, v84, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(v94 + 2))(v94, 1);
            v42 = v29;
            v75 = v94;
LABEL_43:
            v36 = v96;
            v82 = v93;
LABEL_49:

            v41 = v99;
            goto LABEL_50;
          }

          v74 = _MRLogForCategory();
          v39 = v103;
          v40 = v104;
          if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
LABEL_31:

            v75 = v94;
            (*(v94 + 2))(v94, 0);
            v38 = v102;
            goto LABEL_43;
          }

          *buf = 138543874;
          v149 = v103;
          v150 = 2114;
          v151 = v104;
          v152 = 2112;
          v153 = @"Existing group ID requested, processing locally.";
LABEL_30:
          _os_log_impl(&dword_1C5C61000, v74, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
          goto LABEL_31;
        }
      }
    }

    goto LABEL_26;
  }

  v34 = [v30 createPlayerPath];
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_37;
  v129[3] = &unk_1E82308F0;
  v132 = v29;
  v133 = v105;
  v130 = v30;
  v131 = v34;
  v35 = *(v31 + 2);
  v36 = v34;
  v35(v31, v130, v129);

  v37 = v132;
  v38 = v102;
  v39 = v103;
  v40 = v104;
  v41 = v31;
  v42 = v29;
LABEL_50:
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qos_class_self();
  v5 = [v3 error];
  if (v5)
  {
  }

  else if (*(a1 + 80) > v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"priority degraded from %u -> %u", *(a1 + 80), v4];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v50 = v8;
      v51 = 2114;
      v52 = v9;
      v53 = 2112;
      v54 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  [*(a1 + 48) setDiscoveryMode:0];
  v10 = [v3 error];

  if (v3 && !v10)
  {
    v11 = *(a1 + 56);
    v12 = _MRLogForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 56);
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544386;
      v50 = v14;
      v51 = 2114;
      v52 = v15;
      v53 = 2112;
      v54 = v3;
      v55 = 2114;
      v56 = v16;
      v57 = 2048;
      v58 = v18;
      v19 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v20 = v12;
      v21 = 52;
      goto LABEL_22;
    }

    if (!v13)
    {
      goto LABEL_29;
    }

    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544130;
    v50 = v39;
    v51 = 2114;
    v52 = v40;
    v53 = 2112;
    v54 = v3;
    v55 = 2048;
    v56 = v41;
    v19 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_21;
  }

  v22 = [v3 error];

  v23 = *(a1 + 56);
  v24 = _MRLogForCategory();
  v12 = v24;
  if (v22)
  {
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (!v25)
      {
        goto LABEL_29;
      }

      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v17 = [v3 error];
      v28 = *(a1 + 56);
      v29 = [MEMORY[0x1E695DF00] date];
      [v29 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544386;
      v50 = v26;
      v51 = 2114;
      v52 = v27;
      v53 = 2114;
      v54 = v17;
      v55 = 2114;
      v56 = v28;
      v57 = 2048;
      v58 = v30;
      v31 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v32 = v12;
      v33 = 52;
      goto LABEL_26;
    }

    if (v25)
    {
      v42 = *(a1 + 32);
      v43 = *(a1 + 40);
      v17 = [v3 error];
      v29 = [MEMORY[0x1E695DF00] date];
      [v29 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544130;
      v50 = v42;
      v51 = 2114;
      v52 = v43;
      v53 = 2114;
      v54 = v17;
      v55 = 2048;
      v56 = v44;
      v31 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v32 = v12;
      v33 = 42;
LABEL_26:
      _os_log_error_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);

      goto LABEL_23;
    }
  }

  else
  {
    v34 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (!v34)
      {
        goto LABEL_29;
      }

      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      v37 = *(a1 + 56);
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544130;
      v50 = v35;
      v51 = 2114;
      v52 = v36;
      v53 = 2114;
      v54 = v37;
      v55 = 2048;
      v56 = v38;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_21:
      v20 = v12;
      v21 = 42;
LABEL_22:
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_23:

      goto LABEL_29;
    }

    if (v34)
    {
      v45 = *(a1 + 32);
      v46 = *(a1 + 40);
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138543874;
      v50 = v45;
      v51 = 2114;
      v52 = v46;
      v53 = 2048;
      v54 = v47;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v12;
      v21 = 32;
      goto LABEL_22;
    }
  }

LABEL_29:

  v48 = *(a1 + 72);
  if (v48)
  {
    (*(v48 + 16))(v48, v3);
  }
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 64);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2;
  v13[3] = &unk_1E8230850;
  v16 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v14 = v10;
  v15 = v9;
  v11 = *(v6 + 16);
  v12 = v5;
  v11(v6, a2, v13);
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:0 error:v6];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v9 = [*(a1 + 32) singleGroup];
    v10 = MEMORY[0x1E69B0990];
    v11 = *(a1 + 56);
    v12 = [*(a1 + 32) outputDeviceUIDs];
    if (v9)
    {
      v13 = [*(a1 + 40) client];
      v14 = qos_class_self();
      v15 = dispatch_get_global_queue(v14, 0);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_40;
      v21[3] = &unk_1E82308A0;
      v22 = *(a1 + 48);
      [v10 sendCommand:v11 withOptions:v5 toNewEndpointContainingOutputDeviceUIDs:v12 nowPlayingClient:v13 timeout:v15 queue:v21 completion:0.0];

      v16 = v22;
    }

    else
    {
      v17 = qos_class_self();
      v18 = dispatch_get_global_queue(v17, 0);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_3;
      v19[3] = &unk_1E82308C8;
      v20 = *(a1 + 48);
      [v10 sendCommand:v11 withOptions:v5 toEachEndpointContainingOutputDeviceUIDs:v12 timeout:v18 queue:v19 completion:0.0];

      v16 = v20;
    }
  }
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_50(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = [v3 error];
    IsInformational = MRMediaRemoteErrorIsInformational();

    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    v8 = v7;
    if (IsInformational)
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 32);
      v10 = [v3 returnStatuses];
      v11 = [v3 error];
      *buf = 138543874;
      v36 = v9;
      v37 = 2114;
      v38 = v10;
      v39 = 2114;
      v40 = v11;
      v12 = "Send Command Result: %{public}@, [%{public}@] informational: %{public}@";
      v13 = v8;
      v14 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v16 = *(a1 + 32);
      v10 = [v3 returnStatuses];
      v11 = [v3 error];
      *buf = 138543874;
      v36 = v16;
      v37 = 2114;
      v38 = v10;
      v39 = 2114;
      v40 = v11;
      v12 = "Send Command Result: %{public}@, [%{public}@] error: %{public}@";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_1C5C61000, v13, v14, v12, buf, 0x20u);
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = *(a1 + 32);
    v10 = [v3 returnStatuses];
    *buf = 138543618;
    v36 = v15;
    v37 = 2114;
    v38 = v10;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "Send Command Result: %{public}@, [%{public}@]", buf, 0x16u);
  }

LABEL_11:
  v17 = *(a1 + 40);
  v18 = [v3 error];
  [v17 _setAnalyticsError:v18];

  v19 = [v3 returnStatuses];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [v3 returnStatuses];
    v22 = [v21 componentsJoinedByString:{@", "}];

    [*(a1 + 40) _setAnalyticsKey:@"resultCodes" value:v22];
  }

  v23 = *(a1 + 40);
  v24 = MEMORY[0x1E696AD98];
  [v23[7] timeIntervalSinceNow];
  v26 = [v24 numberWithDouble:fabs(v25)];
  [v23 _setAnalyticsKey:@"duration" value:v26];

  v27 = *(a1 + 40);
  v29 = *(v27 + 40);
  v28 = *(v27 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_60;
  block[3] = &unk_1E8239298;
  block[4] = v27;
  dispatch_group_notify(v28, v29, block);
  if (*(a1 + 48))
  {
    v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 40);
      v32 = [v3 error];
      v33 = [v3 commandResult];
      *buf = 134218498;
      v36 = v31;
      v37 = 2112;
      v38 = v32;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Completing with error %@, commandResult: %@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_67(uint64_t a1, char a2)
{
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEBUG, "Attempting local device system music context modification to prepare for local playback.", buf, 2u);
  }

  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "Send to destination: LOCAL", buf, 2u);
  }

  [*(a1 + 32) _setAnalyticsKey:@"actualDestination" value:@"local"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_74;
  aBlock[3] = &unk_1E8230A80;
  v18 = *(a1 + 32);
  v6 = *(&v18 + 1);
  v27 = a2;
  v7 = *(a1 + 48);
  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  v26 = *(a1 + 88);
  v25 = *(a1 + 80);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v21 = v18;
  v22 = v9;
  v28 = *(a1 + 92);
  v10 = _Block_copy(aBlock);
  IsGroupLeader = MRMediaRemoteGetIsGroupLeader();
  if ((*(a1 + 92) & 1) != 0 || !IsGroupLeader)
  {
    goto LABEL_14;
  }

  v12 = [*(a1 + 40) outputGroupID];
  if (![v12 length])
  {
    v14 = [*(a1 + 40) outputDeviceUIDs];
    if ([v14 count])
    {
      v15 = *(a1 + 88);

      if (v15 == 122)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_14:
    v10[2](v10);
    goto LABEL_15;
  }

  v13 = *(a1 + 88);

  if (v13 != 122)
  {
    goto LABEL_14;
  }

LABEL_12:
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"When processing %@ if we are the group leader, pause our now-playing app if we have one", *(a1 + 48)];
  [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69B1200]];

  v19 = v10;
  MRMediaRemoteSendCommandWithReply();

LABEL_15:
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_149(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 msv_errorByUnwrappingDomain:@"MPCAssistantXSchemeURLError" code:10];

    if (v8)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v13 = *(a1 + 56);
      v14 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:0 error:v7];
      (*(v13 + 16))(v13, v14);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(v9 + 8);
    v12 = *(a1 + 72);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_150;
    v15[3] = &unk_1E8230B20;
    v15[4] = v9;
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    [v11 sendMediaRemoteCommand:v12 withOptions:v5 toEndpointDestination:v10 completion:v15];
  }
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_150(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1[4];
  v4 = [v8 devicesControlled];
  [v3 _setAnalyticsKey:@"actualDeviceCount" value:v4];

  v5 = [v8 error];
  if (!v8)
  {
    goto LABEL_4;
  }

  v6 = [v5 domain];
  if ([v6 isEqualToString:@"MPAssistantErrorDomain"])
  {
    v7 = [v5 code];

    if (v7 == 2)
    {
LABEL_4:
      (*(a1[5] + 16))();
      goto LABEL_7;
    }
  }

  else
  {
  }

  (*(a1[6] + 16))();
LABEL_7:
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_74(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v4 = *(a1 + 92);
  v5 = *(v3 + 16);
  v22[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_75;
  v22[3] = &unk_1E8230A08;
  v29 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  v28 = *(a1 + 88);
  v27 = *(a1 + 80);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v3;
  *(&v10 + 1) = v6;
  v23 = v10;
  v24 = v9;
  v30 = *(a1 + 93);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_112;
  v16[3] = &unk_1E8230A58;
  v21 = *(a1 + 92);
  v15 = *(a1 + 32);
  v11 = *(&v15 + 1);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v17 = v15;
  v18 = v14;
  v20 = *(a1 + 88);
  v19 = *(a1 + 80);
  [v5 modifySystemMusicContextForEndpointDestination:v2 discoveryHandler:v22 completion:v16];
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_75(uint64_t a1, void *a2, void *a3, void *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v67 = a3;
  v8 = a4;
  if (_os_feature_enabled_impl() && *(a1 + 92) == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_3_78;
    aBlock[3] = &unk_1E8230990;
    v9 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v87 = v9;
    v88 = *(a1 + 48);
    v89 = *(a1 + 64);
    v90 = *(a1 + 72);
    v93 = *(a1 + 88);
    v91 = *(a1 + 80);
    v92 = v8;
    v10 = _Block_copy(aBlock);
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_82;
    v82[3] = &unk_1E82309E0;
    v82[4] = *(a1 + 32);
    v83 = *(a1 + 56);
    v84 = *(a1 + 80);
    v11 = v10;
    v85 = v11;
    v12 = _Block_copy(v82);
    v13 = v12;
    if (!v67)
    {
      v45 = [*(a1 + 48) outputDeviceUIDs];
      if ([v45 count])
      {
      }

      else
      {
        v53 = [*(a1 + 48) outputGroupID];

        if (!v53)
        {
          (*(v11 + 2))(v11, v7);
          goto LABEL_50;
        }
      }

      v54 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = *(a1 + 48);
        *buf = 138412290;
        v97 = v55;
        _os_log_impl(&dword_1C5C61000, v54, OS_LOG_TYPE_ERROR, "Expected to find devices for destination %@, but none found.", buf, 0xCu);
      }

      v56 = MPCAssistantCreateError(1);
      v57 = *(a1 + 80);
      v58 = [MPCAssistantSendCommandResult alloc];
      v59 = [(MPCAssistantSendCommandResult *)v58 initWithReturnStatuses:MEMORY[0x1E695E0F0] error:v56];
      (*(v57 + 16))(v57, v59);

      goto LABEL_50;
    }

    v60 = v12;
    v61 = v11;
    v63 = v8;
    v64 = v7;
    v14 = [v7 outputDevices];
    v65 = [MEMORY[0x1E695DF70] array];
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = [v14 msv_map:&__block_literal_global];
      *buf = 134218242;
      v97 = v16;
      v98 = 2112;
      v99 = v17;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Checking existing devices on target endpoint: %@ ", buf, 0x16u);
    }

    v62 = a1;

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v14;
    v18 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v79;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v79 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v78 + 1) + 8 * i);
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v23 = v67;
          v24 = [v23 countByEnumeratingWithState:&v74 objects:v94 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v75;
            while (2)
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v75 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v74 + 1) + 8 * j);
                v29 = [v22 uid];
                LOBYTE(v28) = [v28 containsUID:v29];

                if (v28)
                {

                  goto LABEL_21;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v74 objects:v94 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          [v65 addObject:v22];
LABEL_21:
          ;
        }

        v19 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
      }

      while (v19);
    }

    v30 = v65;
    if ([v65 count])
    {
      v31 = [*(v62 + 48) outputDeviceUIDs];
      v7 = v64;
      v13 = v60;
      v11 = v61;
      if ([v31 count])
      {
        v32 = *(v62 + 93);

        v8 = v63;
        if (v32 == 1)
        {
          v33 = objc_alloc(MEMORY[0x1E696AEC0]);
          v34 = [v65 msv_map:&__block_literal_global_98];
          v35 = [v33 initWithFormat:@"unmatched existing devices: %@", v34];

          v60[2](v60, v35);
          goto LABEL_45;
        }
      }

      else
      {

        v8 = v63;
      }

      v48 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = *(v62 + 32);
        v50 = [v65 msv_map:&__block_literal_global_101];
        *buf = 134218242;
        v97 = v49;
        v30 = v65;
        v98 = 2112;
        v99 = v50;
        _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Removing unmatched existing devices: %@ ", buf, 0x16u);
      }

      v51 = *(v62 + 32);
      v52 = *(v51 + 24);
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_105;
      v71[3] = &unk_1E8236E20;
      v71[4] = v51;
      v73 = v61;
      v72 = v64;
      [v72 removeOutputDevices:v30 initiator:@"MPCAssistantCommand-removeUnwantedDevices" withReplyQueue:v52 completion:v71];

      goto LABEL_45;
    }

    v7 = v64;
    v11 = v61;
    v13 = v60;
    if (([v64 isLocalEndpoint] & 1) != 0 || objc_msgSend(v64, "connectionType") == 6)
    {
      v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      v8 = v63;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(v62 + 32);
        *buf = 134218242;
        v97 = v47;
        v98 = 2112;
        v99 = v64;
        _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Found suitable endpoint %@ ", buf, 0x16u);
      }
    }

    else
    {
      v8 = v63;
      if (*(v62 + 93))
      {
        v60[2](v60, @"Belong to remote endpoint");
        goto LABEL_45;
      }
    }

    (v61)[2](v61, v64);
LABEL_45:

LABEL_50:
    v44 = v87;
LABEL_51:

    goto LABEL_52;
  }

  if (*(a1 + 93) == 1)
  {
    v36 = [*(a1 + 48) outputDeviceUIDs];
    v37 = [v36 count];

    if (v37)
    {
      v38 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 32);
        v40 = [*(a1 + 48) outputDeviceUIDs];
        *buf = 134218242;
        v97 = v39;
        v98 = 2112;
        v99 = v40;
        _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Create hosted endpoint for routes %@ ", buf, 0x16u);
      }

      v41 = MEMORY[0x1E69B0990];
      v42 = [*(a1 + 48) outputDeviceUIDs];
      v43 = *(*(a1 + 32) + 24);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_110;
      v68[3] = &unk_1E82309B8;
      v69 = *(a1 + 80);
      v70 = v8;
      [v41 hostedEndpointForOutputDeviceUIDs:v42 queue:v43 completion:v68];

      v44 = v69;
      goto LABEL_51;
    }
  }

  (*(v8 + 2))(v8, v7);
LABEL_52:
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_112(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!_os_feature_enabled_impl() || (*(a1 + 76) & 1) == 0)
  {
    MRAVOutputContextGetSharedAudioPresentationContext();
    v7 = MRAVOutputContextCopyOutputDevices();
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    [v8 _setAnalyticsKey:@"actualDeviceCount" value:v9];

    if (v6)
    {
      v10 = *(a1 + 64);
      v11 = [MPCAssistantSendCommandResult alloc];
      v12 = [(MPCAssistantSendCommandResult *)v11 initWithReturnStatuses:MEMORY[0x1E695E0F0] error:v6];
      (*(v10 + 16))(v10, v12);
    }

    else
    {
      v12 = [*(a1 + 40) mutableCopy];
      if (([v5 isLocalEndpoint] & 1) != 0 || objc_msgSend(v5, "connectionType") == 6)
      {
        [(MPCAssistantSendCommandResult *)v12 setIsLocal:1];
      }

      else
      {
        v13 = [v5 origin];
        -[MPCAssistantSendCommandResult setIsLocal:](v12, "setIsLocal:", [v13 isLocallyHosted]);
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_3_116;
      v17[3] = &unk_1E8230A30;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 32);
      v20 = v15;
      v17[4] = v16;
      v22 = *(a1 + 72);
      v18 = v5;
      v19 = *(a1 + 40);
      v21 = *(a1 + 64);
      (*(v14 + 16))(v14, v12, v17);
    }
  }
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_3_116(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = *(a1 + 56);
    v6 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:0 error:v7];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    [*(*(a1 + 32) + 8) sendCommand:*(a1 + 72) withOptions:a2 toEndpoint:*(a1 + 40) toDestination:*(a1 + 48) completion:*(a1 + 64)];
  }
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_3_78(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 134218754;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Sending command %@ to destination %@ endpoint %@", buf, 0x2Au);
  }

  v8 = [*(a1 + 48) mutableCopy];
  if (([v3 isLocalEndpoint] & 1) != 0 || objc_msgSend(v3, "connectionType") == 6)
  {
    [v8 setIsLocal:1];
  }

  else
  {
    v9 = [v3 origin];
    [v8 setIsLocal:{objc_msgSend(v9, "isLocallyHosted")}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_79;
  v14[3] = &unk_1E8230968;
  v10 = *(a1 + 56);
  v18 = *(a1 + 64);
  v11 = *(a1 + 32);
  v21 = *(a1 + 88);
  v14[4] = v11;
  v15 = v3;
  v16 = *(a1 + 48);
  v17 = *(a1 + 40);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v12 = *(v10 + 16);
  v13 = v3;
  v12(v10, v8, v14);
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218242;
    v14 = v5;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Creating hosted endpoint for local because %{public}@", buf, 0x16u);
  }

  v6 = MEMORY[0x1E69B0990];
  v12 = *(a1 + 40);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v8 = *(*(a1 + 32) + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_84;
  v9[3] = &unk_1E82309B8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v6 hostedEndpointForOutputDeviceUIDs:v7 queue:v8 completion:v9];
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_105(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Removal completed with error %@ ", &v6, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_110(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v4 = *(a1 + 32);
    v5 = [MPCAssistantSendCommandResult alloc];
    v6 = [(MPCAssistantSendCommandResult *)v5 initWithReturnStatuses:MEMORY[0x1E695E0F0] error:v7];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_99(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 name];
  v5 = [v3 uid];

  v6 = [v2 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

id __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_96(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 name];
  v5 = [v3 uid];

  v6 = [v2 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

id __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_88(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 name];
  v5 = [v3 uid];

  v6 = [v2 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_84(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v4 = *(a1 + 32);
    v5 = [MPCAssistantSendCommandResult alloc];
    v6 = [(MPCAssistantSendCommandResult *)v5 initWithReturnStatuses:MEMORY[0x1E695E0F0] error:v7];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_79(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 64);
    v7 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:0 error:v5];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v8 + 8);
    v11 = *(a1 + 88);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_80;
    v13[3] = &unk_1E8230940;
    v13[4] = v8;
    v12 = *(a1 + 48);
    v14 = *(a1 + 56);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v15 = *(a1 + 40);
    [v10 sendCommand:v11 withOptions:a2 toEndpoint:v9 toDestination:v12 completion:v13];
  }
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_80(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = 134218498;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[KAOS] <%p> Command %@ completed with result: %@", &v8, 0x20u);
  }

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "Command completed", &v8, 2u);
  }

  (*(a1[7] + 16))();
  (*(a1[8] + 16))();
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2_40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[MPCAssistantSendCommandResult alloc] initWithCommandResult:v4 error:0];

  (*(*(a1 + 32) + 16))();
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [MPCAssistantSendCommandResult alloc];
  v8 = [v6 firstObject];

  v9 = [(MPCAssistantSendCommandResult *)v7 initWithCommandResult:v8 error:v5];
  (*(*(a1 + 32) + 16))();
}

void __93__MPCAssistantCommandInternal_sendCommand_toDestination_commandID_commandBuilder_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = [v5 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v8 = v7;
    [v7 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69B10B0]];
    v9 = MEMORY[0x1E696AD98];
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v10 = [v9 numberWithDouble:?];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69B1088]];

    v11 = [*(a1 + 48) originatingOutputDeviceUID];
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69B1160]];

    v12 = [*(a1 + 48) outputDeviceUIDs];

    if (v12)
    {
      v13 = MEMORY[0x1E696ACC8];
      v14 = [*(a1 + 48) outputDeviceUIDs];
      v21 = 0;
      v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v21];
      v12 = v21;
      [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69B10F0]];

      if (v12)
      {
        v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v23 = v12;
          _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "Encoding device IDs: %{public}@", buf, 0xCu);
        }
      }
    }

    v17 = *MEMORY[0x1E69B1200];
    v18 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1200]];

    if (!v18)
    {
      [v8 setObject:@"com.apple.MediaAssistant" forKeyedSubscript:v17];
    }

    v19 = *(a1 + 56);
    v20 = [v8 objectForKeyedSubscript:v17];
    [v19 _setAnalyticsKey:@"source" value:v20];

    (*(*(a1 + 64) + 16))();
  }
}

- (void)sendCommandWithResult:(unsigned int)a3 toDestination:(id)a4 withOptions:(id)a5 completion:(id)a6
{
  v8 = *&a3;
  v10 = a5;
  v11 = *MEMORY[0x1E69B10B0];
  v12 = a6;
  v13 = a4;
  v14 = [v10 objectForKeyedSubscript:v11];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__MPCAssistantCommandInternal_sendCommandWithResult_toDestination_withOptions_completion___block_invoke;
  v16[3] = &unk_1E8230800;
  v17 = v10;
  v15 = v10;
  [(MPCAssistantCommandInternal *)self sendCommand:v8 toDestination:v13 commandID:v14 commandBuilder:v16 completion:v12];
}

- (MPCAssistantCommandInternal)init
{
  v20.receiver = self;
  v20.super_class = MPCAssistantCommandInternal;
  v2 = [(MPCAssistantCommandInternal *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPCAssistantSendCommand);
    sendCommand = v2->_sendCommand;
    v2->_sendCommand = v3;

    v5 = objc_alloc_init(MPCAssistantEndpointContext);
    context = v2->_context;
    v2->_context = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.mediaplayer.assistant.MPCAssistantCommand.sendCommandQueue", v7);
    sendCommandQueue = v2->_sendCommandQueue;
    v2->_sendCommandQueue = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    analytics = v2->_analytics;
    v2->_analytics = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_create("com.apple.mediaplayer.assistant.MPCAssistantCommand.sendCommandQueue", v12);
    analyticsQueue = v2->_analyticsQueue;
    v2->_analyticsQueue = v13;

    v15 = dispatch_group_create();
    analyticsGroup = v2->_analyticsGroup;
    v2->_analyticsGroup = v15;

    v17 = [MEMORY[0x1E695DF00] now];
    startDate = v2->_startDate;
    v2->_startDate = v17;
  }

  return v2;
}

@end