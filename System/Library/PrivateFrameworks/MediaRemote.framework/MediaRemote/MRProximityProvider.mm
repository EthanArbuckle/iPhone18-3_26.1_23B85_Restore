@interface MRProximityProvider
+ (void)_migrate:(id)a3 destinationEndpoint:(id)a4 destinationUID:(id)a5 outputDevice:(id)a6 label:(id)a7 completion:(id)a8;
- (MRProximityProvider)init;
- (NSString)description;
- (OS_dispatch_queue)dispatchQueue;
- (id)_deviceForUID:(id)a3;
- (id)_displayContextForDevice:(id)a3 withRemotePlayerState:(id)a4 proactivePlayerState:(id)a5 migrationBehavior:(id)a6;
- (id)_displayStringForContentItem:(id)a3;
- (id)_effectivePlayerStateForDevice:(id)a3;
- (id)_nameForDevice:(id)a3 inEndpoint:(id)a4;
- (id)_outputDeviceWithUID:(id)a3 fromSource:(id)a4 andDestination:(id)a5;
- (id)_persistArtworkData:(id)a3 forDevice:(id)a4;
- (id)contentToDisplayForDevice:(id)a3;
- (id)dictionaryRepresentation;
- (id)endpointForDevice:(id)a3;
- (int64_t)migrationActionForProactivePlayer:(id)a3 proactiveEndpoint:(id)a4 remotePlayer:(id)a5 remoteEndpoint:(id)a6 reason:(id *)a7;
- (void)_addDeviceIfNeeded:(id)a3;
- (void)_beginProvidingDisplayContextIfNeeded:(id)a3;
- (void)_endProvidingDisplayContextIfNeeded:(id)a3;
- (void)_migrateForDevice:(id)a3 completion:(id)a4;
- (void)_migrationBehaviorForRemoteDevice:(id)a3 completion:(id)a4;
- (void)_migrationBehaviorForRemoteDevice:(id)a3 proactiveDevice:(id)a4 completion:(id)a5;
- (void)_provideDisplayContextForDevice:(id)a3;
- (void)_recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice:(id)a3;
- (void)_removeDeviceIfNeeded:(id)a3;
- (void)device:(id)a3 stateDidChange:(unint64_t)a4;
- (void)handleGroupSessionNotification:(id)a3;
- (void)receiveEvent:(id)a3;
@end

@implementation MRProximityProvider

- (OS_dispatch_queue)dispatchQueue
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    v3 = dispatchQueue;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  return v3;
}

- (MRProximityProvider)init
{
  v11.receiver = self;
  v11.super_class = MRProximityProvider;
  v2 = [(MRProximityProvider *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    remoteDevices = v2->_remoteDevices;
    v2->_remoteDevices = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    providingDevices = v2->_providingDevices;
    v2->_providingDevices = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    behaviorResults = v2->_behaviorResults;
    v2->_behaviorResults = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel_handleGroupSessionNotification_ name:@"MRActiveGroupSessionInfoDidChangeNotification" object:0];
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MRProximityProvider *)v2 proactiveDevice];
  [v3 setObject:v4 forKeyedSubscript:@"proactiveDevice"];

  v5 = [(MRProximityProvider *)v2 remoteDevices];
  [v3 setObject:v5 forKeyedSubscript:@"remoteDevices"];

  v6 = [(MRProximityProvider *)v2 behaviorResults];
  [v3 setObject:v6 forKeyedSubscript:@"behaviorResults"];

  v7 = [(MRProximityProvider *)v2 providingDevices];
  [v3 setObject:v7 forKeyedSubscript:@"providingDevices"];

  v8 = [(MRProximityProvider *)v2 migratingDevice];
  [v3 setObject:v8 forKeyedSubscript:@"migratingDevice"];

  objc_sync_exit(v2);

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRProximityProvider *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (void)handleGroupSessionNotification:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MRProximityProvider *)v4 proactiveDevice];
  objc_sync_exit(v4);

  if (v5)
  {
    [(MRProximityProvider *)v4 _recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice:v5];
  }
}

- (void)receiveEvent:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mediaRemoteID];
  v6 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(MRProximityProvider *)v4 receiveEvent:v6];
  }

  v7 = [v4 eventType];
  if (v7 <= 8)
  {
    if (((1 << v7) & 0x105) != 0)
    {
      [(MRProximityProvider *)self _removeDeviceIfNeeded:v5];
    }

    else if (((1 << v7) & 0x18) != 0)
    {
      [(MRProximityProvider *)self _addDeviceIfNeeded:v5];
    }

    else if (v7 == 1)
    {
      v8 = [(MRProximityProvider *)self progressEventHandler];

      if (v8)
      {
        v9 = [(MRProximityProvider *)self dispatchQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __36__MRProximityProvider_receiveEvent___block_invoke;
        block[3] = &unk_1E769A4A0;
        v20 = v5;
        v21 = self;
        dispatch_async(v9, block);
      }

      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];

      v12 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v23 = v11;
        v24 = 2114;
        v25 = v5;
        _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] migrateForDevice<%{public}@> beginning for device %{public}@", buf, 0x16u);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __36__MRProximityProvider_receiveEvent___block_invoke_111;
      v15[3] = &unk_1E769B9B0;
      v16 = v11;
      v17 = v5;
      v18 = self;
      v13 = v11;
      [(MRProximityProvider *)self _migrateForDevice:v17 completion:v15];
    }
  }

  if ([v4 expectsDisplayContext])
  {
    [(MRProximityProvider *)self _beginProvidingDisplayContextIfNeeded:v5];
  }

  else
  {
    [(MRProximityProvider *)self _endProvidingDisplayContextIfNeeded:v5];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __36__MRProximityProvider_receiveEvent___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(getPCProgressEventClass()) initWithEventType:1];
  [v3 setMediaRemoteID:*(a1 + 32)];
  v2 = [*(a1 + 40) progressEventHandler];
  (v2)[2](v2, v3);
}

