@interface MPCStoreFrontLocalEquivalencyMiddlewareOperation
- (MPCStoreFrontLocalEquivalencyMiddlewareOperation)initWithMiddleware:(id)middleware playerRequest:(id)request;
- (MPModelGenericObject)overridePlayingItem;
- (NSArray)inputProtocols;
- (NSArray)outputProtocols;
- (NSIndexPath)playingItemIndexPath;
- (void)execute;
@end

@implementation MPCStoreFrontLocalEquivalencyMiddlewareOperation

- (NSArray)outputProtocols
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F45D1E50;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (NSArray)inputProtocols
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F45D15C8;
  v4[1] = &unk_1F45D1498;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)execute
{
  v53 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  inputOperations = [(MPCStoreFrontLocalEquivalencyMiddlewareOperation *)self inputOperations];
  v4 = [inputOperations objectForKey:&unk_1F45D1498];

  v5 = [v4 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v48;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v4);
        }

        controller = [*(*(&v47 + 1) + 8 * i) controller];
        if (controller)
        {
          v10 = controller;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  resolvedPlayerPath = [v10 resolvedPlayerPath];
  isLocalDevice = [resolvedPlayerPath isLocalDevice];

  if (!isLocalDevice)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    inputOperations2 = [(MPCStoreFrontLocalEquivalencyMiddlewareOperation *)self inputOperations];
    v14 = [inputOperations2 objectForKey:&unk_1F45D15C8];

    v15 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v43 + 1) + 8 * j);
          modelObjects = [v19 modelObjects];
          if (modelObjects)
          {
            v21 = modelObjects;
            sourceContentItems = [v19 sourceContentItems];
            playingIndexPath = [v19 playingIndexPath];

            if (playingIndexPath && ([v21 itemAtIndexPath:playingIndexPath], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v25 = v24;
              identifiers = [v24 identifiers];
              universalStore = [identifiers universalStore];
              subscriptionAdamID = [universalStore subscriptionAdamID];

              if (!subscriptionAdamID)
              {
                goto LABEL_31;
              }

              if (execute_sOnceToken != -1)
              {
                dispatch_once(&execute_sOnceToken, &__block_literal_global_28945);
              }

              if (execute_sSystemMediaApplicationBundleID && execute_sSystemMediaApplicationBundleVersion)
              {
                v36 = [sourceContentItems itemAtIndexPath:playingIndexPath];
                userInfo = [v36 userInfo];
                v30 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6970330]];
                mPC_storeFrontIdentifierKey = [v30 MPC_storeFrontIdentifierKey];

                defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
                activeAccount = [MEMORY[0x1E69E4680] activeAccount];
                v37[0] = MEMORY[0x1E69E9820];
                v37[1] = 3221225472;
                v37[2] = __59__MPCStoreFrontLocalEquivalencyMiddlewareOperation_execute__block_invoke_2;
                v37[3] = &unk_1E8238960;
                v38 = mPC_storeFrontIdentifierKey;
                selfCopy = self;
                v42 = subscriptionAdamID;
                v40 = v25;
                v41 = playingIndexPath;
                v34 = v25;
                v35 = mPC_storeFrontIdentifierKey;
                [defaultIdentityStore getPropertiesForUserIdentity:activeAccount completionHandler:v37];
              }

              else
              {
LABEL_31:
                [(MPAsyncOperation *)self finish];
              }
            }

            else
            {
              [(MPAsyncOperation *)self finish];
            }

            goto LABEL_33;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  [(MPAsyncOperation *)self finish];
LABEL_33:
}

void __59__MPCStoreFrontLocalEquivalencyMiddlewareOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 storefrontIdentifier];
  v4 = [v3 MPC_storeFrontIdentifierKey];

  if (v4 == *(a1 + 32) || [v4 isEqual:?])
  {
    [*(a1 + 40) finish];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", *(a1 + 64)];
    v6 = objc_alloc_init(MEMORY[0x1E69709C8]);
    [v6 setReason:3];
    [v6 setTimeoutInterval:&unk_1F4599AE0];
    [v6 setRetryDelay:2.0];
    [v6 setAllowLocalEquivalencies:1];
    [v6 setShouldRequireCachedResults:1];
    v22[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v6 setItemIdentifiers:v7];

    v8 = [MEMORY[0x1E69E43B0] defaultInfo];
    v9 = [v8 mutableCopy];
    [v9 setClientIdentifier:execute_sSystemMediaApplicationBundleID];
    [v9 setClientVersion:execute_sSystemMediaApplicationBundleVersion];
    [v6 setClientInfo:v9];
    [v6 setShouldIgnoreExpiration:1];
    v10 = [*(*(a1 + 40) + 304) userIdentity];
    [v6 setUserIdentity:v10];

    v11 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    [v6 setUserIdentityStore:v11];

    v12 = [MEMORY[0x1E69709D0] sharedStoreItemMetadataRequestController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__MPCStoreFrontLocalEquivalencyMiddlewareOperation_execute__block_invoke_70;
    v17[3] = &unk_1E8238938;
    v13 = *(a1 + 48);
    v17[4] = *(a1 + 40);
    v18 = v5;
    v19 = v6;
    v20 = v13;
    v21 = *(a1 + 56);
    v14 = v6;
    v15 = v5;
    v16 = [v12 getStoreItemMetadataForRequest:v14 responseHandler:v17];
  }
}

