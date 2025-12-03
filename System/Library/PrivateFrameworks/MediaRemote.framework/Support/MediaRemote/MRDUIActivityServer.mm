@interface MRDUIActivityServer
- (BOOL)hasNowPlayingAssertion;
- (MRDUIActivityController)activityController;
- (MRDUIActivityServer)init;
- (MRVolumeUIControllable)volumeController;
- (id)combinedSuppressedBundleIdentifiers;
- (int64_t)_pendingPreferredStateForBundleIdentifier:(id)identifier;
- (int64_t)_preferredStateForPlayerPath:(id)path;
- (void)_clearPendingPreferredStateForPlayerPath:(id)path;
- (void)_handleElectedPlayerDidChangeNotification:(id)notification;
- (void)_handleIsPlayingDidChangeNotification:(id)notification;
- (void)_handlePlaybackQueueDidChangeNotification:(id)notification;
- (void)_setPendingPreferredState:(int64_t)state forBundleIdentifier:(id)identifier;
- (void)acquireGroupSessionLowPowerPlatterAssertionWithReply:(id)reply;
- (void)acquireGroupSessionNearbyAssertionForSession:(id)session withReply:(id)reply;
- (void)acquireLockScreenControlsAssertionWithReply:(id)reply;
- (void)acquireNowPlayingActivityAssertionForRouteIdentifier:(id)identifier withDuration:(int64_t)duration preferredState:(int64_t)state withReply:(id)reply;
- (void)acquireQuickControlsAssertionWithReply:(id)reply;
- (void)acquireRouteRecommendationAssertionForIdentifiers:(id)identifiers withReply:(id)reply;
- (void)acquireScreenMirroringQuickControlsAssertionWithReply:(id)reply;
- (void)collectDiagnostic:(id)diagnostic;
- (void)contextForActivityIdentifier:(id)identifier reply:(id)reply;
- (void)evaluateState;
- (void)nearbyGroupSessionDismissed:(id)dismissed;
- (void)presentVolumeHUDWithRequest:(id)request;
- (void)releaseGroupSessionLowPowerPlatterAssertionWithReply:(id)reply;
- (void)releaseGroupSessionNearbyAssertionWithReply:(id)reply;
- (void)releaseLockScreenControlsAssertionWithReply:(id)reply;
- (void)releaseQuickControlsAssertionWithReply:(id)reply;
- (void)releaseRouteRecommendationAssertionWithReply:(id)reply;
- (void)releaseScreenMirroringQuickControlsAssertionWithReply:(id)reply;
- (void)releaseTimeBasedNowPlayingActivityAssertions;
- (void)routeRecommendationDismissed;
- (void)setNowPlayingActivityAssertionEndDate:(id)date;
- (void)setPreferredState:(int64_t)state forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)setPreferredState:(int64_t)state reply:(id)reply;
- (void)suppressPresentationOverBundleIdentifiers:(id)identifiers reply:(id)reply;
@end

@implementation MRDUIActivityServer

- (MRDUIActivityServer)init
{
  v16.receiver = self;
  v16.super_class = MRDUIActivityServer;
  v2 = [(MRDUIActivityServer *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = +[MRDUIServer sharedServer];
    messageQueue = [v4 messageQueue];
    v6 = dispatch_queue_create_with_target_V2("com.apple.MRDUIActivityServer.queue", v3, messageQueue);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = +[NSDate distantPast];
    nowPlayingActivityAssertionEndDate = v2->_nowPlayingActivityAssertionEndDate;
    v2->_nowPlayingActivityAssertionEndDate = v8;

    v10 = +[MRDUIServer sharedServer];
    [v10 addClientObserver:v2];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_handleElectedPlayerDidChangeNotification:" name:kMRMediaRemoteElectedPlayerDidChangeNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"_handleIsPlayingDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_handlePlaybackQueueDidChangeNotification:" name:kMRPlayerPlaybackQueueChangedNotification object:0];

    v14 = MRSupportsSystemUIActivitiesBlock;
    MRSupportsSystemUIActivitiesBlock = &stru_1004B81D0;
  }

  return v2;
}

- (void)acquireLockScreenControlsAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasLockScreenAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)releaseLockScreenControlsAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasLockScreenAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)acquireQuickControlsAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v9 = [v5 clientForConnection:v6];

  [v9 setHasQuickControlsAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  activityController = [(MRDUIActivityServer *)self activityController];
  nowPlayingActivityIdentifier = [activityController nowPlayingActivityIdentifier];
  replyCopy[2](replyCopy, nowPlayingActivityIdentifier);
}