void __36__MRProximityProvider_receiveEvent___block_invoke_111(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543874;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] migrateForDevice<%{public}@> completed for device %{public}@ with error: %{public}@", buf, 0x20u);
  }

  v7 = [*(a1 + 48) progressEventHandler];

  if (v7)
  {
    v8 = [*(a1 + 48) dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__MRProximityProvider_receiveEvent___block_invoke_112;
    block[3] = &unk_1E769BA00;
    v13 = v3;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14 = v9;
    v15 = v10;
    dispatch_async(v8, block);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __36__MRProximityProvider_receiveEvent___block_invoke_112(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc(getPCProgressEventClass());
  if (v2)
  {
    v4 = [v3 initWithError:*(a1 + 32)];
  }

  else
  {
    v4 = [v3 initWithEventType:2];
  }

  v6 = v4;
  [v4 setMediaRemoteID:*(a1 + 40)];
  v5 = [*(a1 + 48) progressEventHandler];
  (v5)[2](v5, v6);
}

- (void)device:(id)a3 stateDidChange:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 3)
  {
    v7 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 uid];
      v9 = [v6 prepareError];
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Device %{public}@ prepare failed with error %@.", buf, 0x16u);
    }

    v10 = objc_alloc_init(getPCMediaRemoteDisplayContextClass());
    [v10 setInteractionDirection:0];
    v11 = [v6 uid];
    [v10 setMediaRemoteID:v11];

    v12 = [(MRProximityProvider *)self dispatchQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__MRProximityProvider_device_stateDidChange___block_invoke;
    v15[3] = &unk_1E769A4A0;
    v15[4] = self;
    v16 = v10;
    v13 = v10;
    dispatch_async(v12, v15);
  }

  else if (a4 == 2)
  {
    [(MRProximityProvider *)self _recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice:v6];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __45__MRProximityProvider_device_stateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayContextHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)_addDeviceIfNeeded:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MRProximityProvider *)v5 remoteDevices];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v8 = [(MRProximityProvider *)v5 proactiveDevice];

    if (!v8)
    {
      v9 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Initializing proactive device.", &v17, 2u);
      }

      v10 = +[MRMigrationDevice proactiveDevice];
      [(MRProximityProvider *)v5 setProactiveDevice:v10];

      v11 = [(MRProximityProvider *)v5 proactiveDevice];
      [v11 setDelegate:v5];

      v12 = [(MRProximityProvider *)v5 proactiveDevice];
      [v12 prepare];
    }

    v13 = [[MRMigrationDevice alloc] initWithUID:v4];
    [(MRMigrationDevice *)v13 setDelegate:v5];
    [(MRMigrationDevice *)v13 prepare];
    v14 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v4;
      _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Adding device %{public}@.", &v17, 0xCu);
    }

    v15 = [(MRProximityProvider *)v5 remoteDevices];
    [v15 setObject:v13 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removeDeviceIfNeeded:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(MRProximityProvider *)v5 _endProvidingDisplayContextIfNeeded:v4];
  v6 = [(MRProximityProvider *)v5 behaviorResults];
  [v6 setObject:0 forKeyedSubscript:v4];

  v7 = [(MRProximityProvider *)v5 remoteDevices];
  v8 = [v7 objectForKeyedSubscript:v4];

  if (v8)
  {
    v9 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MRProximityProvider *)v5 remoteDevices];
      v11 = [v10 objectForKeyedSubscript:v4];
      v12 = [v11 uid];
      v13 = [(MRProximityProvider *)v5 remoteDevices];
      v14 = [v13 objectForKeyedSubscript:v4];
      v15 = [v14 endpoint];
      v16 = [(MRProximityProvider *)v5 _nameForDevice:v12 inEndpoint:v15];
      v22 = 138543618;
      v23 = v4;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Removing device %{public}@ (%@).", &v22, 0x16u);
    }

    v17 = [(MRProximityProvider *)v5 remoteDevices];
    [v17 setObject:0 forKeyedSubscript:v4];

    v18 = [(MRProximityProvider *)v5 remoteDevices];
    v19 = [v18 count] == 0;

    if (v19)
    {
      v20 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Clearing proactive device.", &v22, 2u);
      }

      [(MRProximityProvider *)v5 setProactiveDevice:0];
    }
  }

  objc_sync_exit(v5);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_beginProvidingDisplayContextIfNeeded:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MRProximityProvider *)v5 _deviceForUID:v4];
  if (v6)
  {
    v7 = [(MRProximityProvider *)v5 providingDevices];
    v8 = [v7 containsObject:v4];

    if ((v8 & 1) == 0)
    {
      v9 = [(MRProximityProvider *)v5 providingDevices];
      [v9 addObject:v4];

      v10 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v6 uid];
        v17 = [v6 endpoint];
        v18 = [(MRProximityProvider *)v5 _nameForDevice:v16 inEndpoint:v17];
        v22 = 138543618;
        v23 = v4;
        v24 = 2112;
        v25 = v18;
        _os_log_debug_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEBUG, "[ProximityProvider] Begin providing for device %{public}@ (%@).", &v22, 0x16u);
      }
    }

    if ([v6 deviceState] == 2)
    {
      v11 = [(MRProximityProvider *)v5 behaviorResults];
      v12 = [v6 uid];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (v13)
      {
        v14 = [v6 uid];
        [(MRProximityProvider *)v5 _provideDisplayContextForDevice:v14];
      }

      else
      {
        v14 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v6 uid];
          v20 = [v6 endpoint];
          v21 = [(MRProximityProvider *)v5 _nameForDevice:v19 inEndpoint:v20];
          v22 = 138543618;
          v23 = v4;
          v24 = 2112;
          v25 = v21;
          _os_log_debug_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEBUG, "[ProximityProvider] Cannot provide because no result has been calculated yet for device %{public}@ (%@).", &v22, 0x16u);
        }
      }
    }

    else
    {
      v13 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(MRProximityProvider *)v4 _beginProvidingDisplayContextIfNeeded:v13];
      }
    }
  }

  objc_sync_exit(v5);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_endProvidingDisplayContextIfNeeded:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MRProximityProvider *)v5 providingDevices];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = [(MRProximityProvider *)v5 _deviceForUID:v4];
    v9 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v8 uid];
      v13 = [v8 endpoint];
      v14 = [(MRProximityProvider *)v5 _nameForDevice:v12 inEndpoint:v13];
      v15 = 138543618;
      v16 = v4;
      v17 = 2112;
      v18 = v14;
      _os_log_debug_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEBUG, "[ProximityProvider] End providing for device %{public}@ (%@).", &v15, 0x16u);
    }

    v10 = [(MRProximityProvider *)v5 providingDevices];
    [v10 removeObject:v4];
  }

  objc_sync_exit(v5);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_provideDisplayContextForDevice:(id)a3
{
  v4 = a3;
  v5 = [(MRProximityProvider *)self displayContextHandler];

  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(MRProximityProvider *)v6 _deviceForUID:v4];
    v8 = [(MRProximityProvider *)v6 _effectivePlayerStateForDevice:v7];
    v9 = [(MRProximityProvider *)v6 proactiveDevice];
    v10 = [v9 playerState];
    v11 = [(MRProximityProvider *)v6 behaviorResults];
    v12 = [v7 uid];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [(MRProximityProvider *)v6 _displayContextForDevice:v7 withRemotePlayerState:v8 proactivePlayerState:v10 migrationBehavior:v13];

    v15 = [(MRProximityProvider *)v6 dispatchQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__MRProximityProvider__provideDisplayContextForDevice___block_invoke;
    v17[3] = &unk_1E769A4A0;
    v17[4] = v6;
    v18 = v14;
    v16 = v14;
    dispatch_async(v15, v17);

    objc_sync_exit(v6);
  }

  else
  {
    v6 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      [MRProximityProvider _provideDisplayContextForDevice:?];
    }
  }
}

