@interface MPCPlayerItemConfigurator
- (BOOL)_setupQueueItemForEnhancedAudioHLSPlayback:(id)a3 playerItem:(id)a4 metadataWaitTime:(double *)a5 error:(id *)a6;
- (BOOL)_shouldReloadEntireQueue;
- (BOOL)configureQueueItem:(id)a3 playerItem:(id)a4 error:(id *)a5;
- (BOOL)updateCurrentAudioRouteWithPickedRouteIfNeeded:(id)a3;
- (MFPlaybackStackController)stackController;
- (MFQueueItemTranslator)translator;
- (MPCModelGenericAVItem)currentItem;
- (MPCPlaybackEngine)playbackEngine;
- (MPCPlayerAudioRoute)currentAudioRoute;
- (MPCPlayerItemConfigurator)initWithPlaybackEngine:(id)a3 stackController:(id)a4 translator:(id)a5;
- (id)_HLSMetadataForAsset:(id)a3 error:(id *)a4;
- (id)_audioFormatsDictionaryWithHLSMetadata:(id)a3;
- (id)_audioFormatsDictionaryWithHLSMetadataFromAsset:(id)a3 metadataWaitTime:(double *)a4 error:(id *)a5;
- (id)_modeObjectForPlayerItem:(id)a3;
- (id)queuedItems;
- (void)_emitAudioFormatSelection:(id)a3 item:(id)a4;
- (void)_musicQualityPreferencesDidChange;
- (void)_playbackUserDefaultsEQPresetDidChangeNotification:(id)a3;
- (void)_resetBufferedAudio;
- (void)_setupNotifications;
- (void)_setupPlayer;
- (void)_setupQueueItemForHLSPlayback:(id)a3 playerItem:(id)a4;
- (void)_setupQueueItemForLossyAudioPlayback:(id)a3 playerItem:(id)a4;
- (void)_setupRoutingController;
- (void)_soundCheckEnabledChangedNotification:(id)a3;
- (void)_updatePreferredAudioFormatIfRequiredForItem:(id)a3 route:(id)a4;
- (void)_updateQueueItemsAndPlayerForFormatChangeIfRequired;
- (void)configurePlayerItemForHEAACWorkaround:(id)a3;
- (void)configurePlayerItemForSmartTransitions:(id)a3;
- (void)dealloc;
- (void)engineDidChangeVocalAttenuationLevel:(id)a3;
- (void)engineDidChangeVocalAttenuationState:(id)a3;
- (void)processAudioQualityChanges;
- (void)routingController:(id)a3 pickedRoutesDidChange:(id)a4;
- (void)setupDefaultsDebouncer;
- (void)tearDownDefaultsDebouncer;
@end

@implementation MPCPlayerItemConfigurator

- (void)_setupPlayer
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(MPCPlayerItemConfigurator *)self currentItem];
  v4 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
  v5 = [v4 spatialIsOff];

  v6 = @"Forced stereo";
  if (v5)
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

  v8 = [(MPCPlayerItemConfigurator *)self stackController];
  [v8 setSpatializationFormat:v7];

  v9 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 engineID];
    v12 = 138544130;
    v13 = v11;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - AVPlayer setup: %{public}@ - currentItem: %{public}@", &v12, 0x2Au);
  }
}

- (MPCModelGenericAVItem)currentItem
{
  v3 = [(MPCPlayerItemConfigurator *)self stackController];
  v4 = [v3 currentItem];
  v5 = [(MPCPlayerItemConfigurator *)self _modeObjectForPlayerItem:v4];

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

- (void)configurePlayerItemForSmartTransitions:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5D3BAF8(v4);
}

- (void)configurePlayerItemForHEAACWorkaround:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5D3BDFC(v4);
}

- (MFQueueItemTranslator)translator
{
  WeakRetained = objc_loadWeakRetained(&self->_translator);

  return WeakRetained;
}

