@interface _MPCMediaRemotePublisher
- (MPCPlaybackEngine)playbackEngine;
- (_MPCMediaRemotePublisher)initWithPlaybackEngine:(id)engine;
- (id)_exportableSessionTypes;
- (id)_requirementsForSetPlaybackSession;
- (id)_supportedSessionTypes;
- (id)getQOSDialogForError:(id)error withItem:(id)item;
- (id)nowPlayingInfoCenter:(id)center artworkCatalogForContentItem:(id)item;
- (id)nowPlayingInfoCenter:(id)center artworkForContentItem:(id)item size:(CGSize)size completion:(id)completion;
- (id)nowPlayingInfoCenter:(id)center childContentItemIDAtIndex:(int64_t)index ofItem:(id)item;
- (id)nowPlayingInfoCenter:(id)center contentItemForID:(id)d;
- (id)nowPlayingInfoCenter:(id)center contentItemIDForOffset:(int64_t)offset;
- (id)nowPlayingInfoCenter:(id)center contentItemIDsFromOffset:(int64_t)offset toOffset:(int64_t)toOffset nowPlayingIndex:(int64_t *)index;
- (id)nowPlayingInfoCenter:(id)center infoForContentItem:(id)item completion:(id)completion;
- (id)nowPlayingInfoCenter:(id)center lyricsForContentItem:(id)item completion:(id)completion;
- (id)nowPlayingInfoCenter:(id)center remoteArtworkForContentItem:(id)item format:(id)format size:(CGSize)size completion:(id)completion;
- (id)nowPlayingInfoCenter:(id)center transcriptAlignmentsForContentItem:(id)item completion:(id)completion;
- (id)playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter:(id)center;
- (id)playbackQueueIdentifierForNowPlayingInfoCenter:(id)center;
- (id)playbackQueuePropertiesForNowPlayingInfoCenter:(id)center;
- (id)stripCommandStatusForEVS:(id)s;
- (unint64_t)vocalAttenuationUnavailabilityReasons;
- (void)_MRPlaybackSessionMigratePostCallback:(id)callback completion:(id)completion;
- (void)_activeSharedSessionDidChange:(id)change;
- (void)_dispatchCommandEvent:(id)event completion:(id)completion;
- (void)_durationAvailableNotification:(id)notification;
- (void)_enqueueFallbackIntentIfNeededForCommandEvent:(id)event play:(BOOL)play completion:(id)completion;
- (void)_initializeCommands;
- (void)_leaveSharedSessionWithCommandID:(id)d completion:(id)completion;
- (void)_likedStateChangedNotification:(id)notification;
- (void)_performCommandEvent:(void *)event completion:;
- (void)_performDebugEvent:(id)event completion:(id)completion;
- (void)_performSkipChapterCommand:(unsigned int)command withCommandID:(id)d completion:(id)completion;
- (void)_podcastsSkipIntervalDidChange:(id)change;
- (void)_updateLaunchCommands;
- (void)_updateSupportedCommands;
- (void)becomeActive;
- (void)becomeActiveIfNeededWithCommandID:(id)d completion:(id)completion;
- (void)commandCenter:(id)center didDeliverCommandEvent:(id)event;
- (void)commandCenter:(id)center didTimeoutCommandEvent:(id)event statusHandler:(id)handler;
- (void)deactivateAudioSessionIfIdle:(int64_t)idle;
- (void)dealloc;
- (void)engine:(id)engine didChangeActionAtQueueEnd:(int64_t)end;
- (void)engine:(id)engine didChangeQueueController:(id)controller;
- (void)engine:(id)engine didChangeQueueWithReason:(id)reason;
- (void)engine:(id)engine didChangeRepeatType:(int64_t)type;
- (void)engine:(id)engine didChangeShuffleType:(int64_t)type;
- (void)engine:(id)engine didChangeToItem:(id)item;
- (void)engine:(id)engine didChangeToState:(unint64_t)state;
- (void)engine:(id)engine didReceivePickedRouteChange:(id)change;
- (void)engineDidBlockVocalAttenuation:(id)attenuation;
- (void)engineDidChangeTransitionSettings:(id)settings;
- (void)engineDidChangeVocalAttenuationLevel:(id)level;
- (void)engineDidChangeVocalAttenuationState:(id)state;
- (void)engineDidEndSleepTimer:(id)timer;
- (void)engineDidUnblockVocalAttenuation:(id)attenuation;
- (void)getShouldRestoreStateWithCompletion:(id)completion;
- (void)invalidateSessionTypesWithReason:(id)reason;
- (void)leaveSharedSessionWithCommandID:(id)d remoteControlInterface:(id)interface completion:(id)completion;
- (void)nowPlayingInfoCenter:(id)center didEndMigrationWithIdentifier:(id)identifier error:(id)error;
- (void)nowPlayingInfoCenter:(id)center getTransportablePlaybackSessionRepresentationForRequest:(id)request completion:(id)completion;
- (void)nowPlayingInfoCenter:(id)center willBeginSessionMigrationWithIdentifier:(id)identifier;
- (void)performSetQueue:(id)queue installQueueBeforeLoaded:(BOOL)loaded donatedStartPlayerItem:(id)item completion:(id)completion;
- (void)performSetQueueWithIntent:(id)intent completion:(id)completion;
- (void)publishIfNeeded;
- (void)reportUserBackgroundedApplication;
- (void)stripMediaRemoteOptionsForEVS:(id)s;
- (void)updatePlaybackMetrics:(id)metrics;
@end

@implementation _MPCMediaRemotePublisher

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)_updateLaunchCommands
{
  v3 = +[MPCCriticalSectionManager shared];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___MPCMediaRemotePublisher__updateLaunchCommands__block_invoke;
  v5[3] = &unk_1E8239298;
  v5[4] = self;
  v4 = [v3 performUniqueTaskNamed:@"UpdateLaunchCommands" afterCriticalSection:v5 onCancel:0];
}

- (id)_supportedSessionTypes
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = +[MPCQueueController allKnownSessionTypes];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138543618;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v11 = [MPCQueueController isSupportedSessionType:v10 reason:&v17, v16];
        v12 = v17;
        if (v11)
        {
          [v3 addObject:v10];
        }

        else
        {
          v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v23 = v10;
            v24 = 2114;
            v25 = v12;
            _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[Publisher] _supportedSessionTypes excluding session type [not supported] sessionType=%{public}@ reason=%{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];

  return v14;
}

- (id)_requirementsForSetPlaybackSession
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (+[MPCPlaybackEngine isSystemPodcasts])
  {
    v3 = 0;
  }

  else
  {
    if (+[MPCPlaybackEngine isSystemMusic])
    {
      if (MSVDeviceSupportsDelegatedIdentities())
      {
        v4 = +[MPCPlaybackAccountManager sharedManager];
        anyDelegationHostingAccount = [v4 anyDelegationHostingAccount];
        v6 = anyDelegationHostingAccount != 0;
      }

      else
      {
        v6 = 0;
      }

      if (MSVDeviceSupportsVocalAttenuation())
      {
        v6 |= 2uLL;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = +[MPCPlaybackAccountManager sharedManager];
    accounts = [v7 accounts];

    if (self)
    {
      swift = self->_swift;
    }

    else
    {
      swift = 0;
    }

    v10 = swift;
    v11 = [(_MPCMediaRemotePublisher_Swift *)v10 getMigrationRequirementsFilterDataForAccounts:accounts features:v6];

    v14[0] = @"features";
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v14[1] = @"filter";
    v15[0] = v12;
    v15[1] = v11;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  return v3;
}

- (void)becomeActive
{
  v11 = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    playerPath = [(MPNowPlayingInfoCenter *)self->_infoCenter playerPath];
    v7 = 138543618;
    v8 = engineID;
    v9 = 2114;
    v10 = playerPath;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActive | activating playerPath [] playerPath=%{public}@", &v7, 0x16u);
  }

  [(MPNowPlayingInfoCenter *)self->_infoCenter becomeActive];
}

- (void)publishIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];
  if (self->_commandUpdateScheduled)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = engineID;
      v6 = "[PUB:%{public}@] publishIfNeeded | ignoring [already scheduled]";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
LABEL_21:
      _os_log_impl(&dword_1C5C61000, v7, v8, v6, buf, 0xCu);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (self->_engineRestoringState)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138543362;
    v15 = engineID;
    v6 = "[PUB:%{public}@] publishIfNeeded | ignoring [state restore]";
LABEL_20:
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_21;
  }

  if (([playbackEngine isStarted] & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138543362;
    v15 = engineID;
    v6 = "[PUB:%{public}@] publishIfNeeded | ignoring [engine not started]";
    goto LABEL_20;
  }

  v9 = +[MPCPlaybackAccountManager sharedManager];
  hasLoadedInitialAccounts = [v9 hasLoadedInitialAccounts];

  if ((hasLoadedInitialAccounts & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138543362;
    v15 = engineID;
    v6 = "[PUB:%{public}@] publishIfNeeded | ignoring [waiting on accounts]";
    goto LABEL_20;
  }

  if (![(_MPCMediaRemotePublisher *)self hasInitializedSupportedCommands])
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = engineID;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] publishIfNeeded | initalizing []", buf, 0xCu);
    }

    self->_initializedSupportedCommands = 1;
    [(_MPCMediaRemotePublisher *)self _initializeCommands];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = engineID;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] publishIfNeeded | publishing [first publish]", buf, 0xCu);
    }

    [(_MPCMediaRemotePublisher *)self _updateSupportedCommands];
  }

  self->_commandUpdateScheduled = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___MPCMediaRemotePublisher_publishIfNeeded__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_23:
}

