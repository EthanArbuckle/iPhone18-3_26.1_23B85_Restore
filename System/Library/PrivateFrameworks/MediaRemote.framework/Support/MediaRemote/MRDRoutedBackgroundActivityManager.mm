@interface MRDRoutedBackgroundActivityManager
- (BOOL)shouldUseVideoSymbolForEndpoint:(id)endpoint bundleIdentifiers:(id)identifiers;
- (MRDRoutedBackgroundActivityManager)init;
- (id)controllerForType:(unint64_t)type;
- (id)makeControllerWithIdentifier:(id)identifier;
- (unint64_t)activeBackgroundActivityType;
- (unint64_t)pillTypeWithEndpoint:(id)endpoint;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_presentRoutePickerWithConfiguration:(id)configuration;
- (void)_reevaluatePillsIfDisplayMonitorAndFocusMonitorAreInSyncWithReason:(id)reason;
- (void)dealloc;
- (void)dismissPillWithReason:(id)reason;
- (void)dismissSystemAperturePillWithReason:(id)reason;
- (void)handlePillTap;
- (void)openRoutePicker;
- (void)presentBluePillWithPlainType:(unint64_t)type pulseType:(unint64_t)pulseType route:(id)route remoteControl:(BOOL)control reason:(id)reason;
- (void)presentCarPlayBanner;
- (void)reevaluatePillsWithReason:(id)reason;
- (void)setActiveSystemEndpoint:(id)endpoint;
- (void)setOptimisticRoute:(id)route;
- (void)updateActiveBackgroundActivityWithType:(unint64_t)type reason:(id)reason;
@end

@implementation MRDRoutedBackgroundActivityManager

