@interface _MPCMediaRemotePublisher
- (MPCPlaybackEngine)playbackEngine;
- (_MPCMediaRemotePublisher)initWithPlaybackEngine:(id)a3;
- (id)_exportableSessionTypes;
- (id)_requirementsForSetPlaybackSession;
- (id)_supportedSessionTypes;
- (id)getQOSDialogForError:(id)a3 withItem:(id)a4;
- (id)nowPlayingInfoCenter:(id)a3 artworkCatalogForContentItem:(id)a4;
- (id)nowPlayingInfoCenter:(id)a3 artworkForContentItem:(id)a4 size:(CGSize)a5 completion:(id)a6;
- (id)nowPlayingInfoCenter:(id)a3 childContentItemIDAtIndex:(int64_t)a4 ofItem:(id)a5;
- (id)nowPlayingInfoCenter:(id)a3 contentItemForID:(id)a4;
- (id)nowPlayingInfoCenter:(id)a3 contentItemIDForOffset:(int64_t)a4;
- (id)nowPlayingInfoCenter:(id)a3 contentItemIDsFromOffset:(int64_t)a4 toOffset:(int64_t)a5 nowPlayingIndex:(int64_t *)a6;
- (id)nowPlayingInfoCenter:(id)a3 infoForContentItem:(id)a4 completion:(id)a5;
- (id)nowPlayingInfoCenter:(id)a3 lyricsForContentItem:(id)a4 completion:(id)a5;
- (id)nowPlayingInfoCenter:(id)a3 remoteArtworkForContentItem:(id)a4 format:(id)a5 size:(CGSize)a6 completion:(id)a7;
- (id)nowPlayingInfoCenter:(id)a3 transcriptAlignmentsForContentItem:(id)a4 completion:(id)a5;
- (id)playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter:(id)a3;
- (id)playbackQueueIdentifierForNowPlayingInfoCenter:(id)a3;
- (id)playbackQueuePropertiesForNowPlayingInfoCenter:(id)a3;
- (id)stripCommandStatusForEVS:(id)a3;
- (unint64_t)vocalAttenuationUnavailabilityReasons;
- (void)_MRPlaybackSessionMigratePostCallback:(id)a3 completion:(id)a4;
- (void)_activeSharedSessionDidChange:(id)a3;
- (void)_dispatchCommandEvent:(id)a3 completion:(id)a4;
- (void)_durationAvailableNotification:(id)a3;
- (void)_enqueueFallbackIntentIfNeededForCommandEvent:(id)a3 play:(BOOL)a4 completion:(id)a5;
- (void)_initializeCommands;
- (void)_leaveSharedSessionWithCommandID:(id)a3 completion:(id)a4;
- (void)_likedStateChangedNotification:(id)a3;
- (void)_performCommandEvent:(void *)a3 completion:;
- (void)_performDebugEvent:(id)a3 completion:(id)a4;
- (void)_performSkipChapterCommand:(unsigned int)a3 withCommandID:(id)a4 completion:(id)a5;
- (void)_podcastsSkipIntervalDidChange:(id)a3;
- (void)_updateLaunchCommands;
- (void)_updateSupportedCommands;
- (void)becomeActive;
- (void)becomeActiveIfNeededWithCommandID:(id)a3 completion:(id)a4;
- (void)commandCenter:(id)a3 didDeliverCommandEvent:(id)a4;
- (void)commandCenter:(id)a3 didTimeoutCommandEvent:(id)a4 statusHandler:(id)a5;
- (void)deactivateAudioSessionIfIdle:(int64_t)a3;
- (void)dealloc;
- (void)engine:(id)a3 didChangeActionAtQueueEnd:(int64_t)a4;
- (void)engine:(id)a3 didChangeQueueController:(id)a4;
- (void)engine:(id)a3 didChangeQueueWithReason:(id)a4;
- (void)engine:(id)a3 didChangeRepeatType:(int64_t)a4;
- (void)engine:(id)a3 didChangeShuffleType:(int64_t)a4;
- (void)engine:(id)a3 didChangeToItem:(id)a4;
- (void)engine:(id)a3 didChangeToState:(unint64_t)a4;
- (void)engine:(id)a3 didReceivePickedRouteChange:(id)a4;
- (void)engineDidBlockVocalAttenuation:(id)a3;
- (void)engineDidChangeTransitionSettings:(id)a3;
- (void)engineDidChangeVocalAttenuationLevel:(id)a3;
- (void)engineDidChangeVocalAttenuationState:(id)a3;
- (void)engineDidEndSleepTimer:(id)a3;
- (void)engineDidUnblockVocalAttenuation:(id)a3;
- (void)getShouldRestoreStateWithCompletion:(id)a3;
- (void)invalidateSessionTypesWithReason:(id)a3;
- (void)leaveSharedSessionWithCommandID:(id)a3 remoteControlInterface:(id)a4 completion:(id)a5;
- (void)nowPlayingInfoCenter:(id)a3 didEndMigrationWithIdentifier:(id)a4 error:(id)a5;
- (void)nowPlayingInfoCenter:(id)a3 getTransportablePlaybackSessionRepresentationForRequest:(id)a4 completion:(id)a5;
- (void)nowPlayingInfoCenter:(id)a3 willBeginSessionMigrationWithIdentifier:(id)a4;
- (void)performSetQueue:(id)a3 installQueueBeforeLoaded:(BOOL)a4 donatedStartPlayerItem:(id)a5 completion:(id)a6;
- (void)performSetQueueWithIntent:(id)a3 completion:(id)a4;
- (void)publishIfNeeded;
- (void)reportUserBackgroundedApplication;
- (void)stripMediaRemoteOptionsForEVS:(id)a3;
- (void)updatePlaybackMetrics:(id)a3;
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
        v5 = [v4 anyDelegationHostingAccount];
        v6 = v5 != 0;
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
    v8 = [v7 accounts];

    if (self)
    {
      swift = self->_swift;
    }

    else
    {
      swift = 0;
    }

    v10 = swift;
    v11 = [(_MPCMediaRemotePublisher_Swift *)v10 getMigrationRequirementsFilterDataForAccounts:v8 features:v6];

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
  v3 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v4 = [v3 engineID];

  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MPNowPlayingInfoCenter *)self->_infoCenter playerPath];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActive | activating playerPath [] playerPath=%{public}@", &v7, 0x16u);
  }

  [(MPNowPlayingInfoCenter *)self->_infoCenter becomeActive];
}

- (void)publishIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v4 = [v3 engineID];
  if (self->_commandUpdateScheduled)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = v4;
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
    v15 = v4;
    v6 = "[PUB:%{public}@] publishIfNeeded | ignoring [state restore]";