- (void)_resetBufferedAudio
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(MPCPlayerItemConfigurator *)self currentItem];
  if ([v3 isAssetLoaded])
  {
    v4 = [v3 playerItem];
    v5 = [(MPCPlayerItemConfigurator *)self playbackEngine];
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 engineID];
      v8 = 138543874;
      v9 = v7;
      v10 = 2048;
      v11 = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AP] - resetAudioBufferedAhead for: %{public}@", &v8, 0x20u);
    }

    [v4 resetAudioBufferedAhead];
  }
}

- (void)engineDidChangeVocalAttenuationState:(id)a3
{
  v4 = [a3 vocalAttenuationController];
  if (v4 && (v4[9] - 5) <= 2)
  {
    v5 = v4;
    [(MPCPlayerItemConfigurator *)self _resetBufferedAudio];
    v4 = v5;
  }
}

- (void)engineDidChangeVocalAttenuationLevel:(id)a3
{
  if ([a3 isVocalAttenuationEnabled])
  {

    [(MPCPlayerItemConfigurator *)self _resetBufferedAudio];
  }
}

- (void)_updatePreferredAudioFormatIfRequiredForItem:(id)a3 route:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 preferredFormat];

    if (v8)
    {
      v9 = [v6 preferredFormat];
      v10 = [v6 isDownloadedAsset];
      v11 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
      v12 = v11;
      if (v10)
      {
        v13 = [v6 loadedAudioAssetType];
        v14 = [v6 availableSortedFormats];
        v15 = [v12 audioFormatMatchingAudioAssetType:v13 formats:v14 route:v7];
      }

      else
      {
        v15 = [v11 preferredPlayerAudioFormatForItem:v6 route:v7];
      }

      [v6 setAudioRoute:v7];
      [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v15 item:v6];
      v16 = [v15 format];
      if ([v6 updatePreferredFormat:v16] && objc_msgSend(v6, "isAssetLoaded"))
      {
        v20 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v20 engineID];
          v30 = 138544642;
          v31 = v22;
          v32 = 2048;
          v33 = self;
          v34 = 2114;
          v35 = v6;
          v36 = 1024;
          *v37 = [v6 isDownloadedAsset];
          *&v37[4] = 2112;
          *&v37[6] = v9;
          v38 = 2112;
          v39 = v16;
          _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - Preferred audio format changed [configuring player item] - item:%{public}@ - downloaded:%{BOOL}u - audio format: %@ -> %@", &v30, 0x3Au);
        }

        v23 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        [v6 configureAVPlayerItemWithAudioFormat:v16 forceSpatial:objc_msgSend(v23, "spatialIsAlwaysOn")];

        v24 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v24 engineID];
          v27 = [v6 playerItem];
          v28 = [v27 mpc_setupDescription];
          v30 = 138544130;
          v31 = v26;
          v32 = 2048;
          v33 = self;
          v34 = 2114;
          v35 = v28;
          v29 = v28;
          v36 = 2114;
          *v37 = v6;
          _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - AVPlayerItem setup: %{public}@ - item:%{public}@", &v30, 0x2Au);
        }
      }

      goto LABEL_18;
    }

    v15 = [(MPCPlayerItemConfigurator *)self playbackEngine];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v15 engineID];
      v30 = 138543874;
      v31 = v16;
      v32 = 2048;
      v33 = self;
      v34 = 2114;
      v35 = v6;
      v17 = "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - No configuration possible [no preferred format on item] - item: %{public}@";
      v18 = v9;
      v19 = 32;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = [(MPCPlayerItemConfigurator *)self playbackEngine];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v15 engineID];
      v30 = 138543618;
      v31 = v16;
      v32 = 2048;
      v33 = self;
      v17 = "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - No configuration possible [no player item]";
      v18 = v9;
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
  v3 = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MPCPlayerItemConfigurator *)self queuedItems];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MPCPlayerItemConfigurator *)self _updatePreferredAudioFormatIfRequiredForItem:*(*(&v9 + 1) + 8 * v8++) route:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(MPCPlayerItemConfigurator *)self queuedItems];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isAssetLoaded])
        {
          if (([v8 isHLSAsset] & 1) == 0)
          {
            v9 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
            v10 = [v9 preferredAudioAssetTypeForItem:v8];
            v11 = [v10 type];

            if (v11 >= 3)
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

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)_modeObjectForPlayerItem:(id)a3
{
  v4 = a3;
  if ([v4 isAssetLoaded])
  {
    v5 = [(MPCPlayerItemConfigurator *)self translator];
    v6 = [v5 MPAVItemForMFPlayerItem:v4];

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
  v3 = [(MPCPlayerItemConfigurator *)self stackController];
  v4 = [v3 nextItems];

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count") + 1}];
  v6 = [(MPCPlayerItemConfigurator *)self currentItem];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
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

- (BOOL)updateCurrentAudioRouteWithPickedRouteIfNeeded:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  currentAudioRoute = v5->_currentAudioRoute;
  if (!currentAudioRoute)
  {
    goto LABEL_5;
  }

  v7 = [(MPCPlayerAudioRoute *)currentAudioRoute pickedRoute];
  if (v7 == v4)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v8 = [(MPCPlayerAudioRoute *)v5->_currentAudioRoute pickedRoute];
  v9 = [v4 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v11 = [MPCPlayerAudioRoute alloc];
    v7 = [(MPCPlayerItemConfigurator *)v5 audioAssetTypeSelector];
    v12 = -[MPCPlayerAudioRoute initWithRoute:spatialIsAlwaysOn:](v11, "initWithRoute:spatialIsAlwaysOn:", v4, [v7 spatialIsAlwaysOn]);
    v13 = v5->_currentAudioRoute;
    v5->_currentAudioRoute = v12;

    v10 = 1;
LABEL_7:

    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:
  objc_sync_exit(v5);

  return v10;
}

- (MPCPlayerAudioRoute)currentAudioRoute
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_currentAudioRoute)
  {
    v3 = [MPCPlayerAudioRoute alloc];
    v4 = [(MPAVRoutingController *)v2->_routingController pickedRoutes];
    v5 = [v4 firstObject];
    v6 = [(MPCPlayerItemConfigurator *)v2 audioAssetTypeSelector];
    v7 = -[MPCPlayerAudioRoute initWithRoute:spatialIsAlwaysOn:](v3, "initWithRoute:spatialIsAlwaysOn:", v5, [v6 spatialIsAlwaysOn]);
    currentAudioRoute = v2->_currentAudioRoute;
    v2->_currentAudioRoute = v7;
  }

  objc_sync_exit(v2);

  v9 = v2->_currentAudioRoute;

  return v9;
}

- (void)routingController:(id)a3 pickedRoutesDidChange:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 engineID];
    v11 = 138543874;
    v12 = v8;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - Route changed to %{public}@", &v11, 0x20u);
  }

  v9 = [v5 firstObject];
  v10 = [(MPCPlayerItemConfigurator *)self updateCurrentAudioRouteWithPickedRouteIfNeeded:v9];

  if (v10)
  {
    [(MPCPlayerItemConfigurator *)self _updateQueueItemsAndPlayerForFormatChangeIfRequired];
  }
}

