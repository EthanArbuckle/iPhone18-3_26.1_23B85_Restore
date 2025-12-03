@interface MRDRoutingContinuityManager
- (BOOL)shouldIgnorePredictedRoutesSync;
- (MRAVEndpoint)activeSystemEndpoint;
- (MRDRoutingContinuityManager)init;
- (MSVTimer)pausePredictedRoutesTimer;
- (id)_calculateDesiredPredictedRouteOutputDeviceUIDs;
- (void)_pausePredicatedRoutesSync;
- (void)_reevaluatePredictedRoutes;
- (void)setActiveSystemEndpoint:(id)endpoint;
- (void)setPausePredictedRoutesTimer:(id)timer;
@end

@implementation MRDRoutingContinuityManager

- (id)_calculateDesiredPredictedRouteOutputDeviceUIDs
{
  v3 = +[MRDMediaRemoteServer server];
  deviceInfo = [v3 deviceInfo];

  v5 = +[MRUserSettings currentSettings];
  if ([v5 supportTopologyHealing])
  {
    isAirPlayActive = [deviceInfo isAirPlayActive];

    if (isAirPlayActive)
    {
      leaderDeviceInfo = [deviceInfo leaderDeviceInfo];
      groupedDevices = [leaderDeviceInfo groupedDevices];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10009AAD4;
      v42[3] = &unk_1004B99C8;
      v9 = deviceInfo;
      v43 = v9;
      v10 = [groupedDevices msv_compactMap:v42];

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10009AB68;
      v40[3] = &unk_1004B99F0;
      v11 = v9;
      v41 = v11;
      v12 = sub_10009AB68(v40);
      if (!v12 && ![v10 count])
      {
        v20 = 0;
        goto LABEL_17;
      }

      v13 = +[MRAVLocalEndpoint sharedLocalEndpoint];
      outputDevices = [v13 outputDevices];

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10009ACD4;
      v38[3] = &unk_1004B8A40;
      v15 = v11;
      v39 = v15;
      v16 = [outputDevices msv_firstWhere:v38];

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10009AD58;
      v36[3] = &unk_1004B8A40;
      v17 = v15;
      v37 = v17;
      v18 = [outputDevices msv_firstWhere:v36];

      v19 = [outputDevices msv_compactMap:&stru_1004B9A10];
      v20 = objc_alloc_init(NSMutableArray);
      if ([v17 supportsTwoHop])
      {
        [v20 addObjectsFromArray:v10];
        if (v12)
        {
          [v20 addObject:v12];
        }

        if (v16)
        {
          [v20 addObjectsFromArray:v19];
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }
      }

      else
      {
        if (v18)
        {
          goto LABEL_16;
        }

        [v20 addObjectsFromArray:v10];
        if (v12)
        {
          [v20 addObject:v12];
        }
      }

      deviceUID = [v17 deviceUID];
      [v20 addObject:deviceUID];

      goto LABEL_16;
    }
  }

  else
  {
  }

  v20 = 0;
LABEL_18:
  v22 = +[MRUserSettings currentSettings];
  supportRoutingContinuity = [v22 supportRoutingContinuity];

  if (supportRoutingContinuity)
  {
    activeSystemEndpoint = [(MRDRoutingContinuityManager *)self activeSystemEndpoint];
    isLocalEndpoint = [activeSystemEndpoint isLocalEndpoint];

    if ((isLocalEndpoint & 1) == 0)
    {
      activeSystemEndpoint2 = [(MRDRoutingContinuityManager *)self activeSystemEndpoint];
      resolvedOutputDevices = [activeSystemEndpoint2 resolvedOutputDevices];
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_10009ADC4;
      v34 = &unk_1004B8A40;
      v35 = deviceInfo;
      v28 = [resolvedOutputDevices msv_filter:&v31];
      v29 = [v28 msv_compactMap:{&stru_1004B9A30, v31, v32, v33, v34}];

      v20 = v29;
    }
  }

  return v20;
}

- (BOOL)shouldIgnorePredictedRoutesSync
{
  pausePredictedRoutesTimer = [(MRDRoutingContinuityManager *)self pausePredictedRoutesTimer];
  v3 = pausePredictedRoutesTimer != 0;

  return v3;
}

- (MSVTimer)pausePredictedRoutesTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_pausePredictedRoutesTimer;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_reevaluatePredictedRoutes
{
  if (![(MRDRoutingContinuityManager *)self shouldIgnorePredictedRoutesSync])
  {
    _calculateDesiredPredictedRouteOutputDeviceUIDs = [(MRDRoutingContinuityManager *)self _calculateDesiredPredictedRouteOutputDeviceUIDs];
    v4 = [NSSet alloc];
    v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    predictedOutputDeviceUIDs = [v5 predictedOutputDeviceUIDs];
    v7 = [v4 initWithArray:predictedOutputDeviceUIDs];

    v8 = [[NSSet alloc] initWithArray:_calculateDesiredPredictedRouteOutputDeviceUIDs];
    if (v7 != v8 && ([v7 isEqual:v8] & 1) == 0)
    {
      v9 = [MRRequestDetails alloc];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 initWithName:@"Set predicted routes when being airplayed to by a group" requestID:0 reason:v11];

      v13 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v12 type:3 outputDeviceUIDs:_calculateDesiredPredictedRouteOutputDeviceUIDs];
      [v13 setShouldModifyPredictedRoutes:1];
      v14 = +[MRAVLocalEndpoint sharedLocalEndpoint];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10009AE3C;
      v16[3] = &unk_1004B6FC0;
      v17 = v12;
      v15 = v12;
      [v14 modifyTopologyWithRequest:v13 withReplyQueue:&_dispatch_main_q completion:v16];
    }
  }
}

