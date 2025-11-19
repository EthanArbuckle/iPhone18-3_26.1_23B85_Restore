@interface MPCMediaRemoteMiddlewareControllerOperation
- (MPCMediaRemoteController)controller;
- (MPCMediaRemoteMiddlewareControllerOperation)initWithMiddleware:(id)a3 playerPath:(id)a4;
- (NSArray)outputProtocols;
- (id)timeoutDescription;
- (void)execute;
@end

@implementation MPCMediaRemoteMiddlewareControllerOperation

- (NSArray)outputProtocols
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F45D1498;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)execute
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(self->_invalidationHandler);
  v4 = [(MPCMediaRemoteMiddlewareControllerOperation *)self playerPath];
  v5 = [MPCMediaRemoteController controllerForPlayerPath:v4];
  [(MPCMediaRemoteMiddlewareControllerOperation *)self setControllerFuture:v5];

  v6 = [(MPCMediaRemoteMiddlewareControllerOperation *)self controllerFuture];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__MPCMediaRemoteMiddlewareControllerOperation_execute__block_invoke;
  v18[3] = &unk_1E8239528;
  v19 = v3;
  v7 = v3;
  v8 = [v6 onInvalid:v18];

  v20[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  invalidationObservers = self->_invalidationObservers;
  self->_invalidationObservers = v9;

  v11 = [(MPCMediaRemoteMiddlewareControllerOperation *)self controllerFuture];
  v12 = [(MPCMediaRemoteMiddlewareControllerOperation *)self middleware];
  [v12 setControllerFuture:v11];

  v13 = [(MPCMediaRemoteMiddlewareControllerOperation *)self controllerFuture];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__MPCMediaRemoteMiddlewareControllerOperation_execute__block_invoke_2;
  v17[3] = &unk_1E8238678;
  v17[4] = self;
  v14 = [v13 onSuccess:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__MPCMediaRemoteMiddlewareControllerOperation_execute__block_invoke_3;
  v16[3] = &unk_1E8238800;
  v16[4] = self;
  v15 = [v14 onFailure:v16];
}

uint64_t __54__MPCMediaRemoteMiddlewareControllerOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 middleware];
  [v5 setController:v4];

  v6 = *(a1 + 32);

  return [v6 finish];
}

- (MPCMediaRemoteController)controller
{
  v2 = [(MPCMediaRemoteMiddlewareControllerOperation *)self middleware];
  v3 = [v2 controller];

  return v3;
}

- (id)timeoutDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MPCMediaRemoteMiddlewareControllerOperation *)self controllerFuture];
  v4 = [v2 stringWithFormat:@"controllerFuture=%@", v3];

  return v4;
}

- (MPCMediaRemoteMiddlewareControllerOperation)initWithMiddleware:(id)a3 playerPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPCMediaRemoteMiddlewareControllerOperation;
  v9 = [(MPAsyncOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_middleware, a3);
    objc_storeStrong(&v10->_playerPath, a4);
  }

  return v10;
}

@end