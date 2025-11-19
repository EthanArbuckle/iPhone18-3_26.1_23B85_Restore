@interface MPCLeaseManager
@end

@implementation MPCLeaseManager

void __53___MPCLeaseManager__updateStateForPlaybackPrevention__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) shouldPreventPlayback];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 134218242;
      v28 = v5;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Pausing [current item (%{public}@) requested playback prevention]", buf, 0x16u);
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = MSVNanoIDCreateTaggedPointer();
    v3 = [v7 stringWithFormat:@"LeasePreventionPause_%@", v8];

    [*(a1 + 48) pauseForLeasePreventionWithIdentifier:v3 completion:&__block_literal_global_19773];
    v9 = [*(a1 + 32) leasePlaybackPreventionState];
    v10 = [*(a1 + 32) leaseStatus];
    if (v9 == 1)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      v12 = [WeakRetained delegate];
      if (objc_opt_respondsToSelector())
      {
        v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
        v14 = [v10 stateReasonDialog];
        v15 = [v14 responseDictionary];
        [v13 setObject:v15 forKeyedSubscript:@"MPCErrorUserInfoKeyStoreDialogDictionary"];

        [v13 setObject:v10 forKeyedSubscript:@"MPCErrorUserInfoKeyLeaseStatus"];
        v16 = [v10 stateReasonDialogMetricsDictionary];
        [v13 setObject:v16 forKeyedSubscript:@"MPCErrorUserInfoKeyMetricsDictionary"];

        v17 = [*(a1 + 32) playbackError];
        [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696AA08]];

        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:30 userInfo:v13];
        v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          v20 = *(a1 + 40);
          *buf = 134218498;
          v28 = v20;
          v29 = 2114;
          v30 = v21;
          v31 = 2114;
          v32 = v13;
          _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Notifying delegate of lease prevention [engine:didPauseForLeaseEndWithError:] - item: %{public}@ - userInfo: %{public}@", buf, 0x20u);
        }

        [v12 engine:WeakRetained didPauseForLeaseEndWithError:v18];
      }

      else if (objc_opt_respondsToSelector())
      {
        v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 32);
          v25 = *(a1 + 40);
          *buf = 134218242;
          v28 = v25;
          v29 = 2114;
          v30 = v26;
          _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Notifying delegate of lease prevention [engineDidPauseForLeaseEnd:] - item: %{public}@", buf, 0x16u);
        }

        [v12 engineDidPauseForLeaseEnd:WeakRetained];
      }
    }
  }

  else if (v4)
  {
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    *buf = 134218242;
    v28 = v22;
    v29 = 2114;
    v30 = v23;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Ignoring lease playback prevention [lease being acquired] - item:%{public}@", buf, 0x16u);
  }
}

void __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  (*(*(a1 + 40) + 16))();
}

void __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  msv_dispatch_on_main_queue();
}

void __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_7;
    v9[3] = &unk_1E8236478;
    v9[4] = *(a1 + 32);
    v13 = *(a1 + 56);
    v10 = v5;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    [v10 reloadFairPlayKeyStatusWithCompletionHandler:v9];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 134218242;
      v15 = v8;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: finished [no subscription lease session] error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 134218242;
      v30 = v8;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: failed [failed to reload FairPlay key status] error: %{public}@", buf, 0x16u);
    }

LABEL_4:

    (*(*(a1 + 64) + 16))();
    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E69708A8] standardUserDefaults];
  [v9 HomePodPFSQForcedLeaseRenewThreshold];
  v11 = v10;

  v12 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v13 = [v12 isAudioAccessory];

  if (!v13 || ([*(a1 + 40) lastPlaybackRequestDate], (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(*(a1 + 40), "lastPlaybackRequestDate"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "timeIntervalSinceNow"), v17 = v16, v15, v14, v17 >= -v11))
  {
    if (([v5 hasOnlinePlaybackKeys] & 1) != 0 || objc_msgSend(v5, "hasOfflinePlaybackKeys"))
    {
      v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 134218242;
        v30 = v18;
        v31 = 2114;
        v32 = v5;
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: finished [already had lease with playback keys]. status: %{public}@", buf, 0x16u);
      }

      goto LABEL_4;
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    *buf = 134218242;
    v30 = v20;
    v31 = 2112;
    v32 = v21;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: renewing lease account: %@", buf, 0x16u);
  }

  v22 = [objc_alloc(MEMORY[0x1E69E44A8]) initWithRequestContext:*(a1 + 56)];
  [v22 setShouldPreventLeaseAcquisition:1];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_11;
  v25[3] = &unk_1E8236450;
  v23 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  objc_copyWeak(&v27, &location);
  v26 = *(a1 + 64);
  v24 = [v23 performPlaybackRequest:v22 completionHandler:v25];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
LABEL_16:
}

void __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_11(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E696ABC0] errorForICError:a4 response:a2];
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v8 treeDescription];
      *buf = 134218242;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: finished error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 134217984;
    v21 = v13;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: finished", buf, 0xCu);
  }

  if ([v7 isNotEmpty])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v15 = [WeakRetained playbackEngine];
    v16 = [v15 eventStream];
    v18[0] = @"network-operation-type";
    v18[1] = @"network-operation-reason";
    v19[0] = &unk_1F4599448;
    v19[1] = @"Preparing for playback";
    v18[2] = @"blocks-playback";
    v18[3] = @"network-metrics";
    v19[2] = MEMORY[0x1E695E110];
    v19[3] = v7;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
    [v16 emitEventType:@"network-operation" payload:v17];
  }

  (*(*(a1 + 40) + 16))();
}

void __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) hashedDSID];
  v6 = [v2 objectForKeyedSubscript:v3];

  v4 = *(*(a1 + 32) + 24);
  v5 = [*(a1 + 40) hashedDSID];
  [v4 setObject:0 forKeyedSubscript:v5];

  v6[2](v6, *(a1 + 48));
}

void __61___MPCLeaseManager_getHasPreparedLeaseForAccount_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61___MPCLeaseManager_getHasPreparedLeaseForAccount_completion___block_invoke_2;
    v7[3] = &unk_1E82363B0;
    v8 = *(a1 + 32);
    [a2 reloadFairPlayKeyStatusWithCompletionHandler:v7];
  }
}

void __61___MPCLeaseManager_getHasPreparedLeaseForAccount_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 hasOnlinePlaybackKeys], v5);
}

@end