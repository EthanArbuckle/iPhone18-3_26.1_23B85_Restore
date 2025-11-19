@interface MRDGroupSessionManager
- (BOOL)automaticSharePlayPreferenceEnabled;
- (BOOL)canDiscoverGroupSessions;
- (BOOL)checkCanJoinGroupSessionWithError:(id *)a3;
- (BOOL)sessionManagementScreenVisible;
- (BOOL)shouldNotifyForSessionIdentifier:(id)a3;
- (MRDGroupSession)session;
- (MRDGroupSessionManager)initWithEligibilityMonitor:(id)a3;
- (NSMutableSet)discoveredSessions;
- (id)assertSessionManagementScreenVisible;
- (id)listenerForSessionWithIdentifier:(id)a3;
- (void)_joinGroupSessionWithToken:(id)a3 completion:(id)a4;
- (void)acknowledgeSession:(id)a3;
- (void)addObserver:(id)a3;
- (void)advertiser:(id)a3 didReceiveJoinRequest:(id)a4 accessHandler:(id)a5;
- (void)cancelAcknowledgeResetTimerForSessionIdentifier:(id)a3;
- (void)cleanupExistingSessionIfNeeded;
- (void)clearDiscoveredSessions;
- (void)collectDiagnostic:(id)a3;
- (void)dealloc;
- (void)dismissAllDiscoveredSessions;
- (void)displayJoinRequest:(id)a3 handler:(id)a4;
- (void)eligibilityMonitor:(id)a3 eligibilityStatusDidChange:(id)a4;
- (void)fetchUserIdentity:(id)a3;
- (void)finishRemoteControlGroupSession:(id)a3;
- (void)groupSessionProxyAuthorizationListener:(id)a3 didReceiveJoinRequest:(id)a4 withSessionToken:(id)a5 handler:(id)a6;
- (void)handleBoopAdvertisementEnabledChangeNotification:(id)a3;
- (void)handleDeviceInfoChangeNotification:(id)a3;
- (void)handleGroupSessionEvent:(int64_t)a3 withOptions:(id)a4 completion:(id)a5;
- (void)handleGroupSessionSelectionEvent:(id)a3 forDiscoveredSession:(id)a4 completion:(id)a5;
- (void)handleLocalMusicStateUpdateNotification:(id)a3;
- (void)handleNowPlayingApplicationDidChangeNotification:(id)a3;
- (void)handlePlaybackStateDidChangeNotification:(id)a3;
- (void)invalidatePlaybackTimeoutTimerWithReason:(id)a3;
- (void)joinGroupSessionWithNearbyGroup:(id)a3 hostSigningKey:(id)a4 joinToken:(id)a5 completion:(id)a6;
- (void)joinGroupSessionWithToken:(id)a3 completion:(id)a4;
- (void)launchApplicationForDiscoveredSessionIdentifier:(id)a3 foreground:(BOOL)a4 completion:(id)a5;
- (void)leaveRemoteControlGroupSession:(id)a3;
- (void)listener:(id)a3 didDiscoverSession:(id)a4;
- (void)listener:(id)a3 didLoseSession:(id)a4;
- (void)notifyObserversWithBlock:(id)a3;
- (void)reevaluateAdvertisement;
- (void)reevaluateDiscoveryMode;
- (void)reevaluatePlaybackState;
- (void)reevaluateProxyAdvertisement;
- (void)releaseSessionManagementScreenVisibleAssertion;
- (void)removeObserver:(id)a3;
- (void)resetAcknowledgementForSessionIdentifier:(id)a3;
- (void)session:(id)a3 didChangeState:(int64_t)a4;
- (void)session:(id)a3 didUpdateParticipants:(id)a4;
- (void)session:(id)a3 didUpdatePendingParticipants:(id)a4;
- (void)setDiscoveryEnabled:(BOOL)a3;
- (void)startAcknowledgeResetTimerForSessionIdentifier:(id)a3;
- (void)updateAdvertisementPreferences;
@end

@implementation MRDGroupSessionManager

