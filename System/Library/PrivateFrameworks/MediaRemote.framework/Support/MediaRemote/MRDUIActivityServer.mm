@interface MRDUIActivityServer
- (BOOL)hasNowPlayingAssertion;
- (MRDUIActivityController)activityController;
- (MRDUIActivityServer)init;
- (MRVolumeUIControllable)volumeController;
- (id)combinedSuppressedBundleIdentifiers;
- (int64_t)_pendingPreferredStateForBundleIdentifier:(id)a3;
- (int64_t)_preferredStateForPlayerPath:(id)a3;
- (void)_clearPendingPreferredStateForPlayerPath:(id)a3;
- (void)_handleElectedPlayerDidChangeNotification:(id)a3;
- (void)_handleIsPlayingDidChangeNotification:(id)a3;
- (void)_handlePlaybackQueueDidChangeNotification:(id)a3;
- (void)_setPendingPreferredState:(int64_t)a3 forBundleIdentifier:(id)a4;
- (void)acquireGroupSessionLowPowerPlatterAssertionWithReply:(id)a3;
- (void)acquireGroupSessionNearbyAssertionForSession:(id)a3 withReply:(id)a4;
- (void)acquireLockScreenControlsAssertionWithReply:(id)a3;
- (void)acquireNowPlayingActivityAssertionForRouteIdentifier:(id)a3 withDuration:(int64_t)a4 preferredState:(int64_t)a5 withReply:(id)a6;
- (void)acquireQuickControlsAssertionWithReply:(id)a3;
- (void)acquireRouteRecommendationAssertionForIdentifiers:(id)a3 withReply:(id)a4;
- (void)acquireScreenMirroringQuickControlsAssertionWithReply:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)contextForActivityIdentifier:(id)a3 reply:(id)a4;
- (void)evaluateState;
- (void)nearbyGroupSessionDismissed:(id)a3;
- (void)presentVolumeHUDWithRequest:(id)a3;
- (void)releaseGroupSessionLowPowerPlatterAssertionWithReply:(id)a3;
- (void)releaseGroupSessionNearbyAssertionWithReply:(id)a3;
- (void)releaseLockScreenControlsAssertionWithReply:(id)a3;
- (void)releaseQuickControlsAssertionWithReply:(id)a3;
- (void)releaseRouteRecommendationAssertionWithReply:(id)a3;
- (void)releaseScreenMirroringQuickControlsAssertionWithReply:(id)a3;
- (void)releaseTimeBasedNowPlayingActivityAssertions;
- (void)routeRecommendationDismissed;
- (void)setNowPlayingActivityAssertionEndDate:(id)a3;
- (void)setPreferredState:(int64_t)a3 forBundleIdentifier:(id)a4 reply:(id)a5;
- (void)setPreferredState:(int64_t)a3 reply:(id)a4;
- (void)suppressPresentationOverBundleIdentifiers:(id)a3 reply:(id)a4;
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
    v5 = [v4 messageQueue];
    v6 = dispatch_queue_create_with_target_V2("com.apple.MRDUIActivityServer.queue", v3, v5);
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

- (void)acquireLockScreenControlsAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasLockScreenAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)releaseLockScreenControlsAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasLockScreenAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)acquireQuickControlsAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v9 = [v5 clientForConnection:v6];

  [v9 setHasQuickControlsAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  v7 = [(MRDUIActivityServer *)self activityController];
  v8 = [v7 nowPlayingActivityIdentifier];
  v4[2](v4, v8);
}

- (void)releaseQuickControlsAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasQuickControlsAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)acquireScreenMirroringQuickControlsAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasScreenMirroringAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)releaseScreenMirroringQuickControlsAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasScreenMirroringAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)acquireGroupSessionNearbyAssertionForSession:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MRDUIServer sharedServer];
  v9 = +[NSXPCConnection currentConnection];
  v10 = [v8 clientForConnection:v9];

  [(MRDUIActivityServer *)self setDiscoveredSession:v7];
  [v10 setHasGroupSessionNearbyAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  v6[2](v6);
}

- (void)releaseGroupSessionNearbyAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasGroupSessionNearbyAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)acquireRouteRecommendationAssertionForIdentifiers:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MRDUIServer sharedServer];
  v9 = +[NSXPCConnection currentConnection];
  v10 = [v8 clientForConnection:v9];

  [v10 setRouteRecommendationIdentifiers:v7];
  [v10 setHasRouteRecommendationAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  v6[2](v6);
}

- (void)acquireNowPlayingActivityAssertionForRouteIdentifier:(id)a3 withDuration:(int64_t)a4 preferredState:(int64_t)a5 withReply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = +[MRDUIServer sharedServer];
  v12 = +[NSXPCConnection currentConnection];
  v13 = [v11 clientForConnection:v12];

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 bundleID];
    *buf = 138544386;
    v38 = v15;
    v39 = 2048;
    v40 = v13;
    v41 = 2114;
    v42 = v9;
    v43 = 2048;
    v44 = a5;
    v45 = 2048;
    v46 = a4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Client %{public}@<%p> acquiring now playing assertion for route: %{public}@, state: %ld, duration: %ld", buf, 0x34u);
  }

  v16 = [v13 bundleID];
  v17 = [NSString stringWithFormat:@"NowPlayingActivityAssertion for client: %@<%p>, duration: %ld", v16, v13, a4];

  if (([v9 isEqualToString:MRNowPlayingActivityActiveRouteIdentifier] & 1) == 0)
  {
    if ([v9 isEqualToString:MRNowPlayingActivityLocalRouteIdentifier])
    {
      v18 = 0;
    }

    else
    {
      v18 = v9;
    }

    v35 = self;
    v19 = v13;
    v20 = v9;
    v21 = v18;
    v22 = +[MRDMediaRemoteServer server];
    v23 = [v22 routingServer];
    v24 = [v23 systemEndpointController];
    v25 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v21 type:0 reason:v17];

    v9 = v20;
    v13 = v19;
    self = v35;
    [v24 updateSystemEndpointForRequest:v25];
  }

  if (a4 == 2)
  {
    v26 = 480.0;
  }

  else
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        [v13 setHasNowPlayingActivityAssertion:1];
      }

      goto LABEL_17;
    }

    v26 = 10.0;
  }

  v27 = [NSDate dateWithTimeIntervalSinceNow:v26];
  v28 = [(MRDUIActivityServer *)self nowPlayingActivityAssertionEndDate];
  [v27 timeIntervalSinceDate:v28];
  v30 = v29;

  if (v30 > 0.0)
  {
    [(MRDUIActivityServer *)self setNowPlayingActivityAssertionEndDate:v27];
  }

LABEL_17:
  v31 = [(MRDUIActivityServer *)self activityController];
  v32 = [v31 nowPlayingActivityIdentifier];

  v33 = [(MRDUIActivityServer *)self activityController];
  v34 = [(MRDUIActivityServer *)self combinedSuppressedBundleIdentifiers];
  if (v32)
  {
    [v33 updateNowPlayingActivityState:a5 suppressedBundleIdentifiers:v34];
  }

  else
  {
    [v33 startNowPlayingActivityWithPreferredState:a5 suppressedBundleIdentifiers:v34];
  }

  [(MRDUIActivityServer *)self evaluateState];
  v10[2](v10);
}

- (void)setPreferredState:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = +[MRDUIServer sharedServer];
  v8 = +[NSXPCConnection currentConnection];
  v9 = [v7 clientForConnection:v8];

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 bundleID];
    v16 = 138543874;
    v17 = v11;
    v18 = 2048;
    v19 = v9;
    v20 = 2048;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Client %{public}@<%p> setting preferred state: %ld", &v16, 0x20u);
  }

  v12 = [(MRDUIActivityServer *)self activityController];
  v13 = [v12 nowPlayingActivityIdentifier];

  if (v13)
  {
    v14 = [(MRDUIActivityServer *)self activityController];
    v15 = [(MRDUIActivityServer *)self combinedSuppressedBundleIdentifiers];
    [v14 updateNowPlayingActivityState:a3 suppressedBundleIdentifiers:v15];
  }

  v6[2](v6);
}

