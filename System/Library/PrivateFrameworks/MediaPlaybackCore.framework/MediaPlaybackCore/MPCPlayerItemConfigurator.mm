@interface MPCPlayerItemConfigurator
- (BOOL)_setupQueueItemForEnhancedAudioHLSPlayback:(id)playback playerItem:(id)item metadataWaitTime:(double *)time error:(id *)error;
- (BOOL)_shouldReloadEntireQueue;
- (BOOL)configureQueueItem:(id)item playerItem:(id)playerItem error:(id *)error;
- (BOOL)updateCurrentAudioRouteWithPickedRouteIfNeeded:(id)needed;
- (MFPlaybackStackController)stackController;
- (MFQueueItemTranslator)translator;
- (MPCModelGenericAVItem)currentItem;
- (MPCPlaybackEngine)playbackEngine;
- (MPCPlayerAudioRoute)currentAudioRoute;
- (MPCPlayerItemConfigurator)initWithPlaybackEngine:(id)engine stackController:(id)controller translator:(id)translator;
- (id)_HLSMetadataForAsset:(id)asset error:(id *)error;
- (id)_audioFormatsDictionaryWithHLSMetadata:(id)metadata;
- (id)_audioFormatsDictionaryWithHLSMetadataFromAsset:(id)asset metadataWaitTime:(double *)time error:(id *)error;
- (id)_modeObjectForPlayerItem:(id)item;
- (id)queuedItems;
- (void)_emitAudioFormatSelection:(id)selection item:(id)item;
- (void)_musicQualityPreferencesDidChange;
- (void)_playbackUserDefaultsEQPresetDidChangeNotification:(id)notification;
- (void)_resetBufferedAudio;
- (void)_setupNotifications;
- (void)_setupPlayer;
- (void)_setupQueueItemForHLSPlayback:(id)playback playerItem:(id)item;
- (void)_setupQueueItemForLossyAudioPlayback:(id)playback playerItem:(id)item;
- (void)_setupRoutingController;
- (void)_soundCheckEnabledChangedNotification:(id)notification;
- (void)_updatePreferredAudioFormatIfRequiredForItem:(id)item route:(id)route;
- (void)_updateQueueItemsAndPlayerForFormatChangeIfRequired;
- (void)configurePlayerItemForHEAACWorkaround:(id)workaround;
- (void)configurePlayerItemForSmartTransitions:(id)transitions;
- (void)dealloc;
- (void)engineDidChangeVocalAttenuationLevel:(id)level;
- (void)engineDidChangeVocalAttenuationState:(id)state;
- (void)processAudioQualityChanges;
- (void)routingController:(id)controller pickedRoutesDidChange:(id)change;
- (void)setupDefaultsDebouncer;
- (void)tearDownDefaultsDebouncer;
@end

@implementation MPCPlayerItemConfigurator

- (void)_setupPlayer
{
  v20 = *MEMORY[0x1E69E9840];
  currentItem = [(MPCPlayerItemConfigurator *)self currentItem];
  audioAssetTypeSelector = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
  spatialIsOff = [audioAssetTypeSelector spatialIsOff];

  v6 = @"Forced stereo";
  if (spatialIsOff)
  {
    v7 = 0;
  }

  else if ([(MPCPlayerItemConfigurator *)self passthroughIsEnabledAndActive])
  {
    v7 = 2;
  }

  else
  {
    v6 = @"Default device capability";
    v7 = 1;
  }

  stackController = [(MPCPlayerItemConfigurator *)self stackController];
  [stackController setSpatializationFormat:v7];

  playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    v12 = 138544130;
    v13 = engineID;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = currentItem;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - AVPlayer setup: %{public}@ - currentItem: %{public}@", &v12, 0x2Au);
  }
}

- (MPCModelGenericAVItem)currentItem
{
  stackController = [(MPCPlayerItemConfigurator *)self stackController];
  currentItem = [stackController currentItem];
  v5 = [(MPCPlayerItemConfigurator *)self _modeObjectForPlayerItem:currentItem];

  return v5;
}

- (MFPlaybackStackController)stackController
{
  WeakRetained = objc_loadWeakRetained(&self->_stackController);

  return WeakRetained;
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)configurePlayerItemForSmartTransitions:(id)transitions
{
  transitionsCopy = transitions;
  selfCopy = self;
  sub_1C5D3BAF8(transitionsCopy);
}

- (void)configurePlayerItemForHEAACWorkaround:(id)workaround
{
  workaroundCopy = workaround;
  selfCopy = self;
  sub_1C5D3BDFC(workaroundCopy);
}

- (MFQueueItemTranslator)translator
{
  WeakRetained = objc_loadWeakRetained(&self->_translator);

  return WeakRetained;
}

- (void)_resetBufferedAudio
{
  v14 = *MEMORY[0x1E69E9840];
  currentItem = [(MPCPlayerItemConfigurator *)self currentItem];
  if ([currentItem isAssetLoaded])
  {
    playerItem = [currentItem playerItem];
    playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [playbackEngine engineID];
      v8 = 138543874;
      v9 = engineID;
      v10 = 2048;
      selfCopy = self;
      v12 = 2114;
      v13 = playerItem;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AP] - resetAudioBufferedAhead for: %{public}@", &v8, 0x20u);
    }

    [playerItem resetAudioBufferedAhead];
  }
}

- (void)engineDidChangeVocalAttenuationState:(id)state
{
  vocalAttenuationController = [state vocalAttenuationController];
  if (vocalAttenuationController && (vocalAttenuationController[9] - 5) <= 2)
  {
    v5 = vocalAttenuationController;
    [(MPCPlayerItemConfigurator *)self _resetBufferedAudio];
    vocalAttenuationController = v5;
  }
}