- (MRDGroupSession)session
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000350CC;
  v11 = sub_100035A1C;
  v12 = 0;
  v3 = [(MRDGroupSessionManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A698;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)reevaluateAdvertisement
{
  v3 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = self->_session;
  v5 = [(MRDGroupSession *)v4 state]& 0xFFFFFFFFFFFFFFFELL;
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = [(MRDGroupSessionManager *)self pendingCompletions];
    v9 = [(MRDGroupSession *)v4 identifier];
    v10 = [v8 objectForKey:v9];
    v7 = v10 != 0;
  }

  else
  {
    v7 = 1;
  }

  v11 = [(MRDGroupSession *)v4 isHosted];
  v12 = +[MRDMediaRemoteServer server];
  v13 = [v12 nowPlayingServer];
  v14 = +[MROrigin localOrigin];
  v15 = [v13 originClientForOrigin:v14];
  v16 = [v15 activeNowPlayingClient];
  v17 = [v16 activePlayerClient];

  if ([v17 isPlaying])
  {
    v18 = [v17 playerPath];
    v19 = [v18 client];
    v20 = [v19 isSystemMediaApplication] ^ 1;
  }

  else
  {
    v20 = 0;
  }

  airPlayLeaderGroupSessionToken = self->_airPlayLeaderGroupSessionToken;
  if (![(MRDGroupSessionManager *)self advertisingPreferenceEnabled])
  {
    v22 = @"Setting disabled";
    goto LABEL_14;
  }

  if (MSVDeviceIsAppleTV())
  {
    v22 = @"Platform not supported";
    goto LABEL_14;
  }

  if (MSVDeviceIsAudioAccessory())
  {
    v27 = +[MRSharedSettings currentSettings];
    v28 = [v27 supportGroupSessionHomePodBoop];

    if (!v28)
    {
      v22 = @"Feature not enabled";
      goto LABEL_14;
    }
  }

  if (MSVDeviceIsAudioAccessory())
  {
    v29 = +[MRUserSettings currentSettings];
    v30 = [v29 groupSessionBoopAdvertisementEnabled];

    if (!v30)
    {
      v22 = @"Disabled by user";
      goto LABEL_14;
    }
  }

  if (v4)
  {
    v22 = @"Session not ready";
  }

  else
  {
    v22 = @"No session";
  }

  if (v4 == 0 || v7)
  {
    goto LABEL_14;
  }

  if (!v11)
  {
    v22 = @"Session is not hosted.";
    if (![(MRDGroupSessionManager *)self isAdvertising])
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v31 = airPlayLeaderGroupSessionToken ? 1 : v20;
  v22 = v20 ? @"Another app is now playing." : @"Leader token available";
  if (v31)
  {
LABEL_14:
    if (![(MRDGroupSessionManager *)self isAdvertising])
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v25 = [(MRDGroupSessionManager *)self notAdvertisingReason];
      v24 = v25;
      if (v25 != v22)
      {
        v26 = [(__CFString *)v25 isEqual:v22];

        if (v26)
        {
          goto LABEL_22;
        }

        v24 = _MRLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v34 = 138543362;
          v35 = v22;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Not advertising hosted session because: %{public}@", &v34, 0xCu);
        }
      }

      goto LABEL_18;
    }

LABEL_15:
    [(MRDGroupSessionManager *)self setIsAdvertising:0];
    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138543362;
      v35 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Stopping advertisement because: %{public}@", &v34, 0xCu);
    }

    v24 = [(MRDGroupSessionManager *)self advertiser];
    [v24 endAdvertising];
LABEL_18:

    goto LABEL_22;
  }

  if (![(MRDGroupSessionManager *)self isAdvertising])
  {
    [(MRDGroupSessionManager *)self setIsAdvertising:1];
    v32 = _MRLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138543362;
      v35 = v4;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Begin advertising for session: %{public}@", &v34, 0xCu);
    }

    v33 = [(MRDGroupSessionManager *)self advertiser];
    [v33 beginAdvertising];
  }

  v22 = 0;
LABEL_22:
  [(MRDGroupSessionManager *)self setNotAdvertisingReason:v22];
}

- (void)reevaluatePlaybackState
{
  v3 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = +[MROrigin localOrigin];
  v7 = [v5 originClientForOrigin:v6];
  v8 = [v7 activeNowPlayingClient];
  v9 = [v8 activePlayerClient];

  if (![(MRDGroupSession *)self->_session isHosted]|| [(MRDGroupSession *)self->_session state]!= 3)
  {
    v12 = @"No active session";
    goto LABEL_6;
  }

  v10 = [(MRDGroupSession *)self->_session participants];
  v11 = [v10 count];

  if (v11 <= 1)
  {
    v12 = @"No participants in session";
LABEL_6:
    [(MRDGroupSessionManager *)self invalidatePlaybackTimeoutTimerWithReason:v12];
    goto LABEL_7;
  }

  if ([v9 isPlaying] && self->_playbackTimeoutTimer)
  {
    [(MRDGroupSessionManager *)self invalidatePlaybackTimeoutTimerWithReason:@"Session changed to playing"];
  }

  if (([v9 isPlaying] & 1) == 0 && !self->_playbackTimeoutTimer)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Starting timeout timer because: Session changed to not playing", buf, 2u);
    }

    objc_initWeak(buf, self);
    v14 = +[MRUserSettings currentSettings];
    [v14 groupSessionEndAfterPauseInterval];
    v16 = v15;

    v17 = [(MRDGroupSessionManager *)self queue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000C8C44;
    v20[3] = &unk_1004B94E8;
    objc_copyWeak(v21, buf);
    v21[1] = v16;
    v18 = [MSVTimer timerWithInterval:0 repeats:v17 queue:v20 block:*&v16 + 2.0];
    playbackTimeoutTimer = self->_playbackTimeoutTimer;
    self->_playbackTimeoutTimer = v18;

    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }

LABEL_7:
}

- (MRDGroupSessionManager)initWithEligibilityMonitor:(id)a3
{
  v5 = a3;
  v54.receiver = self;
  v54.super_class = MRDGroupSessionManager;
  v6 = [(MRDGroupSessionManager *)&v54 init];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = +[NSHashTable weakObjectsHashTable];
  observers = v6->_observers;
  v6->_observers = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.amp.MediaRemote.MRDGroupSessionManager.queue", v9);
  queue = v6->_queue;
  v6->_queue = v10;

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = MRGroupSessionSubsystemGetNotificationQueue();
  v14 = dispatch_queue_create_with_target_V2("com.apple.amp.MediaRemote.MRDGroupSessionManager.notificationQueue", v12, v13);
  notificationQueue = v6->_notificationQueue;
  v6->_notificationQueue = v14;

  v16 = +[NSMapTable strongToStrongObjectsMapTable];
  pendingCompletions = v6->_pendingCompletions;
  v6->_pendingCompletions = v16;

  v18 = objc_alloc_init(NSMutableSet);
  discoveredSessions = v6->_discoveredSessions;
  v6->_discoveredSessions = v18;

  v20 = objc_alloc_init(NSMutableSet);
  notificationSuppressIDs = v6->_notificationSuppressIDs;
  v6->_notificationSuppressIDs = v20;

  v22 = objc_alloc_init(NSMutableOrderedSet);
  acknowledgedSessionIdentifiers = v6->_acknowledgedSessionIdentifiers;
  v6->_acknowledgedSessionIdentifiers = v22;

  v24 = objc_alloc_init(NSMutableDictionary);
  acknowledgeResetTimers = v6->_acknowledgeResetTimers;
  v6->_acknowledgeResetTimers = v24;

  v26 = objc_alloc_init(NSMutableDictionary);
  notifiedPendingParticipants = v6->_notifiedPendingParticipants;
  v6->_notifiedPendingParticipants = v26;

  objc_storeStrong(&v6->_eligibilityMonitor, a3);
  v6->_advertisingPreferenceEnabled = MRGroupSessionNearbyContactDiscoveryEnabled();
  v28 = [_TtC12mediaremoted24NearbySessionsAdvertiser createWithDelegate:v6];
  advertiser = v6->_advertiser;
  v6->_advertiser = v28;

  if (MSVDeviceIsAudioAccessory())
  {
    v30 = objc_alloc_init(_TtC12mediaremoted16HomePodUIManager);
    uiManager = v6->_uiManager;
    v6->_uiManager = v30;

    v32 = +[MRDGroupSessionHomeObserver shared];
    v33 = 136;
LABEL_6:
    v38 = *(&v6->super.isa + v33);
    *(&v6->super.isa + v33) = v32;

    goto LABEL_7;
  }

  v34 = +[MRDGroupSessionUIManager create];
  v35 = v6->_uiManager;
  v6->_uiManager = v34;

  v36 = +[MRUserSettings currentSettings];
  v37 = [v36 groupSessionListenForProxyJoinRequests];

  if (v37)
  {
    v32 = [[MRDGroupSessionProxyAuthorizationListener alloc] initWithDelegate:v6];
    v33 = 144;
    goto LABEL_6;
  }

LABEL_7:
  v39 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.TelephonyUtilities.sharePlayAppPolicies"];
  sharePlayDefaults = v6->_sharePlayDefaults;
  v6->_sharePlayDefaults = v39;

  MRMediaRemoteSetWantsNowPlayingNotifications();
  v41 = +[NSNotificationCenter defaultCenter];
  [v41 addObserver:v6 selector:"handleNowPlayingApplicationDidChangeNotification:" name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];

  v42 = +[NSNotificationCenter defaultCenter];
  [v42 addObserver:v6 selector:"handlePlaybackStateDidChangeNotification:" name:kMRMediaRemotePlayerPlaybackStateDidChangeNotification object:0];

  v43 = +[NSNotificationCenter defaultCenter];
  [v43 addObserver:v6 selector:"handleLocalMusicStateUpdateNotification:" name:@"MRDMusicUserStateCenterLocalStateDidUpdateNotification" object:0];

  v44 = +[NSNotificationCenter defaultCenter];
  [v44 addObserver:v6 selector:"handleNearbyDiscoveryPreferenceChangedNotification:" name:MRGroupSessionNearbyContactDiscoveryPreferenceDidChangeNotification object:0];

  [v5 addObserver:v6];
  v45 = +[MRSharedSettings currentSettings];
  v46 = [v45 supportGroupSessionHomePodBoop];

  if (v46)
  {
    if (MSVDeviceIsAudioAccessory())
    {
      v47 = +[NSNotificationCenter defaultCenter];
      [v47 addObserver:v6 selector:"handleDeviceInfoChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];
    }

    v48 = +[NSNotificationCenter defaultCenter];
    v49 = +[MRUserSettings groupSessionBoopAdvertisementEnabledDidChangeNotification];
    [v48 addObserver:v6 selector:"handleBoopAdvertisementEnabledChangeNotification:" name:v49 object:0];
  }

  v50 = [(MRDGroupSessionManager *)v6 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3C8C;
  block[3] = &unk_1004B6D08;
  v53 = v6;
  dispatch_async(v50, block);

LABEL_12:
  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Dealloc", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = MRDGroupSessionManager;
  [(MRDGroupSessionManager *)&v5 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3DE0;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3EE8;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)leaveRemoteControlGroupSession:(id)a3
{
  v3 = a3;
  if ([v3 isHosted])
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7A58();
    }
  }

  else
  {
    [v3 finish];
  }
}

- (void)finishRemoteControlGroupSession:(id)a3
{
  v3 = a3;
  if ([v3 isHosted])
  {
    [v3 finish];
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7AC8();
    }
  }
}