- (unint64_t)pillTypeWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = endpointCopy;
  if (endpointCopy)
  {
    isLocalEndpoint = [endpointCopy isLocalEndpoint];
    resolvedOutputDevices = [v5 resolvedOutputDevices];
    if ([v5 isLocalEndpoint])
    {
      v8 = [resolvedOutputDevices msv_firstWhere:&stru_1004B85A0];
      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }

    v11 = +[MRDDisplayMonitor sharedMonitor];
    routePickerVisible = [v11 routePickerVisible];

    focusMonitor = [(MRDRoutedBackgroundActivityManager *)self focusMonitor];
    mediaBundlesInFocus = [focusMonitor mediaBundlesInFocus];

    v15 = [mediaBundlesInFocus msv_firstWhere:&stru_1004B85E0];

    v16 = [mediaBundlesInFocus count];
    if (routePickerVisible)
    {
      [(MRDRoutedBackgroundActivityManager *)self shouldUseVideoSymbolForEndpoint:v5 bundleIdentifiers:mediaBundlesInFocus];
      v10 = 0;
    }

    else
    {
      v17 = (v15 != 0) & ~isLocalEndpoint | (v9 && v16 != 0);
      v18 = [(MRDRoutedBackgroundActivityManager *)self shouldUseVideoSymbolForEndpoint:v5 bundleIdentifiers:mediaBundlesInFocus];
      v19 = 1;
      if (v18)
      {
        v19 = 2;
      }

      if (v17)
      {
        v10 = v19;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldUseVideoSymbolForEndpoint:(id)endpoint bundleIdentifiers:(id)identifiers
{
  endpointCopy = endpoint;
  anyObject = [identifiers anyObject];
  outputDevices = [endpointCopy outputDevices];
  mr_containsVideoOutputDevice = [outputDevices mr_containsVideoOutputDevice];

  outputDevices2 = [endpointCopy outputDevices];
  v10 = [outputDevices2 mr_first:&stru_1004B8600];

  if (mr_containsVideoOutputDevice)
  {
    mr_containsVideoOutputDevice2 = 1;
  }

  else
  {
    mr_containsVideoOutputDevice2 = 0;
    if ([endpointCopy isLocalEndpoint] && v10)
    {
      v12 = +[AVOutputContext sharedSystemRemoteDisplayContext];
      v13 = [v12 ID];
      v14 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:v13];

      outputDevices3 = [v14 outputDevices];
      mr_containsVideoOutputDevice2 = [outputDevices3 mr_containsVideoOutputDevice];
    }
  }

  if (anyObject)
  {
    v16 = +[MRDMediaBundleManager shared];
    v17 = [v16 cachedEligibilityOf:anyObject];

    mr_containsVideoOutputDevice2 &= [v17 isVideoApp];
  }

  return mr_containsVideoOutputDevice2;
}

- (MRDRoutedBackgroundActivityManager)init
{
  v22.receiver = self;
  v22.super_class = MRDRoutedBackgroundActivityManager;
  v2 = [(MRDRoutedBackgroundActivityManager *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremote.MRDRoutedBackgroundActivityManager", v3);
    [(MRDRoutedBackgroundActivityManager *)v2 setQueue:v4];

    v5 = +[MRNowPlayingController userSelectedEndpointController];
    nowPlayingController = v2->_nowPlayingController;
    v2->_nowPlayingController = v5;

    [(MRNowPlayingController *)v2->_nowPlayingController setDelegate:v2];
    [(MRNowPlayingController *)v2->_nowPlayingController beginLoadingUpdates];
    v7 = +[NSMutableDictionary dictionary];
    backgroundActivityControllers = v2->_backgroundActivityControllers;
    v2->_backgroundActivityControllers = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = MRAVEndpointDidAddOutputDeviceNotification;
    v12 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [v10 addObserver:v2 selector:"_handleOutputDevicesDidChangeNotification:" name:v11 object:v12];

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = MRAVEndpointDidChangeOutputDeviceNotification;
    v15 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [v13 addObserver:v2 selector:"_handleOutputDevicesDidChangeNotification:" name:v14 object:v15];

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = MRAVEndpointDidRemoveOutputDeviceNotification;
    v18 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [v16 addObserver:v2 selector:"_handleOutputDevicesDidChangeNotification:" name:v17 object:v18];

    v19 = +[NSNotificationCenter defaultCenter];
    v20 = +[MRDDisplayMonitor sharedMonitor];
    [v19 addObserver:v2 selector:"_handleLayoutDidChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v20];
  }

  return v2;
}

- (void)dealloc
{
  [(MRNowPlayingController *)self->_nowPlayingController endLoadingUpdates];
  v3.receiver = self;
  v3.super_class = MRDRoutedBackgroundActivityManager;
  [(MRDRoutedBackgroundActivityManager *)&v3 dealloc];
}

- (id)makeControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [MRDBackgroundActivityController controllerForBackgroundActivityIdentifier:identifierCopy];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074614;
  v7[3] = &unk_1004B8280;
  objc_copyWeak(&v8, &location);
  [v5 handleUserInteractionsWithBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)controllerForType:(unint64_t)type
{
  if (type)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    backgroundActivityControllers = [(MRDRoutedBackgroundActivityManager *)selfCopy backgroundActivityControllers];
    v6 = [NSNumber numberWithUnsignedInteger:type];
    v7 = [backgroundActivityControllers objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = sub_100073EB4(type);
      v7 = [(MRDRoutedBackgroundActivityManager *)selfCopy makeControllerWithIdentifier:v8];

      backgroundActivityControllers2 = [(MRDRoutedBackgroundActivityManager *)selfCopy backgroundActivityControllers];
      v10 = [NSNumber numberWithUnsignedInteger:type];
      [backgroundActivityControllers2 setObject:v7 forKeyedSubscript:v10];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dismissSystemAperturePillWithReason:(id)reason
{
  reasonCopy = reason;
  mediaActivityManager = [(MRDRoutedBackgroundActivityManager *)self mediaActivityManager];
  isPresentingConnectedPill = [mediaActivityManager isPresentingConnectedPill];

  if (isPresentingConnectedPill)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM Asked to dismissPill because %@", &v9, 0xCu);
    }

    mediaActivityManager2 = [(MRDRoutedBackgroundActivityManager *)self mediaActivityManager];
    [mediaActivityManager2 dismissConnectedBanner];
  }
}

- (void)presentBluePillWithPlainType:(unint64_t)type pulseType:(unint64_t)pulseType route:(id)route remoteControl:(BOOL)control reason:(id)reason
{
  reasonCopy = reason;
  playbackState = [(MRDRoutedBackgroundActivityManager *)self playbackState];
  activeBackgroundActivityType = [(MRDRoutedBackgroundActivityManager *)self activeBackgroundActivityType];
  if (route)
  {
    typeCopy = pulseType;
  }

  else
  {
    typeCopy = type;
  }

  if (playbackState != 1 || route == 0)
  {
    pulseTypeCopy2 = type;
  }

  else
  {
    pulseTypeCopy2 = pulseType;
  }

  if (activeBackgroundActivityType == pulseType)
  {
    v16 = typeCopy;
  }

  else
  {
    v16 = pulseTypeCopy2;
  }

  if (activeBackgroundActivityType != v16)
  {
    [MRDRoutedBackgroundActivityManager updateActiveBackgroundActivityWithType:"updateActiveBackgroundActivityWithType:reason:" reason:?];
  }
}

- (void)dismissPillWithReason:(id)reason
{
  reasonCopy = reason;
  if ([(MRDRoutedBackgroundActivityManager *)self supportsCustomSystemAperturePill])
  {
    [(MRDRoutedBackgroundActivityManager *)self dismissSystemAperturePillWithReason:reasonCopy];
  }

  else if ([(MRDRoutedBackgroundActivityManager *)self isPresentingBackgroundActivity])
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM Asked to dismissPill because %@", &v6, 0xCu);
    }

    [(MRDRoutedBackgroundActivityManager *)self updateActiveBackgroundActivityWithType:0 reason:reasonCopy];
  }
}

- (unint64_t)activeBackgroundActivityType
{
  backgroundActivityControllers = [(MRDRoutedBackgroundActivityManager *)self backgroundActivityControllers];
  v3 = [backgroundActivityControllers msv_firstWhere:&stru_1004B8668];

  if (v3)
  {
    first = [v3 first];
    unsignedIntegerValue = [first unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)updateActiveBackgroundActivityWithType:(unint64_t)type reason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (type - 1 > 3)
    {
      v9 = @"None";
    }

    else
    {
      v9 = off_1004B8780[type - 1];
    }

    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM Asked to updateActiveBackgroundActivity withType:%@ because %@", buf, 0x16u);
  }

  v10 = [(MRDRoutedBackgroundActivityManager *)selfCopy controllerForType:type];
  if (([v10 isBackgroundActivityActive] & 1) == 0)
  {
    [v10 setIsBackgroundActivityActive:1];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    backgroundActivityControllers = [(MRDRoutedBackgroundActivityManager *)selfCopy backgroundActivityControllers];
    allValues = [backgroundActivityControllers allValues];

    v13 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (v16 != v10)
          {
            [v16 setIsBackgroundActivityActive:0];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  intValue = [v6 intValue];

  if (!intValue)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM _handleActiveSystemEndpointDidChangeNotification: %@", buf, 0xCu);
    }

    userInfo2 = [notificationCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    queue = [(MRDRoutedBackgroundActivityManager *)self queue];
    v12 = v10;
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (void)_reevaluatePillsIfDisplayMonitorAndFocusMonitorAreInSyncWithReason:(id)reason
{
  reasonCopy = reason;
  v4 = +[MRDDisplayMonitor sharedMonitor];
  presentedBundleIdentifiers = [v4 presentedBundleIdentifiers];
  focusMonitor = [(MRDRoutedBackgroundActivityManager *)self focusMonitor];
  bundlesInFocus = [focusMonitor bundlesInFocus];
  v8 = bundlesInFocus;
  if (presentedBundleIdentifiers == bundlesInFocus)
  {

    goto LABEL_5;
  }

  v9 = [presentedBundleIdentifiers isEqual:bundlesInFocus];

  v10 = reasonCopy;
  if (v9)
  {
LABEL_5:
    [(MRDRoutedBackgroundActivityManager *)self reevaluatePillsWithReason:reasonCopy];
    v10 = reasonCopy;
  }
}

- (void)setActiveSystemEndpoint:(id)endpoint
{
  objc_storeStrong(&self->_activeSystemEndpoint, endpoint);

  [(MRDRoutedBackgroundActivityManager *)self reevaluatePillsWithReason:@"active system endpoint changed"];
}

- (void)setOptimisticRoute:(id)route
{
  objc_storeStrong(&self->_optimisticRoute, route);

  [(MRDRoutedBackgroundActivityManager *)self reevaluatePillsWithReason:@"optimistic route changed"];
}

- (void)reevaluatePillsWithReason:(id)reason
{
  reasonCopy = reason;
  mediaActivityManager = [(MRDRoutedBackgroundActivityManager *)self mediaActivityManager];
  if (([mediaActivityManager isPresentingBanner] & 1) == 0)
  {

LABEL_5:
    activeSystemEndpoint = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
    v7 = [(MRDRoutedBackgroundActivityManager *)self pillTypeWithEndpoint:activeSystemEndpoint];

    if (v7)
    {
      if (v7 != 2)
      {
        if (v7 != 1)
        {
          goto LABEL_15;
        }

        activeSystemEndpoint2 = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
        v9 = [activeSystemEndpoint2 isLocalEndpoint] ^ 1;
        selfCopy3 = self;
        v11 = 0;
LABEL_13:
        [(MRDRoutedBackgroundActivityManager *)selfCopy3 presentAudioBluePill:v11 remoteControl:v9 reason:reasonCopy];
        goto LABEL_14;
      }

      activeSystemEndpoint2 = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
      v9 = [activeSystemEndpoint2 isLocalEndpoint] ^ 1;
      selfCopy3 = self;
      v11 = 0;
    }

    else
    {
      optimisticRoute = [(MRDRoutedBackgroundActivityManager *)self optimisticRoute];

      if (!optimisticRoute)
      {
        [(MRDRoutedBackgroundActivityManager *)self dismissPillWithReason:reasonCopy];
        goto LABEL_15;
      }

      optimisticDevices = [(MRDRoutedBackgroundActivityManager *)self optimisticDevices];
      mr_containsVideoOutputDevice = [optimisticDevices mr_containsVideoOutputDevice];

      activeSystemEndpoint2 = [(MRDRoutedBackgroundActivityManager *)self optimisticRoute];
      selfCopy3 = self;
      v11 = activeSystemEndpoint2;
      v9 = 0;
      if (!mr_containsVideoOutputDevice)
      {
        goto LABEL_13;
      }
    }

    [(MRDRoutedBackgroundActivityManager *)selfCopy3 presentVideoBluePill:v11 remoteControl:v9 reason:reasonCopy];
LABEL_14:

    goto LABEL_15;
  }

  optimisticRoute2 = [(MRDRoutedBackgroundActivityManager *)self optimisticRoute];

  if (optimisticRoute2)
  {
    goto LABEL_5;
  }

LABEL_15:
}

- (void)handlePillTap
{
  v3 = +[MRDMediaRemoteServer server];
  routingServer = [v3 routingServer];
  carPlayRecommendationController = [routingServer carPlayRecommendationController];

  if ([carPlayRecommendationController isCarPlayVideoAllowed] && objc_msgSend(carPlayRecommendationController, "isCarPlayVideoActive"))
  {
    [(MRDRoutedBackgroundActivityManager *)self presentCarPlayBanner];
  }

  else
  {
    [(MRDRoutedBackgroundActivityManager *)self openRoutePicker];
  }
}

- (void)openRoutePicker
{
  activeSystemEndpoint = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
  outputDeviceUIDs = [activeSystemEndpoint outputDeviceUIDs];
  firstObject = [outputDeviceUIDs firstObject];

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activeSystemEndpoint2 = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
    *buf = 138412546;
    *&buf[4] = firstObject;
    *&buf[12] = 2112;
    *&buf[14] = activeSystemEndpoint2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM pill tapped, will open route picker for %@ (%@)", buf, 0x16u);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v8 = qword_100529240;
  v34 = qword_100529240;
  if (!qword_100529240)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10007629C;
    v36 = &unk_1004B8728;
    v37 = &v31;
    sub_10007629C(buf);
    v8 = v32[3];
  }

  v9 = v8;
  _Block_object_dispose(&v31, 8);
  v10 = objc_alloc_init(v8);
  focusMonitor = [(MRDRoutedBackgroundActivityManager *)self focusMonitor];
  bundlesInFocus = [focusMonitor bundlesInFocus];

  v13 = [bundlesInFocus msv_firstWhere:&stru_1004B86D8];
  if (_os_feature_enabled_impl())
  {
    if (v13)
    {
      [v10 setPresentingAppBundleID:v13];
    }

    else
    {
      anyObject = [bundlesInFocus anyObject];
      [v10 setPresentingAppBundleID:anyObject];
    }
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    bundleIdentifier = [v14 bundleIdentifier];
    [v10 setPresentingAppBundleID:bundleIdentifier];
  }

  if (v13)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  [v10 setStyle:v17];
  [v10 setSurface:9];
  if (MRAVOutputContextGetSharedAudioPresentationContext())
  {
    v18 = MRAVOutputContextCopyUniqueIdentifier();
    [v10 setRoutingContextUID:v18];
  }

  v19 = +[MRDDisplayMonitor sharedMonitor];
  primaryUIApplicationBundleIdentifier = [v19 primaryUIApplicationBundleIdentifier];

  nowPlayingController = [(MRDRoutedBackgroundActivityManager *)self nowPlayingController];
  destination = [nowPlayingController destination];
  client = [destination client];
  bundleIdentifier2 = [client bundleIdentifier];

  if (bundleIdentifier2)
  {
    v25 = bundleIdentifier2;
  }

  else
  {
    v25 = primaryUIApplicationBundleIdentifier;
  }

  v26 = v25;
  if (v26)
  {
    v27 = +[MRDMediaBundleManager shared];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100075E58;
    v28[3] = &unk_1004B8700;
    v29 = v10;
    selfCopy = self;
    [v27 queryEligibilityOf:v26 completionHandler:v28];
  }

  else
  {
    [(MRDRoutedBackgroundActivityManager *)self _presentRoutePickerWithConfiguration:v10];
  }
}

- (void)_presentRoutePickerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = qword_100529250;
  v16 = qword_100529250;
  if (!qword_100529250)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100076464;
    v12[3] = &unk_1004B8728;
    v12[4] = &v13;
    sub_100076464(v12);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  v7 = [[v5 alloc] initWithConfiguration:configurationCopy shouldObserveRoutingContextUIDChanges:0];
  mediaControls = self->_mediaControls;
  self->_mediaControls = v7;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100076048;
  v9[3] = &unk_1004B8280;
  objc_copyWeak(&v10, &location);
  [(MPMediaControls *)self->_mediaControls setDismissHandler:v9];
  [(MPMediaControls *)self->_mediaControls present];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)presentCarPlayBanner
{
  v3 = +[MRDMediaRemoteServer server];
  routingServer = [v3 routingServer];
  carPlayRecommendationController = [routingServer carPlayRecommendationController];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100076158;
  v6[3] = &unk_1004B7838;
  v6[4] = self;
  [carPlayRecommendationController displayCarPlayVideoConnectedBannerWithCompletion:v6];
}

@end