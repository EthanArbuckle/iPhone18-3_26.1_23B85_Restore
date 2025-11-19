@interface MRHandlePlaybackQueueRequest
@end

@implementation MRHandlePlaybackQueueRequest

void ___MRHandlePlaybackQueueRequest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = [*(a1 + 32) origin];
    v8 = [v7 isLocal];

    if (v8)
    {
      [*(a1 + 40) invalidatationTimestamp];
      v10 = v9;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = [v5 contentItems];
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v33 + 1) + 8 * i);
            v17 = [v16 metadata];

            if (v17 && MRContentItemGetInferredTimestamp(v16) == 0.0)
            {
              MRContentItemSetInferredTimestamp(v16, v10);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
        }

        while (v13);
      }
    }

    v18 = [*(a1 + 40) homeUserIdentifiers];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [*(a1 + 40) homeUserIdentifiers];
      [v5 setHomeUserIdentifiers:v20];
    }
  }

  v21 = +[MRUserSettings currentSettings];
  v22 = [v21 verbosePlaybackQueueRequestLogging];

  if (v22)
  {
    v23 = _MRLogForCategory(0xAuLL);
    v24 = v23;
    if (!v5 || v6)
    {
      if (v6)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          ___MRHandlePlaybackQueueRequest_block_invoke_cold_1(a1);
        }

        goto LABEL_27;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*(a1 + 48) requestIdentifier];
        v26 = [MEMORY[0x1E695DF00] date];
        [v26 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v38 = @"MRHandlePlaybackQueueRequest";
        v39 = 2114;
        v40 = v25;
        v41 = 2048;
        v42 = v31;
        v28 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v29 = v24;
        v30 = 32;
        goto LABEL_26;
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 48) requestIdentifier];
      v26 = [MEMORY[0x1E695DF00] date];
      [v26 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v38 = @"MRHandlePlaybackQueueRequest";
      v39 = 2114;
      v40 = v25;
      v41 = 2112;
      v42 = v5;
      v43 = 2048;
      v44 = v27;
      v28 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v29 = v24;
      v30 = 42;
LABEL_26:
      _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
    }

LABEL_27:
  }

  (*(*(a1 + 64) + 16))();

  v32 = *MEMORY[0x1E69E9840];
}

void ___MRHandlePlaybackQueueRequest_block_invoke_100(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [v2 addPendingRequest:a1[5]];
    v3 = [a1[4] subscriptionController];
    [v3 addRequest:a1[5]];

    v4 = +[MRNowPlayingOriginClientManager sharedManager];
    v5 = [v4 originClientForPlayerPath:a1[6]];

    v6 = [v5 playbackQueueCallback];
    if (v6)
    {
      v7 = a1[5];
      v8 = a1[6];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = ___MRHandlePlaybackQueueRequest_block_invoke_2;
      v10[3] = &unk_1E769FD28;
      v11 = a1[4];
      v12 = a1[5];
      v13 = a1[8];
      (v6)[2](v6, v7, v8, v10);
    }

    else
    {
      _onQueue_MRHandlePlaybackQueueRequest(a1[4], a1[6], a1[5], a1[7], a1[8]);
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:29 description:@"The player was removed before this playbackQueueRequest could complete."];
    (*(a1[8] + 2))();
  }
}

void ___MRHandlePlaybackQueueRequest_block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v8 = a2;
  v7 = [v5 subscriptionController];
  [v7 subscribeToPlaybackQueue:v8 forRequest:a1[5]];

  (*(a1[6] + 16))();
}

void ___MRHandlePlaybackQueueRequest_block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 48) requestIdentifier];
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(a1 + 56)];
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_4_11();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

@end