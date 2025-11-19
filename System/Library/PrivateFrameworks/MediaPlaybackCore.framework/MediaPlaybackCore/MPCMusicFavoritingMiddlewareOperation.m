@interface MPCMusicFavoritingMiddlewareOperation
- (MPCMusicFavoritingMiddlewareOperation)initWithMiddleware:(id)a3 playerRequest:(id)a4;
- (NSArray)inputProtocols;
- (void)execute;
@end

@implementation MPCMusicFavoritingMiddlewareOperation

- (NSArray)inputProtocols
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F45D1498;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)execute
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = [(MPCPlayerRequest *)self->_playerRequest userIdentity];
  if (v3)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v4 = [(MPCMusicFavoritingMiddlewareOperation *)self inputOperations];
    v5 = [v4 objectForKey:&unk_1F45D1498];

    v6 = [v5 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v6)
    {
      v7 = *v54;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v53 + 1) + 8 * v8) controller];
        if (v9)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v9 = 0;
    }

    v10 = [v9 resolvedPlayerPath];
    v11 = [v10 isSystemMusicPath];

    if (v11)
    {
      v12 = [MEMORY[0x1E69E44D0] sharedMonitorForIdentity:v3];
      v13 = [v12 subscriptionStatus];
      [(MPCMusicFavoritingMiddleware *)self->_middleware setRequestingUserSubscriptionStatus:v13];
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__25892;
      v51 = __Block_byref_object_dispose__25893;
      v52 = 0;
      v14 = objc_alloc(MEMORY[0x1E69B1420]);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __48__MPCMusicFavoritingMiddlewareOperation_execute__block_invoke;
      v44[3] = &unk_1E82394D8;
      v15 = v12;
      v45 = v15;
      v46 = &v47;
      v31 = [v14 initWithBlock:v44];
      v16 = _Block_copy(self->_invalidationHandler);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __48__MPCMusicFavoritingMiddlewareOperation_execute__block_invoke_2;
      v41[3] = &unk_1E8237F98;
      v17 = v13;
      v42 = v17;
      v18 = v16;
      v43 = v18;
      v19 = [v15 beginObservingSubscriptionStatusWithHandler:v41];
      v20 = v48[5];
      v48[5] = v19;

      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__25892;
      v39 = __Block_byref_object_dispose__25893;
      v40 = 0;
      v21 = objc_alloc(MEMORY[0x1E69B1420]);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __48__MPCMusicFavoritingMiddlewareOperation_execute__block_invoke_3;
      v34[3] = &unk_1E8238488;
      v34[4] = &v35;
      v22 = [v21 initWithBlock:v34];
      v23 = [MEMORY[0x1E69706D8] sharedDeviceLibraryController];
      v24 = [MEMORY[0x1E696AD88] defaultCenter];
      v25 = *MEMORY[0x1E696FBF0];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __48__MPCMusicFavoritingMiddlewareOperation_execute__block_invoke_4;
      v32[3] = &unk_1E8237FC0;
      v26 = v18;
      v33 = v26;
      v27 = [v24 addObserverForName:v25 object:v23 queue:0 usingBlock:v32];
      v28 = v36[5];
      v36[5] = v27;

      v57[0] = v31;
      v57[1] = v22;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      invalidationObservers = self->_invalidationObservers;
      self->_invalidationObservers = v29;

      [(MPAsyncOperation *)self finish];
      _Block_object_dispose(&v35, 8);

      _Block_object_dispose(&v47, 8);
    }

    else
    {
      [(MPAsyncOperation *)self finish];
    }
  }

  else
  {
    [(MPAsyncOperation *)self finish];
  }
}

void __48__MPCMusicFavoritingMiddlewareOperation_execute__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6 != v5 && ([v6 isEqual:v5] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __48__MPCMusicFavoritingMiddlewareOperation_execute__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 32) + 8) + 40)];
}

- (MPCMusicFavoritingMiddlewareOperation)initWithMiddleware:(id)a3 playerRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPCMusicFavoritingMiddlewareOperation;
  v9 = [(MPAsyncOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_middleware, a3);
    objc_storeStrong(&v10->_playerRequest, a4);
  }

  return v10;
}

@end