- (void)releaseQuickControlsAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasQuickControlsAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)acquireScreenMirroringQuickControlsAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasScreenMirroringAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)releaseScreenMirroringQuickControlsAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasScreenMirroringAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)acquireGroupSessionNearbyAssertionForSession:(id)session withReply:(id)reply
{
  replyCopy = reply;
  sessionCopy = session;
  v8 = +[MRDUIServer sharedServer];
  v9 = +[NSXPCConnection currentConnection];
  v10 = [v8 clientForConnection:v9];

  [(MRDUIActivityServer *)self setDiscoveredSession:sessionCopy];
  [v10 setHasGroupSessionNearbyAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)releaseGroupSessionNearbyAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasGroupSessionNearbyAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)acquireRouteRecommendationAssertionForIdentifiers:(id)identifiers withReply:(id)reply
{
  replyCopy = reply;
  identifiersCopy = identifiers;
  v8 = +[MRDUIServer sharedServer];
  v9 = +[NSXPCConnection currentConnection];
  v10 = [v8 clientForConnection:v9];

  [v10 setRouteRecommendationIdentifiers:identifiersCopy];
  [v10 setHasRouteRecommendationAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)acquireNowPlayingActivityAssertionForRouteIdentifier:(id)identifier withDuration:(int64_t)duration preferredState:(int64_t)state withReply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v11 = +[MRDUIServer sharedServer];
  v12 = +[NSXPCConnection currentConnection];
  v13 = [v11 clientForConnection:v12];

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [v13 bundleID];
    *buf = 138544386;
    v38 = bundleID;
    v39 = 2048;
    v40 = v13;
    v41 = 2114;
    v42 = identifierCopy;
    v43 = 2048;
    stateCopy = state;
    v45 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Client %{public}@<%p> acquiring now playing assertion for route: %{public}@, state: %ld, duration: %ld", buf, 0x34u);
  }

  bundleID2 = [v13 bundleID];
  duration = [NSString stringWithFormat:@"NowPlayingActivityAssertion for client: %@<%p>, duration: %ld", bundleID2, v13, duration];

  if (([identifierCopy isEqualToString:MRNowPlayingActivityActiveRouteIdentifier] & 1) == 0)
  {
    if ([identifierCopy isEqualToString:MRNowPlayingActivityLocalRouteIdentifier])
    {
      v18 = 0;
    }

    else
    {
      v18 = identifierCopy;
    }

    selfCopy = self;
    v19 = v13;
    v20 = identifierCopy;
    v21 = v18;
    v22 = +[MRDMediaRemoteServer server];
    routingServer = [v22 routingServer];
    systemEndpointController = [routingServer systemEndpointController];
    v25 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v21 type:0 reason:duration];

    identifierCopy = v20;
    v13 = v19;
    self = selfCopy;
    [systemEndpointController updateSystemEndpointForRequest:v25];
  }

  if (duration == 2)
  {
    v26 = 480.0;
  }

  else
  {
    if (duration != 1)
    {
      if (!duration)
      {
        [v13 setHasNowPlayingActivityAssertion:1];
      }

      goto LABEL_17;
    }

    v26 = 10.0;
  }

  v27 = [NSDate dateWithTimeIntervalSinceNow:v26];
  nowPlayingActivityAssertionEndDate = [(MRDUIActivityServer *)self nowPlayingActivityAssertionEndDate];
  [v27 timeIntervalSinceDate:nowPlayingActivityAssertionEndDate];
  v30 = v29;

  if (v30 > 0.0)
  {
    [(MRDUIActivityServer *)self setNowPlayingActivityAssertionEndDate:v27];
  }

