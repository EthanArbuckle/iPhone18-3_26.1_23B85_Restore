@interface MPCModelGenericAVItemMediaRedownloadOperation
- (MPCModelGenericAVItemMediaRedownloadOperation)init;
- (void)cancel;
- (void)execute;
@end

@implementation MPCModelGenericAVItemMediaRedownloadOperation

- (void)execute
{
  v54 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__MPCModelGenericAVItemMediaRedownloadOperation_execute__block_invoke;
  aBlock[3] = &unk_1E8233480;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(MPCModelGenericAVItemMediaRedownloadOperation *)self assetLoadProperties];
  v5 = [(MPCModelGenericAVItemMediaRedownloadOperation *)self requestContext];
  if (v5)
  {
    v6 = [v4 storeAsset];
    v7 = [v6 redownloadParameters];
    if (![v7 length])
    {
      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = self;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Missing redownload parameters.", buf, 0xCu);
      }

      v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:25 debugDescription:@"Missing redownload parameters"];
      (*(v3 + 2))(v3, 0, 0, v19);
      goto LABEL_33;
    }

    v8 = [v6 endpointType];
    v9 = v8 == 2;
    v10 = 0x1E69E4458;
    if (v8 != 2)
    {
      v10 = 0x1E69E4530;
    }

    v42 = [objc_alloc(*v10) initWithRequestContext:v5 redownloadParametersString:v7];
    [v42 setUsePrioritizedURLSession:1];
    v11 = objc_alloc_init(MEMORY[0x1E6970998]);
    [v11 setAccountID:{objc_msgSend(v4, "accountID")}];
    [v11 setDelegatedAccountID:{objc_msgSend(v4, "delegatedAccountID")}];
    [v11 setRequestType:v9];
    [v11 setRedownloadParameters:v7];
    v12 = [MEMORY[0x1E6970990] sharedCache];
    v13 = [v12 cachedResponseForRequest:v11];
    v14 = v13;
    if (v13)
    {
      v13 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v13 assetLoadProperties:v4 source:3 error:0];
    }

    v41 = v13;
    if ([v13 hasValidAsset])
    {
      v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v51 = self;
        v52 = 2114;
        v53 = v14;
        _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Using existing cached playback response: %{public}@", buf, 0x16u);
      }

      v16 = v41;
      (*(v3 + 2))(v3, v41, 0, 0);
      goto LABEL_38;
    }

    v39 = v14;
    v40 = v12;
    v20 = [MEMORY[0x1E69E4420] currentDeviceInfo];
    if ([v20 isAudioAccessory])
    {
    }

    else
    {
      v21 = [MEMORY[0x1E69E4420] currentDeviceInfo];
      v22 = [v21 isAppleTV];

      if (!v22)
      {
LABEL_29:
        v29 = [MEMORY[0x1E69E4428] sharedMonitor];
        v30 = [v29 isRemoteServerLikelyReachable];

        if ((v30 & 1) == 0)
        {
          v35 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          v14 = v39;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v51 = self;
            _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Skipping redownload asset request [offline]", buf, 0xCu);
          }

          v36 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:56 debugDescription:@"No network connection"];
          (*(v3 + 2))(v3, 0, 0, v36);

          v12 = v40;
          goto LABEL_37;
        }

        [v42 setPlaybackRequest:1];
        v31 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v51 = self;
          _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Performing media redownload request...", buf, 0xCu);
        }

        accessQueue = self->_accessQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__MPCModelGenericAVItemMediaRedownloadOperation_execute__block_invoke_13;
        block[3] = &unk_1E82392C0;
        block[4] = self;
        v48 = v42;
        v33 = v42;
        dispatch_barrier_async(accessQueue, block);
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __56__MPCModelGenericAVItemMediaRedownloadOperation_execute__block_invoke_2;
        v43[3] = &unk_1E8233458;
        v43[4] = self;
        v44 = v4;
        v45 = v11;
        v46 = v3;
        v34 = v11;
        [v33 performRequestWithResponseHandler:v43];

        v19 = v40;
LABEL_33:

LABEL_39:
        goto LABEL_40;
      }
    }

    v23 = [v4 itemIdentifiers];
    v24 = [v23 universalStore];
    v25 = [v24 subscriptionAdamID];

    if (v25)
    {
      v26 = objc_alloc_init(MEMORY[0x1E6970998]);
      [v26 setAccountID:{objc_msgSend(v4, "accountID")}];
      [v26 setDelegatedAccountID:{objc_msgSend(v4, "delegatedAccountID")}];
      [v26 setStoreSubscriptionAdamID:v25];
      [v26 setRequestType:2];
      v12 = v40;
      v27 = [v40 cachedResponseForRequest:v26];
      v38 = v27;
      if (v27)
      {
        v28 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v27 assetLoadProperties:v4 source:3 error:0];
      }

      else
      {
        v28 = 0;
      }

      if ([v28 hasValidAsset])
      {
        log = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v51 = self;
          v52 = 2114;
          v53 = v39;
          _os_log_impl(&dword_1C5C61000, log, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Using existing subscription cached playback response despite redownload request: %{public}@", buf, 0x16u);
        }

        (*(v3 + 2))(v3, v28, 0, 0);
        v14 = v39;
LABEL_37:
        v16 = v41;
LABEL_38:

        goto LABEL_39;
      }
    }

    goto LABEL_29;
  }

  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v51 = self;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Missing store request context.", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:26 debugDescription:@"Missing store request context"];
  (*(v3 + 2))(v3, 0, 0, v6);