- (void)engineDidChangeVocalAttenuationLevel:(id)level
{
  if ([level isVocalAttenuationEnabled])
  {

    [(MPCPlayerItemConfigurator *)self _resetBufferedAudio];
  }
}

- (void)_updatePreferredAudioFormatIfRequiredForItem:(id)item route:(id)route
{
  v40 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  routeCopy = route;
  if (itemCopy)
  {
    preferredFormat = [itemCopy preferredFormat];

    if (preferredFormat)
    {
      preferredFormat2 = [itemCopy preferredFormat];
      isDownloadedAsset = [itemCopy isDownloadedAsset];
      audioAssetTypeSelector = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
      v12 = audioAssetTypeSelector;
      if (isDownloadedAsset)
      {
        loadedAudioAssetType = [itemCopy loadedAudioAssetType];
        availableSortedFormats = [itemCopy availableSortedFormats];
        playbackEngine3 = [v12 audioFormatMatchingAudioAssetType:loadedAudioAssetType formats:availableSortedFormats route:routeCopy];
      }

      else
      {
        playbackEngine3 = [audioAssetTypeSelector preferredPlayerAudioFormatForItem:itemCopy route:routeCopy];
      }

      [itemCopy setAudioRoute:routeCopy];
      [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:playbackEngine3 item:itemCopy];
      format = [playbackEngine3 format];
      if ([itemCopy updatePreferredFormat:format] && objc_msgSend(itemCopy, "isAssetLoaded"))
      {
        playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          engineID = [playbackEngine engineID];
          v30 = 138544642;
          v31 = engineID;
          v32 = 2048;
          selfCopy4 = self;
          v34 = 2114;
          v35 = itemCopy;
          v36 = 1024;
          *v37 = [itemCopy isDownloadedAsset];
          *&v37[4] = 2112;
          *&v37[6] = preferredFormat2;
          v38 = 2112;
          v39 = format;
          _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - Preferred audio format changed [configuring player item] - item:%{public}@ - downloaded:%{BOOL}u - audio format: %@ -> %@", &v30, 0x3Au);
        }

        audioAssetTypeSelector2 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        [itemCopy configureAVPlayerItemWithAudioFormat:format forceSpatial:objc_msgSend(audioAssetTypeSelector2, "spatialIsAlwaysOn")];

        playbackEngine2 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          engineID2 = [playbackEngine2 engineID];
          playerItem = [itemCopy playerItem];
          mpc_setupDescription = [playerItem mpc_setupDescription];
          v30 = 138544130;
          v31 = engineID2;
          v32 = 2048;
          selfCopy4 = self;
          v34 = 2114;
          v35 = mpc_setupDescription;
          v29 = mpc_setupDescription;
          v36 = 2114;
          *v37 = itemCopy;
          _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - AVPlayerItem setup: %{public}@ - item:%{public}@", &v30, 0x2Au);
        }
      }

      goto LABEL_18;
    }

    playbackEngine3 = [(MPCPlayerItemConfigurator *)self playbackEngine];
    preferredFormat2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(preferredFormat2, OS_LOG_TYPE_DEFAULT))
    {
      format = [playbackEngine3 engineID];
      v30 = 138543874;
      v31 = format;
      v32 = 2048;
      selfCopy4 = self;
      v34 = 2114;
      v35 = itemCopy;
      v17 = "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - No configuration possible [no preferred format on item] - item: %{public}@";
      v18 = preferredFormat2;
      v19 = 32;
      goto LABEL_9;
    }
  }

  else
  {
    playbackEngine3 = [(MPCPlayerItemConfigurator *)self playbackEngine];
    preferredFormat2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(preferredFormat2, OS_LOG_TYPE_DEFAULT))
    {
      format = [playbackEngine3 engineID];
      v30 = 138543618;
      v31 = format;
      v32 = 2048;
      selfCopy4 = self;
      v17 = "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - No configuration possible [no player item]";
      v18 = preferredFormat2;
      v19 = 22;
LABEL_9:
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, v17, &v30, v19);
LABEL_18:
    }
  }
}

- (void)_updateQueueItemsAndPlayerForFormatChangeIfRequired
{
  v14 = *MEMORY[0x1E69E9840];
  currentAudioRoute = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  queuedItems = [(MPCPlayerItemConfigurator *)self queuedItems];
  v5 = [queuedItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(queuedItems);
        }

        [(MPCPlayerItemConfigurator *)self _updatePreferredAudioFormatIfRequiredForItem:*(*(&v9 + 1) + 8 * v8++) route:currentAudioRoute];
      }

      while (v6 != v8);
      v6 = [queuedItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(MPCPlayerItemConfigurator *)self _setupPlayer];
}

