@interface MRDNowPlayingPlayerClient
- (BOOL)_onQueue_isPlaying;
- (BOOL)canBeNowPlayingPlayer;
- (BOOL)hasNowPlayingData;
- (BOOL)isPictureInPictureEnabled;
- (BOOL)isPlaying;
- (MRContentItem)nowPlayingContentItem;
- (MRDNowPlayingPlayerClient)initWithPlayerPath:(id)a3;
- (MRDNowPlayingPlayerClientDelegate)delegate;
- (MRNowPlayingState)nowPlayingState;
- (MRPlaybackQueue)playbackQueue;
- (MRPlayer)player;
- (MRPlayerPath)playerPath;
- (NSArray)participants;
- (NSArray)snapshots;
- (NSArray)supportedRemoteControlCommands;
- (NSData)supportedRemoteControlCommandsData;
- (NSDate)canBeNowPlayingPlayerTimestamp;
- (NSDate)playbackStateTimestamp;
- (NSMapTable)handoffSessions;
- (NSString)description;
- (double)timeSincePlaying;
- (id)_onQueue_lastPlayingDate;
- (id)_onQueue_playbackState;
- (id)activeContent;
- (id)handleHandoffEvent:(id)a3;
- (id)playbackQueueForRequest:(id)a3 cachingPolicy:(unsigned int)a4 playerPath:(id)a5 partiallyCachedItems:(id *)a6;
- (id)snapshotForPlaybackState:(unsigned int)a3;
- (id)snapshotsForIsPlaying:(BOOL)a3;
- (unint64_t)playbackQueueCapabilities;
- (unsigned)inferredPlaybackState;
- (unsigned)playbackState;
- (void)_handleNowPlayingAppDidChange:(id)a3;
- (void)_onQueue_playbackQueueCapabilitiesDidChange:(unint64_t)a3;
- (void)_onQueue_playbackQueueContentItemsArtworkDidChange:(id)a3;
- (void)_onQueue_playbackQueueContentItemsDidChange:(id)a3;
- (void)_onQueue_playbackStateDidChanged:(id)a3;
- (void)_onQueue_popState;
- (void)_onQueue_pushState;
- (void)_onQueue_supportedCommandsDidChange:(id)a3;
- (void)_onQueue_updatePlaybackQueue:(id)a3 fromRequest:(id)a4;
- (void)dataSource:(id)a3 didUpdateParticipants:(id)a4;
- (void)notifyArtworkChangedForContentItems:(id)a3;
- (void)registerHandoffSession:(id)a3;
- (void)setCanBeNowPlayingPlayerTimestamp:(id)a3;
- (void)setPlaybackQueue:(id)a3;
- (void)setPlayerPath:(id)a3;
- (void)setSupportedRemoteControlCommands:(id)a3;
- (void)setSupportedRemoteControlCommandsData:(id)a3;
- (void)updateClient:(id)a3;
- (void)updateLastPlayingDate:(id)a3;
- (void)updatePlaybackQueue:(id)a3 fromRequest:(id)a4;
- (void)updatePlaybackState:(unsigned int)a3 date:(id)a4;
- (void)updatePlayer:(id)a3;
@end

@implementation MRDNowPlayingPlayerClient

- (id)_onQueue_playbackState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = self->_playerPlaybackState;
  if (![(MRDNowPlayingPlayerClientPlaybackState *)v3 playbackState])
  {
    v4 = self->_inferredPlayerPlaybackState;

    v3 = v4;
  }

  if (![(MRDNowPlayingPlayerClientPlaybackState *)v3 playbackState])
  {
    v5 = +[NSDate date];
    v6 = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
    v7 = [v6 contentItemWithOffset:0];

    v8 = [v7 metadata];
    v9 = [v8 hasPlaybackRate];

    if (v9)
    {
      MRContentItemGetPlaybackRate();
      if (fabsf(v10) > 0.00000011921)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [v7 metadata];
    v13 = [v12 hasElapsedTimeTimestamp];

    if (v13)
    {
      v14 = [NSDate alloc];
      v15 = [v7 metadata];
      [v15 elapsedTimeTimestamp];
      v16 = [v14 initWithTimeIntervalSinceReferenceDate:?];

      v5 = v16;
    }

    v17 = [[MRDNowPlayingPlayerClientPlaybackState alloc] initWithPlaybackState:v11 date:v5];

    v3 = v17;
  }

  return v3;
}