LABEL_17:
  activityController = [(MRDUIActivityServer *)self activityController];
  nowPlayingActivityIdentifier = [activityController nowPlayingActivityIdentifier];

  activityController2 = [(MRDUIActivityServer *)self activityController];
  combinedSuppressedBundleIdentifiers = [(MRDUIActivityServer *)self combinedSuppressedBundleIdentifiers];
  if (nowPlayingActivityIdentifier)
  {
    [activityController2 updateNowPlayingActivityState:state suppressedBundleIdentifiers:combinedSuppressedBundleIdentifiers];
  }

  else
  {
    [activityController2 startNowPlayingActivityWithPreferredState:state suppressedBundleIdentifiers:combinedSuppressedBundleIdentifiers];
  }

  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)setPreferredState:(int64_t)state reply:(id)reply
{
  replyCopy = reply;
  v7 = +[MRDUIServer sharedServer];
  v8 = +[NSXPCConnection currentConnection];
  v9 = [v7 clientForConnection:v8];

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [v9 bundleID];
    v16 = 138543874;
    v17 = bundleID;
    v18 = 2048;
    v19 = v9;
    v20 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Client %{public}@<%p> setting preferred state: %ld", &v16, 0x20u);
  }

  activityController = [(MRDUIActivityServer *)self activityController];
  nowPlayingActivityIdentifier = [activityController nowPlayingActivityIdentifier];

  if (nowPlayingActivityIdentifier)
  {
    activityController2 = [(MRDUIActivityServer *)self activityController];
    combinedSuppressedBundleIdentifiers = [(MRDUIActivityServer *)self combinedSuppressedBundleIdentifiers];
    [activityController2 updateNowPlayingActivityState:state suppressedBundleIdentifiers:combinedSuppressedBundleIdentifiers];
  }

  replyCopy[2](replyCopy);
}

- (void)setPreferredState:(int64_t)state forBundleIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = +[MRDUIServer sharedServer];
  v11 = +[NSXPCConnection currentConnection];
  v12 = [v10 clientForConnection:v11];

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [v12 bundleID];
    *buf = 138544130;
    v30 = bundleID;
    v31 = 2048;
    v32 = v12;
    v33 = 2048;
    stateCopy = state;
    v35 = 2114;
    v36 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Client %{public}@<%p> setting preferred state: %ld for %{public}@", buf, 0x2Au);
  }

  activityController = [(MRDUIActivityServer *)self activityController];
  nowPlayingActivityIdentifier = [activityController nowPlayingActivityIdentifier];
  if (!nowPlayingActivityIdentifier)
  {
    v24 = identifierCopy;

    goto LABEL_7;
  }

  v17 = nowPlayingActivityIdentifier;
  [(MRDUIActivityServer *)self electedPlayer];
  selfCopy = self;
  v18 = replyCopy;
  v19 = v12;
  v21 = v20 = state;
  client = [v21 client];
  bundleIdentifierHierarchy = [client bundleIdentifierHierarchy];
  v24 = identifierCopy;
  v25 = [bundleIdentifierHierarchy containsObject:identifierCopy];

  state = v20;
  v12 = v19;
  replyCopy = v18;
  self = selfCopy;

  if (!v25)
  {
LABEL_7:
    [(MRDUIActivityServer *)self _setPendingPreferredState:state forBundleIdentifier:v24];
    goto LABEL_8;
  }

  activityController2 = [(MRDUIActivityServer *)selfCopy activityController];
  combinedSuppressedBundleIdentifiers = [(MRDUIActivityServer *)selfCopy combinedSuppressedBundleIdentifiers];
  [activityController2 updateNowPlayingActivityState:state suppressedBundleIdentifiers:combinedSuppressedBundleIdentifiers];

LABEL_8:
  replyCopy[2](replyCopy);
}

- (void)releaseTimeBasedNowPlayingActivityAssertions
{
  v3 = +[NSDate distantPast];
  [(MRDUIActivityServer *)self setNowPlayingActivityAssertionEndDate:v3];

  [(MRDUIActivityServer *)self evaluateState];
}