- (id)_audioFormatsDictionaryWithHLSMetadata:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E695DF20];
    v5 = [a3 value];
    v19 = 0;
    v6 = [v4 msv_dictionaryWithContentsOfBase64EncodedJSONString:v5 error:&v19];
    v7 = v19;

    if (v7)
    {
      v8 = [(MPCPlayerItemConfigurator *)self playbackEngine];
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 engineID];
        *buf = 138543874;
        v21 = v10;
        v22 = 2048;
        v23 = self;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - Error decoding HLS metadata [Clearing audioFormatsDictionary] - Error:%{public}@", buf, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __68__MPCPlayerItemConfigurator__audioFormatsDictionaryWithHLSMetadata___block_invoke;
      v17 = &unk_1E82351A0;
      v18 = v12;
      v8 = v12;
      [v6 enumerateKeysAndObjectsUsingBlock:&v14];
      v11 = [v8 copy:v14];
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

- (id)_HLSMetadataForAsset:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v6 = [a3 mpc_synchronousHLSSessionDataWithTimeout:5 error:&v16];
  v7 = v16;
  if (v7 || ([v6 value], v8 = objc_claimAutoreleasedReturnValue(), v9 = _NSIsNSString(), v8, (v9 & 1) == 0))
  {
    v11 = [(MPCPlayerItemConfigurator *)self playbackEngine];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 engineID];
      *buf = 138543874;
      v18 = v13;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - Error retrieving HLS metadata - Error:%{public}@", buf, 0x20u);
    }

    if (a4)
    {
      v14 = v7;
      v10 = 0;
      *a4 = v7;
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

- (id)_audioFormatsDictionaryWithHLSMetadataFromAsset:(id)a3 metadataWaitTime:(double *)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a3;
  [v8 timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [(MPCPlayerItemConfigurator *)self _HLSMetadataForAsset:v9 error:a5];

  if (a4)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *a4 = v13 - v11;
  }

  v14 = [(MPCPlayerItemConfigurator *)self _audioFormatsDictionaryWithHLSMetadata:v12];

  return v14;
}

