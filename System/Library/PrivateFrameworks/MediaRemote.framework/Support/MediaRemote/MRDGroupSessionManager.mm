@interface MRDGroupSessionManager
- (BOOL)automaticSharePlayPreferenceEnabled;
- (BOOL)canDiscoverGroupSessions;
- (BOOL)checkCanJoinGroupSessionWithError:(id *)error;
- (BOOL)sessionManagementScreenVisible;
- (BOOL)shouldNotifyForSessionIdentifier:(id)identifier;
- (MRDGroupSession)session;
- (MRDGroupSessionManager)initWithEligibilityMonitor:(id)monitor;
- (NSMutableSet)discoveredSessions;
- (id)assertSessionManagementScreenVisible;
- (id)listenerForSessionWithIdentifier:(id)identifier;
- (void)_joinGroupSessionWithToken:(id)token completion:(id)completion;
- (void)acknowledgeSession:(id)session;
- (void)addObserver:(id)observer;
- (void)advertiser:(id)advertiser didReceiveJoinRequest:(id)request accessHandler:(id)handler;
- (void)cancelAcknowledgeResetTimerForSessionIdentifier:(id)identifier;
- (void)cleanupExistingSessionIfNeeded;
- (void)clearDiscoveredSessions;
- (void)collectDiagnostic:(id)diagnostic;
- (void)dealloc;
- (void)dismissAllDiscoveredSessions;
- (void)displayJoinRequest:(id)request handler:(id)handler;
- (void)eligibilityMonitor:(id)monitor eligibilityStatusDidChange:(id)change;
- (void)fetchUserIdentity:(id)identity;
- (void)finishRemoteControlGroupSession:(id)session;
- (void)groupSessionProxyAuthorizationListener:(id)listener didReceiveJoinRequest:(id)request withSessionToken:(id)token handler:(id)handler;
- (void)handleBoopAdvertisementEnabledChangeNotification:(id)notification;
- (void)handleDeviceInfoChangeNotification:(id)notification;
- (void)handleGroupSessionEvent:(int64_t)event withOptions:(id)options completion:(id)completion;
- (void)handleGroupSessionSelectionEvent:(id)event forDiscoveredSession:(id)session completion:(id)completion;
- (void)handleLocalMusicStateUpdateNotification:(id)notification;
- (void)handleNowPlayingApplicationDidChangeNotification:(id)notification;
- (void)handlePlaybackStateDidChangeNotification:(id)notification;
- (void)invalidatePlaybackTimeoutTimerWithReason:(id)reason;
- (void)joinGroupSessionWithNearbyGroup:(id)group hostSigningKey:(id)key joinToken:(id)token completion:(id)completion;
- (void)joinGroupSessionWithToken:(id)token completion:(id)completion;
- (void)launchApplicationForDiscoveredSessionIdentifier:(id)identifier foreground:(BOOL)foreground completion:(id)completion;
- (void)leaveRemoteControlGroupSession:(id)session;
- (void)listener:(id)listener didDiscoverSession:(id)session;
- (void)listener:(id)listener didLoseSession:(id)session;
- (void)notifyObserversWithBlock:(id)block;
- (void)reevaluateAdvertisement;
- (void)reevaluateDiscoveryMode;
- (void)reevaluatePlaybackState;
- (void)reevaluateProxyAdvertisement;
- (void)releaseSessionManagementScreenVisibleAssertion;
- (void)removeObserver:(id)observer;
- (void)resetAcknowledgementForSessionIdentifier:(id)identifier;
- (void)session:(id)session didChangeState:(int64_t)state;
- (void)session:(id)session didUpdateParticipants:(id)participants;
- (void)session:(id)session didUpdatePendingParticipants:(id)participants;
- (void)setDiscoveryEnabled:(BOOL)enabled;
- (void)startAcknowledgeResetTimerForSessionIdentifier:(id)identifier;
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
  queue = [(MRDGroupSessionManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A698;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)reevaluateAdvertisement
{
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

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
    pendingCompletions = [(MRDGroupSessionManager *)self pendingCompletions];
    identifier = [(MRDGroupSession *)v4 identifier];
    v10 = [pendingCompletions objectForKey:identifier];
    v7 = v10 != 0;
  }

  else
  {
    v7 = 1;
  }

  isHosted = [(MRDGroupSession *)v4 isHosted];
  v12 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v12 nowPlayingServer];
  v14 = +[MROrigin localOrigin];
  v15 = [nowPlayingServer originClientForOrigin:v14];
  activeNowPlayingClient = [v15 activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];

  if ([activePlayerClient isPlaying])
  {
    playerPath = [activePlayerClient playerPath];
    client = [playerPath client];
    v20 = [client isSystemMediaApplication] ^ 1;
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
    supportGroupSessionHomePodBoop = [v27 supportGroupSessionHomePodBoop];

    if (!supportGroupSessionHomePodBoop)
    {
      v22 = @"Feature not enabled";
      goto LABEL_14;
    }
  }

  if (MSVDeviceIsAudioAccessory())
  {
    v29 = +[MRUserSettings currentSettings];
    groupSessionBoopAdvertisementEnabled = [v29 groupSessionBoopAdvertisementEnabled];

    if (!groupSessionBoopAdvertisementEnabled)
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

  if (!isHosted)
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
      if (!isHosted)
      {
        goto LABEL_22;
      }

      notAdvertisingReason = [(MRDGroupSessionManager *)self notAdvertisingReason];
      advertiser = notAdvertisingReason;
      if (notAdvertisingReason != v22)
      {
        v26 = [(__CFString *)notAdvertisingReason isEqual:v22];

        if (v26)
        {
          goto LABEL_22;
        }

        advertiser = _MRLogForCategory();
        if (os_log_type_enabled(advertiser, OS_LOG_TYPE_INFO))
        {
          v34 = 138543362;
          v35 = v22;
          _os_log_impl(&_mh_execute_header, advertiser, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Not advertising hosted session because: %{public}@", &v34, 0xCu);
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

    advertiser = [(MRDGroupSessionManager *)self advertiser];
    [advertiser endAdvertising];
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

    advertiser2 = [(MRDGroupSessionManager *)self advertiser];
    [advertiser2 beginAdvertising];
  }

  v22 = 0;
LABEL_22:
  [(MRDGroupSessionManager *)self setNotAdvertisingReason:v22];
}

- (void)reevaluatePlaybackState
{
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v4 nowPlayingServer];
  v6 = +[MROrigin localOrigin];
  v7 = [nowPlayingServer originClientForOrigin:v6];
  activeNowPlayingClient = [v7 activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];

  if (![(MRDGroupSession *)self->_session isHosted]|| [(MRDGroupSession *)self->_session state]!= 3)
  {
    v12 = @"No active session";
    goto LABEL_6;
  }

  participants = [(MRDGroupSession *)self->_session participants];
  v11 = [participants count];

  if (v11 <= 1)
  {
    v12 = @"No participants in session";
LABEL_6:
    [(MRDGroupSessionManager *)self invalidatePlaybackTimeoutTimerWithReason:v12];
    goto LABEL_7;
  }

  if ([activePlayerClient isPlaying] && self->_playbackTimeoutTimer)
  {
    [(MRDGroupSessionManager *)self invalidatePlaybackTimeoutTimerWithReason:@"Session changed to playing"];
  }

  if (([activePlayerClient isPlaying] & 1) == 0 && !self->_playbackTimeoutTimer)
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

    queue2 = [(MRDGroupSessionManager *)self queue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000C8C44;
    v20[3] = &unk_1004B94E8;
    objc_copyWeak(v21, buf);
    v21[1] = v16;
    v18 = [MSVTimer timerWithInterval:0 repeats:queue2 queue:v20 block:*&v16 + 2.0];
    playbackTimeoutTimer = self->_playbackTimeoutTimer;
    self->_playbackTimeoutTimer = v18;

    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }

LABEL_7:
}

- (MRDGroupSessionManager)initWithEligibilityMonitor:(id)monitor
{
  monitorCopy = monitor;
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

  objc_storeStrong(&v6->_eligibilityMonitor, monitor);
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
  groupSessionListenForProxyJoinRequests = [v36 groupSessionListenForProxyJoinRequests];

  if (groupSessionListenForProxyJoinRequests)
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

  [monitorCopy addObserver:v6];
  v45 = +[MRSharedSettings currentSettings];
  supportGroupSessionHomePodBoop = [v45 supportGroupSessionHomePodBoop];

  if (supportGroupSessionHomePodBoop)
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

  queue = [(MRDGroupSessionManager *)v6 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3C8C;
  block[3] = &unk_1004B6D08;
  v53 = v6;
  dispatch_async(queue, block);

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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(MRDGroupSessionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3DE0;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(MRDGroupSessionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3EE8;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)leaveRemoteControlGroupSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy isHosted])
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7A58();
    }
  }

  else
  {
    [sessionCopy finish];
  }
}

