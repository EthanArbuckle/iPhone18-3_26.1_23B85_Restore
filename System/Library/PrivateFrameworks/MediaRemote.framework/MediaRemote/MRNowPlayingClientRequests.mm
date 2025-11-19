@interface MRNowPlayingClientRequests
- (MRClient)clientProperties;
- (MRNowPlayingClientRequests)initWithPlayerPath:(id)a3;
- (id)debugDescription;
- (id)existingNowPlayingPlayerClientRequestsForPlayerPath:(id)a3;
- (id)nowPlayingPlayerClientRequestsForPlayerPath:(id)a3;
- (void)handleClientPropertiesRequestWithCompletion:(id)a3;
- (void)removePlayer:(id)a3;
- (void)restoreNowPlayingClientState;
- (void)setClientProperties:(id)a3;
@end

@implementation MRNowPlayingClientRequests

- (MRNowPlayingClientRequests)initWithPlayerPath:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MRNowPlayingClientRequests;
  v6 = [(MRNowPlayingClientRequests *)&v13 init];
  if (v6)
  {
    v7 = [v5 client];

    if (!v7)
    {
      [MRNowPlayingClientRequests initWithPlayerPath:];
    }

    v8 = [v5 client];
    v9 = [v8 processIdentifier];

    if (!v9)
    {
      [MRNowPlayingClientRequests initWithPlayerPath:];
    }

    objc_storeStrong(&v6->_playerPath, a3);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    playerClients = v6->_playerClients;
    v6->_playerClients = v10;
  }

  return v6;
}

- (id)debugDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E696AEC0];
  v4 = MRCreateIndentedDebugDescriptionFromObject(v2->_playerPath);
  v5 = MRCreateIndentedDebugDescriptionFromObject(v2->_clientProperties);
  v6 = MRCreateIndentedDebugDescriptionFromArray(v2->_playerClients);
  v7 = [v3 stringWithFormat:@"    playerPath = %@\n    clientProperties = %@\n    playerClients = %@\n", v4, v5, v6];
  v8 = MRCreateFormattedDebugDescriptionFromClass(v2, v7);

  objc_sync_exit(v2);

  return v8;
}

- (void)setClientProperties:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 verboseOriginClientLogging];

  if (v7)
  {
    v8 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = self->_playerPath;
      *buf = 138543618;
      v18 = playerPath;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientRequests] %{public}@ UpdatingCache: clientProperties %{public}@", buf, 0x16u);
    }
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(MRPlayerPath *)v10->_playerPath client];
  v12 = [v11 isEqual:v5];

  if ((v12 & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:v10 file:@"MRNowPlayingOriginClientRequests.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"[_playerPath.client isEqual:clientProperties]"}];
  }

  v13 = [v5 copy];
  clientProperties = v10->_clientProperties;
  v10->_clientProperties = v13;

  objc_sync_exit(v10);
  v15 = *MEMORY[0x1E69E9840];
}

- (MRClient)clientProperties
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MRClient *)v2->_clientProperties copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)nowPlayingPlayerClientRequestsForPlayerPath:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 player];

  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6->_playerClients;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [v11 playerPath];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v11;

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }

    v14 = [[MRNowPlayingPlayerClientRequests alloc] initWithPlayerPath:v4];
    [(NSMutableArray *)v6->_playerClients addObject:v14];
LABEL_13:
    objc_sync_exit(v6);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)existingNowPlayingPlayerClientRequestsForPlayerPath:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 player];

  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6->_playerClients;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 playerPath];
          v13 = [v12 isEqual:v4];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(v6);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)removePlayer:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5->_playerClients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 playerPath];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          [(NSMutableArray *)v5->_playerClients removeObject:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v5);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleClientPropertiesRequestWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MRNowPlayingClientRequests handleClientPropertiesRequestWithCompletion:];
  }

  v5 = self;
  objc_sync_enter(v5);
  clientProperties = v5->_clientProperties;
  if (clientProperties)
  {
    v4[2](v4, clientProperties, 0);
  }

  else
  {
    clientPropertiesCompletions = v5->_clientPropertiesCompletions;
    if (!clientPropertiesCompletions)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = v5->_clientPropertiesCompletions;
      v5->_clientPropertiesCompletions = v8;

      clientPropertiesCompletions = v5->_clientPropertiesCompletions;
    }

    v10 = [v4 copy];
    v11 = MEMORY[0x1A58E3570]();
    [(NSMutableArray *)clientPropertiesCompletions addObject:v11];

    if ([(NSMutableArray *)v5->_clientPropertiesCompletions count]== 1)
    {
      v12 = MRGetSharedService();
      playerPath = v5->_playerPath;
      v14 = +[MRMediaRemoteServiceClient sharedServiceClient];
      v15 = [v14 workerQueue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__MRNowPlayingClientRequests_handleClientPropertiesRequestWithCompletion___block_invoke;
      v16[3] = &unk_1E769EE20;
      v16[4] = v5;
      MRMediaRemoteServiceGetClientProperties(v12, playerPath, v15, v16);
    }
  }

  objc_sync_exit(v5);
}

void __74__MRNowPlayingClientRequests_handleClientPropertiesRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  v9 = *(a1 + 32);
  if (!*(v9 + 8))
  {
    objc_storeStrong((v9 + 8), a2);
    v9 = *(a1 + 32);
  }

  v10 = [*(v9 + 24) copy];
  [*(*(a1 + 32) + 24) removeAllObjects];
  objc_sync_exit(v8);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v16 + 1) + 8 * i) + 16))(*(*(&v16 + 1) + 8 * i));
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)restoreNowPlayingClientState
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2->_playerClients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) restoreNowPlayingClientState];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithPlayerPath:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingClientRequests initWithPlayerPath:]"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingOriginClientRequests.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"playerPath.client"}];
}

- (void)initWithPlayerPath:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingClientRequests initWithPlayerPath:]"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingOriginClientRequests.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"playerPath.client.processIdentifier"}];
}

- (void)handleClientPropertiesRequestWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end