LABEL_20:
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_21;
  }

  if (([v3 isStarted] & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138543362;
    v15 = v4;
    v6 = "[PUB:%{public}@] publishIfNeeded | ignoring [engine not started]";
    goto LABEL_20;
  }

  v9 = +[MPCPlaybackAccountManager sharedManager];
  v10 = [v9 hasLoadedInitialAccounts];

  if ((v10 & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138543362;
    v15 = v4;
    v6 = "[PUB:%{public}@] publishIfNeeded | ignoring [waiting on accounts]";
    goto LABEL_20;
  }

  if (![(_MPCMediaRemotePublisher *)self hasInitializedSupportedCommands])
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] publishIfNeeded | initalizing []", buf, 0xCu);
    }

    self->_initializedSupportedCommands = 1;
    [(_MPCMediaRemotePublisher *)self _initializeCommands];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v4;
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

  v4 = [(MPRemoteCommandCenter *)self->_commandCenter playCommand];
  [v4 setUnsupportedReasons:0];

  v5 = [(MPRemoteCommandCenter *)self->_commandCenter playCommand];
  v6 = [v5 hasTargets];

  if ((v6 & 1) == 0)
  {
    v7 = [(MPRemoteCommandCenter *)self->_commandCenter playCommand];
    [v7 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v8 = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
  [v8 setUnsupportedReasons:0];

  v9 = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
  v10 = [v9 hasTargets];

  if ((v10 & 1) == 0)
  {
    v11 = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
    [v11 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v12 = [(MPRemoteCommandCenter *)self->_commandCenter stopCommand];
  [v12 setUnsupportedReasons:0];

  v13 = [(MPRemoteCommandCenter *)self->_commandCenter stopCommand];
  v14 = [v13 hasTargets];

  if ((v14 & 1) == 0)
  {
    v15 = [(MPRemoteCommandCenter *)self->_commandCenter stopCommand];
    [v15 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v16 = [(MPRemoteCommandCenter *)self->_commandCenter togglePlayPauseCommand];
  [v16 setUnsupportedReasons:0];

  v17 = [(MPRemoteCommandCenter *)self->_commandCenter togglePlayPauseCommand];
  v18 = [v17 hasTargets];

  if ((v18 & 1) == 0)
  {
    v19 = [(MPRemoteCommandCenter *)self->_commandCenter togglePlayPauseCommand];
    [v19 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v20 = [(MPRemoteCommandCenter *)self->_commandCenter nextTrackCommand];
  [v20 setUnsupportedReasons:0];

  v21 = [(MPRemoteCommandCenter *)self->_commandCenter nextTrackCommand];
  v22 = [v21 hasTargets];

  if ((v22 & 1) == 0)
  {
    v23 = [(MPRemoteCommandCenter *)self->_commandCenter nextTrackCommand];
    [v23 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v24 = [(MPRemoteCommandCenter *)self->_commandCenter previousTrackCommand];
  [v24 setUnsupportedReasons:0];

  v25 = [(MPRemoteCommandCenter *)self->_commandCenter previousTrackCommand];
  v26 = [v25 hasTargets];

  if ((v26 & 1) == 0)
  {
    v27 = [(MPRemoteCommandCenter *)self->_commandCenter previousTrackCommand];
    [v27 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v28 = [(MPRemoteCommandCenter *)self->_commandCenter playItemInQueueCommand];
  [v28 setUnsupportedReasons:0];

  v29 = [(MPRemoteCommandCenter *)self->_commandCenter playItemInQueueCommand];
  v30 = [v29 hasTargets];

  if ((v30 & 1) == 0)
  {
    v31 = [(MPRemoteCommandCenter *)self->_commandCenter playItemInQueueCommand];
    [v31 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  if (_os_feature_enabled_impl())
  {
    v32 = [(MPRemoteCommandCenter *)self->_commandCenter performDialogActionCommand];
    [v32 setUnsupportedReasons:0];

    v33 = [(MPRemoteCommandCenter *)self->_commandCenter performDialogActionCommand];
    v34 = [v33 hasTargets];

    if ((v34 & 1) == 0)
    {
      v35 = [(MPRemoteCommandCenter *)self->_commandCenter performDialogActionCommand];
      [v35 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }
  }

  v36 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  [v36 setUnsupportedReasons:0];

  v37 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  v38 = [v37 hasTargets];

  if ((v38 & 1) == 0)
  {
    v39 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [v39 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v40 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  [v40 registerSupportedQueueType:8];

  v41 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  [v41 registerSupportedQueueType:7];

  if (!+[MPCPlaybackEngine isSystemPodcasts])
  {
    v42 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [v42 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.radio"];

    v43 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [v43 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.tracklist"];

    v44 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [v44 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.sharedlistening"];

    v45 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [v45 registerSupportedCustomQueueIdentifier:@"com.apple.mediaplayer.playbackcontext"];

    v46 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
    [v46 registerSupportedCustomQueueIdentifier:@"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack"];
  }

  v47 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackQueueCommand];
  [v47 setTimeout:30.0];

  v48 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  [v48 setTimeout:30.0];

  v49 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
  [v49 setUnsupportedReasons:0];

  v50 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
  v51 = [v50 hasTargets];

  if ((v51 & 1) == 0)
  {
    v52 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
    [v52 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v53 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
  [v53 setSkipSerializedEventDelivery:1];

  v54 = [(MPRemoteCommandCenter *)self->_commandCenter prepareForSetPlaybackQueueCommand];
  [v54 setTimeout:30.0];

  v55 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  [v55 setUnsupportedReasons:0];

  v56 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  v57 = [v56 hasTargets];

  if ((v57 & 1) == 0)
  {
    v58 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
    [v58 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v59 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  [v59 registerSupportedQueueType:7];

  if (!+[MPCPlaybackEngine isSystemPodcasts])
  {
    v60 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
    [v60 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.radio"];

    v61 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
    [v61 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.tracklist"];

    v62 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
    [v62 registerSupportedCustomQueueIdentifier:@"com.apple.mediaplayer.playbackcontext"];
  }

  v63 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
  [v63 setPreferredIntervals:&unk_1F45998E0];

  v64 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
  [v64 setPreferredIntervals:&unk_1F45998F8];

  v65 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
  [v65 setUnsupportedReasons:0];

  v66 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
  v67 = [v66 hasTargets];

  if ((v67 & 1) == 0)
  {
    v68 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
    [v68 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v69 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
  [v69 setUnsupportedReasons:0];

  v70 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
  v71 = [v70 hasTargets];

  if ((v71 & 1) == 0)
  {
    v72 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
    [v72 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v73 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
  [v73 setUnsupportedReasons:0];

  v74 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
  v75 = [v74 hasTargets];

  if ((v75 & 1) == 0)
  {
    v76 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [v76 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  if (+[MPCPlaybackEngine isSystemMusic])
  {
    v77 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [v77 setUnsupportedReasons:0];

    v78 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    v79 = [v78 hasTargets];

    if ((v79 & 1) == 0)
    {
      v80 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
      [v80 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    v81 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v82 = [v81 localizedStringForKey:@"REMOTE_CONTROL_LIKE_TRACK_RADIO" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    v83 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [v83 setLocalizedTitle:v82];

    v84 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v85 = [v84 localizedStringForKey:@"REMOTE_CONTROL_LIKE_TRACK_SHORT" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    v86 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [v86 setLocalizedShortTitle:v85];

    v87 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [v87 setUnsupportedReasons:0];

    v88 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    LOBYTE(v85) = [v88 hasTargets];

    if ((v85 & 1) == 0)
    {
      v89 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
      [v89 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    v90 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v91 = [v90 localizedStringForKey:@"REMOTE_CONTROL_DISLIKE_TRACK_RADIO" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    v92 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [v92 setLocalizedTitle:v91];

    v93 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v94 = [v93 localizedStringForKey:@"REMOTE_CONTROL_DISLIKE_TRACK_SHORT" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
    v95 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [v95 setLocalizedShortTitle:v94];
  }

  v96 = [(MPRemoteCommandCenter *)self->_commandCenter addNowPlayingItemToLibraryCommand];
  [v96 setUnsupportedReasons:0];

  v97 = [(MPRemoteCommandCenter *)self->_commandCenter addNowPlayingItemToLibraryCommand];
  v98 = [v97 hasTargets];

  if ((v98 & 1) == 0)
  {
    v99 = [(MPRemoteCommandCenter *)self->_commandCenter addNowPlayingItemToLibraryCommand];
    [v99 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
  }

  v100 = [(MPRemoteCommandCenter *)self->_commandCenter addItemToLibraryCommand];
  [v100 setUnsupportedReasons:0];

  v101 = [(MPRemoteCommandCenter *)self->_commandCenter addItemToLibraryCommand];
  v102 = [v101 hasTargets];

  if ((v102 & 1) == 0)
  {
    v103 = [(MPRemoteCommandCenter *)self->_commandCenter addItemToLibraryCommand];
    [v103 addTarget:self action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
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
  v8 = [WeakRetained queueController];
  v9 = [v8 currentItem];
  v10 = [v8 behaviorImpl];
  v478 = [v10 isEmpty];

  v11 = [v8 behaviorType];
  v12 = +[MPCPlaybackAccountManager sharedManager];
  v13 = [v12 fallbackAccount];
  v474 = [v13 hasCatalogPlaybackCapability];

  v14 = [v8 sessionID];
  v15 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  [v15 setCurrentPlaybackSessionIdentifier:v14];

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v8 sessionID];
    *buf = 138543618;
    v500 = v17;
    v501 = 2114;
    v502 = v9;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_INFO, "[Publisher] _updateSupportedCommands sessionIdentifier=%{public}@ currentItem=%{public}@", buf, 0x16u);
  }

  v18 = [v9 isAlwaysLive];
  v19 = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackPositionCommand];
  v20 = self;
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MEMORY[0x1E695DF70] array];
  v476 = v18;
  if (v18)
  {
    [v21 addObject:@"live streaming content"];
  }

  v23 = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackPositionCommand];
  [v23 setCanBeControlledByScrubbing:v476 ^ 1u];

  v24 = [WeakRetained transcriptAlignmentController];
  v25 = v24;
  v481 = v9;
  v472 = v11;
  if (v24)
  {
    v26 = [v24 isEnabled];
  }

  else
  {
    v26 = 0;
  }

  v27 = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackPositionCommand];
  [v27 setSupportsReferencePosition:v26];

  if ([v21 count])
  {
    v28 = v481;
    v29 = v472;
    if (![v21 count])
    {
      v403 = [MEMORY[0x1E696AAA8] currentHandler];
      v404 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v403 handleFailureInFunction:v404 file:@"_MPCMediaRemotePublisher.m" lineNumber:1084 description:@"Must provide reason for unsupported command"];
    }

    [v19 setUnsupportedReasons:v21];
    if ([v19 hasTargets])
    {
      [v19 removeTarget:v20 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v19 setUnsupportedReasons:0];
    v28 = v481;
    v29 = v472;
    if (([v19 hasTargets] & 1) == 0)
    {
      [v19 addTarget:v20 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v19 setEnabled:{objc_msgSend(v22, "count") == 0}];
    [v19 setDisabledReasons:v22];
  }

  v30 = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackRateCommand];
  v31 = v20;
  v32 = [MEMORY[0x1E695DF70] array];
  v33 = [MEMORY[0x1E695DF70] array];
  if (([v28 supportsRateChange] & 1) == 0)
  {
    [v32 addObject:@"item does not support rate changes"];
  }

  if (v476)
  {
    [v32 addObject:@"live streaming content"];
  }

  if (v29 != 4)
  {
    [v33 addObject:@"hidden for Music"];
  }

  if ([v32 count])
  {
    if (![v32 count])
    {
      v405 = [MEMORY[0x1E696AAA8] currentHandler];
      v406 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v405 handleFailureInFunction:v406 file:@"_MPCMediaRemotePublisher.m" lineNumber:1090 description:@"Must provide reason for unsupported command"];
    }

    [v30 setUnsupportedReasons:v32];
    if ([v30 hasTargets])
    {
      [v30 removeTarget:v31 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v30 setUnsupportedReasons:0];
    if (([v30 hasTargets] & 1) == 0)
    {
      [v30 addTarget:v31 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v30 setEnabled:{objc_msgSend(v33, "count") == 0}];
    [v30 setDisabledReasons:v33];
  }

  v34 = [(MPRemoteCommandCenter *)self->_commandCenter setSleepTimerCommand];
  v35 = v31;
  v36 = [MEMORY[0x1E695DF70] array];
  v37 = [MEMORY[0x1E695DF70] array];
  if (v29 != 4)
  {
    [v36 addObject:@"sleep timers for podcasts"];
    [v37 addObject:@"hidden for Music"];
  }

  if ([v36 count])
  {
    if (![v36 count])
    {
      v407 = [MEMORY[0x1E696AAA8] currentHandler];
      v408 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v407 handleFailureInFunction:v408 file:@"_MPCMediaRemotePublisher.m" lineNumber:1095 description:@"Must provide reason for unsupported command"];
    }

    [v34 setUnsupportedReasons:v36];
    if ([v34 hasTargets])
    {
      [v34 removeTarget:v35 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v34 setUnsupportedReasons:0];
    if (([v34 hasTargets] & 1) == 0)
    {
      [v34 addTarget:v35 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v34 setEnabled:{objc_msgSend(v37, "count") == 0}];
    [v34 setDisabledReasons:v37];
  }

  v38 = [(MPRemoteCommandCenter *)self->_commandCenter seekForwardCommand];
  v39 = v35;
  v40 = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DF70] array];
  v42 = [v8 musicSharePlay];

  if (v42)
  {
    [v40 addObject:@"shared listening does not support FF"];
  }

  if (v476)
  {
    [v40 addObject:@"live streaming content"];
  }

  if ([v28 isInOverlappedTransition])
  {
    [v40 addObject:@"overlapped transitions do not support FF"];
  }

  if ([v40 count])
  {
    if (![v40 count])
    {
      v409 = [MEMORY[0x1E696AAA8] currentHandler];
      v410 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v409 handleFailureInFunction:v410 file:@"_MPCMediaRemotePublisher.m" lineNumber:1103 description:@"Must provide reason for unsupported command"];
    }

    [v38 setUnsupportedReasons:v40];
    if ([v38 hasTargets])
    {
      [v38 removeTarget:v39 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v38 setUnsupportedReasons:0];
    if (([v38 hasTargets] & 1) == 0)
    {
      [v38 addTarget:v39 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v38 setEnabled:{objc_msgSend(v41, "count") == 0}];
    [v38 setDisabledReasons:v41];
  }

  v43 = [(MPRemoteCommandCenter *)self->_commandCenter seekBackwardCommand];
  v44 = v39;
  v45 = [MEMORY[0x1E695DF70] array];
  v46 = [MEMORY[0x1E695DF70] array];
  v47 = [v8 musicSharePlay];

  if (v47)
  {
    [v45 addObject:@"shared listening does not support RW"];
  }

  if (v476)
  {
    [v45 addObject:@"live streaming content"];
  }

  if ([v28 isInOverlappedTransition])
  {
    [v45 addObject:@"overlapped transitions do not support RW"];
  }

  if ([v45 count])
  {
    if (![v45 count])
    {
      v411 = [MEMORY[0x1E696AAA8] currentHandler];
      v412 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v411 handleFailureInFunction:v412 file:@"_MPCMediaRemotePublisher.m" lineNumber:1111 description:@"Must provide reason for unsupported command"];
    }

    [v43 setUnsupportedReasons:v45];
    if ([v43 hasTargets])
    {
      [v43 removeTarget:v44 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v43 setUnsupportedReasons:0];
    if (([v43 hasTargets] & 1) == 0)
    {
      [v43 addTarget:v44 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v43 setEnabled:{objc_msgSend(v46, "count") == 0}];
    [v43 setDisabledReasons:v46];
  }

  v48 = [v28 prefersSeekOverSkip];
  if (!v28)
  {
    v48 |= +[MPCPlaybackEngine isSystemPodcasts];
  }

  v49 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
  v50 = v44;
  v51 = [MEMORY[0x1E695DF70] array];
  v52 = [MEMORY[0x1E695DF70] array];
  if (v476)
  {
    [v51 addObject:@"live streaming content"];
  }

  if ((v48 & 1) == 0)
  {
    [v52 addObject:@"item prefers seek over skip"];
  }

  if ([v51 count])
  {
    if (![v51 count])
    {
      v413 = [MEMORY[0x1E696AAA8] currentHandler];
      v414 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v413 handleFailureInFunction:v414 file:@"_MPCMediaRemotePublisher.m" lineNumber:1121 description:@"Must provide reason for unsupported command"];

      v28 = v481;
    }

    [v49 setUnsupportedReasons:v51];
    if ([v49 hasTargets])
    {
      [v49 removeTarget:v50 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v49 setUnsupportedReasons:0];
    if (([v49 hasTargets] & 1) == 0)
    {
      [v49 addTarget:v50 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v49 setEnabled:{objc_msgSend(v52, "count") == 0}];
    [v49 setDisabledReasons:v52];
  }

  v53 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
  v54 = v50;
  v55 = [MEMORY[0x1E695DF70] array];
  v56 = [MEMORY[0x1E695DF70] array];
  if (v476)
  {
    [v55 addObject:@"live streaming content"];
  }

  if ((v48 & 1) == 0)
  {
    [v56 addObject:@"item prefers seek over skip"];
  }

  if ([v55 count])
  {
    if (![v55 count])
    {
      v415 = [MEMORY[0x1E696AAA8] currentHandler];
      v416 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v415 handleFailureInFunction:v416 file:@"_MPCMediaRemotePublisher.m" lineNumber:1125 description:@"Must provide reason for unsupported command"];
    }

    [v53 setUnsupportedReasons:v55];
    if ([v53 hasTargets])
    {
      [v53 removeTarget:v54 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v53 setUnsupportedReasons:0];
    if (([v53 hasTargets] & 1) == 0)
    {
      [v53 addTarget:v54 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v53 setEnabled:{objc_msgSend(v56, "count") == 0}];
    [v53 setDisabledReasons:v56];
  }

  v57 = [(MPRemoteCommandCenter *)self->_commandCenter previousTrackCommand];
  v58 = v54;
  v59 = [MEMORY[0x1E695DF70] array];
  v60 = [MEMORY[0x1E695DF70] array];
  if (v478)
  {
    [v59 addObject:@"behavior has no items"];
  }

  v61 = @"uninitialized queueController";
  if (v8)
  {
    v61 = 0;
  }

  v62 = v61;
  v63 = [v28 contentItemID];
  v490 = v62;
  v64 = [v8 canPreviousTrackForContentItemID:v63 reason:&v490];
  v65 = v490;

  if ((v64 & 1) == 0)
  {
    [v60 addObject:v65];
  }

  if ([v59 count])
  {
    v66 = v481;
    if (![v59 count])
    {
      v417 = [MEMORY[0x1E696AAA8] currentHandler];
      v418 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v417 handleFailureInFunction:v418 file:@"_MPCMediaRemotePublisher.m" lineNumber:1132 description:@"Must provide reason for unsupported command"];
    }

    [v57 setUnsupportedReasons:v59];
    if ([v57 hasTargets])
    {
      [v57 removeTarget:v58 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v57 setUnsupportedReasons:0];
    v66 = v481;
    if (([v57 hasTargets] & 1) == 0)
    {
      [v57 addTarget:v58 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v57 setEnabled:{objc_msgSend(v60, "count") == 0}];
    [v57 setDisabledReasons:v60];
  }

  v67 = [(MPRemoteCommandCenter *)self->_commandCenter nextTrackCommand];
  v68 = v58;
  v69 = [MEMORY[0x1E695DF70] array];
  v70 = [MEMORY[0x1E695DF70] array];
  if (v478)
  {
    [v69 addObject:@"behavior has no items"];
  }

  v71 = v62;
  v72 = [v66 contentItemID];
  v489 = v71;
  v73 = [v8 canNextTrackForContentItemID:v72 reason:&v489];
  v74 = v489;

  if ((v73 & 1) == 0)
  {
    [v70 addObject:v74];
  }

  if ([v481 isPlaceholder])
  {
    [v70 addObject:@"loading item"];
  }

  if ([v69 count])
  {
    if (![v69 count])
    {
      v419 = [MEMORY[0x1E696AAA8] currentHandler];
      v420 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v419 handleFailureInFunction:v420 file:@"_MPCMediaRemotePublisher.m" lineNumber:1139 description:@"Must provide reason for unsupported command"];
    }

    [v67 setUnsupportedReasons:v69];
    if ([v67 hasTargets])
    {
      [v67 removeTarget:v68 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v67 setUnsupportedReasons:0];
    if (([v67 hasTargets] & 1) == 0)
    {
      [v67 addTarget:v68 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v67 setEnabled:{objc_msgSend(v70, "count") == 0}];
    [v67 setDisabledReasons:v70];
  }

  v75 = [(MPRemoteCommandCenter *)self->_commandCenter createRadioStationCommand];
  v76 = v68;
  v77 = [MEMORY[0x1E695DF70] array];
  v78 = [MEMORY[0x1E695DF70] array];
  if (v478)
  {
    [v77 addObject:@"behavior has no items"];
  }

  v79 = [v8 upNextBehavior];
  v80 = [v79 allowsQueueModifications];

  if ((v80 & 1) == 0)
  {
    [v77 addObject:@"queue does not allow modification"];
  }

  if ((v474 & 1) == 0)
  {
    [v77 addObject:@"active account does not allow subscription playback"];
  }

  if (v476)
  {
    [v77 addObject:@"live streaming content"];
  }

  if ([v481 isPlaceholder])
  {
    [v77 addObject:@"loading item"];
  }

  v81 = [v481 modelGenericObject];
  v82 = [v81 flattenedGenericObject];
  v83 = [v82 type];

  if (v83 != 1)
  {
    [v77 addObject:@"item is not a Song"];
  }

  if ([v77 count])
  {
    if (![v77 count])
    {
      v421 = [MEMORY[0x1E696AAA8] currentHandler];
      v422 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v421 handleFailureInFunction:v422 file:@"_MPCMediaRemotePublisher.m" lineNumber:1148 description:@"Must provide reason for unsupported command"];
    }

    [v75 setUnsupportedReasons:v77];
    if ([v75 hasTargets])
    {
      [v75 removeTarget:v76 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v75 setUnsupportedReasons:0];
    if (([v75 hasTargets] & 1) == 0)
    {
      [v75 addTarget:v76 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v75 setEnabled:{objc_msgSend(v78, "count") == 0}];
    [v75 setDisabledReasons:v78];
  }

  v84 = [(MPRemoteCommandCenter *)self->_commandCenter reorderQueueCommand];
  v85 = v76;
  v86 = [MEMORY[0x1E695DF70] array];
  v87 = [MEMORY[0x1E695DF70] array];
  if (v478)
  {
    [v86 addObject:@"behavior has no items"];
  }

  v88 = [v8 upNextBehavior];
  v89 = [v88 allowsQueueModifications];

  if ((v89 & 1) == 0)
  {
    [v86 addObject:@"queue does not allow modifications"];
  }

  if ([v86 count])
  {
    if (![v86 count])
    {
      v423 = [MEMORY[0x1E696AAA8] currentHandler];
      v424 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v423 handleFailureInFunction:v424 file:@"_MPCMediaRemotePublisher.m" lineNumber:1153 description:@"Must provide reason for unsupported command"];
    }

    [v84 setUnsupportedReasons:v86];
    if ([v84 hasTargets])
    {
      [v84 removeTarget:v85 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v84 setUnsupportedReasons:0];
    if (([v84 hasTargets] & 1) == 0)
    {
      [v84 addTarget:v85 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v84 setEnabled:{objc_msgSend(v87, "count") == 0}];
    [v84 setDisabledReasons:v87];
  }

  v90 = [(MPRemoteCommandCenter *)self->_commandCenter removeFromPlaybackQueueCommand];
  v91 = v85;
  v92 = [MEMORY[0x1E695DF70] array];
  v93 = [MEMORY[0x1E695DF70] array];
  if (v478)
  {
    [v92 addObject:@"behavior has no items"];
  }

  v94 = [v8 upNextBehavior];
  v95 = [v94 allowsQueueModifications];

  if ((v95 & 1) == 0)
  {
    [v92 addObject:@"queue does not allow modifications"];
  }

  if ([v92 count])
  {
    if (![v92 count])
    {
      v425 = [MEMORY[0x1E696AAA8] currentHandler];
      v426 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v425 handleFailureInFunction:v426 file:@"_MPCMediaRemotePublisher.m" lineNumber:1157 description:@"Must provide reason for unsupported command"];
    }

    [v90 setUnsupportedReasons:v92];
    if ([v90 hasTargets])
    {
      [v90 removeTarget:v91 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v90 setUnsupportedReasons:0];
    if (([v90 hasTargets] & 1) == 0)
    {
      [v90 addTarget:v91 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v90 setEnabled:{objc_msgSend(v93, "count") == 0}];
    [v90 setDisabledReasons:v93];
  }

  v475 = v8;
  if (v8)
  {
    v96 = [v8 music];

    if (v96)
    {
      v473 = 0;
      LODWORD(v8) = 1;
    }

    else
    {
      v97 = MEMORY[0x1E696AEC0];
      if (v472 >= 6)
      {
        v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown/%lld", v472];
      }

      else
      {
        v98 = off_1E8236FC0[v472];
      }

      v473 = [v97 stringWithFormat:@"%@ behavior", v98];

      LODWORD(v8) = 0;
    }
  }

  else
  {
    v473 = @"uninitialized queueController";
  }

  v99 = [v475 music];
  v488 = @"<MISSING REASON>";
  v100 = [v99 canUserChangeRepeatTypeWithReason:&v488];
  v469 = v488;

  v101 = [v475 music];
  v102 = [v101 repeatType];

  v103 = [(MPRemoteCommandCenter *)self->_commandCenter changeRepeatModeCommand];
  v104 = v91;
  v105 = [MEMORY[0x1E695DF70] array];
  v106 = [MEMORY[0x1E695DF70] array];
  if ((v8 & 1) == 0)
  {
    [v105 addObject:v473];
  }

  if (v478)
  {
    [v105 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableRepeat])
  {
    [v105 addObject:@"disabled for playback engine"];
  }

  if (v476)
  {
    [v105 addObject:@"live streaming content"];
  }

  v107 = v8 ^ 1;
  v108 = v8 ^ 1 | v100;
  if ((v108 & 1) == 0)
  {
    [v105 addObject:v469];
  }

  v109 = [(MPRemoteCommandCenter *)self->_commandCenter changeRepeatModeCommand];
  [v109 setCurrentRepeatType:v102];

  if ([v105 count])
  {
    if (![v105 count])
    {
      v471 = [MEMORY[0x1E696AAA8] currentHandler];
      v427 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v471 handleFailureInFunction:v427 file:@"_MPCMediaRemotePublisher.m" lineNumber:1184 description:@"Must provide reason for unsupported command"];
    }

    [v103 setUnsupportedReasons:v105];
    if ([v103 hasTargets])
    {
      [v103 removeTarget:v104 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v103 setUnsupportedReasons:0];
    if (([v103 hasTargets] & 1) == 0)
    {
      [v103 addTarget:v104 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v103 setEnabled:{objc_msgSend(v106, "count") == 0}];
    [v103 setDisabledReasons:v106];
  }

  v110 = [(MPRemoteCommandCenter *)self->_commandCenter advanceRepeatModeCommand];
  v111 = v104;
  v112 = [MEMORY[0x1E695DF70] array];
  v113 = [MEMORY[0x1E695DF70] array];
  if ((v8 & 1) == 0)
  {
    [v112 addObject:v473];
  }

  if (v478)
  {
    [v112 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableRepeat])
  {
    [v112 addObject:@"disabled for playback engine"];
  }

  if (v476)
  {
    [v112 addObject:@"live streaming content"];
  }

  if ((v108 & 1) == 0)
  {
    [v112 addObject:v469];
  }

  v114 = [(MPRemoteCommandCenter *)self->_commandCenter advanceRepeatModeCommand];
  [v114 setCurrentRepeatType:v102];

  if ([v112 count])
  {
    if (![v112 count])
    {
      v428 = [MEMORY[0x1E696AAA8] currentHandler];
      v429 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v428 handleFailureInFunction:v429 file:@"_MPCMediaRemotePublisher.m" lineNumber:1194 description:@"Must provide reason for unsupported command"];
    }

    [v110 setUnsupportedReasons:v112];
    if ([v110 hasTargets])
    {
      [v110 removeTarget:v111 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v110 setUnsupportedReasons:0];
    if (([v110 hasTargets] & 1) == 0)
    {
      [v110 addTarget:v111 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v110 setEnabled:{objc_msgSend(v113, "count") == 0}];
    [v110 setDisabledReasons:v113];
  }

  v115 = [v475 music];
  v487 = @"<MISSING REASON>";
  v116 = [v115 canUserChangeShuffleModeWithReason:&v487];
  v470 = v487;

  v117 = [v475 music];
  v118 = [v117 shuffleType];

  v119 = [(MPRemoteCommandCenter *)self->_commandCenter changeShuffleModeCommand];
  v120 = v111;
  v121 = [MEMORY[0x1E695DF70] array];
  v122 = [MEMORY[0x1E695DF70] array];
  if ((v8 & 1) == 0)
  {
    [v121 addObject:v473];
  }

  if (v478)
  {
    [v121 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableShuffle])
  {
    [v121 addObject:@"disabled for playback engine"];
  }

  v123 = v107 | v116;
  if (((v107 | v116) & 1) == 0)
  {
    [v121 addObject:v470];
  }

  v124 = [(MPRemoteCommandCenter *)self->_commandCenter changeShuffleModeCommand];
  [v124 setCurrentShuffleType:v118];

  if ([v121 count])
  {
    if (![v121 count])
    {
      v430 = [MEMORY[0x1E696AAA8] currentHandler];
      v431 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v430 handleFailureInFunction:v431 file:@"_MPCMediaRemotePublisher.m" lineNumber:1207 description:@"Must provide reason for unsupported command"];
    }

    [v119 setUnsupportedReasons:v121];
    if ([v119 hasTargets])
    {
      [v119 removeTarget:v120 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v119 setUnsupportedReasons:0];
    if (([v119 hasTargets] & 1) == 0)
    {
      [v119 addTarget:v120 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v119 setEnabled:{objc_msgSend(v122, "count") == 0}];
    [v119 setDisabledReasons:v122];
  }

  v125 = [(MPRemoteCommandCenter *)self->_commandCenter advanceShuffleModeCommand];
  v126 = v120;
  v127 = [MEMORY[0x1E695DF70] array];
  v128 = [MEMORY[0x1E695DF70] array];
  if ((v8 & 1) == 0)
  {
    [v127 addObject:v473];
  }

  if (v478)
  {
    [v127 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableShuffle])
  {
    [v127 addObject:@"disabled for playback engine"];
  }

  if ((v123 & 1) == 0)
  {
    [v127 addObject:v470];
  }

  v129 = [(MPRemoteCommandCenter *)self->_commandCenter advanceShuffleModeCommand];
  [v129 setCurrentShuffleType:v118];

  if ([v127 count])
  {
    if (![v127 count])
    {
      v432 = [MEMORY[0x1E696AAA8] currentHandler];
      v433 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v432 handleFailureInFunction:v433 file:@"_MPCMediaRemotePublisher.m" lineNumber:1216 description:@"Must provide reason for unsupported command"];
    }

    [v125 setUnsupportedReasons:v127];
    if ([v125 hasTargets])
    {
      [v125 removeTarget:v126 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v125 setUnsupportedReasons:0];
    if (([v125 hasTargets] & 1) == 0)
    {
      [v125 addTarget:v126 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v125 setEnabled:{objc_msgSend(v128, "count") == 0}];
    [v125 setDisabledReasons:v128];
  }

  v130 = [(MPRemoteCommandCenter *)self->_commandCenter reshuffleCommand];
  v131 = v126;
  v132 = [MEMORY[0x1E695DF70] array];
  v133 = [MEMORY[0x1E695DF70] array];
  if ((v8 & 1) == 0)
  {
    [v132 addObject:v473];
  }

  if (v478)
  {
    [v132 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableShuffle])
  {
    [v132 addObject:@"disabled for playback engine"];
  }

  if ((v123 & 1) == 0)
  {
    [v132 addObject:v470];
  }

  if ([v132 count])
  {
    if (![v132 count])
    {
      v434 = [MEMORY[0x1E696AAA8] currentHandler];
      v435 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v434 handleFailureInFunction:v435 file:@"_MPCMediaRemotePublisher.m" lineNumber:1224 description:@"Must provide reason for unsupported command"];
    }

    [v130 setUnsupportedReasons:v132];
    if ([v130 hasTargets])
    {
      [v130 removeTarget:v131 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v130 setUnsupportedReasons:0];
    if (([v130 hasTargets] & 1) == 0)
    {
      [v130 addTarget:v131 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v130 setEnabled:{objc_msgSend(v133, "count") == 0}];
    [v130 setDisabledReasons:v133];
  }

  v134 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
  v135 = v131;
  v136 = [MEMORY[0x1E695DF70] array];
  v137 = [MEMORY[0x1E695DF70] array];
  if ((v8 & 1) == 0)
  {
    [v136 addObject:v473];
  }

  if (v478)
  {
    [v136 addObject:@"behavior has no items"];
  }

  if ([WeakRetained disableAutoPlay])
  {
    [v136 addObject:@"disabled for playback engine"];
  }

  if (v8)
  {
    v138 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v139 = [v475 music];
    v140 = objc_opt_respondsToSelector();

    if (v140)
    {
      v141 = [v475 music];
      v142 = [v141 isSupportedQueueEndAction:0];

      if (v142)
      {
        [v138 addObject:&unk_1F4599478];
      }

      v143 = [v475 music];
      v144 = [v143 isSupportedQueueEndAction:2];

      if (v144)
      {
        [v138 addObject:&unk_1F4599490];
      }

      v145 = [v475 music];
      v146 = [v145 isSupportedQueueEndAction:3];

      if (v146)
      {
        [v138 addObject:&unk_1F45994A8];
      }
    }

    else
    {
      [v138 addObject:&unk_1F4599490];
      if ((v478 & 1) == 0)
      {
        v149 = [v475 music];
        v486 = 0;
        v150 = [v149 canUserEnableAutoPlayWithReason:&v486];
        v151 = v486;

        if (v150)
        {
          [v138 addObject:&unk_1F45994A8];
        }
      }
    }

    v152 = [v475 music];
    v153 = objc_opt_respondsToSelector();

    v154 = [v475 music];
    v155 = v154;
    if (v153)
    {
      v156 = [v154 queueEndAction];
    }

    else if ([v154 autoPlayEnabled])
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    v148 = v481;

    v157 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [v157 setCurrentQueueEndAction:v156];

    v158 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [v158 setSupportedQueueEndActions:v138];
  }

  else
  {
    v147 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [v147 setCurrentQueueEndAction:1];

    v138 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [v138 setSupportedQueueEndActions:MEMORY[0x1E695E0F0]];
    v148 = v481;
  }

  if ([v136 count])
  {
    if (![v136 count])
    {
      v436 = [MEMORY[0x1E696AAA8] currentHandler];
      v437 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v436 handleFailureInFunction:v437 file:@"_MPCMediaRemotePublisher.m" lineNumber:1264 description:@"Must provide reason for unsupported command"];
    }

    [v134 setUnsupportedReasons:v136];
    if ([v134 hasTargets])
    {
      [v134 removeTarget:v135 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v134 setUnsupportedReasons:0];
    if (([v134 hasTargets] & 1) == 0)
    {
      [v134 addTarget:v135 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v134 setEnabled:{objc_msgSend(v137, "count") == 0}];
    [v134 setDisabledReasons:v137];
  }

  v159 = [(MPRemoteCommandCenter *)self->_commandCenter shareQueueCommand];
  v160 = v135;
  v161 = [MEMORY[0x1E695DF70] array];
  v162 = [MEMORY[0x1E695DF70] array];
  if ((v8 & 1) == 0)
  {
    [v161 addObject:v473];
  }

  v163 = v475;
  v164 = [v475 musicSharePlay];

  if (v164)
  {
    [v161 addObject:@"already in shared listening mode"];
  }

  if (v478)
  {
    [v161 addObject:@"behavior has no items"];
  }

  if (![v148 storeSubscriptionAdamID])
  {
    [v161 addObject:@"item doesn't have subscription adam id"];
  }

  if ([v161 count])
  {
    if (![v161 count])
    {
      v438 = [MEMORY[0x1E696AAA8] currentHandler];
      v439 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v438 handleFailureInFunction:v439 file:@"_MPCMediaRemotePublisher.m" lineNumber:1270 description:@"Must provide reason for unsupported command"];
    }

    [v159 setUnsupportedReasons:v161];
    if ([v159 hasTargets])
    {
      [v159 removeTarget:v160 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v159 setUnsupportedReasons:0];
    if (([v159 hasTargets] & 1) == 0)
    {
      [v159 addTarget:v160 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v159 setEnabled:{objc_msgSend(v162, "count") == 0}];
    [v159 setDisabledReasons:v162];
  }

  v165 = [(MPRemoteCommandCenter *)self->_commandCenter shareQueueCommand];
  [v165 setTimeout:30.0];

  if (!+[MPCPlaybackEngine isSystemPodcasts])
  {
    v166 = _os_feature_enabled_impl();
    v167 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v168 = +[MPCPlaybackAccountManager sharedManager];
    v169 = [v168 fallbackAccount];

    v170 = [v167 _areTransitionsEnabledWithSubscription:{objc_msgSend(v169, "hasCatalogPlaybackCapability")}];
    v464 = v169;
    v465 = v167;
    v171 = [v167 transitionStyleForUserWithCatalogPlaybackCapability:{objc_msgSend(v169, "hasCatalogPlaybackCapability")}];
    v172 = [v475 transitionTogglable];
    v173 = v172;
    v174 = 0;
    v175 = @"<MISSING REASON>";
    if (v166 && v172)
    {
      v485 = @"<MISSING REASON>";
      v174 = [v172 canUserToggleTransitionsEnabledWithReason:&v485];
      v175 = v485;
      v170 = [v173 transitionsEnabled];
      v171 = [v173 transitionStyle];
    }

    v479 = v175;
    v176 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    v463 = v160;
    v177 = [MEMORY[0x1E695DF70] array];
    v178 = [MEMORY[0x1E695DF70] array];
    v179 = v178;
    if ((v166 & 1) == 0)
    {
      [v178 addObject:@"alchemy feature not enabled"];
    }

    v180 = [v475 musicSharePlay];

    if (v180)
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

    v181 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    [v181 setActive:v170];

    v182 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    [v182 setTransitionStyle:v171];

    v163 = v475;
    if ([v177 count])
    {
      v183 = v463;
      if (![v177 count])
      {
        v458 = [MEMORY[0x1E696AAA8] currentHandler];
        v459 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
        [v458 handleFailureInFunction:v459 file:@"_MPCMediaRemotePublisher.m" lineNumber:1309 description:@"Must provide reason for unsupported command"];
      }

      [v176 setUnsupportedReasons:v177];
      if ([v176 hasTargets])
      {
        [v176 removeTarget:v463 action:sel__dispatchCommandEvent_completion_];
      }
    }

    else
    {
      [v176 setUnsupportedReasons:0];
      v183 = v463;
      if (([v176 hasTargets] & 1) == 0)
      {
        [v176 addTarget:v463 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
      }

      [v176 setEnabled:{objc_msgSend(v179, "count") == 0}];
      [v176 setDisabledReasons:v179];
    }
  }

  v184 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  v185 = v160;
  v186 = [MEMORY[0x1E695DF70] array];
  v187 = [MEMORY[0x1E695DF70] array];
  v188 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  if (v481)
  {
    v189 = [v163 upNextBehavior];

    if (v189)
    {
      v190 = [v163 upNextBehavior];
      v191 = [v481 contentItemID];
      v192 = [v190 isSupportedInsertionPosition:0 fromContentItemID:v191 reason:0];

      if (v192)
      {
        [v188 addObject:&unk_1F4599478];
      }

      v193 = [v163 upNextBehavior];
      v194 = [v481 contentItemID];
      v195 = [v193 isSupportedInsertionPosition:1 fromContentItemID:v194 reason:0];

      if (v195 && ([v188 addObject:&unk_1F45994C0], objc_msgSend(v163, "music"), v196 = objc_claimAutoreleasedReturnValue(), v196, v196))
      {
        v197 = [v163 music];
        v198 = [v481 contentItemID];
        v199 = [v197 lastSectionContentItemIDForTargetContentItemID:v198];

        v200 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
        [v200 setLastSectionContentItemID:v199];
      }

      else
      {
        v199 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
        [v199 setLastSectionContentItemID:0];
      }

      v201 = [v163 upNextBehavior];
      v202 = [v481 contentItemID];
      v203 = [v201 isSupportedInsertionPosition:2 fromContentItemID:v202 reason:0];

      if (v203)
      {
        [v188 addObject:&unk_1F4599490];
      }

      v204 = [v163 upNextBehavior];
      v205 = [v481 contentItemID];
      v206 = [v204 isSupportedInsertionPosition:3 fromContentItemID:v205 reason:0];

      if (v206)
      {
        [v188 addObject:&unk_1F45994A8];
      }
    }
  }

  v207 = [(MPRemoteCommandCenter *)self->_commandCenter insertIntoPlaybackQueueCommand];
  [v207 setSupportedInsertionPositions:v188];

  v208 = [v163 upNextBehavior];

  if (!v208)
  {
    [v187 addObject:@"current behavior is not upNextBehavior"];
  }

  v209 = [v163 upNextBehavior];
  v210 = [v209 allowsQueueModifications];

  if ((v210 & 1) == 0)
  {
    [v187 addObject:@"queue does not allow modifications"];
  }

  if (!v481)
  {
    [v187 addObject:@"no current item in queue"];
  }

  if (![v188 count])
  {
    [v187 addObject:@"queue does not support any insertion positions"];
  }

  if ([v186 count])
  {
    v211 = v481;
    if (![v186 count])
    {
      v440 = [MEMORY[0x1E696AAA8] currentHandler];
      v441 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v440 handleFailureInFunction:v441 file:@"_MPCMediaRemotePublisher.m" lineNumber:1350 description:@"Must provide reason for unsupported command"];
    }

    [v184 setUnsupportedReasons:v186];
    if ([v184 hasTargets])
    {
      [v184 removeTarget:v185 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v184 setUnsupportedReasons:0];
    v211 = v481;
    if (([v184 hasTargets] & 1) == 0)
    {
      [v184 addTarget:v185 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v184 setEnabled:{objc_msgSend(v187, "count") == 0}];
    [v184 setDisabledReasons:v187];
  }

  v212 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  v213 = v185;
  v214 = [MEMORY[0x1E695DF70] array];
  v215 = [MEMORY[0x1E695DF70] array];
  v216 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v217 = [v216 disableQHO];

  if (v217)
  {
    [v214 addObject:@"QHO disabled by defaults"];
  }

  if (([WeakRetained isQueueHandoffSupported] & 1) == 0)
  {
    [v214 addObject:@"engine not configured for QHO"];
  }

  v218 = [v213 _supportedSessionTypes];
  v219 = [v213 _exportableSessionTypes];
  v220 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  [v220 setSupportedSessionTypes:v218];

  v221 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
  [v221 setExportableSessionTypes:v219];

  if (![v218 count])
  {
    [v214 addObject:@"no supported session types"];
  }

  if (_os_feature_enabled_impl())
  {
    v222 = [v213 _requirementsForSetPlaybackSession];
    v223 = [(MPRemoteCommandCenter *)self->_commandCenter setPlaybackSessionCommand];
    [v223 setRequirements:v222];

    v211 = v481;
  }

  if ([v214 count])
  {
    if (![v214 count])
    {
      v442 = [MEMORY[0x1E696AAA8] currentHandler];
      v443 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v442 handleFailureInFunction:v443 file:@"_MPCMediaRemotePublisher.m" lineNumber:1366 description:@"Must provide reason for unsupported command"];
    }

    [v212 setUnsupportedReasons:v214];
    if ([v212 hasTargets])
    {
      [v212 removeTarget:v213 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v212 setUnsupportedReasons:0];
    if (([v212 hasTargets] & 1) == 0)
    {
      [v212 addTarget:v213 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v212 setEnabled:{objc_msgSend(v215, "count") == 0}];
    [v212 setDisabledReasons:v215];
  }

  v224 = [(MPRemoteCommandCenter *)self->_commandCenter delegateAccountCommand];
  v225 = v213;
  v226 = [MEMORY[0x1E695DF70] array];
  v227 = [MEMORY[0x1E695DF70] array];
  if ((MSVDeviceSupportsDelegatedIdentities() & 1) == 0)
  {
    [v226 addObject:@"device cannot accept delegate accounts"];
  }

  v228 = 0x1E822D000uLL;
  if ([v226 count])
  {
    if (![v226 count])
    {
      v444 = [MEMORY[0x1E696AAA8] currentHandler];
      v445 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v444 handleFailureInFunction:v445 file:@"_MPCMediaRemotePublisher.m" lineNumber:1371 description:@"Must provide reason for unsupported command"];
    }

    [v224 setUnsupportedReasons:v226];
    if ([v224 hasTargets])
    {
      [v224 removeTarget:v225 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v224 setUnsupportedReasons:0];
    if (([v224 hasTargets] & 1) == 0)
    {
      [v224 addTarget:v225 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v224 setEnabled:{objc_msgSend(v227, "count") == 0}];
    [v224 setDisabledReasons:v227];
  }

  if (+[MPCPlaybackEngine isSystemPodcasts])
  {
    v229 = [(MPRemoteCommandCenter *)self->_commandCenter enhanceDialogueCommand];
    v230 = v225;
    v231 = [MEMORY[0x1E695DF70] array];
    v232 = [MEMORY[0x1E695DF70] array];
    if ([v211 conformsToProtocol:&unk_1F459C980])
    {
      v233 = v211;
    }

    else
    {
      v233 = 0;
    }

    v234 = v233;
    if (_os_feature_enabled_impl() && v234 || ([v231 addObject:@"enhance dialogue for podcasts"], v234))
    {
      if (([v234 supportsEnhanceDialogue] & 1) == 0)
      {
        [v232 addObject:@"current route does not support enhance dialogue"];
      }

      v235 = [v234 isEnhanceDialogueActive];
    }

    else
    {
      [v232 addObject:@"current route does not support enhance dialogue"];
      v235 = 0;
    }

    v236 = [(MPRemoteCommandCenter *)self->_commandCenter enhanceDialogueCommand];
    [v236 setActive:v235];

    if ([v231 count])
    {
      v228 = 0x1E822D000;
      if (![v231 count])
      {
        v460 = [MEMORY[0x1E696AAA8] currentHandler];
        v461 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
        [v460 handleFailureInFunction:v461 file:@"_MPCMediaRemotePublisher.m" lineNumber:1381 description:@"Must provide reason for unsupported command"];

        v228 = 0x1E822D000;
      }

      [v229 setUnsupportedReasons:v231];
      v211 = v481;
      if ([v229 hasTargets])
      {
        [v229 removeTarget:v230 action:sel__dispatchCommandEvent_completion_];
      }
    }

    else
    {
      [v229 setUnsupportedReasons:0];
      v228 = 0x1E822D000uLL;
      if (([v229 hasTargets] & 1) == 0)
      {
        [v229 addTarget:v230 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
      }

      [v229 setEnabled:{objc_msgSend(v232, "count") == 0}];
      [v229 setDisabledReasons:v232];
      v211 = v481;
    }
  }

  if (v472 == 4)
  {
    v237 = +[MPCPodcastsDefaultsHelper standard];
    v238 = [_MPCPodcastsPlaybackRateHelper alloc];
    v239 = [WeakRetained player];
    [v239 currentRate];
    v241 = v240;
    v242 = [WeakRetained player];
    v243 = [v242 state];
    LODWORD(v244) = v241;
    v245 = [(_MPCPodcastsPlaybackRateHelper *)v238 initWithCurrentRate:v243 playerState:v244];

    v246 = [(MPRemoteCommandCenter *)self->_commandCenter changePlaybackRateCommand];
    v247 = +[_MPCPodcastsPlaybackRateHelper supportedPlaybackRates];
    [v246 setSupportedPlaybackRates:v247];

    v248 = +[_MPCPodcastsPlaybackRateHelper extendedSupportedPlaybackRates];
    v249 = [v248 count];

    if (v249)
    {
      v250 = +[_MPCPodcastsPlaybackRateHelper extendedSupportedPlaybackRates];
      [v246 setExtendedSupportedPlaybackRates:v250];
    }

    if (v481)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (([v481 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
        {
          v462 = [MEMORY[0x1E696AAA8] currentHandler];
          [v462 handleFailureInMethod:v466 object:v225 file:@"_MPCMediaRemotePublisher.m" lineNumber:1405 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
        }

        [v481 preferredPlaybackRate];
        [(_MPCPodcastsPlaybackRateHelper *)v245 currentDisplayRateWithSavedRate:?];
        [v246 setPreferredRate:?];
      }
    }

    v251 = MEMORY[0x1E696AD98];
    [v237 skipForwardInterval];
    v252 = [v251 numberWithDouble:?];
    v498 = v252;
    v253 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v498 count:1];
    v254 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
    [v254 setPreferredIntervals:v253];

    v255 = MEMORY[0x1E696AD98];
    [v237 skipBackwardInterval];
    v256 = [v255 numberWithDouble:?];
    v497 = v256;
    v257 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v497 count:1];
    v258 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
    [v258 setPreferredIntervals:v257];

    v259 = [WeakRetained sleepTimerController];
    [v259 time];
    v261 = v260;
    v262 = [(MPRemoteCommandCenter *)self->_commandCenter setSleepTimerCommand];
    [v262 setTime:v261];

    v263 = [WeakRetained sleepTimerController];
    v264 = [v263 stopMode];
    v265 = [(MPRemoteCommandCenter *)self->_commandCenter setSleepTimerCommand];
    [v265 setStopMode:v264];

    v211 = v481;
    v266 = [WeakRetained sleepTimerController];
    [v266 fireDate];
    v268 = v267;
    v269 = [(MPRemoteCommandCenter *)self->_commandCenter setSleepTimerCommand];
    [v269 setFireDate:v268];

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
    v273 = [(MPRemoteCommandCenter *)self->_commandCenter skipForwardCommand];
    [v273 setPreferredIntervals:v272];

    v274 = MEMORY[0x1E696AD98];
    [v237 skipBackwardInterval];
    v245 = [v274 numberWithDouble:?];
    v495 = v245;
    v246 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v495 count:1];
    v266 = [(MPRemoteCommandCenter *)self->_commandCenter skipBackwardCommand];
    [v266 setPreferredIntervals:v246];
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

    v276 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [v276 setPresentationStyle:v275];

    v277 = [v211 isLikedStateEnabled];
    v278 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [v278 setEnabled:v277];

    v279 = [v211 likedState] == 2;
    v280 = [(MPRemoteCommandCenter *)self->_commandCenter likeCommand];
    [v280 setActive:v279];

    v281 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [v281 setPresentationStyle:v275];

    v282 = [v211 isLikedStateEnabled];
    v283 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [v283 setEnabled:v282];

    v284 = [v211 likedState] == 3;
    v285 = [(MPRemoteCommandCenter *)self->_commandCenter dislikeCommand];
    [v285 setActive:v284];
  }

  v286 = [v211 modelGenericObject];
  v287 = [v286 flattenedGenericObject];
  v288 = [v287 anyObject];

  v289 = [(MPRemoteCommandCenter *)self->_commandCenter addNowPlayingItemToLibraryCommand];
  os_unfair_lock_lock(v225 + 4);
  v290 = *(v225 + 1);
  v483[0] = MEMORY[0x1E69E9820];
  v483[1] = 3221225472;
  v483[2] = __52___MPCMediaRemotePublisher__updateSupportedCommands__block_invoke;
  v483[3] = &unk_1E82368E0;
  v477 = v289;
  v484 = v477;
  [v290 setStatusBlock:v483];
  v480 = v288;
  [*(v225 + 1) configureWithModelObject:v288];
  os_unfair_lock_unlock(v225 + 4);
  v291 = [(MPRemoteCommandCenter *)self->_commandCenter ratingCommand];
  v292 = v225;
  v293 = [MEMORY[0x1E695DF70] array];
  v294 = [MEMORY[0x1E695DF70] array];
  if (([v211 supportsRating] & 1) == 0)
  {
    [v293 addObject:@"item does not support ratings"];
  }

  if ([v293 count])
  {
    if (![v293 count])
    {
      v446 = [MEMORY[0x1E696AAA8] currentHandler];
      v447 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v446 handleFailureInFunction:v447 file:@"_MPCMediaRemotePublisher.m" lineNumber:1465 description:@"Must provide reason for unsupported command"];
    }

    [v291 setUnsupportedReasons:v293];
    if ([v291 hasTargets])
    {
      [v291 removeTarget:v292 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v291 setUnsupportedReasons:0];
    if (([v291 hasTargets] & 1) == 0)
    {
      [v291 addTarget:v292 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v291 setEnabled:{objc_msgSend(v294, "count") == 0}];
    [v291 setDisabledReasons:v294];
  }

  v295 = [(MPRemoteCommandCenter *)self->_commandCenter leaveSharedPlaybackSessionCommand];
  v296 = v292;
  v297 = [MEMORY[0x1E695DF70] array];
  v298 = [MEMORY[0x1E695DF70] array];
  v299 = [v163 musicSharePlay];

  if (!v299)
  {
    [v297 addObject:@"not in shared listening mode"];
  }

  v300 = [(MPRemoteCommandCenter *)self->_commandCenter leaveSharedPlaybackSessionCommand];
  [v300 setSkipSerializedEventDelivery:1];

  if ([v297 count])
  {
    if (![v297 count])
    {
      v448 = [MEMORY[0x1E696AAA8] currentHandler];
      v449 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v448 handleFailureInFunction:v449 file:@"_MPCMediaRemotePublisher.m" lineNumber:1470 description:@"Must provide reason for unsupported command"];
    }

    [v295 setUnsupportedReasons:v297];
    if ([v295 hasTargets])
    {
      [v295 removeTarget:v296 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v295 setUnsupportedReasons:0];
    if (([v295 hasTargets] & 1) == 0)
    {
      [v295 addTarget:v296 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v295 setEnabled:{objc_msgSend(v298, "count") == 0}];
    [v295 setDisabledReasons:v298];
  }

  v301 = [v296 vocalAttenuationUnavailabilityReasons];
  v302 = [(MPRemoteCommandCenter *)self->_commandCenter prepareVocalsControlCommand];
  v303 = v296;
  v304 = [MEMORY[0x1E695DF70] array];
  v305 = [MEMORY[0x1E695DF70] array];
  if (v301)
  {
    [v304 addObject:@"vocal attenuation is not supported on this device"];
  }

  if ((v301 & 2) != 0)
  {
    [v304 addObject:@"Active account cannot play catalog content"];
  }

  if ((v301 & 0x10) != 0)
  {
    v306 = [WeakRetained vocalAttenuationController];
    v307 = v306;
    if (v306)
    {
      v308 = *(v306 + 80);
    }

    else
    {
      v308 = 0;
    }

    v309 = v308;
    v310 = [v309 explanation];
    [v304 addObject:v310];
  }

  v311 = [WeakRetained vocalAttenuationController];
  if (!v311 || (v312 = v311[9], v311, v312 != 2))
  {
    v313 = [WeakRetained vocalAttenuationController];
    if ([(MPCWhiskyController *)v313 isVocalAttenuationAvailable])
    {
      v314 = @"engine is ready for vocal attenuation";
    }

    else
    {
      v314 = @"engine cannot prepare for vocal attenuation";
    }

    [v305 addObject:v314];
  }

  if ([v304 count])
  {
    if (![v304 count])
    {
      v450 = [MEMORY[0x1E696AAA8] currentHandler];
      v451 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v450 handleFailureInFunction:v451 file:@"_MPCMediaRemotePublisher.m" lineNumber:1493 description:@"Must provide reason for unsupported command"];
    }

    [v302 setUnsupportedReasons:v304];
    if ([v302 hasTargets])
    {
      [v302 removeTarget:v303 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v302 setUnsupportedReasons:0];
    if (([v302 hasTargets] & 1) == 0)
    {
      [v302 addTarget:v303 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v302 setEnabled:{objc_msgSend(v305, "count") == 0}];
    [v302 setDisabledReasons:v305];
  }

  v315 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  v316 = v303;
  v317 = [MEMORY[0x1E695DF70] array];
  v318 = [MEMORY[0x1E695DF70] array];
  if (v301)
  {
    [v317 addObject:@"vocal attenuation is not supported on this device"];
    if ((v301 & 2) == 0)
    {
LABEL_471:
      if ((v301 & 8) == 0)
      {
        goto LABEL_473;
      }

      goto LABEL_472;
    }
  }

  else if ((v301 & 2) == 0)
  {
    goto LABEL_471;
  }

  [v317 addObject:@"Active account cannot play catalog content"];
  if ((v301 & 8) != 0)
  {
LABEL_472:
    [v317 addObject:@"vocal attenuation is disabled in shared listening mode"];
  }

LABEL_473:
  v319 = [WeakRetained vocalAttenuationController];
  v320 = v319;
  if (v319)
  {
    v321 = *(v319 + 80);
  }

  else
  {
    v321 = 0;
  }

  v322 = v321;

  if (!v322)
  {
    v323 = [WeakRetained vocalAttenuationController];
    v324 = [(MPCWhiskyController *)v323 isVocalAttenuationAvailable];

    if ((v324 & 1) == 0)
    {
      [v317 addObject:@"engine is not ready for vocal attenuation"];
    }
  }

  if ((v301 & 0x20) != 0)
  {
    [v318 addObject:@"current item does not support vocal attenuation"];
  }

  v325 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  [v325 setDisabledReason:0];

  if ([v481 supportsVocalAttenuation])
  {
    if ((v301 & 0x10) != 0)
    {
      v326 = [WeakRetained vocalAttenuationController];
      v327 = v326;
      if (v326)
      {
        v328 = *(v326 + 80);
      }

      else
      {
        v328 = 0;
      }

      v329 = v328;
      v330 = [v329 explanation];
      [v318 addObject:v330];
    }

    v331 = [WeakRetained vocalAttenuationController];
    v332 = v331;
    if (v331)
    {
      v333 = *(v331 + 80);
    }

    else
    {
      v333 = 0;
    }

    v334 = v333;

    if (v334)
    {
      v335 = [WeakRetained vocalAttenuationController];
      v336 = v335;
      v337 = v335 ? *(v335 + 80) : 0;
      v338 = v337;
      v339 = [v338 reason];

      if (v339 <= 3)
      {
        v340 = *(&unk_1C60454A0 + v339);
        v341 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
        [v341 setDisabledReason:v340];
      }
    }
  }

  [WeakRetained vocalLevel];
  v343 = v342;
  v344 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  LODWORD(v345) = v343;
  [v344 setVocalsLevel:v345];

  v346 = [WeakRetained vocalAttenuationController];
  v347 = v346;
  v348 = 0;
  v349 = 0;
  if (v346)
  {
    v349 = *(v346 + 56);
  }

  v350 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  LODWORD(v351) = v349;
  [v350 setMinVocalsLevel:v351];

  v352 = [WeakRetained vocalAttenuationController];
  v353 = v352;
  if (v352)
  {
    v348 = *(v352 + 60);
  }

  v354 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  LODWORD(v355) = v348;
  [v354 setMaxVocalsLevel:v355];

  v356 = [WeakRetained isVocalAttenuationEnabled];
  v357 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  [v357 setVocalsControlActive:v356];

  v358 = [WeakRetained pickedRoute];
  LODWORD(v357) = [v358 isAirPlayRoute];
  v359 = [(MPRemoteCommandCenter *)self->_commandCenter vocalsControlCommand];
  [v359 setContinuous:v357 ^ 1];

  if ([v317 count])
  {
    if (![v317 count])
    {
      v452 = [MEMORY[0x1E696AAA8] currentHandler];
      v453 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v452 handleFailureInFunction:v453 file:@"_MPCMediaRemotePublisher.m" lineNumber:1541 description:@"Must provide reason for unsupported command"];
    }

    [v315 setUnsupportedReasons:v317];
    if ([v315 hasTargets])
    {
      [v315 removeTarget:v316 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v315 setUnsupportedReasons:0];
    if (([v315 hasTargets] & 1) == 0)
    {
      [v315 addTarget:v316 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v315 setEnabled:{objc_msgSend(v318, "count") == 0}];
    [v315 setDisabledReasons:v318];
  }

  v360 = [v475 upNextBehavior];
  v361 = [v481 contentItemID];
  v362 = [v360 tailInsertionContentItemIDForTargetContentItemID:v361];

  v363 = [(MPRemoteCommandCenter *)self->_commandCenter clearUpNextCommand];
  v364 = v316;
  v365 = [MEMORY[0x1E695DF70] array];
  v366 = [MEMORY[0x1E695DF70] array];
  v367 = [v475 upNextBehavior];

  if (!v367)
  {
    [v365 addObject:@"current behavior is not upNextBehavior"];
  }

  v368 = [v475 upNextBehavior];
  v369 = objc_opt_respondsToSelector();

  if ((v369 & 1) == 0)
  {
    [v365 addObject:@"current behavior does not implement command"];
  }

  if (!v362)
  {
    [v365 addObject:@"no active up next queue"];
  }

  v370 = v481;
  if ([v365 count])
  {
    if (![v365 count])
    {
      v454 = [MEMORY[0x1E696AAA8] currentHandler];
      v455 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v454 handleFailureInFunction:v455 file:@"_MPCMediaRemotePublisher.m" lineNumber:1548 description:@"Must provide reason for unsupported command"];
    }

    [v363 setUnsupportedReasons:v365];
    if ([v363 hasTargets])
    {
      [v363 removeTarget:v364 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v363 setUnsupportedReasons:0];
    if (([v363 hasTargets] & 1) == 0)
    {
      [v363 addTarget:v364 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v363 setEnabled:{objc_msgSend(v366, "count") == 0}];
    [v363 setDisabledReasons:v366];
  }

  v371 = [(MPRemoteCommandCenter *)self->_commandCenter clearUpcomingQueue];
  v372 = v364;
  v373 = [MEMORY[0x1E695DF70] array];
  v374 = [MEMORY[0x1E695DF70] array];
  v375 = [v475 upNextBehavior];

  if (!v375)
  {
    [v373 addObject:@"current behavior is not upNextBehavior"];
  }

  v376 = [v475 upNextBehavior];
  v377 = objc_opt_respondsToSelector();

  if ((v377 & 1) == 0)
  {
    [v373 addObject:@"current behavior does not implement command"];
  }

  if ([v373 count])
  {
    if (![v373 count])
    {
      v456 = [MEMORY[0x1E696AAA8] currentHandler];
      v457 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]"];
      [v456 handleFailureInFunction:v457 file:@"_MPCMediaRemotePublisher.m" lineNumber:1553 description:@"Must provide reason for unsupported command"];
    }

    [v371 setUnsupportedReasons:v373];
    if ([v371 hasTargets])
    {
      [v371 removeTarget:v372 action:sel__dispatchCommandEvent_completion_];
    }
  }

  else
  {
    [v371 setUnsupportedReasons:0];
    if (([v371 hasTargets] & 1) == 0)
    {
      [v371 addTarget:v372 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    [v371 setEnabled:{objc_msgSend(v374, "count") == 0}];
    [v371 setDisabledReasons:v374];
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    v378 = [(MPRemoteCommandCenter *)self->_commandCenter stageConditionCommand];
    [v378 setUnsupportedReasons:0];

    v379 = [(MPRemoteCommandCenter *)self->_commandCenter stageConditionCommand];
    v380 = [v379 hasTargets];

    if ((v380 & 1) == 0)
    {
      v381 = [(MPRemoteCommandCenter *)self->_commandCenter stageConditionCommand];
      [v381 addTarget:v372 action:sel__dispatchCommandEvent_completion_ usingExtendedStatus:1];
    }

    v382 = [(MPRemoteCommandCenter *)self->_commandCenter debugCommand];
    v383 = [v382 hasTargets];

    if ((v383 & 1) == 0)
    {
      v384 = [(MPRemoteCommandCenter *)self->_commandCenter debugCommand];
      [v384 addTarget:v372 action:sel__performDebugEvent_completion_ usingExtendedStatus:1];
    }

    v385 = [(MPRemoteCommandCenter *)self->_commandCenter debugCommand];
    [v385 setSupportedSubsystems:&unk_1F4599910];

    v493[0] = @"com.apple.Music.performance";
    v386 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v372[19]];
    v493[1] = @"com.apple.Music.queue";
    v494[0] = v386;
    v387 = MEMORY[0x1E696AEC0];
    v388 = [v475 revisionString];
    v389 = [v481 contentItemID];
    v390 = [v387 stringWithFormat:@"%@&currentItem=%@", v388, v389];
    v494[1] = v390;
    v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v494 forKeys:v493 count:2];
    v392 = [(MPRemoteCommandCenter *)self->_commandCenter debugCommand];
    [v392 setSubsystemRevisions:v391];

    v370 = v481;
  }

  v393 = [(MPRemoteCommandCenter *)self->_commandCenter _debugCommandDescriptions];
  v394 = [v393 msv_compactMap:&__block_literal_global_426];

  v395 = v372[5];
  v396 = v394;
  v397 = v395;
  if (v396 == v397)
  {
    v399 = v396;
    goto LABEL_543;
  }

  v398 = [v396 isEqual:v397];

  if ((v398 & 1) == 0)
  {
    objc_storeStrong(v372 + 5, v394);
    v399 = [v372 playbackEngine];
    v397 = [v399 eventStream];
    v491 = @"remote-control-commands";
    v492 = v396;
    v400 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v492 forKeys:&v491 count:1];
    [v397 emitEventType:@"remote-control-commands-changed" payload:v400];

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
  v2 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  if ([v2 isVocalAttenuationEnabled])
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
    v5 = [v2 queueController];
    v3 = v5;
    if (v5)
    {
      v6 = [v5 currentItem];
      v7 = v6;
      if (v6)
      {
        v20 = v6;
        v21 = v2;
        v8 = [v6 contentItemID];
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
              v16 = [v3 isExportableSessionType:v15 forContentItemID:v8 reason:&v22];
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
        v2 = v21;
      }

      else
      {
        v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v28 = v3;
          _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[Publisher] _exportableSessionTypes empty [queueController: %p currentItem is nil]", buf, 0xCu);
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
  v4 = [v3 activeAccount];

  v5 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v6 = [v5 queueController];
  v7 = [v6 currentItem];
  v8 = MSVDeviceSupportsVocalAttenuation();
  v9 = [v4 hasCatalogPlaybackCapability];
  v10 = [v6 musicSharePlay];

  v11 = [v5 vocalAttenuationController];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 80);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 ^ 1u;
  if (!v9)
  {
    v14 |= 2uLL;
  }

  if (v10)
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

  if (![v7 supportsVocalAttenuation])
  {
    v17 |= 0x20uLL;
  }

  return v17;
}

- (void)_MRPlaybackSessionMigratePostCallback:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__20001;
  v34 = __Block_byref_object_dispose__20002;
  v35 = 0;
  v9 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v10 = [v9 eventStream];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77___MPCMediaRemotePublisher__MRPlaybackSessionMigratePostCallback_completion___block_invoke;
  v26[3] = &unk_1E8236E60;
  v11 = v6;
  v27 = v11;
  v12 = v7;
  v28 = v12;
  v29 = &v30;
  [v10 performQuery:v26];

  v13 = v31[5];
  if (v13)
  {
    v14 = [v13 objectForKeyedSubscript:@"metrics"];
    v15 = [v14 firstObject];

    if (v15)
    {
      v16 = [v15 objectForKeyedSubscript:@"raw"];
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

    v15 = v24;
  }

  _Block_object_dispose(&v30, 8);
}

- (void)_performSkipChapterCommand:(unsigned int)a3 withCommandID:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v11 = [v10 player];
  [v11 currentTime];
  v13 = v12;

  v14 = [v10 queueController];
  v15 = [v14 currentItem];

  v16 = v15;
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

  v17 = [v16 chapters];
  v18 = [v17 count];

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

  if (a3 == 101)
  {
    v19 = [v16 previousChapterBefore:v13];
LABEL_16:
    v25 = v19;
    if (v19)
    {
      v26 = [v10 player];
      [v25 startTime];
      v28 = v27;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __80___MPCMediaRemotePublisher__performSkipChapterCommand_withCommandID_completion___block_invoke;
      v30[3] = &unk_1E8236E20;
      v31 = v16;
      v32 = v25;
      v33 = v9;
      v22 = v25;
      [v26 jumpToTime:v8 identifier:v30 completion:v28];

      v23 = v31;
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (a3 == 100)
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
  (*(v9 + 2))(v9, v23);
LABEL_11:
}

- (void)performSetQueue:(id)a3 installQueueBeforeLoaded:(BOOL)a4 donatedStartPlayerItem:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = MEMORY[0x1E6970970];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [(_MPCMediaRemotePublisher *)self commandCenter];
  v16 = [v15 setPlaybackQueueCommand];
  v18 = [v14 initWithCommand:v16 playbackQueue:v13];

  if (self)
  {
    swift = self->_swift;
  }

  else
  {
    swift = 0;
  }

  [(_MPCMediaRemotePublisher_Swift *)swift performSetQueueWithEvent:v18 installQueueBeforeLoaded:v7 donatedStartPlayerItem:v12 completion:v11];
}

- (void)performSetQueueWithIntent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___MPCMediaRemotePublisher_performSetQueueWithIntent_completion___block_invoke;
  v10[3] = &unk_1E8236DF8;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  [v9 getRemotePlaybackQueueWithDestination:1 completion:v10];
}

- (void)_dispatchCommandEvent:(id)a3 completion:(id)a4
{
  v120 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v67 = a4;
  v79 = self;
  v71 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v77 = [v71 eventStream];
  v7 = [v6 commandID];
  v8 = [@"CommandBegin:" stringByAppendingString:v7];
  v69 = [v77 eventDeliveryDeferralAssertionOfType:0 forReason:v8];

  v9 = [v6 commandID];
  v10 = [@"CommandEnd:" stringByAppendingString:v9];
  [v6 timeout];
  if (v11 == 0.0)
  {
    v11 = 30.0;
  }

  v66 = [v77 eventDeliveryDeferralAssertionOfType:1 forReason:v10 withTimeout:v11];

  v94 = 0;
  v93 = 0u;
  v92 = 0u;
  MPCPlaybackEngineEventGetMonotonicTime(&v92);
  v12 = [v6 commandID];
  v13 = [@"CommandDispatch:" stringByAppendingString:v12];

  v14 = +[MPCCriticalSectionManager shared];
  v65 = [v14 takeAssertion:v13];

  v76 = v13;
  if (v79)
  {
    v15 = [(_MPCMediaRemotePublisher *)v79 playbackEngine];
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
    v18 = v15;
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
      v22 = [v18 engineID];
      v23 = v96[3];
      *buf = 138544130;
      *&buf[4] = v22;
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
        v25 = [v18 engineID];
        *buf = 138543618;
        *&buf[4] = v25;
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

  v72 = [v6 mediaRemoteCommandType];
  ptr = [v6 commandID];
  v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  spid = os_signpost_id_make_with_pointer(v29, ptr);

  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v31 = v30;
  v32 = spid - 1;
  if (v72)
  {
    if (v72 == 122)
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
      v34 = MPCRemoteCommandDescriptionCopy(v72);
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

  v35 = [v6 mediaRemoteOptions];
  v75 = [v35 mutableCopy];

  [(_MPCMediaRemotePublisher *)v79 stripMediaRemoteOptionsForEVS:v75];
  v36 = [v6 mediaRemoteOptions];
  v74 = [v36 objectForKeyedSubscript:*MEMORY[0x1E69B1268]];

  v37 = [v6 mediaRemoteOptions];
  v38 = [v37 objectForKeyedSubscript:*MEMORY[0x1E69B10D0]];
  v63 = v38 != 0;

  if ([v6 mediaRemoteCommandType] == 122)
  {
    v39 = v6;
    v40 = [v39 playbackQueue];
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v40, "isRequestingImmediatePlayback")}];
LABEL_30:
    v44 = v41;

    goto LABEL_32;
  }

  if ([v6 mediaRemoteCommandType] == 133)
  {
    swift = v79;
    if (v79)
    {
      swift = v79->_swift;
    }

    v43 = MEMORY[0x1E696AD98];
    v39 = swift;
    v40 = v6;
    v41 = [v43 numberWithBool:{objc_msgSend(v39, "getRequestingImmediatePlaybackFromSetPlaybackSessionCommandEvent:", v40)}];
    goto LABEL_30;
  }

  v44 = 0;
LABEL_32:
  v107[0] = @"remote-control-id";
  v68 = [v6 commandID];
  v108[0] = v68;
  v107[1] = @"remote-control-type";
  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "mediaRemoteCommandType")}];
  v108[1] = v45;
  v107[2] = @"remote-control-source";
  v46 = [v6 sourceID];
  v108[2] = v46;
  v107[3] = @"remote-control-associated-participant-id";
  v47 = [v6 associatedParticipantIdentifier];
  v48 = v47;
  if (!v47)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = MEMORY[0x1E695E0F8];
  if (v75)
  {
    v49 = v75;
  }

  v108[3] = v48;
  v108[4] = v49;
  v107[4] = @"remote-control-options";
  v107[5] = @"remote-control-queue-data";
  v50 = v74;
  if (!v74)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v108[5] = v50;
  v107[6] = @"remote-control-queue-start";
  v51 = v44;
  if (!v44)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v108[6] = v51;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:7];
  v114 = v92;
  v115 = v93;
  v116 = v94;
  [v77 emitEventType:@"remote-control-begin" payload:v52 atTime:&v114];

  if (!v44)
  {
  }

  if (!v74)
  {
  }

  if (!v47)
  {
  }

  [v69 invalidate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___MPCMediaRemotePublisher__dispatchCommandEvent_completion___block_invoke;
  aBlock[3] = &unk_1E82369C8;
  aBlock[4] = v79;
  v53 = v6;
  v90 = v72;
  v89 = spid;
  v91 = v63;
  v81 = v53;
  v82 = v44;
  v54 = v71;
  v83 = v54;
  v84 = v64;
  v85 = v77;
  v86 = v66;
  v87 = v65;
  v88 = v67;
  v55 = v65;
  v56 = v66;
  v57 = v77;
  v58 = v67;
  v59 = v64;
  v78 = v44;
  v60 = _Block_copy(aBlock);
  if (-[_MPCMediaRemotePublisher _commandRequiresMediaServices:](v79, "_commandRequiresMediaServices:", [v53 mediaRemoteCommandType]))
  {
    v61 = [v54 player];
    v62 = [v53 commandID];
    [v61 performWhenMediaServicesAreAvailable:v60 identifier:v62];
  }

  else
  {
    v60[2](v60);
  }
}

- (void)_performCommandEvent:(void *)a3 completion:
{
  v584 = *MEMORY[0x1E69E9840];
  v423 = a2;
  v422 = a3;
  if (!a1)
  {
    goto LABEL_38;
  }

  v5 = [v423 mediaRemoteCommandType];
  v6 = [a1 playbackEngine];
  v421 = [v6 queueController];
  v7 = MPCRemoteCommandDescriptionCopy(v5);
  v8 = [v423 commandID];
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v423 interfaceID];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    v581 = v10;
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
  objc_initWeak(&location, a1);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke;
  aBlock[3] = &unk_1E82369F0;
  aBlock[4] = a1;
  v11 = v423;
  v565 = v11;
  v569 = v572;
  v419 = COERCE_DOUBLE(v7);
  v566 = v419;
  v12 = v8;
  v567 = v12;
  v568 = v422;
  v570 = buf;
  v13 = _Block_copy(aBlock);
  v560[0] = MEMORY[0x1E69E9820];
  v560[1] = 3221225472;
  v560[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_467;
  v560[3] = &unk_1E8236A18;
  v14 = v6;
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
  v21 = [v20 contentItemID];
  v22 = v21;
  v414 = v21;
  if (v5 > 25019)
  {
    switch(v5)
    {
      case 0x61BC:
        v34 = [v17 player];
        v35 = [v34 currentItem];
        v36 = v35 == 0;

        if (v36)
        {
          v52 = MEMORY[0x1E69708F8];
          v53 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"Failed to share queue [no current item]"];
          v54 = [v52 statusWithCode:200 error:v53];
          (*(v18 + 2))(v18, v54);
        }

        else
        {
          v37 = [v421 musicSharePlay];
          v38 = v37 == 0;

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

            v59 = [v421 music];
            v60 = [v421 targetContentItemID];
            v436[0] = MEMORY[0x1E69E9820];
            v436[1] = 3221225472;
            v436[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_748;
            v436[3] = &unk_1E8236DA8;
            v439 = v56;
            v438 = v18;
            v437 = v20;
            [v59 getSharedQueueTracklistWithStartingContentItemID:v60 completion:v436];
          }

          else
          {
            v39 = MEMORY[0x1E69708F8];
            v40 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Cannot get a shared queue tracklist [already in a shared queue] queueController=%@", v421}];
            v41 = [v39 statusWithCode:200 error:v40];
            (*(v18 + 2))(v18, v41);
          }
        }

        break;
      case 0x61BD:
        v42 = [v421 upNextBehavior];
        v43 = objc_opt_respondsToSelector();

        if (v43)
        {
          v44 = [v421 upNextBehavior];
          v45 = [v17 queueController];
          v46 = [v45 targetContentItemID];
          [v44 clearAllItemsAfterContentItemID:v46];

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
        v23 = [v20 mediaRemoteOptions];
        v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E69B11A0]];

        v25 = [v20 mediaRemoteOptions];
        v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69B11C0]];

        v27 = *(a1 + 136);
        v435 = 0;
        [v27 sonicStageCondition:v26 forIdentifier:v24 error:&v435];
        v28 = COERCE_DOUBLE(v435);

        if (v28 == 0.0)
        {
          v30 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, v30);
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

          v30 = [MEMORY[0x1E69708F8] statusWithCode:200 error:*&v28];
          (*(v18 + 2))(v18, v30);
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

  switch(v5)
  {
    case 100:
    case 101:
      if ([v421 behaviorType] == 4)
      {
        [a1 _performSkipChapterCommand:v5 withCommandID:v420 completion:v18];
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
      v153 = [v152 stationURL];
      if (v153)
      {
        v154 = [MPCPlaybackIntent radioPlaybackIntentWithStationURL:v153];
        [v154 setPlayActivityFeatureName:@"siri"];
        v155 = [v152 contextID];
        [v154 setSiriReferenceIdentifier:v155];

        v456[0] = MEMORY[0x1E69E9820];
        v456[1] = 3221225472;
        v456[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_681;
        v456[3] = &unk_1E8236B80;
        v156 = v154;
        v457 = v156;
        v458 = v18;
        [a1 performSetQueueWithIntent:v156 completion:v456];

        v157 = v457;
      }

      else
      {
        v306 = [v17 player];
        v156 = [v306 currentItem];

        if (v156)
        {
          v307 = [v156 modelGenericObject];
          v413 = [v307 flattenedGenericObject];

          if ([v413 type] == 1)
          {
            v308 = [v413 song];
            v309 = [MPCPlaybackIntent radioPlaybackIntentFromSong:v308];

            [v309 setPlayActivityFeatureName:@"now_playing"];
            v310 = [v152 contextID];
            [v309 setSiriReferenceIdentifier:v310];

            if (v309)
            {
              v311 = [v421 music];
              v312 = v311 == 0;

              if (v312)
              {
                v447[0] = MEMORY[0x1E69E9820];
                v447[1] = 3221225472;
                v447[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_703;
                v447[3] = &unk_1E8236B80;
                v449 = v18;
                v313 = v309;
                v448 = v313;
                [a1 performSetQueueWithIntent:v313 completion:v447];

                v314 = v449;
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
                v452 = v421;
                v453 = v156;
                v454 = a1;
                [v313 getRemotePlaybackQueueWithDestination:1 completion:v450];

                v314 = v451;
              }
            }

            else
            {
              v398 = MEMORY[0x1E69708F8];
              v399 = MEMORY[0x1E696ABC0];
              v314 = [v413 song];
              v400 = [v399 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 debugDescription:{@"Failed to get radio intent from song: %@", v314}];
              v401 = [v398 statusWithCode:200 error:v400];
              (*(v18 + 2))(v18, v401);

              v313 = 0;
            }
          }

          else
          {
            [v413 type];
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
            v314 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Unsupported model object type %@", v313}];
            v390 = [v389 statusWithCode:200 error:v314];
            (*(v18 + 2))(v18, v390);
          }
        }

        else
        {
          v380 = MEMORY[0x1E69708F8];
          v413 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"Cannot create station with seed item without current item"];
          v313 = [v380 statusWithCode:100 error:v413];
          (*(v18 + 2))(v18, v313);
        }

        v157 = v413;
      }

      goto LABEL_36;
    case 122:
      v128 = v20;
      v129 = *(a1 + 136);
      v459[0] = MEMORY[0x1E69E9820];
      v459[1] = 3221225472;
      v459[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_664;
      v459[3] = &unk_1E8236C80;
      v464 = v18;
      v130 = v128;
      v460 = v130;
      v461 = v17;
      v462 = v420;
      v463 = a1;
      [v129 performSetQueueWithEvent:v130 installQueueBeforeLoaded:1 donatedStartPlayerItem:0 completion:v459];

      goto LABEL_36;
    case 124:
      v124 = v20;
      v125 = [v124 stopMode];
      if (v125 > 1)
      {
        if (v125 == 2)
        {
          v126 = [v17 sleepTimerController];
          [v126 startSleepTimerForChapterEnd];
        }

        else
        {
          if (v125 != 3)
          {
            goto LABEL_263;
          }

          v126 = [v17 sleepTimerController];
          [v126 startSleepTimerForItemEnd];
        }
      }

      else if (v125)
      {
        if (v125 != 1)
        {
          goto LABEL_263;
        }

        v126 = [v17 sleepTimerController];
        v127 = [v124 time];
        [v127 doubleValue];
        [v126 startSleepTimerWithTimeRemaining:?];
      }

      else
      {
        v126 = [v17 sleepTimerController];
        [v126 reset];
      }

LABEL_263:
      [a1 publishIfNeeded];
      v352 = [MEMORY[0x1E69708F8] successStatus];
      (*(v18 + 2))(v18, v352);

      goto LABEL_36;
    case 125:
      v134 = v20;
      v135 = [v421 upNextBehavior];
      v136 = [v135 allowsQueueModifications];

      if ((v136 & 1) == 0)
      {
        v286 = MEMORY[0x1E69708F8];
        v287 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:4 debugDescription:@"Cannot modify queue due to iAP lockout"];
        v288 = [v286 statusWithCode:1002 error:v287];
        (*(v18 + 2))(v18, v288);

        goto LABEL_36;
      }

      if ([v134 insertionPosition] == 3)
      {
        v137 = [v134 insertAfterContentItemID];
        v138 = v137 == 0;

        if (v138)
        {
          v393 = MEMORY[0x1E69708F8];
          v143 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Insert operation indicated specific insertion position type, but no content item ID provided."}];
          v385 = [v393 statusWithCode:1006 error:v143];
          (*(v18 + 2))(v18, v385);
          goto LABEL_308;
        }
      }

      v139 = [v421 upNextBehavior];
      v140 = [v134 insertionPosition];
      v141 = [v421 targetContentItemID];
      v504 = 0;
      v142 = [v139 isSupportedInsertionPosition:v140 fromContentItemID:v141 reason:&v504];
      v143 = v504;

      if (v142)
      {
        goto LABEL_100;
      }

      v348 = [v421 music];
      if (v348 && [v134 insertionPosition] == 2)
      {
        v349 = [v134 mediaRemoteOptions];
        v350 = [v349 objectForKeyedSubscript:@"_MPCOverrideAllowsInsertionPositionLast"];
        v351 = [v350 BOOLValue];

        if (v351)
        {
LABEL_100:
          v144 = [v421 upNextBehavior];
          v145 = v144 == 0;

          if (v145)
          {
            v394 = MEMORY[0x1E69708F8];
            v385 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:@"InsertIntoPlaybackQueue not possible without up next behavior."];
            v395 = [v394 statusWithCode:200 error:v385];
            (*(v18 + 2))(v18, v395);
          }

          else
          {
            v500[0] = MEMORY[0x1E69E9820];
            v500[1] = 3221225472;
            v500[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_602;
            v500[3] = &unk_1E8239198;
            v146 = v421;
            v501 = v146;
            v147 = v134;
            v502 = v147;
            v503 = v18;
            v148 = _Block_copy(v500);
            v149 = [v147 mediaRemoteOptions];
            v150 = [v149 objectForKey:@"MPCRemoteCommandEventOptionShouldPlayInsertedContent"];
            v151 = [v150 BOOLValue];

            if (v151)
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

            v385 = v501;
          }

          goto LABEL_308;
        }
      }

      else
      {
      }

      v382 = MEMORY[0x1E69708F8];
      v383 = MEMORY[0x1E696ABC0];
      v384 = [v134 insertionPosition];
      if (v384 >= 5)
      {
        v385 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", v384];
      }

      else
      {
        v385 = off_1E8236F98[v384];
      }

      v396 = [v383 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Insert operation indicated unsupported insertion position: %@ [%@]", v385, v143}];
      v397 = [v382 statusWithCode:1006 error:v396];
      (*(v18 + 2))(v18, v397);

LABEL_308:
      goto LABEL_36;
    case 127:
    case 128:
      v61 = v20;
      v62 = [v61 mediaRemoteOptions];
      v63 = [v62 objectForKey:*MEMORY[0x1E69B1270]];
      v64 = [v63 longLongValue];

      v65 = [v17 player];
      v411 = [v65 currentItem];

      if (v64 && v64 != [v411 persistentID])
      {
        v267 = objc_alloc(MEMORY[0x1E6970770]);
        v268 = objc_alloc(MEMORY[0x1E6970550]);
        v269 = [MEMORY[0x1E6970770] kindWithVariants:1];
        v446[0] = MEMORY[0x1E69E9820];
        v446[1] = 3221225472;
        v446[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_715;
        v446[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
        v446[4] = v64;
        v270 = [v268 initWithSource:@"MediaRemotePublisher" modelKind:v269 block:v446];
        v68 = [v267 initWithIdentifiers:v270 block:&__block_literal_global_724];

        v69 = 0;
        v70 = 1;
      }

      else
      {
        v66 = [v411 modelGenericObject];
        v67 = [v66 flattenedGenericObject];
        v68 = [v67 anyObject];

        os_unfair_lock_lock((a1 + 16));
        v69 = [*(a1 + 8) currentStatus];
        os_unfair_lock_unlock((a1 + 16));
        v70 = 0;
      }

      if (v68)
      {
        v271 = [MEMORY[0x1E69708F8] successStatus];
        (*(v18 + 2))(v18, v271);

        if ([v61 isNegative])
        {
          if (v69 == 1)
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
            [v273 setModelObject:v68];
            [v273 performWithResponseHandler:&__block_literal_global_728];
LABEL_181:

            goto LABEL_191;
          }

          goto LABEL_191;
        }

        if (v69 == 1)
        {
          v276 = v70;
        }

        else
        {
          v276 = 1;
        }

        if (v276 != 1 || ((v69 & 0xFFFFFFFFFFFFFFFELL) == 2 ? (v277 = 1) : (v277 = v70), v277 != 1))
        {
LABEL_191:

          goto LABEL_36;
        }

        v273 = objc_alloc_init(MEMORY[0x1E6970818]);
        [v273 appendSection:&stru_1F454A698];
        [v273 appendItem:v68];
        v275 = objc_alloc_init(MEMORY[0x1E69706C0]);
        [v275 setShouldLibraryAdd:1];
        [v275 setModelObjects:v273];
        [v275 performWithResponseHandler:&__block_literal_global_733];
      }

      else
      {
        v274 = MEMORY[0x1E69708F8];
        v273 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:{@"Unable to find item to add to library: trackID=%lld currentItem=%@", v64, v411}];
        v275 = [v274 statusWithCode:100 error:v273];
        (*(v18 + 2))(v18, v275);
      }

      goto LABEL_181;
    case 129:
      if (v21)
      {
        v131 = [v421 upNextBehavior];
        v469[0] = MEMORY[0x1E69E9820];
        v469[1] = 3221225472;
        v469[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_13;
        v469[3] = &unk_1E8236B80;
        v471 = v18;
        v470 = v20;
        [v131 removeContentItemID:v22 completion:v469];
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
      v174 = [v172 insertBeforeContextItemID];
      if ([v174 length])
      {
        v175 = [v421 upNextBehavior];
        [v175 moveContentItemID:v414 beforeContentItemID:v174 completion:v173];
      }

      else
      {
        v175 = [v172 insertAfterContextItemID];
        if ([v175 length])
        {
          v323 = [v421 upNextBehavior];
          [v323 moveContentItemID:v414 afterContentItemID:v175 completion:v173];
        }
      }

      goto LABEL_36;
    case 131:
LABEL_16:
      v31 = [v421 behaviorType];
      v406 = v5 & 0xFFFFFFFE;
      if (v31 != 4)
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
        v33 = [v17 queueController];
        [v33 currentItem];
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

        v72 = [v17 player];
        [v72 currentTime];
        v74 = v73;

        v75 = [v408 chapters];
        v404 = [v75 count];

        v76 = [v408 nextChapterAfter:v74];

        v77 = [v408 previousChapterBefore:v74];

        v79 = v5 == 4 && v76 != 0 || v5 == 5 && v77 != 0;
        if (v31 == 4 && v406 == 4)
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
              if (v5 == 4)
              {
                v345 = 100;
              }

              else
              {
                v345 = 101;
              }

              [a1 _performSkipChapterCommand:v345 withCommandID:v420 completion:v18];
              goto LABEL_278;
            }
          }
        }

        v81 = [v20 mediaRemoteOptions];
        v82 = [v81 objectForKeyedSubscript:*MEMORY[0x1E69B1270]];
        v83 = [v82 longLongValue];

        v84 = v5 != 5;
        if (v5 == 5)
        {
          v85 = [*&v410 contentItemID];
          v534 = 0;
          v86 = [v421 canPreviousTrackForContentItemID:v85 reason:&v534];
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
          v91 = [*&v410 contentItemID];
          v533 = 0;
          v92 = [v421 canNextTrackForContentItemID:v91 reason:&v533];
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

        if (v414 || v83)
        {
          v263 = *(a1 + 136);
          v529[0] = MEMORY[0x1E69E9820];
          v529[1] = 3221225472;
          v529[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_530;
          v529[3] = &unk_1E8236B58;
          v530 = v421;
          v531 = v18;
          v532 = v83;
          [v263 findContentItemIDWithIncomingContentItemID:v414 trackID:v83 completion:v529];

          v89 = v530;
        }

        else
        {
          v93 = v20;
          v94 = [v93 isRequestingDefermentToPlaybackQueuePosition];
          if (v5 == 5)
          {
            v95 = -1;
          }

          else
          {
            v95 = 1;
          }

          v405 = v93;
          v96 = [v93 mediaRemoteOptions];
          v97 = [v96 objectForKeyedSubscript:@"MPCRemoteCommandEventOptionSkipImmediatelyKey"];
          v98 = [v97 BOOLValue];

          if ((v94 & 1) != 0 || ![v17 skipWithDirectionShouldJumpToItemStart:v84])
          {
            v523[0] = MEMORY[0x1E69E9820];
            v523[1] = 3221225472;
            v523[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_3_542;
            v523[3] = &unk_1E8236BA8;
            v524 = v421;
            v525 = v17;
            v99 = _Block_copy(v523);
            if (*(a1 + 24))
            {
              v299 = *(a1 + 32) + v95;
              *(a1 + 32) = v299;
              if (v98)
              {
                v300 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🛎  Forced [pending delta %ld]", v299];
                v301 = *(*&buf[8] + 40);
                *(*&buf[8] + 40) = v300;

                v302 = 0;
              }

              else
              {
                v366 = [MEMORY[0x1E696AEC0] stringWithFormat:@"⏲  Deferred [pending delta %ld]", v299];
                v367 = *(*&buf[8] + 40);
                *(*&buf[8] + 40) = v366;

                v302 = dispatch_time(0, 350000000);
              }

              dispatch_source_set_timer(*(a1 + 24), v302, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
            }

            else
            {
              v358 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
              v359 = *(a1 + 24);
              *(a1 + 24) = v358;

              v360 = *(a1 + 24);
              v361 = dispatch_time(0, 350000000);
              dispatch_source_set_timer(v360, v361, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
              v362 = *(a1 + 24);
              handler[0] = MEMORY[0x1E69E9820];
              handler[1] = 3221225472;
              handler[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_5_558;
              handler[3] = &unk_1E8239170;
              handler[4] = a1;
              v363 = v99;
              v522 = v363;
              dispatch_source_set_event_handler(v362, handler);
              dispatch_resume(*(a1 + 24));
              v364 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🛎  Immediate"];
              v365 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = v364;

              (*(v363 + 2))(v363, v95);
            }

            v100 = [MEMORY[0x1E69708F8] successStatus];
            (*(v18 + 2))(v18, v100);
            v105 = &v524;
            v106 = &v525;
          }

          else
          {
            v99 = [v17 player];
            v100 = [v17 player];
            v101 = [v100 currentItem];
            v102 = [v101 playbackInfoStartTime];
            [v102 doubleValue];
            v104 = v103;
            v526[0] = MEMORY[0x1E69E9820];
            v526[1] = 3221225472;
            v526[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_538;
            v526[3] = &unk_1E8236B80;
            v528 = v18;
            v527 = v17;
            [v99 jumpToTime:v420 identifier:v526 completion:v104];

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
      if (v5 == 4)
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
      v176 = [v17 queueController];
      v177 = [v176 behaviorType] == 4;

      if (v177)
      {
        v178 = [MEMORY[0x1E69708F8] successStatus];
        (*(v18 + 2))(v18, v178);
      }

      else
      {
        v178 = v20;
        [v178 userIdentity];
        v289 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v290 = +[MPCPlaybackAccountManager sharedManager];
        v291 = [v290 accountForUserIdentity:*&v289];

        if (v291)
        {
          v292 = [v17 leaseManager];
          v465[0] = MEMORY[0x1E69E9820];
          v465[1] = 3221225472;
          v465[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_650;
          v465[3] = &unk_1E8236E20;
          v468 = v18;
          v466 = v291;
          v467 = *&v289;
          [v292 prepareForPlaybackWithAccount:v466 completion:v465];

          v293 = v468;
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

          v293 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, v293);
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
      v133 = *(a1 + 136);
      [v133 performSetSessionWithEvent:v132 completion:v18];

      goto LABEL_36;
    case 134:
      v476[0] = MEMORY[0x1E69E9820];
      v476[1] = 3221225472;
      v476[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_9_625;
      v476[3] = &unk_1E8239170;
      v477 = v421;
      v478 = v18;
      [v477 performAllowingEditsToChangeCurrentItem:v476];

      goto LABEL_36;
    case 135:
      v159 = v20;
      v160 = [v159 queueEndAction];
      v161 = [v17 disableAutoPlay];
      if (v160 == 3)
      {
        v162 = v161;
      }

      else
      {
        v162 = 0;
      }

      if (v162 == 1)
      {
        v163 = MEMORY[0x1E69708F8];
        v164 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:@"playback engine autoplay disabled"];
        v165 = [v163 statusWithCode:200 error:v164];
        (*(v18 + 2))(v18, v165);
      }

      else
      {
        v278 = [v421 music];
        v279 = v278 == 0;

        if (v279)
        {
          v353 = MEMORY[0x1E69708F8];
          v354 = MEMORY[0x1E696ABC0];
          v355 = [v421 behaviorType];
          if (v355 >= 6)
          {
            v164 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown/%lld", v355];
          }

          else
          {
            v164 = off_1E8236FC0[v355];
          }

          v391 = [v354 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"unsupported command [%@ behavior]", v164}];
          v392 = [v353 statusWithCode:200 error:v391];
          (*(v18 + 2))(v18, v392);
        }

        else
        {
          v280 = [v421 music];
          v281 = [v421 targetContentItemID];
          v282 = v160 == 3;
          v472[0] = MEMORY[0x1E69E9820];
          v472[1] = 3221225472;
          v472[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_11_636;
          v472[3] = &unk_1E8236C48;
          v474 = v18;
          v475 = v160 == 3;
          v283 = v159;
          v473 = v283;
          [v280 setAutoPlayEnabled:v282 targetContentItemID:v281 completion:v472];

          v284 = [v421 music];
          LOBYTE(v282) = objc_opt_respondsToSelector();

          if (v282)
          {
            v285 = [v421 music];
            [v285 setQueueEndAction:objc_msgSend(v283 completion:{"queueEndAction"), &__block_literal_global_643}];
          }

          v164 = v474;
        }
      }

      goto LABEL_36;
    case 139:
      v440[0] = MEMORY[0x1E69E9820];
      v440[1] = 3221225472;
      v440[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_741;
      v440[3] = &unk_1E8236D58;
      v441 = v18;
      [a1 _leaveSharedSessionWithCommandID:v420 completion:v440];

      goto LABEL_36;
    case 140:
      v118 = [MEMORY[0x1E69708F8] successStatus];
      (*(v18 + 2))(v18, v118);

      goto LABEL_36;
    case 142:
      v166 = [v421 musicSharePlay];
      v167 = v166 == 0;

      if (v167)
      {
        v315 = v20;
        v316 = [v17 isVocalAttenuationEnabled];
        v317 = [v315 active];
        v318 = v317 == 0;

        if (!v318)
        {
          v319 = [v315 active];
          [v17 setVocalAttenuationEnabled:{objc_msgSend(v319, "BOOLValue")}];
        }

        v320 = [v17 isVocalAttenuationEnabled];
        v321 = [v315 level];
        if (v321)
        {
          v322 = [v315 level];
          [v322 floatValue];
        }

        else
        {
          v322 = [MEMORY[0x1E69708A8] standardUserDefaults];
          [v322 defaultVocalLevel];
        }

        [v17 setVocalLevel:?];

        if (v316 == v320)
        {
          v381 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, v381);
        }

        else
        {
          [a1 publishIfNeeded];
          v430[0] = MEMORY[0x1E69E9820];
          v430[1] = 3221225472;
          v430[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_772;
          v430[3] = &unk_1E8236DD0;
          v434 = v316;
          v431 = v17;
          v432 = a1;
          v433 = v18;
          [v431 reloadQueueForReason:1 completion:v430];

          v381 = v431;
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
      v179 = [v17 vocalAttenuationController];
      if (v179 && (v180 = v179[9] == 2, v179, v180))
      {
        v181 = [v17 vocalAttenuationController];
        [(MPCWhiskyController *)v181 prepareForProcessing];

        v182 = [MEMORY[0x1E69708F8] successStatus];
        (*(v18 + 2))(v18, v182);
      }

      else
      {
        v403 = [MEMORY[0x1E69708F8] statusWithCode:0];
        (*(v18 + 2))(v18, v403);
      }

      goto LABEL_36;
    case 144:
      v119 = [v421 upNextBehavior];
      v120 = objc_opt_respondsToSelector();

      if ((v120 & 1) == 0)
      {
        goto LABEL_32;
      }

      v121 = [v421 upNextBehavior];
      v122 = [v17 queueController];
      v123 = [v122 targetContentItemID];
      [v121 clearUpNextAfterContentItemID:v123];

      [MEMORY[0x1E69708F8] successStatus];
      goto LABEL_28;
    case 145:
      v183 = *(a1 + 136);
      v426[0] = MEMORY[0x1E69E9820];
      v426[1] = 3221225472;
      v426[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_785;
      v426[3] = &unk_1E8236B80;
      v428 = v18;
      v427 = v20;
      [v183 performDialogActionForCommandEvent:v427 completion:v426];

      goto LABEL_36;
    case 146:
      v158 = *(a1 + 136);
      [v158 delegateAccountEvent:v20 completion:v18];

      goto LABEL_36;
    case 147:
      v112 = v20;
      v113 = [v421 currentItem];
      if (![v113 conformsToProtocol:&unk_1F459C980])
      {

        goto LABEL_196;
      }

      v114 = [v421 currentItem];

      if (!v114)
      {
LABEL_196:
        v115 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:@"Current item is not enhancable"];
        v114 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v115];
        (*(v18 + 2))(v18, v114);
        goto LABEL_197;
      }

      v429 = 0;
      [v114 setEnhanceDialogueActive:objc_msgSend(v112 error:{"isActive"), &v429}];
      v115 = v429;
      [a1 publishIfNeeded];
      if (v115)
      {
        v116 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3400 underlyingError:v115 debugDescription:@"Error activating enhance dialogue"];
        v117 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v116];
        (*(v18 + 2))(v18, v117);

LABEL_197:
        goto LABEL_36;
      }

      v386 = [MEMORY[0x1E69708F8] successStatus];
      (*(v18 + 2))(v18, v386);

LABEL_36:
      v22 = v414;
LABEL_37:

      objc_destroyWeak(&location);
      _Block_object_dispose(v572, 8);

      _Block_object_dispose(buf, 8);
LABEL_38:

      return;
    case 149:
      v107 = [v421 transitionTogglable];
      if (v107 && +[MPCPlaybackEngine deviceSupportsTransitions])
      {
        v108 = [v20 mediaRemoteOptions];
        v109 = [v108 objectForKeyedSubscript:*MEMORY[0x1E69B1158]];
        v110 = [v109 BOOLValue];

        v424[0] = MEMORY[0x1E69E9820];
        v424[1] = 3221225472;
        v424[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_789;
        v424[3] = &unk_1E8238D28;
        v425 = v18;
        [v107 toggleTransitionsEnabledFromRemoteCommand:v110 completion:v424];
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
      switch(v5)
      {
        case 0:
          v544[0] = MEMORY[0x1E69E9820];
          v544[1] = 3221225472;
          v544[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_3;
          v544[3] = &unk_1E8236AE0;
          v550 = v18;
          v545 = v17;
          v551[1] = sel__performCommandEvent_completion_;
          v546 = v421;
          v547 = a1;
          v548 = v420;
          objc_copyWeak(v551, &location);
          v549 = v20;
          [a1 becomeActiveIfNeededWithCommandID:v548 completion:v544];

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
          v538 = a1;
          v539 = v20;
          [a1 becomeActiveIfNeededWithCommandID:v537 completion:v535];

          goto LABEL_36;
        case 3:
          if ([v17 usesStopState])
          {
            *(a1 + 73) = 1;
            [a1 engine:v17 didChangeToState:3];
          }

LABEL_143:
          v218 = [v17 player];
          v219 = [v218 currentItem];
          v220 = v219 == 0;

          if (v220)
          {
            v258 = MEMORY[0x1E69708F8];
            v259 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"Cannot pause because there is no current item."];
            v260 = [v258 statusWithCode:100 error:v259];
            (*(v18 + 2))(v18, v260);
          }

          else
          {
            v221 = [v20 mediaRemoteOptions];
            v222 = [v221 objectForKeyedSubscript:@"MPCRemoteCommandEventOptionPauseFadeoutDurationKey"];
            [v222 doubleValue];
            v224 = v223;

            v225 = [v17 player];
            v541[0] = MEMORY[0x1E69E9820];
            v541[1] = 3221225472;
            v541[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7;
            v541[3] = &unk_1E8237458;
            v542 = v18;
            v543 = v224;
            [v225 pauseWithFadeout:v420 identifier:v541 completion:v224];
          }

          goto LABEL_36;
        case 4:
        case 5:
          goto LABEL_16;
        case 6:
          v226 = [v421 music];
          v227 = [v226 shuffleType];

          v228 = v227 == 0;
          v229 = v20;
          v230 = [v421 music];
          v231 = [v421 targetContentItemID];
          v479[0] = MEMORY[0x1E69E9820];
          v479[1] = 3221225472;
          v479[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_8_624;
          v479[3] = &unk_1E8236C20;
          v481 = v18;
          v482 = v228;
          v232 = v229;
          v480 = v232;
          [v230 setShuffleType:v228 targetContentItemID:v231 completion:v479];

          goto LABEL_36;
        case 7:
          v212 = [v421 music];
          v213 = [v212 repeatType];

          v214 = v20;
          v215 = [v421 music];
          if (v213)
          {
            v216 = v213 == 2;
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
          [v215 setRepeatType:v216 completion:v487];

          goto LABEL_36;
        case 8:
          *(a1 + 20) = 1;
          v235 = [v421 currentItem];
          v236 = [v235 supportsFastForward];

          v517[0] = MEMORY[0x1E69E9820];
          v517[1] = 3221225472;
          v517[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7_566;
          v517[3] = &unk_1E8236B80;
          v517[4] = a1;
          v518 = v18;
          [v17 beginScanningWithDirection:1 supportsRateChange:v236 identifier:v420 completion:v517];

          goto LABEL_36;
        case 9:
        case 11:
          if (*(a1 + 21) & 1) != 0 || (*(a1 + 20))
          {
            *(a1 + 20) = 0;
            v71 = [v17 player];
            v515[0] = MEMORY[0x1E69E9820];
            v515[1] = 3221225472;
            v515[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_8_573;
            v515[3] = &unk_1E8238D28;
            v516 = v18;
            [v71 endScanningWithIdentifier:v420 completion:v515];
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
          *(a1 + 21) = 1;
          v203 = [v421 currentItem];
          v204 = [v203 supportsRewind];

          v519[0] = MEMORY[0x1E69E9820];
          v519[1] = 3221225472;
          v519[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_6_562;
          v519[3] = &unk_1E8236B80;
          v519[4] = a1;
          v520 = v18;
          [v17 beginScanningWithDirection:0 supportsRateChange:v204 identifier:v420 completion:v519];

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
          v185 = [v421 behaviorType];
          [v184 playbackRate];
          v187 = v186;
          if (v185 != 4)
          {
            goto LABEL_132;
          }

          v188 = [_MPCPodcastsPlaybackRateHelper alloc];
          v189 = [v17 player];
          [v189 currentRate];
          v191 = v190;
          v192 = [v17 player];
          v193 = [v192 state];
          LODWORD(v194) = v191;
          v195 = [(_MPCPodcastsPlaybackRateHelper *)v188 initWithCurrentRate:v193 playerState:v194];

          if ([(_MPCPodcastsPlaybackRateHelper *)v195 canHandlePlaybackRateChangeForCommandEvent:v184])
          {
            v196 = [v421 currentItem];
            if (([v196 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
            {
              v402 = [MEMORY[0x1E696AAA8] currentHandler];
              [v402 handleFailureInMethod:sel__performCommandEvent_completion_ object:a1 file:@"_MPCMediaRemotePublisher.m" lineNumber:2960 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
            }

            v197 = [v196 podcastUUID];
            if (v418[2]())
            {
              [(_MPCPodcastsPlaybackRateHelper *)v195 computedRateForChangePlaybackRateCommandEvent:v184];
              v187 = *&v198;
            }

            *&v198 = v187;
            [v196 setPreferredPlaybackRate:v198];
            [(_MPCPodcastsPlaybackRateHelper *)v195 updatedPlaybackRateForChangePlaybackRateCommandEvent:v184 podcastUUID:v197];
            v187 = v199;

LABEL_132:
            v200 = [v17 player];
            v442[0] = MEMORY[0x1E69E9820];
            v442[1] = 3221225472;
            v442[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_737;
            v442[3] = &unk_1E8236D30;
            v444 = v18;
            v201 = v184;
            v443 = v201;
            objc_copyWeak(&v445, &location);
            *&v202 = v187;
            [v200 setRate:v420 identifier:v442 completion:v202];

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
            v234 = v22;
          }

          else
          {
            v332 = [v17 player];
            v333 = [v332 currentItem];
            v234 = [v333 contentItemID];
          }

          v334 = [v17 queueController];
          v335 = [v334 itemForContentItemID:v234];

          [v233 rating];
          [v335 setRating:?];
          v336 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, v336);

          goto LABEL_36;
        case 21:
          v205 = v20;
          if (v22)
          {
            v206 = v22;
          }

          else
          {
            v326 = [v17 player];
            v327 = [v326 currentItem];
            v206 = [v327 contentItemID];
          }

          v328 = [v17 queueController];
          v329 = [v328 itemForContentItemID:v206];

          if ([v205 isNegative])
          {
            if ([v329 likedState] != 2)
            {
              goto LABEL_236;
            }

            v330 = [v205 userIdentity];
            [v329 setLikedState:1 forUserIdentity:v330];
          }

          else
          {
            if ([v329 likedState] == 2)
            {
              goto LABEL_236;
            }

            v330 = [v205 userIdentity];
            [v329 setLikedState:2 forUserIdentity:v330];
          }

          [a1 publishIfNeeded];
          goto LABEL_236;
        case 22:
          v205 = v20;
          if (v22)
          {
            v206 = v22;
          }

          else
          {
            v337 = [v17 player];
            v338 = [v337 currentItem];
            v206 = [v338 contentItemID];
          }

          v339 = [v17 queueController];
          v329 = [v339 itemForContentItemID:v206];

          if ([v205 isNegative])
          {
            if ([v329 likedState] != 3)
            {
              goto LABEL_236;
            }

            v340 = [v205 userIdentity];
            [v329 setLikedState:1 forUserIdentity:v340];
          }

          else
          {
            if ([v329 likedState] == 3)
            {
              goto LABEL_236;
            }

            v340 = [v205 userIdentity];
            [v329 setLikedState:3 forUserIdentity:v340];
          }

          [a1 publishIfNeeded];
LABEL_236:
          v331 = [MEMORY[0x1E69708F8] successStatus];
          (*(v18 + 2))(v18, v331);

          goto LABEL_36;
        case 24:
          v241 = [v17 player];
          v412 = [v241 currentItem];

          if (v412)
          {
            v409 = v20;
            v242 = [v409 nowPlayingContentItemID];
            v243 = v242 == 0;

            if (!v243)
            {
              v244 = [v409 nowPlayingContentItemID];
              v245 = [v412 contentItemID];
              v246 = v244;
              v247 = v245;
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
                    v252 = [v412 contentItemID];
                    *v574 = 138543618;
                    v575 = v251;
                    v576 = 2114;
                    v577 = v252;
                    _os_log_impl(&dword_1C5C61000, v250, OS_LOG_TYPE_ERROR, "❗️SeekToPlaybackPosition failed. Could not seek for non-current item id: %{public}@ [currentItem is %{public}@]", v574, 0x16u);
                  }

                  v253 = MEMORY[0x1E696ABC0];
                  v254 = [v409 nowPlayingContentItemID];
                  v255 = [v412 contentItemID];
                  v256 = [v253 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:{@"Cannot seek item (%@) with different current item (%@)", v254, v255}];
                  v257 = [v256 mpc_remoteCommandStatus];
                  (*(v18 + 2))(v18, v257);

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
            v371 = [v342 referenceTime];
            if (v371)
            {
              v372 = [v342 referenceTime];
              [v372 doubleValue];

              v373 = [v368 transcriptAlignmentController];
              [v342 positionTime];
              v375 = v374;
              v376 = [v342 referenceTime];
              [v376 doubleValue];
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
              [v373 resolveWith:v505 referenceTime:v375 completionHandler:v378];

              v254 = v511;
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
          v238 = [v237 repeatType];
          if (v238 >= 3)
          {
            v297 = MEMORY[0x1E69708F8];
            v240 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Unsupported repeatType %ld", v238}];
            v298 = [v297 statusWithCode:200 error:v240];
            (*(v18 + 2))(v18, v298);
          }

          else
          {
            v239 = [v421 music];
            v491[0] = MEMORY[0x1E69E9820];
            v491[1] = 3221225472;
            v491[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_5_612;
            v491[3] = &unk_1E8236C20;
            v493 = v18;
            v494 = v238;
            v492 = v237;
            [v239 setRepeatType:v238 completion:v491];

            v240 = v493;
          }

          goto LABEL_36;
        case 26:
          v207 = v20;
          v208 = [v207 shuffleType];
          v209 = [v421 music];
          v210 = [v421 targetContentItemID];
          v483[0] = MEMORY[0x1E69E9820];
          v483[1] = 3221225472;
          v483[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7_620;
          v483[3] = &unk_1E8236C20;
          v485 = v18;
          v486 = v208;
          v211 = v207;
          v484 = v211;
          [v209 setShuffleType:v208 targetContentItemID:v210 completion:v483];

          goto LABEL_36;
        default:
          goto LABEL_29;
      }
  }
}

- (id)stripCommandStatusForEVS:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 dialog];

  if (v4)
  {
    v5 = MEMORY[0x1E69708E8];
    v6 = [v3 dialog];
    v7 = [v6 localizedTitle];
    v8 = [v3 dialog];
    v9 = [v8 localizedMessage];
    v10 = [v5 dialogWithTitle:v7 message:v9];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v3;
    v11 = [v3 dialog];
    v12 = [v11 actions];

    obj = v12;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          v18 = [v17 event];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 mediaRemoteOptions];
            v21 = [v20 mutableCopy];

            [(_MPCMediaRemotePublisher *)self stripMediaRemoteOptionsForEVS:v21];
            v22 = objc_alloc(MEMORY[0x1E69708E0]);
            v23 = [v19 command];
            v24 = [v22 initWithCommand:v23 mediaRemoteType:objc_msgSend(v19 options:{"mediaRemoteCommandType"), v21}];
          }

          else
          {
            v24 = 0;
          }

          v25 = MEMORY[0x1E69708F0];
          v26 = [v17 title];
          v27 = [v25 actionWithTitle:v26 type:objc_msgSend(v17 commandEvent:{"type"), v24}];

          [v10 addAction:v27];
        }

        v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v14);
    }

    v28 = MEMORY[0x1E69708F8];
    v3 = v33;
    v29 = [v33 statusCode];
    v30 = [v33 error];
    v31 = [v28 statusWithCode:v29 dialog:v10 error:v30];
  }

  else
  {
    v31 = v3;
  }

  return v31;
}

- (void)stripMediaRemoteOptionsForEVS:(id)a3
{
  v3 = *MEMORY[0x1E69B1200];
  v4 = a3;
  [v4 setObject:0 forKeyedSubscript:v3];
  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E69B10B0]];
  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E69B1218]];
  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E69B1268]];
  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E69B1278]];
  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E69B10F0]];
  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E69B1098]];
  [v4 setObject:0 forKeyedSubscript:@"playbackContext"];
  [v4 setObject:0 forKeyedSubscript:@"sharedListeningIntentToken"];
  [v4 setObject:0 forKeyedSubscript:@"kMRMediaRemoteOptionSenderID"];
}

- (void)_performDebugEvent:(id)a3 completion:(id)a4
{
  v28 = a4;
  v6 = a3;
  v7 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v8 = [v6 mediaRemoteOptions];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11C0]];

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
        v18 = [v7 queueController];
        v14 = v18;
        if (v18)
        {
          v19 = [v18 debugDescription];
          v20 = MEMORY[0x1E69708F8];
          v21 = [v19 dataUsingEncoding:4];
          v22 = [v20 statusWithCode:0 customData:v21 type:@"com.public.text"];
          v28[2](v28, v22);
        }

        else
        {
          v27 = MEMORY[0x1E69708F8];
          v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2 debugDescription:@"No queueController"];
          v21 = [v27 statusWithCode:100 error:v19];
          v28[2](v28, v21);
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
      v28[2](v28, v14);
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
  v28[2](v28, v19);
LABEL_19:

LABEL_20:
}

- (void)_enqueueFallbackIntentIfNeededForCommandEvent:(id)a3 play:(BOOL)a4 completion:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v10 = [v9 engineID];
  v11 = [v7 contextID];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v13 = [v7 contextID];
  v14 = [v9 queueController];
  v15 = [v14 sessionID];
  v16 = v15;
  if (v13 == v15)
  {

    goto LABEL_8;
  }

  v17 = [v13 isEqual:v15];

  if (v17)
  {
LABEL_8:
    v23 = 1;
    goto LABEL_9;
  }

  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [v7 commandID];
    v20 = [v7 contextID];
    v21 = [v9 queueController];
    v22 = [v21 sessionID];
    *buf = 138544130;
    v44 = v10;
    v45 = 2114;
    v46 = v19;
    v47 = 2114;
    v48 = v20;
    v49 = 2114;
    v50 = v22;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] _enqueueFallbackIntentIfNeeded | not using fallback intent [contextID does not match queueController.sessionID] commandID=%{public}@ contextID=%{public}@ sessionID=%{public}@", buf, 0x2Au);
  }

  v23 = 0;
LABEL_9:
  v24 = [v7 mediaRemoteOptions];
  v25 = [v24 objectForKeyedSubscript:*MEMORY[0x1E69B1108]];
  v26 = [v25 BOOLValue];

  if (v26)
  {
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [v7 commandID];
      *buf = 138543618;
      v44 = v10;
      v45 = 2114;
      v46 = v28;
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
    v8[2](v8, v35);

    goto LABEL_22;
  }

  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v7 commandID];
    *buf = 138543618;
    v44 = v10;
    v45 = 2114;
    v46 = v31;
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
  v38 = v10;
  v39 = v7;
  v42 = a4;
  v40 = self;
  v41 = v8;
  [(_MPCMediaRemotePublisher_Swift *)swift _getFallbackIntentForEvent:v39 withCompletion:v37];

  v33 = v38;
LABEL_22:
}

- (void)deactivateAudioSessionIfIdle:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v5 = [v4 engineID];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] deactivateAudioSessionIfIdle | deactivating player [] token=%lld", &v8, 0x16u);
  }

  v7 = [v4 player];
  [v7 deactivateAudioSessionIfIdle:a3];
}

- (void)becomeActiveIfNeededWithCommandID:(id)a3 completion:(id)a4
{
  v79[2] = *MEMORY[0x1E69E9840];
  v38 = a3;
  v37 = a4;
  v7 = [(_MPCMediaRemotePublisher *)self playbackEngine];
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
  v13 = [v7 eventStream];
  v78[0] = @"session-activation-id";
  v78[1] = @"session-activation-command-id";
  v79[0] = v12;
  v14 = v38;
  if (!v38)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v79[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
  [v13 emitEventType:@"session-activation-begin" payload:v15];

  if (!v38)
  {
  }

  v16 = [v7 engineID];
  v17 = [v7 delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke;
  aBlock[3] = &unk_1E8236680;
  v18 = v16;
  v70 = v18;
  v19 = v17;
  v71 = v19;
  v73 = v76;
  v20 = v7;
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
  v60 = self;
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
  v50 = self;
  v56 = v9;
  v28 = v12;
  v51 = v28;
  v53 = v75;
  v54 = v77;
  v55 = v76;
  v29 = v37;
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

- (void)_podcastsSkipIntervalDidChange:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v5 = [v4 engineID];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _podcastsSkipIntervalDidChange | publishing [notification]", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)_activeSharedSessionDidChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v6 = [v5 engineID];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B08D8]];

  if ([v8 isHosted] && (objc_msgSend(v8, "isPlaceholder") & 1) == 0)
  {
    v9 = [v8 identifier];
  }

  else
  {
    v9 = 0;
  }

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _activeSharedSessionDidChange | received [] newSessionID=%{public}@", buf, 0x16u);
  }

  v13 = v6;
  v11 = v6;
  v12 = v9;
  msv_dispatch_on_main_queue();
}

- (void)_likedStateChangedNotification:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v5 = [v4 engineID];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _likedStateChanged | publishing [notification]", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)_durationAvailableNotification:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v8 = [(_MPCMediaRemotePublisher *)self playbackEngine];
    v9 = [v8 engineID];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _durationAvailable | received [] notificationItem=%{public}@", buf, 0x16u);
    }

    v14 = v8;
    v15 = v7;
    v11 = v9;
    v12 = v7;
    v13 = v8;
    msv_dispatch_on_main_queue();
  }
}

- (void)commandCenter:(id)a3 didTimeoutCommandEvent:(id)a4 statusHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v10 = [v9 eventStream];
  v11 = [v7 commandID];
  v12 = [@"CommandTimeout:" stringByAppendingString:v11];
  v13 = [v10 eventDeliveryDeferralAssertionOfType:0 forReason:v12];

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
  v19 = v10;
  v20 = v7;
  v23 = v26;
  v24 = v27;
  v25 = v28;
  v21 = v13;
  v22 = v8;
  v14 = v13;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  [(_MPCMediaRemotePublisher *)self investigateTimeoutForEvent:v15 completion:v18];
}

- (void)commandCenter:(id)a3 didDeliverCommandEvent:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 engineID];
    v9 = [v5 commandID];
    v10 = MPCRemoteCommandDescriptionCopy([v5 mediaRemoteCommandType]);
    *buf = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] commandCenter:didDeliverCommandEvent: [%{public}@] command=%{public}@", buf, 0x20u);
  }

  v11 = [v6 eventStream];
  v12 = [v5 commandID];
  v17[0] = v12;
  v16[1] = @"remote-control-type";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "mediaRemoteCommandType")}];
  v17[1] = v13;
  v16[2] = @"remote-control-source";
  v14 = [v5 sourceID];
  v17[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v11 emitEventType:@"remote-control-delivered" payload:v15];
}

- (void)invalidateSessionTypesWithReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v6 = [v5 engineID];

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] invalidateSessionTypes | publishing [%{public}@}]", &v8, 0x16u);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engine:(id)a3 didChangeQueueController:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a3 engineID];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engine:didChangeQueueController: | invalidating playback queue [queue changed]", &v8, 0xCu);
  }

  [(MPNowPlayingInfoCenter *)self->_infoCenter invalidatePlaybackQueue];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engine:didChangeQueueController: | publishing [queue changed]", &v8, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engine:(id)a3 didReceivePickedRouteChange:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a3 engineID];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engine:didReceivePickedRouteChange: | publishing [route changed]", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidEndSleepTimer:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a3 engineID];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidEndSleepTimer | publishing [sleep timer ended]", &v6, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidUnblockVocalAttenuation:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a3 engineID];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidUnblockVocalAttenuation | publishing [attenuation unblocked]", &v6, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidBlockVocalAttenuation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 engineID];
  if ([v4 isVocalAttenuationEnabled])
  {
    [v4 setVocalAttenuationEnabled:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59___MPCMediaRemotePublisher_engineDidBlockVocalAttenuation___block_invoke;
    v7[3] = &unk_1E8236588;
    v8 = v5;
    v9 = v4;
    v10 = self;
    [v9 reloadQueueForReason:1 completion:v7];
  }

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidBlockVocalAttenuation | publishing [attenuation blocked]", buf, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidChangeVocalAttenuationLevel:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 engineID];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidChangeVocalAttenuationLevel | publishing []", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidChangeVocalAttenuationState:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 engineID];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidChangeVocalAttenuationState | publishing []", &v7, 0xCu);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engineDidChangeTransitionSettings:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 queueController];
  v6 = [v5 transitionTogglable];
  if (v6)
  {
    v7 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    v8 = [v7 isActive];

    v9 = [v6 transitionsEnabled];
    if (v8 != v9)
    {
      v10 = v9;
      v11 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
      [v11 setActive:v10];

      v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 engineID];
        v21 = 138543874;
        v22 = v13;
        v23 = 1024;
        v24 = v8;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidChangeTransitionSettings | publishing [changed enabled] previous=%{BOOL}u new=%{BOOL}u", &v21, 0x18u);
      }

      [(_MPCMediaRemotePublisher *)self publishIfNeeded];
    }

    v14 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
    v15 = [v14 transitionStyle];

    v16 = [v6 transitionStyle];
    if (v15 != v16)
    {
      v17 = v16;
      v18 = [(MPRemoteCommandCenter *)self->_commandCenter toggleTransitionsCommand];
      [v18 setTransitionStyle:v17];

      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v4 engineID];
        v21 = 138543874;
        v22 = v20;
        v23 = 1024;
        v24 = v15;
        v25 = 1024;
        v26 = v17;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidChangeTransitionSettings | publishing [changed style] previous=%d new=%d", &v21, 0x18u);
      }

      [(_MPCMediaRemotePublisher *)self publishIfNeeded];
    }
  }
}

- (void)engine:(id)a3 didChangeActionAtQueueEnd:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
  v8 = [v7 currentQueueEndAction];

  if (v8 != a4)
  {
    v9 = [(MPRemoteCommandCenter *)self->_commandCenter changeQueueEndActionCommand];
    [v9 setCurrentQueueEndAction:a4];

    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 engineID];
      v12 = MPNSStringFromQueueEndAction();
      v13 = MPNSStringFromQueueEndAction();
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] didChangeActionAtQueueEnd | publishing [changed] previous=%{public}@ new=%{public}@", &v14, 0x20u);
    }

    [(_MPCMediaRemotePublisher *)self publishIfNeeded];
  }
}

- (void)engine:(id)a3 didChangeShuffleType:(int64_t)a4
{
  v5 = [(MPRemoteCommandCenter *)self->_commandCenter changeShuffleModeCommand];
  [v5 setCurrentShuffleType:a4];
}

- (void)engine:(id)a3 didChangeRepeatType:(int64_t)a4
{
  v5 = [(MPRemoteCommandCenter *)self->_commandCenter changeRepeatModeCommand];
  [v5 setCurrentRepeatType:a4];
}

- (void)engine:(id)a3 didChangeQueueWithReason:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 engineID];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] didChangeQueue | invalidating playback queue [%{public}@]", &v12, 0x16u);
  }

  [(MPNowPlayingInfoCenter *)self->_infoCenter invalidatePlaybackQueue];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 engineID];
    v12 = 138543618;
    v13 = v11;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] didChangeQueue | publishing [%{public}@]", &v12, 0x16u);
  }

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)engine:(id)a3 didChangeToState:(unint64_t)a4
{
  if ([a3 usesStopState] && a4 != 3)
  {
    if (a4 == 2 && self->_overrideStopState)
    {
      a4 = 3;
    }

    else
    {
      self->_overrideStopState = 0;
    }
  }

  infoCenter = self->_infoCenter;

  [(MPNowPlayingInfoCenter *)infoCenter setPlaybackState:a4];
}

- (void)engine:(id)a3 didChangeToItem:(id)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [v5 usesStopState];

  if (v6 && self->_overrideStopState)
  {
    self->_overrideStopState = 0;
    [(MPNowPlayingInfoCenter *)self->_infoCenter setPlaybackState:2];
  }

  [(MPNowPlayingInfoCenter *)self->_infoCenter invalidatePlaybackQueue];

  [(_MPCMediaRemotePublisher *)self publishIfNeeded];
}

- (void)updatePlaybackMetrics:(id)a3
{
  v17 = a3;
  v5 = [v17 objectForKeyedSubscript:@"metrics"];
  v6 = [v5 firstObject];

  os_unfair_lock_lock(&self->_lock);
  if (self->_mrMigratePostCallbackCompletion && v6 && ([(MSVBlockGuard *)self->_mrMigratePostCallbackGuard disarm]& 1) != 0)
  {
    v7 = _Block_copy(self->_mrMigratePostCallbackCompletion);
    mrMigratePostCallbackCompletion = self->_mrMigratePostCallbackCompletion;
    self->_mrMigratePostCallbackCompletion = 0;

    mrMigratePostCallbackGuard = self->_mrMigratePostCallbackGuard;
    self->_mrMigratePostCallbackGuard = 0;

    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      v10 = [v6 objectForKeyedSubscript:@"raw"];
      v7[2](v7, v10, 0);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    v11 = [v6 objectForKeyedSubscript:@"segments"];
    [v11 msv_reduceIntoDouble:&__block_literal_global_81 by:0.0];
    v13 = v12;
    WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
    v15 = [WeakRetained queueController];
    v16 = [v15 currentItem];

    [v16 setLastPlayPerformanceTime:v13];
    objc_storeStrong(&self->_lastPerformanceMetrics, a3);
  }
}

- (void)_leaveSharedSessionWithCommandID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v7 = [v6 queueController];
  v8 = [v7 musicSharePlay];

  if (v8)
  {
    v9 = [v7 musicSharePlay];
    [v9 endSynchronizedPlayback];

    v10 = [v6 sessionManager];
    v11 = [v10 stateRestorationSessionIdentifier];

    if ([v11 length])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72___MPCMediaRemotePublisher__leaveSharedSessionWithCommandID_completion___block_invoke;
      v18[3] = &unk_1E8236B80;
      v18[4] = self;
      v19 = v5;
      [v6 loadSessionWithIdentifier:v11 completion:v18];
      v12 = v19;
    }

    else
    {
      v15 = objc_opt_new();
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72___MPCMediaRemotePublisher__leaveSharedSessionWithCommandID_completion___block_invoke_3;
      v16[3] = &unk_1E8238D28;
      v17 = v5;
      [(_MPCMediaRemotePublisher *)self performSetQueue:v15 completion:v16];

      v12 = v17;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69708F8];
    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:5 debugDescription:{@"Cannot leave shared session [not in shared session] queueController=%@", v7}];
    v14 = [v13 statusWithCode:200 error:v11];
    (*(v5 + 2))(v5, v14);
  }
}

- (void)leaveSharedSessionWithCommandID:(id)a3 remoteControlInterface:(id)a4 completion:(id)a5
{
  v24[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v9 length])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_MPCMediaRemotePublisher.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"commandID.length > 0"}];
  }

  if (![v10 length])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_MPCMediaRemotePublisher.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"remoteControlInterface.length > 0"}];
  }

  v12 = [(MPRemoteCommandCenter *)self->_commandCenter leaveSharedPlaybackSessionCommand];
  v13 = objc_alloc(MEMORY[0x1E69708E0]);
  v14 = [v12 mediaRemoteCommandType];
  v15 = *MEMORY[0x1E69B1200];
  v23[0] = *MEMORY[0x1E69B10B0];
  v23[1] = v15;
  v24[0] = v9;
  v24[1] = v10;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v17 = [v13 initWithCommand:v12 mediaRemoteType:v14 options:v16];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94___MPCMediaRemotePublisher_leaveSharedSessionWithCommandID_remoteControlInterface_completion___block_invoke;
  v21[3] = &unk_1E8238C08;
  v22 = v11;
  v18 = v11;
  [v12 invokeCommandWithEvent:v17 completion:v21];
}

- (id)getQOSDialogForError:(id)a3 withItem:(id)a4
{
  if (self)
  {
    self = self->_swift;
  }

  return [(_MPCMediaRemotePublisher *)self getSwiftQOSDialogForError:a3 withItem:a4];
}

- (void)getShouldRestoreStateWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
  if ([v5 shouldSkipNextStateRestoration])
  {
    [v5 clearShouldSkipNextStateRestoration];
LABEL_4:
    v4[2](v4, 0);
    goto LABEL_8;
  }

  if ([v5 disableStateRestoration])
  {
    goto LABEL_4;
  }

  v6 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v7 = [v6 engineID];

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] getShouldRestoreState | begin []", buf, 0xCu);
  }

  v9 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___MPCMediaRemotePublisher_getShouldRestoreStateWithCompletion___block_invoke;
  v11[3] = &unk_1E8236540;
  v12 = v7;
  v13 = v4;
  v10 = v7;
  [v9 getPendingCommandTypesWithCompletion:v11];

LABEL_8:
}

- (void)reportUserBackgroundedApplication
{
  v3 = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
  v5 = [v3 newCommandEvent];

  v4 = [(MPRemoteCommandCenter *)self->_commandCenter pauseCommand];
  [v4 invokeCommandWithEvent:v5 completion:&__block_literal_global_20707];
}

- (void)dealloc
{
  v3 = [(MPNowPlayingInfoCenter *)self->_infoCenter playerPath];
  MRMediaRemotePlaybackSessionSetMigrateFinalizeCallback();

  v4 = [(MPNowPlayingInfoCenter *)self->_infoCenter playerPath];
  MRMediaRemotePlaybackSessionSetMigratePostCallback();

  [MPCQueueController unregisterPublisher:self];
  v5 = +[MPCPlaybackAccountManager sharedManager];
  [v5 unregisterObserver:self];

  v6.receiver = self;
  v6.super_class = _MPCMediaRemotePublisher;
  [(_MPCMediaRemotePublisher *)&v6 dealloc];
}

- (_MPCMediaRemotePublisher)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v8->_playbackEngine, v4);
    [v4 addEngineObserver:v8];
    v9 = +[MPCPlaybackAccountManager sharedManager];
    [v9 registerObserver:v8];

    v10 = [v4 initializationParameters];
    v11 = [v10 remoteCommandCenter];
    commandCenter = v8->_commandCenter;
    v8->_commandCenter = v11;

    [(MPRemoteCommandCenter *)v8->_commandCenter setWantsSerializedEventDelivery:1];
    [(MPRemoteCommandCenter *)v8->_commandCenter setDelegate:v8];
    v13 = [v4 initializationParameters];
    v14 = [v13 nowPlayingInfoCenter];
    infoCenter = v8->_infoCenter;
    v8->_infoCenter = v14;

    [(MPNowPlayingInfoCenter *)v8->_infoCenter setPlaybackQueueDataSource:v8];
    [(MPNowPlayingInfoCenter *)v8->_infoCenter setPlaybackEngine:v4];
    v16 = [[_MPCMediaRemotePublisher_Swift alloc] initWithPublisher:v8];
    swift = v8->_swift;
    v8->_swift = v16;

    v18 = [[_MPCMediaRemoteDetective alloc] initWithPublisher:v8];
    detective = v8->_detective;
    v8->_detective = v18;

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    if (+[MPCPlaybackEngine isSystemMusic])
    {
      [v20 addObserver:v8 selector:sel__activeSharedSessionDidChange_ name:*MEMORY[0x1E69B08D0] object:0];
      v21 = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
      v22 = [v21 groupSessionInfo];
      v23 = [v22 identifier];
      hostingSharedSessionID = v8->_hostingSharedSessionID;
      v8->_hostingSharedSessionID = v23;

      [v20 addObserver:v8 selector:sel__likedStateChangedNotification_ name:*MEMORY[0x1E696F7C8] object:0];
    }

    [v20 addObserver:v8 selector:sel__durationAvailableNotification_ name:*MEMORY[0x1E696F7B8] object:0];
    if (+[MPCPlaybackEngine isSystemPodcasts])
    {
      v25 = +[MPCPodcastsDefaultsHelper standard];
      v26 = [MEMORY[0x1E696AD80] podcastsSkipForwardIntervalDefaultDidChange];
      [v20 addObserver:v8 selector:sel__podcastsSkipIntervalDidChange_ name:v26 object:v25];

      v27 = [MEMORY[0x1E696AD80] podcastsSkipBackwardIntervalDefaultDidChange];
      [v20 addObserver:v8 selector:sel__podcastsSkipIntervalDidChange_ name:v27 object:v25];
    }

    v28 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v29 = [v28 artworkCacheLimit];
    [MEMORY[0x1E69704A0] setCacheLimit:v29 forCacheIdentifier:@"images" cacheReference:v8];
    v30 = [v28 exportableArtworkCacheLimit];
    [MEMORY[0x1E69704A0] setCacheLimit:v30 forCacheIdentifier:@"exportables" cacheReference:v8];
    v31 = [(MPNowPlayingInfoCenter *)v8->_infoCenter playerPath];
    v35 = v8;
    MRMediaRemotePlaybackSessionSetMigrateFinalizeCallback();

    v32 = [(MPNowPlayingInfoCenter *)v8->_infoCenter playerPath];
    v34 = v35;
    MRMediaRemotePlaybackSessionSetMigratePostCallback();

    [MPCQueueController registerPublisher:v34];
  }

  return v6;
}

- (void)nowPlayingInfoCenter:(id)a3 didEndMigrationWithIdentifier:(id)a4 error:(id)a5
{
  if (self)
  {
    self = self->_swift;
  }

  [(_MPCMediaRemotePublisher *)self didEndMigration:a4 setPlaybackSessionCommandStatus:0 error:a5 completion:&__block_literal_global_973];
}

- (void)nowPlayingInfoCenter:(id)a3 willBeginSessionMigrationWithIdentifier:(id)a4
{
  if (self)
  {
    self = self->_swift;
  }

  [(_MPCMediaRemotePublisher *)self willBeginSessionMigrationWithIdentifier:a4];
}

- (void)nowPlayingInfoCenter:(id)a3 getTransportablePlaybackSessionRepresentationForRequest:(id)a4 completion:(id)a5
{
  if (self)
  {
    self = self->_swift;
  }

  [(_MPCMediaRemotePublisher *)self getTransportablePlaybackSessionRepresentationForRequest:a4 completion:a5];
}

- (id)nowPlayingInfoCenter:(id)a3 childContentItemIDAtIndex:(int64_t)a4 ofItem:(id)a5
{
  v7 = [a5 identifier];
  v8 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v9 = [v8 queueController];

  v10 = [v9 itemForContentItemID:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = [v11 chapters];
    v13 = [v12 count];

    if (v13 <= a4)
    {
      v16 = 0;
    }

    else
    {
      v14 = [v11 chapters];
      v15 = [v14 objectAtIndex:a4];

      v16 = [v15 identifier];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)nowPlayingInfoCenter:(id)a3 lyricsForContentItem:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v12 = [v9 identifier];
  v13 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v14 = [v13 queueController];
  v15 = [v14 itemForContentItemID:v12];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 nowPlayingInfoCenter:v8 lyricsForContentItem:v9 completion:v10];
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  return v11;
}

- (id)nowPlayingInfoCenter:(id)a3 artworkCatalogForContentItem:(id)a4
{
  v5 = [a4 identifier];
  v6 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v7 = [v6 queueController];
  v8 = [v7 itemForContentItemID:v5];
  v9 = [v6 player];
  v10 = [v9 currentItem];

  v11 = 0.0;
  if (v8 == v10)
  {
    v12 = [v6 player];
    [v12 currentTime];
    v11 = v13;
  }

  v14 = [v8 artworkCatalogForPlaybackTime:v11];

  return v14;
}

- (id)nowPlayingInfoCenter:(id)a3 transcriptAlignmentsForContentItem:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E696AE38];
  v9 = a4;
  v10 = [v8 progressWithTotalUnitCount:1];
  v11 = [v9 identifier];

  v12 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v13 = [v12 queueController];
  v14 = [v13 currentItem];
  v15 = [v14 contentItemID];
  if ([v15 isEqualToString:v11])
  {
    v16 = [v12 transcriptAlignmentController];

    if (v16)
    {
      v17 = [v12 transcriptAlignmentController];
      [v17 startProcessing];

      v18 = [v12 transcriptAlignmentController];
      v19 = [v18 transcriptAlignments];
      v7[2](v7, v19, 0);

      [v10 setCompletedUnitCount:1];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:@"Content item not found"];
  (v7)[2](v7, 0, v20);

LABEL_6:

  return v10;
}

- (id)nowPlayingInfoCenter:(id)a3 infoForContentItem:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x1E696AE38];
  v8 = a5;
  v9 = a4;
  v10 = [v7 progressWithTotalUnitCount:1];
  v11 = [v9 identifier];

  v12 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v13 = [v12 queueController];
  v14 = [v13 itemForContentItemID:v11];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 itemDescription];
    v8[2](v8, v16, 0);

    [v10 setCompletedUnitCount:1];
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:@"Content item not found"];
    (v8)[2](v8, 0, v17);
  }

  return v10;
}

