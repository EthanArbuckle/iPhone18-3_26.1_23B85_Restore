@interface MPCModelGenericAVItemSubscriptionAssetLoadOperation
- (BOOL)_canRetrieveLoadResultsFromMiniSinfWithAssets:(id *)a3;
- (BOOL)_canRetrieveLoadResultsFromServerObjectDatabaseWithAssets:(id *)a3 hlsAsset:(id *)a4;
- (MPCModelGenericAVItemSubscriptionAssetLoadOperation)init;
- (id)_handlePlaybackResponse:(id)a3 withPlaybackCacheRequest:(id)a4 error:(id *)a5;
- (id)_loadResultsFromServerObjectDatabaseAssets:(id)a3 hlsAsset:(id)a4;
- (id)_loadResultsFromServerObjectDatabaseAssetsWithMiniSinf:(id)a3;
- (id)cancellationHandler;
- (id)description;
- (void)cancel;
- (void)execute;
- (void)setCancellationHandler:(id)a3;
@end

@implementation MPCModelGenericAVItemSubscriptionAssetLoadOperation

- (void)setCancellationHandler:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__MPCModelGenericAVItemSubscriptionAssetLoadOperation_setCancellationHandler___block_invoke;
  v7[3] = &unk_1E8239170;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __78__MPCModelGenericAVItemSubscriptionAssetLoadOperation_setCancellationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  *(v3 + 280) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)cancellationHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9886;
  v10 = __Block_byref_object_dispose__9887;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__MPCModelGenericAVItemSubscriptionAssetLoadOperation_cancellationHandler__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __74__MPCModelGenericAVItemSubscriptionAssetLoadOperation_cancellationHandler__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 280));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_handlePlaybackResponse:(id)a3 withPlaybackCacheRequest:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  v11 = [v8 items];
  v12 = [v11 firstObject];

  if (v12)
  {
    v41 = v10;
    v39 = a5;
    v13 = objc_alloc_init(MEMORY[0x1E6970820]);
    v14 = [v12 assetExpirationDate];
    [v13 setExpirationDate:v14];

    v40 = v8;
    v15 = [v8 dialog];
    v16 = [v15 responseDictionary];
    [v13 setDialogDictionary:v16];

    v17 = [v12 fileAssets];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v44;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = [objc_alloc(MEMORY[0x1E69709B0]) initWithiTunesCloudStoreFileAssetInfo:*(*(&v43 + 1) + 8 * i)];
          if (v23)
          {
            if (!v20)
            {
              v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
            }

            [v20 addObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    [v13 setFileAssetInfoList:v20];
    v33 = [v12 hlsAsset];
    if (v33)
    {
      v34 = [objc_alloc(MEMORY[0x1E69709B8]) initWithiTunesCloudStoreHLSAssetInfo:v33];
      [v13 setHlsAssetInfo:v34];
    }

    v42 = 0;
    v30 = v41;
    v32 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v13 assetLoadProperties:v41 source:6 error:&v42];
    v31 = v42;
    v35 = [v32 allowsAssetInfoCaching];
    v8 = v40;
    if (v9 && v35)
    {
      v36 = [MEMORY[0x1E6970990] sharedCache];
      [v36 addCachedResponse:v13 forRequest:v9];

      v30 = v41;
    }

    a5 = v39;
    if (v39)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = v10;
    v25 = MEMORY[0x1E696ABC0];
    v26 = [MEMORY[0x1E696ABC0] errorForICError:0 response:v8];
    v27 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
    v28 = [v27 itemIdentifiers];
    v29 = v25;
    v30 = v24;
    v31 = [v29 msv_errorWithDomain:@"MPCError" code:54 underlyingError:v26 debugDescription:{@"Response did not contain asset for item identifiers: %@", v28}];

    v32 = 0;
    if (a5)
    {
LABEL_23:
      v37 = v31;
      *a5 = v31;
    }
  }

  return v32;
}