- (void)_emitAudioFormatSelection:(id)a3 item:(id)a4
{
  v24[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 queueSectionID];
  v9 = [v7 queueItemID];

  v10 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v11 = [v10 eventStream];
  v23[0] = @"queue-section-id";
  v23[1] = @"queue-item-id";
  v19 = v9;
  v20 = v8;
  v24[0] = v8;
  v24[1] = v9;
  v23[2] = @"item-audio-format-selection-metadata";
  v21[0] = @"audio-format-selection-format";
  v12 = [v6 format];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v22[0] = v13;
  v21[1] = @"audio-format-selection-explanation";
  v14 = [v6 explanation];
  v22[1] = v14;
  v21[2] = @"audio-format-selection-justification";
  v15 = [v6 justification];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  [v11 emitEventType:@"audio-format-selection" payload:v18];

  if (!v15)
  {
  }

  if (!v12)
  {
  }
}

- (void)_setupQueueItemForLossyAudioPlayback:(id)a3 playerItem:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32[0] = @"LQ";
  v8 = +[MPCPlayerAudioFormat lossyLowQualityStereoFormat];
  v33[0] = v8;
  v32[1] = @"HQ";
  v9 = +[MPCPlayerAudioFormat lossyHighQualityStereoFormat];
  v33[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

  [v6 updateAudioFormatsDictionary:v10];
  v11 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
  v12 = [v6 availableSortedFormats];
  v13 = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
  v14 = [v11 preferredAudioFormatForAudioFormats:v12 route:v13];

  v15 = [v14 format];
  [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v14 item:v6];
  v16 = v6;
  v23 = v15;
  v17 = v15;
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

  [v7 setAllowedAudioSpatializationFormats:v18];
LABEL_6:
  v19 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 engineID];
    v22 = [v16 preferredFormat];
    *buf = 138544130;
    v25 = v21;
    v26 = 2048;
    v27 = self;
    v28 = 2114;
    v29 = v16;
    v30 = 2114;
    v31 = v22;
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

- (void)_setupQueueItemForHLSPlayback:(id)a3 playerItem:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
    v11 = [v10 spatialPreference];
    v12 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
    v13 = [v12 spatialIsAlwaysOn];
    v14 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
    [v7 mpc_setupForHLSPlaybackWithPreferredFormat:0 spatialPreference:v11 forceSpatial:v13 maxResolution:objc_msgSend(v14 isDownloadedAsset:"maxResolution"), objc_msgSend(v6, "isDownloadedAsset")];

    v20 = MEMORY[0x1E69E9820];
    v15 = v6;
    msv_dispatch_sync_on_main_queue();
    v16 = [(MPCPlayerItemConfigurator *)self playbackEngine:v20];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 engineID];
      v19 = [v7 mpc_setupDescription];
      *buf = 138544130;
      v22 = v18;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = v19;
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