- (void)finishRemoteControlGroupSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy isHosted])
  {
    [sessionCopy finish];
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

- (void)joinGroupSessionWithToken:(id)token completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C5360;
  v8[3] = &unk_1004BB208;
  tokenCopy = token;
  completionCopy = completion;
  v6 = tokenCopy;
  v7 = completionCopy;
  [(MRDGroupSessionManager *)self _joinGroupSessionWithToken:v6 completion:v8];
}

- (id)listenerForSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (-[MRDGroupSessionManager homePodListener](self, "homePodListener"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasDiscoveredSessionForIdentifier:identifierCopy], v5, v6))
  {
    homePodListener = [(MRDGroupSessionManager *)self homePodListener];
  }

  else
  {
    homePodListener = [(MRDGroupSessionManager *)self listener];
  }

  v8 = homePodListener;

  return v8;
}

- (void)_joinGroupSessionWithToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C58E8;
  v17[3] = &unk_1004B9BE0;
  v17[4] = self;
  completionCopy = completion;
  v18 = completionCopy;
  v8 = objc_retainBlock(v17);
  queue = [(MRDGroupSessionManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C59C4;
  v13[3] = &unk_1004B7450;
  v13[4] = self;
  v14 = tokenCopy;
  v15 = v8;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = tokenCopy;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (id)assertSessionManagementScreenVisible
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000350CC;
  v11 = sub_100035A1C;
  v12 = 0;
  queue = [(MRDGroupSessionManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C6454;
  v6[3] = &unk_1004B6958;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)releaseSessionManagementScreenVisibleAssertion
{
  queue = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6608;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)sessionManagementScreenVisible
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(MRDGroupSessionManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C670C;
  v5[3] = &unk_1004B6D30;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)handleGroupSessionEvent:(int64_t)event withOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (event == 1)
  {
    event = [optionsCopy objectForKeyedSubscript:MRGroupSessionEventOptionDiscoveredSessionIdentifier];
    if (event)
    {
      [(MRDGroupSessionManager *)self handleGroupSessionSelectionEvent:optionsCopy forDiscoveredSession:event completion:completionCopy];
    }

    else
    {
      v12 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"No identifier provided."];
      completionCopy[2](completionCopy, v12);
    }
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7CCC();
    }

    event = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Unknown event type: %ld", event];
    completionCopy[2](completionCopy, event);
  }
}

