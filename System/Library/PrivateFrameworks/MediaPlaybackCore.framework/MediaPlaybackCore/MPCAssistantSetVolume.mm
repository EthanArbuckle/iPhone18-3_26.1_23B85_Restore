@interface MPCAssistantSetVolume
- (void)executeWithUIDs:(id)ds action:(unint64_t)action volumeValue:(float)value completion:(id)completion;
@end

@implementation MPCAssistantSetVolume

- (void)executeWithUIDs:(id)ds action:(unint64_t)action volumeValue:(float)value completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v11 = objc_alloc(MEMORY[0x1E69B0AE0]);
  v12 = [v11 initWithInitiator:*MEMORY[0x1E69B0968] requestID:0 reason:@"MPCAssistantSetVolume"];
  v13 = dispatch_group_create();
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v78 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke;
  aBlock[3] = &unk_1E8231550;
  v15 = v13;
  v72 = v15;
  v76 = v77;
  v37 = v12;
  v73 = v37;
  selfCopy = self;
  v16 = v14;
  v75 = v16;
  v17 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_4;
  v66[3] = &unk_1E8231578;
  valueCopy = value;
  v18 = dsCopy;
  v67 = v18;
  actionCopy = action;
  v34 = v17;
  v68 = v34;
  v36 = _Block_copy(v66);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_6;
  v60[3] = &unk_1E82315C8;
  v63 = v77;
  v60[4] = self;
  v19 = v16;
  v61 = v19;
  v20 = v15;
  v62 = v20;
  actionCopy2 = action;
  valueCopy2 = value;
  v21 = _Block_copy(v60);
  localDeviceInfo = [MEMORY[0x1E69B0A20] localDeviceInfo];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_11;
  v58[3] = &unk_1E8232998;
  v23 = localDeviceInfo;
  v59 = v23;
  v24 = _Block_copy(v58);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_2_17;
  v56[3] = &unk_1E82315F0;
  v25 = v24;
  v57 = v25;
  v26 = [v18 msv_filter:v56];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_3;
  v54[3] = &unk_1E82315F0;
  v27 = v25;
  v55 = v27;
  v28 = [v18 msv_filter:v54];
  if ([v26 count])
  {
    v21[2](v21, v26);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__493;
  v52 = __Block_byref_object_dispose__494;
  v53 = 0;
  if ([v28 count])
  {
    v29 = objc_alloc_init(MPCAssistantDiscovery);
    v30 = v49[5];
    v49[5] = v29;

    dispatch_group_enter(v20);
    v31 = v49[5];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_19;
    v43[3] = &unk_1E8231618;
    v43[4] = self;
    v44 = v19;
    v45 = v20;
    v46 = v37;
    v47 = v36;
    [v31 discoverRemoteControlEndpointsMatchingUIDs:v28 completion:v43];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_22;
  block[3] = &unk_1E8236138;
  block[4] = self;
  v39 = v19;
  v40 = completionCopy;
  v41 = &v48;
  v42 = v77;
  v32 = completionCopy;
  v33 = v19;
  dispatch_group_notify(v20, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v77, 8);
}

void __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke(uint64_t a1, void *a2, void *a3, float a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = a2;
  dispatch_group_enter(v8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_2;
  v15[3] = &unk_1E8231528;
  v21 = a4;
  v10 = *(a1 + 56);
  v20 = *(a1 + 64);
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v16 = v7;
  v17 = v11;
  v18 = v10;
  v19 = *(a1 + 32);
  v13 = v7;
  *&v14 = a4;
  [v9 setOutputDeviceVolume:v13 outputDevice:v12 details:MEMORY[0x1E69E96A0] queue:v15 completion:v14];
}

void __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    *buf = 134218242;
    v41 = v5;
    v42 = 2114;
    v43 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] volume: %f endpoint %{public}@", buf, 0x16u);
  }

  v28 = v3;
  [v3 outputDevices];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v35;
    *&v7 = 134218242;
    v27 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 uid];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = *(a1 + 32);
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (!v14)
        {
          goto LABEL_16;
        }

        v15 = v14;
        v16 = *v31;
        while (2)
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if ([v11 containsUID:*(*(&v30 + 1) + 8 * j)])
            {

              v18 = *(a1 + 48);
              if (v18 == 2)
              {
                v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = *(a1 + 56);
                  *buf = v27;
                  v41 = v26;
                  v42 = 2114;
                  v43 = v12;
                  _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] decrease volume: %f outputDeviceUID %{public}@", buf, 0x16u);
                }

                [v28 volumeForOutputDeviceUID:v12];
                v24.n128_f32[0] = fmaxf(v24.n128_f32[0] - *(a1 + 56), 0.0);
              }

              else
              {
                if (v18 != 1)
                {
                  if (!v18)
                  {
                    v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                    {
                      v20 = *(a1 + 56);
                      *buf = v27;
                      v41 = v20;
                      v42 = 2114;
                      v43 = v12;
                      _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] set volume: %f outputDeviceUID %{public}@", buf, 0x16u);
                    }

                    v21.n128_u32[0] = *(a1 + 56);
                    (*(*(a1 + 40) + 16))(v21);
                  }

                  goto LABEL_32;
                }

                v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = *(a1 + 56);
                  *buf = v27;
                  v41 = v23;
                  v42 = 2114;
                  v43 = v12;
                  _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] increase volume: %f outputDeviceUID %{public}@", buf, 0x16u);
                }

                [v28 volumeForOutputDeviceUID:v12];
                v24.n128_f32[0] = v24.n128_f32[0] + *(a1 + 56);
                if (v24.n128_f32[0] > 1.0)
                {
                  v24.n128_f32[0] = 1.0;
                }
              }

              (*(*(a1 + 40) + 16))(v24);
              goto LABEL_32;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

