@interface MRDElectedPlayerController
- (BOOL)_shouldUseNotification:(id)notification;
- (MRDElectedPlayerController)initWithOriginClient:(id)client;
- (MRPlayerPath)electedPlayerPath;
- (NSString)activeSystemEndpointOutputDeviceUID;
- (id)_onSyncSelf_calculateElectedPlayerForOriginClient:(id)client event:(int64_t)event reason:(id *)reason;
- (int64_t)_resolveChangeTypeWithOriginClient:(id)client forEvent:(int64_t)event;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_handleIsPlayingDidChangeNotification:(id)notification;
- (void)_handleNowPlayingApplicationDidChangeNotification:(id)notification;
- (void)_handleNowPlayingApplicationDidForegroundNotification:(id)notification;
- (void)_handleNowPlayingPlayerDidChangeNotification:(id)notification;
- (void)_handlePlaybackQueueChangedNotification:(id)notification;
- (void)_onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:(int64_t)event;
- (void)_onSyncSelf_reevaluateElectedPlayerForEvent:(int64_t)event withReason:(id)reason;
- (void)setActiveSystemEndpointOutputDeviceUID:(id)d;
- (void)setOriginClient:(id)client;
- (void)setOriginClient:(id)client withChangeType:(int64_t)type;
@end

@implementation MRDElectedPlayerController

- (MRDElectedPlayerController)initWithOriginClient:(id)client
{
  clientCopy = client;
  v13.receiver = self;
  v13.super_class = MRDElectedPlayerController;
  v5 = [(MRDElectedPlayerController *)&v13 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_handlePlaybackQueueChangedNotification:" name:kMRNowPlayingPlaybackQueueChangedNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"_handleIsPlayingDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_handleNowPlayingApplicationDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"_handleNowPlayingPlayerDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingPlayerDidChange object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v5 selector:"_handleNowPlayingApplicationDidForegroundNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationDidForegroundNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v5 selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

    [(MRDElectedPlayerController *)v5 setOriginClient:clientCopy];
  }

  return v5;
}

- (void)setOriginClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_originClient = &selfCopy->_originClient;
  originClient = selfCopy->_originClient;
  if (originClient)
  {
    v8 = originClient == clientCopy;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = originClient;
    objc_storeStrong(&selfCopy->_originClient, client);
    v10 = [NSString alloc];
    deviceInfo = [(MRDNowPlayingOriginClient *)v9 deviceInfo];
    deviceUID = [deviceInfo deviceUID];
    deviceInfo2 = [(MRDNowPlayingOriginClient *)v9 deviceInfo];
    name = [deviceInfo2 name];
    deviceInfo3 = [*p_originClient deviceInfo];
    deviceUID2 = [deviceInfo3 deviceUID];
    deviceInfo4 = [*p_originClient deviceInfo];
    name2 = [deviceInfo4 name];
    v18 = [v10 initWithFormat:@"ElectedOrigin changed from <%@> (<%@>) to <%@> (<%@>)", deviceUID, name, deviceUID2, name2];
    [(MRDElectedPlayerController *)selfCopy _onSyncSelf_reevaluateElectedPlayerForEvent:0 withReason:v18];
  }

  objc_sync_exit(selfCopy);
}

- (void)setOriginClient:(id)client withChangeType:(int64_t)type
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [NSNumber numberWithInteger:type];
  changeType = selfCopy->_changeType;
  selfCopy->_changeType = v7;

  [(MRDElectedPlayerController *)selfCopy setOriginClient:clientCopy];
  objc_sync_exit(selfCopy);
}

- (void)setActiveSystemEndpointOutputDeviceUID:(id)d
{
  dCopy = d;
  obj = self;
  objc_sync_enter(obj);
  activeSystemEndpointOutputDeviceUID = obj->_activeSystemEndpointOutputDeviceUID;
  obj->_activeSystemEndpointOutputDeviceUID = dCopy;

  objc_sync_exit(obj);
}

- (NSString)activeSystemEndpointOutputDeviceUID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_activeSystemEndpointOutputDeviceUID copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRPlayerPath)electedPlayerPath
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_electedPlayerPath;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)_shouldUseNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetOriginFromUserInfo();

  origin = [(MRDNowPlayingOriginClient *)self->_originClient origin];
  LOBYTE(userInfo) = [v5 isEqual:origin];

  return userInfo;
}