void __55__MRProximityProvider__provideDisplayContextForDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayContextHandler];
  v2[2](v2, *(a1 + 40));
}

- (id)_displayContextForDevice:(id)a3 withRemotePlayerState:(id)a4 proactivePlayerState:(id)a5 migrationBehavior:(id)a6
{
  v81 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(getPCMediaRemoteDisplayContextClass());
  [v14 setProxDeviceState:v11];
  [v14 setSelectedDeviceState:v12];
  v62 = v10;
  v15 = [v10 uid];
  [v14 setMediaRemoteID:v15];

  v61 = v13;
  if ([v13 action] == 2)
  {
    v16 = 2;
    v17 = v11;
  }

  else
  {
    if (![v13 action])
    {
      [v14 setInteractionDirection:0];
      v19 = 0;
      goto LABEL_9;
    }

    v16 = 1;
    v17 = v12;
  }

  [v14 setInteractionDirection:v16];
  v18 = [v17 playbackQueue];
  v19 = [v18 contentItemWithOffset:0];

  if (v19)
  {
    v20 = [(MRProximityProvider *)self _displayStringForContentItem:v19];
    [v14 setLegacyBodyText:v20];

    v21 = [v19 artwork];
    v22 = [v21 imageData];

    if (v22)
    {
      v23 = [v19 artwork];
      v24 = [v23 imageData];
      v25 = [v10 uid];
      v26 = [(MRProximityProvider *)self _persistArtworkData:v24 forDevice:v25];
      [v14 setLegacyAttachmentURL:v26];
    }
  }

LABEL_9:
  if (MRMediaRemotePlaybackStateIsAdvancing([v11 playbackState]) || objc_msgSend(v11, "playerHasPlayedRecently"))
  {
    v27 = [v11 playbackQueue];
    v28 = [v27 contentItemWithOffset:0];

    if (v28)
    {
      v29 = [(MRProximityProvider *)self _displayStringForContentItem:v28];
      [v14 setLocalizedSecondaryAltText:v29];
    }
  }

  v30 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v14 legacyBodyText];
    v32 = [v14 localizedSecondaryAltText];
    *buf = 138412546;
    v64 = v31;
    v65 = 2112;
    v66 = v32;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Legacy: %@. V2: %@.", buf, 0x16u);
  }

  v33 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v62 uid];
    v59 = MRMediaRemoteCopyPlaybackStateDescription([v12 playbackState]);
    v56 = [v12 playbackQueue];
    v55 = [v56 contentItemWithOffset:0];
    v58 = [v55 identifier];
    v54 = [v12 playbackQueue];
    v53 = [v54 contentItemWithOffset:0];
    v51 = [v53 artwork];
    v50 = [v51 imageData];
    v34 = @"YES";
    if (!v50)
    {
      v34 = @"NO";
    }

    v46 = v34;
    v44 = [v12 playerLastPlayingDate];
    v52 = v14;
    v35 = MRMediaRemoteCopyPlaybackStateDescription([v11 playbackState]);
    v49 = [v11 playbackQueue];
    v48 = [v49 contentItemWithOffset:0];
    v36 = [v48 identifier];
    v47 = [v11 playbackQueue];
    [v47 contentItemWithOffset:0];
    v45 = v57 = v19;
    v37 = [v45 artwork];
    v38 = [v37 imageData];
    v39 = v12;
    if (v38)
    {
      v40 = @"YES";
    }

    else
    {
      v40 = @"NO";
    }

    v41 = [v11 playerLastPlayingDate];
    *buf = 138545410;
    v64 = v60;
    v65 = 2112;
    v66 = v59;
    v67 = 2112;
    v68 = v58;
    v69 = 2112;
    v70 = v46;
    v71 = 2112;
    v72 = v44;
    v73 = 2112;
    v74 = v35;
    v75 = 2112;
    v76 = v36;
    v77 = 2112;
    v78 = v40;
    v12 = v39;
    v79 = 2112;
    v80 = v41;
    _os_log_impl(&dword_1A2860000, v33, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Context for %{public}@ - Proactive: state=%@, item=%@, art=%@, lpd=%@. Remote: state=%@, item=%@, art=%@, lpd=%@", buf, 0x5Cu);

    v19 = v57;
    v14 = v52;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_displayStringForContentItem:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [v4 trackArtistName];

  v6 = [v3 metadata];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 trackArtistName];
  }

  else
  {
    v9 = [v6 albumArtistName];

    v10 = [v3 metadata];
    v7 = v10;
    if (v9)
    {
      v8 = [v10 albumArtistName];
    }

    else
    {
      v11 = [v10 radioStationName];

      if (!v11)
      {
        goto LABEL_9;
      }

      v7 = [v3 metadata];
      v8 = [v7 radioStationName];
    }
  }

  v12 = v8;

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v3 metadata];
    v15 = [v14 localizedTitle];
    v16 = MRLocalizedString(@"HANDOFF_PILL_TITLE_ARTIST_DELIMITER");
    v17 = [v13 stringWithFormat:@"%@ %@ %@", v15, v16, v12];

    goto LABEL_10;
  }

