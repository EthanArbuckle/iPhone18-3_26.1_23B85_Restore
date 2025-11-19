@interface MPCMediaRemoteMiddlewareCommandsOperation
- (MPCMediaRemoteMiddlewareCommandsOperation)initWithMiddleware:(id)a3;
- (id)timeoutDescription;
- (void)execute;
@end

@implementation MPCMediaRemoteMiddlewareCommandsOperation

- (void)execute
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPCMediaRemoteMiddlewareCommandsOperation *)self middleware];
  v4 = [v3 controller];

  if (v4)
  {
    v5 = _Block_copy(self->_invalidationHandler);
    v6 = [(MPCMediaRemoteMiddlewareCommandsOperation *)self middleware];
    v7 = [v6 controller];
    v8 = [v7 supportedCommands];
    [(MPCMediaRemoteMiddlewareCommandsOperation *)self setSupportedCommandsFuture:v8];

    v9 = [(MPCMediaRemoteMiddlewareCommandsOperation *)self supportedCommandsFuture];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke;
    v23[3] = &unk_1E8239528;
    v10 = v5;
    v24 = v10;
    v11 = [v9 onInvalid:v23];

    v25[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    invalidationObservers = self->_invalidationObservers;
    self->_invalidationObservers = v12;

    v14 = [(MPCMediaRemoteMiddlewareCommandsOperation *)self supportedCommandsFuture];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_2;
    v20[3] = &unk_1E8238650;
    v21 = v11;
    v22 = v10;
    v20[4] = self;
    v15 = v11;
    v16 = v10;
    v17 = [v14 onSuccess:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_6;
    v19[3] = &unk_1E8238800;
    v19[4] = self;
    v18 = [v17 onFailure:v19];
  }

  else
  {
    [(MPAsyncOperation *)self cancel];
    [(MPAsyncOperation *)self finish];
  }
}

void __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 middleware];
  [v6 setSupportedCommands:v3];

  v7 = [v5 commandInfoForCommand:125];
  if (v7)
  {
    v8 = MRMediaRemoteCommandInfoCopyValueForKey();
    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = [v9 middleware];
      v11 = [v10 controller];
      v12 = [v11 contentItemForIdentifier:v8];
      [*(a1 + 32) setLastSectionContentItemFuture:v12];

      v13 = [*(a1 + 32) lastSectionContentItemFuture];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_3;
      v28[3] = &unk_1E8239528;
      v29 = *(a1 + 48);
      v14 = [v13 onInvalid:v28];

      v30[0] = *(a1 + 40);
      v30[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      v16 = *(a1 + 32);
      v17 = *(v16 + 280);
      *(v16 + 280) = v15;

      v18 = [*(a1 + 32) lastSectionContentItemFuture];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_4;
      v27[3] = &unk_1E8238600;
      v27[4] = *(a1 + 32);
      v19 = [v18 onCompletion:v27];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_5;
      v24[3] = &unk_1E8238628;
      v20 = v8;
      v21 = *(a1 + 32);
      v25 = v20;
      v26 = v21;
      v22 = [v19 onFailure:v24];
    }

    else
    {
      [v9 finish];
    }
  }

  else
  {
    v23 = *(a1 + 32);

    [v23 finish];
  }
}

- (id)timeoutDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MPCMediaRemoteMiddlewareCommandsOperation *)self supportedCommandsFuture];
  v5 = [(MPCMediaRemoteMiddlewareCommandsOperation *)self lastSectionContentItemFuture];
  v6 = [v3 stringWithFormat:@"supportedCommandsFuture=%@ lastSectionContentItemFuture=%@", v4, v5];

  return v6;
}

void __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:4000 underlyingError:a2 debugDescription:@"Failed to get supported commands"];
  [*(a1 + 32) finishWithError:v3];
}

uint64_t __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 middleware];
  [v5 setLastSectionContentItem:v4];

  v6 = *(a1 + 32);

  return [v6 finish];
}

void __52__MPCMediaRemoteMiddlewareCommandsOperation_execute__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:4000 underlyingError:a2 debugDescription:{@"Failed to get lastSectionContentItem with id: %@", *(a1 + 32)}];
  [*(a1 + 40) finishWithError:v3];
}

- (MPCMediaRemoteMiddlewareCommandsOperation)initWithMiddleware:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPCMediaRemoteMiddlewareCommandsOperation;
  v6 = [(MPAsyncOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_middleware, a3);
  }

  return v7;
}

@end