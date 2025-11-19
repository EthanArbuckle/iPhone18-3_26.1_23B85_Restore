@interface MPCAssistantGetVolume
- (void)getVolumeLevelForUID:(id)a3 completion:(id)a4;
@end

@implementation MPCAssistantGetVolume

- (void)getVolumeLevelForUID:(id)a3 completion:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v11[0] = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  [v6 arrayWithObjects:v11 count:1];
  v8 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
  v10 = v5;
  v9 = v5;
  MRAVReconnaissanceSessionBeginSearch();
  CFRelease(v8);
}

void __57__MPCAssistantGetVolume_getVolumeLevelForUID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[MPCAssistantGetVolume] Completing with error: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))(0.0);
  }

  else
  {
    v9 = [a2 firstObject];

    v10 = objc_alloc_init(MPCAssistantConnection);
    CFRetain(*(a1 + 40));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__MPCAssistantGetVolume_getVolumeLevelForUID_completion___block_invoke_2;
    v14[3] = &unk_1E8231120;
    v17 = a3;
    v18 = v9;
    v15 = v10;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16 = v11;
    v19 = v12;
    v13 = v10;
    [(MPCAssistantConnection *)v13 connectToEndpoint:a3 completion:v14];
  }
}

void __57__MPCAssistantGetVolume_getVolumeLevelForUID_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  MRAVEndpointGetOutputDeviceVolume();
}

void __57__MPCAssistantGetVolume_getVolumeLevelForUID_completion___block_invoke_3(uint64_t a1, void *a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v12 = 138543362;
      v13 = *&v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[MPCAssistantGetVolume] Completing with error: %{public}@", &v12, 0xCu);
    }

    v10.n128_u64[0] = 0;
    (*(*(a1 + 40) + 16))(v10);
  }

  else
  {
    if (v9)
    {
      v12 = 134217984;
      v13 = a3;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[MPCAssistantGetVolume] Completing with volume: %f", &v12, 0xCu);
    }

    v11.n128_f32[0] = a3;
    (*(*(a1 + 40) + 16))(v11);
  }

  CFRelease(*(a1 + 48));
}

@end