- (void)joinGroupSessionWithToken:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C5360;
  v8[3] = &unk_1004BB208;
  v9 = a3;
  v10 = a4;
  v6 = v9;
  v7 = v10;
  [(MRDGroupSessionManager *)self _joinGroupSessionWithToken:v6 completion:v8];
}

- (id)listenerForSessionWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && (-[MRDGroupSessionManager homePodListener](self, "homePodListener"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasDiscoveredSessionForIdentifier:v4], v5, v6))
  {
    v7 = [(MRDGroupSessionManager *)self homePodListener];
  }

  else
  {
    v7 = [(MRDGroupSessionManager *)self listener];
  }

  v8 = v7;

  return v8;
}

- (void)_joinGroupSessionWithToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C58E8;
  v17[3] = &unk_1004B9BE0;
  v17[4] = self;
  v7 = a4;
  v18 = v7;
  v8 = objc_retainBlock(v17);
  v9 = [(MRDGroupSessionManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C59C4;
  v13[3] = &unk_1004B7450;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(v9, v13);
}

- (id)assertSessionManagementScreenVisible
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000350CC;
  v11 = sub_100035A1C;
  v12 = 0;
  v3 = [(MRDGroupSessionManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C6454;
  v6[3] = &unk_1004B6958;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)releaseSessionManagementScreenVisibleAssertion
{
  v3 = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6608;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)sessionManagementScreenVisible
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MRDGroupSessionManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C670C;
  v5[3] = &unk_1004B6D30;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)handleGroupSessionEvent:(int64_t)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 == 1)
  {
    v10 = [v8 objectForKeyedSubscript:MRGroupSessionEventOptionDiscoveredSessionIdentifier];
    if (v10)
    {
      [(MRDGroupSessionManager *)self handleGroupSessionSelectionEvent:v8 forDiscoveredSession:v10 completion:v9];
    }

    else
    {
      v12 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"No identifier provided."];
      v9[2](v9, v12);
    }
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7CCC();
    }

    v10 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Unknown event type: %ld", a3];
    v9[2](v9, v10);
  }
}

- (void)handleGroupSessionSelectionEvent:(id)a3 forDiscoveredSession:(id)a4 completion:(id)a5
{
  v8 = MRGroupSessionEventOptionLaunchInBackground;
  v9 = a5;
  v11 = a4;
  v10 = [a3 objectForKeyedSubscript:v8];
  LODWORD(a3) = [v10 BOOLValue];

  [(MRDGroupSessionManager *)self launchApplicationForDiscoveredSessionIdentifier:v11 foreground:a3 ^ 1 completion:v9];
}

