@interface MRProximityProvider
+ (void)_migrate:(id)_migrate destinationEndpoint:(id)endpoint destinationUID:(id)d outputDevice:(id)device label:(id)label completion:(id)completion;
- (MRProximityProvider)init;
- (NSString)description;
- (OS_dispatch_queue)dispatchQueue;
- (id)_deviceForUID:(id)d;
- (id)_displayContextForDevice:(id)device withRemotePlayerState:(id)state proactivePlayerState:(id)playerState migrationBehavior:(id)behavior;
- (id)_displayStringForContentItem:(id)item;
- (id)_effectivePlayerStateForDevice:(id)device;
- (id)_nameForDevice:(id)device inEndpoint:(id)endpoint;
- (id)_outputDeviceWithUID:(id)d fromSource:(id)source andDestination:(id)destination;
- (id)_persistArtworkData:(id)data forDevice:(id)device;
- (id)contentToDisplayForDevice:(id)device;
- (id)dictionaryRepresentation;
- (id)endpointForDevice:(id)device;
- (int64_t)migrationActionForProactivePlayer:(id)player proactiveEndpoint:(id)endpoint remotePlayer:(id)remotePlayer remoteEndpoint:(id)remoteEndpoint reason:(id *)reason;
- (void)_addDeviceIfNeeded:(id)needed;
- (void)_beginProvidingDisplayContextIfNeeded:(id)needed;
- (void)_endProvidingDisplayContextIfNeeded:(id)needed;
- (void)_migrateForDevice:(id)device completion:(id)completion;
- (void)_migrationBehaviorForRemoteDevice:(id)device completion:(id)completion;
- (void)_migrationBehaviorForRemoteDevice:(id)device proactiveDevice:(id)proactiveDevice completion:(id)completion;
- (void)_provideDisplayContextForDevice:(id)device;
- (void)_recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice:(id)device;
- (void)_removeDeviceIfNeeded:(id)needed;
- (void)device:(id)device stateDidChange:(unint64_t)change;
- (void)handleGroupSessionNotification:(id)notification;
- (void)receiveEvent:(id)event;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleGroupSessionNotification_ name:@"MRActiveGroupSessionInfoDidChangeNotification" object:0];
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  proactiveDevice = [(MRProximityProvider *)selfCopy proactiveDevice];
  [v3 setObject:proactiveDevice forKeyedSubscript:@"proactiveDevice"];

  remoteDevices = [(MRProximityProvider *)selfCopy remoteDevices];
  [v3 setObject:remoteDevices forKeyedSubscript:@"remoteDevices"];

  behaviorResults = [(MRProximityProvider *)selfCopy behaviorResults];
  [v3 setObject:behaviorResults forKeyedSubscript:@"behaviorResults"];

  providingDevices = [(MRProximityProvider *)selfCopy providingDevices];
  [v3 setObject:providingDevices forKeyedSubscript:@"providingDevices"];

  migratingDevice = [(MRProximityProvider *)selfCopy migratingDevice];
  [v3 setObject:migratingDevice forKeyedSubscript:@"migratingDevice"];

  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRProximityProvider *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

- (void)handleGroupSessionNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proactiveDevice = [(MRProximityProvider *)selfCopy proactiveDevice];
  objc_sync_exit(selfCopy);

  if (proactiveDevice)
  {
    [(MRProximityProvider *)selfCopy _recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice:proactiveDevice];
  }
}

