@interface MPCPlaybackEngineSessionManager
@end

@implementation MPCPlaybackEngineSessionManager

void __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 134218242;
      v15 = v8;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "_MPCPlaybackEngineSessionManager %p - saveSessionWithCompletion - skipping artwork [failed to get artwork] error=%{public}@", buf, 0x16u);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v9 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke_43;
    block[3] = &unk_1E82391C0;
    v11 = *(a1 + 48);
    v12 = v5;
    v13 = *(a1 + 40);
    dispatch_async(v9, block);
  }
}

void __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke_45(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) containsRestorableContent])
  {
    v2 = objc_alloc(MEMORY[0x1E69B14A0]);
    v3 = *(a1 + 40);
    v9 = *MEMORY[0x1E6970358];
    v10[0] = &unk_1F4599550;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v5 = [v2 initWithCodingPackage:v3 userInfo:v4];

    [v5 encodeRootObject:*(a1 + 32)];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackSessionManagerError" code:3 debugDescription:@"Opting not to save an archive that does not contain restorable content"];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke_49(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = *(a1 + 40);
    v44 = 0;
    [v5 saveWithError:&v44];
    v6 = v44;
    if (v6)
    {
      v7 = v6;
      v8 = [v6 domain];
      if ([v8 isEqualToString:*MEMORY[0x1E696A250]])
      {
        v9 = [v7 code];

        if (v9 == 640)
        {
          v41 = [*(*(a1 + 32) + 32) count];
          if ([*(*(a1 + 32) + 32) count] >= 2)
          {
            v10 = "com.apple.amp.mediaplaybackcore";
            do
            {
              v11 = [*(*(a1 + 32) + 32) lastObject];
              v12 = *(*(a1 + 32) + 40);
              v13 = [v11 identifier];
              [v12 setObject:0 forKeyedSubscript:v13];

              [*(*(a1 + 32) + 32) removeLastObject];
              v43 = 0;
              [v11 deleteWithError:&v43];
              v14 = v43;
              v15 = os_log_create(v10, "Session");
              v16 = v15;
              if (v14)
              {
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v17 = *(a1 + 32);
                  v18 = [v11 identifier];
                  [v14 treeDescription];
                  v20 = v19 = v10;
                  *buf = 134218498;
                  v46 = v17;
                  v47 = 2114;
                  v48 = v18;
                  v49 = 2114;
                  v50 = v20;
                  _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "_MPCPlaybackEngineSessionManager %p - saveSessionWithCompletion [out of disk space] deleting archive: %{public}@ error=%{public}@", buf, 0x20u);

                  v10 = v19;
                }
              }

              else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v21 = *(a1 + 32);
                v22 = [v11 identifier];
                *buf = 134218242;
                v46 = v21;
                v47 = 2114;
                v48 = v22;
                _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "_MPCPlaybackEngineSessionManager %p - saveSessionWithCompletion [out of disk space] deleting archive: %{public}@", buf, 0x16u);
              }
            }

            while ([*(*(a1 + 32) + 32) count] > 1);
          }

          if (v41 >= 2)
          {
            v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(a1 + 32);
              *buf = 134217984;
              v46 = v24;
              _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "_MPCPlaybackEngineSessionManager %p - saveSessionWithCompletion: [out of disk space] deleted old archives attempting to save again", buf, 0xCu);
            }

            v25 = *(a1 + 40);
            v42 = 0;
            [v25 saveWithError:&v42];
            v7 = v42;
          }

          if (!v7)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
      }

      (*(*(a1 + 48) + 16))();
LABEL_30:

      return;
    }

LABEL_21:
    v26 = *(*(a1 + 32) + 40);
    v27 = [*(a1 + 40) identifier];
    v7 = [v26 objectForKeyedSubscript:v27];

    if (v7)
    {
      [*(*(a1 + 32) + 32) removeObjectIdenticalTo:v7];
    }

    [*(*(a1 + 32) + 32) insertObject:*(a1 + 40) atIndex:0];
    v28 = *(a1 + 40);
    v29 = *(*(a1 + 32) + 40);
    v30 = [v28 identifier];
    [v29 setObject:v28 forKeyedSubscript:v30];

    if ([*(*(a1 + 32) + 32) count] >= 0xB)
    {
      do
      {
        v31 = [*(*(a1 + 32) + 32) lastObject];
        v32 = *(*(a1 + 32) + 40);
        v33 = [v31 identifier];
        [v32 setObject:0 forKeyedSubscript:v33];

        [*(*(a1 + 32) + 32) removeLastObject];
        [v31 deleteWithError:0];
      }

      while ([*(*(a1 + 32) + 32) count] > 0xA);
    }

    v34 = *(a1 + 32);
    v35 = [*(a1 + 40) identifier];
    [v34 setStateRestorationSessionIdentifier:v35];

    v36 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 32);
      v38 = [*(a1 + 40) identifier];
      *buf = 134218242;
      v46 = v37;
      v47 = 2114;
      v48 = v38;
      _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "_MPCPlaybackEngineSessionManager %p - saveSessionWithCompletion: created archive identifier=%{public}@", buf, 0x16u);
    }

    v39 = *(a1 + 48);
    v40 = [*(a1 + 40) identifier];
    (*(v39 + 16))(v39, v40, 0);

    goto LABEL_30;
  }

  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 134218242;
    v46 = v3;
    v47 = 2114;
    v48 = v4;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "_MPCPlaybackEngineSessionManager %p - saveSessionWithCompletion - failed to encode with error=%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void __62___MPCPlaybackEngineSessionManager_saveSessionWithCompletion___block_invoke_43(uint64_t a1)
{
  v2 = [*(a1 + 40) imageByPreparingForDisplay];
  [*(a1 + 32) setArtworkImage:v2];

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __65___MPCPlaybackEngineSessionManager_setStateRestorationSupported___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    v2 = objc_opt_class();
    v3 = [*(a1 + 32) _playbackSessionsDirectory];
    v4 = [v2 archivesAtURL:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(*(a1 + 32) + 32), "count")}];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = *(*(a1 + 32) + 32);
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = *(*(a1 + 32) + 40);
          v17 = [v15 identifier];
          [v16 setObject:v15 forKeyedSubscript:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v18 = [MEMORY[0x1E695DF70] array];
    v19 = *(a1 + 32);
    v20 = *(v19 + 32);
    *(v19 + 32) = v18;

    v21 = [MEMORY[0x1E695DF90] dictionary];
    v22 = *(a1 + 32);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    MEMORY[0x1EEE66BB8](v21, v23);
  }
}

uint64_t __50___MPCPlaybackEngineSessionManager_archivesAtURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = a2;
  v7 = [v4 distantPast];
  v8 = [MEMORY[0x1E695DF00] distantPast];
  v9 = [v6 packageURL];

  v17 = 0;
  v10 = *MEMORY[0x1E695DA98];
  [v9 getResourceValue:&v17 forKey:*MEMORY[0x1E695DA98] error:0];
  v11 = v17;

  v12 = [v5 packageURL];

  v16 = 0;
  [v12 getResourceValue:&v16 forKey:v10 error:0];
  v13 = v16;

  v14 = [v13 compare:v11];
  return v14;
}

@end