- (id)_loadResultsFromServerObjectDatabaseAssets:(id)a3 hlsAsset:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  v38 = v8;
  if (!v8 && !v9)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItemSubscriptionAssetLoadOperation.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"assets.count > 0 || hlsAsset != nil"}];
  }

  v10 = objc_alloc_init(MEMORY[0x1E6970820]);
  [v10 setSubscriptionRequired:1];
  v37 = v10;
  [v10 setOnlineSubscriptionKeysRequired:1];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = [v16 sinfs];

        if (v17)
        {
          v44[0] = @"URL";
          v18 = [v16 url];
          v19 = [v18 absoluteString];
          v45[0] = v19;
          v44[1] = @"flavor";
          v20 = [v16 flavor];
          v21 = @"unknown";
          if ((v20 - 1) <= 3)
          {
            v21 = off_1E82334E8[v20 - 1];
          }

          v45[1] = v21;
          v45[2] = &unk_1F4599A60;
          v44[2] = @"metadata";
          v44[3] = @"sinfs";
          v22 = [v16 sinfs];
          v45[3] = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];

          v24 = [objc_alloc(MEMORY[0x1E69E45F8]) initWithFileAssetResponseDictionary:v23];
          [v24 setExpectedProtectionType:3];
          v25 = [objc_alloc(MEMORY[0x1E69709B0]) initWithiTunesCloudStoreFileAssetInfo:v24];
          [v11 addObject:v25];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v13);
  }

  [v37 setFileAssetInfoList:v11];
  if (v38)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69E4600]);
    v27 = [v38 playlistURL];
    [v26 setPlaylistURL:v27];

    v28 = [v38 keyCertificateURL];
    [v26 setKeyCertificateURL:v28];

    v29 = [v38 keyServerURL];
    [v26 setKeyServerURL:v29];

    v30 = [v38 keyServerProtocolType];
    [v26 setKeyServerProtocolType:v30];

    [v26 setITunesStoreStream:{objc_msgSend(v38, "isiTunesStoreStream")}];
    v31 = [v38 keyServerAdamID];
    [v26 setKeyServerAdamID:v31];

    v32 = [objc_alloc(MEMORY[0x1E69709B8]) initWithiTunesCloudStoreHLSAssetInfo:v26];
    [v37 setHlsAssetInfo:v32];
  }

  v33 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  v34 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v37 assetLoadProperties:v33 source:4 error:0];

  return v34;
}

- (id)_loadResultsFromServerObjectDatabaseAssetsWithMiniSinf:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 count])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItemSubscriptionAssetLoadOperation.m" lineNumber:338 description:{@"Invalid parameter not satisfying: %@", @"assets.count > 0"}];
  }

  v27 = self;
  v6 = objc_alloc_init(MEMORY[0x1E6970820]);
  [v6 setSubscriptionRequired:1];
  v26 = v6;
  [v6 setOnlineSubscriptionKeysRequired:1];
  v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v37[0] = @"URL";
        v12 = [v11 url];
        v13 = [v12 absoluteString];
        v38[0] = v13;
        v37[1] = @"flavor";
        v14 = [v11 flavor];
        v15 = @"unknown";
        if ((v14 - 1) <= 3)
        {
          v15 = off_1E82334E8[v14 - 1];
        }

        v38[1] = v15;
        v38[2] = &unk_1F4599A38;
        v37[2] = @"metadata";
        v37[3] = @"sinfs";
        v34[0] = @"id";
        v34[1] = @"sinf2";
        v35[0] = &unk_1F4599310;
        v16 = [v11 miniSINF];
        v35[1] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
        v36 = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        v38[3] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];

        v20 = [objc_alloc(MEMORY[0x1E69E45F8]) initWithFileAssetResponseDictionary:v19];
        [v20 setExpectedProtectionType:3];
        v21 = [objc_alloc(MEMORY[0x1E69709B0]) initWithiTunesCloudStoreFileAssetInfo:v20];
        [v29 addObject:v21];
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v8);
  }

  [v26 setFileAssetInfoList:v29];
  v22 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)v27 assetLoadProperties];
  v23 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v26 assetLoadProperties:v22 source:5 error:0];

  return v23;
}