- (unsigned)playbackState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003500C;
  v10 = sub_1000359BC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = [v7[5] playbackState];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRPlayerPath)playerPath
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003500C;
  v9 = sub_1000359BC;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (BOOL)_onQueue_isPlaying
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MRDNowPlayingPlayerClient *)self _onQueue_playbackState];
  [v3 playbackState];
  IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing();

  return IsAdvancing;
}

- (BOOL)hasNowPlayingData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (BOOL)canBeNowPlayingPlayer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)_onQueue_pushState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  [(MRDNowPlayingPlayerClient *)self setPushStateIsPlaying:[(MRDNowPlayingPlayerClient *)self _onQueue_isPlaying]];
  v3 = [(MRDNowPlayingPlayerClient *)self _onQueue_playbackState];
  [(MRDNowPlayingPlayerClient *)self setPushStatePlaybackState:v3];

  v4 = [(MRPlayerPath *)self->_playerPath player];
  v5 = [v4 copy];
  [(MRDNowPlayingPlayerClient *)self setPushStatePlayer:v5];

  [(MRDNowPlayingPlayerClient *)self setPushStateHasNowPlayingData:[(MRDNowPlayingPlayerClient *)self hasNowPlayingData]];
  [(MRDNowPlayingPlayerClient *)self setPushStatePictureInPictureEnabled:[(MRDNowPlayingPlayerClient *)self isPictureInPictureEnabled]];
  [(MRDNowPlayingPlayerClient *)self setPushStateCanBeNowPlayingPlayer:[(MRDNowPlayingPlayerClient *)self canBeNowPlayingPlayer]];
  v8 = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
  v6 = [v8 contentItemWithOffset:0];
  v7 = [v6 metadata];
  [v7 playbackRate];
  [(MRDNowPlayingPlayerClient *)self setPushStatePlaybackRate:?];
}

- (BOOL)isPictureInPictureEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)_onQueue_popState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MRDNowPlayingPlayerClient *)self hasNowPlayingData];
  if (v3 != [(MRDNowPlayingPlayerClient *)self pushStateHasNowPlayingData])
  {
    if (v3)
    {
      if (self->_hasNowPlayingDataTransaction)
      {
        goto LABEL_11;
      }

      v4 = _MRLogForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        playerPath = self->_playerPath;
        *buf = 138543362;
        *v69 = playerPath;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] Taking hasNowPlayingData transaction for %{public}@", buf, 0xCu);
      }

      v6 = [(MRPlayerPath *)self->_playerPath description];
      v7 = [NSString stringWithFormat:@"com.apple.mediaremoted.MRDNowPlayingPlayerClient/%@", v6];

      v8 = [[MROSTransaction alloc] initWithName:v7];
      hasNowPlayingDataTransaction = self->_hasNowPlayingDataTransaction;
      self->_hasNowPlayingDataTransaction = v8;

      v10 = self->_hasNowPlayingDataTransaction;
      MRRegisterTransaction();
    }

    else
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_playerPath;
        *buf = 138543362;
        *v69 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] Removing hasNowPlayingData transaction for %{public}@", buf, 0xCu);
      }

      v7 = self->_hasNowPlayingDataTransaction;
      self->_hasNowPlayingDataTransaction = 0;
    }
  }