- (void)receiveEvent:(id)event
{
  v26 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  mediaRemoteID = [eventCopy mediaRemoteID];
  v6 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(MRProximityProvider *)eventCopy receiveEvent:v6];
  }

  eventType = [eventCopy eventType];
  if (eventType <= 8)
  {
    if (((1 << eventType) & 0x105) != 0)
    {
      [(MRProximityProvider *)self _removeDeviceIfNeeded:mediaRemoteID];
    }

    else if (((1 << eventType) & 0x18) != 0)
    {
      [(MRProximityProvider *)self _addDeviceIfNeeded:mediaRemoteID];
    }

    else if (eventType == 1)
    {
      progressEventHandler = [(MRProximityProvider *)self progressEventHandler];

      if (progressEventHandler)
      {
        dispatchQueue = [(MRProximityProvider *)self dispatchQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __36__MRProximityProvider_receiveEvent___block_invoke;
        block[3] = &unk_1E769A4A0;
        v20 = mediaRemoteID;
        selfCopy = self;
        dispatch_async(dispatchQueue, block);
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      v12 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v23 = uUIDString;
        v24 = 2114;
        v25 = mediaRemoteID;
        _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] migrateForDevice<%{public}@> beginning for device %{public}@", buf, 0x16u);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __36__MRProximityProvider_receiveEvent___block_invoke_111;
      v15[3] = &unk_1E769B9B0;
      v16 = uUIDString;
      v17 = mediaRemoteID;
      selfCopy2 = self;
      v13 = uUIDString;
      [(MRProximityProvider *)self _migrateForDevice:v17 completion:v15];
    }
  }

  if ([eventCopy expectsDisplayContext])
  {
    [(MRProximityProvider *)self _beginProvidingDisplayContextIfNeeded:mediaRemoteID];
  }

  else
  {
    [(MRProximityProvider *)self _endProvidingDisplayContextIfNeeded:mediaRemoteID];
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

- (void)device:(id)device stateDidChange:(unint64_t)change
{
  v21 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (change == 3)
  {
    v7 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [deviceCopy uid];
      prepareError = [deviceCopy prepareError];
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = prepareError;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Device %{public}@ prepare failed with error %@.", buf, 0x16u);
    }

    v10 = objc_alloc_init(getPCMediaRemoteDisplayContextClass());
    [v10 setInteractionDirection:0];
    v11 = [deviceCopy uid];
    [v10 setMediaRemoteID:v11];

    dispatchQueue = [(MRProximityProvider *)self dispatchQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__MRProximityProvider_device_stateDidChange___block_invoke;
    v15[3] = &unk_1E769A4A0;
    v15[4] = self;
    v16 = v10;
    v13 = v10;
    dispatch_async(dispatchQueue, v15);
  }

  else if (change == 2)
  {
    [(MRProximityProvider *)self _recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice:deviceCopy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __45__MRProximityProvider_device_stateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayContextHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)_addDeviceIfNeeded:(id)needed
{
  v19 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  remoteDevices = [(MRProximityProvider *)selfCopy remoteDevices];
  v7 = [remoteDevices objectForKeyedSubscript:neededCopy];

  if (!v7)
  {
    proactiveDevice = [(MRProximityProvider *)selfCopy proactiveDevice];

    if (!proactiveDevice)
    {
      v9 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Initializing proactive device.", &v17, 2u);
      }

      v10 = +[MRMigrationDevice proactiveDevice];
      [(MRProximityProvider *)selfCopy setProactiveDevice:v10];

      proactiveDevice2 = [(MRProximityProvider *)selfCopy proactiveDevice];
      [proactiveDevice2 setDelegate:selfCopy];

      proactiveDevice3 = [(MRProximityProvider *)selfCopy proactiveDevice];
      [proactiveDevice3 prepare];
    }

    v13 = [[MRMigrationDevice alloc] initWithUID:neededCopy];
    [(MRMigrationDevice *)v13 setDelegate:selfCopy];
    [(MRMigrationDevice *)v13 prepare];
    v14 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = neededCopy;
      _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Adding device %{public}@.", &v17, 0xCu);
    }

    remoteDevices2 = [(MRProximityProvider *)selfCopy remoteDevices];
    [remoteDevices2 setObject:v13 forKeyedSubscript:neededCopy];
  }

  objc_sync_exit(selfCopy);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removeDeviceIfNeeded:(id)needed
{
  v26 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MRProximityProvider *)selfCopy _endProvidingDisplayContextIfNeeded:neededCopy];
  behaviorResults = [(MRProximityProvider *)selfCopy behaviorResults];
  [behaviorResults setObject:0 forKeyedSubscript:neededCopy];

  remoteDevices = [(MRProximityProvider *)selfCopy remoteDevices];
  v8 = [remoteDevices objectForKeyedSubscript:neededCopy];

  if (v8)
  {
    v9 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevices2 = [(MRProximityProvider *)selfCopy remoteDevices];
      v11 = [remoteDevices2 objectForKeyedSubscript:neededCopy];
      v12 = [v11 uid];
      remoteDevices3 = [(MRProximityProvider *)selfCopy remoteDevices];
      v14 = [remoteDevices3 objectForKeyedSubscript:neededCopy];
      endpoint = [v14 endpoint];
      v16 = [(MRProximityProvider *)selfCopy _nameForDevice:v12 inEndpoint:endpoint];
      v22 = 138543618;
      v23 = neededCopy;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Removing device %{public}@ (%@).", &v22, 0x16u);
    }

    remoteDevices4 = [(MRProximityProvider *)selfCopy remoteDevices];
    [remoteDevices4 setObject:0 forKeyedSubscript:neededCopy];

    remoteDevices5 = [(MRProximityProvider *)selfCopy remoteDevices];
    v19 = [remoteDevices5 count] == 0;

    if (v19)
    {
      v20 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Clearing proactive device.", &v22, 2u);
      }

      [(MRProximityProvider *)selfCopy setProactiveDevice:0];
    }
  }

  objc_sync_exit(selfCopy);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_beginProvidingDisplayContextIfNeeded:(id)needed
{
  v26 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MRProximityProvider *)selfCopy _deviceForUID:neededCopy];
  if (v6)
  {
    providingDevices = [(MRProximityProvider *)selfCopy providingDevices];
    v8 = [providingDevices containsObject:neededCopy];

    if ((v8 & 1) == 0)
    {
      providingDevices2 = [(MRProximityProvider *)selfCopy providingDevices];
      [providingDevices2 addObject:neededCopy];

      v10 = _MRLogForCategory(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v6 uid];
        endpoint = [v6 endpoint];
        v18 = [(MRProximityProvider *)selfCopy _nameForDevice:v16 inEndpoint:endpoint];
        v22 = 138543618;
        v23 = neededCopy;
        v24 = 2112;
        v25 = v18;
        _os_log_debug_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEBUG, "[ProximityProvider] Begin providing for device %{public}@ (%@).", &v22, 0x16u);
      }
    }

    if ([v6 deviceState] == 2)
    {
      behaviorResults = [(MRProximityProvider *)selfCopy behaviorResults];
      v12 = [v6 uid];
      v13 = [behaviorResults objectForKeyedSubscript:v12];

      if (v13)
      {
        v14 = [v6 uid];
        [(MRProximityProvider *)selfCopy _provideDisplayContextForDevice:v14];
      }

      else
      {
        v14 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v6 uid];
          endpoint2 = [v6 endpoint];
          v21 = [(MRProximityProvider *)selfCopy _nameForDevice:v19 inEndpoint:endpoint2];
          v22 = 138543618;
          v23 = neededCopy;
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
        [(MRProximityProvider *)neededCopy _beginProvidingDisplayContextIfNeeded:v13];
      }
    }
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_endProvidingDisplayContextIfNeeded:(id)needed
{
  v19 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  providingDevices = [(MRProximityProvider *)selfCopy providingDevices];
  v7 = [providingDevices containsObject:neededCopy];

  if (v7)
  {
    v8 = [(MRProximityProvider *)selfCopy _deviceForUID:neededCopy];
    v9 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v8 uid];
      endpoint = [v8 endpoint];
      v14 = [(MRProximityProvider *)selfCopy _nameForDevice:v12 inEndpoint:endpoint];
      v15 = 138543618;
      v16 = neededCopy;
      v17 = 2112;
      v18 = v14;
      _os_log_debug_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEBUG, "[ProximityProvider] End providing for device %{public}@ (%@).", &v15, 0x16u);
    }

    providingDevices2 = [(MRProximityProvider *)selfCopy providingDevices];
    [providingDevices2 removeObject:neededCopy];
  }

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_provideDisplayContextForDevice:(id)device
{
  deviceCopy = device;
  displayContextHandler = [(MRProximityProvider *)self displayContextHandler];

  if (displayContextHandler)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(MRProximityProvider *)selfCopy _deviceForUID:deviceCopy];
    v8 = [(MRProximityProvider *)selfCopy _effectivePlayerStateForDevice:v7];
    proactiveDevice = [(MRProximityProvider *)selfCopy proactiveDevice];
    playerState = [proactiveDevice playerState];
    behaviorResults = [(MRProximityProvider *)selfCopy behaviorResults];
    v12 = [v7 uid];
    v13 = [behaviorResults objectForKeyedSubscript:v12];
    v14 = [(MRProximityProvider *)selfCopy _displayContextForDevice:v7 withRemotePlayerState:v8 proactivePlayerState:playerState migrationBehavior:v13];

    dispatchQueue = [(MRProximityProvider *)selfCopy dispatchQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__MRProximityProvider__provideDisplayContextForDevice___block_invoke;
    v17[3] = &unk_1E769A4A0;
    v17[4] = selfCopy;
    v18 = v14;
    v16 = v14;
    dispatch_async(dispatchQueue, v17);

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
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

- (id)_displayContextForDevice:(id)device withRemotePlayerState:(id)state proactivePlayerState:(id)playerState migrationBehavior:(id)behavior
{
  v81 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  stateCopy = state;
  playerStateCopy = playerState;
  behaviorCopy = behavior;
  v14 = objc_alloc_init(getPCMediaRemoteDisplayContextClass());
  [v14 setProxDeviceState:stateCopy];
  [v14 setSelectedDeviceState:playerStateCopy];
  v62 = deviceCopy;
  v15 = [deviceCopy uid];
  [v14 setMediaRemoteID:v15];

  v61 = behaviorCopy;
  if ([behaviorCopy action] == 2)
  {
    v16 = 2;
    v17 = stateCopy;
  }

  else
  {
    if (![behaviorCopy action])
    {
      [v14 setInteractionDirection:0];
      v19 = 0;
      goto LABEL_9;
    }

    v16 = 1;
    v17 = playerStateCopy;
  }

  [v14 setInteractionDirection:v16];
  playbackQueue = [v17 playbackQueue];
  v19 = [playbackQueue contentItemWithOffset:0];

  if (v19)
  {
    v20 = [(MRProximityProvider *)self _displayStringForContentItem:v19];
    [v14 setLegacyBodyText:v20];

    artwork = [v19 artwork];
    imageData = [artwork imageData];

    if (imageData)
    {
      artwork2 = [v19 artwork];
      imageData2 = [artwork2 imageData];
      v25 = [deviceCopy uid];
      v26 = [(MRProximityProvider *)self _persistArtworkData:imageData2 forDevice:v25];
      [v14 setLegacyAttachmentURL:v26];
    }
  }

LABEL_9:
  if (MRMediaRemotePlaybackStateIsAdvancing([stateCopy playbackState]) || objc_msgSend(stateCopy, "playerHasPlayedRecently"))
  {
    playbackQueue2 = [stateCopy playbackQueue];
    v28 = [playbackQueue2 contentItemWithOffset:0];

    if (v28)
    {
      v29 = [(MRProximityProvider *)self _displayStringForContentItem:v28];
      [v14 setLocalizedSecondaryAltText:v29];
    }
  }

  v30 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    legacyBodyText = [v14 legacyBodyText];
    localizedSecondaryAltText = [v14 localizedSecondaryAltText];
    *buf = 138412546;
    v64 = legacyBodyText;
    v65 = 2112;
    v66 = localizedSecondaryAltText;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Legacy: %@. V2: %@.", buf, 0x16u);
  }

  v33 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v62 uid];
    v59 = MRMediaRemoteCopyPlaybackStateDescription([playerStateCopy playbackState]);
    playbackQueue3 = [playerStateCopy playbackQueue];
    v55 = [playbackQueue3 contentItemWithOffset:0];
    identifier = [v55 identifier];
    playbackQueue4 = [playerStateCopy playbackQueue];
    v53 = [playbackQueue4 contentItemWithOffset:0];
    artwork3 = [v53 artwork];
    imageData3 = [artwork3 imageData];
    v34 = @"YES";
    if (!imageData3)
    {
      v34 = @"NO";
    }

    v46 = v34;
    playerLastPlayingDate = [playerStateCopy playerLastPlayingDate];
    v52 = v14;
    v35 = MRMediaRemoteCopyPlaybackStateDescription([stateCopy playbackState]);
    playbackQueue5 = [stateCopy playbackQueue];
    v48 = [playbackQueue5 contentItemWithOffset:0];
    identifier2 = [v48 identifier];
    playbackQueue6 = [stateCopy playbackQueue];
    [playbackQueue6 contentItemWithOffset:0];
    v45 = v57 = v19;
    artwork4 = [v45 artwork];
    imageData4 = [artwork4 imageData];
    v39 = playerStateCopy;
    if (imageData4)
    {
      v40 = @"YES";
    }

    else
    {
      v40 = @"NO";
    }

    playerLastPlayingDate2 = [stateCopy playerLastPlayingDate];
    *buf = 138545410;
    v64 = v60;
    v65 = 2112;
    v66 = v59;
    v67 = 2112;
    v68 = identifier;
    v69 = 2112;
    v70 = v46;
    v71 = 2112;
    v72 = playerLastPlayingDate;
    v73 = 2112;
    v74 = v35;
    v75 = 2112;
    v76 = identifier2;
    v77 = 2112;
    v78 = v40;
    playerStateCopy = v39;
    v79 = 2112;
    v80 = playerLastPlayingDate2;
    _os_log_impl(&dword_1A2860000, v33, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Context for %{public}@ - Proactive: state=%@, item=%@, art=%@, lpd=%@. Remote: state=%@, item=%@, art=%@, lpd=%@", buf, 0x5Cu);

    v19 = v57;
    v14 = v52;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_displayStringForContentItem:(id)item
{
  itemCopy = item;
  metadata = [itemCopy metadata];
  trackArtistName = [metadata trackArtistName];

  metadata2 = [itemCopy metadata];
  metadata4 = metadata2;
  if (trackArtistName)
  {
    trackArtistName2 = [metadata2 trackArtistName];
  }

  else
  {
    albumArtistName = [metadata2 albumArtistName];

    metadata3 = [itemCopy metadata];
    metadata4 = metadata3;
    if (albumArtistName)
    {
      trackArtistName2 = [metadata3 albumArtistName];
    }

    else
    {
      radioStationName = [metadata3 radioStationName];

      if (!radioStationName)
      {
        goto LABEL_9;
      }

      metadata4 = [itemCopy metadata];
      trackArtistName2 = [metadata4 radioStationName];
    }
  }

  metadata6 = trackArtistName2;

  if (metadata6)
  {
    v13 = MEMORY[0x1E696AEC0];
    metadata5 = [itemCopy metadata];
    localizedTitle = [metadata5 localizedTitle];
    v16 = MRLocalizedString(@"HANDOFF_PILL_TITLE_ARTIST_DELIMITER");
    v17 = [v13 stringWithFormat:@"%@ %@ %@", localizedTitle, v16, metadata6];

    goto LABEL_10;
  }

LABEL_9:
  metadata6 = [itemCopy metadata];
  metadata5 = [metadata6 localizedTitle];
  v17 = [metadata5 copy];
LABEL_10:

  return v17;
}

- (id)_persistArtworkData:(id)data forDevice:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  v7 = MEMORY[0x1E695DFF8];
  v8 = NSTemporaryDirectory();
  v9 = [v7 fileURLWithPath:v8];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v17];
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

  v12 = [v9 URLByAppendingPathComponent:deviceCopy];
  v16 = 0;
  [dataCopy writeToURL:v12 options:1 error:&v16];
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

