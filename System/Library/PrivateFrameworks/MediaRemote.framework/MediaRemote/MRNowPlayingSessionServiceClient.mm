@interface MRNowPlayingSessionServiceClient
- (MRNowPlayingSessionServiceClient)initWithService:(id)a3;
- (id)_existingPlayerPathForOrigin:(id)a3;
- (id)_generatePlayerID;
- (id)_generatePlayerPathForOrigin:(id)a3;
- (void)_handleCreatePlayerForOrigin:(id)a3 deviceInfo:(id)a4 completion:(id)a5;
- (void)_handleDestroyPlayersForOrigin:(id)a3;
- (void)mediaServicesResetNotification:(id)a3;
@end

@implementation MRNowPlayingSessionServiceClient

- (MRNowPlayingSessionServiceClient)initWithService:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = MRNowPlayingSessionServiceClient;
  v6 = [(MRNowPlayingSessionServiceClient *)&v23 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    playerPathsByOrigin = v6->_playerPathsByOrigin;
    v6->_playerPathsByOrigin = v7;

    v9 = [v5 service];
    v10 = [v9 mrXPCConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__MRNowPlayingSessionServiceClient_initWithService___block_invoke;
    v20[3] = &unk_1E76A4C00;
    v22 = a2;
    v11 = v6;
    v21 = v11;
    [v10 addCustomXPCHandler:v20 forKey:0x40000000000000CLL];

    v12 = [v5 service];
    v13 = [v12 mrXPCConnection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__MRNowPlayingSessionServiceClient_initWithService___block_invoke_3;
    v18[3] = &unk_1E76A4C28;
    v14 = v11;
    v19 = v14;
    [v13 addCustomXPCHandler:v18 forKey:0x40000000000000DLL];

    v15 = *MEMORY[0x1E6958110];
    if (!*MEMORY[0x1E6958110])
    {
      [(MRNowPlayingSessionServiceClient *)a2 initWithService:v14];
    }

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v14 selector:sel_mediaServicesResetNotification_ name:v15 object:0];
  }

  return v6;
}

void __52__MRNowPlayingSessionServiceClient_initWithService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MRCreatePlayerPathFromXPCMessage(v3);
  v5 = MRCreateDeviceInfoFromXPCMessage(v3);
  v6 = [v5 routingContextID];

  if (!v6)
  {
    __52__MRNowPlayingSessionServiceClient_initWithService___block_invoke_cold_1(a1);
  }

  v7 = *(a1 + 32);
  v8 = [v4 origin];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__MRNowPlayingSessionServiceClient_initWithService___block_invoke_2;
  v10[3] = &unk_1E76A4BD8;
  v11 = v3;
  v9 = v3;
  [v7 _handleCreatePlayerForOrigin:v8 deviceInfo:v5 completion:v10];
}

void __52__MRNowPlayingSessionServiceClient_initWithService___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v8 = reply;
    if (reply)
    {
      MRAddPlayerPathToXPCMessage(reply, v9);
      MRAddClientErrorToXPCMessage(v8, v5);
      xpc_connection_send_message(v6, v8);
    }
  }
}

void __52__MRNowPlayingSessionServiceClient_initWithService___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MRCreateOriginFromXPCMessage(a2);
  [*(a1 + 32) _handleDestroyPlayersForOrigin:v3];
}

- (void)mediaServicesResetNotification:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 destroyPlayerCallback];

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_playerPathsByOrigin copy];
  objc_sync_exit(v7);

  if ([v8 count])
  {
    v9 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingSessionServiceClient] Destroying all players %@", buf, 0xCu);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__MRNowPlayingSessionServiceClient_mediaServicesResetNotification___block_invoke;
  v13[3] = &unk_1E76A4C50;
  v10 = v6;
  v14 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
  v11 = v7;
  objc_sync_enter(v11);
  [(NSMutableDictionary *)v7->_playerPathsByOrigin removeAllObjects];
  objc_sync_exit(v11);

  v12 = *MEMORY[0x1E69E9840];
}