LABEL_11:
  v13 = [(MRDNowPlayingPlayerClient *)self isPictureInPictureEnabled];
  if (v13 != [(MRDNowPlayingPlayerClient *)self pushStatePictureInPictureEnabled])
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"false";
      v16 = self->_playerPath;
      if (v13)
      {
        v15 = @"true";
      }

      *buf = 138543618;
      *v69 = v15;
      *&v69[8] = 2114;
      *v70 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] isPictureInPictureEnabled changed to %{public}@ for %{public}@", buf, 0x16u);
    }

    [(MRDNowPlayingPlayerClient *)self _onQueue_pictureInPictureEnabledDidChanged:v13];
  }

  v17 = [(MRDNowPlayingPlayerClient *)self _onQueue_isPlaying];
  v18 = v17 ^ [(MRDNowPlayingPlayerClient *)self pushStateIsPlaying];
  v19 = [(MRDNowPlayingPlayerClient *)self _onQueue_playbackState];
  v20 = [(MRDNowPlayingPlayerClient *)self pushStatePlaybackState];
  v21 = [v20 playbackState];
  v22 = [v19 playbackState];

  if (v21 != v22)
  {
    v23 = [(MRDNowPlayingPlayerClient *)self pushStatePlaybackState];
    [v23 playbackState];
    v24 = MRMediaRemoteCopyPlaybackStateDescription();

    [v19 playbackState];
    v25 = MRMediaRemoteCopyPlaybackStateDescription();
    v26 = _MRLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_playerPath;
      *buf = 138543874;
      *v69 = v24;
      *&v69[8] = 2114;
      *v70 = v25;
      *&v70[8] = 2114;
      v71 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] PlaybackState changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    [(MRDNowPlayingPlayerClient *)self _onQueue_playbackStateDidChanged:v19];
  }

  if (v18)
  {
    v28 = _MRLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"false";
      v30 = self->_playerPath;
      if (v17)
      {
        v29 = @"true";
      }

      *buf = 138543618;
      *v69 = v29;
      *&v69[8] = 2114;
      *v70 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] isPlaying changed to %{public}@ for %{public}@", buf, 0x16u);
    }

    [(MRDNowPlayingPlayerClient *)self _onQueue_isPlayingDidChange:v17];
  }

  v31 = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
  v32 = [v31 contentItemWithOffset:0];
  v33 = [v32 metadata];
  [v33 playbackRate];
  v35 = v34;

  [(MRDNowPlayingPlayerClient *)self pushStatePlaybackRate];
  if (vabds_f32(v35, v36) > 0.00000011921)
  {
    v37 = _MRLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = self->_playerPath;
      *buf = 134218242;
      *v69 = v35;
      *&v69[8] = 2114;
      *v70 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] playbackRate changed to %lf for %{public}@", buf, 0x16u);
    }
  }

  v39 = [(MRDNowPlayingPlayerClient *)self canBeNowPlayingPlayer];
  if (v39 != [(MRDNowPlayingPlayerClient *)self pushStateCanBeNowPlayingPlayer])
  {
    v40 = _MRLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = @"false";
      v42 = self->_playerPath;
      if (v39)
      {
        v41 = @"true";
      }

      *buf = 138543618;
      *v69 = v41;
      *&v69[8] = 2114;
      *v70 = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] CanBeNowPlayingPlayer changed to %{public}@ for %{public}@", buf, 0x16u);
    }

    [(MRDNowPlayingPlayerClient *)self _onQueue_canBeNowPlayingDidChange:v39];
  }

  v43 = [(MRPlayerPath *)self->_playerPath player];
  v44 = [v43 displayName];
  v45 = [(MRPlayer *)self->_pushStatePlayer displayName];
  v67 = v19;
  if (v44 && ([v44 isEqualToString:v45] & 1) == 0)
  {
    v47 = _MRLogForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = self->_playerPath;
      *buf = 138412802;
      *v69 = v45;
      *&v69[8] = 2112;
      *v70 = v44;
      *&v70[8] = 2114;
      v71 = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] DisplayName changed from %@ to %@ for %{public}@", buf, 0x20u);
    }

    v46 = 1;
  }

  else
  {
    v46 = 0;
  }

  v49 = [v43 audioSessionType];
  if (v49 != [(MRPlayer *)self->_pushStatePlayer audioSessionType])
  {
    v50 = NSStringFromMRPlayerAudioSessionType();
    v51 = NSStringFromMRPlayerAudioSessionType();
    v52 = _MRLogForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = self->_playerPath;
      *buf = 138543874;
      *v69 = v50;
      *&v69[8] = 2114;
      *v70 = v51;
      *&v70[8] = 2114;
      v71 = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] AudioSessionType changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    v46 = 1;
  }

  v54 = [v43 mxSessionIDs];
  v55 = [(MRPlayer *)self->_pushStatePlayer mxSessionIDs];
  if (v54 != v55 && ([v54 isEqual:v55] & 1) == 0)
  {
    v56 = _MRLogForCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = self->_playerPath;
      *buf = 138543874;
      *v69 = v55;
      *&v69[8] = 2114;
      *v70 = v54;
      *&v70[8] = 2114;
      v71 = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] MXSessionIDs changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    v46 = 1;
  }

  v58 = [(MRDNowPlayingPlayerClient *)self pushStatePlayer];
  v59 = [v58 audioSessionID];
  v60 = [v43 audioSessionID];

  if (v59 == v60)
  {
    if (!v46)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v61 = _MRLogForCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [(MRDNowPlayingPlayerClient *)self pushStatePlayer];
      v63 = [v62 audioSessionID];
      v64 = [v43 audioSessionID];
      v65 = self->_playerPath;
      *buf = 67109634;
      *v69 = v63;
      *&v69[4] = 1024;
      *&v69[6] = v64;
      *v70 = 2114;
      *&v70[2] = v65;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] AudioSessionID changed from %u to %u for %{public}@", buf, 0x18u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingPlayerClient:self playerStateDidChange:v43];

