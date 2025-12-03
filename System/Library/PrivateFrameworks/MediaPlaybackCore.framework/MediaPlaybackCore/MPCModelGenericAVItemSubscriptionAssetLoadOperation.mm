@interface MPCModelGenericAVItemSubscriptionAssetLoadOperation
- (BOOL)_canRetrieveLoadResultsFromMiniSinfWithAssets:(id *)assets;
- (BOOL)_canRetrieveLoadResultsFromServerObjectDatabaseWithAssets:(id *)assets hlsAsset:(id *)asset;
- (MPCModelGenericAVItemSubscriptionAssetLoadOperation)init;
- (id)_handlePlaybackResponse:(id)response withPlaybackCacheRequest:(id)request error:(id *)error;
- (id)_loadResultsFromServerObjectDatabaseAssets:(id)assets hlsAsset:(id)asset;
- (id)_loadResultsFromServerObjectDatabaseAssetsWithMiniSinf:(id)sinf;
- (id)cancellationHandler;
- (id)description;
- (void)cancel;
- (void)execute;
- (void)setCancellationHandler:(id)handler;
@end

@implementation MPCModelGenericAVItemSubscriptionAssetLoadOperation

- (void)setCancellationHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__MPCModelGenericAVItemSubscriptionAssetLoadOperation_setCancellationHandler___block_invoke;
  v7[3] = &unk_1E8239170;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (id)_handlePlaybackResponse:(id)response withPlaybackCacheRequest:(id)request error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestCopy = request;
  assetLoadProperties = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  items = [responseCopy items];
  firstObject = [items firstObject];

  if (firstObject)
  {
    v41 = assetLoadProperties;
    errorCopy = error;
    v13 = objc_alloc_init(MEMORY[0x1E6970820]);
    assetExpirationDate = [firstObject assetExpirationDate];
    [v13 setExpirationDate:assetExpirationDate];

    v40 = responseCopy;
    dialog = [responseCopy dialog];
    responseDictionary = [dialog responseDictionary];
    [v13 setDialogDictionary:responseDictionary];

    fileAssets = [firstObject fileAssets];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = [fileAssets countByEnumeratingWithState:&v43 objects:v47 count:16];
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
            objc_enumerationMutation(fileAssets);
          }

          v23 = [objc_alloc(MEMORY[0x1E69709B0]) initWithiTunesCloudStoreFileAssetInfo:*(*(&v43 + 1) + 8 * i)];
          if (v23)
          {
            if (!v20)
            {
              v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fileAssets, "count")}];
            }

            [v20 addObject:v23];
          }
        }

        v19 = [fileAssets countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    [v13 setFileAssetInfoList:v20];
    hlsAsset = [firstObject hlsAsset];
    if (hlsAsset)
    {
      v34 = [objc_alloc(MEMORY[0x1E69709B8]) initWithiTunesCloudStoreHLSAssetInfo:hlsAsset];
      [v13 setHlsAssetInfo:v34];
    }

    v42 = 0;
    v30 = v41;
    v32 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v13 assetLoadProperties:v41 source:6 error:&v42];
    v31 = v42;
    allowsAssetInfoCaching = [v32 allowsAssetInfoCaching];
    responseCopy = v40;
    if (requestCopy && allowsAssetInfoCaching)
    {
      mEMORY[0x1E6970990] = [MEMORY[0x1E6970990] sharedCache];
      [mEMORY[0x1E6970990] addCachedResponse:v13 forRequest:requestCopy];

      v30 = v41;
    }

    error = errorCopy;
    if (errorCopy)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = assetLoadProperties;
    v25 = MEMORY[0x1E696ABC0];
    v26 = [MEMORY[0x1E696ABC0] errorForICError:0 response:responseCopy];
    assetLoadProperties2 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
    itemIdentifiers = [assetLoadProperties2 itemIdentifiers];
    v29 = v25;
    v30 = v24;
    v31 = [v29 msv_errorWithDomain:@"MPCError" code:54 underlyingError:v26 debugDescription:{@"Response did not contain asset for item identifiers: %@", itemIdentifiers}];

    v32 = 0;
    if (error)
    {
LABEL_23:
      v37 = v31;
      *error = v31;
    }
  }

  return v32;
}