- (void)_handlePlaybackQueueChangedNotification:(id)notification
{
  notificationCopy = notification;
  playerPath = [notificationCopy playerPath];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MRDElectedPlayerController *)selfCopy _shouldUseNotification:notificationCopy])
  {
    v6 = [[NSString alloc] initWithFormat:@"%@ PlaybackQueueChanged", playerPath];
    [(MRDElectedPlayerController *)selfCopy _onSyncSelf_reevaluateElectedPlayerForEvent:7 withReason:v6];

    [(MRDElectedPlayerController *)selfCopy _onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:7];
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
  bOOLValue = [v5 BOOLValue];

  playerPath = [notificationCopy playerPath];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MRDElectedPlayerController *)selfCopy _shouldUseNotification:notificationCopy])
  {
    v9 = [NSString alloc];
    v10 = @"stopped";
    if (bOOLValue)
    {
      v10 = @"started";
    }

    v11 = [v9 initWithFormat:@"%@ Playback %@", playerPath, v10];
    [(MRDElectedPlayerController *)selfCopy _onSyncSelf_reevaluateElectedPlayerForEvent:2 withReason:v11];

    [(MRDElectedPlayerController *)selfCopy _onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:2];
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleNowPlayingApplicationDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MRDElectedPlayerController *)selfCopy _shouldUseNotification:notificationCopy])
  {
    userInfo = [notificationCopy userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [[NSString alloc] initWithFormat:@"NowPlayingAppChanged to %@", v6];
    [(MRDElectedPlayerController *)selfCopy _onSyncSelf_reevaluateElectedPlayerForEvent:4 withReason:v7];
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleNowPlayingPlayerDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MRDElectedPlayerController *)selfCopy _shouldUseNotification:notificationCopy])
  {
    userInfo = [notificationCopy userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [[NSString alloc] initWithFormat:@"NowPlayingPlayerChanged to %@", v6];
    [(MRDElectedPlayerController *)selfCopy _onSyncSelf_reevaluateElectedPlayerForEvent:5 withReason:v7];
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleNowPlayingApplicationDidForegroundNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MRDElectedPlayerController *)selfCopy _shouldUseNotification:notificationCopy])
  {
    userInfo = [notificationCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:kMRMediaRemoteApplicationForegroundUserInfoKey];
    bOOLValue = [v6 BOOLValue];

    v8 = [NSString alloc];
    v9 = @"Back";
    if (bOOLValue)
    {
      v9 = @"Fore";
    }

    v10 = [v8 initWithFormat:@"Was %@grounded", v9];
    [(MRDElectedPlayerController *)selfCopy _onSyncSelf_reevaluateElectedPlayerForEvent:6 withReason:v10];
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  integerValue = [v6 integerValue];

  if (integerValue == 1)
  {
    userInfo2 = [notificationCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    [(MRDElectedPlayerController *)self setActiveSystemEndpointOutputDeviceUID:v9];
    userInfo3 = [notificationCopy userInfo];
    v11 = [userInfo3 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];
    [v11 integerValue];

    v12 = v9;
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (void)_onSyncSelf_reevaluateElectedPlayerForEvent:(int64_t)event withReason:(id)reason
{
  reasonCopy = reason;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1003AA664(event, reasonCopy, v8);
  }

  originClient = self->_originClient;
  v39 = 0;
  v10 = [(MRDElectedPlayerController *)self _onSyncSelf_calculateElectedPlayerForOriginClient:originClient event:event reason:&v39];
  v11 = v39;
  v12 = v39;
  playerPath = [v10 playerPath];
  objc_storeStrong(&self->_mostRecentEventReason, reason);
  objc_storeStrong(&self->_mostRecentSelectionReason, v11);
  v14 = sub_100140AD0(event);
  mostRecentEvent = self->_mostRecentEvent;
  self->_mostRecentEvent = v14;

  electedPlayerPath = self->_electedPlayerPath;
  if (MREqualPlayerPaths())
  {
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v30 = self->_electedPlayerPath;
      *buf = 138412802;
      v41 = v30;
      v42 = 2114;
      v43 = reasonCopy;
      v44 = 2114;
      v45 = v12;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[MRDElectedPlayerController] ElectedPlayer remained <%@> eventReason=%{public}@, selectionReason=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v18 = [(MRPlayerPath *)self->_electedPlayerPath copy];
    previousElectedPlayerPath = self->_previousElectedPlayerPath;
    self->_previousElectedPlayerPath = v18;

    v20 = [playerPath copy];
    v21 = self->_electedPlayerPath;
    self->_electedPlayerPath = v20;

    objc_storeStrong(&self->_eventReason, self->_mostRecentEventReason);
    objc_storeStrong(&self->_selectionReason, self->_mostRecentSelectionReason);
    objc_storeStrong(&self->_event, self->_mostRecentEvent);
    v22 = [(MRDElectedPlayerController *)self _resolveChangeTypeWithOriginClient:self->_originClient forEvent:event];
    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v12;
      v24 = reasonCopy;
      v25 = self->_previousElectedPlayerPath;
      v31 = self->_electedPlayerPath;
      v26 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
      v27 = v26;
      sub_100140AD0(event);
      v28 = v33 = v10;

      *buf = 138413570;
      v41 = v25;
      reasonCopy = v24;
      v42 = 2112;
      v12 = v32;
      v43 = v31;
      v44 = 2114;
      v45 = v26;
      v46 = 2114;
      v47 = v28;
      v48 = 2114;
      v49 = reasonCopy;
      v50 = 2114;
      v51 = v32;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MRDElectedPlayerController] ElectedPlayer changed from <%@> to <%@> changeType=<%{public}@>, event=%{public}@, eventReason=%{public}@, selectionReason=%{public}@", buf, 0x3Eu);

      v10 = v33;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100140AF0;
    block[3] = &unk_1004B6B38;
    block[4] = self;
    v35 = playerPath;
    v37 = v22;
    eventCopy = event;
    v36 = v12;
    dispatch_async(&_dispatch_main_q, block);
    changeType = self->_changeType;
    self->_changeType = 0;

    [(MRDElectedPlayerController *)self _onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:event];
  }
}

- (int64_t)_resolveChangeTypeWithOriginClient:(id)client forEvent:(int64_t)event
{
  clientCopy = client;
  changeType = self->_changeType;
  if (!changeType)
  {
    integerValue = 0;
LABEL_13:
    if (!self->_electedPlayerPath)
    {
      if (self->_previousElectedPlayerPath)
      {
        activeNowPlayingClient = [clientCopy activeNowPlayingClient];
        activePlayerClient = [activeNowPlayingClient activePlayerClient];
        playerPath = [activePlayerClient playerPath];
        v19 = [playerPath isEqual:self->_previousElectedPlayerPath];

        if (v19)
        {
          v20 = +[MRDMediaRemoteServer server];
          nowPlayingServer = [v20 nowPlayingServer];
          v22 = [nowPlayingServer queryExistingPlayerPath:self->_previousElectedPlayerPath];

          playerClient = [v22 playerClient];

          if (playerClient)
          {
            v24 = _MRLogForCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
              electedPlayerPath = self->_electedPlayerPath;
              previousElectedPlayerPath = self->_previousElectedPlayerPath;
              v28 = 138543874;
              v29 = v25;
              v30 = 2114;
              v31 = electedPlayerPath;
              v32 = 2114;
              v33 = previousElectedPlayerPath;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[MRDElectedPlayerController] Manually setting changeType to %{public}@ because changeType uninitialized and playerPath %{public}@ is nil and previousPlayerPath %{public}@ is still valid", &v28, 0x20u);
            }

            integerValue = 1;
          }
        }
      }
    }

    goto LABEL_14;
  }

  integerValue = [(NSNumber *)changeType integerValue];
  if (integerValue == 1)
  {
    if (self->_previousElectedPlayerPath)
    {
      v8 = +[MRDMediaRemoteServer server];
      nowPlayingServer2 = [v8 nowPlayingServer];
      v10 = [nowPlayingServer2 queryExistingPlayerPath:self->_previousElectedPlayerPath];

      playerClient2 = [v10 playerClient];

      if (playerClient2)
      {
        integerValue = 1;
      }

      else
      {
        v12 = _MRLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
          v14 = self->_previousElectedPlayerPath;
          v28 = 138543618;
          v29 = v13;
          v30 = 2114;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDElectedPlayerController] Manually setting changeType to %{public}@ because previousPlayerPath %{public}@ does not exist anymore", &v28, 0x16u);
        }

        integerValue = 0;
      }
    }

    else
    {
      integerValue = 1;
    }
  }

  if (!self->_changeType)
  {
    goto LABEL_13;
  }