- (BOOL)_setupQueueItemForEnhancedAudioHLSPlayback:(id)a3 playerItem:(id)a4 metadataWaitTime:(double *)a5 error:(id *)a6
{
  v79 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v10 asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v65 = [v10 asset];
    v13 = [MPCPlayerItemConfigurator _audioFormatsDictionaryWithHLSMetadataFromAsset:"_audioFormatsDictionaryWithHLSMetadataFromAsset:metadataWaitTime:error:" metadataWaitTime:? error:?];
    v14 = 0;
    v15 = v14 == 0;
    v66 = v14;
    if (v14)
    {
      v16 = v14;
      v17 = [(MPCPlayerItemConfigurator *)self playbackEngine];
      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v17 engineID];
        *buf = 138544130;
        v72 = v19;
        v73 = 2048;
        v74 = self;
        v75 = 2114;
        v76 = v9;
        v77 = 2114;
        v78 = v66;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - Error retrieving audio formats - item:%{public}@ - error:%{public}@", buf, 0x2Au);

        v16 = v66;
      }

      v20 = v13;

      v21 = [MPCPlayerAudioFormatSelection alloc];
      v69 = @"Error";
      v22 = [v16 debugDescription];
      v23 = v22;
      if (!v22)
      {
        v23 = [MEMORY[0x1E695DFB0] null];
      }

      v70 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v25 = [(MPCPlayerAudioFormatSelection *)v21 initWithExplanation:@" Error retrieving audio formats" justification:v24];

      if (!v22)
      {
      }

      [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v25 item:v9];
      if (a6)
      {
        v26 = v66;
        v27 = v66;
        *a6 = v66;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v28 = [v9 isDownloadedAsset];
      v64 = v13;
      if (v13)
      {
        [v9 updateAudioFormatsDictionary:v13];
        v29 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        v61 = v28;
        if (v28)
        {
          v30 = [v9 loadedAudioAssetType];
          v31 = [v9 availableSortedFormats];
          v32 = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
          [v29 audioFormatMatchingAudioAssetType:v30 formats:v31 route:v32];
        }

        else
        {
          v31 = [v9 availableSortedFormats];
          v32 = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
          [v29 preferredAudioFormatForAudioFormats:v31 route:v32];
        }
        v41 = ;
        v63 = v15;

        v42 = [(MPCPlayerAudioFormatSelection *)v41 format];
        v62 = v41;
        [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v41 item:v9];
        v43 = v9;
        v67 = v43;
        v68 = v42;
        v60 = v42;
        msv_dispatch_sync_on_main_queue();
        v44 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v45 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v44 engineID];
          v47 = [v43 preferredFormat];
          *buf = 138544130;
          v72 = v46;
          v73 = 2048;
          v74 = self;
          v75 = 2114;
          v76 = v43;
          v77 = 2114;
          v78 = v47;
          _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - Audio formats available in HLS session data [Setting up player item] - item:%{public}@ - Preferred format:%{public}@", buf, 0x2Au);
        }

        v48 = v43;
        v49 = [v43 preferredFormat];
        v50 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        v51 = [v50 spatialPreference];
        v52 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        v53 = [v52 spatialIsAlwaysOn];
        v54 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
        [v10 mpc_setupForHLSPlaybackWithPreferredFormat:v49 spatialPreference:v51 forceSpatial:v53 maxResolution:objc_msgSend(v54 isDownloadedAsset:"maxResolution"), v61];

        v55 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v56 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = [v55 engineID];
          v58 = [v10 mpc_setupDescription];
          *buf = 138544130;
          v72 = v57;
          v73 = 2048;
          v74 = self;
          v75 = 2114;
          v76 = v58;
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

      v33 = [(MPCPlayerItemConfigurator *)self playbackEngine];
      v34 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v33 engineID];
        *buf = 138543874;
        v72 = v35;
        v73 = 2048;
        v74 = self;
        v75 = 2114;
        v76 = v9;
        _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AL] - No audio formats in HLS session data [Setting up player item using preferred audio asset type] - item:%{public}@", buf, 0x20u);
      }

      v25 = [[MPCPlayerAudioFormatSelection alloc] initWithExplanation:@"No audio formats in HLS session data [Attempting setup with preferred type]" justification:0];
      [(MPCPlayerItemConfigurator *)self _emitAudioFormatSelection:v25 item:v9];
      v36 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
      v37 = [v36 spatialPreference];
      v38 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
      v39 = [v38 spatialIsAlwaysOn];
      v40 = [(MPCPlayerItemConfigurator *)self audioAssetTypeSelector];
      [v10 mpc_setupForHLSPlaybackWithPreferredFormat:0 spatialPreference:v37 forceSpatial:v39 maxResolution:objc_msgSend(v40 isDownloadedAsset:"maxResolution"), v28];

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
  v3 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  if (v3)
  {
    v4 = [(MPCPlayerItemConfigurator *)self currentItem];
    if (([v3 isVocalAttenuationEnabled] & 1) == 0)
    {
      if (v4)
      {
        v5 = [(MPCPlayerItemConfigurator *)self _shouldReloadEntireQueue];
        v6 = [(MPCPlayerItemConfigurator *)self playbackEngine];
        v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (v8)
          {
            v9 = [v6 engineID];
            v10 = [(MPCPlayerItemConfigurator *)self queuedItems];
            *buf = 138543874;
            v15 = v9;
            v16 = 2048;
            v17 = self;
            v18 = 2114;
            v19 = v10;
            _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AF] - Preferred asset type changed [reloading all queued items] - items:%{public}@", buf, 0x20u);
          }

          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __55__MPCPlayerItemConfigurator_processAudioQualityChanges__block_invoke;
          v13[3] = &unk_1E8238800;
          v13[4] = self;
          [v3 reloadQueueForReason:0 completion:v13];
        }

        else
        {
          if (v8)
          {
            v11 = [v6 engineID];
            v12 = [(MPCPlayerItemConfigurator *)self queuedItems];
            *buf = 138543874;
            v15 = v11;
            v16 = 2048;
            v17 = self;
            v18 = 2114;
            v19 = v12;
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
  v3 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];

  if (v3)
  {
    v4 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];
    dispatch_source_cancel(v4);

    [(MPCPlayerItemConfigurator *)self setUserDefaultsDebouncer:0];
  }
}