LABEL_40:
}

void __56__MPCModelGenericAVItemMediaRedownloadOperation_execute__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = v8[38];
  v12 = v7;
  if (v9)
  {
    (*(v9 + 16))(v9, a2, a3, v7);
    v10 = *(a1 + 32);
    v11 = *(v10 + 304);
    *(v10 + 304) = 0;

    v7 = v12;
    v8 = *(a1 + 32);
  }

  [v8 finishWithError:v7];
}

void __56__MPCModelGenericAVItemMediaRedownloadOperation_execute__block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  v11 = *(v10 + 272);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MPCModelGenericAVItemMediaRedownloadOperation_execute__block_invoke_3;
  block[3] = &unk_1E8239298;
  block[4] = v10;
  dispatch_barrier_async(v11, block);
  v12 = [MEMORY[0x1E696ABC0] errorForICError:v9 response:v7];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a1[4];
    *buf = 138543874;
    v55 = v14;
    v56 = 2114;
    v57 = v7;
    v58 = 2114;
    v59 = v9;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Finished media redownload request with response: %{public}@, error: %{public}@", buf, 0x20u);
  }

  v15 = [v7 items];
  v16 = [v15 firstObject];

  if (v16)
  {
    v41 = v12;
    v44 = v9;
    v46 = a1;
    v45 = v8;
    v17 = objc_alloc_init(MEMORY[0x1E6970820]);
    v18 = [v16 assetExpirationDate];
    [v17 setExpirationDate:v18];

    v19 = [v16 suzeLeaseID];
    [v17 setSuzeLeaseID:v19];

    v20 = [v7 dialog];
    v21 = [v20 responseDictionary];
    [v17 setDialogDictionary:v21];

    v22 = [v16 fileAssets];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v49;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v49 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = [objc_alloc(MEMORY[0x1E69709B0]) initWithiTunesCloudStoreFileAssetInfo:*(*(&v48 + 1) + 8 * i)];
          if (v28)
          {
            if (!v25)
            {
              v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
            }

            [v25 addObject:{v28, v41}];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
    }

    [v17 setFileAssetInfoList:v25, v41];
    v32 = [v16 hlsAsset];
    if (v32)
    {
      v33 = [objc_alloc(MEMORY[0x1E69709B8]) initWithiTunesCloudStoreHLSAssetInfo:v32];
      [v17 setHlsAssetInfo:v33];
    }

    v34 = v46[5];
    v47 = v42;
    v30 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v17 assetLoadProperties:v34 source:6 error:&v47];
    v31 = v47;

    if ([v30 allowsAssetInfoCaching])
    {
      v35 = [MEMORY[0x1E6970990] sharedCache];
      [v35 addCachedResponse:v17 forRequest:v46[6]];
    }

    v8 = v45;
    if (!v30)
    {
      if (!v31)
      {
        v43 = [MEMORY[0x1E696AAA8] currentHandler];
        v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MPCModelGenericAVItemMediaRedownloadOperation execute]_block_invoke"];
        [v43 handleFailureInFunction:v40 file:@"MPCModelGenericAVItemMediaRedownloadOperation.m" lineNumber:167 description:@"An error is expected for the failure to create a loadResult"];
      }

      v36 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = v46[4];
        *buf = 138543874;
        v55 = v37;
        v56 = 2114;
        v57 = v17;
        v58 = 2114;
        v59 = v31;
        _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Unable to extract valid load result from extracted media redownload asset response - Response:%{public}@ - Error:%{public}@", buf, 0x20u);
      }
    }

    v9 = v44;
    a1 = v46;
  }

  else
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v29 = a1[4];
      *buf = 138543362;
      v55 = v29;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Missing response item in media redownload request response", buf, 0xCu);
    }

    v30 = 0;
    v31 = v12;
  }

  if (([v30 hasValidAsset] & 1) == 0 && !v31)
  {
    v38 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = a1[4];
      *buf = 138543362;
      v55 = v39;
      _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Missing asset URL in media redownload request response", buf, 0xCu);
    }

    v31 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:15 debugDescription:@"Missing asset URL in media redownload request response"];
  }

  (*(a1[7] + 16))();
}

void __56__MPCModelGenericAVItemMediaRedownloadOperation_execute__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  *(v1 + 280) = 0;
}

- (void)cancel
{
  v11.receiver = self;
  v11.super_class = MPCModelGenericAVItemMediaRedownloadOperation;
  [(MPAsyncOperation *)&v11 cancel];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9819;
  v9 = __Block_byref_object_dispose__9820;
  v10 = 0;
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MPCModelGenericAVItemMediaRedownloadOperation_cancel__block_invoke;
  v4[3] = &unk_1E82394D8;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(accessQueue, v4);
  [v6[5] cancel];
  _Block_object_dispose(&v5, 8);
}

- (MPCModelGenericAVItemMediaRedownloadOperation)init
{
  v6.receiver = self;
  v6.super_class = MPCModelGenericAVItemMediaRedownloadOperation;
  v2 = [(MPAsyncOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelGenericAVItemMediaRedownloadOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

@end