- (void)launchApplicationForDiscoveredSessionIdentifier:(id)a3 foreground:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MRDGroupSessionManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C6A08;
  v13[3] = &unk_1004BB2D0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)cleanupExistingSessionIfNeeded
{
  v3 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = self->_session;
  session = self->_session;
  self->_session = 0;

  v6 = objc_alloc_init(NSMutableDictionary);
  notifiedPendingParticipants = self->_notifiedPendingParticipants;
  self->_notifiedPendingParticipants = v6;

  self->_hasGuestParticipants = 0;
  if (v4)
  {
    v8 = [(MRDGroupSession *)v4 isHosted];
    v9 = [(MRDGroupSession *)v4 isHosted];
    [(MRDGroupSession *)v4 removeObserver:self];
    if (v9)
    {
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Implicitly ending %{public}@ because of new session.", buf, 0xCu);
      }

      [(MRDGroupSessionManager *)self finishRemoteControlGroupSession:v4];
    }

    if ((v8 & 1) == 0)
    {
      v11 = +[MRDMediaRemoteServer server];
      v12 = [v11 routingServer];
      v13 = [v12 systemEndpointController];
      v14 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"MRGroupSession.implicit.leave"];
      [v13 updateSystemEndpointForRequest:v14];

      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Implicitly leaving %{public}@ because of new session.", buf, 0xCu);
      }

      [(MRDGroupSessionManager *)self leaveRemoteControlGroupSession:v4];
    }
  }

  else
  {
    [0 removeObserver:self];
  }

  v16 = [(MRDGroupSessionManager *)self pendingCompletions];
  v17 = [(MRDGroupSession *)v4 identifier];
  v18 = [v16 objectForKey:v17];

  if (v18)
  {
    v19 = [(MRDGroupSessionManager *)self pendingCompletions];
    v20 = [(MRDGroupSession *)v4 identifier];
    [v19 removeObjectForKey:v20];

    v21 = [(MRDGroupSessionManager *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C7044;
    block[3] = &unk_1004B79A0;
    v35 = v18;
    dispatch_async(v21, block);

    v22 = v35;
LABEL_17:

    goto LABEL_18;
  }

  if (v4)
  {
    if ([(MRDGroupSession *)v4 isHosted])
    {
      v23 = [(MRDGroupSessionManager *)self advertiser];
      [v23 setActiveSession:0 identity:0];

      [(MRDGroupSessionManager *)self reevaluateAdvertisement];
    }

    v24 = [(MRDGroupSessionManager *)self observers];
    v25 = [v24 allObjects];

    v26 = [(MRDGroupSessionManager *)self notificationQueue];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1000C70C4;
    v30 = &unk_1004B69D0;
    v31 = v25;
    v32 = v4;
    v33 = self;
    v22 = v25;
    dispatch_async(v26, &v27);

    goto LABEL_17;
  }

LABEL_18:
  [(MRDGroupSessionManager *)self reevaluateDiscoveryMode:v27];
}

- (void)fetchUserIdentity:(id)a3
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000350CC;
  v36 = sub_100035A1C;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000350CC;
  v30 = sub_100035A1C;
  v31 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C7540;
  v22[3] = &unk_1004BB2F8;
  v24 = &v32;
  v25 = &v26;
  v22[4] = self;
  v4 = a3;
  v23 = v4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C7658;
  v20[3] = &unk_1004B79A0;
  v5 = objc_retainBlock(v22);
  v21 = v5;
  v6 = objc_retainBlock(v20);
  v7 = [MRBlockGuard alloc];
  v8 = [(MRDGroupSessionManager *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C7710;
  v18[3] = &unk_1004B6FE8;
  v9 = v4;
  v19 = v9;
  v10 = [v7 initWithTimeout:@"Wait for user identity" reason:v8 queue:v18 handler:10.0];
  v11 = v33[5];
  v33[5] = v10;

  v12 = +[NSNotificationCenter defaultCenter];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C7790;
  v16[3] = &unk_1004BB320;
  v13 = v6;
  v17 = v13;
  v14 = [v12 addObserverForName:@"MRDMusicUserStateCenterCloudStateDidUpdateNotification" object:0 queue:0 usingBlock:v16];
  v15 = v27[5];
  v27[5] = v14;

  v13[2](v13);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
}

- (void)joinGroupSessionWithNearbyGroup:(id)a3 hostSigningKey:(id)a4 joinToken:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v14);

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000C7A74;
  v35[3] = &unk_1004B9BE0;
  v35[4] = self;
  v15 = v13;
  v36 = v15;
  v16 = objc_retainBlock(v35);
  v17 = +[MRDMusicUserStateCenter sharedCenter];
  v18 = [v17 localActiveIdentity];

  if (!v18)
  {
    v29 = _MRLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7D78();
    }

    v30 = MRGroupSessionError;
    v31 = @"Cannot join session without identity.";
    goto LABEL_10;
  }

  if ([v18 type] != 1)
  {
    v32 = _MRLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7D3C();
    }

    v30 = MRGroupSessionError;
    v31 = @"Cannot join session without resolvable identity.";
