@interface MPCExternalPlaybackController
- (BOOL)isPodcastContent:(id)content;
- (MPAVRoutingController)routingController;
- (MPCExternalPlaybackController)initWithPlaybackEngine:(id)engine translator:(id)translator;
- (MPCPlaybackEngine)playbackEngine;
- (int64_t)exernalPlaybackRouteRestrictionForItem:(id)item route:(id)route isScreenMirroringActive:(BOOL)active;
- (void)configureExternalPlaybackForPlayer:(id)player queueItem:(id)item;
- (void)pickBestDeviceRoute;
@end

@implementation MPCExternalPlaybackController

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (int64_t)exernalPlaybackRouteRestrictionForItem:(id)item route:(id)route isScreenMirroringActive:(BOOL)active
{
  itemCopy = item;
  routeCopy = route;
  if ([(MPCExternalPlaybackController *)self isPodcastContent:itemCopy])
  {
    goto LABEL_12;
  }

  if (([routeCopy canPlayEncryptedProgressiveDownloadAssets] & 1) != 0 || objc_msgSend(itemCopy, "playbackMode") || (objc_msgSend(itemCopy, "hasProtectedContent") & 1) == 0)
  {
    if (([routeCopy canFetchMediaDataFromSender] & 1) == 0 && !objc_msgSend(itemCopy, "playbackMode"))
    {
      v9 = 2;
      goto LABEL_13;
    }

    if (([routeCopy presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets] & 1) == 0 && objc_msgSend(itemCopy, "type") == 1)
    {
      v9 = 3;
      goto LABEL_13;
    }

    if ([itemCopy type] != 2 && (!objc_msgSend(routeCopy, "canAccessRemoteAssets") || (objc_msgSend(itemCopy, "allowsAirPlayFromCloud") & 1) == 0))
    {
      v9 = 4;
      goto LABEL_13;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (BOOL)isPodcastContent:(id)content
{
  contentCopy = content;
  v4 = [contentCopy mediaType] == 2 || objc_msgSend(contentCopy, "mediaType") == 1024;

  return v4;
}

- (void)pickBestDeviceRoute
{
  routingController = [(MPCExternalPlaybackController *)self routingController];
  [routingController pickBestDeviceRoute];
}

- (void)configureExternalPlaybackForPlayer:(id)player queueItem:(id)item
{
  v82[12] = *MEMORY[0x1E69E9840];
  playerCopy = player;
  itemCopy = item;
  if (![itemCopy isAssetLoaded])
  {
    goto LABEL_55;
  }

  v68 = playerCopy;
  selfCopy = self;
  routingController = [(MPCExternalPlaybackController *)self routingController];
  pickedRoute = [routingController pickedRoute];
  [itemCopy reevaluateType];
  [itemCopy reevaluateHasProtectedContent];
  v65 = routingController;
  externalScreenType = [routingController externalScreenType];
  v82[0] = MEMORY[0x1E695E110];
  v81[0] = @"_useAirPlayMusicMode";
  v81[1] = @"itemAllowsAirPlayFromCloud";
  v64 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "allowsAirPlayFromCloud")}];
  v82[1] = v64;
  v81[2] = @"itemAllowsExternalPlayback";
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "allowsExternalPlayback")}];
  v82[2] = v63;
  v81[3] = @"itemHasProtectedContent";
  v62 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "hasProtectedContent")}];
  v82[3] = v62;
  v81[4] = @"itemType";
  type = [itemCopy type];
  if (type >= 3)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", type];
  }

  else
  {
    v12 = off_1E8234FF8[type];
  }

  v61 = v12;
  v82[4] = v12;
  v81[5] = @"itemPlaybackMode";
  playbackMode = [itemCopy playbackMode];
  if (playbackMode)
  {
    if (playbackMode == 1)
    {
      v14 = @"Streaming";
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", playbackMode];
    }
  }

  else
  {
    v14 = @"File";
  }

  v82[5] = v14;
  v81[6] = @"externalScreenType";
  if (externalScreenType >= 3)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", externalScreenType];
  }

  else
  {
    v15 = off_1E8235010[externalScreenType];
  }

  v82[6] = v15;
  v81[7] = @"isAppleTVRoute";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(pickedRoute, "isAppleTVRoute")}];
  v82[7] = v16;
  v81[8] = @"routeSubtype";
  [pickedRoute routeSubtype];
  v17 = MPAVRouteSubtypeDescription();
  v82[8] = v17;
  v81[9] = @"canPlayEncryptedProgressiveDownloadAssets";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(pickedRoute, "canPlayEncryptedProgressiveDownloadAssets")}];
  v82[9] = v18;
  v81[10] = @"canFetchMediaDataFromSender";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(pickedRoute, "canFetchMediaDataFromSender")}];
  v82[10] = v19;
  v81[11] = @"presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(pickedRoute, "presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets")}];
  v82[11] = v20;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:12];

  v21 = selfCopy;
  LODWORD(v16) = [(MPCExternalPlaybackController *)selfCopy isExternalPlaybackAllowedForItem:itemCopy];
  playerCopy = v68;
  v22 = [(MPCExternalPlaybackController *)selfCopy playerShouldUseAudiOnlyMode:v68 item:itemCopy externalScreenType:externalScreenType];
  v66 = pickedRoute;
  if (!v16)
  {
    goto LABEL_41;
  }

  v23 = [(MPCExternalPlaybackController *)selfCopy exernalPlaybackRouteRestrictionForItem:itemCopy route:pickedRoute isScreenMirroringActive:externalScreenType != 0];
  if (v23)
  {
    playbackEngine = [(MPCExternalPlaybackController *)selfCopy playbackEngine];
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [playbackEngine engineID];
      v27 = engineID;
      if ((v23 - 2) > 2)
      {
        v28 = @"Picked route can't play encrypted local files via progressive download";
      }

      else
      {
        v28 = off_1E8235028[v23 - 2];
      }

      *buf = 138544386;
      v73 = engineID;
      v74 = 2048;
      v75 = selfCopy;
      v76 = 2114;
      *v77 = pickedRoute;
      *&v77[8] = 2114;
      v78 = itemCopy;
      v79 = 2114;
      v80 = v28;
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [Overriding isExternalPlaybackPossible to NO] - Picked route does not support external display - pickedRoute:%{public}@ - item:%{public}@ - reason:%{public}@", buf, 0x34u);
    }
  }

  if (externalScreenType && [itemCopy type] != 2)
  {
    playbackEngine2 = [(MPCExternalPlaybackController *)selfCopy playbackEngine];
    v32 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      engineID2 = [playbackEngine2 engineID];
      v34 = engineID2;
      if ((v23 - 1) > 3)
      {
        v35 = @"Picked route has no restrictions";
      }

      else
      {
        v35 = off_1E8235040[v23 - 1];
      }

      *buf = 138544386;
      v73 = engineID2;
      v74 = 2048;
      v75 = selfCopy;
      v76 = 2114;
      *v77 = pickedRoute;
      *&v77[8] = 2114;
      v78 = itemCopy;
      v79 = 2114;
      v80 = v35;
      _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [Overriding isExternalPlaybackPossible to NO] - Screen mirroring is on for an audio item - pickedRoute:%{public}@ - item:%{public}@ - reason:%{public}@", buf, 0x34u);
    }

    if ([itemCopy type] != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if ([itemCopy type] == 1)
  {
LABEL_35:
    playbackEngine3 = [(MPCExternalPlaybackController *)selfCopy playbackEngine];
    v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      engineID3 = [playbackEngine3 engineID];
      v39 = engineID3;
      if ((v23 - 1) > 3)
      {
        v40 = @"Picked route has no restrictions";
      }

      else
      {
        v40 = off_1E8235040[v23 - 1];
      }

      *buf = 138544386;
      v73 = engineID3;
      v74 = 2048;
      v75 = selfCopy;
      v76 = 2114;
      *v77 = pickedRoute;
      *&v77[8] = 2114;
      v78 = itemCopy;
      v79 = 2114;
      v80 = v40;
      _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [Overriding isExternalPlaybackPossible to NO] - We prefer buffered audio over url flinging for audio items - pickedRoute:%{public}@ - item:%{public}@ - reason:%{public}@", buf, 0x34u);
    }

    goto LABEL_41;
  }

  if (v23)
  {
LABEL_41:
    v30 = 0;
    v29 = 0;
    goto LABEL_42;
  }

  v29 = (externalScreenType || -[MPCExternalPlaybackController isPodcastContent:](selfCopy, "isPodcastContent:", itemCopy)) && [itemCopy type] == 2;
  v30 = 1;
