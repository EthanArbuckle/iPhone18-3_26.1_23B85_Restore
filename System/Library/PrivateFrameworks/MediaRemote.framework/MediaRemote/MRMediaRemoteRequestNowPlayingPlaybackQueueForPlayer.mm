@interface MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer
@end

@implementation MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer

void ___MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 resolvedPlayerPath];
  v8 = [v5 contentItems];
  v9 = MRContentItemsCopyMinimalReadableDescription(v8, 0);
  v10 = _MRLogForCategory(0xAuLL);
  v11 = v10;
  if (!v6 && v9)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544386;
      v51 = @"playbackQueue";
      v52 = 2114;
      v53 = v13;
      v54 = 2112;
      v55 = v9;
      v56 = 2114;
      v57 = v7;
      v58 = 2048;
      v59 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v11;
      v18 = 52;
      goto LABEL_16;
    }

    if (!v12)
    {
      goto LABEL_22;
    }

    v25 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 40)];
    *buf = 138544130;
    v51 = @"playbackQueue";
    v52 = 2114;
    v53 = v25;
    v54 = 2112;
    v55 = v9;
    v56 = 2048;
    v57 = v26;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544386;
      v51 = @"playbackQueue";
      v52 = 2114;
      v53 = v20;
      v54 = 2114;
      v55 = v6;
      v56 = 2114;
      v57 = v7;
      v58 = 2048;
      v59 = v21;
      _os_log_error_impl(&dword_1A2860000, v11, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      goto LABEL_17;
    }

    if (v19)
    {
      ___MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer_block_invoke_cold_1(a1);
    }
  }

  else
  {
    v22 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v22)
      {
        goto LABEL_22;
      }

      v23 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544130;
      v51 = @"playbackQueue";
      v52 = 2114;
      v53 = v23;
      v54 = 2114;
      v55 = v7;
      v56 = 2048;
      v57 = v24;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v17 = v11;
      v18 = 42;
LABEL_16:
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_17:

      goto LABEL_22;
    }

    if (v22)
    {
      v27 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138543874;
      v51 = @"playbackQueue";
      v52 = 2114;
      v53 = v27;
      v54 = 2048;
      v55 = v28;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v11;
      v18 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  if (v5)
  {
    v29 = [*(a1 + 32) requestIdentifier];
    [v5 setRequestIdentifier:v29];

    v30 = [(__CFString *)v7 origin];
    if (([v30 isLocallyHosted] & 1) == 0)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v31 = [v5 contentItems];
      v32 = [v31 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v46;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v46 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v45 + 1) + 8 * i);
            MRContentItemSetDeviceSpecificUserInfo(v36, 0);
            [v36 setAvailableAnimatedArtworkFormats:0];
            [v36 setAnimatedArtworkPreviewFrames:0];
            [v36 setAnimatedArtworks:0];
          }

          v33 = [v31 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v33);
      }
    }
  }

  v37 = *(a1 + 56);
  if (v37)
  {
    v38 = *(a1 + 48);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = ___MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer_block_invoke_99;
    v41[3] = &unk_1E769AC18;
    v44 = v37;
    v42 = v5;
    v43 = v6;
    v39 = MRCreateDonatedQosBlock(v41);
    dispatch_async(v38, v39);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void ___MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer_block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(a1 + 40)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

@end