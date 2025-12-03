@interface MRDLockScreenRoutingController
- (BOOL)shouldRun;
- (MRDLockScreenRoutingController)init;
- (MRDLockScreenRoutingControllerDataSource)dataSource;
- (MRLockScreenUIControllable)uiController;
- (NSSet)currentHomeUserIdentifiers;
- (NSString)debugDescription;
- (id)_createProvider;
- (id)_nowPlayingControllerConfigurationForUID:(id)d topologyIdentifier:(id)identifier;
- (id)nearbyDevicesIdentifiers;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_handleLayoutDidChangeNotification:(id)notification;
- (void)_onQueue_immediatelyReevaluateRemoteControlState;
- (void)_onQueue_reevaluateRemoteControlState;
- (void)_updateRecommendedEndpointWithOutputDeviceUID:(id)d reason:(id)reason;
- (void)devicesUpdated;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)routeRecommendationDismissed;
- (void)startObservationIfNeeded;
@end

@implementation MRDLockScreenRoutingController

- (BOOL)shouldRun
{
  displayMonitor = [(MRDLockScreenRoutingController *)self displayMonitor];
  if ([displayMonitor lockScreenVisible])
  {
    displayMonitor2 = [(MRDLockScreenRoutingController *)self displayMonitor];
    v5 = [displayMonitor2 controlCenterVisible] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)devicesUpdated
{
  queue = [(MRDLockScreenRoutingController *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MRDLockScreenRoutingController *)self _onQueue_reevaluateRemoteControlState];
}

- (void)_onQueue_reevaluateRemoteControlState
{
  debouncer = [(MRDLockScreenRoutingController *)self debouncer];
  [debouncer update];
}

- (void)_onQueue_immediatelyReevaluateRemoteControlState
{
  queue = [(MRDLockScreenRoutingController *)self queue];
  dispatch_assert_queue_V2(queue);

  nearbyDevicesIdentifiers = [(MRDLockScreenRoutingController *)self nearbyDevicesIdentifiers];
  if (-[MRDLockScreenRoutingController shouldRun](self, "shouldRun") && !-[MRDLockScreenRoutingController hasTriggered](self, "hasTriggered") && [nearbyDevicesIdentifiers count])
  {
    v5 = +[MRUserSettings currentSettings];
    supportManyRecommendationsPlatters = [v5 supportManyRecommendationsPlatters];

    if ((supportManyRecommendationsPlatters & 1) != 0 || (-[MRDLockScreenRoutingController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 lockScreenPlatterActive], v7, !v8))
    {
      v9 = dispatch_group_create();
      v25 = objc_alloc_init(NSMutableSet);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = nearbyDevicesIdentifiers;
      obj = nearbyDevicesIdentifiers;
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
            firstObject = [v14 firstObject];
            v16 = [(MRDLockScreenRoutingController *)self _nowPlayingControllerConfigurationForUID:firstObject topologyIdentifier:v13];
            v17 = [[MRNowPlayingController alloc] initWithConfiguration:v16];
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_10008A1B4;
            v30[3] = &unk_1004B9190;
            v31 = v9;
            v32 = v14;
            v33 = v13;
            v34 = v25;
            selfCopy = self;
            v36 = firstObject;
            v18 = firstObject;
            v19 = v14;
            [v17 performRequestWithCompletion:v30];

            v12 = v12 + 1;
          }

          while (v11 != v12);
          v11 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v11);
      }

      queue2 = [(MRDLockScreenRoutingController *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008A484;
      block[3] = &unk_1004B69D0;
      v27 = obj;
      v28 = v25;
      selfCopy2 = self;
      v21 = v25;
      dispatch_group_notify(v9, queue2, block);

      nearbyDevicesIdentifiers = v22;
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
  provider = [(MRDLockScreenRoutingController *)self provider];
  nearbyDeviceIdentifiers = [provider nearbyDeviceIdentifiers];

  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = nearbyDeviceIdentifiers;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ProximityController] >>+ MRDLockScreenRoutingController.nearbyDevicesIdentifiers: %@", buf, 0xCu);
  }

  v6 = +[MRUserSettings currentSettings];
  supportManyRecommendationsPlatters = [v6 supportManyRecommendationsPlatters];

  if (supportManyRecommendationsPlatters)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100089AD4;
    v15[3] = &unk_1004B90C8;
    v16 = @"LOCAL";
    v8 = [nearbyDeviceIdentifiers msv_filter:v15];
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
    v11 = nearbyDeviceIdentifiers;
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
    queue = [(MRDLockScreenRoutingController *)v2 queue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100014B80;
    v19[3] = &unk_1004B6D08;
    v15 = v2;
    v20 = v15;
    v16 = [v13 initWithInterval:@"MRDLockScreenRoutingController" name:queue queue:v19 block:1.0];
    debouncer = v15->_debouncer;
    v15->_debouncer = v16;

    [(MRDLockScreenRoutingController *)v15 startObservationIfNeeded];
  }

  return v2;
}