- (void)setPreferredState:(int64_t)a3 forBundleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[MRDUIServer sharedServer];
  v11 = +[NSXPCConnection currentConnection];
  v12 = [v10 clientForConnection:v11];

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 bundleID];
    *buf = 138544130;
    v30 = v14;
    v31 = 2048;
    v32 = v12;
    v33 = 2048;
    v34 = a3;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Client %{public}@<%p> setting preferred state: %ld for %{public}@", buf, 0x2Au);
  }

  v15 = [(MRDUIActivityServer *)self activityController];
  v16 = [v15 nowPlayingActivityIdentifier];
  if (!v16)
  {
    v24 = v8;

    goto LABEL_7;
  }

  v17 = v16;
  [(MRDUIActivityServer *)self electedPlayer];
  v28 = self;
  v18 = v9;
  v19 = v12;
  v21 = v20 = a3;
  v22 = [v21 client];
  v23 = [v22 bundleIdentifierHierarchy];
  v24 = v8;
  v25 = [v23 containsObject:v8];

  a3 = v20;
  v12 = v19;
  v9 = v18;
  self = v28;

  if (!v25)
  {
LABEL_7:
    [(MRDUIActivityServer *)self _setPendingPreferredState:a3 forBundleIdentifier:v24];
    goto LABEL_8;
  }

  v26 = [(MRDUIActivityServer *)v28 activityController];
  v27 = [(MRDUIActivityServer *)v28 combinedSuppressedBundleIdentifiers];
  [v26 updateNowPlayingActivityState:a3 suppressedBundleIdentifiers:v27];

LABEL_8:
  v9[2](v9);
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
  v4 = [(MRDUIActivityServer *)self suppressedBundleIdentifiers];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000692EC;
  v11 = &unk_1004B81F8;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  v6 = [v5 allObjects];

  return v6;
}

- (void)suppressPresentationOverBundleIdentifiers:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MRDUIServer sharedServer];
  v9 = +[NSXPCConnection currentConnection];
  v10 = [v8 clientForConnection:v9];

  if (!self->_suppressedBundleIdentifiers)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    suppressedBundleIdentifiers = self->_suppressedBundleIdentifiers;
    self->_suppressedBundleIdentifiers = v11;
  }

  v13 = [v6 copy];
  v14 = self->_suppressedBundleIdentifiers;
  v15 = [v10 bundleID];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v10 bundleID];
    v22 = 138543618;
    v23 = v17;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Client %{public}@ requesting to suppress: %{public}@", &v22, 0x16u);
  }

  v18 = [(MRDUIActivityServer *)self activityController];
  v19 = [v18 nowPlayingActivityIdentifier];

  if (v19)
  {
    v20 = [(MRDUIActivityServer *)self activityController];
    v21 = [(MRDUIActivityServer *)self combinedSuppressedBundleIdentifiers];
    [v20 updateNowPlayingActivityState:0 suppressedBundleIdentifiers:v21];
  }

  v7[2](v7);
}

- (void)releaseRouteRecommendationAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setRouteRecommendationIdentifiers:&__NSArray0__struct];
  [v7 setHasRouteRecommendationAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)routeRecommendationDismissed
{
  v2 = +[MRDUIServer sharedServer];
  v3 = [v2 clients];
  v4 = [v3 msv_filter:&stru_1004B8238];

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

- (void)contextForActivityIdentifier:(id)a3 reply:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(MRDUIActivityServer *)self activityController];
  v9 = [v10 contextForActivityIdentifier:v8];

  (*(a4 + 2))(v7, v9);
}

- (void)acquireGroupSessionLowPowerPlatterAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasGroupSessionLowPowerPlatterAssertion:1];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)releaseGroupSessionLowPowerPlatterAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MRDUIServer sharedServer];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v5 clientForConnection:v6];

  [v7 setHasGroupSessionLowPowerPlatterAssertion:0];
  [(MRDUIActivityServer *)self evaluateState];
  v4[2](v4);
}