- (id)combinedSuppressedBundleIdentifiers
{
  v3 = objc_alloc_init(NSMutableSet);
  suppressedBundleIdentifiers = [(MRDUIActivityServer *)self suppressedBundleIdentifiers];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000692EC;
  v11 = &unk_1004B81F8;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [suppressedBundleIdentifiers enumerateKeysAndObjectsUsingBlock:&v8];

  allObjects = [v5 allObjects];

  return allObjects;
}

- (void)suppressPresentationOverBundleIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = +[MRDUIServer sharedServer];
  v9 = +[NSXPCConnection currentConnection];
  v10 = [v8 clientForConnection:v9];

  if (!self->_suppressedBundleIdentifiers)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    suppressedBundleIdentifiers = self->_suppressedBundleIdentifiers;
    self->_suppressedBundleIdentifiers = v11;
  }

  v13 = [identifiersCopy copy];
  v14 = self->_suppressedBundleIdentifiers;
  bundleID = [v10 bundleID];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:bundleID];

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    bundleID2 = [v10 bundleID];
    v22 = 138543618;
    v23 = bundleID2;
    v24 = 2114;
    v25 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Client %{public}@ requesting to suppress: %{public}@", &v22, 0x16u);
  }

  activityController = [(MRDUIActivityServer *)self activityController];
  nowPlayingActivityIdentifier = [activityController nowPlayingActivityIdentifier];

  if (nowPlayingActivityIdentifier)
  {
    activityController2 = [(MRDUIActivityServer *)self activityController];
    combinedSuppressedBundleIdentifiers = [(MRDUIActivityServer *)self combinedSuppressedBundleIdentifiers];
    [activityController2 updateNowPlayingActivityState:0 suppressedBundleIdentifiers:combinedSuppressedBundleIdentifiers];
  }

  replyCopy[2](replyCopy);
}

- (void)releaseRouteRecommendationAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setRouteRecommendationIdentifiers:&__NSArray0__struct];
  [v7 setHasRouteRecommendationAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)routeRecommendationDismissed
{
  v2 = +[MRDUIServer sharedServer];
  clients = [v2 clients];
  v4 = [clients msv_filter:&stru_1004B8238];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) routeRecommendationDismissed];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)contextForActivityIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  activityController = [(MRDUIActivityServer *)self activityController];
  v9 = [activityController contextForActivityIdentifier:identifierCopy];

  (*(reply + 2))(replyCopy, v9);
}

- (void)acquireGroupSessionLowPowerPlatterAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasGroupSessionLowPowerPlatterAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)releaseGroupSessionLowPowerPlatterAssertionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasGroupSessionLowPowerPlatterAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  replyCopy[2](replyCopy);
}

