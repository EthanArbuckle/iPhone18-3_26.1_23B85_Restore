@interface MRDMediaServerAVRoutingDataSource
- (BOOL)currentRouteSupportsVolumeControl;
- (BOOL)resetPickedRouteForSource:(unsigned int)source;
- (BOOL)unpickAirPlayRoutes;
- (MRDMediaServerAVRoutingDataSource)init;
- (id)_descriptionForDiscoveryMode:(unsigned int)mode;
- (id)_oddsShimDataSource;
- (id)pickableRoutesForCategory:(id)category source:(unsigned int)source;
- (id)pickedRoute;
- (unsigned)externalScreenType;
- (void)_avSessionMediaServicesResetNotification:(id)notification;
- (void)_externalScreenDidChangeNotification:(id)notification;
- (void)_notifyDelegateRoutesDidChange;
- (void)_portStatusDidChangeNotification:(id)notification;
- (void)_registerAVSystemControllerNotifications;
- (void)_unregisterAVSystemControllerNotifications;
- (void)dealloc;
- (void)userCancelledPickingRoute:(id)route;
@end

@implementation MRDMediaServerAVRoutingDataSource

- (unsigned)externalScreenType
{
  _mediaServerController = [(MRDMediaServerAVRoutingDataSource *)self _mediaServerController];
  v3 = [_mediaServerController attributeForKey:AVSystemController_CurrentExternalScreenAttribute];

  v4 = v3;
  if ([v4 isEqualToString:AVSystemController_ExternalScreenType_AirPlay])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:AVSystemController_ExternalScreenType_TVOut])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_notifyDelegateRoutesDidChange
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"MRDAVRoutingDataSourcePickableRoutesDidChangeNotification" object:self];
}

- (MRDMediaServerAVRoutingDataSource)init
{
  v5.receiver = self;
  v5.super_class = MRDMediaServerAVRoutingDataSource;
  v2 = [(MRDAVRoutingDataSource *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_avSessionMediaServicesResetNotification:" name:AVSystemController_ServerConnectionDiedNotification object:0];

    [(MRDMediaServerAVRoutingDataSource *)v2 _registerAVSystemControllerNotifications];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRDMediaServerAVRoutingDataSource;
  [(MRDMediaServerAVRoutingDataSource *)&v4 dealloc];
}

- (BOOL)currentRouteSupportsVolumeControl
{
  _mediaServerController = [(MRDMediaServerAVRoutingDataSource *)self _mediaServerController];
  currentRouteHasVolumeControl = [_mediaServerController currentRouteHasVolumeControl];

  return currentRouteHasVolumeControl;
}

- (id)pickedRoute
{
  pickedRoutes = [(MRDMediaServerAVRoutingDataSource *)self pickedRoutes];
  firstObject = [pickedRoutes firstObject];

  return firstObject;
}

- (id)pickableRoutesForCategory:(id)category source:(unsigned int)source
{
  categoryCopy = category;
  v22 = categoryCopy;
  if (categoryCopy)
  {
    v6 = categoryCopy;
    if ([categoryCopy isEqualToString:@"MRDAVRoutingCategoryMedia"])
    {
      _mediaServerController2 = @"Audio/Video";
    }

    else if ([v6 isEqualToString:@"MRDAVRoutingCategorySystem"])
    {
      _mediaServerController2 = @"Default";
    }

    else
    {
      _mediaServerController2 = v6;
    }

    _mediaServerController = [(MRDMediaServerAVRoutingDataSource *)self _mediaServerController];
    v8 = [_mediaServerController pickableRoutesForCategory:_mediaServerController2];
  }

  else
  {
    _mediaServerController2 = [(MRDMediaServerAVRoutingDataSource *)self _mediaServerController];
    v8 = [(__CFString *)_mediaServerController2 attributeForKey:AVSystemController_PickableRoutesAttribute];
  }

  v10 = objc_alloc_init(NSMutableArray);
  v11 = sub_1000164E0();
  uppercaseString = [v11 uppercaseString];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    v23 = kMRMediaRemoteRouteIsLocalDeviceRouteKey;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 valueForKeyPath:@"AirPlayPortExtendedInfo.deviceID"];
        if ([v18 isEqualToString:uppercaseString])
        {
          v19 = [v17 mutableCopy];
          [v19 setObject:&__kCFBooleanTrue forKey:v23];

          v17 = v19;
        }

        v20 = [[MRDMediaServerAVRoute alloc] initWithDictionary:v17];
        [v10 addObject:v20];
      }

      v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  return v10;
}

- (BOOL)resetPickedRouteForSource:(unsigned int)source
{
  [(MRDMediaServerAVRoutingDataSource *)self pickableRoutesForCategory:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    sourceCopy = source;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        type = [v10 type];
        if ([type isEqualToString:@"AVAudioRoute_Speaker"])
        {

LABEL_13:
          v14 = [(MRDMediaServerAVRoutingDataSource *)selfCopy setPickedRoute:v10 withPassword:0 forSource:sourceCopy];
          goto LABEL_14;
        }

        type2 = [v10 type];
        v13 = [type2 isEqualToString:@"AVAudioRoute_Headphone"];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (void)userCancelledPickingRoute:(id)route
{
  routeCopy = route;
  _mediaServerController = [(MRDMediaServerAVRoutingDataSource *)self _mediaServerController];
  if (objc_opt_respondsToSelector())
  {
    dictionary = [routeCopy dictionary];
    [_mediaServerController didCancelRoutePicking:dictionary];
  }
}

- (BOOL)unpickAirPlayRoutes
{
  _mediaServerController = [(MRDMediaServerAVRoutingDataSource *)self _mediaServerController];
  v8 = 0;
  v4 = [_mediaServerController setAttribute:&__kCFBooleanTrue forKey:AVSystemController_RouteAwayFromAirPlayAttribute error:&v8];
  v5 = v8;

  if (v4)
  {
    [(MRDMediaServerAVRoutingDataSource *)self _notifyDelegateRoutesDidChange];
  }

  else
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003A8C08(v5, v6);
    }
  }

  return v4;
}