- (BOOL)_canRetrieveLoadResultsFromServerObjectDatabaseWithAssets:(id *)a3 hlsAsset:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  if ([v7 isFollowUp])
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = self;
      v9 = "[AL] - %{public}@: Skipping assets in the server object database [skipped due to asset load policy]";
LABEL_15:
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, v9, &v26, 0xCu);
    }
  }

  else
  {
    v10 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
    v11 = [v10 isDelegatedLeaseSession];

    if (v11)
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        v27 = self;
        v9 = "[AL] - %{public}@: Skipping assets in the server object database [delegated lease]";
        goto LABEL_15;
      }
    }

    else
    {
      v12 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
      v13 = [v12 leaseStatus];
      v14 = [v13 hasOnlinePlaybackKeys];

      if (v14)
      {
        v8 = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
        v15 = [v7 preferredAudioAssetType];
        v16 = [v7 itemIdentifiers];
        if (v15 < 2)
        {
          v21 = [v8 assetsMatchingIdentifierSet:v16];
          v22 = [v21 msv_filter:&__block_literal_global_9964];

          if (![v22 count])
          {
            v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = 138543362;
              v27 = self;
              _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Skipping assets in the server object database [no assets found]", &v26, 0xCu);
            }

            goto LABEL_16;
          }

          if (a3)
          {
            v23 = v22;
            *a3 = v22;
          }
        }

        else
        {
          v17 = [v8 hlsAssetMatchingIdentifierSet:v16];

          if (!v17)
          {
            v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v26 = 138543362;
              v27 = self;
              _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Skipping assets in the server object database [no HLS assets found]", &v26, 0xCu);
            }

            goto LABEL_16;
          }

          if (a4)
          {
            v18 = v17;
            *a4 = v17;
          }
        }

        v19 = 1;
        goto LABEL_17;
      }

      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        v27 = self;
        v9 = "[AL] - %{public}@: Skipping assets in the server object database [no online lease]";
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

BOOL __122__MPCModelGenericAVItemSubscriptionAssetLoadOperation__canRetrieveLoadResultsFromServerObjectDatabaseWithAssets_hlsAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sinfs];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_canRetrieveLoadResultsFromMiniSinfWithAssets:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  if ([v5 preferredAudioAssetType] >= 2)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = self;
      v7 = "[AL] - %{public}@: Skipping miniSINF in the server object database [HLS playback]";
LABEL_8:
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, v7, &v23, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (([v5 isFollowUp] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69708A8], "standardUserDefaults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "disableMiniSINF"), v8, v9))
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = self;
      v7 = "[AL] - %{public}@: Skipping miniSINF in the server object database [skipped due to asset load policy]";
      goto LABEL_8;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v12 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
  v13 = [v12 isDelegatedLeaseSession];

  if (v13)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v23 = 138543362;
    v24 = self;
    v7 = "[AL] - %{public}@: Skipping miniSINF in the server object database [delegated lease]";
    goto LABEL_8;
  }

  v14 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
  v15 = [v14 leaseStatus];
  v16 = [v15 hasOnlinePlaybackKeys];

  if ((v16 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v23 = 138543362;
    v24 = self;
    v7 = "[AL] - %{public}@: Skipping miniSINF in the server object database [no online lease]";
    goto LABEL_8;
  }

  v6 = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
  v17 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  v18 = [v17 itemIdentifiers];
  v19 = [v6 assetsWithMiniSINFsMatchingIdentifierSet:v18];

  v20 = [v19 count];
  v10 = v20 != 0;
  if (v20)
  {
    if (a3)
    {
      v21 = v19;
      *a3 = v19;
    }
  }

  else
  {
    v22 = _MPCLogCategoryPlayback();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = self;
      _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Skipping miniSINF in the server object database [no assets found]", &v23, 0xCu);
    }
  }

LABEL_10:
  return v10;
}