- (BOOL)_shouldReloadEntireQueue
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  queuedItems = [(MPCPlayerItemConfigurator *)self queuedItems];
  v4 = [queuedItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(queuedItems);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isAssetLoaded])
        {
          if (([v8 isHLSAsset] & 1) == 0)
          {
            audioAssetTypeSelector = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
            v10 = [audioAssetTypeSelector preferredAudioAssetTypeForItem:v8];
            type = [v10 type];

            if (type >= 3)
            {
              if ([v8 playerItemType] || (objc_msgSend(v8, "asset"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "URL"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isFileURL"), v13, v12, !v14))
              {
                v15 = 1;
                goto LABEL_15;
              }
            }
          }
        }
      }

      v5 = [queuedItems countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (id)_modeObjectForPlayerItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isAssetLoaded])
  {
    translator = [(MPCPlayerItemConfigurator *)self translator];
    v6 = [translator MPAVItemForMFPlayerItem:itemCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)queuedItems
{
  v20 = *MEMORY[0x1E69E9840];
  stackController = [(MPCPlayerItemConfigurator *)self stackController];
  nextItems = [stackController nextItems];

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(nextItems, "count") + 1}];
  currentItem = [(MPCPlayerItemConfigurator *)self currentItem];
  if (currentItem)
  {
    [v5 addObject:currentItem];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = nextItems;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(MPCPlayerItemConfigurator *)self _modeObjectForPlayerItem:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)updateCurrentAudioRouteWithPickedRouteIfNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentAudioRoute = selfCopy->_currentAudioRoute;
  if (!currentAudioRoute)
  {
    goto LABEL_5;
  }

  pickedRoute = [(MPCPlayerAudioRoute *)currentAudioRoute pickedRoute];
  if (pickedRoute == neededCopy)
  {
    v10 = 0;
    goto LABEL_7;
  }

  pickedRoute2 = [(MPCPlayerAudioRoute *)selfCopy->_currentAudioRoute pickedRoute];
  v9 = [neededCopy isEqual:pickedRoute2];

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v11 = [MPCPlayerAudioRoute alloc];
    pickedRoute = [(MPCPlayerItemConfigurator *)selfCopy audioAssetTypeSelector];
    v12 = -[MPCPlayerAudioRoute initWithRoute:spatialIsAlwaysOn:](v11, "initWithRoute:spatialIsAlwaysOn:", neededCopy, [pickedRoute spatialIsAlwaysOn]);
    v13 = selfCopy->_currentAudioRoute;
    selfCopy->_currentAudioRoute = v12;

    v10 = 1;
LABEL_7:

    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:
  objc_sync_exit(selfCopy);

  return v10;
}

- (MPCPlayerAudioRoute)currentAudioRoute
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_currentAudioRoute)
  {
    v3 = [MPCPlayerAudioRoute alloc];
    pickedRoutes = [(MPAVRoutingController *)selfCopy->_routingController pickedRoutes];
    firstObject = [pickedRoutes firstObject];
    audioAssetTypeSelector = [(MPCPlayerItemConfigurator *)selfCopy audioAssetTypeSelector];
    v7 = -[MPCPlayerAudioRoute initWithRoute:spatialIsAlwaysOn:](v3, "initWithRoute:spatialIsAlwaysOn:", firstObject, [audioAssetTypeSelector spatialIsAlwaysOn]);
    currentAudioRoute = selfCopy->_currentAudioRoute;
    selfCopy->_currentAudioRoute = v7;
  }

  objc_sync_exit(selfCopy);

  v9 = selfCopy->_currentAudioRoute;

  return v9;
}

- (void)routingController:(id)controller pickedRoutesDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    v11 = 138543874;
    v12 = engineID;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = changeCopy;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - Route changed to %{public}@", &v11, 0x20u);
  }

  firstObject = [changeCopy firstObject];
  v10 = [(MPCPlayerItemConfigurator *)self updateCurrentAudioRouteWithPickedRouteIfNeeded:firstObject];

  if (v10)
  {
    [(MPCPlayerItemConfigurator *)self _updateQueueItemsAndPlayerForFormatChangeIfRequired];
  }
}

