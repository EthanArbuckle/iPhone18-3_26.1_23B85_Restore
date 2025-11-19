@interface MRDProactiveRecommendedPlayerController
- (BOOL)_shouldUseNotification:(id)a3;
- (MRDProactiveRecommendedPlayerController)initWithOriginClient:(id)a3;
- (MRPlayerPath)proactiveRecommendedPlayerPath;
- (NSString)activeSystemEndpointOutputDeviceUID;
- (id)_onSyncSelf_calculateProactiveRecommendedPlayerForOriginClient:(id)a3 event:(int64_t)a4 reason:(id *)a5;
- (int64_t)_resolveChangeTypeWithOriginClient:(id)a3 forEvent:(int64_t)a4;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3;
- (void)_handleIsPlayingDidChangeNotification:(id)a3;
- (void)_handleNowPlayingApplicationDidChangeNotification:(id)a3;
- (void)_handleNowPlayingApplicationDidForegroundNotification:(id)a3;
- (void)_handlePlaybackQueueChangedNotification:(id)a3;
- (void)_onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:(int64_t)a3;
- (void)_onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:(int64_t)a3 withReason:(id)a4;
- (void)setActiveSystemEndpointOutputDeviceUID:(id)a3;
- (void)setOriginClient:(id)a3;
- (void)setOriginClient:(id)a3 withChangeType:(int64_t)a4;
@end

@implementation MRDProactiveRecommendedPlayerController

- (MRDProactiveRecommendedPlayerController)initWithOriginClient:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MRDProactiveRecommendedPlayerController;
  v5 = [(MRDProactiveRecommendedPlayerController *)&v12 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_handlePlaybackQueueChangedNotification:" name:kMRNowPlayingPlaybackQueueChangedNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"_handleIsPlayingDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_handleNowPlayingApplicationDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"_handleNowPlayingApplicationDidForegroundNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationDidForegroundNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v5 selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

    [(MRDProactiveRecommendedPlayerController *)v5 setOriginClient:v4];
  }

  return v5;
}

- (void)setOriginClient:(id)a3
{
  v20 = a3;
  v5 = self;
  objc_sync_enter(v5);
  p_originClient = &v5->_originClient;
  originClient = v5->_originClient;
  if (originClient)
  {
    v8 = originClient == v20;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = originClient;
    objc_storeStrong(&v5->_originClient, a3);
    v10 = [NSString alloc];
    v19 = [(MRDNowPlayingOriginClient *)v9 deviceInfo];
    v11 = [v19 deviceUID];
    v12 = [(MRDNowPlayingOriginClient *)v9 deviceInfo];
    v13 = [v12 name];
    v14 = [*p_originClient deviceInfo];
    v15 = [v14 deviceUID];
    v16 = [*p_originClient deviceInfo];
    v17 = [v16 name];
    v18 = [v10 initWithFormat:@"ProactiveRecommendedOrigin changed from <%@> (<%@>) to <%@> (<%@>)", v11, v13, v15, v17];
    [(MRDProactiveRecommendedPlayerController *)v5 _onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:0 withReason:v18];
  }

  objc_sync_exit(v5);
}

- (void)setOriginClient:(id)a3 withChangeType:(int64_t)a4
{
  v9 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [NSNumber numberWithInteger:a4];
  changeType = v6->_changeType;
  v6->_changeType = v7;

  [(MRDProactiveRecommendedPlayerController *)v6 setOriginClient:v9];
  objc_sync_exit(v6);
}

- (void)setActiveSystemEndpointOutputDeviceUID:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  activeSystemEndpointOutputDeviceUID = obj->_activeSystemEndpointOutputDeviceUID;
  obj->_activeSystemEndpointOutputDeviceUID = v4;

  objc_sync_exit(obj);
}

- (NSString)activeSystemEndpointOutputDeviceUID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_activeSystemEndpointOutputDeviceUID copy];
  objc_sync_exit(v2);

  return v3;
}

- (MRPlayerPath)proactiveRecommendedPlayerPath
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_proactiveRecommendedPlayerPath;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_shouldUseNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetOriginFromUserInfo();

  v6 = [(MRDNowPlayingOriginClient *)self->_originClient origin];
  LOBYTE(v4) = [v5 isEqual:v6];

  return v4;
}