LABEL_9:
  v12 = [v3 metadata];
  v14 = [v12 localizedTitle];
  v17 = [v14 copy];
LABEL_10:

  return v17;
}

- (id)_persistArtworkData:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DFF8];
  v8 = NSTemporaryDirectory();
  v9 = [v7 fileURLWithPath:v8];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v17];
  v11 = v17;

  if (v11)
  {
    v12 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MRProximityProvider _persistArtworkData:forDevice:];
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v12 = [v9 URLByAppendingPathComponent:v6];
  v16 = 0;
  [v5 writeToURL:v12 options:1 error:&v16];
  v11 = v16;
  if (v11)
  {
    v13 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MRProximityProvider _persistArtworkData:forDevice:];
    }

    goto LABEL_8;
  }

  v12 = v12;
  v14 = v12;
LABEL_9:

  return v14;
}

- (void)_recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MRProximityProvider *)v4 proactiveDevice];
  if (v5 == v16)
  {
    v7 = [(MRProximityProvider *)v4 remoteDevices];
    v6 = [v7 allValues];
  }

  else
  {
    v23[0] = v16;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  }

  objc_sync_exit(v4);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    v11 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isPrepared])
        {
          v14 = [v13 uid];
          v17[0] = v11;
          v17[1] = 3221225472;
          v17[2] = __93__MRProximityProvider__recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice___block_invoke;
          v17[3] = &unk_1E76A4430;
          v17[4] = v4;
          v17[5] = v13;
          [(MRProximityProvider *)v4 _migrationBehaviorForRemoteDevice:v14 completion:v17];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __93__MRProximityProvider__recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) uid];
  v7 = [*(a1 + 40) endpoint];
  v8 = [v5 _nameForDevice:v6 inEndpoint:v7];

  v9 = [*(a1 + 32) behaviorResults];
  v10 = [*(a1 + 40) uid];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [*(a1 + 32) remoteDevices];
  v13 = [*(a1 + 40) uid];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 40) uid];
      v37 = 138543618;
      v38 = v16;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Device %{public}@ (%@) was removed while updating result. Ignoring.", &v37, 0x16u);
    }
  }

  v17 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v36 = [*(a1 + 40) uid];
    v37 = 138543874;
    v38 = v36;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v3;
    _os_log_debug_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEBUG, "[ProximityProvider] Result for device %{public}@ (%@):\n%@", &v37, 0x20u);
  }

  if (([v11 isEqual:v3] & 1) == 0)
  {
    v18 = [v3 error];

    if (v18)
    {
      v19 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [*(a1 + 40) uid];
        v21 = [v3 error];
        v37 = 138543874;
        v38 = v20;
        v39 = 2112;
        v40 = v8;
        v41 = 2114;
        v42 = v21;
        _os_log_error_impl(&dword_1A2860000, v19, OS_LOG_TYPE_ERROR, "[ProximityProvider] Error for device %{public}@ (%@) : %{public}@", &v37, 0x20u);
      }
    }

    else
    {
      v19 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(a1 + 40) uid];
        v23 = [v3 reason];
        v37 = 138543874;
        v38 = v22;
        v39 = 2112;
        v40 = v8;
        v41 = 2114;
        v42 = v23;
        _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Behavior for device %{public}@ (%@) : %{public}@", &v37, 0x20u);
      }
    }

    v24 = [*(a1 + 32) behaviorResults];
    v25 = [*(a1 + 40) uid];
    [v24 setObject:v3 forKeyedSubscript:v25];
  }

  v26 = [*(a1 + 32) providingDevices];
  v27 = [*(a1 + 40) uid];
  v28 = [v26 containsObject:v27];

  if (v28)
  {
    v29 = *(a1 + 32);
    v30 = [*(a1 + 40) uid];
    [v29 _provideDisplayContextForDevice:v30];
  }

  v31 = [*(a1 + 32) behaviorCallback];
  v32 = v31 == 0;

  if (!v32)
  {
    v33 = [*(a1 + 32) behaviorCallback];
    v34 = [*(a1 + 40) uid];
    (v33)[2](v33, v34, v3);
  }

  objc_sync_exit(v4);
  v35 = *MEMORY[0x1E69E9840];
}

- (id)_deviceForUID:(id)a3
{
  v4 = a3;
  v5 = [(MRProximityProvider *)self proactiveDevice];
  v6 = [v5 uid];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(MRProximityProvider *)self proactiveDevice];
  }

  else
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = [(MRProximityProvider *)v9 remoteDevices];
    v8 = [v10 objectForKeyedSubscript:v4];

    objc_sync_exit(v9);
  }

  return v8;
}

- (void)_migrateForDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRProximityProvider *)self migratingDevice];
  objc_sync_enter(v8);
  v9 = [(MRProximityProvider *)self migratingDevice];

  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(MRProximityProvider *)self migratingDevice];
    v12 = [v10 stringWithFormat:@"A migration is already in progress for device %@.", v11];

    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:3 description:v12];
    v7[2](v7, v13);

    objc_sync_exit(v8);
  }

  else
  {
    [(MRProximityProvider *)self setMigratingDevice:v6];
    objc_sync_exit(v8);

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MRProximityProvider__migrateForDevice_completion___block_invoke;
    v14[3] = &unk_1E76A4458;
    v14[4] = self;
    v15 = v6;
    v16 = v7;
    [(MRProximityProvider *)self _migrationBehaviorForRemoteDevice:v15 completion:v14];
  }
}