- (void)_recalculateMigrationBehaviorAndProvideUpdatedDisplayContextForDevice:(id)device
{
  v23[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proactiveDevice = [(MRProximityProvider *)selfCopy proactiveDevice];
  if (proactiveDevice == deviceCopy)
  {
    remoteDevices = [(MRProximityProvider *)selfCopy remoteDevices];
    allValues = [remoteDevices allValues];
  }

  else
  {
    v23[0] = deviceCopy;
    allValues = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  }

  objc_sync_exit(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = allValues;
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
          v17[4] = selfCopy;
          v17[5] = v13;
          [(MRProximityProvider *)selfCopy _migrationBehaviorForRemoteDevice:v14 completion:v17];
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

- (id)_deviceForUID:(id)d
{
  dCopy = d;
  proactiveDevice = [(MRProximityProvider *)self proactiveDevice];
  v6 = [proactiveDevice uid];
  v7 = [dCopy isEqualToString:v6];

  if (v7)
  {
    proactiveDevice2 = [(MRProximityProvider *)self proactiveDevice];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    remoteDevices = [(MRProximityProvider *)selfCopy remoteDevices];
    proactiveDevice2 = [remoteDevices objectForKeyedSubscript:dCopy];

    objc_sync_exit(selfCopy);
  }

  return proactiveDevice2;
}

- (void)_migrateForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  migratingDevice = [(MRProximityProvider *)self migratingDevice];
  objc_sync_enter(migratingDevice);
  migratingDevice2 = [(MRProximityProvider *)self migratingDevice];

  if (migratingDevice2)
  {
    v10 = MEMORY[0x1E696AEC0];
    migratingDevice3 = [(MRProximityProvider *)self migratingDevice];
    v12 = [v10 stringWithFormat:@"A migration is already in progress for device %@.", migratingDevice3];

    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:3 description:v12];
    completionCopy[2](completionCopy, v13);

    objc_sync_exit(migratingDevice);
  }

  else
  {
    [(MRProximityProvider *)self setMigratingDevice:deviceCopy];
    objc_sync_exit(migratingDevice);

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MRProximityProvider__migrateForDevice_completion___block_invoke;
    v14[3] = &unk_1E76A4458;
    v14[4] = self;
    v15 = deviceCopy;
    v16 = completionCopy;
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

- (id)_outputDeviceWithUID:(id)d fromSource:(id)source andDestination:(id)destination
{
  dCopy = d;
  destinationCopy = destination;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__MRProximityProvider__outputDeviceWithUID_fromSource_andDestination___block_invoke;
  v19[3] = &unk_1E769CDC0;
  v9 = dCopy;
  v20 = v9;
  v10 = [source outputDevicesMatchingPredicate:v19];
  firstObject = [v10 firstObject];

  if (!firstObject)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __70__MRProximityProvider__outputDeviceWithUID_fromSource_andDestination___block_invoke_2;
    v17 = &unk_1E769CDC0;
    v18 = v9;
    v12 = [destinationCopy outputDevicesMatchingPredicate:&v14];
    firstObject = [v12 firstObject];
  }

  return firstObject;
}

- (void)_migrationBehaviorForRemoteDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v8 = [(MRProximityProvider *)self _deviceForUID:device];
  proactiveDevice = [(MRProximityProvider *)self proactiveDevice];
  [(MRProximityProvider *)self _migrationBehaviorForRemoteDevice:v8 proactiveDevice:proactiveDevice completion:completionCopy];
}

- (void)_migrationBehaviorForRemoteDevice:(id)device proactiveDevice:(id)proactiveDevice completion:(id)completion
{
  deviceCopy = device;
  proactiveDeviceCopy = proactiveDevice;
  completionCopy = completion;
  if (deviceCopy && proactiveDeviceCopy && [proactiveDeviceCopy isPrepared] && (objc_msgSend(deviceCopy, "isPrepared") & 1) != 0)
  {
    v11 = objc_alloc_init(MRMigrationBehaviorResult);
    playerState = [proactiveDeviceCopy playerState];
    v13 = [(MRProximityProvider *)self _effectivePlayerStateForDevice:deviceCopy];
    endpoint = [proactiveDeviceCopy endpoint];
    endpoint2 = [deviceCopy endpoint];
    v31 = 0;
    v16 = [(MRProximityProvider *)self migrationActionForProactivePlayer:playerState proactiveEndpoint:endpoint remotePlayer:v13 remoteEndpoint:endpoint2 reason:&v31];
    v17 = v31;

    [(MRMigrationBehaviorResult *)v11 setAction:v16];
    [(MRMigrationBehaviorResult *)v11 setReason:v17];
    if (v16 == 2)
    {
      v26 = v13;
      v27 = playerState;
      v18 = deviceCopy;
      endpoint3 = [v18 endpoint];
      v20 = proactiveDeviceCopy;
      endpoint4 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    }

    else
    {
      if (!v16)
      {
        completionCopy[2](completionCopy, v11);
LABEL_18:

        goto LABEL_9;
      }

      v26 = v13;
      v27 = playerState;
      v18 = proactiveDeviceCopy;
      endpoint3 = [v18 endpoint];
      v20 = deviceCopy;
      endpoint4 = [v20 endpoint];
    }

    v22 = endpoint4;
    v23 = [v18 uid];
    [(MRMigrationBehaviorResult *)v11 setSourceUID:v23];

    v24 = [v20 uid];
    [(MRMigrationBehaviorResult *)v11 setDestinationUID:v24];

    if ([endpoint3 isLocalEndpoint] & 1) == 0 && ((objc_msgSend(endpoint3, "isLocalEndpoint") & 1) != 0 || (objc_msgSend(v22, "isLocalEndpoint")))
    {
      v25 = dispatch_get_global_queue(0, 0);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __84__MRProximityProvider__migrationBehaviorForRemoteDevice_proactiveDevice_completion___block_invoke;
      v28[3] = &unk_1E769BCD0;
      v29 = v11;
      v30 = completionCopy;
      [endpoint3 canMigrateToEndpoint:v22 queue:v25 completion:v28];
    }

    else
    {
      completionCopy[2](completionCopy, v11);
    }

    playerState = v27;

    v13 = v26;
    goto LABEL_18;
  }

  completionCopy[2](completionCopy, 0);
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

- (id)_effectivePlayerStateForDevice:(id)device
{
  deviceCopy = device;
  prepareError = [deviceCopy prepareError];
  code = [prepareError code];

  playerState = [deviceCopy playerState];

  endpoint = [deviceCopy endpoint];
  isLocalEndpoint = [endpoint isLocalEndpoint];
  if (isLocalEndpoint)
  {
    isProxyGroupPlayer = 0;
  }

  else
  {
    endpoint2 = [deviceCopy endpoint];
    outputDevices = [endpoint2 outputDevices];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__MRProximityProvider__effectivePlayerStateForDevice___block_invoke;
    v20[3] = &unk_1E769CDC0;
    v3 = &v21;
    v21 = deviceCopy;
    v13 = [outputDevices mr_first:v20];
    isProxyGroupPlayer = [v13 isProxyGroupPlayer];
  }

  if (code == 42 || !playerState || isProxyGroupPlayer)
  {
    playerState2 = objc_alloc_init(MRNowPlayingPlayerResponse);
    v15 = [MRDestination alloc];
    endpoint3 = [deviceCopy endpoint];
    origin = [endpoint3 origin];
    v18 = [(MRDestination *)v15 initWithOrigin:origin];
    [(MRNowPlayingPlayerResponse *)playerState2 setDestination:v18];

    [(MRNowPlayingPlayerResponse *)playerState2 setPlaybackState:0];
    if (isLocalEndpoint)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  playerState2 = [deviceCopy playerState];
  if ((isLocalEndpoint & 1) == 0)
  {
LABEL_10:
  }

LABEL_11:

  return playerState2;
}

uint64_t __54__MRProximityProvider__effectivePlayerStateForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uid];
  v5 = [v3 containsUID:v4];

  return v5;
}

- (int64_t)migrationActionForProactivePlayer:(id)player proactiveEndpoint:(id)endpoint remotePlayer:(id)remotePlayer remoteEndpoint:(id)remoteEndpoint reason:(id *)reason
{
  playerCopy = player;
  endpointCopy = endpoint;
  remotePlayerCopy = remotePlayer;
  remoteEndpointCopy = remoteEndpoint;
  IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing([playerCopy playbackState]);
  v16 = MRMediaRemotePlaybackStateIsAdvancing([remotePlayerCopy playbackState]);
  playerPath = [playerCopy playerPath];
  origin = [playerPath origin];
  isLocal = [origin isLocal];

  if (!MRGroupSessionAllowsMigrationForEndpoint(endpointCopy))
  {
    v25 = 0;
    *reason = @"Proactive endpoint is QHO-restricted group session endpoint.";
    goto LABEL_7;
  }

  reasonCopy = reason;
  uniqueIdentifier = [endpointCopy uniqueIdentifier];
  uniqueIdentifier2 = [remoteEndpointCopy uniqueIdentifier];
  v22 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

  if (!v22)
  {
    v27 = !v16;
    if (!IsAdvancing || (v27 & 1) != 0)
    {
      if (!IsAdvancing || v16)
      {
        v24 = reasonCopy;
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

        playbackQueue = [playerCopy playbackQueue];
        contentItems = [playbackQueue contentItems];
        if ([contentItems count])
        {
          playerHasPlayedRecently = [playerCopy playerHasPlayedRecently];

          if (playerHasPlayedRecently)
          {
            v34 = MEMORY[0x1E696AEC0];
            playerLastPlayingDate = [playerCopy playerLastPlayingDate];
            [playerLastPlayingDate timeIntervalSinceNow];
            v37 = -v36;
            if (isLocal)
            {
              *reasonCopy = [v34 stringWithFormat:@"Proactive == local, has queue, was playing recently (%.0lf seconds ago) -> Push to remote.", *&v37];

              goto LABEL_19;
            }

            *reasonCopy = [v34 stringWithFormat:@"Proactive != local, has queue, was playing recently (%.0lf seconds ago) -> Add remote to group.", *&v37];

LABEL_24:
            v25 = 3;
            goto LABEL_7;
          }
        }

        else
        {
        }

        playbackQueue2 = [remotePlayerCopy playbackQueue];
        contentItems2 = [playbackQueue2 contentItems];
        if ([contentItems2 count])
        {
          playerHasPlayedRecently2 = [remotePlayerCopy playerHasPlayedRecently];

          if (playerHasPlayedRecently2)
          {
            v41 = MEMORY[0x1E696AEC0];
            playerLastPlayingDate2 = [playerCopy playerLastPlayingDate];
            [playerLastPlayingDate2 timeIntervalSinceNow];
            *reasonCopy = [v41 stringWithFormat:@"Remote has queue, was playing recently (%.0lf seconds ago) -> Pull from remote.", -v43];

            goto LABEL_5;
          }
        }

        else
        {
        }

        v25 = 0;
        *reasonCopy = @"Neither device has a recently played queue.";
        goto LABEL_7;
      }

      v29 = reasonCopy;
      if (isLocal)
      {
        v28 = @"Proactive == local and proactive is playing -> Push to remote.";
        goto LABEL_18;
      }

      v30 = @"Proactive != local and proactive is playing -> Add remote to group.";
    }

    else
    {
      if (isLocal)
      {
        v28 = @"Proactive == local and both proactive and remote are playing -> Push to remote.";
        v29 = reasonCopy;
LABEL_18:
        *v29 = v28;
LABEL_19:
        v25 = 1;
        goto LABEL_7;
      }

      v30 = @"Proactive != local and both proactive and remote are playing -> Add remote to group.";
      v29 = reasonCopy;
    }

    *v29 = v30;
    goto LABEL_24;
  }

  v23 = @"Proactive == remote -> Pull from remote back to local.";
  v24 = reasonCopy;
LABEL_4:
  *v24 = v23;
LABEL_5:
  v25 = 2;
LABEL_7:

  return v25;
}

+ (void)_migrate:(id)_migrate destinationEndpoint:(id)endpoint destinationUID:(id)d outputDevice:(id)device label:(id)label completion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  _migrateCopy = _migrate;
  endpointCopy = endpoint;
  dCopy = d;
  deviceCopy = device;
  labelCopy = label;
  completionCopy = completion;
  v16 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  [(MRPlaybackSessionMigrateRequest *)v16 setInitiator:@"proximity"];
  [(MRPlaybackSessionMigrateRequest *)v16 setPlayerOptions:[(MRPlaybackSessionMigrateRequest *)v16 playerOptions]| 4];
  [(MRPlaybackSessionMigrateRequest *)v16 setPlayerOptions:[(MRPlaybackSessionMigrateRequest *)v16 playerOptions]| 0x40];
  date = [MEMORY[0x1E695DF00] date];
  v18 = [(MRPlaybackSessionMigrateRequest *)v16 startEvent:@"MigrateProximity" role:1];
  v19 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [(MRPlaybackSessionMigrateRequest *)v16 requestID];
  v21 = [v19 initWithFormat:@"%@<%@>", @"MigrateProximity", requestID];

  if (labelCopy)
  {
    [v21 appendFormat:@" for %@", labelCopy];
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
  v36 = labelCopy;
  v58 = v36;
  v59 = @"MigrateProximity";
  v24 = date;
  v60 = v24;
  v25 = completionCopy;
  v61 = v25;
  v26 = MEMORY[0x1A58E3570](v56);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_208;
  v51[3] = &unk_1E76A4480;
  v27 = deviceCopy;
  v52 = v27;
  v28 = dCopy;
  v53 = v28;
  v54 = @"MigrateProximity";
  v29 = v23;
  v55 = v29;
  v30 = MEMORY[0x1A58E3570](v51);
  v31 = _migrateCopy;
  if (([_migrateCopy isLocalEndpoint] & 1) == 0 && (!endpointCopy || (objc_msgSend(endpointCopy, "isLocalEndpoint") & 1) == 0))
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_2;
    v46[3] = &unk_1E76A44A8;
    v50 = v26;
    v47 = @"MigrateProximity";
    v48 = v29;
    v49 = _migrateCopy;
    (v30)[2](v30, v46);

    goto LABEL_14;
  }

  v32 = endpointCopy;
  if (![endpointCopy isLocalEndpoint])
  {
    if ([_migrateCopy isLocalEndpoint])
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __97__MRProximityProvider__migrate_destinationEndpoint_destinationUID_outputDevice_label_completion___block_invoke_2_219;
      v39[3] = &unk_1E76A44D0;
      v45 = v26;
      v40 = v29;
      v32 = endpointCopy;
      v41 = endpointCopy;
      v42 = @"MigrateProximity";
      v43 = v28;
      v44 = _migrateCopy;
      (v30)[2](v30, v39);

      goto LABEL_15;
    }

    v33 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"Error in migrate. No cases matched. Please examine the state prior to this error."];
    (v26)[2](v26, v33);

    v31 = _migrateCopy;