void __67__MRNowPlayingSessionServiceClient_mediaServicesResetNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a3);
  }

  v6 = +[MRNowPlayingOriginClientManager sharedManager];
  [v6 removeOrigin:v7];
}

- (void)_handleDestroyPlayersForOrigin:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 destroyPlayerCallback];

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_playerPathsByOrigin objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)v7->_playerPathsByOrigin setObject:0 forKeyedSubscript:v4];
  objc_sync_exit(v7);

  if (v8 && v6)
  {
    (v6)[2](v6, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  v9 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingSessionServiceClient] Destroying player %@ created for origin: %@", &v12, 0x16u);
  }

  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  [v10 removeOrigin:v4];

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleCreatePlayerForOrigin:(id)a3 deviceInfo:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MRNowPlayingSessionServiceClient *)self _existingPlayerPathForOrigin:v9];
  if (!v12)
  {
    v14 = +[MRNowPlayingOriginClientManager sharedManager];
    v15 = [v14 createNewPlayerCallback];

    if (v15)
    {
      v16 = [v10 routingContextID];

      if (!v16)
      {
        [MRNowPlayingSessionServiceClient _handleCreatePlayerForOrigin:a2 deviceInfo:self completion:?];
      }

      v17 = +[MRNowPlayingOriginClientManager sharedManager];
      v18 = [v10 routingContextID];
      v19 = [v17 createCustomOriginClientForOrigin:v9 routingContextID:v18];

      v12 = [(MRNowPlayingSessionServiceClient *)self _generatePlayerPathForOrigin:v9];
      v20 = +[MRNowPlayingOriginClientManager sharedManager];
      v21 = [v20 playerClientForPlayerPath:v12];

      v22 = [v10 routingContextID];
      (v15)[2](v15, v12, v22);
    }

    else
    {
      if (![v9 isLocal])
      {
        v27 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingSessionServiceClient] Not creating new player for origin because createNewPlayerCallback was not registered", &v28, 2u);
        }

        v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:14];
        v12 = 0;
        goto LABEL_12;
      }

      v23 = [MRPlayerPath alloc];
      v19 = +[MRClient localClient];
      v12 = [(MRPlayerPath *)v23 initWithOrigin:v9 client:v19 player:0];
    }

    v24 = 0;
LABEL_12:
    v25 = self;
    objc_sync_enter(v25);
    [(NSMutableDictionary *)v25->_playerPathsByOrigin setObject:v12 forKeyedSubscript:v9];
    objc_sync_exit(v25);

    v11[2](v11, v12, v24);
    goto LABEL_13;
  }

  v13 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingSessionServiceClient] Not creating new player for origin because playerPath already exists: %@", &v28, 0xCu);
  }

  v11[2](v11, v12, 0);
LABEL_13:

  v26 = *MEMORY[0x1E69E9840];
}

- (id)_existingPlayerPathForOrigin:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_playerPathsByOrigin objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)_generatePlayerPathForOrigin:(id)a3
{
  v4 = a3;
  v5 = [(MRNowPlayingSessionServiceClient *)self _generatePlayerID];
  v6 = [MRPlayerPath alloc];
  v7 = +[MRClient localClient];
  v8 = [[MRPlayer alloc] initWithIdentifier:v5 displayName:v5];
  v9 = [(MRPlayerPath *)v6 initWithOrigin:v4 client:v7 player:v8];

  return v9;
}

- (id)_generatePlayerID
{
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v3 = [v2 generatePlayerIDCallback];

  if (!v3 || (v3[2](v3), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v5 UUIDString];
  }

  return v4;
}

- (void)initWithService:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingSessionServiceClient.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"AVAudioSessionMediaServicesWereLostNotification"}];
}

void __52__MRNowPlayingSessionServiceClient_initWithService___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MRNowPlayingSessionServiceClient.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"deviceInfo.routingContextID"}];
}

- (void)_handleCreatePlayerForOrigin:(uint64_t)a1 deviceInfo:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingSessionServiceClient.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"deviceInfo.routingContextID"}];
}

@end