- (void)nearbyGroupSessionDismissed:(id)a3
{
  v3 = a3;
  v4 = +[MRDUIServer sharedServer];
  v5 = [v4 clients];
  v6 = [v5 msv_filter:&stru_1004B8258];

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

        [*(*(&v12 + 1) + 8 * v11) nearbyGroupSessionDismissed:{v3, v12}];
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
  v3 = [v2 clients];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
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
  v3 = [v2 clients];

  v73 = objc_alloc_init(NSMutableArray);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v4 = v3;
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
      v13 = [v12 hasQuickControlsAssertion];
      v14 = [v12 hasLockScreenAssertion];
      v15 = [v12 hasScreenMirroringAssertion];
      v16 = [v12 hasGroupSessionNearbyAssertion];
      if ([v12 hasRouteRecommendationAssertion])
      {
        [v12 routeRecommendationIdentifiers];
        v17 = v74 = v8;
        [v73 addObjectsFromArray:v17];

        v8 = v74;
      }

      v9 = v77 + v13;
      v10 += v14;
      v8 += v15;
      v7 += v16;
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
    v23 = self;
    v32 = [(MRDUIActivityServer *)self nowPlayingActivityAssertionEndDate];
    [v32 timeIntervalSinceNow];
    v34 = v33;

    if (v34 <= 0.0)
    {
      v35 = [(MRDUIActivityServer *)self activityController];
      [v35 endNowPlayingActivity];
    }

    else
    {
      v35 = _MRLogForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_1003A5800(self, v35);
      }
    }

    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v23 = self;
  v24 = [(MRDUIActivityServer *)self activityController];
  v25 = [v24 nowPlayingActivityIdentifier];

  if (!v25)
  {
    v26 = [(MRDUIActivityServer *)self electedPlayer];
    v27 = [(MRDUIActivityServer *)self _preferredStateForPlayerPath:v26];

    v28 = [(MRDUIActivityServer *)self activityController];
    v29 = [(MRDUIActivityServer *)self combinedSuppressedBundleIdentifiers];
    [v28 startNowPlayingActivityWithPreferredState:v27 suppressedBundleIdentifiers:v29];

    v30 = [(MRDUIActivityServer *)self electedPlayer];
    [(MRDUIActivityServer *)self _clearPendingPreferredStateForPlayerPath:v30];
  }

  if (v8 > 0)
  {
LABEL_20:
    v31 = [(MRDUIActivityServer *)v23 activityController];
    [v31 startMirroringActivity];
    goto LABEL_28;
  }

LABEL_27:
  v31 = [(MRDUIActivityServer *)v23 activityController];
  [v31 endMirroringActivity];
LABEL_28:

  if (v19)
  {
    v36 = [(MRDUIActivityServer *)v23 activityController];
    [v36 startGroupSessionNearbyActivity:v23->_discoveredSession];

    if (!v20)
    {
LABEL_30:
      v37 = [(MRDUIActivityServer *)v23 activityController];
      [v37 endGroupSessionLowPowerPlatterActivity];
      goto LABEL_33;
    }
  }

  else
  {
    v38 = [(MRDUIActivityServer *)v23 activityController];
    [v38 endGroupSessionNearbyActivity];

    if (!v20)
    {
      goto LABEL_30;
    }
  }

  v37 = [(MRDUIActivityServer *)v23 activityController];
  [v37 startGroupSessionLowPowerPlatterActivity];