- (void)nearbyGroupSessionDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  v4 = +[MRDUIServer sharedServer];
  clients = [v4 clients];
  v6 = [clients msv_filter:&stru_1004B8258];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) nearbyGroupSessionDismissed:{dismissedCopy, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (BOOL)hasNowPlayingAssertion
{
  v2 = +[MRDUIServer sharedServer];
  clients = [v2 clients];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = clients;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasQuickControlsAssertion] & 1) != 0 || (objc_msgSend(v9, "hasLockScreenAssertion") & 1) != 0 || (objc_msgSend(v9, "hasNowPlayingActivityAssertion"))
        {
          v10 = 1;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (void)evaluateState
{
  v2 = +[MRDUIServer sharedServer];
  clients = [v2 clients];

  v73 = objc_alloc_init(NSMutableArray);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v4 = clients;
  v76 = [v4 countByEnumeratingWithState:&v87 objects:v99 count:16];
  obj = v4;
  if (!v76)
  {

    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v75 = *v88;
  do
  {
    for (i = 0; i != v76; i = i + 1)
    {
      v77 = v9;
      v78 = v5;
      if (*v88 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v87 + 1) + 8 * i);
      hasQuickControlsAssertion = [v12 hasQuickControlsAssertion];
      hasLockScreenAssertion = [v12 hasLockScreenAssertion];
      hasScreenMirroringAssertion = [v12 hasScreenMirroringAssertion];
      hasGroupSessionNearbyAssertion = [v12 hasGroupSessionNearbyAssertion];
      if ([v12 hasRouteRecommendationAssertion])
      {
        [v12 routeRecommendationIdentifiers];
        v17 = v74 = v8;
        [v73 addObjectsFromArray:v17];

        v8 = v74;
      }

      v9 = v77 + hasQuickControlsAssertion;
      v10 += hasLockScreenAssertion;
      v8 += hasScreenMirroringAssertion;
      v7 += hasGroupSessionNearbyAssertion;
      v6 += [v12 hasGroupSessionLowPowerPlatterAssertion];
      v5 = v78 + [v12 hasNowPlayingActivityAssertion];
    }

    v76 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
  }

  while (v76);
  v18 = v8 > 0;
  v19 = v7 > 0;
  v20 = v6 > 0;
  v4 = obj;

  if (v10 <= 0 && v9 <= 0 && v5 < 1)
  {
LABEL_22:
    selfCopy2 = self;
    nowPlayingActivityAssertionEndDate = [(MRDUIActivityServer *)self nowPlayingActivityAssertionEndDate];
    [nowPlayingActivityAssertionEndDate timeIntervalSinceNow];
    v34 = v33;

    if (v34 <= 0.0)
    {
      activityController = [(MRDUIActivityServer *)self activityController];
      [activityController endNowPlayingActivity];
    }

    else
    {
      activityController = _MRLogForCategory();
      if (os_log_type_enabled(activityController, OS_LOG_TYPE_DEBUG))
      {
        sub_1003A5800(self, activityController);
      }
    }

    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  selfCopy2 = self;
  activityController2 = [(MRDUIActivityServer *)self activityController];
  nowPlayingActivityIdentifier = [activityController2 nowPlayingActivityIdentifier];

  if (!nowPlayingActivityIdentifier)
  {
    electedPlayer = [(MRDUIActivityServer *)self electedPlayer];
    v27 = [(MRDUIActivityServer *)self _preferredStateForPlayerPath:electedPlayer];

    activityController3 = [(MRDUIActivityServer *)self activityController];
    combinedSuppressedBundleIdentifiers = [(MRDUIActivityServer *)self combinedSuppressedBundleIdentifiers];
    [activityController3 startNowPlayingActivityWithPreferredState:v27 suppressedBundleIdentifiers:combinedSuppressedBundleIdentifiers];

    electedPlayer2 = [(MRDUIActivityServer *)self electedPlayer];
    [(MRDUIActivityServer *)self _clearPendingPreferredStateForPlayerPath:electedPlayer2];
  }

  if (v8 > 0)
  {
LABEL_20:
    activityController4 = [(MRDUIActivityServer *)selfCopy2 activityController];
    [activityController4 startMirroringActivity];
    goto LABEL_28;
  }

LABEL_27:
  activityController4 = [(MRDUIActivityServer *)selfCopy2 activityController];
  [activityController4 endMirroringActivity];
LABEL_28:

  if (v19)
  {
    activityController5 = [(MRDUIActivityServer *)selfCopy2 activityController];
    [activityController5 startGroupSessionNearbyActivity:selfCopy2->_discoveredSession];

    if (!v20)
    {
LABEL_30:
      activityController6 = [(MRDUIActivityServer *)selfCopy2 activityController];
      [activityController6 endGroupSessionLowPowerPlatterActivity];
      goto LABEL_33;
    }
  }

  else
  {
    activityController7 = [(MRDUIActivityServer *)selfCopy2 activityController];
    [activityController7 endGroupSessionNearbyActivity];

    if (!v20)
    {
      goto LABEL_30;
    }
  }

  activityController6 = [(MRDUIActivityServer *)selfCopy2 activityController];
  [activityController6 startGroupSessionLowPowerPlatterActivity];
LABEL_33:

  activeRecommendationActivities = [(MRDUIActivityServer *)selfCopy2 activeRecommendationActivities];
  v40 = [v73 isEqualToArray:activeRecommendationActivities];

  if ((v40 & 1) == 0)
  {
    activeRecommendationActivities2 = [(MRDUIActivityServer *)selfCopy2 activeRecommendationActivities];
    routeRecommendationActivities = [(MRDUIActivityServer *)selfCopy2 routeRecommendationActivities];

    if (!routeRecommendationActivities)
    {
      v43 = objc_opt_new();
      [(MRDUIActivityServer *)selfCopy2 setRouteRecommendationActivities:v43];
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v44 = activeRecommendationActivities2;
    v45 = [v44 countByEnumeratingWithState:&v83 objects:v98 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v84;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v84 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v83 + 1) + 8 * j);
          routeRecommendationActivities2 = [(MRDUIActivityServer *)selfCopy2 routeRecommendationActivities];
          v51 = [routeRecommendationActivities2 objectForKeyedSubscript:v49];

          if (v51)
          {
            if ([v73 containsObject:v49])
            {
              goto LABEL_49;
            }

            activityController8 = [(MRDUIActivityServer *)selfCopy2 activityController];
            [activityController8 endRouteRecommendationActivityFor:v51];

            v53 = _MRLogForCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v92 = v49;
              v93 = 2112;
              v94 = v51;
              _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] >>+ ending recommendation for route %@ with LA id: %@", buf, 0x16u);
            }

            routeRecommendationActivities3 = [(MRDUIActivityServer *)selfCopy2 routeRecommendationActivities];
            [routeRecommendationActivities3 setObject:0 forKeyedSubscript:v49];
          }

          else
          {
            routeRecommendationActivities3 = _MRLogForCategory();
            if (os_log_type_enabled(routeRecommendationActivities3, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v92 = v49;
              _os_log_debug_impl(&_mh_execute_header, routeRecommendationActivities3, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] >>+ could not find activity id for %@", buf, 0xCu);
            }
          }

LABEL_49:
        }

        v46 = [v44 countByEnumeratingWithState:&v83 objects:v98 count:16];
      }

      while (v46);
    }

    v55 = _MRLogForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A5898(obj, v73, v55);
    }

    v56 = v73;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v57 = [v56 countByEnumeratingWithState:&v79 objects:v97 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v80;
      v60 = 0.0;
      do
      {
        for (k = 0; k != v58; k = k + 1)
        {
          if (*v80 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v62 = *(*(&v79 + 1) + 8 * k);
          routeRecommendationActivities4 = [(MRDUIActivityServer *)self routeRecommendationActivities];
          v64 = [routeRecommendationActivities4 objectForKeyedSubscript:v62];

          activityController9 = [(MRDUIActivityServer *)self activityController];
          v66 = activityController9;
          if (v64)
          {
            [activityController9 setRouteRecommendationRelevanceScore:v64 activityIdentifier:v60];
            v67 = v66;
          }

          else
          {
            v67 = [activityController9 startRouteRecommendationActivityFor:v62 relevanceScore:v60];

            v68 = _MRLogForCategory();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v92 = v67;
              v93 = 2112;
              v94 = v62;
              v95 = 2048;
              v96 = -v60;
              _os_log_debug_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] >>+ %@ for AVOD %@ (%f)", buf, 0x20u);
            }

            routeRecommendationActivities5 = [(MRDUIActivityServer *)self routeRecommendationActivities];
            [routeRecommendationActivities5 setObject:v67 forKeyedSubscript:v62];
          }

          v60 = v60 + -1.0;
        }

        v58 = [v56 countByEnumeratingWithState:&v79 objects:v97 count:16];
      }

      while (v58);
    }

    v70 = [NSSet setWithArray:v56];
    [(MRDUIActivityServer *)self setActiveRecommendations:v70];

    [(MRDUIActivityServer *)self setActiveRecommendationActivities:v56];
    v4 = obj;
  }
}

