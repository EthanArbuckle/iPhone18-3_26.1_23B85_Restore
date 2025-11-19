@interface MPCQueueControllerBehaviorMusicDataSourceState
@end

@implementation MPCQueueControllerBehaviorMusicDataSourceState

void __76___MPCQueueControllerBehaviorMusicDataSourceState_reloadSection_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76___MPCQueueControllerBehaviorMusicDataSourceState_reloadSection_completion___block_invoke_2;
  v5[3] = &unk_1E82348B8;
  v5[4] = v2;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v4 loadPlaybackContext:v3 completion:v5];
}

void __76___MPCQueueControllerBehaviorMusicDataSourceState_reloadSection_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v40[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) _rtcSourceServiceName];
  v10 = *(a1 + 32);
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((v10 + 88));
    v12 = *(a1 + 32);
    v40[0] = v12[8];
    v39[0] = @"queue-section-id";
    v39[1] = @"queue-section-item-count";
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "_loadedItemCount")}];
    v40[1] = v13;
    v40[2] = v8;
    v39[2] = @"queue-load-error";
    v39[3] = @"queue-rtc-service-id";
    v14 = v9;
    if (!v9)
    {
      v14 = [MEMORY[0x1E695DFB0] null];
    }

    v40[3] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
    [WeakRetained emitEventType:@"queue-load-end" payload:v15];

    if (!v9)
    {
    }

    os_unfair_lock_lock((*(a1 + 32) + 16));
    v16 = *(a1 + 32);
    v17 = *(v16 + 56);
    *(v16 + 56) = 4;
    v18 = *(a1 + 32);
    v19 = *(v18 + 24);
    *(v18 + 24) = 0;

    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(*(a1 + 32) + 64);
      if (v17 >= 5)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", v17];
      }

      else
      {
        v22 = off_1E8232DD0[v17];
      }

      *buf = 138543618;
      v34 = v21;
      v35 = 2114;
      v36 = v22;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] reloadSection:… | changing state [failed reloadSection] oldState=%{public}@ newState=Error", buf, 0x16u);
    }

    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      v28 = *(v27 + 64);
      v29 = *(v27 + 32);
      *buf = 138543874;
      v34 = v28;
      v35 = 2048;
      v36 = v29;
      v37 = 2114;
      v38 = v8;
      _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] reloadSection:… | load playback context failed [dataSource %p] error=%{public}@ ", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    objc_storeStrong((v10 + 72), a2);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = *(v23 + 32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __76___MPCQueueControllerBehaviorMusicDataSourceState_reloadSection_completion___block_invoke_96;
    v30[3] = &unk_1E8236E20;
    v30[4] = v23;
    v31 = v9;
    v32 = *(a1 + 48);
    [v25 reloadSection:v24 completion:v30];
  }
}

void __76___MPCQueueControllerBehaviorMusicDataSourceState_reloadSection_completion___block_invoke_96(void *a1, void *a2)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1[4] + 88));
  v5 = a1[4];
  v35[0] = v5[8];
  v34[0] = @"queue-section-id";
  v34[1] = @"queue-section-item-count";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "_loadedItemCount")}];
  v35[1] = v6;
  v34[2] = @"queue-load-error";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v35[2] = v7;
  v34[3] = @"queue-rtc-service-id";
  v8 = a1[5];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v35[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
  [WeakRetained emitEventType:@"queue-load-end" payload:v10];

  if (v8)
  {
    if (v3)
    {
LABEL_7:

      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = a1[4];
        v13 = *(v12 + 64);
        v14 = *(v12 + 32);
        *buf = 138543874;
        v29 = v13;
        v30 = 2048;
        v31 = v14;
        v32 = 2114;
        v33 = v3;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[DASOS:%{public}@] reloadSection:… | reload section failed [dataSource %p] error=%{public}@ ", buf, 0x20u);
      }

      v15 = 4;
      goto LABEL_14;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_7;
    }
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a1[4];
    v17 = *(v16 + 64);
    v18 = *(v16 + 32);
    *buf = 138543618;
    v29 = v17;
    v30 = 2048;
    v31 = v18;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] reloadSection:… | reload section succeeded [dataSource %p]", buf, 0x16u);
  }

  v15 = 3;
LABEL_14:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___MPCQueueControllerBehaviorMusicDataSourceState_reloadSection_completion___block_invoke_97;
  block[3] = &unk_1E8239298;
  block[4] = a1[4];
  dispatch_async(MEMORY[0x1E69E96A0], block);
  os_unfair_lock_lock((a1[4] + 16));
  v19 = a1[4];
  v20 = *(v19 + 56);
  *(v19 + 56) = v15;
  v21 = a1[4];
  v22 = *(v21 + 24);
  *(v21 + 24) = 0;

  os_unfair_lock_unlock((a1[4] + 16));
  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1[4] + 64);
    if (v20 >= 5)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", v20];
    }

    else
    {
      v25 = off_1E8232DD0[v20];
    }

    v26 = @"Error";
    *buf = 138543874;
    v29 = v24;
    v30 = 2114;
    if (!v3)
    {
      v26 = @"Ready";
    }

    v31 = v25;
    v32 = 2114;
    v33 = v26;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] reloadSection:… | changing state [finished reloadSection] oldState=%{public}@ newState=%{public}@", buf, 0x20u);
  }

  (*(a1[6] + 16))();
}

void __99___MPCQueueControllerBehaviorMusicDataSourceState_loadAdditionalItemsIfNeededWithCount_completion___block_invoke(uint64_t a1, void *a2)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _rtcSourceServiceName];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v6 = *(a1 + 32);
  v33[0] = v6[8];
  v32[0] = @"queue-section-id";
  v32[1] = @"queue-section-item-count";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "_loadedItemCount")}];
  v33[1] = v7;
  v32[2] = @"queue-load-error";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v33[2] = v8;
  v32[3] = @"queue-rtc-service-id";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v33[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];
  [WeakRetained emitEventType:@"queue-load-end" payload:v10];

  if (v4)
  {
    if (v3)
    {
LABEL_7:

      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*(a1 + 32) + 64);
        v13 = *(a1 + 48);
        *buf = 138543874;
        v25 = v12;
        v26 = 2048;
        v27 = v13;
        v28 = 2114;
        v29 = v3;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[DASOS:%{public}@] loadAdditionalItemsIfNeededWithCount:%ld… | additional loading completed [error] error=%{public}@", buf, 0x20u);
      }

      v14 = 4;
      goto LABEL_14;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_7;
    }
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(a1 + 32) + 64);
    v16 = *(a1 + 48);
    *buf = 138543618;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] loadAdditionalItemsIfNeededWithCount:%ld… | additional loading completed [success]", buf, 0x16u);
  }

  v14 = 3;
LABEL_14:

  os_unfair_lock_lock((*(a1 + 32) + 16));
  v17 = *(a1 + 32);
  v18 = *(v17 + 56);
  *(v17 + 56) = v14;
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(*(a1 + 32) + 64);
    v21 = *(a1 + 48);
    if (v18 >= 5)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", v18];
    }

    else
    {
      v22 = off_1E8232DD0[v18];
    }

    v23 = @"Error";
    *buf = 138544130;
    v25 = v20;
    v26 = 2048;
    if (!v3)
    {
      v23 = @"Ready";
    }

    v27 = v21;
    v28 = 2114;
    v29 = v22;
    v30 = 2114;
    v31 = v23;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] loadAdditionalItemsIfNeededWithCount:%ld… | changing state [finished loading additional] oldState=%{public}@ newState=%{public}@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

id __67___MPCQueueControllerBehaviorMusicDataSourceState_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

@end