- (id)_loadResultsFromServerObjectDatabaseAssets:(id)assets hlsAsset:(id)asset
{
  v47 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  assetCopy = asset;
  v9 = [assetsCopy count];
  v38 = assetCopy;
  if (!assetCopy && !v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItemSubscriptionAssetLoadOperation.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"assets.count > 0 || hlsAsset != nil"}];
  }

  v10 = objc_alloc_init(MEMORY[0x1E6970820]);
  [v10 setSubscriptionRequired:1];
  v37 = v10;
  [v10 setOnlineSubscriptionKeysRequired:1];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = assetsCopy;
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
        sinfs = [v16 sinfs];

        if (sinfs)
        {
          v44[0] = @"URL";
          v18 = [v16 url];
          absoluteString = [v18 absoluteString];
          v45[0] = absoluteString;
          v44[1] = @"flavor";
          flavor = [v16 flavor];
          v21 = @"unknown";
          if ((flavor - 1) <= 3)
          {
            v21 = off_1E82334E8[flavor - 1];
          }

          v45[1] = v21;
          v45[2] = &unk_1F4599A60;
          v44[2] = @"metadata";
          v44[3] = @"sinfs";
          sinfs2 = [v16 sinfs];
          v45[3] = sinfs2;
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
    playlistURL = [v38 playlistURL];
    [v26 setPlaylistURL:playlistURL];

    keyCertificateURL = [v38 keyCertificateURL];
    [v26 setKeyCertificateURL:keyCertificateURL];

    keyServerURL = [v38 keyServerURL];
    [v26 setKeyServerURL:keyServerURL];

    keyServerProtocolType = [v38 keyServerProtocolType];
    [v26 setKeyServerProtocolType:keyServerProtocolType];

    [v26 setITunesStoreStream:{objc_msgSend(v38, "isiTunesStoreStream")}];
    keyServerAdamID = [v38 keyServerAdamID];
    [v26 setKeyServerAdamID:keyServerAdamID];

    v32 = [objc_alloc(MEMORY[0x1E69709B8]) initWithiTunesCloudStoreHLSAssetInfo:v26];
    [v37 setHlsAssetInfo:v32];
  }

  assetLoadProperties = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  v34 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v37 assetLoadProperties:assetLoadProperties source:4 error:0];

  return v34;
}

- (id)_loadResultsFromServerObjectDatabaseAssetsWithMiniSinf:(id)sinf
{
  v40 = *MEMORY[0x1E69E9840];
  sinfCopy = sinf;
  if (![sinfCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItemSubscriptionAssetLoadOperation.m" lineNumber:338 description:{@"Invalid parameter not satisfying: %@", @"assets.count > 0"}];
  }

  selfCopy = self;
  v6 = objc_alloc_init(MEMORY[0x1E6970820]);
  [v6 setSubscriptionRequired:1];
  v26 = v6;
  [v6 setOnlineSubscriptionKeysRequired:1];
  v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(sinfCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = sinfCopy;
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
        absoluteString = [v12 absoluteString];
        v38[0] = absoluteString;
        v37[1] = @"flavor";
        flavor = [v11 flavor];
        v15 = @"unknown";
        if ((flavor - 1) <= 3)
        {
          v15 = off_1E82334E8[flavor - 1];
        }

        v38[1] = v15;
        v38[2] = &unk_1F4599A38;
        v37[2] = @"metadata";
        v37[3] = @"sinfs";
        v34[0] = @"id";
        v34[1] = @"sinf2";
        v35[0] = &unk_1F4599310;
        miniSINF = [v11 miniSINF];
        v35[1] = miniSINF;
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
  assetLoadProperties = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)selfCopy assetLoadProperties];
  v23 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v26 assetLoadProperties:assetLoadProperties source:5 error:0];

  return v23;
}