- (void)execute
{
  v86 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke;
  aBlock[3] = &unk_1E8233480;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  v65 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self requestContext];
  v6 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self operationType];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v83 = self;
    v84 = 2048;
    *v85 = v6;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Using subscription playback endpoint with operation type: %li", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E69E4428] sharedMonitor];
  v9 = [v8 isRemoteServerLikelyReachable];

  if (v9)
  {
    v10 = [v5 itemIdentifiers];
    v11 = [v10 universalStore];
    v12 = [v11 subscriptionAdamID];

    if (!v12)
    {
      v13 = [v10 universalStore];
      v12 = [v13 adamID];
    }

    v14 = objc_alloc_init(MEMORY[0x1E6970998]);
    [v14 setAccountID:{objc_msgSend(v5, "accountID")}];
    [v14 setDelegatedAccountID:{objc_msgSend(v5, "delegatedAccountID")}];
    if (v6 == 2)
    {
      v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v83 = self;
        _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Performing subscription accountless playback request...", buf, 0xCu);
      }

      [v14 setRequestType:2];
      [v14 setStoreSubscriptionAdamID:v12];
      v28 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
      v29 = [v28 leaseStatus];
      v30 = [v29 hasOnlinePlaybackKeys];

      if (v30)
      {
        v16 = [MEMORY[0x1E6970990] sharedCache];
        v31 = [v16 cachedResponseForRequest:v14];
        if (v31)
        {
          v32 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v31 assetLoadProperties:v5 source:3 error:0];
        }

        else
        {
          v32 = 0;
        }

        if ([v32 hasValidAsset])
        {
          v39 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v83 = self;
            v84 = 2114;
            *v85 = v31;
            _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Using existing cached playback response: %{public}@", buf, 0x16u);
          }

          (*(v4 + 2))(v4, v32, 0, 0);
          goto LABEL_70;
        }
      }

      v16 = [objc_alloc(MEMORY[0x1E69E4488]) initWithRequestContext:v65 storeSubscriptionAdamID:v12];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_33;
      v69[3] = &unk_1E8234310;
      v69[4] = self;
      v70 = v14;
      v71 = v4;
      v40 = [v16 performWithResponseHandler:v69];
      objc_initWeak(buf, self);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_2_37;
      v66[3] = &unk_1E8235150;
      objc_copyWeak(&v68, buf);
      v41 = v40;
      v67 = v41;
      [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self setCancellationHandler:v66];

      objc_destroyWeak(&v68);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v6 == 1)
      {
        v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v83 = self;
          _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Loading subscription lease session...", buf, 0xCu);
        }

        v16 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
        v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v18 = v17;
        if (!v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v83 = self;
            _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Failed loading subscription asset due to missing lease session.", buf, 0xCu);
          }

          v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:19 userInfo:0];
          (*(v4 + 2))(v4, 0, 0, v16);
          goto LABEL_70;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v16 leaseStatus];
          *buf = 138543618;
          v83 = self;
          v84 = 2114;
          *v85 = v19;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[AL][Lease] - %{public}@: Has subscription lease session, using it. Lease status: %{public}@", buf, 0x16u);
        }

        v80 = 0;
        v20 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self _canRetrieveLoadResultsFromMiniSinfWithAssets:&v80];
        v21 = v80;
        v22 = v21;
        if (v20)
        {
          v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v5 prefersVideoContent];
            v25 = @"audio";
            if (v24)
            {
              v25 = @"video";
            }

            *buf = 138543618;
            v83 = self;
            v84 = 2114;
            *v85 = v25;
            _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Loading %{public}@ asset from Mini Sinf...", buf, 0x16u);
          }

          v64 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self _loadResultsFromServerObjectDatabaseAssetsWithMiniSinf:v22];
          (*(v4 + 2))(v4, v64, 0, 0);
          goto LABEL_69;
        }

        v78 = 0;
        v79 = v21;
        v33 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self _canRetrieveLoadResultsFromServerObjectDatabaseWithAssets:&v79 hlsAsset:&v78];
        v62 = v79;

        v64 = v78;
        v34 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          if (v35)
          {
            v36 = [v5 prefersVideoContent];
            v37 = [v5 preferredAudioAssetType];
            if ((v37 - 1) > 4)
            {
              v38 = @"Unspecified";
            }

            else
            {
              v38 = off_1E82334C0[v37 - 1];
            }

            *buf = 138543875;
            v83 = self;
            v84 = 1024;
            *v85 = v36;
            *&v85[4] = 2113;
            *&v85[6] = v38;
            _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "[AL] %{public}@: MPCModelGenericAVItemSubscriptionAssetLoadOperation execute [loading asset from cache] prefersVideoContent=%{BOOL}u preferredAudio=%{private}@", buf, 0x1Cu);
          }

          v63 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self _loadResultsFromServerObjectDatabaseAssets:v62 hlsAsset:v64];
          (*(v4 + 2))(v4, v63, 0, 0);
