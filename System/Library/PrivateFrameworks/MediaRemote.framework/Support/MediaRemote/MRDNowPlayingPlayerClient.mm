@interface MRDNowPlayingPlayerClient
- (BOOL)_onQueue_isPlaying;
- (BOOL)canBeNowPlayingPlayer;
- (BOOL)hasNowPlayingData;
- (BOOL)isPictureInPictureEnabled;
- (BOOL)isPlaying;
- (MRContentItem)nowPlayingContentItem;
- (MRDNowPlayingPlayerClient)initWithPlayerPath:(id)path;
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
- (id)handleHandoffEvent:(id)event;
- (id)playbackQueueForRequest:(id)request cachingPolicy:(unsigned int)policy playerPath:(id)path partiallyCachedItems:(id *)items;
- (id)snapshotForPlaybackState:(unsigned int)state;
- (id)snapshotsForIsPlaying:(BOOL)playing;
- (unint64_t)playbackQueueCapabilities;
- (unsigned)inferredPlaybackState;
- (unsigned)playbackState;
- (void)_handleNowPlayingAppDidChange:(id)change;
- (void)_onQueue_playbackQueueCapabilitiesDidChange:(unint64_t)change;
- (void)_onQueue_playbackQueueContentItemsArtworkDidChange:(id)change;
- (void)_onQueue_playbackQueueContentItemsDidChange:(id)change;
- (void)_onQueue_playbackStateDidChanged:(id)changed;
- (void)_onQueue_popState;
- (void)_onQueue_pushState;
- (void)_onQueue_supportedCommandsDidChange:(id)change;
- (void)_onQueue_updatePlaybackQueue:(id)queue fromRequest:(id)request;
- (void)dataSource:(id)source didUpdateParticipants:(id)participants;
- (void)notifyArtworkChangedForContentItems:(id)items;
- (void)registerHandoffSession:(id)session;
- (void)setCanBeNowPlayingPlayerTimestamp:(id)timestamp;
- (void)setPlaybackQueue:(id)queue;
- (void)setPlayerPath:(id)path;
- (void)setSupportedRemoteControlCommands:(id)commands;
- (void)setSupportedRemoteControlCommandsData:(id)data;
- (void)updateClient:(id)client;
- (void)updateLastPlayingDate:(id)date;
- (void)updatePlaybackQueue:(id)queue fromRequest:(id)request;
- (void)updatePlaybackState:(unsigned int)state date:(id)date;
- (void)updatePlayer:(id)player;
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
    playbackQueue = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
    v7 = [playbackQueue contentItemWithOffset:0];

    metadata = [v7 metadata];
    hasPlaybackRate = [metadata hasPlaybackRate];

    if (hasPlaybackRate)
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

    metadata2 = [v7 metadata];
    hasElapsedTimeTimestamp = [metadata2 hasElapsedTimeTimestamp];

    if (hasElapsedTimeTimestamp)
    {
      v14 = [NSDate alloc];
      metadata3 = [v7 metadata];
      [metadata3 elapsedTimeTimestamp];
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
  playbackState = [v7[5] playbackState];
  _Block_object_dispose(&v6, 8);

  return playbackState;
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
  _onQueue_playbackState = [(MRDNowPlayingPlayerClient *)self _onQueue_playbackState];
  [_onQueue_playbackState playbackState];
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
  _onQueue_playbackState = [(MRDNowPlayingPlayerClient *)self _onQueue_playbackState];
  [(MRDNowPlayingPlayerClient *)self setPushStatePlaybackState:_onQueue_playbackState];

  player = [(MRPlayerPath *)self->_playerPath player];
  v5 = [player copy];
  [(MRDNowPlayingPlayerClient *)self setPushStatePlayer:v5];

  [(MRDNowPlayingPlayerClient *)self setPushStateHasNowPlayingData:[(MRDNowPlayingPlayerClient *)self hasNowPlayingData]];
  [(MRDNowPlayingPlayerClient *)self setPushStatePictureInPictureEnabled:[(MRDNowPlayingPlayerClient *)self isPictureInPictureEnabled]];
  [(MRDNowPlayingPlayerClient *)self setPushStateCanBeNowPlayingPlayer:[(MRDNowPlayingPlayerClient *)self canBeNowPlayingPlayer]];
  playbackQueue = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
  v6 = [playbackQueue contentItemWithOffset:0];
  metadata = [v6 metadata];
  [metadata playbackRate];
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
  hasNowPlayingData = [(MRDNowPlayingPlayerClient *)self hasNowPlayingData];
  if (hasNowPlayingData != [(MRDNowPlayingPlayerClient *)self pushStateHasNowPlayingData])
  {
    if (hasNowPlayingData)
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
  isPictureInPictureEnabled = [(MRDNowPlayingPlayerClient *)self isPictureInPictureEnabled];
  if (isPictureInPictureEnabled != [(MRDNowPlayingPlayerClient *)self pushStatePictureInPictureEnabled])
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"false";
      v16 = self->_playerPath;
      if (isPictureInPictureEnabled)
      {
        v15 = @"true";
      }

      *buf = 138543618;
      *v69 = v15;
      *&v69[8] = 2114;
      *v70 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] isPictureInPictureEnabled changed to %{public}@ for %{public}@", buf, 0x16u);
    }

    [(MRDNowPlayingPlayerClient *)self _onQueue_pictureInPictureEnabledDidChanged:isPictureInPictureEnabled];
  }

  _onQueue_isPlaying = [(MRDNowPlayingPlayerClient *)self _onQueue_isPlaying];
  v18 = _onQueue_isPlaying ^ [(MRDNowPlayingPlayerClient *)self pushStateIsPlaying];
  _onQueue_playbackState = [(MRDNowPlayingPlayerClient *)self _onQueue_playbackState];
  pushStatePlaybackState = [(MRDNowPlayingPlayerClient *)self pushStatePlaybackState];
  playbackState = [pushStatePlaybackState playbackState];
  playbackState2 = [_onQueue_playbackState playbackState];

  if (playbackState != playbackState2)
  {
    pushStatePlaybackState2 = [(MRDNowPlayingPlayerClient *)self pushStatePlaybackState];
    [pushStatePlaybackState2 playbackState];
    v24 = MRMediaRemoteCopyPlaybackStateDescription();

    [_onQueue_playbackState playbackState];
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

    [(MRDNowPlayingPlayerClient *)self _onQueue_playbackStateDidChanged:_onQueue_playbackState];
  }

  if (v18)
  {
    v28 = _MRLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"false";
      v30 = self->_playerPath;
      if (_onQueue_isPlaying)
      {
        v29 = @"true";
      }

      *buf = 138543618;
      *v69 = v29;
      *&v69[8] = 2114;
      *v70 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] isPlaying changed to %{public}@ for %{public}@", buf, 0x16u);
    }

    [(MRDNowPlayingPlayerClient *)self _onQueue_isPlayingDidChange:_onQueue_isPlaying];
  }

  playbackQueue = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
  v32 = [playbackQueue contentItemWithOffset:0];
  metadata = [v32 metadata];
  [metadata playbackRate];
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

  canBeNowPlayingPlayer = [(MRDNowPlayingPlayerClient *)self canBeNowPlayingPlayer];
  if (canBeNowPlayingPlayer != [(MRDNowPlayingPlayerClient *)self pushStateCanBeNowPlayingPlayer])
  {
    v40 = _MRLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = @"false";
      v42 = self->_playerPath;
      if (canBeNowPlayingPlayer)
      {
        v41 = @"true";
      }

      *buf = 138543618;
      *v69 = v41;
      *&v69[8] = 2114;
      *v70 = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] CanBeNowPlayingPlayer changed to %{public}@ for %{public}@", buf, 0x16u);
    }

    [(MRDNowPlayingPlayerClient *)self _onQueue_canBeNowPlayingDidChange:canBeNowPlayingPlayer];
  }

  player = [(MRPlayerPath *)self->_playerPath player];
  displayName = [player displayName];
  displayName2 = [(MRPlayer *)self->_pushStatePlayer displayName];
  v67 = _onQueue_playbackState;
  if (displayName && ([displayName isEqualToString:displayName2] & 1) == 0)
  {
    v47 = _MRLogForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = self->_playerPath;
      *buf = 138412802;
      *v69 = displayName2;
      *&v69[8] = 2112;
      *v70 = displayName;
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

  audioSessionType = [player audioSessionType];
  if (audioSessionType != [(MRPlayer *)self->_pushStatePlayer audioSessionType])
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

  mxSessionIDs = [player mxSessionIDs];
  mxSessionIDs2 = [(MRPlayer *)self->_pushStatePlayer mxSessionIDs];
  if (mxSessionIDs != mxSessionIDs2 && ([mxSessionIDs isEqual:mxSessionIDs2] & 1) == 0)
  {
    v56 = _MRLogForCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = self->_playerPath;
      *buf = 138543874;
      *v69 = mxSessionIDs2;
      *&v69[8] = 2114;
      *v70 = mxSessionIDs;
      *&v70[8] = 2114;
      v71 = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] MXSessionIDs changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    v46 = 1;
  }

  pushStatePlayer = [(MRDNowPlayingPlayerClient *)self pushStatePlayer];
  audioSessionID = [pushStatePlayer audioSessionID];
  audioSessionID2 = [player audioSessionID];

  if (audioSessionID == audioSessionID2)
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
      pushStatePlayer2 = [(MRDNowPlayingPlayerClient *)self pushStatePlayer];
      audioSessionID3 = [pushStatePlayer2 audioSessionID];
      audioSessionID4 = [player audioSessionID];
      v65 = self->_playerPath;
      *buf = 67109634;
      *v69 = audioSessionID3;
      *&v69[4] = 1024;
      *&v69[6] = audioSessionID4;
      *v70 = 2114;
      *&v70[2] = v65;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingPlayerClient] AudioSessionID changed from %u to %u for %{public}@", buf, 0x18u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingPlayerClient:self playerStateDidChange:player];

