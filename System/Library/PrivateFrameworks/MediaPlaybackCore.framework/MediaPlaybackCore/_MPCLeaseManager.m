@interface _MPCLeaseManager
- (MPCPlaybackEngine)playbackEngine;
- (NSString)playbackEngineID;
- (_MPCLeaseManager)initWithPlaybackEngine:(id)a3;
- (id)_storeRequestContextForAccount:(id)a3;
- (void)_updateStateForPlaybackPrevention;
- (void)didMigratePlaybackSession;
- (void)endIgnoringLeaseEndEventsForReason:(id)a3;
- (void)engine:(id)a3 willChangeToItem:(id)a4 fromItem:(id)a5;
- (void)getHasPreparedLeaseForAccount:(id)a3 completion:(id)a4;
- (void)prepareForPlaybackWithAccount:(id)a3 completion:(id)a4;
- (void)setCanStealLeaseIfNeeded;
@end

@implementation _MPCLeaseManager

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (NSString)playbackEngineID
{
  v2 = [(_MPCLeaseManager *)self playbackEngine];
  v3 = [v2 engineID];

  return v3;
}

- (void)_updateStateForPlaybackPrevention
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(_MPCLeaseManager *)self playbackEngine];
  v4 = [v3 player];

  v5 = [v4 state];
  v6 = [v4 currentItem];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    v19 = 1024;
    v20 = [v6 shouldPreventPlayback];
    v21 = 2048;
    v22 = v5;
    v23 = 1024;
    v24 = v5 > 1;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - State for lease playback prevention [evaluation] - item:%{public}@ - shouldPreventPlayback:%{BOOL}u - playbackState:%ld - isPlaying:%{BOOL}u", buf, 0x2Cu);
  }

  if (v5 >= 2 && [v6 shouldPreventPlayback])
  {
    if ([(NSMutableSet *)self->_leaseEndIgnoreReasons count])
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(NSMutableSet *)self->_leaseEndIgnoreReasons allObjects];
        v10 = [v9 componentsJoinedByString:{@", "}];
        *buf = 134218242;
        v16 = self;
        v17 = 2114;
        v18 = v10;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Ignoring lease playback prevention [pending reasons %{public}@]", buf, 0x16u);
      }
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53___MPCLeaseManager__updateStateForPlaybackPrevention__block_invoke;
      block[3] = &unk_1E82391C0;
      v12 = v6;
      v13 = self;
      v14 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v8 = v12;
    }
  }
}

- (id)_storeRequestContextForAccount:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MPCNetworkRequestMonitoredTag alloc];
  v12 = @"network-request-initiator";
  v13[0] = @"_MPCLeaseManager";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [(MPCNetworkRequestMonitoredTag *)v5 initWithContextInfo:v6 engineInfoProvider:self];

  v8 = [v4 userIdentity];

  v9 = [MPCPlaybackRequestEnvironment requestEnvironmentWithUserIdentity:v8];
  v10 = [v9 _createStoreRequestContextWithTag:v7];

  return v10;
}

- (void)engine:(id)a3 willChangeToItem:(id)a4 fromItem:(id)a5
{
  v7 = MEMORY[0x1E696AD88];
  v8 = a5;
  v9 = a4;
  v11 = [v7 defaultCenter];
  v10 = *MEMORY[0x1E696F808];
  [v11 removeObserver:self name:*MEMORY[0x1E696F808] object:v8];

  [v11 addObserver:self selector:sel__itemShouldPreventPlaybackDidChangeNotification_ name:v10 object:v9];
}

- (void)didMigratePlaybackSession
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Did migrate playback session", &v5, 0xCu);
  }

  v4 = [MEMORY[0x1E69E44A0] sharedController];
  if (objc_opt_respondsToSelector())
  {
    [v4 didMigratePlaybackSession];
  }
}

- (void)setCanStealLeaseIfNeeded
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Can steal lease if needed", &v5, 0xCu);
  }

  v4 = [MEMORY[0x1E69E44A0] sharedController];
  [v4 receivedUserInteractionEvent];
}

- (void)endIgnoringLeaseEndEventsForReason:(id)a3
{
  [(NSMutableSet *)self->_leaseEndIgnoreReasons removeObject:a3];
  if (![(NSMutableSet *)self->_leaseEndIgnoreReasons count])
  {

    [(_MPCLeaseManager *)self _updateStateForPlaybackPrevention];
  }
}

- (void)prepareForPlaybackWithAccount:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [v6 hasCatalogPlaybackCapability];
  v9 = [v6 usesLease];
  v10 = v9;
  if (v8 && (v9 & 1) != 0)
  {
    prepareCompletions = self->_prepareCompletions;
    v12 = [v6 hashedDSID];
    v13 = [(NSMutableDictionary *)prepareCompletions objectForKeyedSubscript:v12];

    if (v13)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke;
      aBlock[3] = &unk_1E8236400;
      v36 = v13;
      v37 = v7;
      v14 = _Block_copy(aBlock);
      v15 = self->_prepareCompletions;
      v16 = [v6 hashedDSID];
      [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

      v17 = v36;
    }

    else
    {
      v19 = _Block_copy(v7);
      v20 = self->_prepareCompletions;
      v21 = [v6 hashedDSID];
      [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];

      v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v39 = self;
        v40 = 2112;
        v41 = v6;
        _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: preparing lease account: %@", buf, 0x16u);
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_5;
      v33[3] = &unk_1E8238628;
      v33[4] = self;
      v23 = v6;
      v34 = v23;
      v24 = _Block_copy(v33);
      v25 = [(_MPCLeaseManager *)self _storeRequestContextForAccount:v23];
      v26 = [MEMORY[0x1E69E44A0] sharedController];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_3;
      v29[3] = &unk_1E82364A0;
      v29[4] = self;
      v32 = v24;
      v30 = v23;
      v31 = v25;
      v27 = v25;
      v28 = v24;
      [v26 getLeaseSessionWithRequestContext:v27 completionHandler:v29];

      v17 = v34;
    }
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v39 = self;
      v40 = 2112;
      v41 = v6;
      v42 = 1024;
      v43 = v8;
      v44 = 1024;
      v45 = v10;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: Ignoring request to prepare lease for account: %@ hasCatalogPlayback=%{BOOL}u usesLease=%{BOOL}u", buf, 0x22u);
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)getHasPreparedLeaseForAccount:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(_MPCLeaseManager *)self _storeRequestContextForAccount:a3];
  v8 = [MEMORY[0x1E69E44A0] sharedController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___MPCLeaseManager_getHasPreparedLeaseForAccount_completion___block_invoke;
  v10[3] = &unk_1E82363D8;
  v11 = v6;
  v9 = v6;
  [v8 getLeaseSessionWithRequestContext:v7 completionHandler:v10];
}

- (_MPCLeaseManager)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _MPCLeaseManager;
  v5 = [(_MPCLeaseManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
    v7 = [MEMORY[0x1E695DF90] dictionary];
    prepareCompletions = v6->_prepareCompletions;
    v6->_prepareCompletions = v7;

    v9 = [MEMORY[0x1E695DFA8] set];
    leaseEndIgnoreReasons = v6->_leaseEndIgnoreReasons;
    v6->_leaseEndIgnoreReasons = v9;

    [v4 addEngineObserver:v6];
  }

  return v6;
}

@end