LABEL_59:
}

- (MRPlayer)player
{
  v2 = [(MRDNowPlayingPlayerClient *)self playerPath];
  v3 = [v2 player];

  return v3;
}

- (NSArray)supportedRemoteControlCommands
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003500C;
  v9 = sub_1000359BC;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (NSArray)participants
{
  participantDataSource = self->_participantDataSource;
  if (participantDataSource || (participantDataSource = self->_remoteParticipantDataSource) != 0)
  {
    participantDataSource = [participantDataSource participants];
    v2 = vars8;
  }

  return participantDataSource;
}

- (double)timeSincePlaying
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (id)_onQueue_lastPlayingDate
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(MRDNowPlayingPlayerClient *)self _onQueue_isPlaying])
  {
    v3 = +[NSDate date];
  }

  else
  {
    lastPlayingDate = self->_lastPlayingDate;
    if (lastPlayingDate)
    {
      v3 = lastPlayingDate;
    }

    else
    {
      v3 = +[NSDate distantPast];
    }
  }

  return v3;
}

- (unint64_t)playbackQueueCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (MRContentItem)nowPlayingContentItem
{
  v2 = [(MRDNowPlayingPlayerClient *)self playbackQueue];
  v3 = [v2 contentItemWithOffset:0];

  return v3;
}

- (MRPlaybackQueue)playbackQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003500C;
  v9 = sub_1000359BC;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (BOOL)isPlaying
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (id)activeContent
{
  v2 = [(MRDNowPlayingPlayerClient *)self playbackQueue];
  v3 = [v2 contentItemWithOffset:0];
  v4 = [v3 metadata];
  v5 = [v4 title];

  return v5;
}

