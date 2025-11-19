@interface MRDLockScreenRoutingController
- (BOOL)shouldRun;
- (MRDLockScreenRoutingController)init;
- (MRDLockScreenRoutingControllerDataSource)dataSource;
- (MRLockScreenUIControllable)uiController;
- (NSSet)currentHomeUserIdentifiers;
- (NSString)debugDescription;
- (id)_createProvider;
- (id)_nowPlayingControllerConfigurationForUID:(id)a3 topologyIdentifier:(id)a4;
- (id)nearbyDevicesIdentifiers;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3;
- (void)_handleLayoutDidChangeNotification:(id)a3;
- (void)_onQueue_immediatelyReevaluateRemoteControlState;
- (void)_onQueue_reevaluateRemoteControlState;
- (void)_updateRecommendedEndpointWithOutputDeviceUID:(id)a3 reason:(id)a4;
- (void)devicesUpdated;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)routeRecommendationDismissed;
- (void)startObservationIfNeeded;
@end

@implementation MRDLockScreenRoutingController

- (BOOL)shouldRun
{
  v3 = [(MRDLockScreenRoutingController *)self displayMonitor];
  if ([v3 lockScreenVisible])
  {
    v4 = [(MRDLockScreenRoutingController *)self displayMonitor];
    v5 = [v4 controlCenterVisible] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)devicesUpdated
{
  v3 = [(MRDLockScreenRoutingController *)self queue];
  dispatch_assert_queue_V2(v3);

  [(MRDLockScreenRoutingController *)self _onQueue_reevaluateRemoteControlState];
}

- (void)_onQueue_reevaluateRemoteControlState
{
  v2 = [(MRDLockScreenRoutingController *)self debouncer];
  [v2 update];
}

- (void)_onQueue_immediatelyReevaluateRemoteControlState
{
  v3 = [(MRDLockScreenRoutingController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MRDLockScreenRoutingController *)self nearbyDevicesIdentifiers];
  if (-[MRDLockScreenRoutingController shouldRun](self, "shouldRun") && !-[MRDLockScreenRoutingController hasTriggered](self, "hasTriggered") && [v4 count])
  {
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 supportManyRecommendationsPlatters];

    if ((v6 & 1) != 0 || (-[MRDLockScreenRoutingController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 lockScreenPlatterActive], v7, !v8))
    {
      v9 = dispatch_group_create();
      v25 = objc_alloc_init(NSMutableSet);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = v4;
      obj = v4;
      v10 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v24 = *v38;
        do
        {
          v12 = 0;
          do
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v37 + 1) + 8 * v12);
            dispatch_group_enter(v9);
            v14 = [v13 componentsSeparatedByString:@"|"];
            v15 = [v14 firstObject];
            v16 = [(MRDLockScreenRoutingController *)self _nowPlayingControllerConfigurationForUID:v15 topologyIdentifier:v13];
            v17 = [[MRNowPlayingController alloc] initWithConfiguration:v16];
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_10008A1B4;
            v30[3] = &unk_1004B9190;
            v31 = v9;
            v32 = v14;
            v33 = v13;
            v34 = v25;
            v35 = self;
            v36 = v15;
            v18 = v15;
            v19 = v14;
            [v17 performRequestWithCompletion:v30];

            v12 = v12 + 1;
          }

          while (v11 != v12);
          v11 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v11);
      }

      v20 = [(MRDLockScreenRoutingController *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008A484;
      block[3] = &unk_1004B69D0;
      v27 = obj;
      v28 = v25;
      v29 = self;
      v21 = v25;
      dispatch_group_notify(v9, v20, block);

      v4 = v22;
    }

    else
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ProximityController] Maintaining proactive device because lock screen platter is active.", buf, 2u);
      }
    }
  }
}