void __52__MRProximityProvider__migrateForDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 action] == 2)
    {
      v5 = *(a1 + 32);
      v6 = [v4 sourceUID];
      v7 = [v5 _deviceForUID:v6];
      v8 = [v7 endpoint];

      v9 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    }

    else
    {
      if ([v4 action] != 3 && objc_msgSend(v4, "action") != 1)
      {
        v36 = MEMORY[0x1E696AEC0];
        v37 = [v4 reason];
        v8 = [v36 stringWithFormat:@"Action == None because %@", v37];

        v38 = [*(a1 + 32) migratingDevice];
        objc_sync_enter(v38);
        [*(a1 + 32) setMigratingDevice:0];
        objc_sync_exit(v38);

        v39 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __52__MRProximityProvider__migrateForDevice_completion___block_invoke_cold_1(a1, v4, v39);
        }

        v40 = *(a1 + 48);
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v9 = [v4 error];
        v26 = [v41 initWithMRError:3 description:v8 underlyingError:v9];
        (*(v40 + 16))(v40, v26);
        goto LABEL_17;
      }

      v20 = *(a1 + 32);
      v21 = [v4 sourceUID];
      v22 = [v20 _deviceForUID:v21];
      v8 = [v22 endpoint];

      v23 = *(a1 + 32);
      v24 = [v4 destinationUID];
      v25 = [v23 _deviceForUID:v24];
      v9 = [v25 endpoint];
    }

    v26 = [*(a1 + 32) _outputDeviceWithUID:*(a1 + 40) fromSource:v8 andDestination:v9];
    v42 = [*(a1 + 32) _deviceForUID:*(a1 + 40)];
    v27 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      v30 = [v42 uid];
      v31 = [v42 endpoint];
      v32 = [v29 _nameForDevice:v30 inEndpoint:v31];
      *buf = 138543874;
      v46 = v28;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v4;
      _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] migrateForDevice %{public}@ (%@) evaluated result:\n%@", buf, 0x20u);
    }

    v33 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v46 = v8;
      v47 = 2114;
      v48 = v9;
      v49 = 2114;
      v50 = v26;
      _os_log_impl(&dword_1A2860000, v33, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Will migrate with source %{public}@, dest %{public}@, outputDevice %{public}@.", buf, 0x20u);
    }

    v34 = [v4 destinationUID];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __52__MRProximityProvider__migrateForDevice_completion___block_invoke_155;
    v43[3] = &unk_1E769BCD0;
    v43[4] = *(a1 + 32);
    v44 = *(a1 + 48);
    [MRProximityProvider _migrate:v8 destinationEndpoint:v9 destinationUID:v34 outputDevice:v26 label:@"MRProximityProvider" completion:v43];

LABEL_17:
    goto LABEL_18;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [*(a1 + 32) proactiveDevice];
  [v8 setObject:v10 forKeyedSubscript:@"proactiveDevice"];

  v11 = [*(a1 + 32) proactiveDevice];
  v12 = [v11 playerState];
  [v8 setObject:v12 forKeyedSubscript:@"proactivePlayerState"];

  v13 = [*(a1 + 32) _deviceForUID:*(a1 + 40)];
  [v8 setObject:v13 forKeyedSubscript:@"remoteDevice"];

  v14 = [*(a1 + 32) _deviceForUID:*(a1 + 40)];
  v15 = [v14 playerState];
  [v8 setObject:v15 forKeyedSubscript:@"remotePlayerState"];

  v16 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __52__MRProximityProvider__migrateForDevice_completion___block_invoke_cold_2((a1 + 40), v16);
  }

  v17 = MRLogCategoryMigrationOversize();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v8;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] %{public}@", buf, 0xCu);
  }

  v18 = [*(a1 + 32) migratingDevice];
  objc_sync_enter(v18);
  [*(a1 + 32) setMigratingDevice:0];
  objc_sync_exit(v18);

  v19 = *(a1 + 48);
  v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:3 description:@"No valid behavior exists for device."];
  (*(v19 + 16))(v19, v9);
LABEL_18:

  v35 = *MEMORY[0x1E69E9840];
}

void __52__MRProximityProvider__migrateForDevice_completion___block_invoke_155(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) migratingDevice];
  objc_sync_enter(v3);
  [*(a1 + 32) setMigratingDevice:0];
  objc_sync_exit(v3);

  (*(*(a1 + 40) + 16))();
}

- (id)_outputDeviceWithUID:(id)a3 fromSource:(id)a4 andDestination:(id)a5
{
  v7 = a3;
  v8 = a5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__MRProximityProvider__outputDeviceWithUID_fromSource_andDestination___block_invoke;
  v19[3] = &unk_1E769CDC0;
  v9 = v7;
  v20 = v9;
  v10 = [a4 outputDevicesMatchingPredicate:v19];
  v11 = [v10 firstObject];

  if (!v11)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __70__MRProximityProvider__outputDeviceWithUID_fromSource_andDestination___block_invoke_2;
    v17 = &unk_1E769CDC0;
    v18 = v9;
    v12 = [v8 outputDevicesMatchingPredicate:&v14];
    v11 = [v12 firstObject];
  }

  return v11;
}

- (void)_migrationBehaviorForRemoteDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [(MRProximityProvider *)self _deviceForUID:a3];
  v7 = [(MRProximityProvider *)self proactiveDevice];
  [(MRProximityProvider *)self _migrationBehaviorForRemoteDevice:v8 proactiveDevice:v7 completion:v6];
}