- (MRDNowPlayingPlayerClient)initWithPlayerPath:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = MRDNowPlayingPlayerClient;
  v5 = [(MRDNowPlayingPlayerClient *)&v47 init];
  if (v5)
  {
    v6 = [v4 origin];
    if ([v6 isLocallyHosted])
    {
      v7 = [v4 client];
      v8 = [v7 processIdentifier];
      v9 = getpid();

      if (v8 != v9 || (MSVDeviceOSIsInternalInstall() & 1) != 0)
      {
LABEL_8:
        v10 = [v4 copy];
        playerPath = v5->_playerPath;
        v5->_playerPath = v10;

        v12 = [NSString alloc];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v4 description];
        v16 = [v12 initWithFormat:@"com.apple.mediaremote.%@.%@", v14, v15];

        v17 = [v16 UTF8String];
        v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v19 = dispatch_queue_create(v17, v18);
        serialQueue = v5->_serialQueue;
        v5->_serialQueue = v19;

        v21 = [[MRPlaybackQueueSubscriptionController alloc] initWithPlayerPath:v4];
        subscriptionController = v5->_subscriptionController;
        v5->_subscriptionController = v21;

        v23 = objc_alloc_init(NSMutableDictionary);
        playbackStateHistory = v5->_playbackStateHistory;
        v5->_playbackStateHistory = v23;

        v25 = +[NSDate distantPast];
        lastPlayingDate = v5->_lastPlayingDate;
        v5->_lastPlayingDate = v25;

        v27 = [v4 client];
        LODWORD(v18) = [v27 isSystemMediaApplication];

        if (v18)
        {
          v28 = +[MRUserSettings currentSettings];
          v29 = [v28 supportMultiplayerHost];

          v30 = [v4 origin];
          v31 = v30;
          if (v29)
          {
            v32 = [v30 isHosted];

            if (v32)
            {
              v33 = [[MRDPlaybackQueueParticipantDataSource alloc] initWithDelegate:v5];
              participantDataSource = v5->_participantDataSource;
              v5->_participantDataSource = v33;

              p_super = _MRLogForCategory();
              if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
              {
                v36 = v5->_participantDataSource;
                *buf = 138543618;
                v49 = v36;
                v50 = 2114;
                v51 = v4;
                v37 = "[MRDNowPlayingPlayerClient] Installed MRDPlaybackQueueParticipantDataSource: %{public}@ on %{public}@ because - LocallyHosted origin";
LABEL_16:
                _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, v37, buf, 0x16u);
                goto LABEL_20;
              }

              goto LABEL_20;
            }
          }

          else
          {
            v38 = [v30 isLocal];

            if (v38)
            {
              v39 = [[MRDPlaybackQueueParticipantDataSource alloc] initWithDelegate:v5];
              v40 = v5->_participantDataSource;
              v5->_participantDataSource = v39;

              p_super = _MRLogForCategory();
              if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
              {
                v41 = v5->_participantDataSource;
                *buf = 138543618;
                v49 = v41;
                v50 = 2114;
                v51 = v4;
                v37 = "[MRDNowPlayingPlayerClient] Installed MRDPlaybackQueueParticipantDataSource: %{public}@ on %{public}@ because - LOCL origin";
                goto LABEL_16;
              }

LABEL_20:

              goto LABEL_21;
            }
          }

          p_super = [v4 origin];
          if (([p_super isLocal]& 1) != 0)
          {
            goto LABEL_20;
          }

          v42 = [v4 origin];
          v43 = [v42 isLocallyHosted];

          if ((v43 & 1) == 0)
          {
            v44 = [[MRDPlaybackQueueRemoteParticipantDataSource alloc] initWithDelegate:v5];
            p_super = &v5->_remoteParticipantDataSource->super;
            v5->_remoteParticipantDataSource = v44;
            goto LABEL_20;
          }
        }

LABEL_21:
        v45 = +[NSNotificationCenter defaultCenter];
        [v45 addObserver:v5 selector:"_handleNowPlayingAppDidChange:" name:kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification object:0];

        goto LABEL_22;
      }

      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1003A5C4C(v6);
      }
    }

    goto LABEL_8;
  }

