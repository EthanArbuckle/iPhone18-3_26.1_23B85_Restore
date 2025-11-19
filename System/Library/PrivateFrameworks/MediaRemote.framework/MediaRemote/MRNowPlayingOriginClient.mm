@interface MRNowPlayingOriginClient
- (BOOL)overrideApp;
- (MRApplicationActivity)activity;
- (MRClient)activeNowPlayingClient;
- (MRNowPlayingOriginClient)initWithOrigin:(id)a3 routingContextID:(id)a4;
- (NSArray)applicationPickedRoutes;
- (NSArray)nowPlayingClients;
- (NSString)overrideAppBundleID;
- (float)volume;
- (id)beginLyricsEventCallback;
- (id)clientMessageCallback;
- (id)commandCallback;
- (id)debugDescription;
- (id)description;
- (id)endLyricsEventCallback;
- (id)existingNowPlayingClientForPlayerPath:(id)a3;
- (id)nowPlayingClientForPlayerPath:(id)a3;
- (id)playbackQueueCallback;
- (id)playbackSessionCallback;
- (id)playbackSessionMigrateBeginCallback;
- (id)playbackSessionMigrateEndCallback;
- (id)playbackSessionMigrateFinalizeCallback;
- (id)playbackSessionMigratePostCallback;
- (id)playbackSessionMigrateRequestCallback;
- (unsigned)inputMode;
- (unsigned)routeDiscoveryMode;
- (unsigned)volumeCapabilities;
- (void)_prepareToRestoreClientStateWithCompletion:(id)a3;
- (void)_restoreNowPlayingClientState;
- (void)dealloc;
- (void)removeAllClients;
- (void)removeClient:(id)a3;
- (void)restoreNowPlayingClientState;
- (void)setActiveNowPlayingClient:(id)a3;
- (void)setActivity:(id)a3;
- (void)setApplicationPickedRoutes:(id)a3;
- (void)setBeginLyricsEventCallback:(id)a3;
- (void)setClientMessageCallback:(id)a3;
- (void)setCommandCallback:(id)a3;
- (void)setEndLyricsEventCallback:(id)a3;
- (void)setOverrideAppBundleID:(id)a3;
- (void)setPlaybackQueueCallback:(id)a3;
- (void)setPlaybackSessionCallback:(id)a3;
- (void)setPlaybackSessionMigrateBeginCallback:(id)a3;
- (void)setPlaybackSessionMigrateEndCallback:(id)a3;
- (void)setPlaybackSessionMigrateFinalizeCallback:(id)a3;
- (void)setPlaybackSessionMigratePostCallback:(id)a3;
- (void)setPlaybackSessionMigrateRequestCallback:(id)a3;
@end

@implementation MRNowPlayingOriginClient

- (id)playbackQueueCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __49__MRNowPlayingOriginClient_playbackQueueCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 80));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MRNowPlayingOriginClient)initWithOrigin:(id)a3 routingContextID:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = MRNowPlayingOriginClient;
  v9 = [(MRNowPlayingOriginClient *)&v31 init];
  if (!v9)
  {
LABEL_14:
    v14 = v9;
    goto LABEL_15;
  }

  if (![v7 isHosted] || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "supportMultiplayerHost"), v10, v8) || !v11)
  {
    objc_storeStrong(&v9->_origin, a3);
    objc_storeStrong(&v9->_routingContextID, a4);
    v15 = objc_opt_class();
    Name = class_getName(v15);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(Name, v17);
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    nowPlayingClients = v9->_nowPlayingClients;
    v9->_nowPlayingClients = v20;

    v22 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *buf = 138412546;
      v33 = v23;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClient] Creating %@ for origin %@", buf, 0x16u);
    }

    v24 = +[MRUserSettings currentSettings];
    v25 = [v24 verboseOriginClientLogging];

    if (v25)
    {
      v26 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138412802;
        v33 = v27;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        v37 = v28;
        _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClient] Creating %@ for origin %@ at %@", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

  v12 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138412546;
    v33 = v13;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClient] Nil routingContext. Not creating %@ for origin %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_15:

  v29 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    origin = self->_origin;
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = origin;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClient] Destroying %@ for origin %@", buf, 0x16u);
  }

  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 verboseOriginClientLogging];

  if (v7)
  {
    v8 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_origin;
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClient] Destroying %@ for origin %@ at %@", buf, 0x20u);
    }
  }

  v12.receiver = self;
  v12.super_class = MRNowPlayingOriginClient;
  [(MRNowPlayingOriginClient *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

float __38__MRNowPlayingOriginClient_setVolume___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 52) = result;
  return result;
}

- (float)volume
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v3;
}

