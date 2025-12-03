@interface MPCPlaybackEngineMiddlewareOperation
- (MPCPlaybackEngineMiddlewareOperation)initWithMiddleware:(id)middleware playerRequest:(id)request;
- (NSArray)inputProtocols;
- (void)execute;
@end

@implementation MPCPlaybackEngineMiddlewareOperation

- (NSArray)inputProtocols
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F45D1498;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)execute
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  inputOperations = [(MPCPlaybackEngineMiddlewareOperation *)self inputOperations];
  v4 = [inputOperations objectForKey:&unk_1F45D1498];

  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        controller = [*(*(&v26 + 1) + 8 * i) controller];
        if (controller)
        {
          v10 = controller;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
  isInProcess = [resolvedPlayerPath isInProcess];

  if (isInProcess)
  {
    v13 = MEMORY[0x1E6970850];
    playerRequest = [(MPCPlaybackEngineMiddlewareOperation *)self playerRequest];
    playerPath = [playerRequest playerPath];
    playerID = [playerPath playerID];
    v17 = [v13 infoCenterForPlayerID:playerID];

    playbackEngine = [v17 playbackEngine];
    if (playbackEngine)
    {
      middleware = [(MPCPlaybackEngineMiddlewareOperation *)self middleware];
      [middleware setPlaybackEngine:playbackEngine];

      v20 = _Block_copy(self->_invalidationHandler);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__MPCPlaybackEngineMiddlewareOperation_execute__block_invoke;
      block[3] = &unk_1E8239198;
      selfCopy = self;
      v25 = v20;
      v23 = playbackEngine;
      v21 = v20;
      dispatch_async(MEMORY[0x1E69E96A0], block);
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

void __47__MPCPlaybackEngineMiddlewareOperation_execute__block_invoke(id *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  objc_initWeak(&location, a1[4]);
  v3 = objc_alloc(MEMORY[0x1E6970828]);
  v4 = *MEMORY[0x1E696F818];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MPCPlaybackEngineMiddlewareOperation_execute__block_invoke_2;
  v6[3] = &unk_1E82388E8;
  objc_copyWeak(&v8, &location);
  v7 = a1[6];
  v5 = [v3 initWithName:v4 object:0 handler:v6];
  [v2 addObject:v5];
  objc_storeStrong(a1[5] + 36, v2);
  [a1[5] finish];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __47__MPCPlaybackEngineMiddlewareOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 object];

  v5 = [WeakRetained player];
  v6 = [v5 currentItem];

  if (v4 == v6)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (MPCPlaybackEngineMiddlewareOperation)initWithMiddleware:(id)middleware playerRequest:(id)request
{
  middlewareCopy = middleware;
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = MPCPlaybackEngineMiddlewareOperation;
  v9 = [(MPAsyncOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_middleware, middleware);
    objc_storeStrong(&v10->_playerRequest, request);
  }

  return v10;
}

@end