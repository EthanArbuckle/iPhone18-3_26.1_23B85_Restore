@interface MPCAssistantAvailability
- (int64_t)assistantStreamingGetAvailability:(id)availability;
- (void)assistantRadioGetAvailability:(id)availability completion:(id)completion;
@end

@implementation MPCAssistantAvailability

- (void)assistantRadioGetAvailability:(id)availability completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = [(MPCAssistantAvailability *)self assistantStreamingGetAvailability:*&availability];
  if (v18[3] == 4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69C6B58]);
    if ([v7 hasLoadedRadioAvailability])
    {
      isRadioAvailable = [v7 isRadioAvailable];
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v22) = isRadioAvailable;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "Using cached availability: %{BOOL}u", buf, 8u);
      }

      v10 = 4;
      if (!isRadioAvailable)
      {
        v10 = 0;
      }

      v18[3] = v10;
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v18[3] - 1;
        if (v12 > 3)
        {
          v13 = @"MPCAssistantStreamingAvailabilityNone";
        }

        else
        {
          v13 = off_1E82307D8[v12];
        }

        *buf = 138543362;
        v22 = v13;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "Radio availability: %{public}@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, v18[3]);
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__MPCAssistantAvailability_assistantRadioGetAvailability_completion___block_invoke;
      v14[3] = &unk_1E82307B8;
      v16 = &v17;
      v15 = completionCopy;
      [v7 getRadioAvailabilityWithCompletionHandler:v14];
    }
  }

  else
  {
    (completionCopy[2])(completionCopy);
  }

  _Block_object_dispose(&v17, 8);
}

void __69__MPCAssistantAvailability_assistantRadioGetAvailability_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "Error fetching radio availability: %{public}@", &v12, 0xCu);
    }
  }

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109120;
    LODWORD(v13) = a2;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "Using fetched availability: %{BOOL}u", &v12, 8u);
  }

  v8 = 4;
  if (!a2)
  {
    v8 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24) - 1;
    if (v10 > 3)
    {
      v11 = @"MPCAssistantStreamingAvailabilityNone";
    }

    else
    {
      v11 = off_1E82307D8[v10];
    }

    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "Radio availability: %{public}@", &v12, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (int64_t)assistantStreamingGetAvailability:(id)availability
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "Device supports streaming", &v20, 2u);
  }

  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  networkType = [mEMORY[0x1E69E4428] networkType];

  IsWiFi = ICEnvironmentNetworkTypeIsWiFi();
  IsWired = ICEnvironmentNetworkTypeIsWired();
  IsCellular = ICEnvironmentNetworkTypeIsCellular();
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  preferredMusicLowBandwidthResolution = [standardUserDefaults preferredMusicLowBandwidthResolution];

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    *v21 = networkType;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "Network type: %ld", &v20, 0xCu);
  }

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109888;
    *v21 = IsWiFi;
    *&v21[4] = 1024;
    *&v21[6] = IsWired;
    v22 = 1024;
    v23 = IsCellular;
    v24 = 1024;
    v25 = preferredMusicLowBandwidthResolution > 0;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "Wifi: %{BOOL}u Wired: %{BOOL}u Cellular: %{BOOL}u Allowed: %{BOOL}u", &v20, 0x1Au);
  }

  v13 = preferredMusicLowBandwidthResolution > 0;

  if ((IsWired | IsWiFi) & 1 | ((IsCellular & 1) == 0))
  {
    v14 = IsWired | IsWiFi;
  }

  else
  {
    v14 = v13;
  }

  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109120;
    *v21 = v14 & 1;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "Network streaming available: %{BOOL}u", &v20, 8u);
  }

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v17)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "Network connection is available", &v20, 2u);
    }

    v18 = 4;
  }

  else
  {
    if (v17)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "No network connection available", &v20, 2u);
    }

    v18 = 1;
  }

  return v18;
}

@end