- (void)setupDefaultsDebouncer
{
  [(MPCPlayerItemConfigurator *)self tearDownDefaultsDebouncer];
  v3 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];

  if (!v3)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    [(MPCPlayerItemConfigurator *)self setUserDefaultsDebouncer:v4];

    v5 = dispatch_time(0, 300000000);
    v6 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];
    dispatch_source_set_timer(v6, v5, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(&location, self);
    v7 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51__MPCPlayerItemConfigurator_setupDefaultsDebouncer__block_invoke;
    handler[3] = &unk_1E8235150;
    objc_copyWeak(&v10, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);

    v8 = [(MPCPlayerItemConfigurator *)self userDefaultsDebouncer];
    dispatch_resume(v8);

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

- (void)_soundCheckEnabledChangedNotification:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 engineID];
    v7 = [MEMORY[0x1E69708A8] standardUserDefaults];
    *buf = 138543874;
    v10 = v6;
    v11 = 2048;
    v12 = self;
    v13 = 1024;
    v14 = [v7 soundCheckEnabled];
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

- (void)_playbackUserDefaultsEQPresetDidChangeNotification:(id)a3
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
  v4 = [(MPCPlayerItemConfigurator *)self audioQualityPreferenceObserver];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__MPCPlayerItemConfigurator__setupNotifications__block_invoke;
  v10 = &unk_1E8239500;
  objc_copyWeak(&v11, &location);
  [v4 beginObservationWithPreferenceChangeClosure:&v7];

  v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel__playbackUserDefaultsEQPresetDidChangeNotification_ name:*MEMORY[0x1E6970360] object:v5];
  [v6 addObserver:self selector:sel__soundCheckEnabledChangedNotification_ name:*MEMORY[0x1E6970378] object:v5];

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

