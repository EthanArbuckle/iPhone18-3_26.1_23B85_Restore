@interface MPCMediaRemoteMiddlewarePlaybackStateOperation
- (MPCMediaRemoteMiddlewarePlaybackStateOperation)initWithMiddleware:(id)middleware;
- (id)timeoutDescription;
- (void)execute;
@end

@implementation MPCMediaRemoteMiddlewarePlaybackStateOperation

uint64_t __57__MPCMediaRemoteMiddlewarePlaybackStateOperation_execute__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(a2 + 16))(a2) - 1;
    if (v3 > 4)
    {
      v4 = 0;
    }

    else
    {
      v4 = qword_1C60454D8[v3];
    }

    v5 = [*(a1 + 32) middleware];
    [v5 setPlayerState:v4];
  }

  v6 = *(a1 + 32);

  return [v6 finish];
}

- (void)execute
{
  v21[1] = *MEMORY[0x1E69E9840];
  middleware = [(MPCMediaRemoteMiddlewarePlaybackStateOperation *)self middleware];
  controller = [middleware controller];

  if (controller)
  {
    v5 = _Block_copy(self->_invalidationHandler);
    middleware2 = [(MPCMediaRemoteMiddlewarePlaybackStateOperation *)self middleware];
    controller2 = [middleware2 controller];
    playbackState = [controller2 playbackState];
    [(MPCMediaRemoteMiddlewarePlaybackStateOperation *)self setPlaybackStateFuture:playbackState];

    playbackStateFuture = [(MPCMediaRemoteMiddlewarePlaybackStateOperation *)self playbackStateFuture];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__MPCMediaRemoteMiddlewarePlaybackStateOperation_execute__block_invoke;
    v19[3] = &unk_1E8239528;
    v20 = v5;
    v10 = v5;
    v11 = [playbackStateFuture onInvalid:v19];

    v21[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    invalidationObservers = self->_invalidationObservers;
    self->_invalidationObservers = v12;

    playbackStateFuture2 = [(MPCMediaRemoteMiddlewarePlaybackStateOperation *)self playbackStateFuture];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__MPCMediaRemoteMiddlewarePlaybackStateOperation_execute__block_invoke_2;
    v18[3] = &unk_1E82387D8;
    v18[4] = self;
    v15 = [playbackStateFuture2 onSuccess:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__MPCMediaRemoteMiddlewarePlaybackStateOperation_execute__block_invoke_3;
    v17[3] = &unk_1E8238800;
    v17[4] = self;
    v16 = [v15 onFailure:v17];
  }

  else
  {
    [(MPAsyncOperation *)self cancel];
    [(MPAsyncOperation *)self finish];
  }
}

- (id)timeoutDescription
{
  v2 = MEMORY[0x1E696AEC0];
  playbackStateFuture = [(MPCMediaRemoteMiddlewarePlaybackStateOperation *)self playbackStateFuture];
  v4 = [v2 stringWithFormat:@"playbackStateFuture=%@", playbackStateFuture];

  return v4;
}

void __57__MPCMediaRemoteMiddlewarePlaybackStateOperation_execute__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:6000 underlyingError:a2 debugDescription:@"Failed to get playback state"];
  [*(a1 + 32) finishWithError:v3];
}

- (MPCMediaRemoteMiddlewarePlaybackStateOperation)initWithMiddleware:(id)middleware
{
  middlewareCopy = middleware;
  v9.receiver = self;
  v9.super_class = MPCMediaRemoteMiddlewarePlaybackStateOperation;
  v6 = [(MPAsyncOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_middleware, middleware);
  }

  return v7;
}

@end