@interface MPCExternalPlaybackController
- (BOOL)isPodcastContent:(id)a3;
- (MPAVRoutingController)routingController;
- (MPCExternalPlaybackController)initWithPlaybackEngine:(id)a3 translator:(id)a4;
- (MPCPlaybackEngine)playbackEngine;
- (int64_t)exernalPlaybackRouteRestrictionForItem:(id)a3 route:(id)a4 isScreenMirroringActive:(BOOL)a5;
- (void)configureExternalPlaybackForPlayer:(id)a3 queueItem:(id)a4;
- (void)pickBestDeviceRoute;
@end

@implementation MPCExternalPlaybackController

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (int64_t)exernalPlaybackRouteRestrictionForItem:(id)a3 route:(id)a4 isScreenMirroringActive:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if ([(MPCExternalPlaybackController *)self isPodcastContent:v7])
  {
    goto LABEL_12;
  }

  if (([v8 canPlayEncryptedProgressiveDownloadAssets] & 1) != 0 || objc_msgSend(v7, "playbackMode") || (objc_msgSend(v7, "hasProtectedContent") & 1) == 0)
  {
    if (([v8 canFetchMediaDataFromSender] & 1) == 0 && !objc_msgSend(v7, "playbackMode"))
    {
      v9 = 2;
      goto LABEL_13;
    }

    if (([v8 presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets] & 1) == 0 && objc_msgSend(v7, "type") == 1)
    {
      v9 = 3;
      goto LABEL_13;
    }

    if ([v7 type] != 2 && (!objc_msgSend(v8, "canAccessRemoteAssets") || (objc_msgSend(v7, "allowsAirPlayFromCloud") & 1) == 0))
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

- (BOOL)isPodcastContent:(id)a3
{
  v3 = a3;
  v4 = [v3 mediaType] == 2 || objc_msgSend(v3, "mediaType") == 1024;

  return v4;
}

- (void)pickBestDeviceRoute
{
  v2 = [(MPCExternalPlaybackController *)self routingController];
  [v2 pickBestDeviceRoute];
}

- (void)configureExternalPlaybackForPlayer:(id)a3 queueItem:(id)a4
{
  v82[12] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v7 isAssetLoaded])
  {
    goto LABEL_55;
  }

  v68 = v6;
  v69 = self;
  v8 = [(MPCExternalPlaybackController *)self routingController];
  v9 = [v8 pickedRoute];
  [v7 reevaluateType];
  [v7 reevaluateHasProtectedContent];
  v65 = v8;
  v10 = [v8 externalScreenType];
  v82[0] = MEMORY[0x1E695E110];
  v81[0] = @"_useAirPlayMusicMode";
  v81[1] = @"itemAllowsAirPlayFromCloud";
  v64 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "allowsAirPlayFromCloud")}];
  v82[1] = v64;
  v81[2] = @"itemAllowsExternalPlayback";
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "allowsExternalPlayback")}];
  v82[2] = v63;
  v81[3] = @"itemHasProtectedContent";
  v62 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "hasProtectedContent")}];
  v82[3] = v62;
  v81[4] = @"itemType";
  v11 = [v7 type];
  if (v11 >= 3)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", v11];
  }

  else
  {
    v12 = off_1E8234FF8[v11];
  }

  v61 = v12;
  v82[4] = v12;
  v81[5] = @"itemPlaybackMode";
  v13 = [v7 playbackMode];
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = @"Streaming";
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", v13];
    }
  }

  else
  {
    v14 = @"File";
  }

  v82[5] = v14;
  v81[6] = @"externalScreenType";
  if (v10 >= 3)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown - %ld", v10];
  }

  else
  {
    v15 = off_1E8235010[v10];
  }

  v82[6] = v15;
  v81[7] = @"isAppleTVRoute";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isAppleTVRoute")}];
  v82[7] = v16;
  v81[8] = @"routeSubtype";
  [v9 routeSubtype];
  v17 = MPAVRouteSubtypeDescription();
  v82[8] = v17;
  v81[9] = @"canPlayEncryptedProgressiveDownloadAssets";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "canPlayEncryptedProgressiveDownloadAssets")}];
  v82[9] = v18;
  v81[10] = @"canFetchMediaDataFromSender";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "canFetchMediaDataFromSender")}];
  v82[10] = v19;
  v81[11] = @"presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets")}];
  v82[11] = v20;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:12];

  v21 = v69;
  LODWORD(v16) = [(MPCExternalPlaybackController *)v69 isExternalPlaybackAllowedForItem:v7];
  v6 = v68;
  v22 = [(MPCExternalPlaybackController *)v69 playerShouldUseAudiOnlyMode:v68 item:v7 externalScreenType:v10];
  v66 = v9;
  if (!v16)
  {
    goto LABEL_41;
  }

  v23 = [(MPCExternalPlaybackController *)v69 exernalPlaybackRouteRestrictionForItem:v7 route:v9 isScreenMirroringActive:v10 != 0];
  if (v23)
  {
    v24 = [(MPCExternalPlaybackController *)v69 playbackEngine];
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v24 engineID];
      v27 = v26;
      if ((v23 - 2) > 2)
      {
        v28 = @"Picked route can't play encrypted local files via progressive download";
      }

      else
      {
        v28 = off_1E8235028[v23 - 2];
      }

      *buf = 138544386;
      v73 = v26;
      v74 = 2048;
      v75 = v69;
      v76 = 2114;
      *v77 = v9;
      *&v77[8] = 2114;
      v78 = v7;
      v79 = 2114;
      v80 = v28;
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [Overriding isExternalPlaybackPossible to NO] - Picked route does not support external display - pickedRoute:%{public}@ - item:%{public}@ - reason:%{public}@", buf, 0x34u);
    }
  }

  if (v10 && [v7 type] != 2)
  {
    v31 = [(MPCExternalPlaybackController *)v69 playbackEngine];
    v32 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v31 engineID];
      v34 = v33;
      if ((v23 - 1) > 3)
      {
        v35 = @"Picked route has no restrictions";
      }

      else
      {
        v35 = off_1E8235040[v23 - 1];
      }

      *buf = 138544386;
      v73 = v33;
      v74 = 2048;
      v75 = v69;
      v76 = 2114;
      *v77 = v9;
      *&v77[8] = 2114;
      v78 = v7;
      v79 = 2114;
      v80 = v35;
      _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [Overriding isExternalPlaybackPossible to NO] - Screen mirroring is on for an audio item - pickedRoute:%{public}@ - item:%{public}@ - reason:%{public}@", buf, 0x34u);
    }

    if ([v7 type] != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if ([v7 type] == 1)
  {
LABEL_35:
    v36 = [(MPCExternalPlaybackController *)v69 playbackEngine];
    v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v36 engineID];
      v39 = v38;
      if ((v23 - 1) > 3)
      {
        v40 = @"Picked route has no restrictions";
      }

      else
      {
        v40 = off_1E8235040[v23 - 1];
      }

      *buf = 138544386;
      v73 = v38;
      v74 = 2048;
      v75 = v69;
      v76 = 2114;
      *v77 = v9;
      *&v77[8] = 2114;
      v78 = v7;
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

  v29 = (v10 || -[MPCExternalPlaybackController isPodcastContent:](v69, "isPodcastContent:", v7)) && [v7 type] == 2;
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

  v45 = [(MPCExternalPlaybackController *)v69 playbackEngine];
  v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = [v45 engineID];
    v48 = [v67 msv_compactDescription];
    [v44 msv_compactDescription];
    v50 = v49 = v44;
    *buf = 138544130;
    v73 = v47;
    v74 = 2048;
    v75 = v69;
    v76 = 2114;
    *v77 = v48;
    *&v77[8] = 2114;
    v78 = v50;
    _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [diagnosis] - input: %{public}@ -> output: %{public}@", buf, 0x2Au);

    v44 = v49;
    v6 = v68;

    v21 = v69;
  }

  v51 = [(MPCExternalPlaybackController *)v21 playbackEngine];
  v52 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [v51 engineID];
    *buf = 138544386;
    v73 = v53;
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

  v54 = v22 ^ [v6 usesAudioOnlyModeForExternalPlayback];
  if (v54 == 1)
  {
    [v6 setUsesAudioOnlyModeForExternalPlayback:v22];
  }

  [v6 setUsesExternalPlaybackWhileExternalScreenIsActive:v29];
  if (v30 != [v6 allowsExternalPlayback])
  {
    goto LABEL_51;
  }

  if (v54)
  {
    [v6 setAllowsExternalPlayback:v30 ^ 1];
LABEL_51:
    [v6 setAllowsExternalPlayback:v30];
  }

  v55 = v30 & [v66 isAppleTVRoute];
  v56 = [(MPCExternalPlaybackController *)v21 playbackEngine];
  v57 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = [v56 engineID];
    v59 = v21;
    v60 = v58;
    *buf = 138544130;
    v73 = v58;
    v74 = 2048;
    v75 = v59;
    v76 = 2114;
    *v77 = v7;
    *&v77[8] = 1024;
    LODWORD(v78) = v55;
    _os_log_impl(&dword_1C5C61000, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCExternalPlaybackControllerImplementation %p - External playback configuration [Updating item] - queueItem:%{public}@ - externalDisplay:%{BOOL}u", buf, 0x26u);
  }

  [v7 setExternalDisplay:v55];
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

- (MPCExternalPlaybackController)initWithPlaybackEngine:(id)a3 translator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MPCExternalPlaybackController;
  v8 = [(MPCExternalPlaybackController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackEngine, v6);
    objc_storeStrong(&v9->_translator, a4);
  }

  return v9;
}

@end