LABEL_68:

          v22 = v62;
LABEL_69:

          goto LABEL_70;
        }

        if (v35)
        {
          if ([v5 prefersVideoContent])
          {
            v42 = @"video";
          }

          else
          {
            v42 = @"audio";
          }

          v43 = [v5 preferredAudioAssetType];
          if ((v43 - 1) > 4)
          {
            v44 = @"Unspecified";
          }

          else
          {
            v44 = off_1E82334C0[v43 - 1];
          }

          *buf = 138543875;
          v83 = self;
          v84 = 2114;
          *v85 = v42;
          *&v85[8] = 2113;
          *&v85[10] = v44;
          _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Loading %{public}@ asset - Preferred audio: %{private}@", buf, 0x20u);
        }

        v63 = [objc_alloc(MEMORY[0x1E69E44A8]) initWithRequestContext:v65];
        [v63 setFollowUp:{objc_msgSend(v5, "isFollowUp")}];
        [v63 setStoreSubscriptionAdamID:v12];
        [v14 setStoreSubscriptionAdamID:v12];
        if ([v16 isDelegatedLeaseSession])
        {
          v45 = [v10 personalizedStore];
          v46 = [v45 cloudID];

          [v63 setStoreCloudID:v46];
          [v14 setStoreCloudID:v46];
          v47 = [v10 universalStore];
          v48 = [v47 purchasedAdamID];

          [v63 setStorePurchasedAdamID:v48];
          [v14 setStorePurchasedAdamID:v48];
          v49 = [v10 universalStore];
          v50 = [v49 universalCloudLibraryID];

          [v63 setCloudUniversalLibraryID:v50];
          [v14 setCloudUniversalLibraryID:v50];
          [v14 setRequestType:4];
        }

        else
        {
          [v14 setRequestType:2];
        }

        v51 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
        v52 = [v51 leaseStatus];
        v53 = [v52 hasOnlinePlaybackKeys];

        if (v53)
        {
          v61 = [MEMORY[0x1E6970990] sharedCache];
          v54 = [v61 cachedResponseForRequest:v14];
          v55 = v54;
          if (v54)
          {
            v56 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v54 assetLoadProperties:v5 source:3 error:0];
          }

          else
          {
            v56 = 0;
          }

          if ([v56 hasValidAsset])
          {
            v57 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v83 = self;
              v84 = 2114;
              *v85 = v55;
              _os_log_impl(&dword_1C5C61000, v57, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Using existing cached playback response: %{public}@", buf, 0x16u);
            }

            (*(v4 + 2))(v4, v56, 0, 0);
            goto LABEL_68;
          }
        }

        v58 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v83 = self;
          _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Performing subscription playback request...", buf, 0xCu);
        }

        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_19;
        v75[3] = &unk_1E8234310;
        v75[4] = self;
        v76 = v14;
        v77 = v4;
        v59 = [v16 performPlaybackRequest:v63 completionHandler:v75];
        objc_initWeak(buf, self);
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_2;
        v72[3] = &unk_1E8235150;
        objc_copyWeak(&v74, buf);
        v60 = v59;
        v73 = v60;
        [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self setCancellationHandler:v72];

        objc_destroyWeak(&v74);
        objc_destroyWeak(buf);

        goto LABEL_68;
      }

      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItemSubscriptionAssetLoadOperation.m" lineNumber:250 description:{@"Invalid operation type: %li", -[MPCModelGenericAVItemSubscriptionAssetLoadOperation operationType](self, "operationType")}];
    }