- (BOOL)_canRetrieveLoadResultsFromServerObjectDatabaseWithAssets:(id *)assets hlsAsset:(id *)asset
{
  v28 = *MEMORY[0x1E69E9840];
  assetLoadProperties = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  if ([assetLoadProperties isFollowUp])
  {
    mEMORY[0x1E6970950] = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      selfCopy5 = self;
      v9 = "[AL] - %{public}@: Skipping assets in the server object database [skipped due to asset load policy]";
LABEL_15:
      _os_log_impl(&dword_1C5C61000, mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT, v9, &v26, 0xCu);
    }
  }

  else
  {
    subscriptionLeaseSession = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
    isDelegatedLeaseSession = [subscriptionLeaseSession isDelegatedLeaseSession];

    if (isDelegatedLeaseSession)
    {
      mEMORY[0x1E6970950] = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        selfCopy5 = self;
        v9 = "[AL] - %{public}@: Skipping assets in the server object database [delegated lease]";
        goto LABEL_15;
      }
    }

    else
    {
      subscriptionLeaseSession2 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
      leaseStatus = [subscriptionLeaseSession2 leaseStatus];
      hasOnlinePlaybackKeys = [leaseStatus hasOnlinePlaybackKeys];

      if (hasOnlinePlaybackKeys)
      {
        mEMORY[0x1E6970950] = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
        preferredAudioAssetType = [assetLoadProperties preferredAudioAssetType];
        itemIdentifiers = [assetLoadProperties itemIdentifiers];
        if (preferredAudioAssetType < 2)
        {
          v21 = [mEMORY[0x1E6970950] assetsMatchingIdentifierSet:itemIdentifiers];
          v22 = [v21 msv_filter:&__block_literal_global_9964];

          if (![v22 count])
          {
            v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = 138543362;
              selfCopy5 = self;
              _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Skipping assets in the server object database [no assets found]", &v26, 0xCu);
            }

            goto LABEL_16;
          }

          if (assets)
          {
            v23 = v22;
            *assets = v22;
          }
        }

        else
        {
          v17 = [mEMORY[0x1E6970950] hlsAssetMatchingIdentifierSet:itemIdentifiers];

          if (!v17)
          {
            v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v26 = 138543362;
              selfCopy5 = self;
              _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Skipping assets in the server object database [no HLS assets found]", &v26, 0xCu);
            }

            goto LABEL_16;
          }

          if (asset)
          {
            v18 = v17;
            *asset = v17;
          }
        }

        v19 = 1;
        goto LABEL_17;
      }

      mEMORY[0x1E6970950] = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        selfCopy5 = self;
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