- (void)_migrationBehaviorForRemoteDevice:(id)a3 proactiveDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9 && [v9 isPrepared] && (objc_msgSend(v8, "isPrepared") & 1) != 0)
  {
    v11 = objc_alloc_init(MRMigrationBehaviorResult);
    v12 = [v9 playerState];
    v13 = [(MRProximityProvider *)self _effectivePlayerStateForDevice:v8];
    v14 = [v9 endpoint];
    v15 = [v8 endpoint];
    v31 = 0;
    v16 = [(MRProximityProvider *)self migrationActionForProactivePlayer:v12 proactiveEndpoint:v14 remotePlayer:v13 remoteEndpoint:v15 reason:&v31];
    v17 = v31;

    [(MRMigrationBehaviorResult *)v11 setAction:v16];
    [(MRMigrationBehaviorResult *)v11 setReason:v17];
    if (v16 == 2)
    {
      v26 = v13;
      v27 = v12;
      v18 = v8;
      v19 = [v18 endpoint];
      v20 = v9;
      v21 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    }

    else
    {
      if (!v16)
      {
        v10[2](v10, v11);
LABEL_18:

        goto LABEL_9;
      }

      v26 = v13;
      v27 = v12;
      v18 = v9;
      v19 = [v18 endpoint];
      v20 = v8;
      v21 = [v20 endpoint];
    }

    v22 = v21;
    v23 = [v18 uid];
    [(MRMigrationBehaviorResult *)v11 setSourceUID:v23];

    v24 = [v20 uid];
    [(MRMigrationBehaviorResult *)v11 setDestinationUID:v24];

    if ([v19 isLocalEndpoint] & 1) == 0 && ((objc_msgSend(v19, "isLocalEndpoint") & 1) != 0 || (objc_msgSend(v22, "isLocalEndpoint")))
    {
      v25 = dispatch_get_global_queue(0, 0);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __84__MRProximityProvider__migrationBehaviorForRemoteDevice_proactiveDevice_completion___block_invoke;
      v28[3] = &unk_1E769BCD0;
      v29 = v11;
      v30 = v10;
      [v19 canMigrateToEndpoint:v22 queue:v25 completion:v28];
    }

    else
    {
      v10[2](v10, v11);
    }

    v12 = v27;

    v13 = v26;
    goto LABEL_18;
  }

  v10[2](v10, 0);
LABEL_9:
}

uint64_t __84__MRProximityProvider__migrationBehaviorForRemoteDevice_proactiveDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v3 setAction:0];
    [*(a1 + 32) setError:v4];
  }

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (id)_effectivePlayerStateForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 prepareError];
  v6 = [v5 code];

  v7 = [v4 playerState];

  v8 = [v4 endpoint];
  v9 = [v8 isLocalEndpoint];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v4 endpoint];
    v12 = [v11 outputDevices];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__MRProximityProvider__effectivePlayerStateForDevice___block_invoke;
    v20[3] = &unk_1E769CDC0;
    v3 = &v21;
    v21 = v4;
    v13 = [v12 mr_first:v20];
    v10 = [v13 isProxyGroupPlayer];
  }

  if (v6 == 42 || !v7 || v10)
  {
    v14 = objc_alloc_init(MRNowPlayingPlayerResponse);
    v15 = [MRDestination alloc];
    v16 = [v4 endpoint];
    v17 = [v16 origin];
    v18 = [(MRDestination *)v15 initWithOrigin:v17];
    [(MRNowPlayingPlayerResponse *)v14 setDestination:v18];

    [(MRNowPlayingPlayerResponse *)v14 setPlaybackState:0];
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = [v4 playerState];
  if ((v9 & 1) == 0)
  {
LABEL_10:
  }

LABEL_11:

  return v14;
}

uint64_t __54__MRProximityProvider__effectivePlayerStateForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uid];
  v5 = [v3 containsUID:v4];

  return v5;
}

- (int64_t)migrationActionForProactivePlayer:(id)a3 proactiveEndpoint:(id)a4 remotePlayer:(id)a5 remoteEndpoint:(id)a6 reason:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing([v11 playbackState]);
  v16 = MRMediaRemotePlaybackStateIsAdvancing([v13 playbackState]);
  v17 = [v11 playerPath];
  v18 = [v17 origin];
  v19 = [v18 isLocal];

  if (!MRGroupSessionAllowsMigrationForEndpoint(v12))
  {
    v25 = 0;
    *a7 = @"Proactive endpoint is QHO-restricted group session endpoint.";
    goto LABEL_7;
  }

  v44 = a7;
  v20 = [v12 uniqueIdentifier];
  v21 = [v14 uniqueIdentifier];
  v22 = [v20 isEqualToString:v21];

  if (!v22)
  {
    v27 = !v16;
    if (!IsAdvancing || (v27 & 1) != 0)
    {
      if (!IsAdvancing || v16)
      {
        v24 = v44;
        if (((IsAdvancing | v27) & 1) == 0)
        {
          v23 = @"Remote is playing -> Pull from remote.";
          goto LABEL_4;
        }

        if (IsAdvancing || v16)
        {
          v25 = 0;
          goto LABEL_7;
        }

        v31 = [v11 playbackQueue];
        v32 = [v31 contentItems];
        if ([v32 count])
        {
          v33 = [v11 playerHasPlayedRecently];

          if (v33)
          {
            v34 = MEMORY[0x1E696AEC0];
            v35 = [v11 playerLastPlayingDate];
            [v35 timeIntervalSinceNow];
            v37 = -v36;
            if (v19)
            {
              *v44 = [v34 stringWithFormat:@"Proactive == local, has queue, was playing recently (%.0lf seconds ago) -> Push to remote.", *&v37];

              goto LABEL_19;
            }

            *v44 = [v34 stringWithFormat:@"Proactive != local, has queue, was playing recently (%.0lf seconds ago) -> Add remote to group.", *&v37];

LABEL_24:
            v25 = 3;
            goto LABEL_7;
          }
        }

        else
        {
        }

        v38 = [v13 playbackQueue];
        v39 = [v38 contentItems];
        if ([v39 count])
        {
          v40 = [v13 playerHasPlayedRecently];

          if (v40)
          {
            v41 = MEMORY[0x1E696AEC0];
            v42 = [v11 playerLastPlayingDate];
            [v42 timeIntervalSinceNow];
            *v44 = [v41 stringWithFormat:@"Remote has queue, was playing recently (%.0lf seconds ago) -> Pull from remote.", -v43];

            goto LABEL_5;
          }
        }

        else
        {
        }

        v25 = 0;
        *v44 = @"Neither device has a recently played queue.";
        goto LABEL_7;
      }

      v29 = v44;
      if (v19)
      {
        v28 = @"Proactive == local and proactive is playing -> Push to remote.";
        goto LABEL_18;
      }

      v30 = @"Proactive != local and proactive is playing -> Add remote to group.";
    }

    else
    {
      if (v19)
      {
        v28 = @"Proactive == local and both proactive and remote are playing -> Push to remote.";
        v29 = v44;
LABEL_18:
        *v29 = v28;
LABEL_19:
        v25 = 1;
        goto LABEL_7;
      }

      v30 = @"Proactive != local and both proactive and remote are playing -> Add remote to group.";
      v29 = v44;
    }

    *v29 = v30;
    goto LABEL_24;
  }

  v23 = @"Proactive == remote -> Pull from remote back to local.";
  v24 = v44;