- (id)_audioFormatsDictionaryWithHLSMetadata:(id)metadata
{
  v26 = *MEMORY[0x1E69E9840];
  if (metadata)
  {
    v4 = MEMORY[0x1E695DF20];
    value = [metadata value];
    v19 = 0;
    v6 = [v4 msv_dictionaryWithContentsOfBase64EncodedJSONString:value error:&v19];
    v7 = v19;

    if (v7)
    {
      playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        engineID = [playbackEngine engineID];
        *buf = 138543874;
        v21 = engineID;
        v22 = 2048;
        selfCopy = self;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - Error decoding HLS metadata [Clearing audioFormatsDictionary] - Error:%{public}@", buf, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __68__MPCPlayerItemConfigurator__audioFormatsDictionaryWithHLSMetadata___block_invoke;
      v17 = &unk_1E82351A0;
      v18 = dictionary;
      playbackEngine = dictionary;
      [v6 enumerateKeysAndObjectsUsingBlock:&v14];
      v11 = [playbackEngine copy:v14];
      v9 = v18;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __68__MPCPlayerItemConfigurator__audioFormatsDictionaryWithHLSMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[MPCPlayerAudioFormat alloc] initWithJSONDictionaryRepresentation:v5 stableVariantID:v6];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_HLSMetadataForAsset:(id)asset error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v6 = [asset mpc_synchronousHLSSessionDataWithTimeout:5 error:&v16];
  v7 = v16;
  if (v7 || ([v6 value], v8 = objc_claimAutoreleasedReturnValue(), v9 = _NSIsNSString(), v8, (v9 & 1) == 0))
  {
    playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      engineID = [playbackEngine engineID];
      *buf = 138543874;
      v18 = engineID;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - Error retrieving HLS metadata - Error:%{public}@", buf, 0x20u);
    }

    if (error)
    {
      v14 = v7;
      v10 = 0;
      *error = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (id)_audioFormatsDictionaryWithHLSMetadataFromAsset:(id)asset metadataWaitTime:(double *)time error:(id *)error
{
  v8 = MEMORY[0x1E695DF00];
  assetCopy = asset;
  [v8 timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [(MPCPlayerItemConfigurator *)self _HLSMetadataForAsset:assetCopy error:error];

  if (time)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *time = v13 - v11;
  }

  v14 = [(MPCPlayerItemConfigurator *)self _audioFormatsDictionaryWithHLSMetadata:v12];

  return v14;
}

- (void)_emitAudioFormatSelection:(id)selection item:(id)item
{
  v24[3] = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  itemCopy = item;
  queueSectionID = [itemCopy queueSectionID];
  queueItemID = [itemCopy queueItemID];

  playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v23[0] = @"queue-section-id";
  v23[1] = @"queue-item-id";
  v19 = queueItemID;
  v20 = queueSectionID;
  v24[0] = queueSectionID;
  v24[1] = queueItemID;
  v23[2] = @"item-audio-format-selection-metadata";
  v21[0] = @"audio-format-selection-format";
  format = [selectionCopy format];
  null = format;
  if (!format)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22[0] = null;
  v21[1] = @"audio-format-selection-explanation";
  explanation = [selectionCopy explanation];
  v22[1] = explanation;
  v21[2] = @"audio-format-selection-justification";
  justification = [selectionCopy justification];
  null2 = justification;
  if (!justification)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null2;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  [eventStream emitEventType:@"audio-format-selection" payload:v18];

  if (!justification)
  {
  }

  if (!format)
  {
  }
}

- (void)_setupQueueItemForLossyAudioPlayback:(id)playback playerItem:(id)item
{
  v33[2] = *MEMORY[0x1E69E9840];
  playbackCopy = playback;
  itemCopy = item;
  v32[0] = @"LQ";
  v8 = +[MPCPlayerAudioFormat lossyLowQualityStereoFormat];
  v33[0] = v8;
  v32[1] = @"HQ";
  v9 = +[MPCPlayerAudioFormat lossyHighQualityStereoFormat];
  v33[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

  [playbackCopy updateAudioFormatsDictionary:v10];
  audioAssetTypeSelector = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
  availableSortedFormats = [playbackCopy availableSortedFormats];
  currentAudioRoute = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
  v14 = [audioAssetTypeSelector preferredAudioFormatForAudioFormats:availableSortedFormats route:currentAudioRoute];

  format = [v14 format];
  [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v14 item:playbackCopy];
  v16 = playbackCopy;
  v23 = format;
  v17 = format;
  msv_dispatch_sync_on_main_queue();
  if ([v16 mediaType] == 1024)
  {
    v18 = 7;
  }

  else
  {
    if ([v16 mediaType] != 2)
    {
      goto LABEL_6;
    }

    v18 = 4;
  }

  [itemCopy setAllowedAudioSpatializationFormats:v18];
LABEL_6:
  playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    preferredFormat = [v16 preferredFormat];
    *buf = 138544130;
    v25 = engineID;
    v26 = 2048;
    selfCopy = self;
    v28 = 2114;
    v29 = v16;
    v30 = 2114;
    v31 = preferredFormat;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - No enhanced audio format [Using pre-defined lossy formats] - item:%{public}@ - Preferred/active format:%{public}@", buf, 0x2Au);
  }
}

uint64_t __77__MPCPlayerItemConfigurator__setupQueueItemForLossyAudioPlayback_playerItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) currentAudioRoute];
  [*(a1 + 32) setAudioRoute:v2];

  [*(a1 + 32) updatePreferredFormat:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return [v3 updateActiveFormat:v4 justification:100];
}

- (void)_setupQueueItemForHLSPlayback:(id)playback playerItem:(id)item
{
  v29 = *MEMORY[0x1E69E9840];
  playbackCopy = playback;
  itemCopy = item;
  asset = [itemCopy asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    audioAssetTypeSelector = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
    spatialPreference = [audioAssetTypeSelector spatialPreference];
    audioAssetTypeSelector2 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
    spatialIsAlwaysOn = [audioAssetTypeSelector2 spatialIsAlwaysOn];
    audioAssetTypeSelector3 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
    [itemCopy mpc_setupForHLSPlaybackWithPreferredFormat:0 spatialPreference:spatialPreference forceSpatial:spatialIsAlwaysOn maxResolution:objc_msgSend(audioAssetTypeSelector3 isDownloadedAsset:"maxResolution"), objc_msgSend(playbackCopy, "isDownloadedAsset")];

    v20 = MEMORY[0x1E69E9820];
    v15 = playbackCopy;
    msv_dispatch_sync_on_main_queue();
    v16 = [(MPCPlayerItemConfigurator *)self playbackEngine:v20];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [v16 engineID];
      mpc_setupDescription = [itemCopy mpc_setupDescription];
      *buf = 138544130;
      v22 = engineID;
      v23 = 2048;
      selfCopy = self;
      v25 = 2114;
      v26 = mpc_setupDescription;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - AVPlayerItem setup:%{public}@ - item:%{public}@", buf, 0x2Au);
    }
  }
}

void __70__MPCPlayerItemConfigurator__setupQueueItemForHLSPlayback_playerItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) currentAudioRoute];
  [*(a1 + 32) setAudioRoute:v2];
}