- (BOOL)configureQueueItem:(id)a3 playerItem:(id)a4 error:(id *)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 engineID];
    *buf = 138544130;
    *&buf[4] = v12;
    v72 = 2048;
    v73 = self;
    v74 = 2114;
    v75 = v8;
    v76 = 2114;
    v77 = v9;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - Configuring queue item:%{public}@ player item:%{public}@", buf, 0x2Au);
  }

  v13 = [v8 queueSectionID];
  v14 = [v8 queueItemID];
  v15 = [(MPCPlayerItemConfigurator *)self playbackEngine];
  v16 = v15;
  if (v13)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v65 = v18;
  if (!v17)
  {
    v19 = [v15 eventStream];
    v69[0] = @"queue-section-id";
    v69[1] = @"queue-item-id";
    v70[0] = v13;
    v70[1] = v14;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
    [v19 emitEventType:@"item-configuration-begin" payload:v20];
  }

  v21 = [v8 contentItemID];
  [v9 setContentItemID:v21];

  v22 = [v8 description];
  [v9 setTitle:v22];

  [v9 setPrefersSeekOverSkip:{objc_msgSend(v8, "prefersSeekOverSkip")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v8;
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

    [v9 setModelTypeName:v24];
    v25 = [v23 stationStringID];
    [v9 setModelStringID:v25];

    goto LABEL_17;
  }

LABEL_18:
  v26 = [v8 preferredAudioTimePitchAlgorithm];
  [v9 setAudioTimePitchAlgorithm:v26];

  [v8 setupWithPlaybackInfo];
  v27 = [(MPCPlayerItemConfigurator *)self eqSetting];
  v28 = [v27 avPreset];

  [v8 setupEQPresetWithDefaultPreset:v28];
  [v8 _applyLoudnessInfo];
  v29 = [v8 feeder];
  [v29 applyVolumeNormalizationForItem:v8];

  [v9 _setTimeJumpedNotificationIncludesExtendedDiagnosticPayload:1];
  [(MPCPlayerItemConfigurator *)self configurePlayerItemForHEAACWorkaround:v9];
  if ([v16 isVocalAttenuationEnabled])
  {
    v30 = [(MPCPlayerItemConfigurator *)self playbackEngine];
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      [v30 engineID];
      v32 = a5;
      v33 = v16;
      v34 = v14;
      v36 = v35 = v13;
      *buf = 138543874;
      *&buf[4] = v36;
      v72 = 2048;
      v73 = self;
      v74 = 2114;
      v75 = v8;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AP] - Configuring item for Suntory: %{public}@", buf, 0x20u);

      v13 = v35;
      v14 = v34;
      v16 = v33;
      a5 = v32;
    }

    v37 = [v16 vocalAttenuationController];
    [v8 setConfiguredForVocalAttenuation:{objc_msgSend(v37, "configureQueueItem:", v8)}];
LABEL_22:

    goto LABEL_33;
  }

  if ([v16 isAudioAnalyzerEnabled])
  {
    v38 = [v16 audioAnalyzer];
    [v38 configurePlayerItem:v9];
  }

  if (_os_feature_enabled_impl() && ICCurrentApplicationIsSystemApp() && +[MPCPlaybackEngine deviceSupportsSmartTransitions])
  {
    v39 = [v16 queueController];
    v37 = [v39 transitionTogglable];

    if (v37 && [v37 transitionStyle] == 1)
    {
      v61 = v13;
      v40 = [(MPCPlayerItemConfigurator *)self playbackEngine];
      v41 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v40 engineID];
        *buf = 138543874;
        *&buf[4] = v63;
        v72 = 2048;
        v73 = self;
        v74 = 2114;
        v75 = v8;
        _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlayerItemConfigurator %p - [AP] - Configuring item for Alchemy: %{public}@", buf, 0x20u);
      }

      [(MPCPlayerItemConfigurator *)self configurePlayerItemForSmartTransitions:v9];
      v13 = v61;
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

  v42 = v8;
  if (![v42 isHLSAsset])
  {
    goto LABEL_40;
  }

  if ([v42 loadedAudioAssetType] < 3)
  {
    if (([v42 hasVideo] & 1) != 0 || objc_msgSend(v42, "isRadioStreamPlayback"))
    {
      [(MPCPlayerItemConfigurator *)self _setupQueueItemForHLSPlayback:v42 playerItem:v9];
      goto LABEL_41;
    }

LABEL_40:
    [(MPCPlayerItemConfigurator *)self _setupQueueItemForLossyAudioPlayback:v42 playerItem:v9];
    goto LABEL_41;
  }

  [(MPCPlayerItemConfigurator *)self _setupQueueItemForEnhancedAudioHLSPlayback:v42 playerItem:v9 metadataWaitTime:buf error:a5];