LABEL_4:
  *v24 = v23;
LABEL_5:
  v25 = 2;
LABEL_7:

  return v25;
}

+ (void)_migrate:(id)a3 destinationEndpoint:(id)a4 destinationUID:(id)a5 outputDevice:(id)a6 label:(id)a7 completion:(id)a8
{
  v65 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v38 = a4;
  v35 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  [(MRPlaybackSessionMigrateRequest *)v16 setInitiator:@"proximity"];
  [(MRPlaybackSessionMigrateRequest *)v16 setPlayerOptions:[(MRPlaybackSessionMigrateRequest *)v16 playerOptions]| 4];
  [(MRPlaybackSessionMigrateRequest *)v16 setPlayerOptions:[(MRPlaybackSessionMigrateRequest *)v16 playerOptions]| 0x40];
  v17 = [MEMORY[0x1E695DF00] date];
  v18 = [(MRPlaybackSessionMigrateRequest *)v16 startEvent:@"MigrateProximity" role:1];
  v19 = objc_alloc(MEMORY[0x1E696AD60]);
  v20 = [(MRPlaybackSessionMigrateRequest *)v16 requestID];
  v21 = [v19 initWithFormat:@"%@<%@>", @"MigrateProximity", v20];

  if (v14)
  {
    [v21 appendFormat:@" for %@", v14];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v64 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke;
  v56[3] = &unk_1E76A2C50;
  v23 = v16;
  v57 = v23;
  v62 = v18;
  v36 = v14;
  v58 = v36;
  v59 = @"MigrateProximity";
  v24 = v17;
  v60 = v24;
  v25 = v15;
  v61 = v25;
  v26 = MEMORY[0x1A58E3570](v56);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_208;
  v51[3] = &unk_1E76A4480;
  v27 = v13;
  v52 = v27;
  v28 = v35;
  v53 = v28;
  v54 = @"MigrateProximity";
  v29 = v23;
  v55 = v29;
  v30 = MEMORY[0x1A58E3570](v51);
  v31 = v37;
  if (([v37 isLocalEndpoint] & 1) == 0 && (!v38 || (objc_msgSend(v38, "isLocalEndpoint") & 1) == 0))
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_2;
    v46[3] = &unk_1E76A44A8;
    v50 = v26;
    v47 = @"MigrateProximity";
    v48 = v29;
    v49 = v37;
    (v30)[2](v30, v46);

    goto LABEL_14;
  }

  v32 = v38;
  if (![v38 isLocalEndpoint])
  {
    if ([v37 isLocalEndpoint])
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_2_219;
      v39[3] = &unk_1E76A44D0;
      v45 = v26;
      v40 = v29;
      v32 = v38;
      v41 = v38;
      v42 = @"MigrateProximity";
      v43 = v28;
      v44 = v37;
      (v30)[2](v30, v39);

      goto LABEL_15;
    }

    v33 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"Error in migrate. No cases matched. Please examine the state prior to this error."];
    (v26)[2](v26, v33);

    v31 = v37;
LABEL_14:
    v32 = v38;
    goto LABEL_15;
  }

  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 2];
  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 4];
  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 0x10];
  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 0x20];
  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]& 0xFFFFFFFFFFFFFFF7];
  [v37 migrateToEndpoint:v38 request:v29 queue:MEMORY[0x1E69E96A0] completion:v26];
LABEL_15:

  v34 = *MEMORY[0x1E69E9840];
}

void __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) endEventWithID:*(a1 + 72) error:v3];
  v4 = *(a1 + 40);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (v3)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 48);
      v9 = [*(a1 + 32) requestID];
      v10 = *(a1 + 40);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      v29 = 138544386;
      v30 = v8;
      v31 = 2114;
      v32 = v9;
      v33 = 2114;
      v34 = v3;
      v35 = 2114;
      v36 = v10;
      v37 = 2048;
      v38 = v12;
      v13 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v14 = v6;
      v15 = 52;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v23 = *(a1 + 48);
      v9 = [*(a1 + 32) requestID];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      v29 = 138544130;
      v30 = v23;
      v31 = 2114;
      v32 = v9;
      v33 = 2114;
      v34 = v3;
      v35 = 2048;
      v36 = v24;
      v13 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v14 = v6;
      v15 = 42;
    }

    _os_log_error_impl(&dword_1A2860000, v14, OS_LOG_TYPE_ERROR, v13, &v29, v15);
  }

  else
  {
    v16 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v16)
      {
        goto LABEL_15;
      }

      v17 = *(a1 + 48);
      v9 = [*(a1 + 32) requestID];
      v18 = *(a1 + 40);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      v29 = 138544130;
      v30 = v17;
      v31 = 2114;
      v32 = v9;
      v33 = 2114;
      v34 = v18;
      v35 = 2048;
      v36 = v19;
      v20 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v21 = v6;
      v22 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_15;
      }

      v25 = *(a1 + 48);
      v9 = [*(a1 + 32) requestID];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      v29 = 138543874;
      v30 = v25;
      v31 = 2114;
      v32 = v9;
      v33 = 2048;
      v34 = v26;
      v20 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v21 = v6;
      v22 = 32;
    }

    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, v20, &v29, v22);
  }