LABEL_22:

  return v5;
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003500C;
  v10 = sub_1000359BC;
  v11 = objc_alloc_init(NSMutableString);
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

- (NSData)supportedRemoteControlCommandsData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003500C;
  v9 = sub_1000359BC;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)setSupportedRemoteControlCommands:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)setSupportedRemoteControlCommandsData:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)setPlaybackQueue:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (unsigned)inferredPlaybackState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003500C;
  v10 = sub_1000359BC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = [v7[5] playbackState];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)updatePlaybackState:(unsigned int)a3 date:(id)a4
{
  v5 = a4;
  serialQueue = self->_serialQueue;
  v8 = v5;
  v7 = v5;
  msv_dispatch_sync_on_queue();
}

- (void)updateLastPlayingDate:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077D50;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (NSDate)canBeNowPlayingPlayerTimestamp
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003500C;
  v9 = sub_1000359BC;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)setCanBeNowPlayingPlayerTimestamp:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (NSDate)playbackStateTimestamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003500C;
  v10 = sub_1000359BC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100078120;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRNowPlayingState)nowPlayingState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003500C;
  v9 = sub_1000359BC;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (NSMapTable)handoffSessions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003500C;
  v10 = sub_1000359BC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100078724;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setPlayerPath:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)updateClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)updatePlayer:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)updatePlaybackQueue:(id)a3 fromRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_updatePlaybackQueue:(id)a3 fromRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
  v9 = [v8 copy];

  v45 = v9;
  v10 = [v9 contentItemWithOffset:0];
  [(MRDNowPlayingPlayerClient *)self _onQueue_pushState];
  playbackQueueInternal = self->_playbackQueueInternal;
  v12 = [v6 contentItems];
  [(MRDPlaybackQueue *)playbackQueueInternal updatePlaybackQueueWithContentItems:v12 fromRequest:v7];

  v13 = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
  v14 = [v13 contentItemWithOffset:0];
  if (v10 != v14 && ([v10 isEqual:v14] & 1) == 0)
  {
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = self->_playerPath;
      *buf = 138543874;
      v59 = playerPath;
      v60 = 2114;
      v61 = @"nowPlayingItem";
      v62 = 2112;
      v63 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
    }
  }

  [(MRDNowPlayingPlayerClient *)self _onQueue_popState];
  if (!v7)
  {
    v38 = v14;
    v39 = v13;
    v40 = v10;
    v42 = v6;
    v17 = [v6 contentItems];
    if ([v17 count])
    {
      [(MRDNowPlayingPlayerClient *)self _onQueue_playbackQueueContentItemsDidChange:v17];
    }

    v37 = v17;
    v18 = objc_alloc_init(NSMutableArray);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = self;
    v19 = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
    v20 = [v19 contentItems];

    obj = v20;
    v46 = [v20 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v46)
    {
      v44 = *v53;
      do
      {
        v21 = 0;
        do
        {
          if (*v53 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v47 = v21;
          v22 = *(*(&v52 + 1) + 8 * v21);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v23 = [v45 contentItems];
          v24 = [v23 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v49;
            do
            {
              for (i = 0; i != v25; i = i + 1)
              {
                if (*v49 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v48 + 1) + 8 * i);
                v29 = [v22 identifier];
                v30 = [v28 identifier];
                v31 = [v29 isEqualToString:v30];

                if (v31)
                {
                  v32 = [v22 artwork];
                  v33 = [v32 imageData];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [v28 artwork];
                    v36 = [v35 imageData];

                    if (!v36)
                    {
                      [v18 addObject:v22];
                    }
                  }

                  else
                  {
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v25);
          }

          v21 = v47 + 1;
        }

        while ((v47 + 1) != v46);
        v46 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v46);
    }

    [(MRDNowPlayingPlayerClient *)v41 _onQueue_playbackQueueContentItemsArtworkDidChange:v18];
    v7 = 0;
    v6 = v42;
    v13 = v39;
    v10 = v40;
    v14 = v38;
  }
}

- (void)notifyArtworkChangedForContentItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    serialQueue = self->_serialQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100079090;
    v7[3] = &unk_1004B68F0;
    v7[4] = self;
    v8 = v5;
    dispatch_sync(serialQueue, v7);
  }
}