void __59__MPCStoreFrontLocalEquivalencyMiddlewareOperation_execute__block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || [v5 isFinalResponse])
  {
    if (v6)
    {
      [*(a1 + 32) finishWithError:v6];
    }

    else
    {
      v7 = [v5 storeItemMetadataForItemIdentifier:*(a1 + 40)];
      if (v7)
      {
        v8 = [*(a1 + 32) playerRequest];
        v9 = [v8 playingItemProperties];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v18 = [*(a1 + 32) playerRequest];
          v10 = [v18 queueItemProperties];

          if (!v10)
          {
            v10 = [MEMORY[0x1E69708B0] emptyPropertySet];
          }
        }

        v19 = [objc_alloc(MEMORY[0x1E69709F0]) initWithRequestedPropertySet:v10];
        [v19 setShouldUsePlaylistEntry:{objc_msgSend(*(a1 + 56), "type") == 5}];
        v20 = [*(a1 + 32) userIdentity];
        v21 = [v19 modelObjectWithStoreItemMetadata:v7 userIdentity:v20];

        v22 = [*(a1 + 56) MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v21];
        v23 = v22;
        if (v22 && v22 != v21)
        {
          v24 = [*(a1 + 32) middleware];
          [v24 setOverridePlayingItem:v23];

          v25 = *(a1 + 64);
          v26 = [*(a1 + 32) middleware];
          [v26 setPlayingItemIndexPath:v25];
        }

        [*(a1 + 32) finish];
      }

      else
      {
        v11 = [v5 cacheMissItemIdentifiers];
        v12 = [v11 containsObject:*(a1 + 40)];

        if (v12)
        {
          [*(a1 + 48) setShouldRequireCachedResults:0];
          v13 = _Block_copy(*(*(a1 + 32) + 280));
          v14 = [MEMORY[0x1E69709D0] sharedStoreItemMetadataRequestController];
          v15 = *(a1 + 48);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __59__MPCStoreFrontLocalEquivalencyMiddlewareOperation_execute__block_invoke_2_71;
          v27[3] = &unk_1E8238910;
          v28 = v13;
          v16 = v13;
          v17 = [v14 getStoreItemMetadataForRequest:v15 responseHandler:v27];
        }

        [*(a1 + 32) finish];
      }
    }
  }
}

void __59__MPCStoreFrontLocalEquivalencyMiddlewareOperation_execute__block_invoke_2_71(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v6 || [v6 isFinalResponse])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __59__MPCStoreFrontLocalEquivalencyMiddlewareOperation_execute__block_invoke()
{
  v0 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v1 = execute_sSystemMediaApplicationBundleID;
  execute_sSystemMediaApplicationBundleID = v0;

  if (!execute_sSystemMediaApplicationBundleID)
  {
    return;
  }

  v13 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v13 bundleIdentifier];
  v3 = [v2 isEqualToString:execute_sSystemMediaApplicationBundleID];

  if (v3)
  {
    v4 = [v13 objectForInfoDictionaryKey:*MEMORY[0x1E695E148]];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v13 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
    }

    v10 = execute_sSystemMediaApplicationBundleVersion;
    execute_sSystemMediaApplicationBundleVersion = v6;
LABEL_13:

    goto LABEL_14;
  }

  v7 = objc_alloc(MEMORY[0x1E69635F8]);
  v8 = [v7 initWithBundleIdentifier:execute_sSystemMediaApplicationBundleID allowPlaceholder:1 error:0];
  v5 = v8;
  if (v8)
  {
    v9 = [v8 shortVersionString];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v5 bundleVersion];
    }

    v12 = execute_sSystemMediaApplicationBundleVersion;
    execute_sSystemMediaApplicationBundleVersion = v11;

    goto LABEL_13;
  }

LABEL_14:
}

- (MPCStoreFrontLocalEquivalencyMiddlewareOperation)initWithMiddleware:(id)middleware playerRequest:(id)request
{
  middlewareCopy = middleware;
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = MPCStoreFrontLocalEquivalencyMiddlewareOperation;
  v9 = [(MPAsyncOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_middleware, middleware);
    objc_storeStrong(&v10->_playerRequest, request);
  }

  return v10;
}

- (NSIndexPath)playingItemIndexPath
{
  middleware = [(MPCStoreFrontLocalEquivalencyMiddlewareOperation *)self middleware];
  playingItemIndexPath = [middleware playingItemIndexPath];

  return playingItemIndexPath;
}

- (MPModelGenericObject)overridePlayingItem
{
  middleware = [(MPCStoreFrontLocalEquivalencyMiddlewareOperation *)self middleware];
  overridePlayingItem = [middleware overridePlayingItem];

  return overridePlayingItem;
}

@end