LABEL_15:
  [*(a1 + 32) finalizeWithCompletion:0];
  v27 = *(a1 + 64);
  if (v27)
  {
    (*(v27 + 16))(v27, v3);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_208(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = a2[2];
    v10 = a2;
    v2();
  }

  else
  {
    v4 = a2;
    v10 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v5 = *(a1 + 40);
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) requestID];
    v9 = [v6 initWithFormat:@"%@<%@>", v7, v8];
    [(MRAVLightweightReconnaissanceSession *)v10 searchForOutputDeviceUID:v5 timeout:v9 reason:MEMORY[0x1E69E96A0] queue:v4 completion:7.0];
  }
}

void __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) requestID];
      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
      v26 = 2112;
      v27 = @"Adding prox device to proactiveEndpoint";
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [*(a1 + 40) setRequestType:2];
    v9 = [*(a1 + 40) startEvent:@"AddOutputDevices" role:1];
    v10 = *(a1 + 40);
    v21 = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v10 addDestinationTypesFromDevices:v11];

    v12 = *(a1 + 48);
    v20 = v5;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v14 = [*(a1 + 40) requestID];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_217;
    v16[3] = &unk_1E769D978;
    v17 = *(a1 + 40);
    v19 = v9;
    v18 = *(a1 + 56);
    [v12 addOutputDevices:v13 initiator:v14 withReplyQueue:MEMORY[0x1E69E96A0] completion:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_217(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v3];
  if (!v3)
  {
    [*(a1 + 32) playerOptions];
  }

  (*(*(a1 + 40) + 16))();
}

void __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_2_219(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    [*(a1 + 32) setEndpointOptions:{objc_msgSend(*(a1 + 32), "endpointOptions") | 2}];
    [*(a1 + 32) setEndpointOptions:{objc_msgSend(*(a1 + 32), "endpointOptions") & 0xFFFFFFFFFFFFFFFBLL}];
    [*(a1 + 32) setEndpointOptions:{objc_msgSend(*(a1 + 32), "endpointOptions") | 0x10}];
    [*(a1 + 32) setEndpointOptions:{objc_msgSend(*(a1 + 32), "endpointOptions") & 0xFFFFFFFFFFFFFFDFLL}];
    [*(a1 + 32) setEndpointOptions:{objc_msgSend(*(a1 + 32), "endpointOptions") | 8}];
    v6 = +[MRUserSettings currentSettings];
    v7 = [v6 supportNewMigrationBehaviorForProximity];

    if (v7)
    {
      [*(a1 + 32) setEndpointOptions:{objc_msgSend(*(a1 + 32), "endpointOptions") | 0x40}];
    }

    if (*(a1 + 40))
    {
      v8 = *(a1 + 64);
      v23 = v5;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      [v8 migrateToOutputDevices:v9 request:*(a1 + 32) initiator:0 queue:MEMORY[0x1E69E96A0] completion:*(a1 + 72)];
    }

    else
    {
      v10 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        *buf = 138543874;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        v29 = 2112;
        v30 = @"Falling back to setOutputDevice because destination is not remote-controllable.";
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v13 = [*(a1 + 32) startEvent:@"SetOutputDevice" role:1];
      v14 = ([*(a1 + 32) playerOptions] >> 6) & 1;
      v15 = *(a1 + 64);
      v24 = v5;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_227;
      v18[3] = &unk_1E76A27F8;
      v19 = *(a1 + 32);
      v22 = v13;
      v20 = *(a1 + 48);
      v21 = *(a1 + 72);
      [v15 setOutputDevices:v16 initiator:@"MRProximityProvider" fadeAudio:v14 withReplyQueue:MEMORY[0x1E69E96A0] completion:v18];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_227(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) endEventWithID:*(a1 + 56) error:v3];
  if (!v3 && ([*(a1 + 32) playerOptions] & 4) != 0)
  {
    v4 = [*(a1 + 32) startEvent:@"Play" role:1];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) requestID];
    v9 = [v6 initWithFormat:@"%@<%@>", v7, v8];
    [v5 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_2_231;
    v10[3] = &unk_1E769DB80;
    v11 = *(a1 + 32);
    v13 = v4;
    v12 = *(a1 + 48);
    MRMediaRemoteSendCommandToPlayer(0, v5, 0, 0, MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_2_231(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)_nameForDevice:(id)a3 inEndpoint:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [a4 outputDevices];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v25 = *v32;
    v26 = v6;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 clusterComposition];

        if (v12)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = [v11 clusterComposition];
          v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v27 + 1) + 8 * j) uid];
                v19 = [v18 isEqualToString:v5];

                if (v19)
                {
                  v22 = [v11 name];

                  v6 = v26;
                  goto LABEL_22;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v25;
          v6 = v26;
        }

        else
        {
          v20 = [v11 uid];
          v21 = [v20 isEqualToString:v5];

          if (v21)
          {
            v22 = [v11 name];
            goto LABEL_22;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      v22 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_22:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)endpointForDevice:(id)a3
{
  v3 = [(MRProximityProvider *)self _deviceForUID:a3];
  v4 = [v3 endpoint];

  return v4;
}

- (id)contentToDisplayForDevice:(id)a3
{
  v4 = a3;
  v5 = [(MRProximityProvider *)self behaviorResults];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 sourceUID];
  v8 = [(MRProximityProvider *)self _deviceForUID:v7];
  v9 = [v8 playerState];

  return v9;
}

- (void)receiveEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A2860000, a2, OS_LOG_TYPE_DEBUG, "[ProximityProvider] Received event %@.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_beginProvidingDisplayContextIfNeeded:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1A2860000, a2, OS_LOG_TYPE_DEBUG, "[ProximityProvider] Begin providing for device %{public}@, but device is not prepared, so must defer initial provide.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_persistArtworkData:forDevice:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_3_0(&dword_1A2860000, v0, v1, "[ProximityProvider] Failed to persist artwork data for device %{public}@. Error: %@.");
  v2 = *MEMORY[0x1E69E9840];
}

void __52__MRProximityProvider__migrateForDevice_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = [a2 error];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "[ProximityProvider] No result for device %{public}@, error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __52__MRProximityProvider__migrateForDevice_completion___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[ProximityProvider] No result for device %@. Was this device prepared before handoff was attempted?", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end