LABEL_70:

    goto LABEL_71;
  }

  v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v83 = self;
    _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Short-circuiting Item Subscription Asset Loading [offline] - SOD/Cached Response/Server requests are unusable", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:56 userInfo:0];
  (*(v4 + 2))(v4, 0, 0, v10);
LABEL_71:
}

void __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 312);
  v11 = v7;
  if (v9)
  {
    (*(v9 + 16))(v9, a2, a3);
    v8 = *(a1 + 32);
    v10 = *(v8 + 312);
  }

  else
  {
    v10 = 0;
  }

  *(v8 + 312) = 0;

  [*(a1 + 32) finishWithError:v11];
}

void __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_19(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) setCancellationHandler:0];
  if (v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696ABC0] errorForICError:v9 response:v7];
    v12 = [v10 msv_errorWithDomain:@"MPCError" code:15 underlyingError:v11 debugDescription:@"Failed to send subscription playback request (lease)"];

    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v20 = 0;
    v13 = [v14 _handlePlaybackResponse:v7 withPlaybackCacheRequest:v15 error:&v20];
    v12 = v20;
  }

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 138543874;
    v22 = v17;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Finished subscription playback request with response: %{public}@, error: %{public}@", buf, 0x20u);
  }

  if (!(v13 | v12))
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MPCModelGenericAVItemSubscriptionAssetLoadOperation execute]_block_invoke"];
    [v18 handleFailureInFunction:v19 file:@"MPCModelGenericAVItemSubscriptionAssetLoadOperation.m" lineNumber:186 description:@"An error is expected for the failure to create a loadResult"];
  }

  (*(*(a1 + 48) + 16))();
}

void __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Canceling subscription playback request...", &v4, 0xCu);
    }

    [*(a1 + 32) cancel];
  }
}

void __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_33(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) setCancellationHandler:0];
  if (v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696ABC0] errorForICError:v9 response:v7];
    v12 = [v10 msv_errorWithDomain:@"MPCError" code:15 underlyingError:v11 debugDescription:@"Failed to send subscription playback request (accountless stream)"];

    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v20 = 0;
    v13 = [v14 _handlePlaybackResponse:v7 withPlaybackCacheRequest:v15 error:&v20];
    v12 = v20;
  }

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 138543874;
    v22 = v17;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Finished subscription accountless playback request with response: %{public}@, error: %{public}@", buf, 0x20u);
  }

  if (!(v13 | v12))
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MPCModelGenericAVItemSubscriptionAssetLoadOperation execute]_block_invoke"];
    [v18 handleFailureInFunction:v19 file:@"MPCModelGenericAVItemSubscriptionAssetLoadOperation.m" lineNumber:235 description:@"An error is expected for the failure to create a loadResult"];
  }

  (*(*(a1 + 48) + 16))();
}

void __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_2_37(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Canceling subscription accountless playback request...", &v4, 0xCu);
    }

    [*(a1 + 32) cancel];
  }
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = MPCModelGenericAVItemSubscriptionAssetLoadOperation;
  [(MPAsyncOperation *)&v5 cancel];
  v3 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self cancellationHandler];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }
}

- (id)description
{
  v3 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  v4 = [v3 isFollowUp];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p followUp>", objc_opt_class(), self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MPCModelGenericAVItemSubscriptionAssetLoadOperation;
    v5 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)&v7 description];
  }

  return v5;
}

- (MPCModelGenericAVItemSubscriptionAssetLoadOperation)init
{
  v6.receiver = self;
  v6.super_class = MPCModelGenericAVItemSubscriptionAssetLoadOperation;
  v2 = [(MPAsyncOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelGenericAVItemSubscriptionAssetLoadOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

@end