- (void)_initializeCommands
{
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v104 = 0;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[Publisher] _initializeCommands: first publish", v104, 2u);
  }

  playCommand = [(MPRemoteCommandCenter *)self->_commandCenter playCommand];
  [playCommand setUnsupportedReasons:0];

  playCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter playCommand];
  hasTargets = [playCommand2 hasTargets];

  if ((hasTargets & 1) == 0)
  {
    playCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter playCommand];
    [playCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  pauseCommand = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
  [pauseCommand setUnsupportedReasons:0];

  pauseCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
  hasTargets2 = [pauseCommand2 hasTargets];

  if ((hasTargets2 & 1) == 0)
  {
    pauseCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
    [pauseCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  stopCommand = [(MPRemoteCommandCenter *)self->_commandCenter stopCommand];
  [stopCommand setUnsupportedReasons:0];

  stopCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter stopCommand];
  hasTargets3 = [stopCommand2 hasTargets];

  if ((hasTargets3 & 1) == 0)
  {
    stopCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter stopCommand];
    [stopCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  togglePlayPauseCommand = [(MPRemoteCommandCenter *)self->_commandCenter togglePlayPauseCommand];
  [togglePlayPauseCommand setUnsupportedReasons:0];

  togglePlayPauseCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter togglePlayPauseCommand];
  hasTargets4 = [togglePlayPauseCommand2 hasTargets];

  if ((hasTargets4 & 1) == 0)
  {
    togglePlayPauseCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter togglePlayPauseCommand];
    [togglePlayPauseCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  nextTrackCommand = [(MPRemoteCommandCenter *)self->_commandCenter nextTrackCommand];
  [nextTrackCommand setUnsupportedReasons:0];

  nextTrackCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter nextTrackCommand];
  hasTargets5 = [nextTrackCommand2 hasTargets];

  if ((hasTargets5 & 1) == 0)
  {
    nextTrackCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter nextTrackCommand];
    [nextTrackCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  previousTrackCommand = [(MPRemoteCommandCenter *)self->_commandCenter previousTrackCommand];
  [previousTrackCommand setUnsupportedReasons:0];

  previousTrackCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter previousTrackCommand];
  hasTargets6 = [previousTrackCommand2 hasTargets];

  if ((hasTargets6 & 1) == 0)
  {
    previousTrackCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter previousTrackCommand];
    [previousTrackCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  playItemInQueueCommand = [(MPRemoteCommandCenter *)self->_commandCenter playItemInQueueCommand];
  [playItemInQueueCommand setUnsupportedReasons:0];

  playItemInQueueCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter playItemInQueueCommand];
  hasTargets7 = [playItemInQueueCommand2 hasTargets];

  if ((hasTargets7 & 1) == 0)
  {
    playItemInQueueCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter playItemInQueueCommand];
    [playItemInQueueCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  if (_os_feature_enabled_impl())
  {
    performDialogActionCommand = [(MPRemoteCommandCenter *)self->_commandCenter performDialogActionCommand];
    [performDialogActionCommand setUnsupportedReasons:0];

    performDialogActionCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter performDialogActionCommand];
    hasTargets8 = [performDialogActionCommand2 hasTargets];

    if ((hasTargets8 & 1) == 0)
    {
      performDialogActionCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter performDialogActionCommand];
      [performDialogActionCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }
  }

  setPlaybackQueueCommand = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  [setPlaybackQueueCommand setUnsupportedReasons:0];

  setPlaybackQueueCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  hasTargets9 = [setPlaybackQueueCommand2 hasTargets];

  if ((hasTargets9 & 1) == 0)
  {
    setPlaybackQueueCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [setPlaybackQueueCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  setPlaybackQueueCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  [setPlaybackQueueCommand4 registerSupportedQueueType:8];

  setPlaybackQueueCommand5 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  [setPlaybackQueueCommand5 registerSupportedQueueType:7];

  if (!+[MPCPlaybackEngine isSystemPodcasts])
  {
    setPlaybackQueueCommand6 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [setPlaybackQueueCommand6 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.radio"];

    setPlaybackQueueCommand7 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [setPlaybackQueueCommand7 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.tracklist"];

    setPlaybackQueueCommand8 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [setPlaybackQueueCommand8 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.sharedlistening"];

    setPlaybackQueueCommand9 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [setPlaybackQueueCommand9 registerSupportedCustomQueueIdentifier:@"com.apple.mediaplayer.playbackcontext"];

    setPlaybackQueueCommand10 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [setPlaybackQueueCommand10 registerSupportedCustomQueueIdentifier:@"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack"];
  }

  setPlaybackQueueCommand11 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  [setPlaybackQueueCommand11 setTimeout:30.0];

  setPlaybackSessionCommand = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  [setPlaybackSessionCommand setTimeout:30.0];

  prepareForSetPlaybackQueueCommand = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
  [prepareForSetPlaybackQueueCommand setUnsupportedReasons:0];

  prepareForSetPlaybackQueueCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
  hasTargets10 = [prepareForSetPlaybackQueueCommand2 hasTargets];

  if ((hasTargets10 & 1) == 0)
  {
    prepareForSetPlaybackQueueCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
    [prepareForSetPlaybackQueueCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  prepareForSetPlaybackQueueCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
  [prepareForSetPlaybackQueueCommand4 setSkipSerializedEventDelivery:1];

  prepareForSetPlaybackQueueCommand5 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
  [prepareForSetPlaybackQueueCommand5 setTimeout:30.0];

  insertIntoPlaybackQueueCommand = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  [insertIntoPlaybackQueueCommand setUnsupportedReasons:0];

  insertIntoPlaybackQueueCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  hasTargets11 = [insertIntoPlaybackQueueCommand2 hasTargets];

  if ((hasTargets11 & 1) == 0)
  {
    insertIntoPlaybackQueueCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
    [insertIntoPlaybackQueueCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  insertIntoPlaybackQueueCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  [insertIntoPlaybackQueueCommand4 registerSupportedQueueType:7];

  if (!+[MPCPlaybackEngine isSystemPodcasts])
  {
    insertIntoPlaybackQueueCommand5 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
    [insertIntoPlaybackQueueCommand5 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.radio"];

    insertIntoPlaybackQueueCommand6 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
    [insertIntoPlaybackQueueCommand6 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.tracklist"];

    insertIntoPlaybackQueueCommand7 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
    [insertIntoPlaybackQueueCommand7 registerSupportedCustomQueueIdentifier:@"com.apple.mediaplayer.playbackcontext"];
  }

  skipForwardCommand = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
  [skipForwardCommand setPreferredIntervals:&unk_1F45998E0];

  skipBackwardCommand = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
  [skipBackwardCommand setPreferredIntervals:&unk_1F45998F8];

  skipForwardCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
  [skipForwardCommand2 setUnsupportedReasons:0];

  skipForwardCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
  hasTargets12 = [skipForwardCommand3 hasTargets];

  if ((hasTargets12 & 1) == 0)
  {
    skipForwardCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
    [skipForwardCommand4 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  skipBackwardCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
  [skipBackwardCommand2 setUnsupportedReasons:0];

  skipBackwardCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
  hasTargets13 = [skipBackwardCommand3 hasTargets];

  if ((hasTargets13 & 1) == 0)
  {
    skipBackwardCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
    [skipBackwardCommand4 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  changeQueueEndActionCommand = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
  [changeQueueEndActionCommand setUnsupportedReasons:0];

  changeQueueEndActionCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
  hasTargets14 = [changeQueueEndActionCommand2 hasTargets];

  if ((hasTargets14 & 1) == 0)
  {
    changeQueueEndActionCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [changeQueueEndActionCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  if (+[MPCPlaybackEngine isSystemMusic])
  {
    likeCommand = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [likeCommand setUnsupportedReasons:0];

    likeCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    hasTargets15 = [likeCommand2 hasTargets];

    if ((hasTargets15 & 1) == 0)
    {
      likeCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
      [likeCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    mediaPlaybackCoreBundle = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v82 = [mediaPlaybackCoreBundle localizedStringForKey:@"REMOTE_CONTROL_LIKE_TRACK_RADIO" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    likeCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [likeCommand4 setLocalizedTitle:v82];

    mediaPlaybackCoreBundle2 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v85 = [mediaPlaybackCoreBundle2 localizedStringForKey:@"REMOTE_CONTROL_LIKE_TRACK_SHORT" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    likeCommand5 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [likeCommand5 setLocalizedShortTitle:v85];

    dislikeCommand = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [dislikeCommand setUnsupportedReasons:0];

    dislikeCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    LOBYTE(v85) = [dislikeCommand2 hasTargets];

    if ((v85 & 1) == 0)
    {
      dislikeCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
      [dislikeCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    mediaPlaybackCoreBundle3 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v91 = [mediaPlaybackCoreBundle3 localizedStringForKey:@"REMOTE_CONTROL_DISLIKE_TRACK_RADIO" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    dislikeCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [dislikeCommand4 setLocalizedTitle:v91];

    mediaPlaybackCoreBundle4 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v94 = [mediaPlaybackCoreBundle4 localizedStringForKey:@"REMOTE_CONTROL_DISLIKE_TRACK_SHORT" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    dislikeCommand5 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [dislikeCommand5 setLocalizedShortTitle:v94];
  }

  addNowPlayingItemToLibraryCommand = [(MPRemoteCommandCenter *)self->_commandCenter addNowPlayingItemToLibraryCommand];
  [addNowPlayingItemToLibraryCommand setUnsupportedReasons:0];

  addNowPlayingItemToLibraryCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter addNowPlayingItemToLibraryCommand];
  hasTargets16 = [addNowPlayingItemToLibraryCommand2 hasTargets];

  if ((hasTargets16 & 1) == 0)
  {
    addNowPlayingItemToLibraryCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter addNowPlayingItemToLibraryCommand];
    [addNowPlayingItemToLibraryCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  addItemToLibraryCommand = [(MPRemoteCommandCenter *)self->_commandCenter addItemToLibraryCommand];
  [addItemToLibraryCommand setUnsupportedReasons:0];

  addItemToLibraryCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter addItemToLibraryCommand];
  hasTargets17 = [addItemToLibraryCommand2 hasTargets];

  if ((hasTargets17 & 1) == 0)
  {
    addItemToLibraryCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter addItemToLibraryCommand];
    [addItemToLibraryCommand3 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }
}

- (void)_updateSupportedCommands
{
  v503 = *MEMORY[0x1E69E9840];
  if (![(_MPCMediaRemotePublisher *)self hasInitializedSupportedCommands])
  {
    return;
  }

  v466 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = os_signpost_id_generate(v4);

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v7 = v6;
  v468 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "UpdateSupportedCommands", "", buf, 2u);
  }

  spid = v5;

  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  queueController = [WeakRetained queueController];
  currentItem = [queueController currentItem];
  behaviorImpl = [queueController behaviorImpl];
  isEmpty = [behaviorImpl isEmpty];

  behaviorType = [queueController behaviorType];
  v12 = +[MPCPlaybackAccountManager sharedManager];
  fallbackAccount = [v12 fallbackAccount];
  hasCatalogPlaybackCapability = [fallbackAccount hasCatalogPlaybackCapability];

  sessionID = [queueController sessionID];
  setPlaybackSessionCommand = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  [setPlaybackSessionCommand setCurrentPlaybackSessionIdentifier:sessionID];

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    sessionID2 = [queueController sessionID];
    *buf = 138543618;
    v500 = sessionID2;
    v501 = 2114;
    v502 = currentItem;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_INFO, "[Publisher] _updateSupportedCommands sessionIdentifier=%{public}@ currentItem=%{public}@", buf, 0x16u);
  }

  isAlwaysLive = [currentItem isAlwaysLive];
  changePlaybackPositionCommand = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackPositionCommand];
  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v476 = isAlwaysLive;
  if (isAlwaysLive)
  {
    [array addObject:@"live streaming content"];
  }

  changePlaybackPositionCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackPositionCommand];
  [changePlaybackPositionCommand2 setCanBeControlledByScrubbing:v476 ^ 1u];

  transcriptAlignmentController = [WeakRetained transcriptAlignmentController];
  v25 = transcriptAlignmentController;
  v481 = currentItem;
  v472 = behaviorType;
  if (transcriptAlignmentController)
  {
    isEnabled = [transcriptAlignmentController isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  changePlaybackPositionCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackPositionCommand];
  [changePlaybackPositionCommand3 setSupportsReferencePosition:isEnabled];

  if ([array count])
  {
    v28 = v481;
    v29 = v472;
    if (![array count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v404 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler handleFailureInFunction:v404 file:@"_MPCMediaRemotePublisher.m" lineNumber:1084 description:@"Must provide reason for unsupported command"];
    }

    [changePlaybackPositionCommand setUnsupportedReasons:array];
    if ([changePlaybackPositionCommand hasTargets])
    {
      [changePlaybackPositionCommand removeTarget:selfCopy action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [changePlaybackPositionCommand setUnsupportedReasons:0];
    v28 = v481;
    v29 = v472;
    if (([changePlaybackPositionCommand hasTargets] & 1) == 0)
    {
      [changePlaybackPositionCommand addTarget:selfCopy action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [changePlaybackPositionCommand setEnabled:{objc_msgSend(array2, "count") == 0}];
    [changePlaybackPositionCommand setDisabledReasons:array2];
  }

  changePlaybackRateCommand = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackRateCommand];
  v31 = selfCopy;
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  if (([v28 supportsRateChange] & 1) == 0)
  {
    [array3 addObject:@"item does not support rate changes"];
  }

  if (v476)
  {
    [array3 addObject:@"live streaming content"];
  }

  if (v29 != 4)
  {
    [array4 addObject:@"hidden for Music"];
  }

  if ([array3 count])
  {
    if (![array3 count])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v406 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler2 handleFailureInFunction:v406 file:@"_MPCMediaRemotePublisher.m" lineNumber:1090 description:@"Must provide reason for unsupported command"];
    }

    [changePlaybackRateCommand setUnsupportedReasons:array3];
    if ([changePlaybackRateCommand hasTargets])
    {
      [changePlaybackRateCommand removeTarget:v31 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [changePlaybackRateCommand setUnsupportedReasons:0];
    if (([changePlaybackRateCommand hasTargets] & 1) == 0)
    {
      [changePlaybackRateCommand addTarget:v31 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [changePlaybackRateCommand setEnabled:{objc_msgSend(array4, "count") == 0}];
    [changePlaybackRateCommand setDisabledReasons:array4];
  }

  setSleepTimerCommand = [(MPRemoteCommandCenter *)self->_commandCenter setSleepTimerCommand];
  v35 = v31;
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  if (v29 != 4)
  {
    [array5 addObject:@"sleep timers for podcasts"];
    [array6 addObject:@"hidden for Music"];
  }

  if ([array5 count])
  {
    if (![array5 count])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v408 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler3 handleFailureInFunction:v408 file:@"_MPCMediaRemotePublisher.m" lineNumber:1095 description:@"Must provide reason for unsupported command"];
    }

    [setSleepTimerCommand setUnsupportedReasons:array5];
    if ([setSleepTimerCommand hasTargets])
    {
      [setSleepTimerCommand removeTarget:v35 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [setSleepTimerCommand setUnsupportedReasons:0];
    if (([setSleepTimerCommand hasTargets] & 1) == 0)
    {
      [setSleepTimerCommand addTarget:v35 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [setSleepTimerCommand setEnabled:{objc_msgSend(array6, "count") == 0}];
    [setSleepTimerCommand setDisabledReasons:array6];
  }

  seekForwardCommand = [(MPRemoteCommandCenter *)self->_commandCenter seekForwardCommand];
  v39 = v35;
  array7 = [MEMORY[0x1E695DF70] array];
  array8 = [MEMORY[0x1E695DF70] array];
  musicSharePlay = [queueController musicSharePlay];

  if (musicSharePlay)
  {
    [array7 addObject:@"shared listening does not support FF"];
  }

  if (v476)
  {
    [array7 addObject:@"live streaming content"];
  }

  if ([v28 isInOverlappedTransition])
  {
    [array7 addObject:@"overlapped transitions do not support FF"];
  }

  if ([array7 count])
  {
    if (![array7 count])
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v410 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler4 handleFailureInFunction:v410 file:@"_MPCMediaRemotePublisher.m" lineNumber:1103 description:@"Must provide reason for unsupported command"];
    }

    [seekForwardCommand setUnsupportedReasons:array7];
    if ([seekForwardCommand hasTargets])
    {
      [seekForwardCommand removeTarget:v39 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [seekForwardCommand setUnsupportedReasons:0];
    if (([seekForwardCommand hasTargets] & 1) == 0)
    {
      [seekForwardCommand addTarget:v39 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [seekForwardCommand setEnabled:{objc_msgSend(array8, "count") == 0}];
    [seekForwardCommand setDisabledReasons:array8];
  }

  seekBackwardCommand = [(MPRemoteCommandCenter *)self->_commandCenter seekBackwardCommand];
  v44 = v39;
  array9 = [MEMORY[0x1E695DF70] array];
  array10 = [MEMORY[0x1E695DF70] array];
  musicSharePlay2 = [queueController musicSharePlay];

  if (musicSharePlay2)
  {
    [array9 addObject:@"shared listening does not support RW"];
  }

  if (v476)
  {
    [array9 addObject:@"live streaming content"];
  }

  if ([v28 isInOverlappedTransition])
  {
    [array9 addObject:@"overlapped transitions do not support RW"];
  }

  if ([array9 count])
  {
    if (![array9 count])
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v412 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler5 handleFailureInFunction:v412 file:@"_MPCMediaRemotePublisher.m" lineNumber:1111 description:@"Must provide reason for unsupported command"];
    }

    [seekBackwardCommand setUnsupportedReasons:array9];
    if ([seekBackwardCommand hasTargets])
    {
      [seekBackwardCommand removeTarget:v44 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [seekBackwardCommand setUnsupportedReasons:0];
    if (([seekBackwardCommand hasTargets] & 1) == 0)
    {
      [seekBackwardCommand addTarget:v44 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [seekBackwardCommand setEnabled:{objc_msgSend(array10, "count") == 0}];
    [seekBackwardCommand setDisabledReasons:array10];
  }

  prefersSeekOverSkip = [v28 prefersSeekOverSkip];
  if (!v28)
  {
    prefersSeekOverSkip |= +[MPCPlaybackEngine isSystemPodcasts];
  }

  skipForwardCommand = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
  v50 = v44;
  array11 = [MEMORY[0x1E695DF70] array];
  array12 = [MEMORY[0x1E695DF70] array];
  if (v476)
  {
    [array11 addObject:@"live streaming content"];
  }

  if ((prefersSeekOverSkip & 1) == 0)
  {
    [array12 addObject:@"item prefers seek over skip"];
  }

  if ([array11 count])
  {
    if (![array11 count])
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v414 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler6 handleFailureInFunction:v414 file:@"_MPCMediaRemotePublisher.m" lineNumber:1121 description:@"Must provide reason for unsupported command"];

      v28 = v481;
    }

    [skipForwardCommand setUnsupportedReasons:array11];
    if ([skipForwardCommand hasTargets])
    {
      [skipForwardCommand removeTarget:v50 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [skipForwardCommand setUnsupportedReasons:0];
    if (([skipForwardCommand hasTargets] & 1) == 0)
    {
      [skipForwardCommand addTarget:v50 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [skipForwardCommand setEnabled:{objc_msgSend(array12, "count") == 0}];
    [skipForwardCommand setDisabledReasons:array12];
  }

  skipBackwardCommand = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
  v54 = v50;
  array13 = [MEMORY[0x1E695DF70] array];
  array14 = [MEMORY[0x1E695DF70] array];
  if (v476)
  {
    [array13 addObject:@"live streaming content"];
  }

  if ((prefersSeekOverSkip & 1) == 0)
  {
    [array14 addObject:@"item prefers seek over skip"];
  }

  if ([array13 count])
  {
    if (![array13 count])
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v416 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler7 handleFailureInFunction:v416 file:@"_MPCMediaRemotePublisher.m" lineNumber:1125 description:@"Must provide reason for unsupported command"];
    }

    [skipBackwardCommand setUnsupportedReasons:array13];
    if ([skipBackwardCommand hasTargets])
    {
      [skipBackwardCommand removeTarget:v54 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [skipBackwardCommand setUnsupportedReasons:0];
    if (([skipBackwardCommand hasTargets] & 1) == 0)
    {
      [skipBackwardCommand addTarget:v54 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [skipBackwardCommand setEnabled:{objc_msgSend(array14, "count") == 0}];
    [skipBackwardCommand setDisabledReasons:array14];
  }

  previousTrackCommand = [(MPRemoteCommandCenter *)self->_commandCenter previousTrackCommand];
  v58 = v54;
  array15 = [MEMORY[0x1E695DF70] array];
  array16 = [MEMORY[0x1E695DF70] array];
  if (isEmpty)
  {
    [array15 addObject:@"behavior has no items"];
  }

  v61 = @"uninitialized queueController";
  if (queueController)
  {
    v61 = 0;
  }

  v62 = v61;
  contentItemID = [v28 contentItemID];
  v490 = v62;
  v64 = [queueController canPreviousTrackForContentItemID:contentItemID reason:&v490];
  v65 = v490;

  if ((v64 & 1) == 0)
  {
    [array16 addObject:v65];
  }

  if ([array15 count])
  {
    v66 = v481;
    if (![array15 count])
    {
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v418 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler8 handleFailureInFunction:v418 file:@"_MPCMediaRemotePublisher.m" lineNumber:1132 description:@"Must provide reason for unsupported command"];
    }

    [previousTrackCommand setUnsupportedReasons:array15];
    if ([previousTrackCommand hasTargets])
    {
      [previousTrackCommand removeTarget:v58 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [previousTrackCommand setUnsupportedReasons:0];
    v66 = v481;
    if (([previousTrackCommand hasTargets] & 1) == 0)
    {
      [previousTrackCommand addTarget:v58 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [previousTrackCommand setEnabled:{objc_msgSend(array16, "count") == 0}];
    [previousTrackCommand setDisabledReasons:array16];
  }

  nextTrackCommand = [(MPRemoteCommandCenter *)self->_commandCenter nextTrackCommand];
  v68 = v58;
  array17 = [MEMORY[0x1E695DF70] array];
  array18 = [MEMORY[0x1E695DF70] array];
  if (isEmpty)
  {
    [array17 addObject:@"behavior has no items"];
  }

  v71 = v62;
  contentItemID2 = [v66 contentItemID];
  v489 = v71;
  v73 = [queueController canNextTrackForContentItemID:contentItemID2 reason:&v489];
  v74 = v489;

  if ((v73 & 1) == 0)
  {
    [array18 addObject:v74];
  }

  if ([v481 isPlaceholder])
  {
    [array18 addObject:@"loading item"];
  }

  if ([array17 count])
  {
    if (![array17 count])
    {
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v420 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler9 handleFailureInFunction:v420 file:@"_MPCMediaRemotePublisher.m" lineNumber:1139 description:@"Must provide reason for unsupported command"];
    }

    [nextTrackCommand setUnsupportedReasons:array17];
    if ([nextTrackCommand hasTargets])
    {
      [nextTrackCommand removeTarget:v68 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [nextTrackCommand setUnsupportedReasons:0];
    if (([nextTrackCommand hasTargets] & 1) == 0)
    {
      [nextTrackCommand addTarget:v68 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [nextTrackCommand setEnabled:{objc_msgSend(array18, "count") == 0}];
    [nextTrackCommand setDisabledReasons:array18];
  }

  createRadioStationCommand = [(MPRemoteCommandCenter *)self->_commandCenter createRadioStationCommand];
  v76 = v68;
  array19 = [MEMORY[0x1E695DF70] array];
  array20 = [MEMORY[0x1E695DF70] array];
  if (isEmpty)
  {
    [array19 addObject:@"behavior has no items"];
  }

  upNextBehavior = [queueController upNextBehavior];
  allowsQueueModifications = [upNextBehavior allowsQueueModifications];

  if ((allowsQueueModifications & 1) == 0)
  {
    [array19 addObject:@"queue does not allow modification"];
  }

  if ((hasCatalogPlaybackCapability & 1) == 0)
  {
    [array19 addObject:@"active account does not allow subscription playback"];
  }

  if (v476)
  {
    [array19 addObject:@"live streaming content"];
  }

  if ([v481 isPlaceholder])
  {
    [array19 addObject:@"loading item"];
  }

  modelGenericObject = [v481 modelGenericObject];
  flattenedGenericObject = [modelGenericObject flattenedGenericObject];
  type = [flattenedGenericObject type];

  if (type != 1)
  {
    [array19 addObject:@"item is not a Song"];
  }

  if ([array19 count])
  {
    if (![array19 count])
    {
      currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
      v422 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler10 handleFailureInFunction:v422 file:@"_MPCMediaRemotePublisher.m" lineNumber:1148 description:@"Must provide reason for unsupported command"];
    }

    [createRadioStationCommand setUnsupportedReasons:array19];
    if ([createRadioStationCommand hasTargets])
    {
      [createRadioStationCommand removeTarget:v76 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [createRadioStationCommand setUnsupportedReasons:0];
    if (([createRadioStationCommand hasTargets] & 1) == 0)
    {
      [createRadioStationCommand addTarget:v76 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [createRadioStationCommand setEnabled:{objc_msgSend(array20, "count") == 0}];
    [createRadioStationCommand setDisabledReasons:array20];
  }

  reorderQueueCommand = [(MPRemoteCommandCenter *)self->_commandCenter reorderQueueCommand];
  v85 = v76;
  array21 = [MEMORY[0x1E695DF70] array];
  array22 = [MEMORY[0x1E695DF70] array];
  if (isEmpty)
  {
    [array21 addObject:@"behavior has no items"];
  }

  upNextBehavior2 = [queueController upNextBehavior];
  allowsQueueModifications2 = [upNextBehavior2 allowsQueueModifications];

  if ((allowsQueueModifications2 & 1) == 0)
  {
    [array21 addObject:@"queue does not allow modifications"];
  }

  if ([array21 count])
  {
    if (![array21 count])
    {
      currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
      v424 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler11 handleFailureInFunction:v424 file:@"_MPCMediaRemotePublisher.m" lineNumber:1153 description:@"Must provide reason for unsupported command"];
    }

    [reorderQueueCommand setUnsupportedReasons:array21];
    if ([reorderQueueCommand hasTargets])
    {
      [reorderQueueCommand removeTarget:v85 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [reorderQueueCommand setUnsupportedReasons:0];
    if (([reorderQueueCommand hasTargets] & 1) == 0)
    {
      [reorderQueueCommand addTarget:v85 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [reorderQueueCommand setEnabled:{objc_msgSend(array22, "count") == 0}];
    [reorderQueueCommand setDisabledReasons:array22];
  }

  removeFromPlaybackQueueCommand = [(MPRemoteCommandCenter *)self->_commandCenter removeFromPlaybackQueueCommand];
  v91 = v85;
  array23 = [MEMORY[0x1E695DF70] array];
  array24 = [MEMORY[0x1E695DF70] array];
  if (isEmpty)
  {
    [array23 addObject:@"behavior has no items"];
  }

  upNextBehavior3 = [queueController upNextBehavior];
  allowsQueueModifications3 = [upNextBehavior3 allowsQueueModifications];

  if ((allowsQueueModifications3 & 1) == 0)
  {
    [array23 addObject:@"queue does not allow modifications"];
  }

  if ([array23 count])
  {
    if (![array23 count])
    {
      currentHandler12 = [MEMORY[0x1E696AAA8] currentHandler];
      v426 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler12 handleFailureInFunction:v426 file:@"_MPCMediaRemotePublisher.m" lineNumber:1157 description:@"Must provide reason for unsupported command"];
    }

    [removeFromPlaybackQueueCommand setUnsupportedReasons:array23];
    if ([removeFromPlaybackQueueCommand hasTargets])
    {
      [removeFromPlaybackQueueCommand removeTarget:v91 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [removeFromPlaybackQueueCommand setUnsupportedReasons:0];
    if (([removeFromPlaybackQueueCommand hasTargets] & 1) == 0)
    {
      [removeFromPlaybackQueueCommand addTarget:v91 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [removeFromPlaybackQueueCommand setEnabled:{objc_msgSend(array24, "count") == 0}];
    [removeFromPlaybackQueueCommand setDisabledReasons:array24];
  }

  v475 = queueController;
  if (queueController)
  {
    music = [queueController music];

    if (music)
    {
      v473 = 0;
      LODWORD(queueController) = 1;
    }

    else
    {
      v97 = MEMORY[0x1E696AEC0];
      if (v472 >= 6)
      {
        v472 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown/%lld", v472];
      }

      else
      {
        v472 = off_1E8236FC0[v472];
      }

      v473 = [v97 stringWithFormat:@"%@ behavior", v472];

      LODWORD(queueController) = 0;
    }
  }

  else
  {
    v473 = @"uninitialized queueController";
  }

  music2 = [v475 music];
  v488 = @"<MISSING REASON>";
  v100 = [music2 canUserChangeRepeatTypeWithReason:&v488];
  v469 = v488;

  music3 = [v475 music];
  repeatType = [music3 repeatType];

  changeRepeatModeCommand = [(MPRemoteCommandCenter *)self->_commandCenter changeRepeatModeCommand];
  v104 = v91;
  array25 = [MEMORY[0x1E695DF70] array];
  array26 = [MEMORY[0x1E695DF70] array];
  if ((queueController & 1) == 0)
  {
    [array25 addObject:v473];
  }

  if (isEmpty)
  {
    [array25 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableRepeat])
  {
    [array25 addObject:@"disabled for playback engine"];
  }

  if (v476)
  {
    [array25 addObject:@"live streaming content"];
  }

  v107 = queueController ^ 1;
  v108 = queueController ^ 1 | v100;
  if ((v108 & 1) == 0)
  {
    [array25 addObject:v469];
  }

  changeRepeatModeCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter changeRepeatModeCommand];
  [changeRepeatModeCommand2 setCurrentRepeatType:repeatType];

  if ([array25 count])
  {
    if (![array25 count])
    {
      currentHandler13 = [MEMORY[0x1E696AAA8] currentHandler];
      v427 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler13 handleFailureInFunction:v427 file:@"_MPCMediaRemotePublisher.m" lineNumber:1184 description:@"Must provide reason for unsupported command"];
    }

    [changeRepeatModeCommand setUnsupportedReasons:array25];
    if ([changeRepeatModeCommand hasTargets])
    {
      [changeRepeatModeCommand removeTarget:v104 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [changeRepeatModeCommand setUnsupportedReasons:0];
    if (([changeRepeatModeCommand hasTargets] & 1) == 0)
    {
      [changeRepeatModeCommand addTarget:v104 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [changeRepeatModeCommand setEnabled:{objc_msgSend(array26, "count") == 0}];
    [changeRepeatModeCommand setDisabledReasons:array26];
  }

  advanceRepeatModeCommand = [(MPRemoteCommandCenter *)self->_commandCenter advanceRepeatModeCommand];
  v111 = v104;
  array27 = [MEMORY[0x1E695DF70] array];
  array28 = [MEMORY[0x1E695DF70] array];
  if ((queueController & 1) == 0)
  {
    [array27 addObject:v473];
  }

  if (isEmpty)
  {
    [array27 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableRepeat])
  {
    [array27 addObject:@"disabled for playback engine"];
  }

  if (v476)
  {
    [array27 addObject:@"live streaming content"];
  }

  if ((v108 & 1) == 0)
  {
    [array27 addObject:v469];
  }

  advanceRepeatModeCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter advanceRepeatModeCommand];
  [advanceRepeatModeCommand2 setCurrentRepeatType:repeatType];

  if ([array27 count])
  {
    if (![array27 count])
    {
      currentHandler14 = [MEMORY[0x1E696AAA8] currentHandler];
      v429 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler14 handleFailureInFunction:v429 file:@"_MPCMediaRemotePublisher.m" lineNumber:1194 description:@"Must provide reason for unsupported command"];
    }

    [advanceRepeatModeCommand setUnsupportedReasons:array27];
    if ([advanceRepeatModeCommand hasTargets])
    {
      [advanceRepeatModeCommand removeTarget:v111 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [advanceRepeatModeCommand setUnsupportedReasons:0];
    if (([advanceRepeatModeCommand hasTargets] & 1) == 0)
    {
      [advanceRepeatModeCommand addTarget:v111 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [advanceRepeatModeCommand setEnabled:{objc_msgSend(array28, "count") == 0}];
    [advanceRepeatModeCommand setDisabledReasons:array28];
  }

  music4 = [v475 music];
  v487 = @"<MISSING REASON>";
  v116 = [music4 canUserChangeShuffleModeWithReason:&v487];
  v470 = v487;

  music5 = [v475 music];
  shuffleType = [music5 shuffleType];

  changeShuffleModeCommand = [(MPRemoteCommandCenter *)self->_commandCenter changeShuffleModeCommand];
  v120 = v111;
  array29 = [MEMORY[0x1E695DF70] array];
  array30 = [MEMORY[0x1E695DF70] array];
  if ((queueController & 1) == 0)
  {
    [array29 addObject:v473];
  }

  if (isEmpty)
  {
    [array29 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableShuffle])
  {
    [array29 addObject:@"disabled for playback engine"];
  }

  v123 = v107 | v116;
  if (((v107 | v116) & 1) == 0)
  {
    [array29 addObject:v470];
  }

  changeShuffleModeCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter changeShuffleModeCommand];
  [changeShuffleModeCommand2 setCurrentShuffleType:shuffleType];

  if ([array29 count])
  {
    if (![array29 count])
    {
      currentHandler15 = [MEMORY[0x1E696AAA8] currentHandler];
      v431 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler15 handleFailureInFunction:v431 file:@"_MPCMediaRemotePublisher.m" lineNumber:1207 description:@"Must provide reason for unsupported command"];
    }

    [changeShuffleModeCommand setUnsupportedReasons:array29];
    if ([changeShuffleModeCommand hasTargets])
    {
      [changeShuffleModeCommand removeTarget:v120 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [changeShuffleModeCommand setUnsupportedReasons:0];
    if (([changeShuffleModeCommand hasTargets] & 1) == 0)
    {
      [changeShuffleModeCommand addTarget:v120 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [changeShuffleModeCommand setEnabled:{objc_msgSend(array30, "count") == 0}];
    [changeShuffleModeCommand setDisabledReasons:array30];
  }

  advanceShuffleModeCommand = [(MPRemoteCommandCenter *)self->_commandCenter advanceShuffleModeCommand];
  v126 = v120;
  array31 = [MEMORY[0x1E695DF70] array];
  array32 = [MEMORY[0x1E695DF70] array];
  if ((queueController & 1) == 0)
  {
    [array31 addObject:v473];
  }

  if (isEmpty)
  {
    [array31 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableShuffle])
  {
    [array31 addObject:@"disabled for playback engine"];
  }

  if ((v123 & 1) == 0)
  {
    [array31 addObject:v470];
  }

  advanceShuffleModeCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter advanceShuffleModeCommand];
  [advanceShuffleModeCommand2 setCurrentShuffleType:shuffleType];

  if ([array31 count])
  {
    if (![array31 count])
    {
      currentHandler16 = [MEMORY[0x1E696AAA8] currentHandler];
      v433 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler16 handleFailureInFunction:v433 file:@"_MPCMediaRemotePublisher.m" lineNumber:1216 description:@"Must provide reason for unsupported command"];
    }

    [advanceShuffleModeCommand setUnsupportedReasons:array31];
    if ([advanceShuffleModeCommand hasTargets])
    {
      [advanceShuffleModeCommand removeTarget:v126 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [advanceShuffleModeCommand setUnsupportedReasons:0];
    if (([advanceShuffleModeCommand hasTargets] & 1) == 0)
    {
      [advanceShuffleModeCommand addTarget:v126 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [advanceShuffleModeCommand setEnabled:{objc_msgSend(array32, "count") == 0}];
    [advanceShuffleModeCommand setDisabledReasons:array32];
  }

  reshuffleCommand = [(MPRemoteCommandCenter *)self->_commandCenter reshuffleCommand];
  v131 = v126;
  array33 = [MEMORY[0x1E695DF70] array];
  array34 = [MEMORY[0x1E695DF70] array];
  if ((queueController & 1) == 0)
  {
    [array33 addObject:v473];
  }

  if (isEmpty)
  {
    [array33 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableShuffle])
  {
    [array33 addObject:@"disabled for playback engine"];
  }

  if ((v123 & 1) == 0)
  {
    [array33 addObject:v470];
  }

  if ([array33 count])
  {
    if (![array33 count])
    {
      currentHandler17 = [MEMORY[0x1E696AAA8] currentHandler];
      v435 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler17 handleFailureInFunction:v435 file:@"_MPCMediaRemotePublisher.m" lineNumber:1224 description:@"Must provide reason for unsupported command"];
    }

    [reshuffleCommand setUnsupportedReasons:array33];
    if ([reshuffleCommand hasTargets])
    {
      [reshuffleCommand removeTarget:v131 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [reshuffleCommand setUnsupportedReasons:0];
    if (([reshuffleCommand hasTargets] & 1) == 0)
    {
      [reshuffleCommand addTarget:v131 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [reshuffleCommand setEnabled:{objc_msgSend(array34, "count") == 0}];
    [reshuffleCommand setDisabledReasons:array34];
  }

  changeQueueEndActionCommand = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
  v135 = v131;
  array35 = [MEMORY[0x1E695DF70] array];
  array36 = [MEMORY[0x1E695DF70] array];
  if ((queueController & 1) == 0)
  {
    [array35 addObject:v473];
  }

  if (isEmpty)
  {
    [array35 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableAutoPlay])
  {
    [array35 addObject:@"disabled for playback engine"];
  }

  if (queueController)
  {
    changeQueueEndActionCommand5 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    music6 = [v475 music];
    v140 = objc_opt_respondsToSelector();

    if (v140)
    {
      music7 = [v475 music];
      v142 = [music7 isSupportedQueueEndAction:0];

      if (v142)
      {
        [changeQueueEndActionCommand5 addObject:&unk_1F4599478];
      }

      music8 = [v475 music];
      v144 = [music8 isSupportedQueueEndAction:2];

      if (v144)
      {
        [changeQueueEndActionCommand5 addObject:&unk_1F4599490];
      }

      music9 = [v475 music];
      v146 = [music9 isSupportedQueueEndAction:3];

      if (v146)
      {
        [changeQueueEndActionCommand5 addObject:&unk_1F45994A8];
      }
    }

    else
    {
      [changeQueueEndActionCommand5 addObject:&unk_1F4599490];
      if ((isEmpty & 1) == 0)
      {
        music10 = [v475 music];
        v486 = 0;
        v150 = [music10 canUserEnableAutoPlayWithReason:&v486];
        v151 = v486;

        if (v150)
        {
          [changeQueueEndActionCommand5 addObject:&unk_1F45994A8];
        }
      }
    }

    music11 = [v475 music];
    v153 = objc_opt_respondsToSelector();

    music12 = [v475 music];
    v155 = music12;
    if (v153)
    {
      queueEndAction = [music12 queueEndAction];
    }

    else if ([music12 autoPlayEnabled])
    {
      queueEndAction = 3;
    }

    else
    {
      queueEndAction = 2;
    }

    v148 = v481;

    changeQueueEndActionCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [changeQueueEndActionCommand2 setCurrentQueueEndAction:queueEndAction];

    changeQueueEndActionCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [changeQueueEndActionCommand3 setSupportedQueueEndActions:changeQueueEndActionCommand5];
  }

  else
  {
    changeQueueEndActionCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [changeQueueEndActionCommand4 setCurrentQueueEndAction:1];

    changeQueueEndActionCommand5 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [changeQueueEndActionCommand5 setSupportedQueueEndActions:MEMORY[0x1E695E0F0]];
    v148 = v481;
  }

  if ([array35 count])
  {
    if (![array35 count])
    {
      currentHandler18 = [MEMORY[0x1E696AAA8] currentHandler];
      v437 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler18 handleFailureInFunction:v437 file:@"_MPCMediaRemotePublisher.m" lineNumber:1264 description:@"Must provide reason for unsupported command"];
    }

    [changeQueueEndActionCommand setUnsupportedReasons:array35];
    if ([changeQueueEndActionCommand hasTargets])
    {
      [changeQueueEndActionCommand removeTarget:v135 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [changeQueueEndActionCommand setUnsupportedReasons:0];
    if (([changeQueueEndActionCommand hasTargets] & 1) == 0)
    {
      [changeQueueEndActionCommand addTarget:v135 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [changeQueueEndActionCommand setEnabled:{objc_msgSend(array36, "count") == 0}];
    [changeQueueEndActionCommand setDisabledReasons:array36];
  }

  shareQueueCommand = [(MPRemoteCommandCenter *)self->_commandCenter shareQueueCommand];
  v160 = v135;
  array37 = [MEMORY[0x1E695DF70] array];
  array38 = [MEMORY[0x1E695DF70] array];
  if ((queueController & 1) == 0)
  {
    [array37 addObject:v473];
  }

  v163 = v475;
  musicSharePlay3 = [v475 musicSharePlay];

  if (musicSharePlay3)
  {
    [array37 addObject:@"already in shared listening mode"];
  }

  if (isEmpty)
  {
    [array37 addObject:@"behavior has no items"];
  }

  if (![v148 storeSubscriptionAdamID])
  {
    [array37 addObject:@"item doesn't have subscription adam id"];
  }

  if ([array37 count])
  {
    if (![array37 count])
    {
      currentHandler19 = [MEMORY[0x1E696AAA8] currentHandler];
      v439 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler19 handleFailureInFunction:v439 file:@"_MPCMediaRemotePublisher.m" lineNumber:1270 description:@"Must provide reason for unsupported command"];
    }

    [shareQueueCommand setUnsupportedReasons:array37];
    if ([shareQueueCommand hasTargets])
    {
      [shareQueueCommand removeTarget:v160 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [shareQueueCommand setUnsupportedReasons:0];
    if (([shareQueueCommand hasTargets] & 1) == 0)
    {
      [shareQueueCommand addTarget:v160 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [shareQueueCommand setEnabled:{objc_msgSend(array38, "count") == 0}];
    [shareQueueCommand setDisabledReasons:array38];
  }

  shareQueueCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter shareQueueCommand];
  [shareQueueCommand2 setTimeout:30.0];

  if (!+[MPCPlaybackEngine isSystemPodcasts])
  {
    v166 = _os_feature_enabled_impl();
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    v168 = +[MPCPlaybackAccountManager sharedManager];
    fallbackAccount2 = [v168 fallbackAccount];

    transitionsEnabled = [standardUserDefaults _areTransitionsEnabledWithSubscription:{objc_msgSend(fallbackAccount2, "hasCatalogPlaybackCapability")}];
    v464 = fallbackAccount2;
    v465 = standardUserDefaults;
    transitionStyle = [standardUserDefaults transitionStyleForUserWithCatalogPlaybackCapability:{objc_msgSend(fallbackAccount2, "hasCatalogPlaybackCapability")}];
    transitionTogglable = [v475 transitionTogglable];
    v173 = transitionTogglable;
    v174 = 0;
    v175 = @"<MISSING REASON>";
    if (v166 && transitionTogglable)
    {
      v485 = @"<MISSING REASON>";
      v174 = [transitionTogglable canUserToggleTransitionsEnabledWithReason:&v485];
      v175 = v485;
      transitionsEnabled = [v173 transitionsEnabled];
      transitionStyle = [v173 transitionStyle];
    }

    v479 = v175;
    toggleTransitionsCommand = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    v463 = v160;
    array39 = [MEMORY[0x1E695DF70] array];
    array40 = [MEMORY[0x1E695DF70] array];
    v179 = array40;
    if ((v166 & 1) == 0)
    {
      [array40 addObject:@"alchemy feature not enabled"];
    }

    musicSharePlay4 = [v475 musicSharePlay];

    if (musicSharePlay4)
    {
      [v179 addObject:@"shared listening does not support transitions"];
    }

    if (v476)
    {
      [v179 addObject:@"live streaming content"];
    }

    if ([v481 type] != 1)
    {
      [v179 addObject:@"current item is not audio content"];
    }

    if ([WeakRetained isVocalAttenuationEnabled])
    {
      [v179 addObject:@"suntory does not support transitions"];
    }

    if (!((v173 == 0) | v174 & 1))
    {
      [v179 addObject:v479];
    }

    toggleTransitionsCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    [toggleTransitionsCommand2 setActive:transitionsEnabled];

    toggleTransitionsCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    [toggleTransitionsCommand3 setTransitionStyle:transitionStyle];

    v163 = v475;
    if ([array39 count])
    {
      v183 = v463;
      if (![array39 count])
      {
        currentHandler20 = [MEMORY[0x1E696AAA8] currentHandler];
        v459 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
        [currentHandler20 handleFailureInFunction:v459 file:@"_MPCMediaRemotePublisher.m" lineNumber:1309 description:@"Must provide reason for unsupported command"];
      }

      [toggleTransitionsCommand setUnsupportedReasons:array39];
      if ([toggleTransitionsCommand hasTargets])
      {
        [toggleTransitionsCommand removeTarget:v463 action:sel__dispatchCommandEvent_completion_];
      }
    }

    else
    {
      [toggleTransitionsCommand setUnsupportedReasons:0];
      v183 = v463;
      if (([toggleTransitionsCommand hasTargets] & 1) == 0)
      {
        [toggleTransitionsCommand addTarget:v463 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
      }

      [toggleTransitionsCommand setEnabled:{objc_msgSend(v179, "count") == 0}];
      [toggleTransitionsCommand setDisabledReasons:v179];
    }
  }

  insertIntoPlaybackQueueCommand = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  v185 = v160;
  array41 = [MEMORY[0x1E695DF70] array];
  array42 = [MEMORY[0x1E695DF70] array];
  v188 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  if (v481)
  {
    upNextBehavior4 = [v163 upNextBehavior];

    if (upNextBehavior4)
    {
      upNextBehavior5 = [v163 upNextBehavior];
      contentItemID3 = [v481 contentItemID];
      v192 = [upNextBehavior5 isSupportedInsertionPosition:0 fromContentItemID:contentItemID3 reason:0];

      if (v192)
      {
        [v188 addObject:&unk_1F4599478];
      }

      upNextBehavior6 = [v163 upNextBehavior];
      contentItemID4 = [v481 contentItemID];
      v195 = [upNextBehavior6 isSupportedInsertionPosition:1 fromContentItemID:contentItemID4 reason:0];

      if (v195 && ([v188 addObject:&unk_1F45994C0], objc_msgSend(v163, "music"), v196 = objc_claimAutoreleasedReturnValue(), v196, v196))
      {
        music13 = [v163 music];
        contentItemID5 = [v481 contentItemID];
        insertIntoPlaybackQueueCommand3 = [music13 lastSectionContentItemIDForTargetContentItemID:contentItemID5];

        insertIntoPlaybackQueueCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
        [insertIntoPlaybackQueueCommand2 setLastSectionContentItemID:insertIntoPlaybackQueueCommand3];
      }

      else
      {
        insertIntoPlaybackQueueCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
        [insertIntoPlaybackQueueCommand3 setLastSectionContentItemID:0];
      }

      upNextBehavior7 = [v163 upNextBehavior];
      contentItemID6 = [v481 contentItemID];
      v203 = [upNextBehavior7 isSupportedInsertionPosition:2 fromContentItemID:contentItemID6 reason:0];

      if (v203)
      {
        [v188 addObject:&unk_1F4599490];
      }

      upNextBehavior8 = [v163 upNextBehavior];
      contentItemID7 = [v481 contentItemID];
      v206 = [upNextBehavior8 isSupportedInsertionPosition:3 fromContentItemID:contentItemID7 reason:0];

      if (v206)
      {
        [v188 addObject:&unk_1F45994A8];
      }
    }
  }

  insertIntoPlaybackQueueCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  [insertIntoPlaybackQueueCommand4 setSupportedInsertionPositions:v188];

  upNextBehavior9 = [v163 upNextBehavior];

  if (!upNextBehavior9)
  {
    [array42 addObject:@"current behavior is not upNextBehavior"];
  }

  upNextBehavior10 = [v163 upNextBehavior];
  allowsQueueModifications4 = [upNextBehavior10 allowsQueueModifications];

  if ((allowsQueueModifications4 & 1) == 0)
  {
    [array42 addObject:@"queue does not allow modifications"];
  }

  if (!v481)
  {
    [array42 addObject:@"no current item in queue"];
  }

  if (![v188 count])
  {
    [array42 addObject:@"queue does not support any insertion positions"];
  }

  if ([array41 count])
  {
    v211 = v481;
    if (![array41 count])
    {
      currentHandler21 = [MEMORY[0x1E696AAA8] currentHandler];
      v441 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler21 handleFailureInFunction:v441 file:@"_MPCMediaRemotePublisher.m" lineNumber:1350 description:@"Must provide reason for unsupported command"];
    }

    [insertIntoPlaybackQueueCommand setUnsupportedReasons:array41];
    if ([insertIntoPlaybackQueueCommand hasTargets])
    {
      [insertIntoPlaybackQueueCommand removeTarget:v185 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [insertIntoPlaybackQueueCommand setUnsupportedReasons:0];
    v211 = v481;
    if (([insertIntoPlaybackQueueCommand hasTargets] & 1) == 0)
    {
      [insertIntoPlaybackQueueCommand addTarget:v185 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [insertIntoPlaybackQueueCommand setEnabled:{objc_msgSend(array42, "count") == 0}];
    [insertIntoPlaybackQueueCommand setDisabledReasons:array42];
  }

  setPlaybackSessionCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  v213 = v185;
  array43 = [MEMORY[0x1E695DF70] array];
  array44 = [MEMORY[0x1E695DF70] array];
  standardUserDefaults2 = [MEMORY[0x1E69708A8] standardUserDefaults];
  disableQHO = [standardUserDefaults2 disableQHO];

  if (disableQHO)
  {
    [array43 addObject:@"QHO disabled by defaults"];
  }

  if (([WeakRetained isQueueHandoffSupported] & 1) == 0)
  {
    [array43 addObject:@"engine not configured for QHO"];
  }

  _supportedSessionTypes = [v213 _supportedSessionTypes];
  _exportableSessionTypes = [v213 _exportableSessionTypes];
  setPlaybackSessionCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  [setPlaybackSessionCommand3 setSupportedSessionTypes:_supportedSessionTypes];

  setPlaybackSessionCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  [setPlaybackSessionCommand4 setExportableSessionTypes:_exportableSessionTypes];

  if (![_supportedSessionTypes count])
  {
    [array43 addObject:@"no supported session types"];
  }

  if (_os_feature_enabled_impl())
  {
    _requirementsForSetPlaybackSession = [v213 _requirementsForSetPlaybackSession];
    setPlaybackSessionCommand5 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
    [setPlaybackSessionCommand5 setRequirements:_requirementsForSetPlaybackSession];

    v211 = v481;
  }

  if ([array43 count])
  {
    if (![array43 count])
    {
      currentHandler22 = [MEMORY[0x1E696AAA8] currentHandler];
      v443 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler22 handleFailureInFunction:v443 file:@"_MPCMediaRemotePublisher.m" lineNumber:1366 description:@"Must provide reason for unsupported command"];
    }

    [setPlaybackSessionCommand2 setUnsupportedReasons:array43];
    if ([setPlaybackSessionCommand2 hasTargets])
    {
      [setPlaybackSessionCommand2 removeTarget:v213 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [setPlaybackSessionCommand2 setUnsupportedReasons:0];
    if (([setPlaybackSessionCommand2 hasTargets] & 1) == 0)
    {
      [setPlaybackSessionCommand2 addTarget:v213 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [setPlaybackSessionCommand2 setEnabled:{objc_msgSend(array44, "count") == 0}];
    [setPlaybackSessionCommand2 setDisabledReasons:array44];
  }

  delegateAccountCommand = [(MPRemoteCommandCenter *)self->_commandCenter delegateAccountCommand];
  v225 = v213;
  array45 = [MEMORY[0x1E695DF70] array];
  array46 = [MEMORY[0x1E695DF70] array];
  if ((MSVDeviceSupportsDelegatedIdentities() & 1) == 0)
  {
    [array45 addObject:@"device cannot accept delegate accounts"];
  }

  v228 = 0x1E822D000uLL;
  if ([array45 count])
  {
    if (![array45 count])
    {
      currentHandler23 = [MEMORY[0x1E696AAA8] currentHandler];
      v445 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler23 handleFailureInFunction:v445 file:@"_MPCMediaRemotePublisher.m" lineNumber:1371 description:@"Must provide reason for unsupported command"];
    }

    [delegateAccountCommand setUnsupportedReasons:array45];
    if ([delegateAccountCommand hasTargets])
    {
      [delegateAccountCommand removeTarget:v225 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [delegateAccountCommand setUnsupportedReasons:0];
    if (([delegateAccountCommand hasTargets] & 1) == 0)
    {
      [delegateAccountCommand addTarget:v225 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [delegateAccountCommand setEnabled:{objc_msgSend(array46, "count") == 0}];
    [delegateAccountCommand setDisabledReasons:array46];
  }

  if (+[MPCPlaybackEngine isSystemPodcasts])
  {
    enhanceDialogueCommand = [(MPRemoteCommandCenter *)self->_commandCenter enhanceDialogueCommand];
    v230 = v225;
    array47 = [MEMORY[0x1E695DF70] array];
    array48 = [MEMORY[0x1E695DF70] array];
    if ([v211 conformsToProtocol:&unk_1F459C980])
    {
      v233 = v211;
    }

    else
    {
      v233 = 0;
    }

    v234 = v233;
    if (_os_feature_enabled_impl() && v234 || ([array47 addObject:@"enhance dialogue for podcasts"], v234))
    {
      if (([v234 supportsEnhanceDialogue] & 1) == 0)
      {
        [array48 addObject:@"current route does not support enhance dialogue"];
      }

      isEnhanceDialogueActive = [v234 isEnhanceDialogueActive];
    }

    else
    {
      [array48 addObject:@"current route does not support enhance dialogue"];
      isEnhanceDialogueActive = 0;
    }

    enhanceDialogueCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter enhanceDialogueCommand];
    [enhanceDialogueCommand2 setActive:isEnhanceDialogueActive];

    if ([array47 count])
    {
      v228 = 0x1E822D000;
      if (![array47 count])
      {
        currentHandler24 = [MEMORY[0x1E696AAA8] currentHandler];
        v461 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
        [currentHandler24 handleFailureInFunction:v461 file:@"_MPCMediaRemotePublisher.m" lineNumber:1381 description:@"Must provide reason for unsupported command"];

        v228 = 0x1E822D000;
      }

      [enhanceDialogueCommand setUnsupportedReasons:array47];
      v211 = v481;
      if ([enhanceDialogueCommand hasTargets])
      {
        [enhanceDialogueCommand removeTarget:v230 action:sel__dispatchCommandEvent_completion_];
      }
    }

    else
    {
      [enhanceDialogueCommand setUnsupportedReasons:0];
      v228 = 0x1E822D000uLL;
      if (([enhanceDialogueCommand hasTargets] & 1) == 0)
      {
        [enhanceDialogueCommand addTarget:v230 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
      }

      [enhanceDialogueCommand setEnabled:{objc_msgSend(array48, "count") == 0}];
      [enhanceDialogueCommand setDisabledReasons:array48];
      v211 = v481;
    }
  }

  if (v472 == 4)
  {
    v237 = +[MPCPodcastsDefaultsHelper standard];
    v238 = [_MPCPodcastsPlaybackRateHelper alloc];
    player = [WeakRetained player];
    [player currentRate];
    v241 = v240;
    player2 = [WeakRetained player];
    state = [player2 state];
    LODWORD(v244) = v241;
    v245 = [(_MPCPodcastsPlaybackRateHelper *)v238 initWithCurrentRate:state playerState:v244];

    changePlaybackRateCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackRateCommand];
    v247 = +[_MPCPodcastsPlaybackRateHelper supportedPlaybackRates];
    [changePlaybackRateCommand2 setSupportedPlaybackRates:v247];

    v248 = +[_MPCPodcastsPlaybackRateHelper extendedSupportedPlaybackRates];
    v249 = [v248 count];

    if (v249)
    {
      v250 = +[_MPCPodcastsPlaybackRateHelper extendedSupportedPlaybackRates];
      [changePlaybackRateCommand2 setExtendedSupportedPlaybackRates:v250];
    }

    if (v481)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (([v481 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
        {
          currentHandler25 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler25 handleFailureInMethod:v466 object:v225 file:@"_MPCMediaRemotePublisher.m" lineNumber:1405 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
        }

        [v481 preferredPlaybackRate];
        [(_MPCPodcastsPlaybackRateHelper *)v245 currentDisplayRateWithSavedRate:?];
        [changePlaybackRateCommand2 setPreferredRate:?];
      }
    }

    v251 = MEMORY[0x1E696AD98];
    [v237 skipForwardInterval];
    v252 = [v251 numberWithDouble:?];
    v498 = v252;
    v253 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v498 count:1];
    skipForwardCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
    [skipForwardCommand2 setPreferredIntervals:v253];

    v255 = MEMORY[0x1E696AD98];
    [v237 skipBackwardInterval];
    v256 = [v255 numberWithDouble:?];
    v497 = v256;
    v257 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v497 count:1];
    skipBackwardCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
    [skipBackwardCommand2 setPreferredIntervals:v257];

    sleepTimerController = [WeakRetained sleepTimerController];
    [sleepTimerController time];
    v261 = v260;
    setSleepTimerCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter setSleepTimerCommand];
    [setSleepTimerCommand2 setTime:v261];

    sleepTimerController2 = [WeakRetained sleepTimerController];
    stopMode = [sleepTimerController2 stopMode];
    setSleepTimerCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter setSleepTimerCommand];
    [setSleepTimerCommand3 setStopMode:stopMode];

    v211 = v481;
    sleepTimerController3 = [WeakRetained sleepTimerController];
    [sleepTimerController3 fireDate];
    v268 = v267;
    setSleepTimerCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter setSleepTimerCommand];
    [setSleepTimerCommand4 setFireDate:v268];

    v163 = v475;
    goto LABEL_418;
  }

  if (!v211 && [*(v228 + 1872) isSystemPodcasts])
  {
    v237 = +[MPCPodcastsDefaultsHelper standard];
    v270 = MEMORY[0x1E696AD98];
    [v237 skipForwardInterval];
    v271 = [v270 numberWithDouble:?];
    v496 = v271;
    v272 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v496 count:1];
    skipForwardCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
    [skipForwardCommand3 setPreferredIntervals:v272];

    v274 = MEMORY[0x1E696AD98];
    [v237 skipBackwardInterval];
    v245 = [v274 numberWithDouble:?];
    v495 = v245;
    changePlaybackRateCommand2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v495 count:1];
    sleepTimerController3 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
    [sleepTimerController3 setPreferredIntervals:changePlaybackRateCommand2];
LABEL_418:

    v228 = 0x1E822D000uLL;
  }

  if ([*(v228 + 1872) isSystemMusic])
  {
    if ([v211 stationAllowsItemLiking])
    {
      v275 = 1;
    }

    else
    {
      v275 = 2;
    }

    likeCommand = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [likeCommand setPresentationStyle:v275];

    isLikedStateEnabled = [v211 isLikedStateEnabled];
    likeCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [likeCommand2 setEnabled:isLikedStateEnabled];

    v279 = [v211 likedState] == 2;
    likeCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [likeCommand3 setActive:v279];

    dislikeCommand = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [dislikeCommand setPresentationStyle:v275];

    isLikedStateEnabled2 = [v211 isLikedStateEnabled];
    dislikeCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [dislikeCommand2 setEnabled:isLikedStateEnabled2];

    v284 = [v211 likedState] == 3;
    dislikeCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [dislikeCommand3 setActive:v284];
  }

  modelGenericObject2 = [v211 modelGenericObject];
  flattenedGenericObject2 = [modelGenericObject2 flattenedGenericObject];
  anyObject = [flattenedGenericObject2 anyObject];

  addNowPlayingItemToLibraryCommand = [(MPRemoteCommandCenter *)self->_commandCenter addNowPlayingItemToLibraryCommand];
  os_unfair_lock_lock(v225 + 4);
  v290 = *(v225 + 1);
  v483[0] = MEMORY[0x1E69E9820];
  v483[1] = 3221225472;
  v483[2] = __52___MPCMediaRemotePublisher__updateSupportedCommands__block_invoke;
  v483[3] = &unk_1E82368E0;
  v477 = addNowPlayingItemToLibraryCommand;
  v484 = v477;
  [v290 setStatusBlock:v483];
  v480 = anyObject;
  [*(v225 + 1) configureWithModelObject:anyObject];
  os_unfair_lock_unlock(v225 + 4);
  ratingCommand = [(MPRemoteCommandCenter *)self->_commandCenter ratingCommand];
  v292 = v225;
  array49 = [MEMORY[0x1E695DF70] array];
  array50 = [MEMORY[0x1E695DF70] array];
  if (([v211 supportsRating] & 1) == 0)
  {
    [array49 addObject:@"item does not support ratings"];
  }

  if ([array49 count])
  {
    if (![array49 count])
    {
      currentHandler26 = [MEMORY[0x1E696AAA8] currentHandler];
      v447 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler26 handleFailureInFunction:v447 file:@"_MPCMediaRemotePublisher.m" lineNumber:1465 description:@"Must provide reason for unsupported command"];
    }

    [ratingCommand setUnsupportedReasons:array49];
    if ([ratingCommand hasTargets])
    {
      [ratingCommand removeTarget:v292 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [ratingCommand setUnsupportedReasons:0];
    if (([ratingCommand hasTargets] & 1) == 0)
    {
      [ratingCommand addTarget:v292 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [ratingCommand setEnabled:{objc_msgSend(array50, "count") == 0}];
    [ratingCommand setDisabledReasons:array50];
  }

  leaveSharedPlaybackSessionCommand = [(MPRemoteCommandCenter *)self->_commandCenter leaveSharedPlaybackSessionCommand];
  v296 = v292;
  array51 = [MEMORY[0x1E695DF70] array];
  array52 = [MEMORY[0x1E695DF70] array];
  musicSharePlay5 = [v163 musicSharePlay];

  if (!musicSharePlay5)
  {
    [array51 addObject:@"not in shared listening mode"];
  }

  leaveSharedPlaybackSessionCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter leaveSharedPlaybackSessionCommand];
  [leaveSharedPlaybackSessionCommand2 setSkipSerializedEventDelivery:1];

  if ([array51 count])
  {
    if (![array51 count])
    {
      currentHandler27 = [MEMORY[0x1E696AAA8] currentHandler];
      v449 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler27 handleFailureInFunction:v449 file:@"_MPCMediaRemotePublisher.m" lineNumber:1470 description:@"Must provide reason for unsupported command"];
    }

    [leaveSharedPlaybackSessionCommand setUnsupportedReasons:array51];
    if ([leaveSharedPlaybackSessionCommand hasTargets])
    {
      [leaveSharedPlaybackSessionCommand removeTarget:v296 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [leaveSharedPlaybackSessionCommand setUnsupportedReasons:0];
    if (([leaveSharedPlaybackSessionCommand hasTargets] & 1) == 0)
    {
      [leaveSharedPlaybackSessionCommand addTarget:v296 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [leaveSharedPlaybackSessionCommand setEnabled:{objc_msgSend(array52, "count") == 0}];
    [leaveSharedPlaybackSessionCommand setDisabledReasons:array52];
  }

  vocalAttenuationUnavailabilityReasons = [v296 vocalAttenuationUnavailabilityReasons];
  prepareVocalsControlCommand = [(MPRemoteCommandCenter *)self->_commandCenter prepareVocalsControlCommand];
  v303 = v296;
  array53 = [MEMORY[0x1E695DF70] array];
  array54 = [MEMORY[0x1E695DF70] array];
  if (vocalAttenuationUnavailabilityReasons)
  {
    [array53 addObject:@"vocal attenuation is not supported on this device"];
  }

  if ((vocalAttenuationUnavailabilityReasons & 2) != 0)
  {
    [array53 addObject:@"Active account cannot play catalog content"];
  }

  if ((vocalAttenuationUnavailabilityReasons & 0x10) != 0)
  {
    vocalAttenuationController = [WeakRetained vocalAttenuationController];
    v307 = vocalAttenuationController;
    if (vocalAttenuationController)
    {
      v308 = *(vocalAttenuationController + 80);
    }

    else
    {
      v308 = 0;
    }

    v309 = v308;
    explanation = [v309 explanation];
    [array53 addObject:explanation];
  }

  vocalAttenuationController2 = [WeakRetained vocalAttenuationController];
  if (!vocalAttenuationController2 || (v312 = vocalAttenuationController2[9], vocalAttenuationController2, v312 != 2))
  {
    vocalAttenuationController3 = [WeakRetained vocalAttenuationController];
    if ([(MPCWhiskyController *)vocalAttenuationController3 isVocalAttenuationAvailable])
    {
      v314 = @"engine is ready for vocal attenuation";
    }

    else
    {
      v314 = @"engine cannot prepare for vocal attenuation";
    }

    [array54 addObject:v314];
  }

  if ([array53 count])
  {
    if (![array53 count])
    {
      currentHandler28 = [MEMORY[0x1E696AAA8] currentHandler];
      v451 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler28 handleFailureInFunction:v451 file:@"_MPCMediaRemotePublisher.m" lineNumber:1493 description:@"Must provide reason for unsupported command"];
    }

    [prepareVocalsControlCommand setUnsupportedReasons:array53];
    if ([prepareVocalsControlCommand hasTargets])
    {
      [prepareVocalsControlCommand removeTarget:v303 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [prepareVocalsControlCommand setUnsupportedReasons:0];
    if (([prepareVocalsControlCommand hasTargets] & 1) == 0)
    {
      [prepareVocalsControlCommand addTarget:v303 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [prepareVocalsControlCommand setEnabled:{objc_msgSend(array54, "count") == 0}];
    [prepareVocalsControlCommand setDisabledReasons:array54];
  }

  vocalsControlCommand = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  v316 = v303;
  array55 = [MEMORY[0x1E695DF70] array];
  array56 = [MEMORY[0x1E695DF70] array];
  if (vocalAttenuationUnavailabilityReasons)
  {
    [array55 addObject:@"vocal attenuation is not supported on this device"];
    if ((vocalAttenuationUnavailabilityReasons & 2) == 0)
    {
LABEL_471:
      if ((vocalAttenuationUnavailabilityReasons & 8) == 0)
      {
        goto LABEL_473;
      }

      goto LABEL_472;
    }
  }

  else if ((vocalAttenuationUnavailabilityReasons & 2) == 0)
  {
    goto LABEL_471;
  }

  [array55 addObject:@"Active account cannot play catalog content"];
  if ((vocalAttenuationUnavailabilityReasons & 8) != 0)
  {
LABEL_472:
    [array55 addObject:@"vocal attenuation is disabled in shared listening mode"];
  }

LABEL_473:
  vocalAttenuationController4 = [WeakRetained vocalAttenuationController];
  v320 = vocalAttenuationController4;
  if (vocalAttenuationController4)
  {
    v321 = *(vocalAttenuationController4 + 80);
  }

  else
  {
    v321 = 0;
  }

  v322 = v321;

  if (!v322)
  {
    vocalAttenuationController5 = [WeakRetained vocalAttenuationController];
    isVocalAttenuationAvailable = [(MPCWhiskyController *)vocalAttenuationController5 isVocalAttenuationAvailable];

    if ((isVocalAttenuationAvailable & 1) == 0)
    {
      [array55 addObject:@"engine is not ready for vocal attenuation"];
    }
  }

  if ((vocalAttenuationUnavailabilityReasons & 0x20) != 0)
  {
    [array56 addObject:@"current item does not support vocal attenuation"];
  }

  vocalsControlCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  [vocalsControlCommand2 setDisabledReason:0];

  if ([v481 supportsVocalAttenuation])
  {
    if ((vocalAttenuationUnavailabilityReasons & 0x10) != 0)
    {
      vocalAttenuationController6 = [WeakRetained vocalAttenuationController];
      v327 = vocalAttenuationController6;
      if (vocalAttenuationController6)
      {
        v328 = *(vocalAttenuationController6 + 80);
      }

      else
      {
        v328 = 0;
      }

      v329 = v328;
      explanation2 = [v329 explanation];
      [array56 addObject:explanation2];
    }

    vocalAttenuationController7 = [WeakRetained vocalAttenuationController];
    v332 = vocalAttenuationController7;
    if (vocalAttenuationController7)
    {
      v333 = *(vocalAttenuationController7 + 80);
    }

    else
    {
      v333 = 0;
    }

    v334 = v333;

    if (v334)
    {
      vocalAttenuationController8 = [WeakRetained vocalAttenuationController];
      v336 = vocalAttenuationController8;
      v337 = vocalAttenuationController8 ? *(vocalAttenuationController8 + 80) : 0;
      v338 = v337;
      reason = [v338 reason];

      if (reason <= 3)
      {
        v340 = *(&unk_1C60454A0 + reason);
        vocalsControlCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
        [vocalsControlCommand3 setDisabledReason:v340];
      }
    }
  }

  [WeakRetained vocalLevel];
  v343 = v342;
  vocalsControlCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  LODWORD(v345) = v343;
  [vocalsControlCommand4 setVocalsLevel:v345];

  vocalAttenuationController9 = [WeakRetained vocalAttenuationController];
  v347 = vocalAttenuationController9;
  v348 = 0;
  v349 = 0;
  if (vocalAttenuationController9)
  {
    v349 = *(vocalAttenuationController9 + 56);
  }

  vocalsControlCommand5 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  LODWORD(v351) = v349;
  [vocalsControlCommand5 setMinVocalsLevel:v351];

  vocalAttenuationController10 = [WeakRetained vocalAttenuationController];
  v353 = vocalAttenuationController10;
  if (vocalAttenuationController10)
  {
    v348 = *(vocalAttenuationController10 + 60);
  }

  vocalsControlCommand6 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  LODWORD(v355) = v348;
  [vocalsControlCommand6 setMaxVocalsLevel:v355];

  isVocalAttenuationEnabled = [WeakRetained isVocalAttenuationEnabled];
  vocalsControlCommand7 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  [vocalsControlCommand7 setVocalsControlActive:isVocalAttenuationEnabled];

  pickedRoute = [WeakRetained pickedRoute];
  LODWORD(vocalsControlCommand7) = [pickedRoute isAirPlayRoute];
  vocalsControlCommand8 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  [vocalsControlCommand8 setContinuous:vocalsControlCommand7 ^ 1];

  if ([array55 count])
  {
    if (![array55 count])
    {
      currentHandler29 = [MEMORY[0x1E696AAA8] currentHandler];
      v453 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler29 handleFailureInFunction:v453 file:@"_MPCMediaRemotePublisher.m" lineNumber:1541 description:@"Must provide reason for unsupported command"];
    }

    [vocalsControlCommand setUnsupportedReasons:array55];
    if ([vocalsControlCommand hasTargets])
    {
      [vocalsControlCommand removeTarget:v316 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [vocalsControlCommand setUnsupportedReasons:0];
    if (([vocalsControlCommand hasTargets] & 1) == 0)
    {
      [vocalsControlCommand addTarget:v316 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [vocalsControlCommand setEnabled:{objc_msgSend(array56, "count") == 0}];
    [vocalsControlCommand setDisabledReasons:array56];
  }

  upNextBehavior11 = [v475 upNextBehavior];
  contentItemID8 = [v481 contentItemID];
  v362 = [upNextBehavior11 tailInsertionContentItemIDForTargetContentItemID:contentItemID8];

  clearUpNextCommand = [(MPRemoteCommandCenter *)self->_commandCenter clearUpNextCommand];
  v364 = v316;
  array57 = [MEMORY[0x1E695DF70] array];
  array58 = [MEMORY[0x1E695DF70] array];
  upNextBehavior12 = [v475 upNextBehavior];

  if (!upNextBehavior12)
  {
    [array57 addObject:@"current behavior is not upNextBehavior"];
  }

  upNextBehavior13 = [v475 upNextBehavior];
  v369 = objc_opt_respondsToSelector();

  if ((v369 & 1) == 0)
  {
    [array57 addObject:@"current behavior does not implement command"];
  }

  if (!v362)
  {
    [array57 addObject:@"no active up next queue"];
  }

  v370 = v481;
  if ([array57 count])
  {
    if (![array57 count])
    {
      currentHandler30 = [MEMORY[0x1E696AAA8] currentHandler];
      v455 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler30 handleFailureInFunction:v455 file:@"_MPCMediaRemotePublisher.m" lineNumber:1548 description:@"Must provide reason for unsupported command"];
    }

    [clearUpNextCommand setUnsupportedReasons:array57];
    if ([clearUpNextCommand hasTargets])
    {
      [clearUpNextCommand removeTarget:v364 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [clearUpNextCommand setUnsupportedReasons:0];
    if (([clearUpNextCommand hasTargets] & 1) == 0)
    {
      [clearUpNextCommand addTarget:v364 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [clearUpNextCommand setEnabled:{objc_msgSend(array58, "count") == 0}];
    [clearUpNextCommand setDisabledReasons:array58];
  }

  clearUpcomingQueue = [(MPRemoteCommandCenter *)self->_commandCenter clearUpcomingQueue];
  v372 = v364;
  array59 = [MEMORY[0x1E695DF70] array];
  array60 = [MEMORY[0x1E695DF70] array];
  upNextBehavior14 = [v475 upNextBehavior];

  if (!upNextBehavior14)
  {
    [array59 addObject:@"current behavior is not upNextBehavior"];
  }

  upNextBehavior15 = [v475 upNextBehavior];
  v377 = objc_opt_respondsToSelector();

  if ((v377 & 1) == 0)
  {
    [array59 addObject:@"current behavior does not implement command"];
  }

  if ([array59 count])
  {
    if (![array59 count])
    {
      currentHandler31 = [MEMORY[0x1E696AAA8] currentHandler];
      v457 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [currentHandler31 handleFailureInFunction:v457 file:@"_MPCMediaRemotePublisher.m" lineNumber:1553 description:@"Must provide reason for unsupported command"];
    }

    [clearUpcomingQueue setUnsupportedReasons:array59];
    if ([clearUpcomingQueue hasTargets])
    {
      [clearUpcomingQueue removeTarget:v372 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [clearUpcomingQueue setUnsupportedReasons:0];
    if (([clearUpcomingQueue hasTargets] & 1) == 0)
    {
      [clearUpcomingQueue addTarget:v372 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [clearUpcomingQueue setEnabled:{objc_msgSend(array60, "count") == 0}];
    [clearUpcomingQueue setDisabledReasons:array60];
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    stageConditionCommand = [(MPRemoteCommandCenter *)self->_commandCenter stageConditionCommand];
    [stageConditionCommand setUnsupportedReasons:0];

    stageConditionCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter stageConditionCommand];
    hasTargets = [stageConditionCommand2 hasTargets];

    if ((hasTargets & 1) == 0)
    {
      stageConditionCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter stageConditionCommand];
      [stageConditionCommand3 addTarget:v372 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    debugCommand = [(MPRemoteCommandCenter *)self->_commandCenter debugCommand];
    hasTargets2 = [debugCommand hasTargets];

    if ((hasTargets2 & 1) == 0)
    {
      debugCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter debugCommand];
      [debugCommand2 addTarget:v372 action:sel__performDebugEvent_completion_ usingExtendedStatus:1];
    }

    debugCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter debugCommand];
    [debugCommand3 setSupportedSubsystems:&unk_1F4599910];

    v493[0] = @"com.apple.Music.performance";
    v386 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v372[19]];
    v493[1] = @"com.apple.Music.queue";
    v494[0] = v386;
    v387 = MEMORY[0x1E696AEC0];
    revisionString = [v475 revisionString];
    contentItemID9 = [v481 contentItemID];
    v389 = [v387 stringWithFormat:@"%@&currentItem=%@", revisionString, contentItemID9];
    v494[1] = v389;
    v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v494 forKeys:v493 count:2];
    debugCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter debugCommand];
    [debugCommand4 setSubsystemRevisions:v391];

    v370 = v481;
  }

  _debugCommandDescriptions = [(MPRemoteCommandCenter *)self->_commandCenter _debugCommandDescriptions];
  v394 = [_debugCommandDescriptions msv_compactMap:&__block_literal_global_426];

  v395 = v372[5];
  v396 = v394;
  eventStream = v395;
  if (v396 == eventStream)
  {
    playbackEngine = v396;
    goto LABEL_543;
  }

  v398 = [v396 isEqual:eventStream];

  if ((v398 & 1) == 0)
  {
    objc_storeStrong(v372 + 5, v394);
    playbackEngine = [v372 playbackEngine];
    eventStream = [playbackEngine eventStream];
    v491 = @"remote-control-commands";
    v492 = v396;
    v400 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v492 forKeys:&v491 count:1];
    [eventStream emitEventType:@"remote-control-commands-changed" payload:v400];

LABEL_543:
  }

  v401 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v402 = v401;
  if (v468 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v401))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v402, OS_SIGNPOST_INTERVAL_END, spid, "UpdateSupportedCommands", "", buf, 2u);
  }
}

- (id)_exportableSessionTypes
{
  v32 = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  if ([playbackEngine isVocalAttenuationEnabled])
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[Publisher] _exportableSessionTypes empty [Suntory mode is active]", buf, 2u);
    }

    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    queueController = [playbackEngine queueController];
    v3 = queueController;
    if (queueController)
    {
      currentItem = [queueController currentItem];
      v7 = currentItem;
      if (currentItem)
      {
        v20 = currentItem;
        v21 = playbackEngine;
        contentItemID = [currentItem contentItemID];
        v9 = +[MPCQueueController allKnownSessionTypes];
        v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * i);
              v22 = 0;
              v16 = [v3 isExportableSessionType:v15 forContentItemID:contentItemID reason:&v22];
              v17 = v22;
              if (v16)
              {
                [v4 addObject:v15];
              }

              else
              {
                v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v28 = v15;
                  v29 = 2114;
                  v30 = v17;
                  _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[Publisher] _exportableSessionTypes excluding session type [not exportable] sessionType=%{public}@ reason=%{public}@", buf, 0x16u);
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        v7 = v20;
        playbackEngine = v21;
      }

      else
      {
        contentItemID = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(contentItemID, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v28 = v3;
          _os_log_impl(&dword_1C5C61000, contentItemID, OS_LOG_TYPE_DEFAULT, "[Publisher] _exportableSessionTypes empty [queueController: %p currentItem is nil]", buf, 0xCu);
        }

        v4 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[Publisher] _exportableSessionTypes empty [queueController is nil]", buf, 2u);
      }

      v4 = MEMORY[0x1E695E0F0];
    }
  }

  return v4;
}

- (unint64_t)vocalAttenuationUnavailabilityReasons
{
  v3 = +[MPCPlaybackAccountManager sharedManager];
  activeAccount = [v3 activeAccount];

  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  currentItem = [queueController currentItem];
  v8 = MSVDeviceSupportsVocalAttenuation();
  hasCatalogPlaybackCapability = [activeAccount hasCatalogPlaybackCapability];
  musicSharePlay = [queueController musicSharePlay];

  vocalAttenuationController = [playbackEngine vocalAttenuationController];
  v12 = vocalAttenuationController;
  if (vocalAttenuationController)
  {
    v13 = *(vocalAttenuationController + 80);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 ^ 1u;
  if (!hasCatalogPlaybackCapability)
  {
    v14 |= 2uLL;
  }

  if (musicSharePlay)
  {
    v15 = v14 | 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = v13;

  if (v16)
  {
    v17 = v15 | 0x10;
  }

  else
  {
    v17 = v15;
  }

  if (![currentItem supportsVocalAttenuation])
  {
    v17 |= 0x20uLL;
  }

  return v17;
}

- (void)_MRPlaybackSessionMigratePostCallback:(id)callback completion:(id)completion
{
  callbackCopy = callback;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__20001;
  v34 = __Block_byref_object_dispose__20002;
  v35 = 0;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77___MPCMediaRemotePublisher__MRPlaybackSessionMigratePostCallback_completion___block_invoke;
  v26[3] = &unk_1E8236E60;
  v11 = callbackCopy;
  v27 = v11;
  v12 = completionCopy;
  v28 = v12;
  v29 = &v30;
  [eventStream performQuery:v26];

  v13 = v31[5];
  if (v13)
  {
    v14 = [v13 objectForKeyedSubscript:@"metrics"];
    firstObject = [v14 firstObject];

    if (firstObject)
    {
      v16 = [firstObject objectForKeyedSubscript:@"raw"];
      [v8 addEntriesFromDictionary:v16];
    }

    (*(v12 + 2))(v12, v8, 0);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77___MPCMediaRemotePublisher__MRPlaybackSessionMigratePostCallback_completion___block_invoke_2;
    aBlock[3] = &unk_1E8236E88;
    v24 = v8;
    v25 = v12;
    v17 = _Block_copy(aBlock);
    mrMigratePostCallbackCompletion = self->_mrMigratePostCallbackCompletion;
    self->_mrMigratePostCallbackCompletion = v17;

    v19 = objc_alloc(MEMORY[0x1E69B13F0]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77___MPCMediaRemotePublisher__MRPlaybackSessionMigratePostCallback_completion___block_invoke_3;
    v22[3] = &unk_1E82368E0;
    v22[4] = self;
    v20 = [v19 initWithTimeout:v22 interruptionHandler:10.0];
    mrMigratePostCallbackGuard = self->_mrMigratePostCallbackGuard;
    self->_mrMigratePostCallbackGuard = v20;

    firstObject = v24;
  }

  _Block_object_dispose(&v30, 8);
}

- (void)_performSkipChapterCommand:(unsigned int)command withCommandID:(id)d completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  player = [playbackEngine player];
  [player currentTime];
  v13 = v12;

  queueController = [playbackEngine queueController];
  currentItem = [queueController currentItem];

  v16 = currentItem;
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = v16;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, "❗️Cannot skip chapters for current item: %{public}@, item has an unexpected type.", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69708F8];
    [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2101 debugDescription:{@"Current item has an unexpected type: %@.", v16}];
    goto LABEL_10;
  }

  chapters = [v16 chapters];
  v18 = [chapters count];

  if (!v18)
  {
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = v16;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, "❗️Cannot skip chapters for current item: %{public}@, item does not have chapters.", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69708F8];
    [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2101 debugDescription:{@"Current item does not have chapters: %@.", v16}];
    goto LABEL_10;
  }

  if (command == 101)
  {
    v19 = [v16 previousChapterBefore:v13];
LABEL_16:
    v25 = v19;
    if (v19)
    {
      player2 = [playbackEngine player];
      [v25 startTime];
      v28 = v27;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __80___MPCMediaRemotePublisher__performSkipChapterCommand_withCommandID_completion___block_invoke;
      v30[3] = &unk_1E8236E20;
      v31 = v16;
      v32 = v25;
      v33 = completionCopy;
      v22 = v25;
      [player2 jumpToTime:dCopy identifier:v30 completion:v28];

      v23 = v31;
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (command == 100)
  {
    v19 = [v16 nextChapterAfter:v13];
    goto LABEL_16;
  }

LABEL_18:
  v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v35 = v16;
    _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_ERROR, "❗️Cannot skip chapters for current item: %{public}@, unable to find next chapter.", buf, 0xCu);
  }

  v21 = MEMORY[0x1E69708F8];
  [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2101 debugDescription:{@"Unable to find next chapter for current item: %@.", v16}];
  v22 = LABEL_10:;
  v23 = [v21 statusWithCode:200 error:v22];
  (*(completionCopy + 2))(completionCopy, v23);
LABEL_11:
}

- (void)performSetQueue:(id)queue installQueueBeforeLoaded:(BOOL)loaded donatedStartPlayerItem:(id)item completion:(id)completion
{
  loadedCopy = loaded;
  v10 = MEMORY[0x1E6970970];
  completionCopy = completion;
  itemCopy = item;
  queueCopy = queue;
  v14 = [v10 alloc];
  commandCenter = [(_MPCMediaRemotePublisher *)self commandCenter];
  setPlaybackQueueCommand = [commandCenter setPlaybackQueueCommand];
  v18 = [v14 initWithCommand:setPlaybackQueueCommand playbackQueue:queueCopy];

  if (self)
  {
    swift = self->_swift;
  }

  else
  {
    swift = 0;
  }

  [(_MPCMediaRemotePublisher_Swift *)swift performSetQueueWithEvent:v18 installQueueBeforeLoaded:loadedCopy donatedStartPlayerItem:itemCopy completion:completionCopy];
}

- (void)performSetQueueWithIntent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___MPCMediaRemotePublisher_performSetQueueWithIntent_completion___block_invoke;
  v10[3] = &unk_1E8236DF8;
  selfCopy = self;
  v13 = completionCopy;
  v11 = intentCopy;
  v8 = completionCopy;
  v9 = intentCopy;
  [v9 getRemotePlaybackQueueWithDestination:1 completion:v10];
}

- (void)_dispatchCommandEvent:(id)event completion:(id)completion
{
  v120 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  selfCopy = self;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  commandID = [eventCopy commandID];
  v8 = [@"CommandBegin:" stringByAppendingString:commandID];
  v69 = [eventStream eventDeliveryDeferralAssertionOfType:0 forReason:v8];

  commandID2 = [eventCopy commandID];
  v10 = [@"CommandEnd:" stringByAppendingString:commandID2];
  [eventCopy timeout];
  if (v11 == 0.0)
  {
    v11 = 30.0;
  }

  v66 = [eventStream eventDeliveryDeferralAssertionOfType:1 forReason:v10 withTimeout:v11];

  v94 = 0;
  v93 = 0u;
  v92 = 0u;
  MPCPlaybackEngineEventGetMonotonicTime(&v92);
  commandID3 = [eventCopy commandID];
  v13 = [@"CommandDispatch:" stringByAppendingString:commandID3];

  v14 = +[MPCCriticalSectionManager shared];
  v65 = [v14 takeAssertion:v13];

  v76 = v13;
  if (selfCopy)
  {
    playbackEngine2 = [(_MPCMediaRemotePublisher *)selfCopy playbackEngine];
    v105[0] = 0;
    v105[1] = v105;
    v105[2] = 0x3032000000;
    v105[3] = __Block_byref_object_copy__20001;
    v105[4] = __Block_byref_object_dispose__20002;
    v106 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = __Block_byref_object_copy__20001;
    v103 = __Block_byref_object_dispose__20002;
    v104 = 0;
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v16 = *MEMORY[0x1E69B1358];
    v98 = *MEMORY[0x1E69B1358];
    v17 = MPSharedBackgroundTaskProvider();
    *&v114 = MEMORY[0x1E69E9820];
    *(&v114 + 1) = 3221225472;
    *&v115 = __62___MPCMediaRemotePublisher__backgroundTaskWithReason_timeout___block_invoke;
    *(&v115 + 1) = &unk_1E8239078;
    v18 = playbackEngine2;
    v116 = v18;
    v19 = v76;
    v117 = v19;
    v118 = &v95;
    v119 = &v99;
    v20 = [v17 beginTaskWithName:v19 expirationHandler:&v114];
    v96[3] = v20;

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [v18 engineID];
      v23 = v96[3];
      *buf = 138544130;
      *&buf[4] = engineID;
      *&buf[12] = 2114;
      *&buf[14] = v19;
      *&buf[22] = 2048;
      v110 = v23;
      LOWORD(v111) = 2048;
      *(&v111 + 2) = 0x404E000000000000;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _backgroundTaskWithReason:%{public}@ | begin [] identifier=%lli timeout=%0.2gs", buf, 0x2Au);
    }

    if (v96[3] == v16)
    {
      v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        engineID2 = [v18 engineID];
        *buf = 138543618;
        *&buf[4] = engineID2;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] _backgroundTaskWithReason:%{public}@ | failed []", buf, 0x16u);
      }

      v64 = 0;
    }

    else
    {
      v26 = objc_alloc(MEMORY[0x1E69B13F0]);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __62___MPCMediaRemotePublisher__backgroundTaskWithReason_timeout___block_invoke_443;
      v110 = &unk_1E8236938;
      *&v111 = v18;
      *(&v111 + 1) = v19;
      v112 = &v95;
      v113 = v105;
      v27 = [v26 initWithTimeout:buf interruptionHandler:60.0];
      v28 = v100[5];
      v100[5] = v27;

      v64 = v100[5];
      v24 = v111;
    }

    _Block_object_dispose(&v95, 8);
    _Block_object_dispose(&v99, 8);

    _Block_object_dispose(v105, 8);
  }

  else
  {
    v64 = 0;
  }

  mediaRemoteCommandType = [eventCopy mediaRemoteCommandType];
  ptr = [eventCopy commandID];
  v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  spid = os_signpost_id_make_with_pointer(v29, ptr);

  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v31 = v30;
  v32 = spid - 1;
  if (mediaRemoteCommandType)
  {
    if (mediaRemoteCommandType == 122)
    {
      if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        LOWORD(v114) = 0;
        v33 = "PerformCommandSetPlaybackQueue";
LABEL_20:
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v31, OS_SIGNPOST_INTERVAL_BEGIN, spid, v33, "", &v114, 2u);
      }
    }

    else if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      v34 = MPCRemoteCommandDescriptionCopy(mediaRemoteCommandType);
      LODWORD(v114) = 138543362;
      *(&v114 + 4) = v34;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v31, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PerformCommandOther", "command=%{public, signpost.telemetry:string1, name=command}@", &v114, 0xCu);
    }
  }

  else if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    LOWORD(v114) = 0;
    v33 = "PerformCommandPlay";
    goto LABEL_20;
  }

  mediaRemoteOptions = [eventCopy mediaRemoteOptions];
  v75 = [mediaRemoteOptions mutableCopy];

  [(_MPCMediaRemotePublisher *)selfCopy stripMediaRemoteOptionsForEVS:v75];
  mediaRemoteOptions2 = [eventCopy mediaRemoteOptions];
  v74 = [mediaRemoteOptions2 objectForKeyedSubscript:*MEMORY[0x1E69B1268]];

  mediaRemoteOptions3 = [eventCopy mediaRemoteOptions];
  v38 = [mediaRemoteOptions3 objectForKeyedSubscript:*MEMORY[0x1E69B10D0]];
  v63 = v38 != 0;

  if ([eventCopy mediaRemoteCommandType] == 122)
  {
    v39 = eventCopy;
    playbackQueue = [v39 playbackQueue];
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(playbackQueue, "isRequestingImmediatePlayback")}];
LABEL_30:
    v44 = v41;

    goto LABEL_32;
  }

  if ([eventCopy mediaRemoteCommandType] == 133)
  {
    swift = selfCopy;
    if (selfCopy)
    {
      swift = selfCopy->_swift;
    }

    v43 = MEMORY[0x1E696AD98];
    v39 = swift;
    playbackQueue = eventCopy;
    v41 = [v43 numberWithBool:{objc_msgSend(v39, "getRequestingImmediatePlaybackFromSetPlaybackSessionCommandEvent:", playbackQueue)}];
    goto LABEL_30;
  }

  v44 = 0;
LABEL_32:
  v107[0] = @"remote-control-id";
  commandID4 = [eventCopy commandID];
  v108[0] = commandID4;
  v107[1] = @"remote-control-type";
  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(eventCopy, "mediaRemoteCommandType")}];
  v108[1] = v45;
  v107[2] = @"remote-control-source";
  sourceID = [eventCopy sourceID];
  v108[2] = sourceID;
  v107[3] = @"remote-control-associated-participant-id";
  associatedParticipantIdentifier = [eventCopy associatedParticipantIdentifier];
  null = associatedParticipantIdentifier;
  if (!associatedParticipantIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v49 = MEMORY[0x1E695E0F8];
  if (v75)
  {
    v49 = v75;
  }

  v108[3] = null;
  v108[4] = v49;
  v107[4] = @"remote-control-options";
  v107[5] = @"remote-control-queue-data";
  null2 = v74;
  if (!v74)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v108[5] = null2;
  v107[6] = @"remote-control-queue-start";
  null3 = v44;
  if (!v44)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v108[6] = null3;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:7];
  v114 = v92;
  v115 = v93;
  v116 = v94;
  [eventStream emitEventType:@"remote-control-begin" payload:v52 atTime:&v114];

  if (!v44)
  {
  }

  if (!v74)
  {
  }

  if (!associatedParticipantIdentifier)
  {
  }

  [v69 invalidate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___MPCMediaRemotePublisher__dispatchCommandEvent_completion___block_invoke;
  aBlock[3] = &unk_1E82369C8;
  aBlock[4] = selfCopy;
  v53 = eventCopy;
  v90 = mediaRemoteCommandType;
  v89 = spid;
  v91 = v63;
  v81 = v53;
  v82 = v44;
  v54 = playbackEngine;
  v83 = v54;
  v84 = v64;
  v85 = eventStream;
  v86 = v66;
  v87 = v65;
  v88 = completionCopy;
  v55 = v65;
  v56 = v66;
  v57 = eventStream;
  v58 = completionCopy;
  v59 = v64;
  v78 = v44;
  v60 = _Block_copy(aBlock);
  if (-[_MPCMediaRemotePublisher _commandRequiresMediaServices:](selfCopy, "_commandRequiresMediaServices:", [v53 mediaRemoteCommandType]))
  {
    player = [v54 player];
    commandID5 = [v53 commandID];
    [player performWhenMediaServicesAreAvailable:v60 identifier:commandID5];
  }

  else
  {
    v60[2](v60);
  }
}

- (void)_performCommandEvent:(void *)event completion:
{
  v584 = *MEMORY[0x1E69E9840];
  v423 = a2;
  eventCopy = event;
  if (!self)
  {
    goto LABEL_38;
  }

  mediaRemoteCommandType = [v423 mediaRemoteCommandType];
  playbackEngine = [self playbackEngine];
  queueController = [playbackEngine queueController];
  v7 = MPCRemoteCommandDescriptionCopy(mediaRemoteCommandType);
  commandID = [v423 commandID];
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    interfaceID = [v423 interfaceID];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = commandID;
    *&buf[22] = 2114;
    v581 = interfaceID;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[_MPCMediaRemotePublisher _performCommandEvent:completion:]: received MRMediaRemoteCommand type=%{public}@ id=%{public}@ interface=%{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v581 = __Block_byref_object_copy__20001;
  v582 = __Block_byref_object_dispose__20002;
  v583 = 0;
  v572[0] = 0;
  v572[1] = v572;
  v572[2] = 0x3032000000;
  v572[3] = __Block_byref_object_copy__20001;
  v572[4] = __Block_byref_object_dispose__20002;
  v573 = 0;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke;
  aBlock[3] = &unk_1E82369F0;
  aBlock[4] = self;
  v11 = v423;
  v565 = v11;
  v569 = v572;
  v419 = COERCE_DOUBLE(v7);
  v566 = v419;
  v12 = commandID;
  v567 = v12;
  v568 = eventCopy;
  v570 = buf;
  v13 = _Block_copy(aBlock);
  v560[0] = MEMORY[0x1E69E9820];
  v560[1] = 3221225472;
  v560[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_467;
  v560[3] = &unk_1E8236A18;
  v14 = playbackEngine;
  v561 = v14;
  v15 = v12;
  v562 = v15;
  v16 = v13;
  v563 = v16;
  v416 = _Block_copy(v560);
  v556[0] = MEMORY[0x1E69E9820];
  v556[1] = 3221225472;
  v556[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_472;
  v556[3] = &unk_1E8236A18;
  v17 = v14;
  v557 = v17;
  v420 = v15;
  v558 = v420;
  v18 = v16;
  v559 = v18;
  v417 = _Block_copy(v556);
  v554[0] = MEMORY[0x1E69E9820];
  v554[1] = 3221225472;
  v554[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_474;
  v554[3] = &unk_1E8236A40;
  v19 = v11;
  v555 = v19;
  v418 = _Block_copy(v554);
  v552[0] = MEMORY[0x1E69E9820];
  v552[1] = 3221225472;
  v552[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_482;
  v552[3] = &unk_1E8236A40;
  v20 = v19;
  v553 = v20;
  v415 = _Block_copy(v552);
  contentItemID = [v20 contentItemID];
  v22 = contentItemID;
  v414 = contentItemID;
  if (mediaRemoteCommandType > 25019)
  {
    switch(mediaRemoteCommandType)
    {
      case 0x61BC:
        player = [v17 player];
        currentItem = [player currentItem];
        v36 = currentItem == 0;

        if (v36)
        {
          v52 = MEMORY[0x1E69708F8];
          v53 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"Failed to share queue [no current item]"];
          v54 = [v52 statusWithCode:200 error:v53];
          (*(v18 + 2))(v18, v54);
        }

        else
        {
          musicSharePlay = [queueController musicSharePlay];
          v38 = musicSharePlay == 0;

          if (v38)
          {
            v55 = _MPCLogCategoryPlayback();
            v56 = os_signpost_id_generate(v55);

            v57 = _MPCLogCategoryPlayback();
            v58 = v57;
            if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
            {
              *v574 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C5C61000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v56, "shareQueue:getTracklist", "", v574, 2u);
            }

            music = [queueController music];
            targetContentItemID = [queueController targetContentItemID];
            v436[0] = MEMORY[0x1E69E9820];
            v436[1] = 3221225472;
            v436[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_748;
            v436[3] = &unk_1E8236DA8;
            v439 = v56;
            v438 = v18;
            v437 = v20;
            [music getSharedQueueTracklistWithStartingContentItemID:targetContentItemID completion:v436];
          }

          else
          {
            v39 = MEMORY[0x1E69708F8];
            v40 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Cannot get a shared queue tracklist [already in a shared queue] queueController=%@", queueController}];
            v41 = [v39 statusWithCode:200 error:v40];
            (*(v18 + 2))(v18, v41);
          }
        }

        break;
      case 0x61BD:
        upNextBehavior = [queueController upNextBehavior];
        v43 = objc_opt_respondsToSelector();

        if (v43)
        {
          upNextBehavior2 = [queueController upNextBehavior];
          queueController2 = [v17 queueController];
          targetContentItemID2 = [queueController2 targetContentItemID];
          [upNextBehavior2 clearAllItemsAfterContentItemID:targetContentItemID2];

          [MEMORY[0x1E69708F8] successStatus];
        }

        else
        {
LABEL_32:
          [MEMORY[0x1E69708F8] statusWithCode:404];
        }

        v47 = LABEL_28:;
        (*(v18 + 2))(v18, v47);

        break;
      case 0x18697:
        mediaRemoteOptions = [v20 mediaRemoteOptions];
        v24 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B11A0]];

        mediaRemoteOptions2 = [v20 mediaRemoteOptions];
        v26 = [mediaRemoteOptions2 objectForKeyedSubscript:*MEMORY[0x1E69B11C0]];

        v27 = *(self + 136);
        v435 = 0;
        [v27 sonicStageCondition:v26 forIdentifier:v24 error:&v435];
        v28 = COERCE_DOUBLE(v435);

        if (v28 == 0.0)
        {
          successStatus = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, successStatus);
        }

        else
        {
          v29 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *v574 = 138543362;
            v575 = v28;
            _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_ERROR, "[Publisher] MPCMediaRemoteCommandStageCondition - error:%{public}@", v574, 0xCu);
          }

          successStatus = [MEMORY[0x1E69708F8] statusWithCode:200 error:*&v28];
          (*(v18 + 2))(v18, successStatus);
        }

        break;
      default:
LABEL_29:
        v48 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v574 = 138543618;
          v575 = v419;
          v576 = 2114;
          v577 = v420;
          _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_ERROR, "❗️Unsupported command: %{public}@ id=%{public}@", v574, 0x16u);
        }

LABEL_31:

        v49 = MEMORY[0x1E69708F8];
        v50 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Unsupported command event: %@", v20}];
        v51 = [v49 statusWithCode:200 error:v50];
        (*(v18 + 2))(v18, v51);

        break;
    }

    goto LABEL_36;
  }

  switch(mediaRemoteCommandType)
  {
    case 100:
    case 101:
      if ([queueController behaviorType] == 4)
      {
        [self _performSkipChapterCommand:mediaRemoteCommandType withCommandID:v420 completion:v18];
        goto LABEL_37;
      }

      v48 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *v574 = 138543618;
        v575 = v419;
        v576 = 2114;
        v577 = v420;
        _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_ERROR, "❗️Unsupported command: %{public}@ id=%{public}@", v574, 0x16u);
      }

      goto LABEL_31;
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 123:
    case 126:
    case 136:
    case 137:
    case 138:
    case 141:
    case 148:
      goto LABEL_29;
    case 121:
      v152 = v20;
      stationURL = [v152 stationURL];
      if (stationURL)
      {
        v154 = [MPCPlaybackIntent radioPlaybackIntentWithStationURL:stationURL];
        [v154 setPlayActivityFeatureName:@"siri"];
        contextID = [v152 contextID];
        [v154 setSiriReferenceIdentifier:contextID];

        v456[0] = MEMORY[0x1E69E9820];
        v456[1] = 3221225472;
        v456[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_681;
        v456[3] = &unk_1E8236B80;
        currentItem2 = v154;
        v457 = currentItem2;
        v458 = v18;
        [self performSetQueueWithIntent:currentItem2 completion:v456];

        v157 = v457;
      }

      else
      {
        player2 = [v17 player];
        currentItem2 = [player2 currentItem];

        if (currentItem2)
        {
          modelGenericObject = [currentItem2 modelGenericObject];
          flattenedGenericObject = [modelGenericObject flattenedGenericObject];

          if ([flattenedGenericObject type] == 1)
          {
            song = [flattenedGenericObject song];
            v309 = [MPCPlaybackIntent radioPlaybackIntentFromSong:song];

            [v309 setPlayActivityFeatureName:@"now_playing"];
            contextID2 = [v152 contextID];
            [v309 setSiriReferenceIdentifier:contextID2];

            if (v309)
            {
              music2 = [queueController music];
              v312 = music2 == 0;

              if (v312)
              {
                v447[0] = MEMORY[0x1E69E9820];
                v447[1] = 3221225472;
                v447[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_703;
                v447[3] = &unk_1E8236B80;
                v449 = v18;
                v313 = v309;
                v448 = v313;
                [self performSetQueueWithIntent:v313 completion:v447];

                song2 = v449;
              }

              else
              {
                v450[0] = MEMORY[0x1E69E9820];
                v450[1] = 3221225472;
                v450[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_694;
                v450[3] = &unk_1E8236CA8;
                v313 = v309;
                v451 = v313;
                v455 = v18;
                v452 = queueController;
                v453 = currentItem2;
                selfCopy = self;
                [v313 getRemotePlaybackQueueWithDestination:1 completion:v450];

                song2 = v451;
              }
            }

            else
            {
              v398 = MEMORY[0x1E69708F8];
              v399 = MEMORY[0x1E696ABC0];
              song2 = [flattenedGenericObject song];
              v400 = [v399 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 debugDescription:{@"Failed to get radio intent from song: %@", song2}];
              v401 = [v398 statusWithCode:200 error:v400];
              (*(v18 + 2))(v18, v401);

              v313 = 0;
            }
          }

          else
          {
            [flattenedGenericObject type];
            v313 = NSStringFromMPModelGenericObjectType();
            v387 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
            {
              [v17 engineID];
              v388 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *v574 = 138543874;
              v575 = v388;
              v576 = 2114;
              v577 = v420;
              v578 = 2114;
              v579 = v313;
              _os_log_impl(&dword_1C5C61000, v387, OS_LOG_TYPE_ERROR, "[PBLSH:%{public}@] _performCommandEvent:%{public}@… | failing CreateRadioStation command [unsupported model object type] type=%{public}@", v574, 0x20u);
            }

            v389 = MEMORY[0x1E69708F8];
            song2 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Unsupported model object type %@", v313}];
            v390 = [v389 statusWithCode:200 error:song2];
            (*(v18 + 2))(v18, v390);
          }
        }

        else
        {
          v380 = MEMORY[0x1E69708F8];
          flattenedGenericObject = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"Cannot create station with seed item without current item"];
          v313 = [v380 statusWithCode:100 error:flattenedGenericObject];
          (*(v18 + 2))(v18, v313);
        }

        v157 = flattenedGenericObject;
      }

      goto LABEL_36;
    case 122:
      v128 = v20;
      v129 = *(self + 136);
      v459[0] = MEMORY[0x1E69E9820];
      v459[1] = 3221225472;
      v459[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_664;
      v459[3] = &unk_1E8236C80;
      v464 = v18;
      v130 = v128;
      v460 = v130;
      v461 = v17;
      v462 = v420;
      selfCopy2 = self;
      [v129 performSetQueueWithEvent:v130 installQueueBeforeLoaded:1 donatedStartPlayerItem:0 completion:v459];

      goto LABEL_36;
    case 124:
      v124 = v20;
      stopMode = [v124 stopMode];
      if (stopMode > 1)
      {
        if (stopMode == 2)
        {
          sleepTimerController = [v17 sleepTimerController];
          [sleepTimerController startSleepTimerForChapterEnd];
        }

        else
        {
          if (stopMode != 3)
          {
            goto LABEL_263;
          }

          sleepTimerController = [v17 sleepTimerController];
          [sleepTimerController startSleepTimerForItemEnd];
        }
      }

      else if (stopMode)
      {
        if (stopMode != 1)
        {
          goto LABEL_263;
        }

        sleepTimerController = [v17 sleepTimerController];
        time = [v124 time];
        [time doubleValue];
        [sleepTimerController startSleepTimerWithTimeRemaining:?];
      }

      else
      {
        sleepTimerController = [v17 sleepTimerController];
        [sleepTimerController reset];
      }

LABEL_263:
      [self publishIfNeeded];
      successStatus2 = [MEMORY[0x1E69708F8] successStatus];
      (*(v18 + 2))(v18, successStatus2);

      goto LABEL_36;
    case 125:
      v134 = v20;
      upNextBehavior3 = [queueController upNextBehavior];
      allowsQueueModifications = [upNextBehavior3 allowsQueueModifications];

      if ((allowsQueueModifications & 1) == 0)
      {
        v286 = MEMORY[0x1E69708F8];
        v287 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:4 debugDescription:@"Cannot modify queue due to iAP lockout"];
        v288 = [v286 statusWithCode:1002 error:v287];
        (*(v18 + 2))(v18, v288);

        goto LABEL_36;
      }

      if ([v134 insertionPosition] == 3)
      {
        insertAfterContentItemID = [v134 insertAfterContentItemID];
        v138 = insertAfterContentItemID == 0;

        if (v138)
        {
          v393 = MEMORY[0x1E69708F8];
          v143 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Insert operation indicated specific insertion position type, but no content item ID provided."}];
          v384 = [v393 statusWithCode:1006 error:v143];
          (*(v18 + 2))(v18, v384);
          goto LABEL_308;
        }
      }

      upNextBehavior4 = [queueController upNextBehavior];
      insertionPosition = [v134 insertionPosition];
      targetContentItemID3 = [queueController targetContentItemID];
      v504 = 0;
      v142 = [upNextBehavior4 isSupportedInsertionPosition:insertionPosition fromContentItemID:targetContentItemID3 reason:&v504];
      v143 = v504;

      if (v142)
      {
        goto LABEL_100;
      }

      music3 = [queueController music];
      if (music3 && [v134 insertionPosition] == 2)
      {
        mediaRemoteOptions3 = [v134 mediaRemoteOptions];
        v350 = [mediaRemoteOptions3 objectForKeyedSubscript:@"_MPCOverrideAllowsInsertionPositionLast"];
        bOOLValue = [v350 BOOLValue];

        if (bOOLValue)
        {
LABEL_100:
          upNextBehavior5 = [queueController upNextBehavior];
          v145 = upNextBehavior5 == 0;

          if (v145)
          {
            v394 = MEMORY[0x1E69708F8];
            v384 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:@"InsertIntoPlaybackQueue not possible without up next behavior."];
            v395 = [v394 statusWithCode:200 error:v384];
            (*(v18 + 2))(v18, v395);
          }

          else
          {
            v500[0] = MEMORY[0x1E69E9820];
            v500[1] = 3221225472;
            v500[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_602;
            v500[3] = &unk_1E8239198;
            v146 = queueController;
            v501 = v146;
            v147 = v134;
            v502 = v147;
            v503 = v18;
            v148 = _Block_copy(v500);
            mediaRemoteOptions4 = [v147 mediaRemoteOptions];
            v150 = [mediaRemoteOptions4 objectForKey:@"MPCRemoteCommandEventOptionShouldPlayInsertedContent"];
            bOOLValue2 = [v150 BOOLValue];

            if (bOOLValue2)
            {
              v498[0] = MEMORY[0x1E69E9820];
              v498[1] = 3221225472;
              v498[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_3_607;
              v498[3] = &unk_1E8239528;
              v499 = v148;
              [(__CFString *)v146 performAllowingEditsToChangeCurrentItem:v498];
            }

            else
            {
              v148[2](v148);
            }

            v384 = v501;
          }

          goto LABEL_308;
        }
      }

      else
      {
      }

      v382 = MEMORY[0x1E69708F8];
      v383 = MEMORY[0x1E696ABC0];
      insertionPosition2 = [v134 insertionPosition];
      if (insertionPosition2 >= 5)
      {
        v384 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", insertionPosition2];
      }

      else
      {
        v384 = off_1E8236F98[insertionPosition2];
      }

      v396 = [v383 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Insert operation indicated unsupported insertion position: %@ [%@]", v384, v143}];
      v397 = [v382 statusWithCode:1006 error:v396];
      (*(v18 + 2))(v18, v397);

LABEL_308:
      goto LABEL_36;
    case 127:
    case 128:
      v61 = v20;
      mediaRemoteOptions5 = [v61 mediaRemoteOptions];
      v63 = [mediaRemoteOptions5 objectForKey:*MEMORY[0x1E69B1270]];
      longLongValue = [v63 longLongValue];

      player3 = [v17 player];
      currentItem3 = [player3 currentItem];

      if (longLongValue && longLongValue != [currentItem3 persistentID])
      {
        v267 = objc_alloc(MEMORY[0x1E6970770]);
        v268 = objc_alloc(MEMORY[0x1E6970550]);
        v269 = [MEMORY[0x1E6970770] kindWithVariants:1];
        v446[0] = MEMORY[0x1E69E9820];
        v446[1] = 3221225472;
        v446[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_715;
        v446[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
        v446[4] = longLongValue;
        v270 = [v268 initWithSource:@"MediaRemotePublisher" modelKind:v269 block:v446];
        anyObject = [v267 initWithIdentifiers:v270 block:&__block_literal_global_724];

        currentStatus = 0;
        v70 = 1;
      }

      else
      {
        modelGenericObject2 = [currentItem3 modelGenericObject];
        flattenedGenericObject2 = [modelGenericObject2 flattenedGenericObject];
        anyObject = [flattenedGenericObject2 anyObject];

        os_unfair_lock_lock((self + 16));
        currentStatus = [*(self + 8) currentStatus];
        os_unfair_lock_unlock((self + 16));
        v70 = 0;
      }

      if (anyObject)
      {
        successStatus3 = [MEMORY[0x1E69708F8] successStatus];
        (*(v18 + 2))(v18, successStatus3);

        if ([v61 isNegative])
        {
          if (currentStatus == 1)
          {
            v272 = 1;
          }

          else
          {
            v272 = v70;
          }

          if (v272 == 1)
          {
            v273 = objc_alloc_init(MEMORY[0x1E69706A8]);
            [v273 setModelObject:anyObject];
            [v273 performWithResponseHandler:&__block_literal_global_728];
LABEL_181:

            goto LABEL_191;
          }

          goto LABEL_191;
        }

        if (currentStatus == 1)
        {
          v276 = v70;
        }

        else
        {
          v276 = 1;
        }

        if (v276 != 1 || ((currentStatus & 0xFFFFFFFFFFFFFFFELL) == 2 ? (v277 = 1) : (v277 = v70), v277 != 1))
        {
LABEL_191:

          goto LABEL_36;
        }

        v273 = objc_alloc_init(MEMORY[0x1E6970818]);
        [v273 appendSection:&stru_1F454A698];
        [v273 appendItem:anyObject];
        v275 = objc_alloc_init(MEMORY[0x1E69706C0]);
        [v275 setShouldLibraryAdd:1];
        [v275 setModelObjects:v273];
        [v275 performWithResponseHandler:&__block_literal_global_733];
      }

      else
      {
        v274 = MEMORY[0x1E69708F8];
        v273 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:{@"Unable to find item to add to library: trackID=%lld currentItem=%@", longLongValue, currentItem3}];
        v275 = [v274 statusWithCode:100 error:v273];
        (*(v18 + 2))(v18, v275);
      }

      goto LABEL_181;
    case 129:
      if (contentItemID)
      {
        upNextBehavior6 = [queueController upNextBehavior];
        v469[0] = MEMORY[0x1E69E9820];
        v469[1] = 3221225472;
        v469[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_13;
        v469[3] = &unk_1E8236B80;
        v471 = v18;
        v470 = v20;
        [upNextBehavior6 removeContentItemID:v22 completion:v469];
      }

      else
      {
        v303 = MEMORY[0x1E69708F8];
        v304 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:{@"Cannot find item to remove: %@", 0}];
        v305 = [v303 statusWithCode:100 error:v304];
        (*(v18 + 2))(v18, v305);
      }

      goto LABEL_36;
    case 130:
      v171 = v20;
      v495[0] = MEMORY[0x1E69E9820];
      v495[1] = 3221225472;
      v495[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_4_608;
      v495[3] = &unk_1E8236B80;
      v497 = v18;
      v172 = v171;
      v496 = v172;
      v173 = _Block_copy(v495);
      insertBeforeContextItemID = [v172 insertBeforeContextItemID];
      if ([insertBeforeContextItemID length])
      {
        upNextBehavior7 = [queueController upNextBehavior];
        [upNextBehavior7 moveContentItemID:v414 beforeContentItemID:insertBeforeContextItemID completion:v173];
      }

      else
      {
        upNextBehavior7 = [v172 insertAfterContextItemID];
        if ([upNextBehavior7 length])
        {
          upNextBehavior8 = [queueController upNextBehavior];
          [upNextBehavior8 moveContentItemID:v414 afterContentItemID:upNextBehavior7 completion:v173];
        }
      }

      goto LABEL_36;
    case 131:
LABEL_16:
      behaviorType = [queueController behaviorType];
      v406 = mediaRemoteCommandType & 0xFFFFFFFE;
      if (behaviorType != 4)
      {
        goto LABEL_21;
      }

      v32 = +[MPCPodcastsDefaultsHelper standard];
      if (![v32 remoteSkipInsteadOfNextTrack] || v406 != 4 || (v418[2]() & 1) != 0)
      {

        goto LABEL_21;
      }

      v324 = v415[2]();

      if (v324)
      {
LABEL_21:
        queueController3 = [v17 queueController];
        [queueController3 currentItem];
        v410 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v408 = *&v410;
        }

        else
        {
          v408 = 0;
        }

        player4 = [v17 player];
        [player4 currentTime];
        v74 = v73;

        chapters = [v408 chapters];
        v404 = [chapters count];

        v76 = [v408 nextChapterAfter:v74];

        v77 = [v408 previousChapterBefore:v74];

        v79 = mediaRemoteCommandType == 4 && v76 != 0 || mediaRemoteCommandType == 5 && v77 != 0;
        if (behaviorType == 4 && v406 == 4)
        {
          v80 = +[MPCPodcastsDefaultsHelper standard];
          if ([v80 remoteSkipInsteadOfNextTrack] & 1) != 0 || (v418[2]())
          {
          }

          else
          {
            v344 = v415[2]();

            if (((v404 != 0) & ~v344 & v79) != 0)
            {
              if (mediaRemoteCommandType == 4)
              {
                v345 = 100;
              }

              else
              {
                v345 = 101;
              }

              [self _performSkipChapterCommand:v345 withCommandID:v420 completion:v18];
              goto LABEL_278;
            }
          }
        }

        mediaRemoteOptions6 = [v20 mediaRemoteOptions];
        v82 = [mediaRemoteOptions6 objectForKeyedSubscript:*MEMORY[0x1E69B1270]];
        longLongValue2 = [v82 longLongValue];

        v84 = mediaRemoteCommandType != 5;
        if (mediaRemoteCommandType == 5)
        {
          contentItemID2 = [*&v410 contentItemID];
          v534 = 0;
          v86 = [queueController canPreviousTrackForContentItemID:contentItemID2 reason:&v534];
          v407 = v534;

          if ((v86 & 1) == 0)
          {
            v87 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              *v574 = 138543618;
              v575 = v410;
              v576 = 2114;
              v577 = v407;
              _os_log_impl(&dword_1C5C61000, v87, OS_LOG_TYPE_ERROR, "❗️Cannot skip backwards from current item: %{public}@ [%{public}@]", v574, 0x16u);
            }

            v88 = MEMORY[0x1E69708F8];
            v89 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2101 debugDescription:{@"Current item forbids skipping backwards: %@ [%@]", *&v410, v407}];
            v90 = [v88 statusWithCode:200 error:v89];
            (*(v18 + 2))(v18, v90);

            goto LABEL_277;
          }
        }

        else
        {
          contentItemID3 = [*&v410 contentItemID];
          v533 = 0;
          v92 = [queueController canNextTrackForContentItemID:contentItemID3 reason:&v533];
          v407 = v533;

          if ((v92 & 1) == 0)
          {
            v264 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
            {
              *v574 = 138543618;
              v575 = v410;
              v576 = 2114;
              v577 = v407;
              _os_log_impl(&dword_1C5C61000, v264, OS_LOG_TYPE_ERROR, "❗️Cannot skip forwards from current item: %{public}@ [%{public}@]", v574, 0x16u);
            }

            v265 = MEMORY[0x1E69708F8];
            v89 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2101 debugDescription:{@"Current item forbids skipping forwards: %@ [%@]", *&v410, v407}];
            v266 = [v265 statusWithCode:200 error:v89];
            (*(v18 + 2))(v18, v266);

            goto LABEL_277;
          }
        }

        if (v414 || longLongValue2)
        {
          v263 = *(self + 136);
          v529[0] = MEMORY[0x1E69E9820];
          v529[1] = 3221225472;
          v529[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_530;
          v529[3] = &unk_1E8236B58;
          v530 = queueController;
          v531 = v18;
          v532 = longLongValue2;
          [v263 findContentItemIDWithIncomingContentItemID:v414 trackID:longLongValue2 completion:v529];

          v89 = v530;
        }

        else
        {
          v93 = v20;
          isRequestingDefermentToPlaybackQueuePosition = [v93 isRequestingDefermentToPlaybackQueuePosition];
          if (mediaRemoteCommandType == 5)
          {
            v95 = -1;
          }

          else
          {
            v95 = 1;
          }

          v405 = v93;
          mediaRemoteOptions7 = [v93 mediaRemoteOptions];
          v97 = [mediaRemoteOptions7 objectForKeyedSubscript:@"MPCRemoteCommandEventOptionSkipImmediatelyKey"];
          bOOLValue3 = [v97 BOOLValue];

          if ((isRequestingDefermentToPlaybackQueuePosition & 1) != 0 || ![v17 skipWithDirectionShouldJumpToItemStart:v84])
          {
            v523[0] = MEMORY[0x1E69E9820];
            v523[1] = 3221225472;
            v523[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_3_542;
            v523[3] = &unk_1E8236BA8;
            v524 = queueController;
            v525 = v17;
            player5 = _Block_copy(v523);
            if (*(self + 24))
            {
              v299 = *(self + 32) + v95;
              *(self + 32) = v299;
              if (bOOLValue3)
              {
                v299 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🛎  Forced [pending delta %ld]", v299];
                v301 = *(*&buf[8] + 40);
                *(*&buf[8] + 40) = v299;

                v302 = 0;
              }

              else
              {
                v2992 = [MEMORY[0x1E696AEC0] stringWithFormat:@"⏲  Deferred [pending delta %ld]", v299];
                v367 = *(*&buf[8] + 40);
                *(*&buf[8] + 40) = v2992;

                v302 = dispatch_time(0, 350000000);
              }

              dispatch_source_set_timer(*(self + 24), v302, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
            }

            else
            {
              v358 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
              v359 = *(self + 24);
              *(self + 24) = v358;

              v360 = *(self + 24);
              v361 = dispatch_time(0, 350000000);
              dispatch_source_set_timer(v360, v361, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
              v362 = *(self + 24);
              handler[0] = MEMORY[0x1E69E9820];
              handler[1] = 3221225472;
              handler[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_5_558;
              handler[3] = &unk_1E8239170;
              handler[4] = self;
              v363 = player5;
              v522 = v363;
              dispatch_source_set_event_handler(v362, handler);
              dispatch_resume(*(self + 24));
              v364 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🛎  Immediate"];
              v365 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = v364;

              (*(v363 + 2))(v363, v95);
            }

            successStatus4 = [MEMORY[0x1E69708F8] successStatus];
            (*(v18 + 2))(v18, successStatus4);
            v105 = &v524;
            v106 = &v525;
          }

          else
          {
            player5 = [v17 player];
            successStatus4 = [v17 player];
            currentItem4 = [successStatus4 currentItem];
            playbackInfoStartTime = [currentItem4 playbackInfoStartTime];
            [playbackInfoStartTime doubleValue];
            v104 = v103;
            v526[0] = MEMORY[0x1E69E9820];
            v526[1] = 3221225472;
            v526[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_538;
            v526[3] = &unk_1E8236B80;
            v528 = v18;
            v527 = v17;
            [player5 jumpToTime:v420 identifier:v526 completion:v104];

            v105 = &v528;
            v106 = &v527;
          }

          v89 = v405;
        }

LABEL_277:

LABEL_278:
        goto LABEL_36;
      }

      v325 = +[MPCPodcastsDefaultsHelper standard];
      if (mediaRemoteCommandType == 4)
      {
        [v325 skipForwardInterval];
        v416[2]();
      }

      else
      {
        [v325 skipBackwardInterval];
        v417[2]();
      }

      goto LABEL_36;
    case 132:
      queueController4 = [v17 queueController];
      v177 = [queueController4 behaviorType] == 4;

      if (v177)
      {
        successStatus5 = [MEMORY[0x1E69708F8] successStatus];
        (*(v18 + 2))(v18, successStatus5);
      }

      else
      {
        successStatus5 = v20;
        [successStatus5 userIdentity];
        v289 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v290 = +[MPCPlaybackAccountManager sharedManager];
        v291 = [v290 accountForUserIdentity:*&v289];

        if (v291)
        {
          leaseManager = [v17 leaseManager];
          v465[0] = MEMORY[0x1E69E9820];
          v465[1] = 3221225472;
          v465[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_650;
          v465[3] = &unk_1E8236E20;
          v468 = v18;
          v466 = v291;
          v467 = *&v289;
          [leaseManager prepareForPlaybackWithAccount:v466 completion:v465];

          successStatus6 = v468;
        }

        else
        {
          v356 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v356, OS_LOG_TYPE_ERROR))
          {
            *v574 = 138412290;
            v575 = v289;
            _os_log_impl(&dword_1C5C61000, v356, OS_LOG_TYPE_ERROR, "❗️[Skipping PrepareForSetQueue] No playback account found for user identity: %@", v574, 0xCu);
          }

          successStatus6 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, successStatus6);
        }
      }

      v22 = v414;
      if (!MSVDeviceIsAudioAccessory())
      {
        goto LABEL_37;
      }

      v357 = dispatch_get_global_queue(21, 0);
      dispatch_async(v357, &__block_literal_global_659);

      dispatch_async(v357, &__block_literal_global_662);
      goto LABEL_36;
    case 133:
      v132 = v20;
      v133 = *(self + 136);
      [v133 performSetSessionWithEvent:v132 completion:v18];

      goto LABEL_36;
    case 134:
      v476[0] = MEMORY[0x1E69E9820];
      v476[1] = 3221225472;
      v476[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_9_625;
      v476[3] = &unk_1E8239170;
      v477 = queueController;
      v478 = v18;
      [v477 performAllowingEditsToChangeCurrentItem:v476];

      goto LABEL_36;
    case 135:
      v159 = v20;
      queueEndAction = [v159 queueEndAction];
      disableAutoPlay = [v17 disableAutoPlay];
      if (queueEndAction == 3)
      {
        v162 = disableAutoPlay;
      }

      else
      {
        v162 = 0;
      }

      if (v162 == 1)
      {
        v163 = MEMORY[0x1E69708F8];
        v355 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:@"playback engine autoplay disabled"];
        v165 = [v163 statusWithCode:200 error:v355];
        (*(v18 + 2))(v18, v165);
      }

      else
      {
        music4 = [queueController music];
        v279 = music4 == 0;

        if (v279)
        {
          v353 = MEMORY[0x1E69708F8];
          v354 = MEMORY[0x1E696ABC0];
          behaviorType2 = [queueController behaviorType];
          if (behaviorType2 >= 6)
          {
            v355 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown/%lld", behaviorType2];
          }

          else
          {
            v355 = off_1E8236FC0[behaviorType2];
          }

          v391 = [v354 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"unsupported command [%@ behavior]", v355}];
          v392 = [v353 statusWithCode:200 error:v391];
          (*(v18 + 2))(v18, v392);
        }

        else
        {
          music5 = [queueController music];
          targetContentItemID4 = [queueController targetContentItemID];
          v282 = queueEndAction == 3;
          v472[0] = MEMORY[0x1E69E9820];
          v472[1] = 3221225472;
          v472[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_11_636;
          v472[3] = &unk_1E8236C48;
          v474 = v18;
          v475 = queueEndAction == 3;
          v283 = v159;
          v473 = v283;
          [music5 setAutoPlayEnabled:v282 targetContentItemID:targetContentItemID4 completion:v472];

          music6 = [queueController music];
          LOBYTE(v282) = objc_opt_respondsToSelector();

          if (v282)
          {
            music7 = [queueController music];
            [music7 setQueueEndAction:objc_msgSend(v283 completion:{"queueEndAction"), &__block_literal_global_643}];
          }

          v355 = v474;
        }
      }

      goto LABEL_36;
    case 139:
      v440[0] = MEMORY[0x1E69E9820];
      v440[1] = 3221225472;
      v440[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_741;
      v440[3] = &unk_1E8236D58;
      v441 = v18;
      [self _leaveSharedSessionWithCommandID:v420 completion:v440];

      goto LABEL_36;
    case 140:
      successStatus7 = [MEMORY[0x1E69708F8] successStatus];
      (*(v18 + 2))(v18, successStatus7);

      goto LABEL_36;
    case 142:
      musicSharePlay2 = [queueController musicSharePlay];
      v167 = musicSharePlay2 == 0;

      if (v167)
      {
        v315 = v20;
        isVocalAttenuationEnabled = [v17 isVocalAttenuationEnabled];
        active = [v315 active];
        v318 = active == 0;

        if (!v318)
        {
          active2 = [v315 active];
          [v17 setVocalAttenuationEnabled:{objc_msgSend(active2, "BOOLValue")}];
        }

        isVocalAttenuationEnabled2 = [v17 isVocalAttenuationEnabled];
        level = [v315 level];
        if (level)
        {
          level2 = [v315 level];
          [level2 floatValue];
        }

        else
        {
          level2 = [MEMORY[0x1E69708A8] standardUserDefaults];
          [level2 defaultVocalLevel];
        }

        [v17 setVocalLevel:?];

        if (isVocalAttenuationEnabled == isVocalAttenuationEnabled2)
        {
          successStatus8 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, successStatus8);
        }

        else
        {
          [self publishIfNeeded];
          v430[0] = MEMORY[0x1E69E9820];
          v430[1] = 3221225472;
          v430[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_772;
          v430[3] = &unk_1E8236DD0;
          v434 = isVocalAttenuationEnabled;
          v431 = v17;
          selfCopy3 = self;
          v433 = v18;
          [v431 reloadQueueForReason:1 completion:v430];

          successStatus8 = v431;
        }
      }

      else
      {
        v168 = MEMORY[0x1E69708F8];
        v169 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:@"Vocal attenuator is disabled in shared listening mode"];
        v170 = [v168 statusWithCode:200 error:v169];
        (*(v18 + 2))(v18, v170);
      }

      goto LABEL_36;
    case 143:
      vocalAttenuationController = [v17 vocalAttenuationController];
      if (vocalAttenuationController && (v180 = vocalAttenuationController[9] == 2, vocalAttenuationController, v180))
      {
        vocalAttenuationController2 = [v17 vocalAttenuationController];
        [(MPCWhiskyController *)vocalAttenuationController2 prepareForProcessing];

        successStatus9 = [MEMORY[0x1E69708F8] successStatus];
        (*(v18 + 2))(v18, successStatus9);
      }

      else
      {
        v403 = [MEMORY[0x1E69708F8] statusWithCode:0];
        (*(v18 + 2))(v18, v403);
      }

      goto LABEL_36;
    case 144:
      upNextBehavior9 = [queueController upNextBehavior];
      v120 = objc_opt_respondsToSelector();

      if ((v120 & 1) == 0)
      {
        goto LABEL_32;
      }

      upNextBehavior10 = [queueController upNextBehavior];
      queueController5 = [v17 queueController];
      targetContentItemID5 = [queueController5 targetContentItemID];
      [upNextBehavior10 clearUpNextAfterContentItemID:targetContentItemID5];

      [MEMORY[0x1E69708F8] successStatus];
      goto LABEL_28;
    case 145:
      v183 = *(self + 136);
      v426[0] = MEMORY[0x1E69E9820];
      v426[1] = 3221225472;
      v426[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_785;
      v426[3] = &unk_1E8236B80;
      v428 = v18;
      v427 = v20;
      [v183 performDialogActionForCommandEvent:v427 completion:v426];

      goto LABEL_36;
    case 146:
      v158 = *(self + 136);
      [v158 delegateAccountEvent:v20 completion:v18];

      goto LABEL_36;
    case 147:
      v112 = v20;
      currentItem5 = [queueController currentItem];
      if (![currentItem5 conformsToProtocol:&unk_1F459C980])
      {

        goto LABEL_196;
      }

      currentItem6 = [queueController currentItem];

      if (!currentItem6)
      {
LABEL_196:
        v115 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:@"Current item is not enhancable"];
        currentItem6 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v115];
        (*(v18 + 2))(v18, currentItem6);
        goto LABEL_197;
      }

      v429 = 0;
      [currentItem6 setEnhanceDialogueActive:objc_msgSend(v112 error:{"isActive"), &v429}];
      v115 = v429;
      [self publishIfNeeded];
      if (v115)
      {
        v116 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3400 underlyingError:v115 debugDescription:@"Error activating enhance dialogue"];
        v117 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v116];
        (*(v18 + 2))(v18, v117);

LABEL_197:
        goto LABEL_36;
      }

      successStatus10 = [MEMORY[0x1E69708F8] successStatus];
      (*(v18 + 2))(v18, successStatus10);

LABEL_36:
      v22 = v414;
LABEL_37:

      objc_destroyWeak(&location);
      _Block_object_dispose(v572, 8);

      _Block_object_dispose(buf, 8);
LABEL_38:

      return;
    case 149:
      transitionTogglable = [queueController transitionTogglable];
      if (transitionTogglable && +[MPCPlaybackEngine deviceSupportsTransitions])
      {
        mediaRemoteOptions8 = [v20 mediaRemoteOptions];
        v109 = [mediaRemoteOptions8 objectForKeyedSubscript:*MEMORY[0x1E69B1158]];
        bOOLValue4 = [v109 BOOLValue];

        v424[0] = MEMORY[0x1E69E9820];
        v424[1] = 3221225472;
        v424[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_789;
        v424[3] = &unk_1E8238D28;
        v425 = v18;
        [transitionTogglable toggleTransitionsEnabledFromRemoteCommand:bOOLValue4 completion:v424];
        v111 = v425;
      }

      else
      {
        v261 = MEMORY[0x1E69708F8];
        v111 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3300 debugDescription:@"Behavior does not support toggle transitions"];
        v262 = [v261 statusWithCode:200 error:v111];
        (*(v18 + 2))(v18, v262);
      }

      goto LABEL_36;
    default:
      switch(mediaRemoteCommandType)
      {
        case 0:
          v544[0] = MEMORY[0x1E69E9820];
          v544[1] = 3221225472;
          v544[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_3;
          v544[3] = &unk_1E8236AE0;
          v550 = v18;
          v545 = v17;
          v551[1] = sel__performCommandEvent_completion_;
          v546 = queueController;
          selfCopy4 = self;
          v548 = v420;
          objc_copyWeak(v551, &location);
          v549 = v20;
          [self becomeActiveIfNeededWithCommandID:v548 completion:v544];

          objc_destroyWeak(v551);
          goto LABEL_36;
        case 1:
          goto LABEL_143;
        case 2:
          v535[0] = MEMORY[0x1E69E9820];
          v535[1] = 3221225472;
          v535[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_8;
          v535[3] = &unk_1E8236B30;
          v540 = v18;
          v536 = v17;
          v537 = v420;
          selfCopy5 = self;
          v539 = v20;
          [self becomeActiveIfNeededWithCommandID:v537 completion:v535];

          goto LABEL_36;
        case 3:
          if ([v17 usesStopState])
          {
            *(self + 73) = 1;
            [self engine:v17 didChangeToState:3];
          }

LABEL_143:
          player6 = [v17 player];
          currentItem7 = [player6 currentItem];
          v220 = currentItem7 == 0;

          if (v220)
          {
            v258 = MEMORY[0x1E69708F8];
            v259 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"Cannot pause because there is no current item."];
            v260 = [v258 statusWithCode:100 error:v259];
            (*(v18 + 2))(v18, v260);
          }

          else
          {
            mediaRemoteOptions9 = [v20 mediaRemoteOptions];
            v222 = [mediaRemoteOptions9 objectForKeyedSubscript:@"MPCRemoteCommandEventOptionPauseFadeoutDurationKey"];
            [v222 doubleValue];
            v224 = v223;

            player7 = [v17 player];
            v541[0] = MEMORY[0x1E69E9820];
            v541[1] = 3221225472;
            v541[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7;
            v541[3] = &unk_1E8237458;
            v542 = v18;
            v543 = v224;
            [player7 pauseWithFadeout:v420 identifier:v541 completion:v224];
          }

          goto LABEL_36;
        case 4:
        case 5:
          goto LABEL_16;
        case 6:
          music8 = [queueController music];
          shuffleType = [music8 shuffleType];

          v228 = shuffleType == 0;
          v229 = v20;
          music9 = [queueController music];
          targetContentItemID6 = [queueController targetContentItemID];
          v479[0] = MEMORY[0x1E69E9820];
          v479[1] = 3221225472;
          v479[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_8_624;
          v479[3] = &unk_1E8236C20;
          v481 = v18;
          v482 = v228;
          v232 = v229;
          v480 = v232;
          [music9 setShuffleType:v228 targetContentItemID:targetContentItemID6 completion:v479];

          goto LABEL_36;
        case 7:
          music10 = [queueController music];
          repeatType = [music10 repeatType];

          v214 = v20;
          music11 = [queueController music];
          if (repeatType)
          {
            v216 = repeatType == 2;
          }

          else
          {
            v216 = 2;
          }

          v487[0] = MEMORY[0x1E69E9820];
          v487[1] = 3221225472;
          v487[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_6_619;
          v487[3] = &unk_1E8236C20;
          v489 = v18;
          v490 = v216;
          v217 = v214;
          v488 = v217;
          [music11 setRepeatType:v216 completion:v487];

          goto LABEL_36;
        case 8:
          *(self + 20) = 1;
          currentItem8 = [queueController currentItem];
          supportsFastForward = [currentItem8 supportsFastForward];

          v517[0] = MEMORY[0x1E69E9820];
          v517[1] = 3221225472;
          v517[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7_566;
          v517[3] = &unk_1E8236B80;
          v517[4] = self;
          v518 = v18;
          [v17 beginScanningWithDirection:1 supportsRateChange:supportsFastForward identifier:v420 completion:v517];

          goto LABEL_36;
        case 9:
        case 11:
          if (*(self + 21) & 1) != 0 || (*(self + 20))
          {
            *(self + 20) = 0;
            player8 = [v17 player];
            v515[0] = MEMORY[0x1E69E9820];
            v515[1] = 3221225472;
            v515[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_8_573;
            v515[3] = &unk_1E8238D28;
            v516 = v18;
            [player8 endScanningWithIdentifier:v420 completion:v515];
          }

          else
          {
            v294 = MEMORY[0x1E69708F8];
            v295 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2100 debugDescription:@"Attempting to stop scanning without scanning"];
            v296 = [v294 statusWithCode:1007 error:v295];
            (*(v18 + 2))(v18, v296);
          }

          goto LABEL_36;
        case 10:
          *(self + 21) = 1;
          currentItem9 = [queueController currentItem];
          supportsRewind = [currentItem9 supportsRewind];

          v519[0] = MEMORY[0x1E69E9820];
          v519[1] = 3221225472;
          v519[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_6_562;
          v519[3] = &unk_1E8236B80;
          v519[4] = self;
          v520 = v18;
          [v17 beginScanningWithDirection:0 supportsRateChange:supportsRewind identifier:v420 completion:v519];

          goto LABEL_36;
        case 17:
          [v20 interval];
          v416[2]();
          goto LABEL_37;
        case 18:
          [v20 interval];
          v417[2]();
          goto LABEL_37;
        case 19:
          v184 = v20;
          behaviorType3 = [queueController behaviorType];
          [v184 playbackRate];
          v187 = v186;
          if (behaviorType3 != 4)
          {
            goto LABEL_132;
          }

          v188 = [_MPCPodcastsPlaybackRateHelper alloc];
          player9 = [v17 player];
          [player9 currentRate];
          v191 = v190;
          player10 = [v17 player];
          state = [player10 state];
          LODWORD(v194) = v191;
          v195 = [(_MPCPodcastsPlaybackRateHelper *)v188 initWithCurrentRate:state playerState:v194];

          if ([(_MPCPodcastsPlaybackRateHelper *)v195 canHandlePlaybackRateChangeForCommandEvent:v184])
          {
            currentItem10 = [queueController currentItem];
            if (([currentItem10 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:sel__performCommandEvent_completion_ object:self file:@"_MPCMediaRemotePublisher.m" lineNumber:2960 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
            }

            podcastUUID = [currentItem10 podcastUUID];
            if (v418[2]())
            {
              [(_MPCPodcastsPlaybackRateHelper *)v195 computedRateForChangePlaybackRateCommandEvent:v184];
              v187 = *&v198;
            }

            *&v198 = v187;
            [currentItem10 setPreferredPlaybackRate:v198];
            [(_MPCPodcastsPlaybackRateHelper *)v195 updatedPlaybackRateForChangePlaybackRateCommandEvent:v184 podcastUUID:podcastUUID];
            v187 = v199;

LABEL_132:
            player11 = [v17 player];
            v442[0] = MEMORY[0x1E69E9820];
            v442[1] = 3221225472;
            v442[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_737;
            v442[3] = &unk_1E8236D30;
            v444 = v18;
            v201 = v184;
            v443 = v201;
            objc_copyWeak(&v445, &location);
            *&v202 = v187;
            [player11 setRate:v420 identifier:v442 completion:v202];

            objc_destroyWeak(&v445);
          }

          else
          {
            v346 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v346, OS_LOG_TYPE_DEBUG))
            {
              *v574 = 134349056;
              v575 = v187;
              _os_log_impl(&dword_1C5C61000, v346, OS_LOG_TYPE_DEBUG, "Rate is set to either min or max speed: %{public}f", v574, 0xCu);
            }

            v347 = [MEMORY[0x1E69708F8] statusWithCode:1007];
            (*(v18 + 2))(v18, v347);
          }

          goto LABEL_36;
        case 20:
          v233 = v20;
          if (v22)
          {
            contentItemID4 = v22;
          }

          else
          {
            player12 = [v17 player];
            currentItem11 = [player12 currentItem];
            contentItemID4 = [currentItem11 contentItemID];
          }

          queueController6 = [v17 queueController];
          v335 = [queueController6 itemForContentItemID:contentItemID4];

          [v233 rating];
          [v335 setRating:?];
          successStatus11 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, successStatus11);

          goto LABEL_36;
        case 21:
          v205 = v20;
          if (v22)
          {
            contentItemID5 = v22;
          }

          else
          {
            player13 = [v17 player];
            currentItem12 = [player13 currentItem];
            contentItemID5 = [currentItem12 contentItemID];
          }

          queueController7 = [v17 queueController];
          v329 = [queueController7 itemForContentItemID:contentItemID5];

          if ([v205 isNegative])
          {
            if ([v329 likedState] != 2)
            {
              goto LABEL_236;
            }

            userIdentity = [v205 userIdentity];
            [v329 setLikedState:1 forUserIdentity:userIdentity];
          }

          else
          {
            if ([v329 likedState] == 2)
            {
              goto LABEL_236;
            }

            userIdentity = [v205 userIdentity];
            [v329 setLikedState:2 forUserIdentity:userIdentity];
          }

          [self publishIfNeeded];
          goto LABEL_236;
        case 22:
          v205 = v20;
          if (v22)
          {
            contentItemID5 = v22;
          }

          else
          {
            player14 = [v17 player];
            currentItem13 = [player14 currentItem];
            contentItemID5 = [currentItem13 contentItemID];
          }

          queueController8 = [v17 queueController];
          v329 = [queueController8 itemForContentItemID:contentItemID5];

          if ([v205 isNegative])
          {
            if ([v329 likedState] != 3)
            {
              goto LABEL_236;
            }

            userIdentity2 = [v205 userIdentity];
            [v329 setLikedState:1 forUserIdentity:userIdentity2];
          }

          else
          {
            if ([v329 likedState] == 3)
            {
              goto LABEL_236;
            }

            userIdentity2 = [v205 userIdentity];
            [v329 setLikedState:3 forUserIdentity:userIdentity2];
          }

          [self publishIfNeeded];
LABEL_236:
          successStatus12 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, successStatus12);

          goto LABEL_36;
        case 24:
          player15 = [v17 player];
          currentItem14 = [player15 currentItem];

          if (currentItem14)
          {
            v409 = v20;
            nowPlayingContentItemID = [v409 nowPlayingContentItemID];
            v243 = nowPlayingContentItemID == 0;

            if (!v243)
            {
              nowPlayingContentItemID2 = [v409 nowPlayingContentItemID];
              contentItemID6 = [currentItem14 contentItemID];
              v246 = nowPlayingContentItemID2;
              v247 = contentItemID6;
              v248 = v247;
              if (v246 == v247)
              {
              }

              else
              {
                v249 = [v246 isEqual:v247];

                if ((v249 & 1) == 0)
                {
                  v250 = _MPCLogCategoryPlayback();
                  if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
                  {
                    [v409 nowPlayingContentItemID];
                    v251 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    contentItemID7 = [currentItem14 contentItemID];
                    *v574 = 138543618;
                    v575 = v251;
                    v576 = 2114;
                    v577 = contentItemID7;
                    _os_log_impl(&dword_1C5C61000, v250, OS_LOG_TYPE_ERROR, "❗️SeekToPlaybackPosition failed. Could not seek for non-current item id: %{public}@ [currentItem is %{public}@]", v574, 0x16u);
                  }

                  v253 = MEMORY[0x1E696ABC0];
                  nowPlayingContentItemID3 = [v409 nowPlayingContentItemID];
                  contentItemID8 = [currentItem14 contentItemID];
                  v256 = [v253 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:{@"Cannot seek item (%@) with different current item (%@)", nowPlayingContentItemID3, contentItemID8}];
                  mpc_remoteCommandStatus = [v256 mpc_remoteCommandStatus];
                  (*(v18 + 2))(v18, mpc_remoteCommandStatus);

                  goto LABEL_282;
                }
              }
            }

            v510[0] = MEMORY[0x1E69E9820];
            v510[1] = 3221225472;
            v510[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_580;
            v510[3] = &unk_1E8236BD0;
            v368 = v17;
            v511 = v368;
            v512 = v420;
            v369 = v18;
            v514 = v369;
            v342 = v409;
            v513 = v342;
            v370 = _Block_copy(v510);
            referenceTime = [v342 referenceTime];
            if (referenceTime)
            {
              referenceTime2 = [v342 referenceTime];
              [referenceTime2 doubleValue];

              transcriptAlignmentController = [v368 transcriptAlignmentController];
              [v342 positionTime];
              v375 = v374;
              referenceTime3 = [v342 referenceTime];
              [referenceTime3 doubleValue];
              v378 = v377;
              v505[0] = MEMORY[0x1E69E9820];
              v505[1] = 3221225472;
              v505[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_582;
              v505[3] = &unk_1E8236BF8;
              v506 = v368;
              v507 = v342;
              v508 = v369;
              v379 = v370;
              v509 = v379;
              [transcriptAlignmentController resolveWith:v505 referenceTime:v375 completionHandler:v378];

              nowPlayingContentItemID3 = v511;
LABEL_282:

              goto LABEL_36;
            }

            [v342 positionTime];
            v370[2](v370);

            v343 = v511;
          }

          else
          {
            v341 = MEMORY[0x1E69708F8];
            v342 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"Cannot jumpToTime without a current item."];
            v343 = [v341 statusWithCode:100 error:v342];
            (*(v18 + 2))(v18, v343);
          }

          goto LABEL_36;
        case 25:
          v237 = v20;
          repeatType2 = [v237 repeatType];
          if (repeatType2 >= 3)
          {
            v297 = MEMORY[0x1E69708F8];
            v240 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Unsupported repeatType %ld", repeatType2}];
            v298 = [v297 statusWithCode:200 error:v240];
            (*(v18 + 2))(v18, v298);
          }

          else
          {
            music12 = [queueController music];
            v491[0] = MEMORY[0x1E69E9820];
            v491[1] = 3221225472;
            v491[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_5_612;
            v491[3] = &unk_1E8236C20;
            v493 = v18;
            v494 = repeatType2;
            v492 = v237;
            [music12 setRepeatType:repeatType2 completion:v491];

            v240 = v493;
          }

          goto LABEL_36;
        case 26:
          v207 = v20;
          shuffleType2 = [v207 shuffleType];
          music13 = [queueController music];
          targetContentItemID7 = [queueController targetContentItemID];
          v483[0] = MEMORY[0x1E69E9820];
          v483[1] = 3221225472;
          v483[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7_620;
          v483[3] = &unk_1E8236C20;
          v485 = v18;
          v486 = shuffleType2;
          v211 = v207;
          v484 = v211;
          [music13 setShuffleType:shuffleType2 targetContentItemID:targetContentItemID7 completion:v483];

          goto LABEL_36;
        default:
          goto LABEL_29;
      }
  }
}

- (id)stripCommandStatusForEVS:(id)s
{
  v41 = *MEMORY[0x1E69E9840];
  sCopy = s;
  dialog = [sCopy dialog];

  if (dialog)
  {
    v5 = MEMORY[0x1E69708E8];
    dialog2 = [sCopy dialog];
    localizedTitle = [dialog2 localizedTitle];
    dialog3 = [sCopy dialog];
    localizedMessage = [dialog3 localizedMessage];
    v10 = [v5 dialogWithTitle:localizedTitle message:localizedMessage];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = sCopy;
    dialog4 = [sCopy dialog];
    actions = [dialog4 actions];

    obj = actions;
    v13 = [actions countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          event = [v17 event];
          v19 = event;
          if (event)
          {
            mediaRemoteOptions = [event mediaRemoteOptions];
            v21 = [mediaRemoteOptions mutableCopy];

            [(_MPCMediaRemotePublisher *)self stripMediaRemoteOptionsForEVS:v21];
            v22 = objc_alloc(MEMORY[0x1E69708E0]);
            command = [v19 command];
            v24 = [v22 initWithCommand:command mediaRemoteType:objc_msgSend(v19 options:{"mediaRemoteCommandType"), v21}];
          }

          else
          {
            v24 = 0;
          }

          v25 = MEMORY[0x1E69708F0];
          title = [v17 title];
          v27 = [v25 actionWithTitle:title type:objc_msgSend(v17 commandEvent:{"type"), v24}];

          [v10 addAction:v27];
        }

        v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v14);
    }

    v28 = MEMORY[0x1E69708F8];
    sCopy = v33;
    statusCode = [v33 statusCode];
    error = [v33 error];
    v31 = [v28 statusWithCode:statusCode dialog:v10 error:error];
  }

  else
  {
    v31 = sCopy;
  }

  return v31;
}

- (void)stripMediaRemoteOptionsForEVS:(id)s
{
  v3 = *MEMORY[0x1E69B1200];
  sCopy = s;
  [sCopy setObject:0 forKeyedSubscript:v3];
  [sCopy setObject:0 forKeyedSubscript:*MEMORY[0x1E69B10B0]];
  [sCopy setObject:0 forKeyedSubscript:*MEMORY[0x1E69B1218]];
  [sCopy setObject:0 forKeyedSubscript:*MEMORY[0x1E69B1268]];
  [sCopy setObject:0 forKeyedSubscript:*MEMORY[0x1E69B1278]];
  [sCopy setObject:0 forKeyedSubscript:*MEMORY[0x1E69B10F0]];
  [sCopy setObject:0 forKeyedSubscript:*MEMORY[0x1E69B1098]];
  [sCopy setObject:0 forKeyedSubscript:@"playbackContext"];
  [sCopy setObject:0 forKeyedSubscript:@"sharedListeningIntentToken"];
  [sCopy setObject:0 forKeyedSubscript:@"kMRMediaRemoteOptionSenderID"];
}

- (void)_performDebugEvent:(id)event completion:(id)completion
{
  completionCopy = completion;
  eventCopy = event;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  mediaRemoteOptions = [eventCopy mediaRemoteOptions];

  v9 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B11C0]];

  v10 = v9;
  v11 = v10;
  if (v10 != @"com.apple.Music.performance")
  {
    v12 = [(__CFString *)v10 isEqual:@"com.apple.Music.performance"];

    if (!v12)
    {
      v15 = v11;
      if (v15 == @"com.apple.Music.queue" || (v16 = v15, v17 = [(__CFString *)v15 isEqual:@"com.apple.Music.queue"], v16, v17))
      {
        queueController = [playbackEngine queueController];
        v14 = queueController;
        if (queueController)
        {
          v19 = [queueController debugDescription];
          v20 = MEMORY[0x1E69708F8];
          v21 = [v19 dataUsingEncoding:4];
          v22 = [v20 statusWithCode:0 customData:v21 type:@"com.public.text"];
          completionCopy[2](completionCopy, v22);
        }

        else
        {
          v27 = MEMORY[0x1E69708F8];
          v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"No queueController"];
          v21 = [v27 statusWithCode:100 error:v19];
          completionCopy[2](completionCopy, v21);
        }

        goto LABEL_19;
      }

      v25 = v16;
      if (v25 != @"com.apple.Music.events")
      {
        v26 = v25;
        [(__CFString *)v25 isEqual:@"com.apple.Music.events"];
      }

      v23 = MEMORY[0x1E69708F8];
      v24 = 200;
LABEL_16:
      v14 = [v23 statusWithCode:v24];
      completionCopy[2](completionCopy, v14);
      goto LABEL_20;
    }
  }

  lastPerformanceMetrics = self->_lastPerformanceMetrics;
  if (!lastPerformanceMetrics)
  {
    v23 = MEMORY[0x1E69708F8];
    v24 = 100;
    goto LABEL_16;
  }

  v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:lastPerformanceMetrics options:0 error:0];
  if (v14)
  {
    [MEMORY[0x1E69708F8] statusWithCode:0 customData:v14 type:@"com.public.json"];
  }

  else
  {
    [MEMORY[0x1E69708F8] statusWithCode:100];
  }
  v19 = ;
  completionCopy[2](completionCopy, v19);
LABEL_19:

LABEL_20:
}

- (void)_enqueueFallbackIntentIfNeededForCommandEvent:(id)event play:(BOOL)play completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];
  contextID = [eventCopy contextID];
  if (!contextID)
  {
    goto LABEL_8;
  }

  v12 = contextID;
  contextID2 = [eventCopy contextID];
  queueController = [playbackEngine queueController];
  sessionID = [queueController sessionID];
  v16 = sessionID;
  if (contextID2 == sessionID)
  {

    goto LABEL_8;
  }

  v17 = [contextID2 isEqual:sessionID];

  if (v17)
  {
LABEL_8:
    v23 = 1;
    goto LABEL_9;
  }

  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    commandID = [eventCopy commandID];
    contextID3 = [eventCopy contextID];
    queueController2 = [playbackEngine queueController];
    sessionID2 = [queueController2 sessionID];
    *buf = 138544130;
    v44 = engineID;
    v45 = 2114;
    v46 = commandID;
    v47 = 2114;
    v48 = contextID3;
    v49 = 2114;
    v50 = sessionID2;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] _enqueueFallbackIntentIfNeeded | not using fallback intent [contextID does not match queueController.sessionID] commandID=%{public}@ contextID=%{public}@ sessionID=%{public}@", buf, 0x2Au);
  }

  v23 = 0;
LABEL_9:
  mediaRemoteOptions = [eventCopy mediaRemoteOptions];
  v25 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B1108]];
  bOOLValue = [v25 BOOLValue];

  if (bOOLValue)
  {
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      commandID2 = [eventCopy commandID];
      *buf = 138543618;
      v44 = engineID;
      v45 = 2114;
      v46 = commandID2;
      _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] _enqueueFallbackIntentIfNeeded | not using fallback intent [disabled via command option] commandID=%{public}@", buf, 0x16u);
    }

    v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "[Publisher] _enqueueFallbackIntentIfNeededForCommandEvent not using fallback intent []", buf, 2u);
    }

    goto LABEL_21;
  }

  if ((v23 & 1) == 0)
  {
LABEL_21:
    v34 = MEMORY[0x1E69708F8];
    v33 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:1 debugDescription:@"Failing due to no content in the player and fallback intent disabled."];
    v35 = [v34 statusWithCode:100 error:v33];
    completionCopy[2](completionCopy, v35);

    goto LABEL_22;
  }

  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    commandID3 = [eventCopy commandID];
    *buf = 138543618;
    v44 = engineID;
    v45 = 2114;
    v46 = commandID3;
    _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _enqueueFallbackIntentIfNeeded | fetching fallback intent [] commandID=%{public}@", buf, 0x16u);
  }

  if (self)
  {
    swift = self->_swift;
  }

  else
  {
    swift = 0;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __90___MPCMediaRemotePublisher__enqueueFallbackIntentIfNeededForCommandEvent_play_completion___block_invoke;
  v37[3] = &unk_1E8236890;
  v38 = engineID;
  v39 = eventCopy;
  playCopy = play;
  selfCopy = self;
  v41 = completionCopy;
  [(_MPCMediaRemotePublisher_Swift *)swift _getFallbackIntentForEvent:v39 withCompletion:v37];

  v33 = v38;
LABEL_22:
}

- (void)deactivateAudioSessionIfIdle:(int64_t)idle
{
  v12 = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = engineID;
    v10 = 2048;
    idleCopy = idle;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] deactivateAudioSessionIfIdle | deactivating player [] token=%lld", &v8, 0x16u);
  }

  player = [playbackEngine player];
  [player deactivateAudioSessionIfIdle:idle];
}

- (void)becomeActiveIfNeededWithCommandID:(id)d completion:(id)completion
{
  v79[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v76[3] = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v75[3] = 0;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v9 = os_signpost_id_generate(v8);

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SessionActivation", "", buf, 2u);
  }

  v12 = MSVNanoIDCreateTaggedPointer();
  eventStream = [playbackEngine eventStream];
  v78[0] = @"session-activation-id";
  v78[1] = @"session-activation-command-id";
  v79[0] = v12;
  null = dCopy;
  if (!dCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v79[1] = null;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
  [eventStream emitEventType:@"session-activation-begin" payload:v15];

  if (!dCopy)
  {
  }

  engineID = [playbackEngine engineID];
  delegate = [playbackEngine delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke;
  aBlock[3] = &unk_1E8236680;
  v18 = engineID;
  v70 = v18;
  v19 = delegate;
  v71 = v19;
  v73 = v76;
  v20 = playbackEngine;
  v72 = v20;
  v21 = _Block_copy(aBlock);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_110;
  v64[3] = &unk_1E8236720;
  v22 = v18;
  v65 = v22;
  v36 = v19;
  v66 = v36;
  v68 = v76;
  v23 = v20;
  v67 = v23;
  v24 = _Block_copy(v64);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_118;
  v57[3] = &unk_1E8236770;
  v25 = v22;
  v58 = v25;
  v35 = v23;
  v59 = v35;
  selfCopy = self;
  v61 = v75;
  v62 = v77;
  v63 = a2;
  v26 = _Block_copy(v57);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_127;
  v48[3] = &unk_1E82367C8;
  v27 = v25;
  v49 = v27;
  selfCopy2 = self;
  v56 = v9;
  v28 = v12;
  v51 = v28;
  v53 = v75;
  v54 = v77;
  v55 = v76;
  v29 = completionCopy;
  v52 = v29;
  v30 = _Block_copy(v48);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_129;
  v43[3] = &unk_1E8236840;
  v44 = v26;
  v45 = v30;
  v46 = v24;
  v31 = v21;
  v47 = v31;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_7;
  v39[3] = &unk_1E8236868;
  v32 = v46;
  v40 = v32;
  v33 = v44;
  v41 = v33;
  v34 = v45;
  v42 = v34;
  (*(v21 + 2))(v31, v43, v39);

  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v77, 8);
}

- (void)_podcastsSkipIntervalDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = engineID;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _podcastsSkipIntervalDidChange | publishing [notification]", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)_activeSharedSessionDidChange:(id)change
{
  v18 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];

  userInfo = [changeCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B08D8]];

  if ([v8 isHosted] && (objc_msgSend(v8, "isPlaceholder") & 1) == 0)
  {
    identifier = [v8 identifier];
  }

  else
  {
    identifier = 0;
  }

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = engineID;
    v16 = 2114;
    v17 = identifier;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _activeSharedSessionDidChange | received [] newSessionID=%{public}@", buf, 0x16u);
  }

  v13 = engineID;
  v11 = engineID;
  v12 = identifier;
  msv_dispatch_on_main_queue();
}

- (void)_likedStateChangedNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = engineID;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _likedStateChanged | publishing [notification]", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)_durationAvailableNotification:(id)notification
{
  v20 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
    engineID = [playbackEngine engineID];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = engineID;
      v18 = 2114;
      v19 = object2;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _durationAvailable | received [] notificationItem=%{public}@", buf, 0x16u);
    }

    v14 = playbackEngine;
    v15 = object2;
    v11 = engineID;
    v12 = object2;
    v13 = playbackEngine;
    msv_dispatch_on_main_queue();
  }
}

- (void)commandCenter:(id)center didTimeoutCommandEvent:(id)event statusHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  commandID = [eventCopy commandID];
  v12 = [@"CommandTimeout:" stringByAppendingString:commandID];
  v13 = [eventStream eventDeliveryDeferralAssertionOfType:0 forReason:v12];

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  MPCPlaybackEngineEventGetMonotonicTime(&v26);
  if (self)
  {
    self = self->_detective;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79___MPCMediaRemotePublisher_commandCenter_didTimeoutCommandEvent_statusHandler___block_invoke;
  v18[3] = &unk_1E82365E0;
  v19 = eventStream;
  v20 = eventCopy;
  v23 = v26;
  v24 = v27;
  v25 = v28;
  v21 = v13;
  v22 = handlerCopy;
  v14 = v13;
  v15 = eventCopy;
  v16 = eventStream;
  v17 = handlerCopy;
  [(_MPCMediaRemotePublisher *)self investigateTimeoutForEvent:v15 completion:v18];
}

- (void)commandCenter:(id)center didDeliverCommandEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    commandID = [eventCopy commandID];
    v10 = MPCRemoteCommandDescriptionCopy([eventCopy mediaRemoteCommandType]);
    *buf = 138543874;
    v19 = engineID;
    v20 = 2114;
    v21 = commandID;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] commandCenter:didDeliverCommandEvent: [%{public}@] command=%{public}@", buf, 0x20u);
  }

  eventStream = [playbackEngine eventStream];
  commandID2 = [eventCopy commandID];
  v17[0] = commandID2;
  v16[1] = @"remote-control-type";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(eventCopy, "mediaRemoteCommandType")}];
  v17[1] = v13;
  v16[2] = @"remote-control-source";
  sourceID = [eventCopy sourceID];
  v17[2] = sourceID;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [eventStream emitEventType:@"remote-control-delivered" payload:v15];
}

- (void)invalidateSessionTypesWithReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = engineID;
    v10 = 2114;
    v11 = reasonCopy;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] invalidateSessionTypes | publishing [%{public}@}]", &v8, 0x16u);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engine:(id)engine didChangeQueueController:(id)controller
{
  v10 = *MEMORY[0x1E69E9840];
  engineID = [engine engineID];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = engineID;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engine:didChangeQueueController: | invalidating playback queue [queue changed]", &v8, 0xCu);
  }

  [(MPNowPlayingInfoCenter *)self->_infoCenter invalidatePlaybackQueue];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = engineID;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engine:didChangeQueueController: | publishing [queue changed]", &v8, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engine:(id)engine didReceivePickedRouteChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  engineID = [engine engineID];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = engineID;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engine:didReceivePickedRouteChange: | publishing [route changed]", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidEndSleepTimer:(id)timer
{
  v8 = *MEMORY[0x1E69E9840];
  engineID = [timer engineID];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = engineID;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidEndSleepTimer | publishing [sleep timer ended]", &v6, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidUnblockVocalAttenuation:(id)attenuation
{
  v8 = *MEMORY[0x1E69E9840];
  engineID = [attenuation engineID];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = engineID;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidUnblockVocalAttenuation | publishing [attenuation unblocked]", &v6, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidBlockVocalAttenuation:(id)attenuation
{
  v13 = *MEMORY[0x1E69E9840];
  attenuationCopy = attenuation;
  engineID = [attenuationCopy engineID];
  if ([attenuationCopy isVocalAttenuationEnabled])
  {
    [attenuationCopy setVocalAttenuationEnabled:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59___MPCMediaRemotePublisher_engineDidBlockVocalAttenuation___block_invoke;
    v7[3] = &unk_1E8236588;
    v8 = engineID;
    v9 = attenuationCopy;
    selfCopy = self;
    [v9 reloadQueueForReason:1 completion:v7];
  }

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = engineID;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidBlockVocalAttenuation | publishing [attenuation blocked]", buf, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidChangeVocalAttenuationLevel:(id)level
{
  v9 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [levelCopy engineID];
    v7 = 138543362;
    v8 = engineID;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidChangeVocalAttenuationLevel | publishing []", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidChangeVocalAttenuationState:(id)state
{
  v9 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [stateCopy engineID];
    v7 = 138543362;
    v8 = engineID;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidChangeVocalAttenuationState | publishing []", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidChangeTransitionSettings:(id)settings
{
  v27 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  queueController = [settingsCopy queueController];
  transitionTogglable = [queueController transitionTogglable];
  if (transitionTogglable)
  {
    toggleTransitionsCommand = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    isActive = [toggleTransitionsCommand isActive];

    transitionsEnabled = [transitionTogglable transitionsEnabled];
    if (isActive != transitionsEnabled)
    {
      v10 = transitionsEnabled;
      toggleTransitionsCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
      [toggleTransitionsCommand2 setActive:v10];

      v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        engineID = [settingsCopy engineID];
        v21 = 138543874;
        v22 = engineID;
        v23 = 1024;
        v24 = isActive;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidChangeTransitionSettings | publishing [changed enabled] previous=%{BOOL}u new=%{BOOL}u", &v21, 0x18u);
      }

      [(_MPCMediaRemotePublisher *)self publishIfNeeded];
    }

    toggleTransitionsCommand3 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    transitionStyle = [toggleTransitionsCommand3 transitionStyle];

    transitionStyle2 = [transitionTogglable transitionStyle];
    if (transitionStyle != transitionStyle2)
    {
      v17 = transitionStyle2;
      toggleTransitionsCommand4 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
      [toggleTransitionsCommand4 setTransitionStyle:v17];

      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        engineID2 = [settingsCopy engineID];
        v21 = 138543874;
        v22 = engineID2;
        v23 = 1024;
        v24 = transitionStyle;
        v25 = 1024;
        v26 = v17;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidChangeTransitionSettings | publishing [changed style] previous=%d new=%d", &v21, 0x18u);
      }

      [(_MPCMediaRemotePublisher *)self publishIfNeeded];
    }
  }
}

- (void)engine:(id)engine didChangeActionAtQueueEnd:(int64_t)end
{
  v20 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  changeQueueEndActionCommand = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
  currentQueueEndAction = [changeQueueEndActionCommand currentQueueEndAction];

  if (currentQueueEndAction != end)
  {
    changeQueueEndActionCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [changeQueueEndActionCommand2 setCurrentQueueEndAction:end];

    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [engineCopy engineID];
      v12 = MPNSStringFromQueueEndAction();
      v13 = MPNSStringFromQueueEndAction();
      v14 = 138543874;
      v15 = engineID;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] didChangeActionAtQueueEnd | publishing [changed] previous=%{public}@ new=%{public}@", &v14, 0x20u);
    }

    [(_MPCMediaRemotePublisher *)self publishIfNeeded];
  }
}

- (void)engine:(id)engine didChangeShuffleType:(int64_t)type
{
  changeShuffleModeCommand = [(MPRemoteCommandCenter *)self->_commandCenter changeShuffleModeCommand];
  [changeShuffleModeCommand setCurrentShuffleType:type];
}

- (void)engine:(id)engine didChangeRepeatType:(int64_t)type
{
  changeRepeatModeCommand = [(MPRemoteCommandCenter *)self->_commandCenter changeRepeatModeCommand];
  [changeRepeatModeCommand setCurrentRepeatType:type];
}

- (void)engine:(id)engine didChangeQueueWithReason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  reasonCopy = reason;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [engineCopy engineID];
    v12 = 138543618;
    v13 = engineID;
    v14 = 2114;
    v15 = reasonCopy;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] didChangeQueue | invalidating playback queue [%{public}@]", &v12, 0x16u);
  }

  [(MPNowPlayingInfoCenter *)self->_infoCenter invalidatePlaybackQueue];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    engineID2 = [engineCopy engineID];
    v12 = 138543618;
    v13 = engineID2;
    v14 = 2114;
    v15 = reasonCopy;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] didChangeQueue | publishing [%{public}@]", &v12, 0x16u);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engine:(id)engine didChangeToState:(unint64_t)state
{
  if ([engine usesStopState] && state != 3)
  {
    if (state == 2 && self->_overrideStopState)
    {
      state = 3;
    }

    else
    {
      self->_overrideStopState = 0;
    }
  }

  infoCenter = self->_infoCenter;

  [(MPNowPlayingInfoCenter *)infoCenter setPlaybackState:state];
}

- (void)engine:(id)engine didChangeToItem:(id)item
{
  engineCopy = engine;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  usesStopState = [engineCopy usesStopState];

  if (usesStopState && self->_overrideStopState)
  {
    self->_overrideStopState = 0;
    [(MPNowPlayingInfoCenter *)self->_infoCenter setPlaybackState:2];
  }

  [(MPNowPlayingInfoCenter *)self->_infoCenter invalidatePlaybackQueue];

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)updatePlaybackMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = [metricsCopy objectForKeyedSubscript:@"metrics"];
  firstObject = [v5 firstObject];

  os_unfair_lock_lock(&self->_lock);
  if (self->_mrMigratePostCallbackCompletion && firstObject && ([(MSVBlockGuard *)self->_mrMigratePostCallbackGuard disarm]& 1) != 0)
  {
    v7 = _Block_copy(self->_mrMigratePostCallbackCompletion);
    mrMigratePostCallbackCompletion = self->_mrMigratePostCallbackCompletion;
    self->_mrMigratePostCallbackCompletion = 0;

    mrMigratePostCallbackGuard = self->_mrMigratePostCallbackGuard;
    self->_mrMigratePostCallbackGuard = 0;

    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      v10 = [firstObject objectForKeyedSubscript:@"raw"];
      v7[2](v7, v10, 0);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    v11 = [firstObject objectForKeyedSubscript:@"segments"];
    [v11 msv_reduceIntoDouble:&__block_literal_global_81 by:0.0];
    v13 = v12;
    WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
    queueController = [WeakRetained queueController];
    currentItem = [queueController currentItem];

    [currentItem setLastPlayPerformanceTime:v13];
    objc_storeStrong(&self->_lastPerformanceMetrics, metrics);
  }
}

- (void)_leaveSharedSessionWithCommandID:(id)d completion:(id)completion
{
  completionCopy = completion;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  musicSharePlay = [queueController musicSharePlay];

  if (musicSharePlay)
  {
    musicSharePlay2 = [queueController musicSharePlay];
    [musicSharePlay2 endSynchronizedPlayback];

    sessionManager = [playbackEngine sessionManager];
    stateRestorationSessionIdentifier = [sessionManager stateRestorationSessionIdentifier];

    if ([stateRestorationSessionIdentifier length])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72___MPCMediaRemotePublisher__leaveSharedSessionWithCommandID_completion___block_invoke;
      v18[3] = &unk_1E8236B80;
      v18[4] = self;
      v19 = completionCopy;
      [playbackEngine loadSessionWithIdentifier:stateRestorationSessionIdentifier completion:v18];
      v12 = v19;
    }

    else
    {
      v15 = objc_opt_new();
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72___MPCMediaRemotePublisher__leaveSharedSessionWithCommandID_completion___block_invoke_3;
      v16[3] = &unk_1E8238D28;
      v17 = completionCopy;
      [(_MPCMediaRemotePublisher *)self performSetQueue:v15 completion:v16];

      v12 = v17;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69708F8];
    stateRestorationSessionIdentifier = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Cannot leave shared session [not in shared session] queueController=%@", queueController}];
    v14 = [v13 statusWithCode:200 error:stateRestorationSessionIdentifier];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)leaveSharedSessionWithCommandID:(id)d remoteControlInterface:(id)interface completion:(id)completion
{
  v24[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  interfaceCopy = interface;
  completionCopy = completion;
  if (![dCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCMediaRemotePublisher.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"commandID.length > 0"}];
  }

  if (![interfaceCopy length])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_MPCMediaRemotePublisher.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"remoteControlInterface.length > 0"}];
  }

  leaveSharedPlaybackSessionCommand = [(MPRemoteCommandCenter *)self->_commandCenter leaveSharedPlaybackSessionCommand];
  v13 = objc_alloc(MEMORY[0x1E69708E0]);
  mediaRemoteCommandType = [leaveSharedPlaybackSessionCommand mediaRemoteCommandType];
  v15 = *MEMORY[0x1E69B1200];
  v23[0] = *MEMORY[0x1E69B10B0];
  v23[1] = v15;
  v24[0] = dCopy;
  v24[1] = interfaceCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v17 = [v13 initWithCommand:leaveSharedPlaybackSessionCommand mediaRemoteType:mediaRemoteCommandType options:v16];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94___MPCMediaRemotePublisher_leaveSharedSessionWithCommandID_remoteControlInterface_completion___block_invoke;
  v21[3] = &unk_1E8238C08;
  v22 = completionCopy;
  v18 = completionCopy;
  [leaveSharedPlaybackSessionCommand invokeCommandWithEvent:v17 completion:v21];
}

- (id)getQOSDialogForError:(id)error withItem:(id)item
{
  if (self)
  {
    self = self->_swift;
  }

  return [(_MPCMediaRemotePublisher *)self getSwiftQOSDialogForError:error withItem:item];
}

- (void)getShouldRestoreStateWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  if ([standardUserDefaults shouldSkipNextStateRestoration])
  {
    [standardUserDefaults clearShouldSkipNextStateRestoration];
LABEL_4:
    completionCopy[2](completionCopy, 0);
    goto LABEL_8;
  }

  if ([standardUserDefaults disableStateRestoration])
  {
    goto LABEL_4;
  }

  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = engineID;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] getShouldRestoreState | begin []", buf, 0xCu);
  }

  v9 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___MPCMediaRemotePublisher_getShouldRestoreStateWithCompletion___block_invoke;
  v11[3] = &unk_1E8236540;
  v12 = engineID;
  v13 = completionCopy;
  v10 = engineID;
  [v9 getPendingCommandTypesWithCompletion:v11];

LABEL_8:
}

- (void)reportUserBackgroundedApplication
{
  pauseCommand = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
  newCommandEvent = [pauseCommand newCommandEvent];

  pauseCommand2 = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
  [pauseCommand2 invokeCommandWithEvent:newCommandEvent completion:&__block_literal_global_20707];
}

- (void)dealloc
{
  playerPath = [(MPNowPlayingInfoCenter *)self->_infoCenter playerPath];
  MRMediaRemotePlaybackSessionSetMigrateFinalizeCallback();

  playerPath2 = [(MPNowPlayingInfoCenter *)self->_infoCenter playerPath];
  MRMediaRemotePlaybackSessionSetMigratePostCallback();

  [MPCQueueController unregisterPublisher:self];
  v5 = +[MPCPlaybackAccountManager sharedManager];
  [v5 unregisterObserver:self];

  v6.receiver = self;
  v6.super_class = _MPCMediaRemotePublisher;
  [(_MPCMediaRemotePublisher *)&v6 dealloc];
}

- (_MPCMediaRemotePublisher)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v38.receiver = self;
  v38.super_class = _MPCMediaRemotePublisher;
  v5 = [(_MPCMediaRemotePublisher *)&v38 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51___MPCMediaRemotePublisher_initWithPlaybackEngine___block_invoke;
    block[3] = &unk_1E8239298;
    v8 = v6;
    v37 = v8;
    dispatch_async(v7, block);

    objc_storeWeak(&v8->_playbackEngine, engineCopy);
    [engineCopy addEngineObserver:v8];
    v9 = +[MPCPlaybackAccountManager sharedManager];
    [v9 registerObserver:v8];

    initializationParameters = [engineCopy initializationParameters];
    remoteCommandCenter = [initializationParameters remoteCommandCenter];
    commandCenter = v8->_commandCenter;
    v8->_commandCenter = remoteCommandCenter;

    [(MPRemoteCommandCenter *)v8->_commandCenter setWantsSerializedEventDelivery:1];
    [(MPRemoteCommandCenter *)v8->_commandCenter setDelegate:v8];
    initializationParameters2 = [engineCopy initializationParameters];
    nowPlayingInfoCenter = [initializationParameters2 nowPlayingInfoCenter];
    infoCenter = v8->_infoCenter;
    v8->_infoCenter = nowPlayingInfoCenter;

    [(MPNowPlayingInfoCenter *)v8->_infoCenter setPlaybackQueueDataSource:v8];
    [(MPNowPlayingInfoCenter *)v8->_infoCenter setPlaybackEngine:engineCopy];
    v16 = [[_MPCMediaRemotePublisher_Swift alloc] initWithPublisher:v8];
    swift = v8->_swift;
    v8->_swift = v16;

    v18 = [[_MPCMediaRemoteDetective alloc] initWithPublisher:v8];
    detective = v8->_detective;
    v8->_detective = v18;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    if (+[MPCPlaybackEngine isSystemMusic])
    {
      [defaultCenter addObserver:v8 selector:sel__activeSharedSessionDidChange_ name:*MEMORY[0x1E69B08D0] object:0];
      mEMORY[0x1E69B09A0] = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
      groupSessionInfo = [mEMORY[0x1E69B09A0] groupSessionInfo];
      identifier = [groupSessionInfo identifier];
      hostingSharedSessionID = v8->_hostingSharedSessionID;
      v8->_hostingSharedSessionID = identifier;

      [defaultCenter addObserver:v8 selector:sel__likedStateChangedNotification_ name:*MEMORY[0x1E696F7C8] object:0];
    }

    [defaultCenter addObserver:v8 selector:sel__durationAvailableNotification_ name:*MEMORY[0x1E696F7B8] object:0];
    if (+[MPCPlaybackEngine isSystemPodcasts])
    {
      v25 = +[MPCPodcastsDefaultsHelper standard];
      podcastsSkipForwardIntervalDefaultDidChange = [MEMORY[0x1E696AD80] podcastsSkipForwardIntervalDefaultDidChange];
      [defaultCenter addObserver:v8 selector:sel__podcastsSkipIntervalDidChange_ name:podcastsSkipForwardIntervalDefaultDidChange object:v25];

      podcastsSkipBackwardIntervalDefaultDidChange = [MEMORY[0x1E696AD80] podcastsSkipBackwardIntervalDefaultDidChange];
      [defaultCenter addObserver:v8 selector:sel__podcastsSkipIntervalDidChange_ name:podcastsSkipBackwardIntervalDefaultDidChange object:v25];
    }

    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    artworkCacheLimit = [standardUserDefaults artworkCacheLimit];
    [MEMORY[0x1E69704A0] setCacheLimit:artworkCacheLimit forCacheIdentifier:@"images" cacheReference:v8];
    exportableArtworkCacheLimit = [standardUserDefaults exportableArtworkCacheLimit];
    [MEMORY[0x1E69704A0] setCacheLimit:exportableArtworkCacheLimit forCacheIdentifier:@"exportables" cacheReference:v8];
    playerPath = [(MPNowPlayingInfoCenter *)v8->_infoCenter playerPath];
    v35 = v8;
    MRMediaRemotePlaybackSessionSetMigrateFinalizeCallback();

    playerPath2 = [(MPNowPlayingInfoCenter *)v8->_infoCenter playerPath];
    v34 = v35;
    MRMediaRemotePlaybackSessionSetMigratePostCallback();

    [MPCQueueController registerPublisher:v34];
  }

  return v6;
}

- (void)nowPlayingInfoCenter:(id)center didEndMigrationWithIdentifier:(id)identifier error:(id)error
{
  if (self)
  {
    self = self->_swift;
  }

  [(_MPCMediaRemotePublisher *)self didEndMigration:identifier setPlaybackSessionCommandStatus:0 error:error completion:&__block_literal_global_973];
}

- (void)nowPlayingInfoCenter:(id)center willBeginSessionMigrationWithIdentifier:(id)identifier
{
  if (self)
  {
    self = self->_swift;
  }

  [(_MPCMediaRemotePublisher *)self willBeginSessionMigrationWithIdentifier:identifier];
}

- (void)nowPlayingInfoCenter:(id)center getTransportablePlaybackSessionRepresentationForRequest:(id)request completion:(id)completion
{
  if (self)
  {
    self = self->_swift;
  }

  [(_MPCMediaRemotePublisher *)self getTransportablePlaybackSessionRepresentationForRequest:request completion:completion];
}

- (id)nowPlayingInfoCenter:(id)center childContentItemIDAtIndex:(int64_t)index ofItem:(id)item
{
  identifier = [item identifier];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];

  v10 = [queueController itemForContentItemID:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    chapters = [v11 chapters];
    v13 = [chapters count];

    if (v13 <= index)
    {
      identifier2 = 0;
    }

    else
    {
      chapters2 = [v11 chapters];
      v15 = [chapters2 objectAtIndex:index];

      identifier2 = [v15 identifier];
    }
  }

  else
  {
    identifier2 = 0;
  }

  return identifier2;
}

- (id)nowPlayingInfoCenter:(id)center lyricsForContentItem:(id)item completion:(id)completion
{
  centerCopy = center;
  itemCopy = item;
  completionCopy = completion;
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  identifier = [itemCopy identifier];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  v15 = [queueController itemForContentItemID:identifier];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 nowPlayingInfoCenter:centerCopy lyricsForContentItem:itemCopy completion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return v11;
}

- (id)nowPlayingInfoCenter:(id)center artworkCatalogForContentItem:(id)item
{
  identifier = [item identifier];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  v8 = [queueController itemForContentItemID:identifier];
  player = [playbackEngine player];
  currentItem = [player currentItem];

  v11 = 0.0;
  if (v8 == currentItem)
  {
    player2 = [playbackEngine player];
    [player2 currentTime];
    v11 = v13;
  }

  v14 = [v8 artworkCatalogForPlaybackTime:v11];

  return v14;
}

- (id)nowPlayingInfoCenter:(id)center transcriptAlignmentsForContentItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x1E696AE38];
  itemCopy = item;
  v10 = [v8 progressWithTotalUnitCount:1];
  identifier = [itemCopy identifier];

  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  currentItem = [queueController currentItem];
  contentItemID = [currentItem contentItemID];
  if ([contentItemID isEqualToString:identifier])
  {
    transcriptAlignmentController = [playbackEngine transcriptAlignmentController];

    if (transcriptAlignmentController)
    {
      transcriptAlignmentController2 = [playbackEngine transcriptAlignmentController];
      [transcriptAlignmentController2 startProcessing];

      transcriptAlignmentController3 = [playbackEngine transcriptAlignmentController];
      transcriptAlignments = [transcriptAlignmentController3 transcriptAlignments];
      completionCopy[2](completionCopy, transcriptAlignments, 0);

      [v10 setCompletedUnitCount:1];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:@"Content item not found"];
  (completionCopy)[2](completionCopy, 0, v20);

LABEL_6:

  return v10;
}

- (id)nowPlayingInfoCenter:(id)center infoForContentItem:(id)item completion:(id)completion
{
  v7 = MEMORY[0x1E696AE38];
  completionCopy = completion;
  itemCopy = item;
  v10 = [v7 progressWithTotalUnitCount:1];
  identifier = [itemCopy identifier];

  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  v14 = [queueController itemForContentItemID:identifier];
  v15 = v14;
  if (v14)
  {
    itemDescription = [v14 itemDescription];
    completionCopy[2](completionCopy, itemDescription, 0);

    [v10 setCompletedUnitCount:1];
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:@"Content item not found"];
    (completionCopy)[2](completionCopy, 0, v17);
  }

  return v10;
}

- (id)nowPlayingInfoCenter:(id)center remoteArtworkForContentItem:(id)item format:(id)format size:(CGSize)size completion:(id)completion
{
  centerCopy = center;
  itemCopy = item;
  formatCopy = format;
  completionCopy = completion;
  if (*MEMORY[0x1E6970298] == formatCopy || [formatCopy isEqual:?])
  {
    v15 = [(_MPCMediaRemotePublisher *)self nowPlayingInfoCenter:centerCopy artworkCatalogForContentItem:itemCopy];
    [v15 setCacheIdentifier:@"exportables" forCacheReference:self];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __115___MPCMediaRemotePublisher_PlaybackQueue__nowPlayingInfoCenter_remoteArtworkForContentItem_format_size_completion___block_invoke;
    v18[3] = &unk_1E8236F78;
    v19 = completionCopy;
    [v15 requestExportableArtworkPropertiesWithCompletion:v18];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:29 debugDescription:{@"request for unknown remote artwork format: %@", formatCopy}];
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }

  return 0;
}

- (id)nowPlayingInfoCenter:(id)center artworkForContentItem:(id)item size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v12 = MEMORY[0x1E696AE38];
  itemCopy = item;
  centerCopy = center;
  v15 = [v12 progressWithTotalUnitCount:1];
  v16 = [(_MPCMediaRemotePublisher *)self nowPlayingInfoCenter:centerCopy artworkCatalogForContentItem:itemCopy];

  if (v16)
  {
    [v16 setCacheIdentifier:@"images" forCacheReference:self];
    [v16 setFittingSize:{width, height}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102___MPCMediaRemotePublisher_PlaybackQueue__nowPlayingInfoCenter_artworkForContentItem_size_completion___block_invoke;
    v19[3] = &unk_1E8236F50;
    v21 = completionCopy;
    v20 = v15;
    [v16 requestImageWithCompletion:v19];
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    (*(completionCopy + 2))(completionCopy, 0, Error);
  }

  return v15;
}

- (id)nowPlayingInfoCenter:(id)center contentItemForID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueTranslator = [playbackEngine queueTranslator];
  v8 = [queueTranslator cachedQueueItemForContentItemID:dCopy];

  if (v8)
  {
    contentItem = [v8 contentItem];
  }

  else
  {
    queueController = [playbackEngine queueController];
    v11 = [queueController itemForContentItemID:dCopy];
    contentItem2 = [v11 contentItem];
    currentItem = [queueController currentItem];
    if (!contentItem2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v11;
        v24 = queueController;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v22 = currentItem;
        obj = [currentItem chapters];
        v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v26 + 1) + 8 * i);
              identifier = [v18 identifier];
              v20 = [identifier isEqualToString:dCopy];

              if (v20)
              {
                contentItem = v18;

                v11 = v23;
                queueController = v24;
                currentItem = v22;
                goto LABEL_15;
              }
            }

            v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v11 = v23;
        queueController = v24;
        currentItem = v22;
      }
    }

    contentItem = contentItem2;
LABEL_15:
  }

  return contentItem;
}

- (id)nowPlayingInfoCenter:(id)center contentItemIDsFromOffset:(int64_t)offset toOffset:(int64_t)toOffset nowPlayingIndex:(int64_t *)index
{
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  v11 = queueController;
  if (queueController)
  {
    v12 = [queueController contentItemIDsFromOffset:offset toOffset:toOffset mode:1 nowPlayingIndex:index];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)nowPlayingInfoCenter:(id)center contentItemIDForOffset:(int64_t)offset
{
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  v7 = [queueController contentItemIDWithCurrentItemOffset:offset mode:1 didReachEnd:0];

  return v7;
}

- (id)playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter:(id)center
{
  v19[1] = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  music = [queueController music];

  if (music)
  {
    currentItem = [queueController currentItem];
    eventStream = [playbackEngine eventStream];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __102___MPCMediaRemotePublisher_PlaybackQueue__playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter___block_invoke;
    v16 = &unk_1E8236F28;
    v17 = currentItem;
    v8 = currentItem;
    v9 = [eventStream performQueryReturningBOOL:&v13];
    v18 = *MEMORY[0x1E69B0EF8];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{v9, v13, v14, v15, v16}];
    v19[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)playbackQueuePropertiesForNowPlayingInfoCenter:(id)center
{
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  upNextBehavior = [queueController upNextBehavior];
  if (upNextBehavior)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    currentItem = [queueController currentItem];
    contentItemID = [currentItem contentItemID];
    v9 = [upNextBehavior tailInsertionContentItemIDForTargetContentItemID:contentItemID];
    [dictionary setObject:v9 forKeyedSubscript:@"tailInsertionContentItemID"];

    displayItemCount = [upNextBehavior displayItemCount];
    if (displayItemCount)
    {
      v11 = displayItemCount;
      currentItem2 = [queueController currentItem];
      isRadioItem = [currentItem2 isRadioItem];

      if ((isRadioItem & 1) == 0)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        [dictionary setObject:v14 forKeyedSubscript:@"totalItemCount"];
      }
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)playbackQueueIdentifierForNowPlayingInfoCenter:(id)center
{
  playbackEngine = [(_MPCMediaRemotePublisher *)self playbackEngine];
  queueController = [playbackEngine queueController];
  sessionID = [queueController sessionID];

  return sessionID;
}

@end