- (void)_handlePlaybackQueueChangedNotification:(id)a3
{
  v7 = a3;
  v4 = [v7 playerPath];
  v5 = self;
  objc_sync_enter(v5);
  if ([(MRDProactiveRecommendedPlayerController *)v5 _shouldUseNotification:v7])
  {
    v6 = [[NSString alloc] initWithFormat:@"%@ PlaybackQueueChanged", v4];
    [(MRDProactiveRecommendedPlayerController *)v5 _onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:5 withReason:v6];

    [(MRDProactiveRecommendedPlayerController *)v5 _onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:5];
  }

  objc_sync_exit(v5);
}

- (void)_handleIsPlayingDidChangeNotification:(id)a3
{
  v12 = a3;
  v4 = [v12 userInfo];
  v5 = [v4 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
  v6 = [v5 BOOLValue];

  v7 = [v12 playerPath];
  v8 = self;
  objc_sync_enter(v8);
  if ([(MRDProactiveRecommendedPlayerController *)v8 _shouldUseNotification:v12])
  {
    v9 = [NSString alloc];
    v10 = @"stopped";
    if (v6)
    {
      v10 = @"started";
    }

    v11 = [v9 initWithFormat:@"%@ Playback %@", v7, v10];
    [(MRDProactiveRecommendedPlayerController *)v8 _onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:1 withReason:v11];

    [(MRDProactiveRecommendedPlayerController *)v8 _onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:1];
  }

  objc_sync_exit(v8);
}

- (void)_handleNowPlayingApplicationDidChangeNotification:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(MRDProactiveRecommendedPlayerController *)v4 _shouldUseNotification:v8])
  {
    v5 = [v8 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [[NSString alloc] initWithFormat:@"NowPlayingAppChanged to %@", v6];
    [(MRDProactiveRecommendedPlayerController *)v4 _onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:3 withReason:v7];
  }

  objc_sync_exit(v4);
}

- (void)_handleNowPlayingApplicationDidForegroundNotification:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(MRDProactiveRecommendedPlayerController *)v4 _shouldUseNotification:v11])
  {
    v5 = [v11 userInfo];
    v6 = [v5 objectForKeyedSubscript:kMRMediaRemoteApplicationForegroundUserInfoKey];
    v7 = [v6 BOOLValue];

    v8 = [NSString alloc];
    v9 = @"Back";
    if (v7)
    {
      v9 = @"Fore";
    }

    v10 = [v8 initWithFormat:@"Was %@grounded", v9];
    [(MRDProactiveRecommendedPlayerController *)v4 _onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:4 withReason:v10];
  }

  objc_sync_exit(v4);
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v7 = [v6 integerValue];

  if (v7 == 3)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    [(MRDProactiveRecommendedPlayerController *)self setActiveSystemEndpointOutputDeviceUID:v9];
    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];
    [v11 integerValue];

    v12 = v9;
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (void)_onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:(int64_t)a3 withReason:(id)a4
{
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1003AFE50(a3, v7, v8);
  }

  originClient = self->_originClient;
  v41 = 0;
  v10 = [(MRDProactiveRecommendedPlayerController *)self _onSyncSelf_calculateProactiveRecommendedPlayerForOriginClient:originClient event:a3 reason:&v41];
  v11 = v41;
  v12 = v41;
  v13 = [v10 playerPath];
  objc_storeStrong(&self->_mostRecentEventReason, a4);
  objc_storeStrong(&self->_mostRecentSelectionReason, v11);
  v14 = sub_10019CF04(a3);
  mostRecentEvent = self->_mostRecentEvent;
  self->_mostRecentEvent = v14;

  proactiveRecommendedPlayerPath = self->_proactiveRecommendedPlayerPath;
  v17 = v13;
  v18 = v17;
  if (v17 == proactiveRecommendedPlayerPath)
  {
  }

  else
  {
    v19 = [(MRPlayerPath *)v17 isEqual:proactiveRecommendedPlayerPath];

    if ((v19 & 1) == 0)
    {
      v20 = [(MRPlayerPath *)self->_proactiveRecommendedPlayerPath copy];
      previousProactiveRecommendedPlayerPath = self->_previousProactiveRecommendedPlayerPath;
      self->_previousProactiveRecommendedPlayerPath = v20;

      v22 = [(MRPlayerPath *)v18 copy];
      v23 = self->_proactiveRecommendedPlayerPath;
      self->_proactiveRecommendedPlayerPath = v22;

      objc_storeStrong(&self->_eventReason, self->_mostRecentEventReason);
      objc_storeStrong(&self->_selectionReason, self->_mostRecentSelectionReason);
      objc_storeStrong(&self->_event, self->_mostRecentEvent);
      v24 = [(MRDProactiveRecommendedPlayerController *)self _resolveChangeTypeWithOriginClient:self->_originClient forEvent:a3];
      v25 = _MRLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_previousProactiveRecommendedPlayerPath;
        v33 = self->_proactiveRecommendedPlayerPath;
        v35 = v7;
        v27 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
        v28 = v27;
        sub_10019CF04(a3);
        v29 = v34 = v24;

        *buf = 138413570;
        v43 = v26;
        v44 = 2112;
        v45 = v33;
        v46 = 2114;
        v47 = v27;
        v7 = v35;
        v48 = 2114;
        v49 = v29;
        v50 = 2114;
        v51 = v35;
        v52 = 2114;
        v53 = v12;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[MRDProactiveRecommendedPlayerController] ProactiveRecommendedPlayer changed from <%@> to <%@> changeType=<%{public}@>, event=%{public}@, eventReason=%{public}@, selectionReason=%{public}@", buf, 0x3Eu);

        v24 = v34;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019CF24;
      block[3] = &unk_1004B6B38;
      block[4] = self;
      v37 = v18;
      v39 = v24;
      v40 = a3;
      v38 = v12;
      dispatch_async(&_dispatch_main_q, block);
      changeType = self->_changeType;
      self->_changeType = 0;

      [(MRDProactiveRecommendedPlayerController *)self _onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:a3];
      goto LABEL_12;
    }
  }

  v31 = _MRLogForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v32 = self->_proactiveRecommendedPlayerPath;
    *buf = 138412802;
    v43 = v32;
    v44 = 2114;
    v45 = v7;
    v46 = 2114;
    v47 = v12;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "[MRDProactiveRecommendedPlayerController] ProactiveRecommendedPlayer remained <%@> eventReason=%{public}@, selectionReason=%{public}@", buf, 0x20u);
  }