float __34__MRNowPlayingOriginClient_volume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 52);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unsigned)volumeCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (NSArray)nowPlayingClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __45__MRNowPlayingOriginClient_nowPlayingClients__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackQueueCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __53__MRNowPlayingOriginClient_setPlaybackQueueCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

- (id)commandCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __43__MRNowPlayingOriginClient_commandCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 96));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setCommandCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __47__MRNowPlayingOriginClient_setCommandCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
}

- (id)playbackSessionCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __51__MRNowPlayingOriginClient_playbackSessionCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 120));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __55__MRNowPlayingOriginClient_setPlaybackSessionCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
}

- (id)playbackSessionMigrateBeginCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __63__MRNowPlayingOriginClient_playbackSessionMigrateBeginCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 128));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigrateBeginCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __67__MRNowPlayingOriginClient_setPlaybackSessionMigrateBeginCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

- (id)playbackSessionMigrateEndCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __61__MRNowPlayingOriginClient_playbackSessionMigrateEndCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 136));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigrateEndCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __65__MRNowPlayingOriginClient_setPlaybackSessionMigrateEndCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
}

- (id)playbackSessionMigrateFinalizeCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __66__MRNowPlayingOriginClient_playbackSessionMigrateFinalizeCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 144));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigrateFinalizeCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __70__MRNowPlayingOriginClient_setPlaybackSessionMigrateFinalizeCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;
}

- (id)playbackSessionMigratePostCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __62__MRNowPlayingOriginClient_playbackSessionMigratePostCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 152));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigratePostCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __66__MRNowPlayingOriginClient_setPlaybackSessionMigratePostCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
}

- (id)playbackSessionMigrateRequestCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __65__MRNowPlayingOriginClient_playbackSessionMigrateRequestCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 160));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigrateRequestCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __69__MRNowPlayingOriginClient_setPlaybackSessionMigrateRequestCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;
}

- (id)beginLyricsEventCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __52__MRNowPlayingOriginClient_beginLyricsEventCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 104));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setBeginLyricsEventCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __56__MRNowPlayingOriginClient_setBeginLyricsEventCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
}

- (id)endLyricsEventCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __50__MRNowPlayingOriginClient_endLyricsEventCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 112));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setEndLyricsEventCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __54__MRNowPlayingOriginClient_setEndLyricsEventCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

- (id)clientMessageCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__52;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __49__MRNowPlayingOriginClient_clientMessageCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 168));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setClientMessageCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __53__MRNowPlayingOriginClient_setClientMessageCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  *(v3 + 168) = v2;
}

- (NSArray)applicationPickedRoutes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __51__MRNowPlayingOriginClient_applicationPickedRoutes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setApplicationPickedRoutes:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __55__MRNowPlayingOriginClient_setApplicationPickedRoutes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)overrideApp
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (NSString)overrideAppBundleID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __47__MRNowPlayingOriginClient_overrideAppBundleID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setOverrideAppBundleID:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __51__MRNowPlayingOriginClient_setOverrideAppBundleID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (unsigned)routeDiscoveryMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (unsigned)inputMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)setActiveNowPlayingClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MRNowPlayingOriginClient_setActiveNowPlayingClient___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (MRClient)activeNowPlayingClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__41;
  v10 = __Block_byref_object_dispose__41;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRNowPlayingOriginClient_activeNowPlayingClient__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__MRNowPlayingOriginClient_activeNowPlayingClient__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setActivity:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MRNowPlayingOriginClient_setActivity___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __40__MRNowPlayingOriginClient_setActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

- (MRApplicationActivity)activity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__41;
  v10 = __Block_byref_object_dispose__41;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__MRNowPlayingOriginClient_activity__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__MRNowPlayingOriginClient_activity__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)existingNowPlayingClientForPlayerPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__41;
  v16 = __Block_byref_object_dispose__41;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRNowPlayingOriginClient_existingNowPlayingClientForPlayerPath___block_invoke;
  block[3] = &unk_1E769D1B8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __66__MRNowPlayingOriginClient_existingNowPlayingClientForPlayerPath___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 176);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 client];
        v9 = [*(a1 + 40) client];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

- (id)nowPlayingClientForPlayerPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__41;
  v16 = __Block_byref_object_dispose__41;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MRNowPlayingOriginClient_nowPlayingClientForPlayerPath___block_invoke;
  block[3] = &unk_1E769D1B8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__MRNowPlayingOriginClient_nowPlayingClientForPlayerPath___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 176);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 client];
        v9 = [*(a1 + 40) client];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = [[MRNowPlayingClient alloc] initWithPlayerPath:*(a1 + 40)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(a1 + 32) + 176) addObject:*(*(*(a1 + 48) + 8) + 40)];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__MRNowPlayingOriginClient_removeClient___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __41__MRNowPlayingOriginClient_removeClient___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 176);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 client];
        v9 = [*(a1 + 40) client];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          [*(*(a1 + 32) + 176) removeObject:v7];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllClients
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MRNowPlayingOriginClient_removeAllClients__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)restoreNowPlayingClientState
{
  if ([(MROrigin *)self->_origin isHosted])
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__MRNowPlayingOriginClient_restoreNowPlayingClientState__block_invoke;
    v3[3] = &unk_1E769D2F8;
    objc_copyWeak(&v4, &location);
    [(MRNowPlayingOriginClient *)self _prepareToRestoreClientStateWithCompletion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }

  else
  {

    [(MRNowPlayingOriginClient *)self _restoreNowPlayingClientState];
  }
}

void __56__MRNowPlayingOriginClient_restoreNowPlayingClientState__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _restoreNowPlayingClientState];
  }
}

- (void)_prepareToRestoreClientStateWithCompletion:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_origin;
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];

  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"restoreClientState<%@>", v7];
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [(MROrigin *)self->_origin displayName];
  v12 = [v10 initWithFormat:@"origin=%@ routingContext=%@", v11, self->_routingContextID];

  v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"restoreClientState", v7];
  v14 = v13;
  if (v12)
  {
    [v13 appendFormat:@" for %@", v12];
  }

  v15 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v14;
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke;
  v35[3] = &unk_1E76A2780;
  v40 = v4;
  v36 = v12;
  v37 = @"restoreClientState";
  v16 = v7;
  v38 = v16;
  v39 = v8;
  v28 = v8;
  v17 = v12;
  v29 = v4;
  v18 = MEMORY[0x1A58E3570](v35);
  v19 = [[MRRequestDetails alloc] initWithInitiator:@"StateRestoration" requestID:v16 reason:@"restoreClientState"];
  v20 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  routingContextID = self->_routingContextID;
  serialQueue = self->_serialQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke_79;
  v30[3] = &unk_1E76A36F0;
  v31 = v9;
  v32 = v16;
  v33 = v5;
  v34 = v18;
  v23 = v5;
  v24 = v16;
  v25 = v9;
  v26 = v18;
  [(MRAVLightweightReconnaissanceSession *)v20 searchEndpointsForRoutingContextUID:routingContextID timeout:v19 details:serialQueue queue:v30 completion:20.0];

  v27 = *MEMORY[0x1E69E9840];
}

void __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  (*(a1[8] + 16))();
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_15;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      v26 = 138544130;
      v27 = v15;
      v28 = 2114;
      v29 = v14;
      v30 = 2114;
      v31 = v16;
      v32 = 2048;
      v33 = v18;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v20 = v6;
      v21 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_15;
      }

      v22 = a1[5];
      v23 = a1[6];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      v26 = 138543874;
      v27 = v22;
      v28 = 2114;
      v29 = v23;
      v30 = 2048;
      v31 = v24;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v6;
      v21 = 32;
    }

    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, v19, &v26, v21);

    goto LABEL_15;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v7)
    {
      v9 = a1[5];
      v8 = a1[6];
      v10 = a1[4];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      v26 = 138544386;
      v27 = v9;
      v28 = 2114;
      v29 = v8;
      v30 = 2114;
      v31 = v3;
      v32 = 2114;
      v33 = v10;
      v34 = 2048;
      v35 = v12;
      _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v26, 0x34u);
    }
  }

  else if (v7)
  {
    __MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer_block_invoke_2_cold_1(a1);
  }

  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke_cold_2(a1, v3, v6);
  }

LABEL_15:

  v25 = *MEMORY[0x1E69E9840];
}