- (BOOL)_setupQueueItemForEnhancedAudioHLSPlayback:(id)playback playerItem:(id)item metadataWaitTime:(double *)time error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  playbackCopy = playback;
  itemCopy = item;
  asset = [itemCopy asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    asset2 = [itemCopy asset];
    v13 = [MPCPlayerItemConfigurator _audioFormatsDictionaryWithHLSMetadataFromAsset:"_audioFormatsDictionaryWithHLSMetadataFromAsset:metadataWaitTime:error:" metadataWaitTime:? error:?];
    v14 = 0;
    v15 = v14 == 0;
    v66 = v14;
    if (v14)
    {
      v16 = v14;
      playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        engineID = [playbackEngine engineID];
        *buf = 138544130;
        v72 = engineID;
        v73 = 2048;
        selfCopy4 = self;
        v75 = 2114;
        v76 = playbackCopy;
        v77 = 2114;
        v78 = v66;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - Error retrieving audio formats - item:%{public}@ - error:%{public}@", buf, 0x2Au);

        v16 = v66;
      }

      v20 = v13;

      v21 = [MPCPlayerAudioFormatSelection alloc];
      v69 = @"Error";
      v22 = [v16 debugDescription];
      null = v22;
      if (!v22)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v70 = null;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v25 = [(MPCPlayerAudioFormatSelection *)v21 initWithExplanation:@" Error retrieving audio formats" justification:v24];

      if (!v22)
      {
      }

      [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v25 item:playbackCopy];
      if (error)
      {
        v26 = v66;
        v27 = v66;
        *error = v66;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      isDownloadedAsset = [playbackCopy isDownloadedAsset];
      v64 = v13;
      if (v13)
      {
        [playbackCopy updateAudioFormatsDictionary:v13];
        audioAssetTypeSelector = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        v61 = isDownloadedAsset;
        if (isDownloadedAsset)
        {
          loadedAudioAssetType = [playbackCopy loadedAudioAssetType];
          availableSortedFormats = [playbackCopy availableSortedFormats];
          currentAudioRoute = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
          [audioAssetTypeSelector audioFormatMatchingAudioAssetType:loadedAudioAssetType formats:availableSortedFormats route:currentAudioRoute];
        }

        else
        {
          availableSortedFormats = [playbackCopy availableSortedFormats];
          currentAudioRoute = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
          [audioAssetTypeSelector preferredAudioFormatForAudioFormats:availableSortedFormats route:currentAudioRoute];
        }
        v41 = ;
        v63 = v15;

        format = [(MPCPlayerAudioFormatSelection *)v41 format];
        v62 = v41;
        [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v41 item:playbackCopy];
        v43 = playbackCopy;
        v67 = v43;
        v68 = format;
        v60 = format;
        msv_dispatch_sync_on_main_queue();
        playbackEngine2 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v45 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          engineID2 = [playbackEngine2 engineID];
          preferredFormat = [v43 preferredFormat];
          *buf = 138544130;
          v72 = engineID2;
          v73 = 2048;
          selfCopy4 = self;
          v75 = 2114;
          v76 = v43;
          v77 = 2114;
          v78 = preferredFormat;
          _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - Audio formats available in HLS session data [Setting up player item] - item:%{public}@ - Preferred format:%{public}@", buf, 0x2Au);
        }

        v48 = v43;
        preferredFormat2 = [v43 preferredFormat];
        audioAssetTypeSelector2 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        spatialPreference = [audioAssetTypeSelector2 spatialPreference];
        audioAssetTypeSelector3 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        spatialIsAlwaysOn = [audioAssetTypeSelector3 spatialIsAlwaysOn];
        audioAssetTypeSelector4 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        [itemCopy mpc_setupForHLSPlaybackWithPreferredFormat:preferredFormat2 spatialPreference:spatialPreference forceSpatial:spatialIsAlwaysOn maxResolution:objc_msgSend(audioAssetTypeSelector4 isDownloadedAsset:"maxResolution"), v61];

        playbackEngine3 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v56 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          engineID3 = [playbackEngine3 engineID];
          mpc_setupDescription = [itemCopy mpc_setupDescription];
          *buf = 138544130;
          v72 = engineID3;
          v73 = 2048;
          selfCopy4 = self;
          v75 = 2114;
          v76 = mpc_setupDescription;
          v77 = 2114;
          v78 = v48;
          _os_log_impl(&dword_1C5C61000, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - AVPlayerItem setup:%{public}@ - item:%{public}@", buf, 0x2Au);
        }

        v15 = v63;
        v20 = v64;
        v26 = 0;
        v25 = v62;
        goto LABEL_25;
      }

      playbackEngine4 = [(MPCPlayerItemConfigurator *)self playbackEngine];
      v34 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        engineID4 = [playbackEngine4 engineID];
        *buf = 138543874;
        v72 = engineID4;
        v73 = 2048;
        selfCopy4 = self;
        v75 = 2114;
        v76 = playbackCopy;
        _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - No audio formats in HLS session data [Setting up player item using preferred audio asset type] - item:%{public}@", buf, 0x20u);
      }

      v25 = [[MPCPlayerAudioFormatSelection alloc] initWithExplanation:@"No audio formats in HLS session data [Attempting setup with preferred type]" justification:0];
      [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v25 item:playbackCopy];
      audioAssetTypeSelector5 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
      spatialPreference2 = [audioAssetTypeSelector5 spatialPreference];
      audioAssetTypeSelector6 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
      spatialIsAlwaysOn2 = [audioAssetTypeSelector6 spatialIsAlwaysOn];
      audioAssetTypeSelector7 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
      [itemCopy mpc_setupForHLSPlaybackWithPreferredFormat:0 spatialPreference:spatialPreference2 forceSpatial:spatialIsAlwaysOn2 maxResolution:objc_msgSend(audioAssetTypeSelector7 isDownloadedAsset:"maxResolution"), isDownloadedAsset];

      v20 = 0;
    }

    v26 = v66;
    goto LABEL_25;
  }

  v15 = 0;
LABEL_26:

  return v15;
}

uint64_t __106__MPCPlayerItemConfigurator__setupQueueItemForEnhancedAudioHLSPlayback_playerItem_metadataWaitTime_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) currentAudioRoute];
  [*(a1 + 32) setAudioRoute:v2];

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return [v3 updatePreferredFormat:v4];
}

