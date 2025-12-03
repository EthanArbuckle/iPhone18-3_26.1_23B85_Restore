@interface _MPCLeaseManager
- (MPCPlaybackEngine)playbackEngine;
- (NSString)playbackEngineID;
- (_MPCLeaseManager)initWithPlaybackEngine:(id)engine;
- (id)_storeRequestContextForAccount:(id)account;
- (void)_updateStateForPlaybackPrevention;
- (void)didMigratePlaybackSession;
- (void)endIgnoringLeaseEndEventsForReason:(id)reason;
- (void)engine:(id)engine willChangeToItem:(id)item fromItem:(id)fromItem;
- (void)getHasPreparedLeaseForAccount:(id)account completion:(id)completion;
- (void)prepareForPlaybackWithAccount:(id)account completion:(id)completion;
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
  playbackEngine = [(_MPCLeaseManager *)self playbackEngine];
  engineID = [playbackEngine engineID];

  return engineID;
}

- (void)_updateStateForPlaybackPrevention
{
  v25 = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCLeaseManager *)self playbackEngine];
  player = [playbackEngine player];

  state = [player state];
  currentItem = [player currentItem];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    selfCopy2 = self;
    v17 = 2114;
    v18 = currentItem;
    v19 = 1024;
    shouldPreventPlayback = [currentItem shouldPreventPlayback];
    v21 = 2048;
    v22 = state;
    v23 = 1024;
    v24 = state > 1;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - State for lease playback prevention [evaluation] - item:%{public}@ - shouldPreventPlayback:%{BOOL}u - playbackState:%ld - isPlaying:%{BOOL}u", buf, 0x2Cu);
  }

  if (state >= 2 && [currentItem shouldPreventPlayback])
  {
    if ([(NSMutableSet *)self->_leaseEndIgnoreReasons count])
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        allObjects = [(NSMutableSet *)self->_leaseEndIgnoreReasons allObjects];
        v10 = [allObjects componentsJoinedByString:{@", "}];
        *buf = 134218242;
        selfCopy2 = self;
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
      v12 = currentItem;
      selfCopy3 = self;
      v14 = player;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v8 = v12;
    }
  }
}

- (id)_storeRequestContextForAccount:(id)account
{
  v13[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = [MPCNetworkRequestMonitoredTag alloc];
  v12 = @"network-request-initiator";
  v13[0] = @"_MPCLeaseManager";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [(MPCNetworkRequestMonitoredTag *)v5 initWithContextInfo:v6 engineInfoProvider:self];

  userIdentity = [accountCopy userIdentity];

  v9 = [MPCPlaybackRequestEnvironment requestEnvironmentWithUserIdentity:userIdentity];
  v10 = [v9 _createStoreRequestContextWithTag:v7];

  return v10;
}

- (void)engine:(id)engine willChangeToItem:(id)item fromItem:(id)fromItem
{
  v7 = MEMORY[0x1E696AD88];
  fromItemCopy = fromItem;
  itemCopy = item;
  defaultCenter = [v7 defaultCenter];
  v10 = *MEMORY[0x1E696F808];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696F808] object:fromItemCopy];

  [defaultCenter addObserver:self selector:sel__itemShouldPreventPlaybackDidChangeNotification_ name:v10 object:itemCopy];
}

- (void)didMigratePlaybackSession
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Did migrate playback session", &v5, 0xCu);
  }

  mEMORY[0x1E69E44A0] = [MEMORY[0x1E69E44A0] sharedController];
  if (objc_opt_respondsToSelector())
  {
    [mEMORY[0x1E69E44A0] didMigratePlaybackSession];
  }
}

- (void)setCanStealLeaseIfNeeded
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - Can steal lease if needed", &v5, 0xCu);
  }

  mEMORY[0x1E69E44A0] = [MEMORY[0x1E69E44A0] sharedController];
  [mEMORY[0x1E69E44A0] receivedUserInteractionEvent];
}

- (void)endIgnoringLeaseEndEventsForReason:(id)reason
{
  [(NSMutableSet *)self->_leaseEndIgnoreReasons removeObject:reason];
  if (![(NSMutableSet *)self->_leaseEndIgnoreReasons count])
  {

    [(_MPCLeaseManager *)self _updateStateForPlaybackPrevention];
  }
}

- (void)prepareForPlaybackWithAccount:(id)account completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  hasCatalogPlaybackCapability = [accountCopy hasCatalogPlaybackCapability];
  usesLease = [accountCopy usesLease];
  v10 = usesLease;
  if (hasCatalogPlaybackCapability && (usesLease & 1) != 0)
  {
    prepareCompletions = self->_prepareCompletions;
    hashedDSID = [accountCopy hashedDSID];
    v13 = [(NSMutableDictionary *)prepareCompletions objectForKeyedSubscript:hashedDSID];

    if (v13)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke;
      aBlock[3] = &unk_1E8236400;
      v36 = v13;
      v37 = completionCopy;
      v14 = _Block_copy(aBlock);
      v15 = self->_prepareCompletions;
      hashedDSID2 = [accountCopy hashedDSID];
      [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:hashedDSID2];

      v17 = v36;
    }

    else
    {
      v19 = _Block_copy(completionCopy);
      v20 = self->_prepareCompletions;
      hashedDSID3 = [accountCopy hashedDSID];
      [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:hashedDSID3];

      v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy2 = self;
        v40 = 2112;
        v41 = accountCopy;
        _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: preparing lease account: %@", buf, 0x16u);
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __61___MPCLeaseManager_prepareForPlaybackWithAccount_completion___block_invoke_5;
      v33[3] = &unk_1E8238628;
      v33[4] = self;
      v23 = accountCopy;
      v34 = v23;
      v24 = _Block_copy(v33);
      v25 = [(_MPCLeaseManager *)self _storeRequestContextForAccount:v23];
      mEMORY[0x1E69E44A0] = [MEMORY[0x1E69E44A0] sharedController];
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
      [mEMORY[0x1E69E44A0] getLeaseSessionWithRequestContext:v27 completionHandler:v29];

      v17 = v34;
    }
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy2 = self;
      v40 = 2112;
      v41 = accountCopy;
      v42 = 1024;
      v43 = hasCatalogPlaybackCapability;
      v44 = 1024;
      v45 = v10;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseManager: %p - prepareForPlayback: Ignoring request to prepare lease for account: %@ hasCatalogPlayback=%{BOOL}u usesLease=%{BOOL}u", buf, 0x22u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)getHasPreparedLeaseForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v7 = [(_MPCLeaseManager *)self _storeRequestContextForAccount:account];
  mEMORY[0x1E69E44A0] = [MEMORY[0x1E69E44A0] sharedController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___MPCLeaseManager_getHasPreparedLeaseForAccount_completion___block_invoke;
  v10[3] = &unk_1E82363D8;
  v11 = completionCopy;
  v9 = completionCopy;
  [mEMORY[0x1E69E44A0] getLeaseSessionWithRequestContext:v7 completionHandler:v10];
}

- (_MPCLeaseManager)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = _MPCLeaseManager;
  v5 = [(_MPCLeaseManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, engineCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    prepareCompletions = v6->_prepareCompletions;
    v6->_prepareCompletions = dictionary;

    v9 = [MEMORY[0x1E695DFA8] set];
    leaseEndIgnoreReasons = v6->_leaseEndIgnoreReasons;
    v6->_leaseEndIgnoreReasons = v9;

    [engineCopy addEngineObserver:v6];
  }

  return v6;
}

@end