LABEL_16:

LABEL_32:
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }
}

void __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_2_7;
  aBlock[3] = &unk_1E82315A0;
  v4 = *(a1 + 56);
  v14 = *(a1 + 32);
  v5 = *(&v14 + 1);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  v16 = v14;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  dispatch_group_enter(*(a1 + 48));
  v8 = *(a1 + 64);
  switch(v8)
  {
    case 2:
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 72);
        *buf = 134218242;
        v19 = v13;
        v20 = 2114;
        v21 = v3;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] decrease localVolume: %f outputDeviceUID %{public}@", buf, 0x16u);
      }

      goto LABEL_12;
    case 1:
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 72);
        *buf = 134218242;
        v19 = v12;
        v20 = 2114;
        v21 = v3;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] increase localVolume: %f outputDeviceUID %{public}@", buf, 0x16u);
      }

LABEL_12:

      MRMediaRemoteAdjustMediaPlaybackVolume();
      break;
    case 0:
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 72);
        *buf = 134218242;
        v19 = v10;
        v20 = 2114;
        v21 = v3;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] setLocalVolume: %f outputDeviceUID %{public}@", buf, 0x16u);
      }

      MRMediaRemoteSetMediaPlaybackVolume();
      break;
  }
}

uint64_t __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deviceUID];
  if ([v4 isEqualToString:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) clusterID];
    if ([v6 isEqualToString:v3])
    {
      v5 = 1;
    }

    else
    {
      v7 = [MEMORY[0x1E69B09A8] localDeviceUID];
      v8 = [v7 lowercaseString];
      v9 = [v3 lowercaseString];
      if ([v8 isEqual:v9])
      {
        v5 = 1;
      }

      else
      {
        v5 = [v3 isEqualToString:@"LOCAL_DEVICE"];
      }
    }
  }

  return v5;
}

void __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v18 = a3;
  if (![v5 count])
  {
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    v7 = *(a1 + 40);
    v8 = MPCAssistantCreateError(1);
    [v7 addObject:v8];

    objc_sync_exit(v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        dispatch_group_enter(*(a1 + 48));
        v15 = *(a1 + 56);
        v14 = *(a1 + 64);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_2_20;
        v19[3] = &unk_1E8236C80;
        v22 = v14;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v19[4] = v13;
        v19[5] = v16;
        v20 = v17;
        v21 = *(a1 + 48);
        [v13 connectToExternalDeviceWithOptions:0 details:v15 completion:v19];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_22(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(a1 + 40) copy];
  objc_sync_exit(v4);

  v6 = [v5 count];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v15 = 138543362;
    v16 = v5;
    v9 = "[MPCAssistantSetVolume] completed with error=%{public}@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LOWORD(v15) = 0;
    v9 = "[MPCAssistantSetVolume] complete";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 2;
  }

  _os_log_impl(&dword_1C5C61000, v10, v11, v9, &v15, v12);
LABEL_7:

  v13 = *(a1 + 48);
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    (*(v13 + 16))(*(a1 + 48), 0);
  }

  else
  {
    v14 = [*(a1 + 40) firstObject];
    (*(v13 + 16))(v13, v14);
  }
}

void __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_2_20(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] Could not connect to %{public}@. %{public}@", &v7, 0x16u);
    }

    v6 = *(a1 + 40);
    objc_sync_enter(v6);
    [*(a1 + 48) addObject:v3];
    objc_sync_exit(v6);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  dispatch_group_leave(*(a1 + 56));
}

void __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_2_7(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = a2;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] localVolume set failed with error: %{public}@", &v6, 0xCu);
    }

    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    [*(a1 + 40) addObject:a2];
    objc_sync_exit(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __71__MPCAssistantSetVolume_executeWithUIDs_action_volumeValue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] volume set failed with error: %{public}@", &v9, 0xCu);
    }

    v6 = *(a1 + 40);
    objc_sync_enter(v6);
    [*(a1 + 48) addObject:v3];
    objc_sync_exit(v6);
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 72);
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[MPCAssistantSetVolume] new volume for uid: %{public}@: %f", &v9, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 56));
}

@end