- (BOOL)_canRetrieveLoadResultsFromMiniSinfWithAssets:(id *)assets
{
  v25 = *MEMORY[0x1E69E9840];
  assetLoadProperties = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  if ([assetLoadProperties preferredAudioAssetType] >= 2)
  {
    mEMORY[0x1E6970950] = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      selfCopy5 = self;
      v7 = "[AL] - %{public}@: Skipping miniSINF in the server object database [HLS playback]";
LABEL_8:
      _os_log_impl(&dword_1C5C61000, mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT, v7, &v23, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (([assetLoadProperties isFollowUp] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69708A8], "standardUserDefaults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "disableMiniSINF"), v8, v9))
  {
    mEMORY[0x1E6970950] = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      selfCopy5 = self;
      v7 = "[AL] - %{public}@: Skipping miniSINF in the server object database [skipped due to asset load policy]";
      goto LABEL_8;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  subscriptionLeaseSession = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
  isDelegatedLeaseSession = [subscriptionLeaseSession isDelegatedLeaseSession];

  if (isDelegatedLeaseSession)
  {
    mEMORY[0x1E6970950] = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v23 = 138543362;
    selfCopy5 = self;
    v7 = "[AL] - %{public}@: Skipping miniSINF in the server object database [delegated lease]";
    goto LABEL_8;
  }

  subscriptionLeaseSession2 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
  leaseStatus = [subscriptionLeaseSession2 leaseStatus];
  hasOnlinePlaybackKeys = [leaseStatus hasOnlinePlaybackKeys];

  if ((hasOnlinePlaybackKeys & 1) == 0)
  {
    mEMORY[0x1E6970950] = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(mEMORY[0x1E6970950], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v23 = 138543362;
    selfCopy5 = self;
    v7 = "[AL] - %{public}@: Skipping miniSINF in the server object database [no online lease]";
    goto LABEL_8;
  }

  mEMORY[0x1E6970950] = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
  assetLoadProperties2 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  itemIdentifiers = [assetLoadProperties2 itemIdentifiers];
  v19 = [mEMORY[0x1E6970950] assetsWithMiniSINFsMatchingIdentifierSet:itemIdentifiers];

  v20 = [v19 count];
  v10 = v20 != 0;
  if (v20)
  {
    if (assets)
    {
      v21 = v19;
      *assets = v19;
    }
  }

  else
  {
    v22 = _MPCLogCategoryPlayback();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      selfCopy5 = self;
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
  assetLoadProperties = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  requestContext = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self requestContext];
  operationType = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self operationType];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy12 = self;
    v84 = 2048;
    *v85 = operationType;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Using subscription playback endpoint with operation type: %li", buf, 0x16u);
  }

  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  isRemoteServerLikelyReachable = [mEMORY[0x1E69E4428] isRemoteServerLikelyReachable];

  if (isRemoteServerLikelyReachable)
  {
    itemIdentifiers = [assetLoadProperties itemIdentifiers];
    universalStore = [itemIdentifiers universalStore];
    subscriptionAdamID = [universalStore subscriptionAdamID];

    if (!subscriptionAdamID)
    {
      universalStore2 = [itemIdentifiers universalStore];
      subscriptionAdamID = [universalStore2 adamID];
    }

    v14 = objc_alloc_init(MEMORY[0x1E6970998]);
    [v14 setAccountID:{objc_msgSend(assetLoadProperties, "accountID")}];
    [v14 setDelegatedAccountID:{objc_msgSend(assetLoadProperties, "delegatedAccountID")}];
    if (operationType == 2)
    {
      v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy12 = self;
        _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Performing subscription accountless playback request...", buf, 0xCu);
      }

      [v14 setRequestType:2];
      [v14 setStoreSubscriptionAdamID:subscriptionAdamID];
      subscriptionLeaseSession = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
      leaseStatus = [subscriptionLeaseSession leaseStatus];
      hasOnlinePlaybackKeys = [leaseStatus hasOnlinePlaybackKeys];

      if (hasOnlinePlaybackKeys)
      {
        mEMORY[0x1E6970990] = [MEMORY[0x1E6970990] sharedCache];
        v31 = [mEMORY[0x1E6970990] cachedResponseForRequest:v14];
        if (v31)
        {
          v32 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v31 assetLoadProperties:assetLoadProperties source:3 error:0];
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
            selfCopy12 = self;
            v84 = 2114;
            *v85 = v31;
            _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Using existing cached playback response: %{public}@", buf, 0x16u);
          }

          (*(v4 + 2))(v4, v32, 0, 0);
          goto LABEL_70;
        }
      }

      mEMORY[0x1E6970990] = [objc_alloc(MEMORY[0x1E69E4488]) initWithRequestContext:requestContext storeSubscriptionAdamID:subscriptionAdamID];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_33;
      v69[3] = &unk_1E8234310;
      v69[4] = self;
      v70 = v14;
      v71 = v4;
      v40 = [mEMORY[0x1E6970990] performWithResponseHandler:v69];
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
      if (operationType == 1)
      {
        v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy12 = self;
          _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Loading subscription lease session...", buf, 0xCu);
        }

        mEMORY[0x1E6970990] = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
        v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v18 = v17;
        if (!mEMORY[0x1E6970990])
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            selfCopy12 = self;
            _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Failed loading subscription asset due to missing lease session.", buf, 0xCu);
          }

          mEMORY[0x1E6970990] = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:19 userInfo:0];
          (*(v4 + 2))(v4, 0, 0, mEMORY[0x1E6970990]);
          goto LABEL_70;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          leaseStatus2 = [mEMORY[0x1E6970990] leaseStatus];
          *buf = 138543618;
          selfCopy12 = self;
          v84 = 2114;
          *v85 = leaseStatus2;
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
            prefersVideoContent = [assetLoadProperties prefersVideoContent];
            v25 = @"audio";
            if (prefersVideoContent)
            {
              v25 = @"video";
            }

            *buf = 138543618;
            selfCopy12 = self;
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
            prefersVideoContent2 = [assetLoadProperties prefersVideoContent];
            preferredAudioAssetType = [assetLoadProperties preferredAudioAssetType];
            if ((preferredAudioAssetType - 1) > 4)
            {
              v38 = @"Unspecified";
            }

            else
            {
              v38 = off_1E82334C0[preferredAudioAssetType - 1];
            }

            *buf = 138543875;
            selfCopy12 = self;
            v84 = 1024;
            *v85 = prefersVideoContent2;
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
          if ([assetLoadProperties prefersVideoContent])
          {
            v42 = @"video";
          }

          else
          {
            v42 = @"audio";
          }

          preferredAudioAssetType2 = [assetLoadProperties preferredAudioAssetType];
          if ((preferredAudioAssetType2 - 1) > 4)
          {
            v44 = @"Unspecified";
          }

          else
          {
            v44 = off_1E82334C0[preferredAudioAssetType2 - 1];
          }

          *buf = 138543875;
          selfCopy12 = self;
          v84 = 2114;
          *v85 = v42;
          *&v85[8] = 2113;
          *&v85[10] = v44;
          _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Loading %{public}@ asset - Preferred audio: %{private}@", buf, 0x20u);
        }

        v63 = [objc_alloc(MEMORY[0x1E69E44A8]) initWithRequestContext:requestContext];
        [v63 setFollowUp:{objc_msgSend(assetLoadProperties, "isFollowUp")}];
        [v63 setStoreSubscriptionAdamID:subscriptionAdamID];
        [v14 setStoreSubscriptionAdamID:subscriptionAdamID];
        if ([mEMORY[0x1E6970990] isDelegatedLeaseSession])
        {
          personalizedStore = [itemIdentifiers personalizedStore];
          cloudID = [personalizedStore cloudID];

          [v63 setStoreCloudID:cloudID];
          [v14 setStoreCloudID:cloudID];
          universalStore3 = [itemIdentifiers universalStore];
          purchasedAdamID = [universalStore3 purchasedAdamID];

          [v63 setStorePurchasedAdamID:purchasedAdamID];
          [v14 setStorePurchasedAdamID:purchasedAdamID];
          universalStore4 = [itemIdentifiers universalStore];
          universalCloudLibraryID = [universalStore4 universalCloudLibraryID];

          [v63 setCloudUniversalLibraryID:universalCloudLibraryID];
          [v14 setCloudUniversalLibraryID:universalCloudLibraryID];
          [v14 setRequestType:4];
        }

        else
        {
          [v14 setRequestType:2];
        }

        subscriptionLeaseSession2 = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self subscriptionLeaseSession];
        leaseStatus3 = [subscriptionLeaseSession2 leaseStatus];
        hasOnlinePlaybackKeys2 = [leaseStatus3 hasOnlinePlaybackKeys];

        if (hasOnlinePlaybackKeys2)
        {
          mEMORY[0x1E6970990]2 = [MEMORY[0x1E6970990] sharedCache];
          v54 = [mEMORY[0x1E6970990]2 cachedResponseForRequest:v14];
          v55 = v54;
          if (v54)
          {
            v56 = [MPCModelGenericAVItemAssetLoadResult assetLoadResultWithStoreAssetPlaybackResponse:v54 assetLoadProperties:assetLoadProperties source:3 error:0];
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
              selfCopy12 = self;
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
          selfCopy12 = self;
          _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Performing subscription playback request...", buf, 0xCu);
        }

        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __62__MPCModelGenericAVItemSubscriptionAssetLoadOperation_execute__block_invoke_19;
        v75[3] = &unk_1E8234310;
        v75[4] = self;
        v76 = v14;
        v77 = v4;
        v59 = [mEMORY[0x1E6970990] performPlaybackRequest:v63 completionHandler:v75];
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

      mEMORY[0x1E6970990] = [MEMORY[0x1E696AAA8] currentHandler];
      [mEMORY[0x1E6970990] handleFailureInMethod:a2 object:self file:@"MPCModelGenericAVItemSubscriptionAssetLoadOperation.m" lineNumber:250 description:{@"Invalid operation type: %li", -[MPCModelGenericAVItemSubscriptionAssetLoadOperation operationType](self, "operationType")}];
    }

LABEL_70:

    goto LABEL_71;
  }

  v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy12 = self;
    _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Short-circuiting Item Subscription Asset Loading [offline] - SOD/Cached Response/Server requests are unusable", buf, 0xCu);
  }

  itemIdentifiers = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:56 userInfo:0];
  (*(v4 + 2))(v4, 0, 0, itemIdentifiers);
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
  cancellationHandler = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self cancellationHandler];
  v4 = cancellationHandler;
  if (cancellationHandler)
  {
    (*(cancellationHandler + 16))(cancellationHandler);
  }
}

- (id)description
{
  assetLoadProperties = [(MPCModelGenericAVItemSubscriptionAssetLoadOperation *)self assetLoadProperties];
  isFollowUp = [assetLoadProperties isFollowUp];

  if (isFollowUp)
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