LABEL_14:
    v32 = endpointCopy;
    goto LABEL_15;
  }

  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 2];
  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 4];
  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 0x10];
  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 0x20];
  [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]& 0xFFFFFFFFFFFFFFF7];
  [_migrateCopy migrateToEndpoint:endpointCopy request:v29 queue:MEMORY[0x1E69E96A0] completion:v26];
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

- (id)_nameForDevice:(id)device inEndpoint:(id)endpoint
{
  v37 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  outputDevices = [endpoint outputDevices];
  v7 = [outputDevices countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v25 = *v32;
    v26 = outputDevices;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(outputDevices);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        clusterComposition = [v11 clusterComposition];

        if (clusterComposition)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          clusterComposition2 = [v11 clusterComposition];
          v14 = [clusterComposition2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                  objc_enumerationMutation(clusterComposition2);
                }

                v18 = [*(*(&v27 + 1) + 8 * j) uid];
                v19 = [v18 isEqualToString:deviceCopy];

                if (v19)
                {
                  name = [v11 name];

                  outputDevices = v26;
                  goto LABEL_22;
                }
              }

              v15 = [clusterComposition2 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v25;
          outputDevices = v26;
        }

        else
        {
          v20 = [v11 uid];
          v21 = [v20 isEqualToString:deviceCopy];

          if (v21)
          {
            name = [v11 name];
            goto LABEL_22;
          }
        }
      }

      v8 = [outputDevices countByEnumeratingWithState:&v31 objects:v36 count:16];
      name = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    name = 0;
  }

LABEL_22:

  v23 = *MEMORY[0x1E69E9840];

  return name;
}

- (id)endpointForDevice:(id)device
{
  v3 = [(MRProximityProvider *)self _deviceForUID:device];
  endpoint = [v3 endpoint];

  return endpoint;
}

- (id)contentToDisplayForDevice:(id)device
{
  deviceCopy = device;
  behaviorResults = [(MRProximityProvider *)self behaviorResults];
  v6 = [behaviorResults objectForKeyedSubscript:deviceCopy];

  sourceUID = [v6 sourceUID];
  v8 = [(MRProximityProvider *)self _deviceForUID:sourceUID];
  playerState = [v8 playerState];

  return playerState;
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