LABEL_10:
    v33 = [NSError msv_errorWithDomain:v30 code:4 debugDescription:v31];
    (v16[2])(v16, v33);

    goto LABEL_11;
  }

  v19 = [MRDGroupSessionProvider remoteControlSessionForExistingSessionWithNearbyGroup:v10 identity:v18 hostSigningKey:v11 joinToken:v12];
  v34 = v12;
  v20 = v11;
  v21 = v10;
  session = self->_session;
  self->_session = v19;
  v23 = v19;

  v24 = objc_alloc_init(NSMutableDictionary);
  notifiedPendingParticipants = self->_notifiedPendingParticipants;
  self->_notifiedPendingParticipants = v24;

  self->_hasGuestParticipants = 0;
  v26 = [(MRDGroupSessionManager *)self pendingCompletions];
  v27 = objc_retainBlock(v15);
  v28 = [(MRDGroupSession *)v23 identifier];
  [v26 setObject:v27 forKey:v28];

  v10 = v21;
  v11 = v20;
  v12 = v34;

  [(MRDGroupSession *)v23 addObserver:self];
  [(MRDGroupSession *)v23 start];

  [(MRDGroupSessionManager *)self reevaluateDiscoveryMode];
LABEL_11:
}

- (BOOL)checkCanJoinGroupSessionWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000350CC;
  v12 = sub_100035A1C;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7C68;
  v7[3] = &unk_1004B9E60;
  v7[4] = self;
  v7[5] = &v8;
  v4 = objc_retainBlock(v7);
  v5 = (v4[2])();
  if (a3)
  {
    *a3 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)dismissAllDiscoveredSessions
{
  v3 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NSMutableSet *)self->_discoveredSessions copy];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Dismissing all discovered sessions", buf, 2u);
  }

  v6 = [(MRDGroupSessionManager *)self notificationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C7ED4;
  v8[3] = &unk_1004B68F0;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)reevaluateProxyAdvertisement
{
  v3 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = self->_airPlayLeaderGroupSessionToken;
  if (![(MRDGroupSessionManager *)self advertisingPreferenceEnabled])
  {
    v5 = @"Setting disabled";
    goto LABEL_5;
  }

  if (MSVDeviceIsAppleTV())
  {
    v5 = @"Platform not supported";
LABEL_5:
    if ([(MRDGroupSessionManager *)self isProxyAdvertising])
    {
LABEL_6:
      [(MRDGroupSessionManager *)self setIsProxyAdvertising:0];
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Stopping proxy advertisement because: %{public}@", &v16, 0xCu);
      }

      v7 = [(MRDGroupSessionManager *)self advertiser];
      [v7 endProxyAdvertising];

      [(MRDGroupSessionManager *)self reevaluateAdvertisement];
      goto LABEL_24;
    }

    if (v4)
    {
      v8 = [(MRDGroupSessionManager *)self notProxyAdvertisingReason];
      v9 = v8;
      if (v8 != v5)
      {
        v10 = [v8 isEqual:v5];

        if (v10)
        {
          goto LABEL_24;
        }

        v9 = _MRLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 138543362;
          v17 = v5;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Not advertising proxy session because: %{public}@", &v16, 0xCu);
        }
      }

      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (MSVDeviceIsAudioAccessory())
  {
    v11 = +[MRUserSettings currentSettings];
    v12 = [v11 groupSessionBoopAdvertisementEnabled];

    if (!v12)
    {
      v5 = @"Disabled by user";
      goto LABEL_5;
    }
  }

  v13 = [(MRDGroupSessionManager *)self isProxyAdvertising];
  if (!v4)
  {
    v5 = @"Leader token not available";
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  if ((v13 & 1) == 0)
  {
    [(MRDGroupSessionManager *)self reevaluateAdvertisement];
    [(MRDGroupSessionManager *)self setIsProxyAdvertising:1];
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Begin proxy advertising for token: %{public}@", &v16, 0xCu);
    }

    v15 = [(MRDGroupSessionManager *)self advertiser];
    [v15 beginProxyAdvertisingWithToken:v4];
  }

  v5 = 0;
LABEL_24:
  [(MRDGroupSessionManager *)self setNotProxyAdvertisingReason:v5];
}

- (void)updateAdvertisementPreferences
{
  v3 = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C833C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)canDiscoverGroupSessions
{
  v3 = +[MRDMusicUserStateCenter sharedCenter];
  if ([v3 isMusicAppInstalled])
  {
    v4 = [(MRDGroupSessionManager *)self eligibilityMonitor];
    v5 = [v4 eligibilityStatus];
    if ([v5 idsAccountIsValid])
    {
      v6 = self->_session == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reevaluateDiscoveryMode
{
  v3 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MRDGroupSessionManager *)self canDiscoverGroupSessions];

  [(MRDGroupSessionManager *)self setDiscoveryEnabled:v4];
}

- (void)setDiscoveryEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  listener = self->_listener;
  if (v3)
  {
    if (!listener)
    {
      v7 = _MRLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Start listening for nearby sessions", buf, 2u);
      }

      v8 = [_TtC12mediaremoted22NearbySessionsListener createWithDelegate:self];
      v9 = self->_listener;
      self->_listener = v8;

      v10 = +[MRSharedSettings currentSettings];
      v11 = [v10 supportGroupSessionHomePodBoop];

      if (v11)
      {
        v12 = [_TtC12mediaremoted22NearbySessionsListener createForHomePodWithDelegate:self];
        homePodListener = self->_homePodListener;
        self->_homePodListener = v12;
      }
    }
  }

  else if (listener)
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Stop listening for nearby sessions", v17, 2u);
    }

    v15 = self->_listener;
    self->_listener = 0;

    v16 = self->_homePodListener;
    self->_homePodListener = 0;

    [(MRDGroupSessionManager *)self clearDiscoveredSessions];
  }
}