- (id)nearbyDevicesIdentifiers
{
  v3 = [(MRDLockScreenRoutingController *)self provider];
  v4 = [v3 nearbyDeviceIdentifiers];

  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ProximityController] >>+ MRDLockScreenRoutingController.nearbyDevicesIdentifiers: %@", buf, 0xCu);
  }

  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 supportManyRecommendationsPlatters];

  if (v7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100089AD4;
    v15[3] = &unk_1004B90C8;
    v16 = @"LOCAL";
    v8 = [v4 msv_filter:v15];
    v9 = [(MRDLockScreenRoutingController *)self ase];
    if ([v9 isLocalEndpoint])
    {
      v10 = &__NSArray0__struct;
    }

    else
    {
      v17 = @"LOCAL";
      v10 = [NSArray arrayWithObjects:&v17 count:1];
    }

    v12 = [v10 arrayByAddingObjectsFromArray:v8];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100089AF8;
    v14[3] = &unk_1004B90C8;
    v14[4] = self;
    v11 = [v12 msv_filter:v14];
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

- (MRDLockScreenRoutingController)init
{
  v21.receiver = self;
  v21.super_class = MRDLockScreenRoutingController;
  v2 = [(MRDLockScreenRoutingController *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MediaRemote.ProximityController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[MRDDisplayMonitor sharedMonitor];
    displayMonitor = v2->_displayMonitor;
    v2->_displayMonitor = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_handleLayoutDidChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v2->_displayMonitor];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_externalDeviceHomeServerDidReceiveSystemEndpointUpdateRequestNotification:" name:@"MRDExternalDeviceHomeServerDidReceiveSystemEndpointUpdateRequestNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

    v11 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    ase = v2->_ase;
    v2->_ase = v11;

    v13 = [MRRateLimiter alloc];
    v14 = [(MRDLockScreenRoutingController *)v2 queue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100014B80;
    v19[3] = &unk_1004B6D08;
    v15 = v2;
    v20 = v15;
    v16 = [v13 initWithInterval:@"MRDLockScreenRoutingController" name:v14 queue:v19 block:1.0];
    debouncer = v15->_debouncer;
    v15->_debouncer = v16;

    [(MRDLockScreenRoutingController *)v15 startObservationIfNeeded];
  }

  return v2;
}

- (NSString)debugDescription
{
  v2 = [(MRDLockScreenRoutingController *)self provider];
  v3 = [v2 nearbyDeviceIdentifiers];
  v4 = [NSString stringWithFormat:@"    nearbyDeviceIdentifiers = %@\n", v3];
  v5 = MRCreateFormattedDebugDescriptionFromClass();

  return v5;
}

- (void)startObservationIfNeeded
{
  v3 = [(MRDLockScreenRoutingController *)self provider];

  if (!v3)
  {
    v4 = [(MRDLockScreenRoutingController *)self _createProvider];
    [(MRDLockScreenRoutingController *)self setProvider:v4];
  }

  v5 = [(MRDLockScreenRoutingController *)self provider];
  [v5 startObservationIfNeeded];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = [a3 homes];
  v5 = [v4 msv_compactMap:&stru_1004B9108];
  v6 = [NSSet setWithArray:v5];

  obj = self;
  objc_sync_enter(obj);
  currentHomeUserIdentifiers = obj->_currentHomeUserIdentifiers;
  obj->_currentHomeUserIdentifiers = v6;

  objc_sync_exit(obj);
}

- (NSSet)currentHomeUserIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_homeManager)
  {
    v3 = +[NSDate date];
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v6 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDLockScreenRoutingController.HMHomeManager", v5];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v8 = [[HMHomeManager alloc] initWithOptions:1];
    homeManager = v2->_homeManager;
    v2->_homeManager = v8;

    [(HMHomeManager *)v2->_homeManager setDelegate:v2];
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:v3];
      *buf = 138543874;
      v29 = @"MRDLockScreenRoutingController.HMHomeManager";
      v30 = 2114;
      v31 = v5;
      v32 = 2048;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }
  }

  currentHomeUserIdentifiers = v2->_currentHomeUserIdentifiers;
  if (!currentHomeUserIdentifiers)
  {
    v14 = +[NSDate date];
    v15 = +[NSUUID UUID];
    v16 = [v15 UUIDString];

    v17 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDLockScreenRoutingController.HMHomeManager.currentHomeUserIdentifiers", v16];
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v19 = [(HMHomeManager *)v2->_homeManager homes];
    v20 = [v19 msv_compactMap:&stru_1004B9128];
    v21 = [NSSet setWithArray:v20];
    v22 = v2->_currentHomeUserIdentifiers;
    v2->_currentHomeUserIdentifiers = v21;

    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = +[NSDate date];
      [v24 timeIntervalSinceDate:v14];
      *buf = 138543874;
      v29 = @"MRDLockScreenRoutingController.HMHomeManager.currentHomeUserIdentifiers";
      v30 = 2114;
      v31 = v16;
      v32 = 2048;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }

    currentHomeUserIdentifiers = v2->_currentHomeUserIdentifiers;
  }

  v26 = currentHomeUserIdentifiers;
  objc_sync_exit(v2);

  return v26;
}

- (id)_createProvider
{
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 routingServer];
  v5 = [v4 recommendationController];

  v6 = [v5 recommender];
  if (v6)
  {
    v7 = [MRDIntelligentRoutingLockScreenRoutingProvider alloc];
    v8 = [(MRDLockScreenRoutingController *)self queue];
    v9 = [(MRDIntelligentRoutingLockScreenRoutingProvider *)v7 initWithDelegate:self queue:v8 routeRecommender:v6 routeRecommendationStore:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateRecommendedEndpointWithOutputDeviceUID:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ProximityController] Updating recommended endpoint to device %@ because %@", &v11, 0x16u);
  }

  [(MRDLockScreenRoutingController *)self setHasTriggered:1];
  v9 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v6 type:2 reason:v7];
  v10 = [(MRDLockScreenRoutingController *)self queue];
  [v9 perform:v10 completion:0];
}

- (id)_nowPlayingControllerConfigurationForUID:(id)a3 topologyIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MRDestination alloc] initWithOutputDeviceUID:v6];
  v8 = [[MRNowPlayingControllerConfiguration alloc] initWithDestination:v7];
  [v8 setRequestPlaybackState:1];
  [v8 setRequestPlaybackQueue:0];
  [v8 setRequestClientProperties:0];
  [v8 setRequestSupportedCommands:0];
  [v8 setRequestLastPlayingDate:0];
  v9 = [NSString stringWithFormat:@"ProximityController(%@<%@>)", v6, v5];

  [v8 setLabel:v9];

  return v8;
}

- (void)_handleLayoutDidChangeNotification:(id)a3
{
  v4 = [(MRDLockScreenRoutingController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008A828;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v4, block);
}

- (MRLockScreenUIControllable)uiController
{
  uiController = self->_uiController;
  if (!uiController)
  {
    v4 = [MRDUIControllerProvider lockScreenUIControllerWithDelegate:self];
    v5 = self->_uiController;
    self->_uiController = v4;

    uiController = self->_uiController;
  }

  return uiController;
}

- (void)routeRecommendationDismissed
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[ProximityController] routeRecommendationDismissed", v3, 2u);
  }
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v6 = [v5 intValue];

  if (!v6)
  {
    [(MRDLockScreenRoutingController *)self startObservationIfNeeded];
    v7 = [(MRDLockScreenRoutingController *)self queue];
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (MRDLockScreenRoutingControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end