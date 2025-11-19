@interface MPCMediaRemoteMiddlewareParticipantsOperation
- (MPCMediaRemoteMiddlewareParticipantsOperation)initWithMiddleware:(id)a3;
- (id)timeoutDescription;
- (void)execute;
@end

@implementation MPCMediaRemoteMiddlewareParticipantsOperation

void __56__MPCMediaRemoteMiddlewareParticipantsOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = objc_alloc(MEMORY[0x1E6970878]);
          v12 = [v10 identifier];
          v13 = [v10 identity];
          v14 = [v11 initWithIdentifier:v12 mediaRemoteUserIdentity:v13];
          v15 = [v10 identifier];
          [v4 setObject:v14 forKeyedSubscript:v15];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v16 = [v4 copy];
    v17 = [*(a1 + 32) middleware];
    [v17 setQueueParticipants:v16];

    v3 = v18;
  }

  [*(a1 + 32) finish];
}

- (void)execute
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(MPCMediaRemoteMiddlewareParticipantsOperation *)self middleware];
  v4 = [v3 controller];

  if (v4)
  {
    v5 = _Block_copy(self->_invalidationHandler);
    v6 = [(MPCMediaRemoteMiddlewareParticipantsOperation *)self middleware];
    v7 = [v6 controller];
    v8 = [v7 playbackQueueParticipants];
    [(MPCMediaRemoteMiddlewareParticipantsOperation *)self setParticipantsFuture:v8];

    v9 = [(MPCMediaRemoteMiddlewareParticipantsOperation *)self participantsFuture];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__MPCMediaRemoteMiddlewareParticipantsOperation_execute__block_invoke;
    v19[3] = &unk_1E8239528;
    v20 = v5;
    v10 = v5;
    v11 = [v9 onInvalid:v19];

    v21[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    invalidationObservers = self->_invalidationObservers;
    self->_invalidationObservers = v12;

    v14 = [(MPCMediaRemoteMiddlewareParticipantsOperation *)self participantsFuture];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__MPCMediaRemoteMiddlewareParticipantsOperation_execute__block_invoke_2;
    v18[3] = &unk_1E82387B0;
    v18[4] = self;
    v15 = [v14 onSuccess:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__MPCMediaRemoteMiddlewareParticipantsOperation_execute__block_invoke_3;
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
  v3 = [(MPCMediaRemoteMiddlewareParticipantsOperation *)self participantsFuture];
  v4 = [v2 stringWithFormat:@"participantsFuture=%@", v3];

  return v4;
}

void __56__MPCMediaRemoteMiddlewareParticipantsOperation_execute__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:7000 underlyingError:a2 debugDescription:@"Failed to load participants"];
  [*(a1 + 32) finishWithError:v3];
}

- (MPCMediaRemoteMiddlewareParticipantsOperation)initWithMiddleware:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPCMediaRemoteMiddlewareParticipantsOperation;
  v6 = [(MPAsyncOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_middleware, a3);
  }

  return v7;
}

@end