- (BOOL)shouldNotifyForSessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  LOBYTE(self) = [(NSMutableOrderedSet *)self->_acknowledgedSessionIdentifiers containsObject:v4];
  return self ^ 1;
}

- (BOOL)automaticSharePlayPreferenceEnabled
{
  v2 = [(NSUserDefaults *)self->_sharePlayDefaults objectForKey:@"CPAppPolicy.AutoSharePlayToggle"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)startAcknowledgeResetTimerForSessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v6 = [(MRDGroupSessionManager *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C87DC;
  v9[3] = &unk_1004BB348;
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  v8 = [MSVTimer timerWithInterval:0 repeats:v6 queue:v9 block:480.0];
  [(NSMutableDictionary *)self->_acknowledgeResetTimers setObject:v8 forKeyedSubscript:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)cancelAcknowledgeResetTimerForSessionIdentifier:(id)a3
{
  v6 = a3;
  v4 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(NSMutableDictionary *)self->_acknowledgeResetTimers objectForKeyedSubscript:v6];
  [v5 invalidate];

  [(NSMutableDictionary *)self->_acknowledgeResetTimers setObject:0 forKeyedSubscript:v6];
}

- (void)resetAcknowledgementForSessionIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v4);

  [(NSMutableOrderedSet *)self->_acknowledgedSessionIdentifiers removeObject:v5];
}

- (void)clearDiscoveredSessions
{
  v3 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NSMutableSet *)self->_discoveredSessions copy];
  v5 = [(MRDGroupSessionManager *)self notificationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8AB8;
  block[3] = &unk_1004B68F0;
  v9 = v4;
  v10 = self;
  v6 = v4;
  dispatch_async(v5, block);

  [(NSMutableSet *)self->_discoveredSessions removeAllObjects];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C8BE0;
  v7[3] = &unk_1004BB370;
  v7[4] = self;
  [(MRDGroupSessionManager *)self notifyObserversWithBlock:v7];
}

- (void)invalidatePlaybackTimeoutTimerWithReason:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MRDGroupSessionManager *)self playbackTimeoutTimer];

  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Invalidating timeout timer because: %@", &v9, 0xCu);
    }

    v8 = [(MRDGroupSessionManager *)self playbackTimeoutTimer];
    [v8 invalidate];

    [(MRDGroupSessionManager *)self setPlaybackTimeoutTimer:0];
  }
}

- (void)displayJoinRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MRDGroupSessionManager *)self sessionManagementScreenVisible])
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Suppressing join request because session management UI is visible", v9, 2u);
    }
  }

  else
  {
    v8 = [(MRDGroupSessionManager *)self uiManager];
    [v8 displayJoinRequest:v6 handler:v7];
  }
}

- (void)session:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_1001B1B38(a4);
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Processing state change to: %{public}@ for session: %{public}@.", buf, 0x16u);
  }

  v9 = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C90EC;
  block[3] = &unk_1004B6AC0;
  v12 = v6;
  v13 = a4;
  block[4] = self;
  v10 = v6;
  dispatch_async(v9, block);
}

- (void)session:(id)a3 didUpdateParticipants:(id)a4
{
  v5 = [(MRDGroupSessionManager *)self queue:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9BC8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)session:(id)a3 didUpdatePendingParticipants:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isHosted] & 1) == 0)
  {
    v8 = [(MRDGroupSessionManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C9CAC;
    block[3] = &unk_1004B69D0;
    v10 = v7;
    v11 = self;
    v12 = v6;
    dispatch_async(v8, block);
  }
}

- (void)acknowledgeSession:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4 && ![v4 source])
  {
    if ([(NSMutableOrderedSet *)self->_acknowledgedSessionIdentifiers count]>= 0xB)
    {
      [(NSMutableOrderedSet *)self->_acknowledgedSessionIdentifiers removeObjectAtIndex:0];
    }

    acknowledgedSessionIdentifiers = self->_acknowledgedSessionIdentifiers;
    v7 = [v4 identifier];
    [(NSMutableOrderedSet *)acknowledgedSessionIdentifiers addObject:v7];

    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 identifier];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Acknowledged session: %{public}@", &v10, 0xCu);
    }
  }
}