- (void)processAudioQualityChanges
{
  v20 = *MEMORY[0x1E69E9840];
  playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
  if (playbackEngine)
  {
    currentItem = [(MPCPlayerItemConfigurator *)self currentItem];
    if (([playbackEngine isVocalAttenuationEnabled] & 1) == 0)
    {
      if (currentItem)
      {
        _shouldReloadEntireQueue = [(MPCPlayerItemConfigurator *)self _shouldReloadEntireQueue];
        playbackEngine2 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (_shouldReloadEntireQueue)
        {
          if (v8)
          {
            engineID = [playbackEngine2 engineID];
            queuedItems = [(MPCPlayerItemConfigurator *)self queuedItems];
            *buf = 138543874;
            v15 = engineID;
            v16 = 2048;
            selfCopy2 = self;
            v18 = 2114;
            v19 = queuedItems;
            _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - Preferred asset type changed [reloading all queued items] - items:%{public}@", buf, 0x20u);
          }

          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __55__MPCPlayerItemConfigurator_processAudioQualityChanges__block_invoke;
          v13[3] = &unk_1E8238800;
          v13[4] = self;
          [playbackEngine reloadQueueForReason:0 completion:v13];
        }

        else
        {
          if (v8)
          {
            engineID2 = [playbackEngine2 engineID];
            queuedItems2 = [(MPCPlayerItemConfigurator *)self queuedItems];
            *buf = 138543874;
            v15 = engineID2;
            v16 = 2048;
            selfCopy2 = self;
            v18 = 2114;
            v19 = queuedItems2;
            _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - Preferred asset type changed [reconfiguring all queued items & player] - items:%{public}@", buf, 0x20u);
          }

          [(MPCPlayerItemConfigurator *)self _updateQueueItemsAndPlayerForFormatChangeIfRequired];
        }
      }

      else
      {
        [(MPCPlayerItemConfigurator *)self _setupPlayer];
      }
    }
  }
}

void __55__MPCPlayerItemConfigurator_processAudioQualityChanges__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) playbackEngine];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 engineID];
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - Failed to reload items [Preferred asset type changed] - error:%{public}@", &v8, 0x20u);
    }
  }
}

- (void)tearDownDefaultsDebouncer
{
  userDefaultsDebouncer = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];

  if (userDefaultsDebouncer)
  {
    userDefaultsDebouncer2 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];
    dispatch_source_cancel(userDefaultsDebouncer2);

    [(MPCPlayerItemConfigurator *)self setUserDefaultsDebouncer:0];
  }
}

- (void)setupDefaultsDebouncer
{
  [(MPCPlayerItemConfigurator *)self tearDownDefaultsDebouncer];
  userDefaultsDebouncer = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];

  if (!userDefaultsDebouncer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    [(MPCPlayerItemConfigurator *)self setUserDefaultsDebouncer:v4];

    v5 = dispatch_time(0, 300000000);
    userDefaultsDebouncer2 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];
    dispatch_source_set_timer(userDefaultsDebouncer2, v5, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(&location, self);
    userDefaultsDebouncer3 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51__MPCPlayerItemConfigurator_setupDefaultsDebouncer__block_invoke;
    handler[3] = &unk_1E8235150;
    objc_copyWeak(&v10, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(userDefaultsDebouncer3, handler);

    userDefaultsDebouncer4 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];
    dispatch_resume(userDefaultsDebouncer4);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __51__MPCPlayerItemConfigurator_setupDefaultsDebouncer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) playbackEngine];
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 engineID];
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - Processing user default audio quality change", &v7, 0x16u);
    }

    [WeakRetained processAudioQualityChanges];
    [WeakRetained tearDownDefaultsDebouncer];
  }
}

- (void)_soundCheckEnabledChangedNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    *buf = 138543874;
    v10 = engineID;
    v11 = 2048;
    selfCopy = self;
    v13 = 1024;
    soundCheckEnabled = [standardUserDefaults soundCheckEnabled];
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p: _soundCheckEnabledChangedNotification soundCheckEnabled=%{BOOL}u", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPCPlayerItemConfigurator__soundCheckEnabledChangedNotification___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__MPCPlayerItemConfigurator__soundCheckEnabledChangedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) queuedItems];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [v6 feeder];
        [v7 applyVolumeNormalizationForItem:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)_playbackUserDefaultsEQPresetDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MPCPlayerItemConfigurator__playbackUserDefaultsEQPresetDidChangeNotification___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__MPCPlayerItemConfigurator__playbackUserDefaultsEQPresetDidChangeNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v3 = [v2 musicEQSetting];
  [*(a1 + 32) setEqSetting:v3];

  v4 = [*(a1 + 32) playbackEngine];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 engineID];
    v7 = *(a1 + 32);
    v8 = [v7 eqSetting];
    v18 = 138543874;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - Setting EQ to %{public}@", &v18, 0x20u);
  }

  v9 = [*(a1 + 32) stackController];
  v10 = [v9 currentItem];

  if ([v10 isAssetLoaded])
  {
    v11 = [*(a1 + 32) translator];
    v12 = [v11 MPAVItemForMFPlayerItem:v10];

    v13 = [*(a1 + 32) playbackEngine];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 engineID];
      v16 = *(a1 + 32);
      v18 = 138543874;
      v19 = v15;
      v20 = 2048;
      v21 = v16;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - Setting up EQ for %{public}@", &v18, 0x20u);
    }

    v17 = [*(a1 + 32) eqSetting];
    [v12 setupEQPresetWithDefaultPreset:{objc_msgSend(v17, "avPreset")}];
  }
}

- (void)_musicQualityPreferencesDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MPCPlayerItemConfigurator__musicQualityPreferencesDidChange__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__MPCPlayerItemConfigurator__musicQualityPreferencesDidChange__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) stackController];
  v3 = [v2 currentItem];

  if ([v3 isAssetLoaded])
  {
    [*(a1 + 32) setupDefaultsDebouncer];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) queuedItems];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * v8++) disableItemReuse];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }

  v9 = [*(a1 + 32) playbackEngine];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 engineID];
    v12 = *(a1 + 32);
    *buf = 138543618;
    v18 = v11;
    v19 = 2048;
    v20 = v12;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p: _highQualityMusicStreamingOnCellularDidChange: reloading items [pref changed] keepCurrentItem=YES", buf, 0x16u);
  }

  [v9 reloadItemsKeepingCurrentItem:1 allowReuse:0];
}