LABEL_59:
}

- (MRPlayer)player
{
  playerPath = [(MRDNowPlayingPlayerClient *)self playerPath];
  player = [playerPath player];

  return player;
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
  playbackQueue = [(MRDNowPlayingPlayerClient *)self playbackQueue];
  v3 = [playbackQueue contentItemWithOffset:0];

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
  playbackQueue = [(MRDNowPlayingPlayerClient *)self playbackQueue];
  v3 = [playbackQueue contentItemWithOffset:0];
  metadata = [v3 metadata];
  title = [metadata title];

  return title;
}

- (MRDNowPlayingPlayerClient)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v47.receiver = self;
  v47.super_class = MRDNowPlayingPlayerClient;
  v5 = [(MRDNowPlayingPlayerClient *)&v47 init];
  if (v5)
  {
    origin = [pathCopy origin];
    if ([origin isLocallyHosted])
    {
      client = [pathCopy client];
      processIdentifier = [client processIdentifier];
      v9 = getpid();

      if (processIdentifier != v9 || (MSVDeviceOSIsInternalInstall() & 1) != 0)
      {
LABEL_8:
        v10 = [pathCopy copy];
        playerPath = v5->_playerPath;
        v5->_playerPath = v10;

        v12 = [NSString alloc];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [pathCopy description];
        v16 = [v12 initWithFormat:@"com.apple.mediaremote.%@.%@", v14, v15];

        uTF8String = [v16 UTF8String];
        v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v19 = dispatch_queue_create(uTF8String, v18);
        serialQueue = v5->_serialQueue;
        v5->_serialQueue = v19;

        v21 = [[MRPlaybackQueueSubscriptionController alloc] initWithPlayerPath:pathCopy];
        subscriptionController = v5->_subscriptionController;
        v5->_subscriptionController = v21;

        v23 = objc_alloc_init(NSMutableDictionary);
        playbackStateHistory = v5->_playbackStateHistory;
        v5->_playbackStateHistory = v23;

        v25 = +[NSDate distantPast];
        lastPlayingDate = v5->_lastPlayingDate;
        v5->_lastPlayingDate = v25;

        client2 = [pathCopy client];
        LODWORD(v18) = [client2 isSystemMediaApplication];

        if (v18)
        {
          v28 = +[MRUserSettings currentSettings];
          supportMultiplayerHost = [v28 supportMultiplayerHost];

          origin2 = [pathCopy origin];
          v31 = origin2;
          if (supportMultiplayerHost)
          {
            isHosted = [origin2 isHosted];

            if (isHosted)
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
                v51 = pathCopy;
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
            isLocal = [origin2 isLocal];

            if (isLocal)
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
                v51 = pathCopy;
                v37 = "[MRDNowPlayingPlayerClient] Installed MRDPlaybackQueueParticipantDataSource: %{public}@ on %{public}@ because - LOCL origin";
                goto LABEL_16;
              }

LABEL_20:

              goto LABEL_21;
            }
          }

          p_super = [pathCopy origin];
          if (([p_super isLocal]& 1) != 0)
          {
            goto LABEL_20;
          }

          origin3 = [pathCopy origin];
          isLocallyHosted = [origin3 isLocallyHosted];

          if ((isLocallyHosted & 1) == 0)
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

      origin = _MRLogForCategory();
      if (os_log_type_enabled(origin, OS_LOG_TYPE_ERROR))
      {
        sub_1003A5C4C(origin);
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

- (void)setSupportedRemoteControlCommands:(id)commands
{
  commandsCopy = commands;
  serialQueue = self->_serialQueue;
  v7 = commandsCopy;
  v6 = commandsCopy;
  msv_dispatch_sync_on_queue();
}

- (void)setSupportedRemoteControlCommandsData:(id)data
{
  dataCopy = data;
  serialQueue = self->_serialQueue;
  v7 = dataCopy;
  v6 = dataCopy;
  msv_dispatch_sync_on_queue();
}

- (void)setPlaybackQueue:(id)queue
{
  queueCopy = queue;
  serialQueue = self->_serialQueue;
  v7 = queueCopy;
  v6 = queueCopy;
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
  playbackState = [v7[5] playbackState];
  _Block_object_dispose(&v6, 8);

  return playbackState;
}

- (void)updatePlaybackState:(unsigned int)state date:(id)date
{
  dateCopy = date;
  serialQueue = self->_serialQueue;
  v8 = dateCopy;
  v7 = dateCopy;
  msv_dispatch_sync_on_queue();
}

- (void)updateLastPlayingDate:(id)date
{
  dateCopy = date;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077D50;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
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

- (void)setCanBeNowPlayingPlayerTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  serialQueue = self->_serialQueue;
  v7 = timestampCopy;
  v6 = timestampCopy;
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

- (void)setPlayerPath:(id)path
{
  pathCopy = path;
  serialQueue = self->_serialQueue;
  v7 = pathCopy;
  v6 = pathCopy;
  msv_dispatch_sync_on_queue();
}

- (void)updateClient:(id)client
{
  clientCopy = client;
  serialQueue = self->_serialQueue;
  v7 = clientCopy;
  v6 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)updatePlayer:(id)player
{
  playerCopy = player;
  serialQueue = self->_serialQueue;
  v7 = playerCopy;
  v6 = playerCopy;
  msv_dispatch_sync_on_queue();
}

- (void)updatePlaybackQueue:(id)queue fromRequest:(id)request
{
  queueCopy = queue;
  requestCopy = request;
  serialQueue = self->_serialQueue;
  v11 = queueCopy;
  v12 = requestCopy;
  v9 = requestCopy;
  v10 = queueCopy;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_updatePlaybackQueue:(id)queue fromRequest:(id)request
{
  queueCopy = queue;
  requestCopy = request;
  dispatch_assert_queue_V2(self->_serialQueue);
  playbackQueue = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
  v9 = [playbackQueue copy];

  v45 = v9;
  v10 = [v9 contentItemWithOffset:0];
  [(MRDNowPlayingPlayerClient *)self _onQueue_pushState];
  playbackQueueInternal = self->_playbackQueueInternal;
  contentItems = [queueCopy contentItems];
  [(MRDPlaybackQueue *)playbackQueueInternal updatePlaybackQueueWithContentItems:contentItems fromRequest:requestCopy];

  playbackQueue2 = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
  v14 = [playbackQueue2 contentItemWithOffset:0];
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
  if (!requestCopy)
  {
    v38 = v14;
    v39 = playbackQueue2;
    v40 = v10;
    v42 = queueCopy;
    contentItems2 = [queueCopy contentItems];
    if ([contentItems2 count])
    {
      [(MRDNowPlayingPlayerClient *)self _onQueue_playbackQueueContentItemsDidChange:contentItems2];
    }

    v37 = contentItems2;
    v18 = objc_alloc_init(NSMutableArray);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    selfCopy = self;
    playbackQueue3 = [(MRDPlaybackQueue *)self->_playbackQueueInternal playbackQueue];
    contentItems3 = [playbackQueue3 contentItems];

    obj = contentItems3;
    v46 = [contentItems3 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
          contentItems4 = [v45 contentItems];
          v24 = [contentItems4 countByEnumeratingWithState:&v48 objects:v56 count:16];
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
                  objc_enumerationMutation(contentItems4);
                }

                v28 = *(*(&v48 + 1) + 8 * i);
                identifier = [v22 identifier];
                identifier2 = [v28 identifier];
                v31 = [identifier isEqualToString:identifier2];

                if (v31)
                {
                  artwork = [v22 artwork];
                  imageData = [artwork imageData];
                  if (imageData)
                  {
                    v34 = imageData;
                    artwork2 = [v28 artwork];
                    imageData2 = [artwork2 imageData];

                    if (!imageData2)
                    {
                      [v18 addObject:v22];
                    }
                  }

                  else
                  {
                  }
                }
              }

              v25 = [contentItems4 countByEnumeratingWithState:&v48 objects:v56 count:16];
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

    [(MRDNowPlayingPlayerClient *)selfCopy _onQueue_playbackQueueContentItemsArtworkDidChange:v18];
    requestCopy = 0;
    queueCopy = v42;
    playbackQueue2 = v39;
    v10 = v40;
    v14 = v38;
  }
}

- (void)notifyArtworkChangedForContentItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (itemsCopy && [itemsCopy count])
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

- (id)snapshotForPlaybackState:(unsigned int)state
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
  stateCopy = state;
  dispatch_sync(serialQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)snapshotsForIsPlaying:(BOOL)playing
{
  v5 = objc_alloc_init(NSMutableArray);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007931C;
  block[3] = &unk_1004B8870;
  playingCopy = playing;
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

- (id)playbackQueueForRequest:(id)request cachingPolicy:(unsigned int)policy playerPath:(id)path partiallyCachedItems:(id *)items
{
  requestCopy = request;
  pathCopy = path;
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
  v13 = requestCopy;
  v18 = v13;
  policyCopy = policy;
  v14 = pathCopy;
  v19 = v14;
  v21 = &v23;
  dispatch_sync(serialQueue, v17);
  if (items)
  {
    *items = v24[5];
  }

  v15 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (void)registerHandoffSession:(id)session
{
  sessionCopy = session;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079934;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)handleHandoffEvent:(id)event
{
  eventCopy = event;
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
  v6 = eventCopy;
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

- (void)_handleNowPlayingAppDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  playerPath = [(MRDNowPlayingPlayerClient *)self playerPath];
  v7 = [v5 isEqual:playerPath];

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

- (void)dataSource:(id)source didUpdateParticipants:(id)participants
{
  participantsCopy = participants;
  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100079F90;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = participantsCopy;
  v7 = participantsCopy;
  dispatch_sync(serialQueue, v8);
}

- (void)_onQueue_playbackStateDidChanged:(id)changed
{
  serialQueue = self->_serialQueue;
  changedCopy = changed;
  dispatch_assert_queue_V2(serialQueue);
  v10 = objc_alloc_init(MRDNowPlayingPlayerClientPlaybackStateSnapshot);
  [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)v10 setPlayerPlaybackState:changedCopy];
  playbackStateHistory = self->_playbackStateHistory;
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [changedCopy playbackState]);
  [(NSMutableDictionary *)playbackStateHistory setObject:v10 forKeyedSubscript:v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  playbackState = [changedCopy playbackState];

  [WeakRetained nowPlayingPlayerClient:self playbackStateDidChange:playbackState];
}

- (void)_onQueue_supportedCommandsDidChange:(id)change
{
  serialQueue = self->_serialQueue;
  changeCopy = change;
  dispatch_assert_queue_V2(serialQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [changeCopy copy];

  [WeakRetained nowPlayingPlayerClient:self supportedCommandsDidChange:v6];
}

- (void)_onQueue_playbackQueueCapabilitiesDidChange:(unint64_t)change
{
  dispatch_assert_queue_V2(self->_serialQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingPlayerClient:self playbackQueueCapabilitiesDidChange:change];
}

- (void)_onQueue_playbackQueueContentItemsDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([changeCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [[NSArray alloc] initWithArray:changeCopy copyItems:1];
    [WeakRetained nowPlayingPlayerClient:self playbackQueueContentItemsDidChange:v5];
  }
}

- (void)_onQueue_playbackQueueContentItemsArtworkDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([changeCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [[NSArray alloc] initWithArray:changeCopy copyItems:1];
    [WeakRetained nowPlayingPlayerClient:self playbackQueueArtworkContentItemsDidChange:v5];
  }
}

- (MRDNowPlayingPlayerClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end