- (NSString)debugDescription
{
  provider = [(MRDLockScreenRoutingController *)self provider];
  nearbyDeviceIdentifiers = [provider nearbyDeviceIdentifiers];
  v4 = [NSString stringWithFormat:@"    nearbyDeviceIdentifiers = %@\n", nearbyDeviceIdentifiers];
  v5 = MRCreateFormattedDebugDescriptionFromClass();

  return v5;
}

- (void)startObservationIfNeeded
{
  provider = [(MRDLockScreenRoutingController *)self provider];

  if (!provider)
  {
    _createProvider = [(MRDLockScreenRoutingController *)self _createProvider];
    [(MRDLockScreenRoutingController *)self setProvider:_createProvider];
  }

  provider2 = [(MRDLockScreenRoutingController *)self provider];
  [provider2 startObservationIfNeeded];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homes = [homes homes];
  v5 = [homes msv_compactMap:&stru_1004B9108];
  v6 = [NSSet setWithArray:v5];

  obj = self;
  objc_sync_enter(obj);
  currentHomeUserIdentifiers = obj->_currentHomeUserIdentifiers;
  obj->_currentHomeUserIdentifiers = v6;

  objc_sync_exit(obj);
}

- (NSSet)currentHomeUserIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_homeManager)
  {
    v3 = +[NSDate date];
    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];

    v6 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDLockScreenRoutingController.HMHomeManager", uUIDString];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v8 = [[HMHomeManager alloc] initWithOptions:1];
    homeManager = selfCopy->_homeManager;
    selfCopy->_homeManager = v8;

    [(HMHomeManager *)selfCopy->_homeManager setDelegate:selfCopy];
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:v3];
      *buf = 138543874;
      v29 = @"MRDLockScreenRoutingController.HMHomeManager";
      v30 = 2114;
      v31 = uUIDString;
      v32 = 2048;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }
  }

  currentHomeUserIdentifiers = selfCopy->_currentHomeUserIdentifiers;
  if (!currentHomeUserIdentifiers)
  {
    v14 = +[NSDate date];
    v15 = +[NSUUID UUID];
    uUIDString2 = [v15 UUIDString];

    v17 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDLockScreenRoutingController.HMHomeManager.currentHomeUserIdentifiers", uUIDString2];
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    homes = [(HMHomeManager *)selfCopy->_homeManager homes];
    v20 = [homes msv_compactMap:&stru_1004B9128];
    v21 = [NSSet setWithArray:v20];
    v22 = selfCopy->_currentHomeUserIdentifiers;
    selfCopy->_currentHomeUserIdentifiers = v21;

    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = +[NSDate date];
      [v24 timeIntervalSinceDate:v14];
      *buf = 138543874;
      v29 = @"MRDLockScreenRoutingController.HMHomeManager.currentHomeUserIdentifiers";
      v30 = 2114;
      v31 = uUIDString2;
      v32 = 2048;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }

    currentHomeUserIdentifiers = selfCopy->_currentHomeUserIdentifiers;
  }

  v26 = currentHomeUserIdentifiers;
  objc_sync_exit(selfCopy);

  return v26;
}

- (id)_createProvider
{
  v3 = +[MRDMediaRemoteServer server];
  routingServer = [v3 routingServer];
  recommendationController = [routingServer recommendationController];

  recommender = [recommendationController recommender];
  if (recommender)
  {
    v7 = [MRDIntelligentRoutingLockScreenRoutingProvider alloc];
    queue = [(MRDLockScreenRoutingController *)self queue];
    v9 = [(MRDIntelligentRoutingLockScreenRoutingProvider *)v7 initWithDelegate:self queue:queue routeRecommender:recommender routeRecommendationStore:recommendationController];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateRecommendedEndpointWithOutputDeviceUID:(id)d reason:(id)reason
{
  dCopy = d;
  reasonCopy = reason;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ProximityController] Updating recommended endpoint to device %@ because %@", &v11, 0x16u);
  }

  [(MRDLockScreenRoutingController *)self setHasTriggered:1];
  v9 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:dCopy type:2 reason:reasonCopy];
  queue = [(MRDLockScreenRoutingController *)self queue];
  [v9 perform:queue completion:0];
}

- (id)_nowPlayingControllerConfigurationForUID:(id)d topologyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  v7 = [[MRDestination alloc] initWithOutputDeviceUID:dCopy];
  v8 = [[MRNowPlayingControllerConfiguration alloc] initWithDestination:v7];
  [v8 setRequestPlaybackState:1];
  [v8 setRequestPlaybackQueue:0];
  [v8 setRequestClientProperties:0];
  [v8 setRequestSupportedCommands:0];
  [v8 setRequestLastPlayingDate:0];
  identifierCopy = [NSString stringWithFormat:@"ProximityController(%@<%@>)", dCopy, identifierCopy];

  [v8 setLabel:identifierCopy];

  return v8;
}

- (void)_handleLayoutDidChangeNotification:(id)notification
{
  queue = [(MRDLockScreenRoutingController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008A828;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
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

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  intValue = [v5 intValue];

  if (!intValue)
  {
    [(MRDLockScreenRoutingController *)self startObservationIfNeeded];
    queue = [(MRDLockScreenRoutingController *)self queue];
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (MRDLockScreenRoutingControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end