- (id)nowPlayingInfoCenter:(id)a3 remoteArtworkForContentItem:(id)a4 format:(id)a5 size:(CGSize)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (*MEMORY[0x1E6970298] == v13 || [v13 isEqual:?])
  {
    v15 = [(_MPCMediaRemotePublisher *)self nowPlayingInfoCenter:v11 artworkCatalogForContentItem:v12];
    [v15 setCacheIdentifier:@"exportables" forCacheReference:self];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __115___MPCMediaRemotePublisher_PlaybackQueue__nowPlayingInfoCenter_remoteArtworkForContentItem_format_size_completion___block_invoke;
    v18[3] = &unk_1E8236F78;
    v19 = v14;
    [v15 requestExportableArtworkPropertiesWithCompletion:v18];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:29 debugDescription:{@"request for unknown remote artwork format: %@", v13}];
    (*(v14 + 2))(v14, 0, v16);
  }

  return 0;
}

- (id)nowPlayingInfoCenter:(id)a3 artworkForContentItem:(id)a4 size:(CGSize)a5 completion:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a6;
  v12 = MEMORY[0x1E696AE38];
  v13 = a4;
  v14 = a3;
  v15 = [v12 progressWithTotalUnitCount:1];
  v16 = [(_MPCMediaRemotePublisher *)self nowPlayingInfoCenter:v14 artworkCatalogForContentItem:v13];

  if (v16)
  {
    [v16 setCacheIdentifier:@"images" forCacheReference:self];
    [v16 setFittingSize:{width, height}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102___MPCMediaRemotePublisher_PlaybackQueue__nowPlayingInfoCenter_artworkForContentItem_size_completion___block_invoke;
    v19[3] = &unk_1E8236F50;
    v21 = v11;
    v20 = v15;
    [v16 requestImageWithCompletion:v19];
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    (*(v11 + 2))(v11, 0, Error);
  }

  return v15;
}