- (void)_setupNotifications
{
  v3 = objc_alloc_init(AudioQualityPreferenceConfigurationObserver);
  [(MPCPlayerItemConfigurator *)self setAudioQualityPreferenceObserver:v3];

  objc_initWeak(&location, self);
  audioQualityPreferenceObserver = [(MPCPlayerItemConfigurator *)self audioQualityPreferenceObserver];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__MPCPlayerItemConfigurator__setupNotifications__block_invoke;
  v10 = &unk_1E8239500;
  objc_copyWeak(&v11, &location);
  [audioQualityPreferenceObserver beginObservationWithPreferenceChangeClosure:&v7];

  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__playbackUserDefaultsEQPresetDidChangeNotification_ name:*MEMORY[0x1E6970360] object:standardUserDefaults];
  [defaultCenter addObserver:self selector:sel__soundCheckEnabledChangedNotification_ name:*MEMORY[0x1E6970378] object:standardUserDefaults];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__MPCPlayerItemConfigurator__setupNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _musicQualityPreferencesDidChange];
    WeakRetained = v2;
  }
}

- (void)_setupRoutingController
{
  v3 = objc_alloc(MEMORY[0x1E6970490]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithName:v5];
  routingController = self->_routingController;
  self->_routingController = v6;

  [(MPAVRoutingController *)self->_routingController setFetchAvailableRoutesSynchronously:1];
  v8 = self->_routingController;

  [(MPAVRoutingController *)v8 setDelegate:self];
}

- (BOOL)configureQueueItem:(id)item playerItem:(id)playerItem error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  playerItemCopy = playerItem;
  playbackEngine = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    *buf = 138544130;
    *&buf[4] = engineID;
    v72 = 2048;
    selfCopy3 = self;
    v74 = 2114;
    v75 = itemCopy;
    v76 = 2114;
    v77 = playerItemCopy;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - Configuring queue item:%{public}@ player item:%{public}@", buf, 0x2Au);
  }

  queueSectionID = [itemCopy queueSectionID];
  queueItemID = [itemCopy queueItemID];
  playbackEngine2 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v16 = playbackEngine2;
  if (queueSectionID)
  {
    v17 = queueItemID == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v65 = v18;
  if (!v17)
  {
    eventStream = [playbackEngine2 eventStream];
    v69[0] = @"queue-section-id";
    v69[1] = @"queue-item-id";
    v70[0] = queueSectionID;
    v70[1] = queueItemID;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
    [eventStream emitEventType:@"item-configuration-begin" payload:v20];
  }

  contentItemID = [itemCopy contentItemID];
  [playerItemCopy setContentItemID:contentItemID];

  v22 = [itemCopy description];
  [playerItemCopy setTitle:v22];

  [playerItemCopy setPrefersSeekOverSkip:{objc_msgSend(itemCopy, "prefersSeekOverSkip")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = itemCopy;
    if ([v23 isRadioStreamPlayback])
    {
      v24 = @"radio-stream";
    }

    else
    {
      if (![v23 isRadioPlayback])
      {
LABEL_17:

        goto LABEL_18;
      }

      v24 = @"radio";
    }

    [playerItemCopy setModelTypeName:v24];
    stationStringID = [v23 stationStringID];
    [playerItemCopy setModelStringID:stationStringID];

    goto LABEL_17;
  }

LABEL_18:
  preferredAudioTimePitchAlgorithm = [itemCopy preferredAudioTimePitchAlgorithm];
  [playerItemCopy setAudioTimePitchAlgorithm:preferredAudioTimePitchAlgorithm];

  [itemCopy setupWithPlaybackInfo];
  eqSetting = [(MPCPlayerItemConfigurator *)self eqSetting];
  avPreset = [eqSetting avPreset];

  [itemCopy setupEQPresetWithDefaultPreset:avPreset];
  [itemCopy _applyLoudnessInfo];
  feeder = [itemCopy feeder];
  [feeder applyVolumeNormalizationForItem:itemCopy];

  [playerItemCopy _setTimeJumpedNotificationIncludesExtendedDiagnosticPayload:1];
  [(MPCPlayerItemConfigurator *)self configurePlayerItemForHEAACWorkaround:playerItemCopy];
  if ([v16 isVocalAttenuationEnabled])
  {
    playbackEngine3 = [(MPCPlayerItemConfigurator *)self playbackEngine];
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      [playbackEngine3 engineID];
      errorCopy = error;
      v33 = v16;
      v34 = queueItemID;
      v36 = v35 = queueSectionID;
      *buf = 138543874;
      *&buf[4] = v36;
      v72 = 2048;
      selfCopy3 = self;
      v74 = 2114;
      v75 = itemCopy;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AP] - Configuring item for Suntory: %{public}@", buf, 0x20u);

      queueSectionID = v35;
      queueItemID = v34;
      v16 = v33;
      error = errorCopy;
    }

    vocalAttenuationController = [v16 vocalAttenuationController];
    [itemCopy setConfiguredForVocalAttenuation:{objc_msgSend(vocalAttenuationController, "configureQueueItem:", itemCopy)}];
LABEL_22:

    goto LABEL_33;
  }

  if ([v16 isAudioAnalyzerEnabled])
  {
    audioAnalyzer = [v16 audioAnalyzer];
    [audioAnalyzer configurePlayerItem:playerItemCopy];
  }

  if (_os_feature_enabled_impl() && ICCurrentApplicationIsSystemApp() && +[MPCPlaybackEngine deviceSupportsSmartTransitions])
  {
    queueController = [v16 queueController];
    vocalAttenuationController = [queueController transitionTogglable];

    if (vocalAttenuationController && [vocalAttenuationController transitionStyle] == 1)
    {
      v61 = queueSectionID;
      playbackEngine4 = [(MPCPlayerItemConfigurator *)self playbackEngine];
      v41 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        engineID2 = [playbackEngine4 engineID];
        *buf = 138543874;
        *&buf[4] = engineID2;
        v72 = 2048;
        selfCopy3 = self;
        v74 = 2114;
        v75 = itemCopy;
        _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AP] - Configuring item for Alchemy: %{public}@", buf, 0x20u);
      }

      [(MPCPlayerItemConfigurator *)self configurePlayerItemForSmartTransitions:playerItemCopy];
      queueSectionID = v61;
    }

    goto LABEL_22;
  }