LABEL_41:

LABEL_42:
  if (v65)
  {
    v64 = [v16 eventStream];
    v67[0] = @"queue-section-id";
    v67[1] = @"queue-item-id";
    v68[0] = v13;
    v68[1] = v14;
    v67[2] = @"item-configured-eq";
    v43 = MEMORY[0x1E696AD98];
    v59 = [(MPCPlayerItemConfigurator *)self eqSetting];
    v58 = [v43 numberWithInteger:{objc_msgSend(v59, "preset")}];
    v68[2] = v58;
    v67[3] = @"item-configured-sc-vol-normalization";
    v44 = MEMORY[0x1E696AD98];
    [v8 soundCheckVolumeNormalization];
    v57 = [v44 numberWithFloat:?];
    v68[3] = v57;
    v67[4] = @"item-configured-loudness";
    v45 = [v9 loudnessInfo];
    v46 = v45;
    if (!v45)
    {
      v45 = [MEMORY[0x1E695DFB0] null];
    }

    v55 = v45;
    v68[4] = v45;
    v67[5] = @"hls-metadata-wait-time";
    v62 = v13;
    if (*buf > 0.0)
    {
      [MEMORY[0x1E696AD98] numberWithDouble:*buf];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }

    v66 = v16;
    v56 = v60 = v14;
    v68[5] = v56;
    v67[6] = @"audio-route";
    v47 = [(MPCPlayerItemConfigurator *)self currentAudioRoute];
    v48 = v47;
    if (!v47)
    {
      v48 = [MEMORY[0x1E695DFB0] null];
    }

    v68[6] = v48;
    v67[7] = @"supports-vocal-attenuation";
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsVocalAttenuation")}];
    v68[7] = v49;
    v67[8] = @"vocal-attenuation-configured";
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isConfiguredForVocalAttenuation")}];
    v68[8] = v50;
    v67[9] = @"vocal-attenuation-available";
    v51 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v66, "isVocalAttenuationAvailable")}];
    v68[9] = v51;
    v67[10] = @"vocal-attenuation-enabled";
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v66, "isVocalAttenuationEnabled")}];
    v68[10] = v52;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:11];
    [v64 emitEventType:@"item-configuration-end" payload:v53];

    if (!v47)
    {
    }

    v14 = v60;
    if (!v46)
    {
    }

    v13 = v62;
    v16 = v66;
  }

  return 1;
}

- (void)dealloc
{
  v3 = [(MPCPlayerItemConfigurator *)self audioQualityPreferenceObserver];
  [v3 suspendObservation];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MPCPlayerItemConfigurator;
  [(MPCPlayerItemConfigurator *)&v5 dealloc];
}

- (MPCPlayerItemConfigurator)initWithPlaybackEngine:(id)a3 stackController:(id)a4 translator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MPCPlayerItemConfigurator;
  v11 = [(MPCPlayerItemConfigurator *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_playbackEngine, v8);
    [v8 addEngineObserver:v12];
    objc_storeWeak(&v12->_stackController, v9);
    objc_storeWeak(&v12->_translator, v10);
    v13 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v14 = [v13 musicEQSetting];
    eqSetting = v12->_eqSetting;
    v12->_eqSetting = v14;

    v16 = [[MPCAudioAssetTypeSelector alloc] initWithPlaybackEngine:v8];
    audioAssetTypeSelector = v12->_audioAssetTypeSelector;
    v12->_audioAssetTypeSelector = v16;

    [(MPCPlayerItemConfigurator *)v12 _setupNotifications];
    [(MPCPlayerItemConfigurator *)v12 _setupRoutingController];
    [(MPCPlayerItemConfigurator *)v12 _setupPlayer];
  }

  return v12;
}

@end