LABEL_14:

  return integerValue;
}

- (id)_onSyncSelf_calculateElectedPlayerForOriginClient:(id)client event:(int64_t)event reason:(id *)reason
{
  clientCopy = client;
  activeNowPlayingClient = [clientCopy activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  if ([activePlayerClient isPlaying])
  {
    v10 = @"is playing";
LABEL_5:
    *reason = v10;
LABEL_6:
    nowPlayingContentItem = activePlayerClient;
    goto LABEL_7;
  }

  if ([clientCopy isActivityActive])
  {
    v10 = @"SiriIntent";
    goto LABEL_5;
  }

  if (([activeNowPlayingClient isForegrounded] & 1) != 0 || objc_msgSend(activeNowPlayingClient, "supportsBackgroundAudio"))
  {
    [activePlayerClient timeSincePlaying];
    v14 = v13;
    if (event == 3)
    {
      v15 = [[NSString alloc] initWithFormat:@"was not playing sort of recently <%lf> seconds ago", *&v13];
LABEL_21:
      v25 = v15;
      nowPlayingContentItem = 0;
LABEL_22:
      *reason = v25;
      goto LABEL_7;
    }

    v16 = +[MRUserSettings currentSettings];
    [v16 electedPlayerInterval];
    v18 = v17;

    if (v14 < v18)
    {
      nowPlayingContentItem = [activePlayerClient nowPlayingContentItem];

      v19 = [NSString alloc];
      if (nowPlayingContentItem)
      {
        *reason = [v19 initWithFormat:@"was playing recently <%lf> seconds ago", *&v14];
        goto LABEL_6;
      }

      v25 = [v19 initWithFormat:@"was playing recently <%lf> seconds ago but not nowPlayingData", *&v14];
      goto LABEL_22;
    }

    v23 = [NSString alloc];
    v24 = v23;
    if (activePlayerClient)
    {
      v15 = [v23 initWithFormat:@"was not playing recently. Last played <%lf> seconds ago", *&v14];
      goto LABEL_21;
    }

    playerPath = [activeNowPlayingClient playerPath];
    v22 = [v24 initWithFormat:@"%@ has no activePlayer", playerPath];
  }

  else
  {
    v20 = [NSString alloc];
    if (activeNowPlayingClient)
    {
      playerPath = [activeNowPlayingClient playerPath];
      v22 = [v20 initWithFormat:@"%@ is not foregrounded and does not support background audio", playerPath];
    }

    else
    {
      playerPath = [clientCopy origin];
      v22 = [v20 initWithFormat:@"%@ has no activeNowPlayingClient", playerPath];
    }
  }

  *reason = v22;

  nowPlayingContentItem = 0;
LABEL_7:

  return nowPlayingContentItem;
}

- (void)_onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:(int64_t)event
{
  if (self->_electedPlayerPath)
  {
    activeNowPlayingClient = [(MRDNowPlayingOriginClient *)self->_originClient activeNowPlayingClient];
    activePlayerClient = [activeNowPlayingClient activePlayerClient];

    if ([activePlayerClient isPlaying])
    {
      playbackTimer = self->_playbackTimer;
      v8 = [NSString alloc];
      electedPlayerPath = self->_electedPlayerPath;
      v10 = sub_100140AD0(event);
      v11 = [v8 initWithFormat:@"electedPlayer %@ is playing for event <%@>", electedPlayerPath, v10];
    }

    else
    {
      [activePlayerClient timeSincePlaying];
      v16 = v15;
      v17 = +[MRUserSettings currentSettings];
      [v17 electedPlayerInterval];
      v19 = v18 + 5.0;

      if (v16 < v19)
      {
        playerPath = [activePlayerClient playerPath];
        v21 = [MRPersistentTimer alloc];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100141278;
        v29[3] = &unk_1004B6C78;
        v29[4] = self;
        v30 = playerPath;
        eventCopy = event;
        v32 = v19;
        v22 = playerPath;
        v23 = [v21 initWithInterval:@"com.apple.mediaremote.electedplayercontroller.playbacktimer" name:&_dispatch_main_q queue:v29 block:v19 - v16];
        v24 = self->_playbackTimer;
        self->_playbackTimer = v23;

LABEL_11:
        return;
      }

      playbackTimer = self->_playbackTimer;
      v25 = [NSString alloc];
      v26 = self->_electedPlayerPath;
      v10 = sub_100140AD0(event);
      v11 = [v25 initWithFormat:@"electedPlayer %@ was not playing recently for event <%@>", v26, v10];
    }

    v27 = v11;
    [(MRPersistentTimer *)playbackTimer invalidateWithReason:v11];

    goto LABEL_11;
  }

  v12 = self->_playbackTimer;
  v13 = [NSString alloc];
  v28 = sub_100140AD0(event);
  v14 = [v13 initWithFormat:@"no electedPlayer for event <%@>", v28];
  [(MRPersistentTimer *)v12 invalidateWithReason:v14];
}

@end