- (id)nowPlayingInfoCenter:(id)a3 contentItemForID:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v7 = [v6 queueTranslator];
  v8 = [v7 cachedQueueItemForContentItemID:v5];

  if (v8)
  {
    v9 = [v8 contentItem];
  }

  else
  {
    v10 = [v6 queueController];
    v11 = [v10 itemForContentItemID:v5];
    v12 = [v11 contentItem];
    v13 = [v10 currentItem];
    if (!v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v11;
        v24 = v10;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v22 = v13;
        obj = [v13 chapters];
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
              v19 = [v18 identifier];
              v20 = [v19 isEqualToString:v5];

              if (v20)
              {
                v9 = v18;

                v11 = v23;
                v10 = v24;
                v13 = v22;
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
        v10 = v24;
        v13 = v22;
      }
    }

    v9 = v12;
LABEL_15:
  }

  return v9;
}

- (id)nowPlayingInfoCenter:(id)a3 contentItemIDsFromOffset:(int64_t)a4 toOffset:(int64_t)a5 nowPlayingIndex:(int64_t *)a6
{
  v9 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v10 = [v9 queueController];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 contentItemIDsFromOffset:a4 toOffset:a5 mode:1 nowPlayingIndex:a6];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)nowPlayingInfoCenter:(id)a3 contentItemIDForOffset:(int64_t)a4
{
  v5 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v6 = [v5 queueController];
  v7 = [v6 contentItemIDWithCurrentItemOffset:a4 mode:1 didReachEnd:0];

  return v7;
}