- (MRDUIActivityController)activityController
{
  activityController = self->_activityController;
  if (!activityController)
  {
    v4 = objc_alloc_init(MRDUIActivityController);
    v5 = self->_activityController;
    self->_activityController = v4;

    [(MRDUIActivityController *)self->_activityController setDelegate:self];
    activityController = self->_activityController;
  }

  return activityController;
}

- (void)setNowPlayingActivityAssertionEndDate:(id)date
{
  dateCopy = date;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingActivityAssertionEndDate = self->_nowPlayingActivityAssertionEndDate;
    *buf = 138412546;
    v15 = nowPlayingActivityAssertionEndDate;
    v16 = 2112;
    v17 = dateCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Update now playing activity end date from: %@ -> %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_nowPlayingActivityAssertionEndDate, date);
  [(MSVTimer *)self->_nowPlayingActivityAssertionEndTimer invalidate];
  [dateCopy timeIntervalSinceNow];
  v9 = v8 + 1.0;
  if (v8 + 1.0 > 0.0)
  {
    objc_initWeak(buf, self);
    queue = [(MRDUIActivityServer *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006A6FC;
    v12[3] = &unk_1004B8280;
    objc_copyWeak(&v13, buf);
    v11 = [MSVTimer timerWithInterval:0 repeats:queue queue:v12 block:v9];
    [(MRDUIActivityServer *)self setNowPlayingActivityAssertionEndTimer:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)_handleElectedPlayerDidChangeNotification:(id)notification
{
  playerPath = [notification playerPath];
  queue = [(MRDUIActivityServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006A85C;
  v7[3] = &unk_1004B68F0;
  v8 = playerPath;
  selfCopy = self;
  v6 = playerPath;
  dispatch_async(queue, v7);
}

- (void)_handleIsPlayingDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  queue = [(MRDUIActivityServer *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006AA7C;
  v8[3] = &unk_1004B68F0;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)_handlePlaybackQueueDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  queue = [(MRDUIActivityServer *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006AC24;
  v8[3] = &unk_1004B68F0;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (MRVolumeUIControllable)volumeController
{
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    v4 = +[MRDUIControllerProvider volumeHUDController];
    v5 = self->_volumeController;
    self->_volumeController = v4;

    volumeController = self->_volumeController;
  }

  return volumeController;
}

- (void)presentVolumeHUDWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[NSXPCConnection currentConnection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [v5 valueForEntitlement:@"com.apple.mediaremote.request-volume-hud-presentation.local"];

  if ((isKindOfClass & 1) != 0 && v7)
  {
    volumeController = [(MRDUIActivityServer *)self volumeController];
    [volumeController presentVolumeHUDWithRequest:requestCopy];
  }

  else
  {
    v9 = +[MRDUIServer sharedServer];
    volumeController = [v9 clientForConnection:v5];

    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1003A59C8(volumeController, v10);
    }
  }
}

- (void)_setPendingPreferredState:(int64_t)state forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!self->_pendingPreferredStates)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    pendingPreferredStates = self->_pendingPreferredStates;
    self->_pendingPreferredStates = v6;
  }

  v8 = [NSNumber numberWithInteger:state];
  [(NSMutableDictionary *)self->_pendingPreferredStates setObject:v8 forKeyedSubscript:identifierCopy];
}

- (int64_t)_pendingPreferredStateForBundleIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_pendingPreferredStates objectForKeyedSubscript:identifier];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)_clearPendingPreferredStateForPlayerPath:(id)path
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  client = [path client];
  bundleIdentifierHierarchy = [client bundleIdentifierHierarchy];

  v6 = [bundleIdentifierHierarchy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(bundleIdentifierHierarchy);
        }

        [(NSMutableDictionary *)self->_pendingPreferredStates setObject:0 forKeyedSubscript:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [bundleIdentifierHierarchy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int64_t)_preferredStateForPlayerPath:(id)path
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  client = [path client];
  bundleIdentifierHierarchy = [client bundleIdentifierHierarchy];

  v6 = [bundleIdentifierHierarchy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(bundleIdentifierHierarchy);
        }

        v11 = [(MRDUIActivityServer *)self _pendingPreferredStateForBundleIdentifier:*(*(&v13 + 1) + 8 * i)];
        if (v11 > v8)
        {
          v8 = v11;
        }
      }

      v7 = [bundleIdentifierHierarchy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  queue = [(MRDUIActivityServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006B234;
  v7[3] = &unk_1004B68F0;
  v8 = diagnosticCopy;
  selfCopy = self;
  v6 = diagnosticCopy;
  dispatch_sync(queue, v7);
}

@end