- (void)_externalScreenDidChangeNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"MRDAVRoutingDataSourceExternalScreenDidChangeNotification" object:self];
}

- (void)_portStatusDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:AVSystemController_RouteDescriptionKey_PortStatusChangeReason];
  intValue = [v5 intValue];

  v7 = 0;
  if (intValue <= 200469)
  {
    if (intValue > 200400)
    {
      if (intValue == 200401)
      {
        goto LABEL_16;
      }

      if (intValue == 200453)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (intValue == -71891)
      {
        v7 = 4;
        goto LABEL_22;
      }

      if (!intValue)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (intValue > 1886609777)
    {
      if (intValue != 1886609778)
      {
        if (intValue != 1886610035)
        {
          if (intValue == 1886613355)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v7 = 3;
        goto LABEL_22;
      }

LABEL_17:
      v7 = 1;
      goto LABEL_22;
    }

    if (intValue == 200470)
    {
      goto LABEL_17;
    }

    if (intValue == 1886609766)
    {
LABEL_16:
      v7 = 2;
      goto LABEL_22;
    }
  }

LABEL_19:
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v20 = intValue;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AirPlay Error: Unknown VADPortStatus: %d", buf, 8u);
  }

  v7 = 5;
LABEL_22:
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [userInfo objectForKey:AVSystemController_RouteDescriptionKey_RouteName];
    *buf = 67109378;
    *v20 = intValue;
    *&v20[4] = 2112;
    *&v20[6] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "VAD port status changed to %i for route %@", buf, 0x12u);
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [userInfo objectForKey:AVSystemController_RouteDescriptionKey_RouteName];
    *buf = 134218242;
    *v20 = v7;
    *&v20[8] = 2112;
    *&v20[10] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MRMediaRemoteRouteStatus changed to %li for route %@", buf, 0x16u);
  }

  v13 = [[MRDMediaServerAVRoute alloc] initWithDictionary:userInfo];
  v14 = [NSNumber numberWithInt:v7, @"MRDAVRoutingDataSourceAVRouteUserInfoKey", @"MRDAVRoutingDataSourceRouteStatusUserInfoKey", v13];
  v18[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:&v17 count:2];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 postNotificationName:@"MRDAVRoutingDataSourceRouteStatusDidChangeNotification" object:self userInfo:v15];
}

- (void)_avSessionMediaServicesResetNotification:(id)notification
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MediaServerAVRoutingDataSource] AVAudioSessionMediaServicesWereReset notification received -- re-registering notifications and resetting cache", v6, 2u);
  }

  [(MRDMediaServerAVRoutingDataSource *)self _unregisterAVSystemControllerNotifications];
  [(MRDMediaServerAVRoutingDataSource *)self _registerAVSystemControllerNotifications];
  [(MRDMediaServerAVRoutingDataSource *)self setDiscoveryMode:[(MRDAVRoutingDataSource *)self discoveryMode]];
  [(MRDMediaServerAVRoutingDataSource *)self _notifyDelegateRoutesDidChange];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"MRDAVRoutingDataSourceExternalScreenDidChangeNotification" object:self];
}

- (void)_registerAVSystemControllerNotifications
{
  v3 = +[AVSystemController sharedAVSystemController];
  v14 = AVSystemController_ServerConnectionDiedNotification;
  v4 = [NSArray arrayWithObjects:&v14 count:1];
  [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  if (AVSystemController_ExternalScreenDidChangeNotification)
  {
    v13 = AVSystemController_ExternalScreenDidChangeNotification;
    v5 = [NSArray arrayWithObjects:&v13 count:1];
    [v3 setAttribute:v5 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_externalScreenDidChangeNotification:" name:AVSystemController_ExternalScreenDidChangeNotification object:v3];
  }

  if (AVSystemController_PickableRoutesDidChangeNotification)
  {
    v12 = AVSystemController_PickableRoutesDidChangeNotification;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    [v3 setAttribute:v7 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"_pickableRoutesDidChangeNotification:" name:AVSystemController_PickableRoutesDidChangeNotification object:v3];
  }

  if (AVSystemController_PortStatusDidChangeNotification)
  {
    v11 = AVSystemController_PortStatusDidChangeNotification;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [v3 setAttribute:v9 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_portStatusDidChangeNotification:" name:AVSystemController_PortStatusDidChangeNotification object:v3];
  }
}

- (void)_unregisterAVSystemControllerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVSystemController_ExternalScreenDidChangeNotification object:0];
  [v3 removeObserver:self name:AVSystemController_PickableRoutesDidChangeNotification object:0];
  [v3 removeObserver:self name:AVSystemController_PortStatusDidChangeNotification object:0];
}

- (id)_descriptionForDiscoveryMode:(unsigned int)mode
{
  v3 = MRMediaRemoteCopyRouteDiscoveryModeDescription();

  return v3;
}

- (id)_oddsShimDataSource
{
  oddsShimDataSource = self->_oddsShimDataSource;
  if (!oddsShimDataSource)
  {
    v4 = objc_alloc_init(MRDOutputDeviceRoutingDataSource);
    v5 = self->_oddsShimDataSource;
    self->_oddsShimDataSource = v4;

    oddsShimDataSource = self->_oddsShimDataSource;
  }

  return oddsShimDataSource;
}

@end