LABEL_33:

  v39 = [(MRDUIActivityServer *)v23 activeRecommendationActivities];
  v40 = [v73 isEqualToArray:v39];

  if ((v40 & 1) == 0)
  {
    v41 = [(MRDUIActivityServer *)v23 activeRecommendationActivities];
    v42 = [(MRDUIActivityServer *)v23 routeRecommendationActivities];

    if (!v42)
    {
      v43 = objc_opt_new();
      [(MRDUIActivityServer *)v23 setRouteRecommendationActivities:v43];
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v44 = v41;
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
          v50 = [(MRDUIActivityServer *)v23 routeRecommendationActivities];
          v51 = [v50 objectForKeyedSubscript:v49];

          if (v51)
          {
            if ([v73 containsObject:v49])
            {
              goto LABEL_49;
            }

            v52 = [(MRDUIActivityServer *)v23 activityController];
            [v52 endRouteRecommendationActivityFor:v51];

            v53 = _MRLogForCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v92 = v49;
              v93 = 2112;
              v94 = v51;
              _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] >>+ ending recommendation for route %@ with LA id: %@", buf, 0x16u);
            }

            v54 = [(MRDUIActivityServer *)v23 routeRecommendationActivities];
            [v54 setObject:0 forKeyedSubscript:v49];
          }

          else
          {
            v54 = _MRLogForCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v92 = v49;
              _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] >>+ could not find activity id for %@", buf, 0xCu);
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
          v63 = [(MRDUIActivityServer *)self routeRecommendationActivities];
          v64 = [v63 objectForKeyedSubscript:v62];

          v65 = [(MRDUIActivityServer *)self activityController];
          v66 = v65;
          if (v64)
          {
            [v65 setRouteRecommendationRelevanceScore:v64 activityIdentifier:v60];
            v67 = v66;
          }

          else
          {
            v67 = [v65 startRouteRecommendationActivityFor:v62 relevanceScore:v60];

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

            v69 = [(MRDUIActivityServer *)self routeRecommendationActivities];
            [v69 setObject:v67 forKeyedSubscript:v62];
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

- (void)setNowPlayingActivityAssertionEndDate:(id)a3
{
  v5 = a3;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingActivityAssertionEndDate = self->_nowPlayingActivityAssertionEndDate;
    *buf = 138412546;
    v15 = nowPlayingActivityAssertionEndDate;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDUIActivityServer] Update now playing activity end date from: %@ -> %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_nowPlayingActivityAssertionEndDate, a3);
  [(MSVTimer *)self->_nowPlayingActivityAssertionEndTimer invalidate];
  [v5 timeIntervalSinceNow];
  v9 = v8 + 1.0;
  if (v8 + 1.0 > 0.0)
  {
    objc_initWeak(buf, self);
    v10 = [(MRDUIActivityServer *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006A6FC;
    v12[3] = &unk_1004B8280;
    objc_copyWeak(&v13, buf);
    v11 = [MSVTimer timerWithInterval:0 repeats:v10 queue:v12 block:v9];
    [(MRDUIActivityServer *)self setNowPlayingActivityAssertionEndTimer:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)_handleElectedPlayerDidChangeNotification:(id)a3
{
  v4 = [a3 playerPath];
  v5 = [(MRDUIActivityServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006A85C;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleIsPlayingDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  v6 = [(MRDUIActivityServer *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006AA7C;
  v8[3] = &unk_1004B68F0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)_handlePlaybackQueueDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  v6 = [(MRDUIActivityServer *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006AC24;
  v8[3] = &unk_1004B68F0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
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

- (void)presentVolumeHUDWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [v5 valueForEntitlement:@"com.apple.mediaremote.request-volume-hud-presentation.local"];

  if ((isKindOfClass & 1) != 0 && v7)
  {
    v8 = [(MRDUIActivityServer *)self volumeController];
    [v8 presentVolumeHUDWithRequest:v4];
  }

  else
  {
    v9 = +[MRDUIServer sharedServer];
    v8 = [v9 clientForConnection:v5];

    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1003A59C8(v8, v10);
    }
  }
}

- (void)_setPendingPreferredState:(int64_t)a3 forBundleIdentifier:(id)a4
{
  v9 = a4;
  if (!self->_pendingPreferredStates)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    pendingPreferredStates = self->_pendingPreferredStates;
    self->_pendingPreferredStates = v6;
  }

  v8 = [NSNumber numberWithInteger:a3];
  [(NSMutableDictionary *)self->_pendingPreferredStates setObject:v8 forKeyedSubscript:v9];
}

- (int64_t)_pendingPreferredStateForBundleIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_pendingPreferredStates objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_clearPendingPreferredStateForPlayerPath:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a3 client];
  v5 = [v4 bundleIdentifierHierarchy];

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

        [(NSMutableDictionary *)self->_pendingPreferredStates setObject:0 forKeyedSubscript:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int64_t)_preferredStateForPlayerPath:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 client];
  v5 = [v4 bundleIdentifierHierarchy];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [(MRDUIActivityServer *)self _pendingPreferredStateForBundleIdentifier:*(*(&v13 + 1) + 8 * i)];
        if (v11 > v8)
        {
          v8 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  v5 = [(MRDUIActivityServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006B234;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

@end