- (MRDRoutingContinuityManager)init
{
  v36.receiver = self;
  v36.super_class = MRDRoutingContinuityManager;
  v2 = [(MRDRoutingContinuityManager *)&v36 init];
  if (v2)
  {
    v3 = +[MRUserSettings currentSettings];
    supportRoutingContinuity = [v3 supportRoutingContinuity];

    if (supportRoutingContinuity)
    {
      v5 = [MRRateLimiter alloc];
      v6 = dispatch_get_global_queue(0, 0);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10009A4FC;
      v34[3] = &unk_1004B6D08;
      v7 = v2;
      v35 = v7;
      v8 = [v5 initWithInterval:@"com.apple.mediaremote.MRDRoutingContinuityManager.debouncer" name:v6 queue:v34 block:0.5];
      debouncer = v7->_debouncer;
      v7->_debouncer = v8;

      v10 = +[NSNotificationCenter defaultCenter];
      v11 = kMRMediaRemoteActiveSystemEndpointDidChangeNotification;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10009A590;
      v32[3] = &unk_1004B99A0;
      v33 = v7;
      v12 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:v32];
    }

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = kMRDeviceInfoDidChangeNotification;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10009A61C;
    v30[3] = &unk_1004B99A0;
    v15 = v2;
    v31 = v15;
    v16 = [v13 addObserverForName:v14 object:0 queue:0 usingBlock:v30];

    v17 = +[NSNotificationCenter defaultCenter];
    v18 = MRAVOutputContextModificationRequestToClearPredictedRoutesNotifications;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10009A624;
    v28[3] = &unk_1004B99A0;
    v19 = v15;
    v29 = v19;
    v20 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v28];

    v21 = +[MRUserSettings currentSettings];
    LODWORD(v15) = [v21 supportRoutingContinuity];

    v22 = +[MRDMediaRemoteServer server];
    if (v15)
    {
      v23 = v27;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v24 = sub_10009A680;
    }

    else
    {
      v23 = v26;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v24 = sub_10009A704;
    }

    v23[2] = v24;
    v23[3] = &unk_1004B6D08;
    v23[4] = v19;
    [v22 addMediaRemoteSeverStartedHandler:v23];
  }

  return v2;
}

- (void)setActiveSystemEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_activeSystemEndpoint = &selfCopy->_activeSystemEndpoint;
  activeSystemEndpoint = selfCopy->_activeSystemEndpoint;
  v9 = endpointCopy;
  v10 = activeSystemEndpoint;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    v12 = [(MRAVEndpoint *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      if (selfCopy->_endpointOutputDevicesDidChangeToken)
      {
        v13 = +[NSNotificationCenter defaultCenter];
        [v13 removeObserver:selfCopy->_endpointOutputDevicesDidChangeToken];

        endpointOutputDevicesDidChangeToken = selfCopy->_endpointOutputDevicesDidChangeToken;
        selfCopy->_endpointOutputDevicesDidChangeToken = 0;
      }

      debugName = [*p_activeSystemEndpoint debugName];

      if (debugName)
      {
        v16 = _MRLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          debugName2 = [*p_activeSystemEndpoint debugName];
          debugName3 = [(MRAVEndpoint *)v9 debugName];
          *buf = 138544130;
          v30 = v18;
          v31 = 2114;
          v32 = @"activeSystemEndpoint";
          v33 = 2112;
          v34 = debugName2;
          v35 = 2112;
          v36 = debugName3;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", buf, 0x2Au);
        }
      }

      else
      {
        v16 = _MRLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          debugName4 = [(MRAVEndpoint *)v9 debugName];
          *buf = 138543874;
          v30 = v22;
          v31 = 2114;
          v32 = @"activeSystemEndpoint";
          v33 = 2112;
          v34 = debugName4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
        }
      }

      objc_storeStrong(&selfCopy->_activeSystemEndpoint, endpoint);
      if (*p_activeSystemEndpoint)
      {
        v24 = +[NSNotificationCenter defaultCenter];
        v25 = selfCopy->_activeSystemEndpoint;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10009AA78;
        v28[3] = &unk_1004B99A0;
        v28[4] = selfCopy;
        v26 = [v24 addObserverForName:MRAVEndpointOutputDevicesDidChangeNotification object:v25 queue:0 usingBlock:v28];
        v27 = selfCopy->_endpointOutputDevicesDidChangeToken;
        selfCopy->_endpointOutputDevicesDidChangeToken = v26;
      }

      [(MRDRoutingContinuityManager *)selfCopy _reevaluatePredictedRoutes];
    }
  }

  objc_sync_exit(selfCopy);
}

- (MRAVEndpoint)activeSystemEndpoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeSystemEndpoint;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_pausePredicatedRoutesSync
{
  v3 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = 0x4024000000000000;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRoutingContinuityManager] Pausing PredictedRoutesSync for %lf seconds...", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [MSVTimer alloc];
  v6 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009B084;
  v8[3] = &unk_1004B6D08;
  v8[4] = selfCopy;
  v7 = [v5 initWithInterval:&_dispatch_main_q queue:v8 block:10.0];
  [(MRDRoutingContinuityManager *)selfCopy setPausePredictedRoutesTimer:v7];

  objc_sync_exit(selfCopy);
}

- (void)setPausePredictedRoutesTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pausePredictedRoutesTimer = selfCopy->_pausePredictedRoutesTimer;
  selfCopy->_pausePredictedRoutesTimer = timerCopy;

  objc_sync_exit(selfCopy);

  [(MRDRoutingContinuityManager *)selfCopy _reevaluatePredictedRoutes];
}

@end