- (id)snapshotForPlaybackState:(unsigned int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003500C;
  v12 = sub_1000359BC;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000791C4;
  block[3] = &unk_1004B8848;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(serialQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)snapshotsForIsPlaying:(BOOL)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007931C;
  block[3] = &unk_1004B8870;
  v12 = a3;
  block[4] = self;
  v11 = v5;
  v7 = v5;
  dispatch_sync(serialQueue, block);
  v8 = [(MRDNowPlayingPlayerClient *)self _sortSnapshots:v7];

  return v8;
}

- (NSArray)snapshots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003500C;
  v10 = sub_1000359BC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100079578;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)playbackQueueForRequest:(id)a3 cachingPolicy:(unsigned int)a4 playerPath:(id)a5 partiallyCachedItems:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10003500C;
  v33 = sub_1000359BC;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10003500C;
  v27 = sub_1000359BC;
  v28 = 0;
  serialQueue = self->_serialQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000797C8;
  v17[3] = &unk_1004B88D8;
  v17[4] = self;
  v20 = &v29;
  v13 = v10;
  v18 = v13;
  v22 = a4;
  v14 = v11;
  v19 = v14;
  v21 = &v23;
  dispatch_sync(serialQueue, v17);
  if (a6)
  {
    *a6 = v24[5];
  }

  v15 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (void)registerHandoffSession:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079934;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (id)handleHandoffEvent:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10003500C;
  v17 = sub_1000359BC;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079DA8;
  block[3] = &unk_1004B7798;
  v12 = &v13;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_sync(serialQueue, block);
  v7 = v14[5];
  if (v7)
  {
    [v7 handleEvent:v6];
    v8 = 0;
  }

  else
  {
    v8 = [[NSError alloc] initWithMRError:185];
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)_handleNowPlayingAppDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  v6 = [(MRDNowPlayingPlayerClient *)self playerPath];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100079EEC;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (void)dataSource:(id)a3 didUpdateParticipants:(id)a4
{
  v5 = a4;
  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100079F90;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(serialQueue, v8);
}

- (void)_onQueue_playbackStateDidChanged:(id)a3
{
  serialQueue = self->_serialQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serialQueue);
  v10 = objc_alloc_init(MRDNowPlayingPlayerClientPlaybackStateSnapshot);
  [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)v10 setPlayerPlaybackState:v5];
  playbackStateHistory = self->_playbackStateHistory;
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 playbackState]);
  [(NSMutableDictionary *)playbackStateHistory setObject:v10 forKeyedSubscript:v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v5 playbackState];

  [WeakRetained nowPlayingPlayerClient:self playbackStateDidChange:v9];
}

- (void)_onQueue_supportedCommandsDidChange:(id)a3
{
  serialQueue = self->_serialQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serialQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 copy];

  [WeakRetained nowPlayingPlayerClient:self supportedCommandsDidChange:v6];
}

- (void)_onQueue_playbackQueueCapabilitiesDidChange:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingPlayerClient:self playbackQueueCapabilitiesDidChange:a3];
}

- (void)_onQueue_playbackQueueContentItemsDidChange:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [[NSArray alloc] initWithArray:v6 copyItems:1];
    [WeakRetained nowPlayingPlayerClient:self playbackQueueContentItemsDidChange:v5];
  }
}

- (void)_onQueue_playbackQueueContentItemsArtworkDidChange:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [[NSArray alloc] initWithArray:v6 copyItems:1];
    [WeakRetained nowPlayingPlayerClient:self playbackQueueArtworkContentItemsDidChange:v5];
  }
}

- (MRDNowPlayingPlayerClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end