- (NSMutableSet)discoveredSessions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000350CC;
  v11 = sub_100035A1C;
  v12 = 0;
  v3 = [(MRDGroupSessionManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CA7D4;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)handleNowPlayingApplicationDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  v6 = [v5 origin];
  v7 = [v6 isLocal];

  if (v7)
  {
    v8 = [(MRDGroupSessionManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CA904;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (void)handlePlaybackStateDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  v6 = [v5 origin];
  v7 = [v6 isLocal];

  if (v7)
  {
    v8 = [(MRDGroupSessionManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CA9F0;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (void)handleLocalMusicStateUpdateNotification:(id)a3
{
  v4 = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CAAB4;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleDeviceInfoChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetDeviceInfoFromUserInfo();

  v7 = [v4 userInfo];

  v8 = MRGetOriginFromUserInfo();

  if ([v8 isLocal])
  {
    v9 = [v6 leaderDeviceInfo];
    v10 = [v9 groupSessionToken];
    v11 = [v10 copy];

    v12 = [(MRDGroupSessionManager *)self queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000CABFC;
    v14[3] = &unk_1004B68F0;
    v14[4] = self;
    v15 = v11;
    v13 = v11;
    dispatch_sync(v12, v14);
  }
}

- (void)handleBoopAdvertisementEnabledChangeNotification:(id)a3
{
  v4 = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CADBC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)advertiser:(id)a3 didReceiveJoinRequest:(id)a4 accessHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Received join request: %{public}@", buf, 0xCu);
  }

  v10 = +[MRUserSettings currentSettings];
  v11 = [v10 groupSessionDelayedInitializationEnabled];

  if (v11)
  {
    v12 = +[MRDMediaRemoteServer server];
    v13 = [v12 groupSessionServer];
    v14 = [v13 assertionManager];
    v15 = +[MRUserSettings currentSettings];
    [v15 groupSessionJoinRequestAssertionDuration];
    [v14 createAssertionWithReason:@"Join request received" duration:?];
  }

  [(MRDGroupSessionManager *)self session];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CB004;
  v19[3] = &unk_1004BB508;
  v19[4] = self;
  v21 = v20 = v7;
  v22 = v8;
  v16 = v8;
  v17 = v21;
  v18 = v7;
  [MRDGroupSessionApprovalManager shouldAutoApproveRequest:v18 withSession:v17 completion:v19];
}

- (void)groupSessionProxyAuthorizationListener:(id)a3 didReceiveJoinRequest:(id)a4 withSessionToken:(id)a5 handler:(id)a6
{
  v26 = a3;
  v27 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v10 equivalentMediaIdentifier];
  if (v12)
  {
    v13 = dispatch_group_create();
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = sub_1000350CC;
    v42[4] = sub_100035A1C;
    v43 = 0;
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v27 identifier];
      *buf = 138412546;
      v45 = v15;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] %@ - Attempting to discover target device via WHA: %@", buf, 0x16u);
    }

    v25 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    dispatch_group_enter(v13);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [(MRDGroupSessionManager *)self notificationQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000CBAFC;
    v37[3] = &unk_1004BB530;
    v19 = v27;
    v38 = v19;
    v41 = v42;
    v20 = v12;
    v39 = v20;
    v21 = v13;
    v40 = v21;
    [v25 searchEndpointsForOutputDeviceUID:v20 timeout:v17 reason:v18 queue:v37 completion:15.0];

    v22 = _MRLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v19;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Displaying proxy authorization request: %@", buf, 0xCu);
    }

    MRAnalyticsSendEvent();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000CBCE8;
    v28[3] = &unk_1004BB598;
    v34 = v11;
    v29 = v19;
    v30 = v20;
    v31 = self;
    v32 = v10;
    v23 = v21;
    v33 = v23;
    v35 = v42;
    v36 = 0x402E000000000000;
    [(MRDGroupSessionManager *)self displayJoinRequest:v29 handler:v28];

    _Block_object_dispose(v42, 8);
  }

  else
  {
    v24 = _MRLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7E30();
    }

    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

- (void)listener:(id)a3 didDiscoverSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CC1A4;
  block[3] = &unk_1004B69D0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)listener:(id)a3 didLoseSession:(id)a4
{
  v5 = a4;
  v6 = [(MRDGroupSessionManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CC918;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)notifyObserversWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MRDGroupSessionManager *)self observers];
  v7 = [v6 allObjects];

  v8 = [(MRDGroupSessionManager *)self notificationQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CCC38;
  v11[3] = &unk_1004B79F0;
  v12 = v7;
  v13 = v4;
  v9 = v4;
  v10 = v7;
  dispatch_async(v8, v11);
}

- (void)eligibilityMonitor:(id)a3 eligibilityStatusDidChange:(id)a4
{
  v5 = [(MRDGroupSessionManager *)self queue:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CCDBC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CCE78;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

@end