LABEL_12:
}

- (int64_t)_resolveChangeTypeWithOriginClient:(id)a3 forEvent:(int64_t)a4
{
  v5 = a3;
  changeType = self->_changeType;
  if (!changeType)
  {
    v7 = 0;
LABEL_13:
    if (!self->_proactiveRecommendedPlayerPath)
    {
      if (self->_previousProactiveRecommendedPlayerPath)
      {
        v16 = [v5 activeNowPlayingClient];
        v17 = [v16 activePlayerClient];
        v18 = [v17 playerPath];
        v19 = [v18 isEqual:self->_previousProactiveRecommendedPlayerPath];

        if (v19)
        {
          v20 = +[MRDMediaRemoteServer server];
          v21 = [v20 nowPlayingServer];
          v22 = [v21 queryExistingPlayerPath:self->_previousProactiveRecommendedPlayerPath];

          v23 = [v22 playerClient];

          if (v23)
          {
            v24 = _MRLogForCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
              proactiveRecommendedPlayerPath = self->_proactiveRecommendedPlayerPath;
              previousProactiveRecommendedPlayerPath = self->_previousProactiveRecommendedPlayerPath;
              v28 = 138543874;
              v29 = v25;
              v30 = 2114;
              v31 = proactiveRecommendedPlayerPath;
              v32 = 2114;
              v33 = previousProactiveRecommendedPlayerPath;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[MRDProactiveRecommendedPlayerController] Manually setting changeType to %{public}@ because changeType uninitialized and playerPath %{public}@ is nil and previousPlayerPath %{public}@ is still valid", &v28, 0x20u);
            }

            v7 = 1;
          }
        }
      }
    }

    goto LABEL_14;
  }

  v7 = [(NSNumber *)changeType integerValue];
  if (v7 == 1)
  {
    if (self->_previousProactiveRecommendedPlayerPath)
    {
      v8 = +[MRDMediaRemoteServer server];
      v9 = [v8 nowPlayingServer];
      v10 = [v9 queryExistingPlayerPath:self->_previousProactiveRecommendedPlayerPath];

      v11 = [v10 playerClient];

      if (v11)
      {
        v7 = 1;
      }

      else
      {
        v12 = _MRLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
          v14 = self->_previousProactiveRecommendedPlayerPath;
          v28 = 138543618;
          v29 = v13;
          v30 = 2114;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDProactiveRecommendedPlayerController] Manually setting changeType to %{public}@ because previousPlayerPath %{public}@ does not exist anymore", &v28, 0x16u);
        }

        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  if (!self->_changeType)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (id)_onSyncSelf_calculateProactiveRecommendedPlayerForOriginClient:(id)a3 event:(int64_t)a4 reason:(id *)a5
{
  v7 = a3;
  v8 = [v7 activeNowPlayingClient];
  v9 = [v8 activePlayerClient];
  if ([v9 isPlaying])
  {
    v10 = @"is playing";
LABEL_5:
    *a5 = v10;
LABEL_6:
    v11 = v9;
    goto LABEL_7;
  }

  if ([v7 isActivityActive])
  {
    v10 = @"SiriIntent";
    goto LABEL_5;
  }

  if (([v8 isForegrounded] & 1) != 0 || objc_msgSend(v8, "supportsBackgroundAudio"))
  {
    [v9 timeSincePlaying];
    v14 = v13;
    if (a4 == 2)
    {
      v15 = [[NSString alloc] initWithFormat:@"was not playing sort of recently <%lf> seconds ago", *&v13];
LABEL_21:
      v25 = v15;
      v11 = 0;
LABEL_22:
      *a5 = v25;
      goto LABEL_7;
    }

    v16 = +[MRUserSettings currentSettings];
    [v16 proactiveRecommendedPlayerInterval];
    v18 = v17;

    if (v14 < v18)
    {
      v11 = [v9 nowPlayingContentItem];

      v19 = [NSString alloc];
      if (v11)
      {
        *a5 = [v19 initWithFormat:@"was playing recently <%lf> seconds ago", *&v14];
        goto LABEL_6;
      }

      v25 = [v19 initWithFormat:@"was playing recently <%lf> seconds ago but not nowPlayingData", *&v14];
      goto LABEL_22;
    }

    v23 = [NSString alloc];
    v24 = v23;
    if (v9)
    {
      v15 = [v23 initWithFormat:@"was not playing recently. Last played <%lf> seconds ago", *&v14];
      goto LABEL_21;
    }

    v21 = [v8 playerPath];
    v22 = [v24 initWithFormat:@"%@ has no activePlayer", v21];
  }

  else
  {
    v20 = [NSString alloc];
    if (v8)
    {
      v21 = [v8 playerPath];
      v22 = [v20 initWithFormat:@"%@ is not foregrounded and does not support background audio", v21];
    }

    else
    {
      v21 = [v7 origin];
      v22 = [v20 initWithFormat:@"%@ has no activeNowPlayingClient", v21];
    }
  }

  *a5 = v22;

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)_onSyncSelf_maybeSetupPlaybackTimeoutTimerForEvent:(int64_t)a3
{
  if (self->_proactiveRecommendedPlayerPath)
  {
    v5 = [(MRDNowPlayingOriginClient *)self->_originClient activeNowPlayingClient];
    v6 = [v5 activePlayerClient];

    if ([v6 isPlaying])
    {
      playbackTimer = self->_playbackTimer;
      v8 = [NSString alloc];
      proactiveRecommendedPlayerPath = self->_proactiveRecommendedPlayerPath;
      v10 = sub_10019CF04(a3);
      v11 = [v8 initWithFormat:@"proactiveRecommendedPlayer %@ is playing for event <%@>", proactiveRecommendedPlayerPath, v10];
    }

    else
    {
      [v6 timeSincePlaying];
      v16 = v15;
      v17 = +[MRUserSettings currentSettings];
      [v17 proactiveRecommendedPlayerInterval];
      v19 = v18 + 5.0;

      if (v16 < v19)
      {
        v20 = [v6 playerPath];
        v21 = [MRPersistentTimer alloc];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10019D6AC;
        v29[3] = &unk_1004B6C78;
        v29[4] = self;
        v30 = v20;
        v31 = a3;
        v32 = v19;
        v22 = v20;
        v23 = [v21 initWithInterval:@"com.apple.mediaremote.proactiverecommendedplayercontroller.playbacktimer" name:&_dispatch_main_q queue:v29 block:v19 - v16];
        v24 = self->_playbackTimer;
        self->_playbackTimer = v23;

LABEL_11:
        return;
      }

      playbackTimer = self->_playbackTimer;
      v25 = [NSString alloc];
      v26 = self->_proactiveRecommendedPlayerPath;
      v10 = sub_10019CF04(a3);
      v11 = [v25 initWithFormat:@"proactiveRecommendedPlayer %@ was not playing recently for event <%@>", v26, v10];
    }

    v27 = v11;
    [(MRPersistentTimer *)playbackTimer invalidateWithReason:v11];

    goto LABEL_11;
  }

  v12 = self->_playbackTimer;
  v13 = [NSString alloc];
  v28 = sub_10019CF04(a3);
  v14 = [v13 initWithFormat:@"no proactiveRecommendedPlayer for event <%@>", v28];
  [(MRPersistentTimer *)v12 invalidateWithReason:v14];
}

@end