LABEL_42:
  v70[0] = @"usesExternalPlaybackWhileExternalScreenIsActive";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:v29];
  v71[0] = v41;
  v70[1] = @"isExternalPlaybackAllowed";
  v42 = [MEMORY[0x1E696AD98] numberWithBool:v30];
  v71[1] = v42;
  v70[2] = @"usesAudioOnlyMode";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  v71[2] = v43;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:3];

  playbackEngine4 = [(MPCExternalPlaybackController *)selfCopy playbackEngine];
  v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    engineID4 = [playbackEngine4 engineID];
    msv_compactDescription = [v67 msv_compactDescription];
    [v44 msv_compactDescription];
    v50 = v49 = v44;
    *buf = 138544130;
    v73 = engineID4;
    v74 = 2048;
    v75 = selfCopy;
    v76 = 2114;
    *v77 = msv_compactDescription;
    *&v77[8] = 2114;
    v78 = v50;
    _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [diagnosis] - input: %{public}@ -> output: %{public}@", buf, 0x2Au);

    v44 = v49;
    playerCopy = v68;

    v21 = selfCopy;
  }

  playbackEngine5 = [(MPCExternalPlaybackController *)v21 playbackEngine];
  v52 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    engineID5 = [playbackEngine5 engineID];
    *buf = 138544386;
    v73 = engineID5;
    v74 = 2048;
    v75 = v21;
    v76 = 1024;
    *v77 = v29;
    *&v77[4] = 1024;
    *&v77[6] = v22;
    LOWORD(v78) = 1024;
    *(&v78 + 2) = v30;
    _os_log_impl(&dword_1C5C61000, v52, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [Updating player] - usesExternalPlaybackWhileExternalScreenIsActive:%{BOOL}u, usesAudioOnlyMode:%{BOOL}u, wantsExternalPlayback:%{BOOL}u", buf, 0x28u);
  }

  v54 = v22 ^ [playerCopy usesAudioOnlyModeForExternalPlayback];
  if (v54 == 1)
  {
    [playerCopy setUsesAudioOnlyModeForExternalPlayback:v22];
  }

  [playerCopy setUsesExternalPlaybackWhileExternalScreenIsActive:v29];
  if (v30 != [playerCopy allowsExternalPlayback])
  {
    goto LABEL_51;
  }

  if (v54)
  {
    [playerCopy setAllowsExternalPlayback:v30 ^ 1];
LABEL_51:
    [playerCopy setAllowsExternalPlayback:v30];
  }

  v55 = v30 & [v66 isAppleTVRoute];
  playbackEngine6 = [(MPCExternalPlaybackController *)v21 playbackEngine];
  v57 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    engineID6 = [playbackEngine6 engineID];
    v59 = v21;
    v60 = engineID6;
    *buf = 138544130;
    v73 = engineID6;
    v74 = 2048;
    v75 = v59;
    v76 = 2114;
    *v77 = itemCopy;
    *&v77[8] = 1024;
    LODWORD(v78) = v55;
    _os_log_impl(&dword_1C5C61000, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [Updating item] - queueItem:%{public}@ - externalDisplay:%{BOOL}u", buf, 0x26u);
  }

  [itemCopy setExternalDisplay:v55];
LABEL_55:
}

- (MPAVRoutingController)routingController
{
  routingController = self->_routingController;
  if (!routingController)
  {
    v4 = objc_alloc(MEMORY[0x1E6970490]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 initWithName:v6];
    v8 = self->_routingController;
    self->_routingController = v7;

    [(MPAVRoutingController *)self->_routingController setFetchAvailableRoutesSynchronously:1];
    routingController = self->_routingController;
  }

  return routingController;
}

- (MPCExternalPlaybackController)initWithPlaybackEngine:(id)engine translator:(id)translator
{
  engineCopy = engine;
  translatorCopy = translator;
  v11.receiver = self;
  v11.super_class = MPCExternalPlaybackController;
  v8 = [(MPCExternalPlaybackController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackEngine, engineCopy);
    objc_storeStrong(&v9->_translator, translator);
  }

  return v9;
}

@end