void __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke_79(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:*(a1 + 32) forKeyedSubscript:@"MREndpointConnectionReasonUserInfoKey"];
    [v4 setObject:*(a1 + 40) forKeyedSubscript:@"MREndpointConnectionCorrelationIDUserInfoKey"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke_2;
    v5[3] = &unk_1E769B038;
    v8 = *(a1 + 56);
    v6 = v3;
    v7 = *(a1 + 48);
    [v6 connectToExternalDeviceWithUserInfo:v4 completion:v5];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) origin];
    v7 = v5;
    if (v5)
    {
      if (([v5 isEqual:*(a1 + 40)] & 1) == 0)
      {
        __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke_2_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:117];
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_restoreNowPlayingClientState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MRNowPlayingOriginClient__restoreNowPlayingClientState__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __57__MRNowPlayingOriginClient__restoreNowPlayingClientState__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [[MRPlayerPath alloc] initWithOrigin:*(*(a1 + 32) + 200) client:0 player:0];
  v3 = *(a1 + 32);
  if (*(v3 + 16) == 1)
  {
    v4 = MRGetSharedService();
    MRMediaRemoteServiceSetNowPlayingAppOverride(v4, 1);
    v3 = *(a1 + 32);
  }

  if (*(v3 + 24))
  {
    v5 = MRGetSharedService();
    MRMediaRemoteServiceSetOverriddenNowPlayingApplication(v5, *(*(a1 + 32) + 24));
    v3 = *(a1 + 32);
  }

  if (*(v3 + 32))
  {
    v6 = MRGetSharedService();
    MRMediaRemoteServiceSetRouteDiscoveryMode(v6, *(*(a1 + 32) + 32));
    v3 = *(a1 + 32);
  }

  if (*(v3 + 48))
  {
    v7 = MRGetSharedService();
    MRMediaRemoteServiceSetGameControllerRemoteInputMode(v7, *(*(a1 + 32) + 48), 0, 0);
    v3 = *(a1 + 32);
  }

  if (*(v3 + 56))
  {
    v8 = MRGetSharedService();
    MRMediaRemoteServiceSetPickedRouteVolumeControlCapabilities(v8, v2, *(*(a1 + 32) + 56), 0, 0);
    v3 = *(a1 + 32);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(v3 + 176);
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v19 + 1) + 8 * v13++) restoreNowPlayingClientState];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = *(a1 + 32);
  if (*(v14 + 192))
  {
    v15 = [[MRPlayerPath alloc] initWithOrigin:*(*(a1 + 32) + 200) client:*(*(a1 + 32) + 192) player:0];
    v16 = MRGetSharedService();
    MRMediaRemoteServiceSetNowPlayingClient(v16, v15, 0, 0);

    v14 = *(a1 + 32);
  }

  if (*(v14 + 64))
  {
    v17 = MRGetSharedService();
    MRMediaRemoteServiceBeginActivity(v17, *(*(a1 + 32) + 64), 0, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __39__MRNowPlayingOriginClient_description__block_invoke(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = MRNowPlayingOriginClient;
  v2 = objc_msgSendSuper2(&v6, sel_description);
  v3 = [v2 stringByAppendingFormat:@"Origin: %@ Clients: %@", *(*(a1 + 32) + 200), *(*(a1 + 32) + 176)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __44__MRNowPlayingOriginClient_debugDescription__block_invoke(uint64_t a1)
{
  v20 = MEMORY[0x1E696AEC0];
  v21 = *(a1 + 32);
  v25 = MRCreateIndentedDebugDescriptionFromObject(v21[25]);
  v2 = *(a1 + 32);
  v19 = *(v2 + 72);
  v3 = @"NO";
  if (*(v2 + 16))
  {
    v3 = @"YES";
  }

  v18 = v3;
  v24 = MRMediaRemoteCopyRouteDiscoveryModeDescription(*(v2 + 32));
  v23 = MRCreateIndentedDebugDescriptionFromArray(*(*(a1 + 32) + 40));
  Description = MRGameControllerInputModeCreateDescription(*(*(a1 + 32) + 48));
  v4 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(*(a1 + 32) + 56));
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 80));
  v6 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 88));
  v7 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 96));
  v8 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 104));
  v9 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 112));
  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  v12 = MRCreateIndentedDebugDescriptionFromObject(*(v10 + 192));
  v13 = MRCreateIndentedDebugDescriptionFromArray(*(*(a1 + 32) + 176));
  v14 = [v20 stringWithFormat:@"    origin = %@\n    routingContextID = %@\n    isOverrideApp = %@\n    routeDiscoveryMode = %@\n    applicationPickedRoutes = %@\n    inputMode = %@\n    volumeCapabilities = %@\n    playbackQueueCallback = %@\n    capabilitiesCallback = %@\n    commandCallback = %@\n    beginLyricsEventCallback = %@\n    endLyricsEventCallback = %@\n    activity = %@\n    activeNowPlayingClient = %@\n    nowPlayingClients = %@\n", v25, v19, v18, v24, v23, Description, v4, v5, v6, v7, v8, v9, v11, v12, v13];
  v15 = MRCreateFormattedDebugDescriptionFromClass(v21, v14);
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_1A2860000, log, OS_LOG_TYPE_FAULT, "Error trying to restoreClientState<%@> %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __71__MRNowPlayingOriginClient__prepareToRestoreClientStateWithCompletion___block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingOriginClient _prepareToRestoreClientStateWithCompletion:]_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"MRNowPlayingOriginClient.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"[endpointOrigin isEqual:origin]"}];
}

@end