- (id)playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v4 = [v3 queueController];
  v5 = [v4 music];

  if (v5)
  {
    v6 = [v4 currentItem];
    v7 = [v3 eventStream];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __102___MPCMediaRemotePublisher_PlaybackQueue__playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter___block_invoke;
    v16 = &unk_1E8236F28;
    v17 = v6;
    v8 = v6;
    v9 = [v7 performQueryReturningBOOL:&v13];
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

- (id)playbackQueuePropertiesForNowPlayingInfoCenter:(id)a3
{
  v3 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v4 = [v3 queueController];
  v5 = [v4 upNextBehavior];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [v4 currentItem];
    v8 = [v7 contentItemID];
    v9 = [v5 tailInsertionContentItemIDForTargetContentItemID:v8];
    [v6 setObject:v9 forKeyedSubscript:@"tailInsertionContentItemID"];

    v10 = [v5 displayItemCount];
    if (v10)
    {
      v11 = v10;
      v12 = [v4 currentItem];
      v13 = [v12 isRadioItem];

      if ((v13 & 1) == 0)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        [v6 setObject:v14 forKeyedSubscript:@"totalItemCount"];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)playbackQueueIdentifierForNowPlayingInfoCenter:(id)a3
{
  v3 = [(_MPCMediaRemotePublisher *)self playbackEngine];
  v4 = [v3 queueController];
  v5 = [v4 sessionID];

  return v5;
}

@end