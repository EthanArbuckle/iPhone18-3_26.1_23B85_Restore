@interface MRInvokeClientCallback
@end

@implementation MRInvokeClientCallback

void ___onClientQueue_MRInvokeClientCallback_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) disarm])
  {
    v4 = *(*(a1 + 64) + 16);
    v5 = *MEMORY[0x1E69E9840];

    v4();
  }

  else
  {
    if (a2 || MRContentItemIsEmpty(*(a1 + 40)) || ([*(a1 + 48) includeArtwork] & 1) != 0)
    {
      v6 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v8 = MRContentItemCopyMinimalReadableDescription(*(a1 + 40));
        v16 = 138543618;
        v17 = v7;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueServiceClient] After completion playbackQueueRequest %{public}@ responded to asset request with item, but was ignored %{public}@", &v16, 0x16u);
      }
    }

    else
    {
      v10 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v12 = MRContentItemCopyMinimalReadableDescription(*(a1 + 40));
        v16 = 138543618;
        v17 = v11;
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueServiceClient] After completion playbackQueueRequest %{public}@ responded to asset request with item %{public}@", &v16, 0x16u);
      }

      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = [*(a1 + 56) playerPath];
      MRMediaRemotePlaybackQueueDataSourceContentItemChangedWithRequestForPlayer(v13, v14, v15);
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

void ___onClientQueue_MRInvokeClientCallback_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___onClientQueue_MRInvokeClientCallback_block_invoke_cold_1(a1, v3, v4);
    }
  }

  else
  {
    [*(a1 + 32) startCachingContentItemUpdatesForItem:*(a1 + 40) forPendingRequest:*(a1 + 48)];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___onClientQueue_MRInvokeClientCallback_block_invoke_29;
  v8[3] = &unk_1E769AB28;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void ___onClientQueue_MRInvokeClientCallback_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[MRPlaybackQueueServiceClient] playbackQueueRequest %{public}@ responded to asset request with error %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end