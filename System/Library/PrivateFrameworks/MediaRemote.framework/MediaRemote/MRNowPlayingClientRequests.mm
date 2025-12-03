@interface MRNowPlayingClientRequests
- (MRClient)clientProperties;
- (MRNowPlayingClientRequests)initWithPlayerPath:(id)path;
- (id)debugDescription;
- (id)existingNowPlayingPlayerClientRequestsForPlayerPath:(id)path;
- (id)nowPlayingPlayerClientRequestsForPlayerPath:(id)path;
- (void)handleClientPropertiesRequestWithCompletion:(id)completion;
- (void)removePlayer:(id)player;
- (void)restoreNowPlayingClientState;
- (void)setClientProperties:(id)properties;
@end

@implementation MRNowPlayingClientRequests

- (MRNowPlayingClientRequests)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = MRNowPlayingClientRequests;
  v6 = [(MRNowPlayingClientRequests *)&v13 init];
  if (v6)
  {
    client = [pathCopy client];

    if (!client)
    {
      [MRNowPlayingClientRequests initWithPlayerPath:];
    }

    client2 = [pathCopy client];
    processIdentifier = [client2 processIdentifier];

    if (!processIdentifier)
    {
      [MRNowPlayingClientRequests initWithPlayerPath:];
    }

    objc_storeStrong(&v6->_playerPath, path);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    playerClients = v6->_playerClients;
    v6->_playerClients = v10;
  }

  return v6;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v4 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_playerPath);
  v5 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_clientProperties);
  v6 = MRCreateIndentedDebugDescriptionFromArray(selfCopy->_playerClients);
  v7 = [v3 stringWithFormat:@"    playerPath = %@\n    clientProperties = %@\n    playerClients = %@\n", v4, v5, v6];
  v8 = MRCreateFormattedDebugDescriptionFromClass(selfCopy, v7);

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)setClientProperties:(id)properties
{
  v21 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v6 = +[MRUserSettings currentSettings];
  verboseOriginClientLogging = [v6 verboseOriginClientLogging];

  if (verboseOriginClientLogging)
  {
    v8 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = self->_playerPath;
      *buf = 138543618;
      v18 = playerPath;
      v19 = 2114;
      v20 = propertiesCopy;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientRequests] %{public}@ UpdatingCache: clientProperties %{public}@", buf, 0x16u);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  client = [(MRPlayerPath *)selfCopy->_playerPath client];
  v12 = [client isEqual:propertiesCopy];

  if ((v12 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRNowPlayingOriginClientRequests.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"[_playerPath.client isEqual:clientProperties]"}];
  }

  v13 = [propertiesCopy copy];
  clientProperties = selfCopy->_clientProperties;
  selfCopy->_clientProperties = v13;

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (MRClient)clientProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(MRClient *)selfCopy->_clientProperties copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)nowPlayingPlayerClientRequestsForPlayerPath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  player = [pathCopy player];

  if (player)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = selfCopy->_playerClients;
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
        playerPath = [v11 playerPath];
        v13 = [playerPath isEqual:pathCopy];

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

    v14 = [[MRNowPlayingPlayerClientRequests alloc] initWithPlayerPath:pathCopy];
    [(NSMutableArray *)selfCopy->_playerClients addObject:v14];
LABEL_13:
    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)existingNowPlayingPlayerClientRequestsForPlayerPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  player = [pathCopy player];

  if (player)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = selfCopy->_playerClients;
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
          playerPath = [v11 playerPath];
          v13 = [playerPath isEqual:pathCopy];

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

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)removePlayer:(id)player
{
  v19 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = selfCopy->_playerClients;
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
        playerPath = [v10 playerPath];
        v12 = [playerPath isEqual:playerCopy];

        if (v12)
        {
          [(NSMutableArray *)selfCopy->_playerClients removeObject:v10];
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

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleClientPropertiesRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingClientRequests handleClientPropertiesRequestWithCompletion:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  clientProperties = selfCopy->_clientProperties;
  if (clientProperties)
  {
    completionCopy[2](completionCopy, clientProperties, 0);
  }

  else
  {
    clientPropertiesCompletions = selfCopy->_clientPropertiesCompletions;
    if (!clientPropertiesCompletions)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = selfCopy->_clientPropertiesCompletions;
      selfCopy->_clientPropertiesCompletions = v8;

      clientPropertiesCompletions = selfCopy->_clientPropertiesCompletions;
    }

    v10 = [completionCopy copy];
    v11 = MEMORY[0x1A58E3570]();
    [(NSMutableArray *)clientPropertiesCompletions addObject:v11];

    if ([(NSMutableArray *)selfCopy->_clientPropertiesCompletions count]== 1)
    {
      v12 = MRGetSharedService();
      playerPath = selfCopy->_playerPath;
      v14 = +[MRMediaRemoteServiceClient sharedServiceClient];
      workerQueue = [v14 workerQueue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__MRNowPlayingClientRequests_handleClientPropertiesRequestWithCompletion___block_invoke;
      v16[3] = &unk_1E769EE20;
      v16[4] = selfCopy;
      MRMediaRemoteServiceGetClientProperties(v12, playerPath, workerQueue, v16);
    }
  }

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = selfCopy->_playerClients;
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

  objc_sync_exit(selfCopy);
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