LABEL_33:
  *buf = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  v42 = itemCopy;
  if (![v42 isHLSAsset])
  {
    goto LABEL_40;
  }

  if ([v42 loadedAudioAssetType] < 3)
  {
    if (([v42 hasVideo] & 1) != 0 || objc_msgSend(v42, "isRadioStreamPlayback"))
    {
      [(MPCPlayerItemConfigurator *)self _setupQueueItemForHLSPlayback:v42 playerItem:playerItemCopy];
      goto LABEL_41;
    }

LABEL_40:
    [(MPCPlayerItemConfigurator *)self _setupQueueItemForLossyAudioPlayback:v42 playerItem:playerItemCopy];
    goto LABEL_41;
  }

  [(MPCPlayerItemConfigurator *)self _setupQueueItemForEnhancedAudioHLSPlayback:v42 playerItem:playerItemCopy metadataWaitTime:buf error:error];
LABEL_41:

LABEL_42:
  if (v65)
  {
    eventStream2 = [v16 eventStream];
    v67[0] = @"queue-section-id";
    v67[1] = @"queue-item-id";
    v68[0] = queueSectionID;
    v68[1] = queueItemID;
    v67[2] = @"item-configured-eq";
    v43 = MEMORY[0x1E696AD98];
    eqSetting2 = [(MPCPlayerItemConfigurator *)self eqSetting];
    v58 = [v43 numberWithInteger:{objc_msgSend(eqSetting2, "preset")}];
    v68[2] = v58;
    v67[3] = @"item-configured-sc-vol-normalization";
    v44 = MEMORY[0x1E696AD98];
    [itemCopy soundCheckVolumeNormalization];
    v57 = [v44 numberWithFloat:?];
    v68[3] = v57;
    v67[4] = @"item-configured-loudness";
    loudnessInfo = [playerItemCopy loudnessInfo];
    v46 = loudnessInfo;
    if (!loudnessInfo)
    {
      loudnessInfo = [MEMORY[0x1E695DFB0] null];
    }

    v55 = loudnessInfo;
    v68[4] = loudnessInfo;
    v67[5] = @"hls-metadata-wait-time";
    v62 = queueSectionID;
    if (*buf > 0.0)
    {
      [MEMORY[0x1E696AD98] numberWithDouble:*buf];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }

    v66 = v16;
    v56 = v60 = queueItemID;
    v68[5] = v56;
    v67[6] = @"audio-route";
    currentAudioRoute = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
    null = currentAudioRoute;
    if (!currentAudioRoute)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v68[6] = null;
    v67[7] = @"supports-vocal-attenuation";
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "supportsVocalAttenuation")}];
    v68[7] = v49;
    v67[8] = @"vocal-attenuation-configured";
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isConfiguredForVocalAttenuation")}];
    v68[8] = v50;
    v67[9] = @"vocal-attenuation-available";
    v51 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v66, "isVocalAttenuationAvailable")}];
    v68[9] = v51;
    v67[10] = @"vocal-attenuation-enabled";
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v66, "isVocalAttenuationEnabled")}];
    v68[10] = v52;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:11];
    [eventStream2 emitEventType:@"item-configuration-end" payload:v53];

    if (!currentAudioRoute)
    {
    }

    queueItemID = v60;
    if (!v46)
    {
    }

    queueSectionID = v62;
    v16 = v66;
  }

  return 1;
}

- (void)dealloc
{
  audioQualityPreferenceObserver = [(MPCPlayerItemConfigurator *)self audioQualityPreferenceObserver];
  [audioQualityPreferenceObserver suspendObservation];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = MPCPlayerItemConfigurator;
  [(MPCPlayerItemConfigurator *)&v5 dealloc];
}

- (MPCPlayerItemConfigurator)initWithPlaybackEngine:(id)engine stackController:(id)controller translator:(id)translator
{
  engineCopy = engine;
  controllerCopy = controller;
  translatorCopy = translator;
  v19.receiver = self;
  v19.super_class = MPCPlayerItemConfigurator;
  v11 = [(MPCPlayerItemConfigurator *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_playbackEngine, engineCopy);
    [engineCopy addEngineObserver:v12];
    objc_storeWeak(&v12->_stackController, controllerCopy);
    objc_storeWeak(&v12->_translator, translatorCopy);
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    musicEQSetting = [standardUserDefaults musicEQSetting];
    eqSetting = v12->_eqSetting;
    v12->_eqSetting = musicEQSetting;

    v16 = [[MPCAudioAssetTypeSelector alloc] initWithPlaybackEngine:engineCopy];
    audioAssetTypeSelector = v12->_audioAssetTypeSelector;
    v12->_audioAssetTypeSelector = v16;

    [(MPCPlayerItemConfigurator *)v12 _setupNotifications];
    [(MPCPlayerItemConfigurator *)v12 _setupRoutingController];
    [(MPCPlayerItemConfigurator *)v12 _setupPlayer];
  }

  return v12;
}

@end