- (void)handleGroupSessionSelectionEvent:(id)event forDiscoveredSession:(id)session completion:(id)completion
{
  v8 = MRGroupSessionEventOptionLaunchInBackground;
  completionCopy = completion;
  sessionCopy = session;
  v10 = [event objectForKeyedSubscript:v8];
  LODWORD(event) = [v10 BOOLValue];

  [(MRDGroupSessionManager *)self launchApplicationForDiscoveredSessionIdentifier:sessionCopy foreground:event ^ 1 completion:completionCopy];
}

- (void)launchApplicationForDiscoveredSessionIdentifier:(id)identifier foreground:(BOOL)foreground completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(MRDGroupSessionManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C6A08;
  v13[3] = &unk_1004BB2D0;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = completionCopy;
  foregroundCopy = foreground;
  v11 = completionCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

- (void)cleanupExistingSessionIfNeeded
{
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = self->_session;
  session = self->_session;
  self->_session = 0;

  v6 = objc_alloc_init(NSMutableDictionary);
  notifiedPendingParticipants = self->_notifiedPendingParticipants;
  self->_notifiedPendingParticipants = v6;

  self->_hasGuestParticipants = 0;
  if (v4)
  {
    isHosted = [(MRDGroupSession *)v4 isHosted];
    isHosted2 = [(MRDGroupSession *)v4 isHosted];
    [(MRDGroupSession *)v4 removeObserver:self];
    if (isHosted2)
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

    if ((isHosted & 1) == 0)
    {
      v11 = +[MRDMediaRemoteServer server];
      routingServer = [v11 routingServer];
      systemEndpointController = [routingServer systemEndpointController];
      v14 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"MRGroupSession.implicit.leave"];
      [systemEndpointController updateSystemEndpointForRequest:v14];

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

  pendingCompletions = [(MRDGroupSessionManager *)self pendingCompletions];
  identifier = [(MRDGroupSession *)v4 identifier];
  v18 = [pendingCompletions objectForKey:identifier];

  if (v18)
  {
    pendingCompletions2 = [(MRDGroupSessionManager *)self pendingCompletions];
    identifier2 = [(MRDGroupSession *)v4 identifier];
    [pendingCompletions2 removeObjectForKey:identifier2];

    notificationQueue = [(MRDGroupSessionManager *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C7044;
    block[3] = &unk_1004B79A0;
    v35 = v18;
    dispatch_async(notificationQueue, block);

    v22 = v35;
LABEL_17:

    goto LABEL_18;
  }

  if (v4)
  {
    if ([(MRDGroupSession *)v4 isHosted])
    {
      advertiser = [(MRDGroupSessionManager *)self advertiser];
      [advertiser setActiveSession:0 identity:0];

      [(MRDGroupSessionManager *)self reevaluateAdvertisement];
    }

    observers = [(MRDGroupSessionManager *)self observers];
    allObjects = [observers allObjects];

    notificationQueue2 = [(MRDGroupSessionManager *)self notificationQueue];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1000C70C4;
    v30 = &unk_1004B69D0;
    v31 = allObjects;
    v32 = v4;
    selfCopy = self;
    v22 = allObjects;
    dispatch_async(notificationQueue2, &v27);

    goto LABEL_17;
  }

LABEL_18:
  [(MRDGroupSessionManager *)self reevaluateDiscoveryMode:v27];
}

- (void)fetchUserIdentity:(id)identity
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
  identityCopy = identity;
  v23 = identityCopy;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C7658;
  v20[3] = &unk_1004B79A0;
  v5 = objc_retainBlock(v22);
  v21 = v5;
  v6 = objc_retainBlock(v20);
  v7 = [MRBlockGuard alloc];
  queue = [(MRDGroupSessionManager *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C7710;
  v18[3] = &unk_1004B6FE8;
  v9 = identityCopy;
  v19 = v9;
  v10 = [v7 initWithTimeout:@"Wait for user identity" reason:queue queue:v18 handler:10.0];
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

- (void)joinGroupSessionWithNearbyGroup:(id)group hostSigningKey:(id)key joinToken:(id)token completion:(id)completion
{
  groupCopy = group;
  keyCopy = key;
  tokenCopy = token;
  completionCopy = completion;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000C7A74;
  v35[3] = &unk_1004B9BE0;
  v35[4] = self;
  v15 = completionCopy;
  v36 = v15;
  v16 = objc_retainBlock(v35);
  v17 = +[MRDMusicUserStateCenter sharedCenter];
  localActiveIdentity = [v17 localActiveIdentity];

  if (!localActiveIdentity)
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

  if ([localActiveIdentity type] != 1)
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

  v19 = [MRDGroupSessionProvider remoteControlSessionForExistingSessionWithNearbyGroup:groupCopy identity:localActiveIdentity hostSigningKey:keyCopy joinToken:tokenCopy];
  v34 = tokenCopy;
  v20 = keyCopy;
  v21 = groupCopy;
  session = self->_session;
  self->_session = v19;
  v23 = v19;

  v24 = objc_alloc_init(NSMutableDictionary);
  notifiedPendingParticipants = self->_notifiedPendingParticipants;
  self->_notifiedPendingParticipants = v24;

  self->_hasGuestParticipants = 0;
  pendingCompletions = [(MRDGroupSessionManager *)self pendingCompletions];
  v27 = objc_retainBlock(v15);
  identifier = [(MRDGroupSession *)v23 identifier];
  [pendingCompletions setObject:v27 forKey:identifier];

  groupCopy = v21;
  keyCopy = v20;
  tokenCopy = v34;

  [(MRDGroupSession *)v23 addObserver:self];
  [(MRDGroupSession *)v23 start];

  [(MRDGroupSessionManager *)self reevaluateDiscoveryMode];
LABEL_11:
}

- (BOOL)checkCanJoinGroupSessionWithError:(id *)error
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
  if (error)
  {
    *error = v9[5];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)dismissAllDiscoveredSessions
{
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [(NSMutableSet *)self->_discoveredSessions copy];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Dismissing all discovered sessions", buf, 2u);
  }

  notificationQueue = [(MRDGroupSessionManager *)self notificationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C7ED4;
  v8[3] = &unk_1004B68F0;
  v9 = v4;
  selfCopy = self;
  v7 = v4;
  dispatch_async(notificationQueue, v8);
}

- (void)reevaluateProxyAdvertisement
{
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

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

      advertiser = [(MRDGroupSessionManager *)self advertiser];
      [advertiser endProxyAdvertising];

      [(MRDGroupSessionManager *)self reevaluateAdvertisement];
      goto LABEL_24;
    }

    if (v4)
    {
      notProxyAdvertisingReason = [(MRDGroupSessionManager *)self notProxyAdvertisingReason];
      v9 = notProxyAdvertisingReason;
      if (notProxyAdvertisingReason != v5)
      {
        v10 = [notProxyAdvertisingReason isEqual:v5];

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
    groupSessionBoopAdvertisementEnabled = [v11 groupSessionBoopAdvertisementEnabled];

    if (!groupSessionBoopAdvertisementEnabled)
    {
      v5 = @"Disabled by user";
      goto LABEL_5;
    }
  }

  isProxyAdvertising = [(MRDGroupSessionManager *)self isProxyAdvertising];
  if (!v4)
  {
    v5 = @"Leader token not available";
    if (!isProxyAdvertising)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  if ((isProxyAdvertising & 1) == 0)
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

    advertiser2 = [(MRDGroupSessionManager *)self advertiser];
    [advertiser2 beginProxyAdvertisingWithToken:v4];
  }

  v5 = 0;
LABEL_24:
  [(MRDGroupSessionManager *)self setNotProxyAdvertisingReason:v5];
}

- (void)updateAdvertisementPreferences
{
  queue = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C833C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)canDiscoverGroupSessions
{
  v3 = +[MRDMusicUserStateCenter sharedCenter];
  if ([v3 isMusicAppInstalled])
  {
    eligibilityMonitor = [(MRDGroupSessionManager *)self eligibilityMonitor];
    eligibilityStatus = [eligibilityMonitor eligibilityStatus];
    if ([eligibilityStatus idsAccountIsValid])
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
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  canDiscoverGroupSessions = [(MRDGroupSessionManager *)self canDiscoverGroupSessions];

  [(MRDGroupSessionManager *)self setDiscoveryEnabled:canDiscoverGroupSessions];
}

- (void)setDiscoveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  listener = self->_listener;
  if (enabledCopy)
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
      supportGroupSessionHomePodBoop = [v10 supportGroupSessionHomePodBoop];

      if (supportGroupSessionHomePodBoop)
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

- (BOOL)shouldNotifyForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  LOBYTE(self) = [(NSMutableOrderedSet *)self->_acknowledgedSessionIdentifiers containsObject:identifierCopy];
  return self ^ 1;
}

- (BOOL)automaticSharePlayPreferenceEnabled
{
  v2 = [(NSUserDefaults *)self->_sharePlayDefaults objectForKey:@"CPAppPolicy.AutoSharePlayToggle"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)startAcknowledgeResetTimerForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  queue2 = [(MRDGroupSessionManager *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C87DC;
  v9[3] = &unk_1004BB348;
  v7 = identifierCopy;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  v8 = [MSVTimer timerWithInterval:0 repeats:queue2 queue:v9 block:480.0];
  [(NSMutableDictionary *)self->_acknowledgeResetTimers setObject:v8 forKeyedSubscript:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)cancelAcknowledgeResetTimerForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = [(NSMutableDictionary *)self->_acknowledgeResetTimers objectForKeyedSubscript:identifierCopy];
  [v5 invalidate];

  [(NSMutableDictionary *)self->_acknowledgeResetTimers setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)resetAcknowledgementForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(NSMutableOrderedSet *)self->_acknowledgedSessionIdentifiers removeObject:identifierCopy];
}

- (void)clearDiscoveredSessions
{
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [(NSMutableSet *)self->_discoveredSessions copy];
  notificationQueue = [(MRDGroupSessionManager *)self notificationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8AB8;
  block[3] = &unk_1004B68F0;
  v9 = v4;
  selfCopy = self;
  v6 = v4;
  dispatch_async(notificationQueue, block);

  [(NSMutableSet *)self->_discoveredSessions removeAllObjects];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C8BE0;
  v7[3] = &unk_1004BB370;
  v7[4] = self;
  [(MRDGroupSessionManager *)self notifyObserversWithBlock:v7];
}

- (void)invalidatePlaybackTimeoutTimerWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  playbackTimeoutTimer = [(MRDGroupSessionManager *)self playbackTimeoutTimer];

  if (playbackTimeoutTimer)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Invalidating timeout timer because: %@", &v9, 0xCu);
    }

    playbackTimeoutTimer2 = [(MRDGroupSessionManager *)self playbackTimeoutTimer];
    [playbackTimeoutTimer2 invalidate];

    [(MRDGroupSessionManager *)self setPlaybackTimeoutTimer:0];
  }
}

- (void)displayJoinRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([(MRDGroupSessionManager *)self sessionManagementScreenVisible])
  {
    uiManager = _MRLogForCategory();
    if (os_log_type_enabled(uiManager, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, uiManager, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Suppressing join request because session management UI is visible", v9, 2u);
    }
  }

  else
  {
    uiManager = [(MRDGroupSessionManager *)self uiManager];
    [uiManager displayJoinRequest:requestCopy handler:handlerCopy];
  }
}

- (void)session:(id)session didChangeState:(int64_t)state
{
  sessionCopy = session;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_1001B1B38(state);
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Processing state change to: %{public}@ for session: %{public}@.", buf, 0x16u);
  }

  queue = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C90EC;
  block[3] = &unk_1004B6AC0;
  v12 = sessionCopy;
  stateCopy = state;
  block[4] = self;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)session:(id)session didUpdateParticipants:(id)participants
{
  v5 = [(MRDGroupSessionManager *)self queue:session];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9BC8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)session:(id)session didUpdatePendingParticipants:(id)participants
{
  sessionCopy = session;
  participantsCopy = participants;
  if (([sessionCopy isHosted] & 1) == 0)
  {
    queue = [(MRDGroupSessionManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C9CAC;
    block[3] = &unk_1004B69D0;
    v10 = participantsCopy;
    selfCopy = self;
    v12 = sessionCopy;
    dispatch_async(queue, block);
  }
}

- (void)acknowledgeSession:(id)session
{
  sessionCopy = session;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (sessionCopy && ![sessionCopy source])
  {
    if ([(NSMutableOrderedSet *)self->_acknowledgedSessionIdentifiers count]>= 0xB)
    {
      [(NSMutableOrderedSet *)self->_acknowledgedSessionIdentifiers removeObjectAtIndex:0];
    }

    acknowledgedSessionIdentifiers = self->_acknowledgedSessionIdentifiers;
    identifier = [sessionCopy identifier];
    [(NSMutableOrderedSet *)acknowledgedSessionIdentifiers addObject:identifier];

    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [sessionCopy identifier];
      v10 = 138543362;
      v11 = identifier2;
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
  queue = [(MRDGroupSessionManager *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CA7D4;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)handleNowPlayingApplicationDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  origin = [v5 origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    queue = [(MRDGroupSessionManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CA904;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)handlePlaybackStateDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  origin = [v5 origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    queue = [(MRDGroupSessionManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CA9F0;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)handleLocalMusicStateUpdateNotification:(id)notification
{
  queue = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CAAB4;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleDeviceInfoChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetDeviceInfoFromUserInfo();

  userInfo2 = [notificationCopy userInfo];

  v8 = MRGetOriginFromUserInfo();

  if ([v8 isLocal])
  {
    leaderDeviceInfo = [v6 leaderDeviceInfo];
    groupSessionToken = [leaderDeviceInfo groupSessionToken];
    v11 = [groupSessionToken copy];

    queue = [(MRDGroupSessionManager *)self queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000CABFC;
    v14[3] = &unk_1004B68F0;
    v14[4] = self;
    v15 = v11;
    v13 = v11;
    dispatch_sync(queue, v14);
  }
}

- (void)handleBoopAdvertisementEnabledChangeNotification:(id)notification
{
  queue = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CADBC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)advertiser:(id)advertiser didReceiveJoinRequest:(id)request accessHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Received join request: %{public}@", buf, 0xCu);
  }

  v10 = +[MRUserSettings currentSettings];
  groupSessionDelayedInitializationEnabled = [v10 groupSessionDelayedInitializationEnabled];

  if (groupSessionDelayedInitializationEnabled)
  {
    v12 = +[MRDMediaRemoteServer server];
    groupSessionServer = [v12 groupSessionServer];
    assertionManager = [groupSessionServer assertionManager];
    v15 = +[MRUserSettings currentSettings];
    [v15 groupSessionJoinRequestAssertionDuration];
    [assertionManager createAssertionWithReason:@"Join request received" duration:?];
  }

  [(MRDGroupSessionManager *)self session];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CB004;
  v19[3] = &unk_1004BB508;
  v19[4] = self;
  v21 = v20 = requestCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = v21;
  v18 = requestCopy;
  [MRDGroupSessionApprovalManager shouldAutoApproveRequest:v18 withSession:v17 completion:v19];
}

- (void)groupSessionProxyAuthorizationListener:(id)listener didReceiveJoinRequest:(id)request withSessionToken:(id)token handler:(id)handler
{
  listenerCopy = listener;
  requestCopy = request;
  tokenCopy = token;
  handlerCopy = handler;
  equivalentMediaIdentifier = [tokenCopy equivalentMediaIdentifier];
  if (equivalentMediaIdentifier)
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
      identifier = [requestCopy identifier];
      *buf = 138412546;
      v45 = identifier;
      v46 = 2112;
      v47 = equivalentMediaIdentifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] %@ - Attempting to discover target device via WHA: %@", buf, 0x16u);
    }

    v25 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    dispatch_group_enter(v13);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    notificationQueue = [(MRDGroupSessionManager *)self notificationQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000CBAFC;
    v37[3] = &unk_1004BB530;
    v19 = requestCopy;
    v38 = v19;
    v41 = v42;
    v20 = equivalentMediaIdentifier;
    v39 = v20;
    v21 = v13;
    v40 = v21;
    [v25 searchEndpointsForOutputDeviceUID:v20 timeout:v17 reason:notificationQueue queue:v37 completion:15.0];

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
    v34 = handlerCopy;
    v29 = v19;
    v30 = v20;
    selfCopy = self;
    v32 = tokenCopy;
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

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)listener:(id)listener didDiscoverSession:(id)session
{
  listenerCopy = listener;
  sessionCopy = session;
  queue = [(MRDGroupSessionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CC1A4;
  block[3] = &unk_1004B69D0;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = listenerCopy;
  v9 = listenerCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)listener:(id)listener didLoseSession:(id)session
{
  sessionCopy = session;
  queue = [(MRDGroupSessionManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CC918;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(queue, v8);
}

- (void)notifyObserversWithBlock:(id)block
{
  blockCopy = block;
  queue = [(MRDGroupSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  observers = [(MRDGroupSessionManager *)self observers];
  allObjects = [observers allObjects];

  notificationQueue = [(MRDGroupSessionManager *)self notificationQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CCC38;
  v11[3] = &unk_1004B79F0;
  v12 = allObjects;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = allObjects;
  dispatch_async(notificationQueue, v11);
}

- (void)eligibilityMonitor:(id)monitor eligibilityStatusDidChange:(id)change
{
  v5 = [(MRDGroupSessionManager *)self queue:monitor];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CCDBC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  queue = [(MRDGroupSessionManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CCE78;
  v7[3] = &unk_1004B68F0;
  v8 = diagnosticCopy;
  selfCopy = self;
  v6 = diagnosticCopy;
  dispatch_async_and_wait(queue, v7);
}

@end