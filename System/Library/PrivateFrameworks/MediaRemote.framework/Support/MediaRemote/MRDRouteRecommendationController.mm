@interface MRDRouteRecommendationController
- (BOOL)isRoutePlaying:(id)playing;
- (BOOL)shouldUseVideoSymbolForDevices:(id)devices bundleIdentifier:(id)identifier;
- (MRDRouteRecommendationController)init;
- (MRRouteRecommender)recommender;
- (MRRouteValidator)validator;
- (NSArray)recommendedRoutes;
- (id)_updateMediaControlsBlob:(id)blob sender:(id)sender;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_handleLayoutDidChangeNotification:(id)notification;
- (void)_handleOutputDevicesDidChangeNotification:(id)notification;
- (void)airPlayTo:(id)to completion:(id)completion;
- (void)clearUnusedAutoRoute;
- (void)didReceiveNewRecommendations:(id)recommendations forBundleIdentifier:(id)identifier;
- (void)dismissAllBannerRequests;
- (void)donatePickerChoiceFor:(id)for bundleIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier;
- (void)handOffQueueOrAirPlay:(id)play sourceEndpoint:(id)endpoint destinationEndpoint:(id)destinationEndpoint playerPath:(id)path completion:(id)completion;
- (void)handlePlaybackStartForEndpoint:(id)endpoint bundleIdentifier:(id)identifier eligibleForRecommendationsOutsideApp:(BOOL)app;
- (void)mediaApplicationsInFocus:(id)focus;
- (void)openRoutePickerForRouteUID:(id)d;
- (void)performTopologyModificationToRoute:(id)route devices:(id)devices endpoint:(id)endpoint requestName:(id)name completion:(id)completion;
- (void)remoteControl:(id)control completion:(id)completion;
- (void)route:(id)route endpoint:(id)endpoint bundleIdentifier:(id)identifier emittedEvent:(unint64_t)event;
- (void)setASEToLocal;
- (void)setRecommendedRoutes:(id)routes;
- (void)setup;
- (void)setupTimerForRoute:(id)route bundleIdentifier:(id)identifier;
- (void)signpostEndWillShowBanner:(BOOL)banner;
- (void)stopAirPlayingAndRemoteControlling;
@end

@implementation MRDRouteRecommendationController

- (MRRouteRecommender)recommender
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recommender = selfCopy->_recommender;
  if (!recommender)
  {
    v4 = objc_alloc_init(MRDIRDRouteRecommender);
    v5 = selfCopy->_recommender;
    selfCopy->_recommender = v4;

    [(MRRouteRecommender *)selfCopy->_recommender setDelegate:selfCopy];
    recommender = selfCopy->_recommender;
  }

  v6 = recommender;
  objc_sync_exit(selfCopy);

  return v6;
}

- (MRRouteValidator)validator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  validator = selfCopy->_validator;
  if (!validator)
  {
    v4 = objc_alloc_init(MRDRouteValidator);
    v5 = selfCopy->_validator;
    selfCopy->_validator = v4;

    validator = selfCopy->_validator;
  }

  v6 = validator;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSArray)recommendedRoutes
{
  os_unfair_lock_lock(&self->_recommendedRoutesLock);
  v3 = self->_recommendedRoutes;
  os_unfair_lock_unlock(&self->_recommendedRoutesLock);

  return v3;
}

- (void)dismissAllBannerRequests
{
  mediaActivityManager = [(MRDRouteRecommendationController *)self mediaActivityManager];
  [mediaActivityManager dismissAllBannerRequests];
}

- (MRDRouteRecommendationController)init
{
  v15.receiver = self;
  v15.super_class = MRDRouteRecommendationController;
  v2 = [(MRDRouteRecommendationController *)&v15 init];
  if (v2)
  {
    v3 = [[MRDMediaAppInFocusMonitor alloc] initWithDelegate:v2];
    [(MRDRouteRecommendationController *)v2 setFocusMonitor:v3];

    v4 = [[MRDNowPlayingStateMonitor alloc] initWithDelegate:v2];
    [(MRDRouteRecommendationController *)v2 setNowPlayingStateMonitor:v4];

    v5 = [MRAVRoutingDiscoverySessionConfiguration configurationWithEndpointFeatures:8];
    v6 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v5];
    [(MRDRouteRecommendationController *)v2 setRemoteControlDiscoverySession:v6];

    v7 = [MRAVRoutingDiscoverySessionConfiguration configurationWithEndpointFeatures:1];
    v8 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v7];
    [(MRDRouteRecommendationController *)v2 setAudioDiscoverySession:v8];

    v9 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [(MRDRouteRecommendationController *)v2 setActiveSystemEndpoint:v9];

    v10 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [(MRDRouteRecommendationController *)v2 setLocalSystemEndpoint:v10];

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MediaRemote.MRDRouteRecommendationController.queue", v11);
    [(MRDRouteRecommendationController *)v2 setQueue:v12];

    v13 = +[NSMutableArray array];
    [(MRDRouteRecommendationController *)v2 setSignpostIds:v13];

    v2->_recommendedRoutesLock._os_unfair_lock_opaque = 0;
    [(MRDRouteRecommendationController *)v2 setup];
  }

  return v2;
}

- (void)setup
{
  remoteControlDiscoverySession = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
  [remoteControlDiscoverySession setAlwaysAllowUpdates:1];

  audioDiscoverySession = [(MRDRouteRecommendationController *)self audioDiscoverySession];
  [audioDiscoverySession setAlwaysAllowUpdates:1];

  objc_initWeak(&location, self);
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  [v5 addObserver:self selector:"_handleOutputDevicesDidChangeNotification:" name:MRAVEndpointDidAddOutputDeviceNotification object:v6];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  [v7 addObserver:self selector:"_handleOutputDevicesDidChangeNotification:" name:MRAVEndpointDidChangeOutputDeviceNotification object:v8];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  [v9 addObserver:self selector:"_handleOutputDevicesDidChangeNotification:" name:MRAVEndpointDidRemoveOutputDeviceNotification object:v10];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  v13 = +[MRDDisplayMonitor sharedMonitor];
  [v12 addObserver:self selector:"_handleLayoutDidChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v13];

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    remoteControlDiscoverySession2 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
    remoteControlDiscoverySession3 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
    *buf = 134218498;
    selfCopy4 = self;
    v44 = 2048;
    v45 = remoteControlDiscoverySession2;
    v46 = 2112;
    v47 = remoteControlDiscoverySession3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDRRC] <%p> Setup RRC: RC discovery session (%p) = %@", buf, 0x20u);
  }

  remoteControlDiscoverySession4 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10003C8B4;
  v39[3] = &unk_1004B9B48;
  objc_copyWeak(&v40, &location);
  v18 = [remoteControlDiscoverySession4 addEndpointsAddedCallback:v39];

  remoteControlDiscoverySession5 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100020EFC;
  v37[3] = &unk_1004B9B48;
  objc_copyWeak(&v38, &location);
  v20 = [remoteControlDiscoverySession5 addEndpointsModifiedCallback:v37];

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    remoteControlDiscoverySession6 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
    remoteControlDiscoverySession7 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
    *buf = 134218498;
    selfCopy4 = self;
    v44 = 2048;
    v45 = remoteControlDiscoverySession6;
    v46 = 2112;
    v47 = remoteControlDiscoverySession7;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDRRC] <%p> Setup RRC: added callbacks for RC discovery session (%p) = %@", buf, 0x20u);
  }

  v24 = _MRLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    audioDiscoverySession2 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
    audioDiscoverySession3 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
    *buf = 134218498;
    selfCopy4 = self;
    v44 = 2048;
    v45 = audioDiscoverySession2;
    v46 = 2112;
    v47 = audioDiscoverySession3;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[MRDRRC] <%p> Setup RRC: audio discovery session (%p) = %@", buf, 0x20u);
  }

  audioDiscoverySession4 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1001AA73C;
  v35 = &unk_1004B9B48;
  objc_copyWeak(&v36, &location);
  v28 = [audioDiscoverySession4 addOutputDevicesAddedCallback:&v32];

  v29 = _MRLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [(MRDRouteRecommendationController *)self audioDiscoverySession:v32];
    audioDiscoverySession5 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
    *buf = 134218498;
    selfCopy4 = self;
    v44 = 2048;
    v45 = v30;
    v46 = 2112;
    v47 = audioDiscoverySession5;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[MRDRRC] <%p> Setup RRC: added callbacks for audio discovery session (%p) = %@", buf, 0x20u);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (void)setRecommendedRoutes:(id)routes
{
  routesCopy = routes;
  os_unfair_lock_lock(&self->_recommendedRoutesLock);
  recommendedRoutes = self->_recommendedRoutes;
  self->_recommendedRoutes = routesCopy;

  os_unfair_lock_unlock(&self->_recommendedRoutesLock);
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
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC] _handleActiveSystemEndpointDidChangeNotification: %@", buf, 0xCu);
    }

    userInfo2 = [notificationCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    queue = [(MRDRouteRecommendationController *)self queue];
    v12 = v10;
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (void)_handleOutputDevicesDidChangeNotification:(id)notification
{
  v6 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  if ([v6 shouldDonate])
  {
    recommender = [(MRDRouteRecommendationController *)self recommender];
    v5 = [MRIRRoute routeWithEndpoint:v6];
    [recommender updateRouteCandidate:v5];
  }
}

- (void)donatePickerChoiceFor:(id)for bundleIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier
{
  forCopy = for;
  contextIdentifierCopy = contextIdentifier;
  identifierCopy = identifier;
  lastDonatedPickerChoice = [(MRDRouteRecommendationController *)self lastDonatedPickerChoice];
  v12 = [forCopy isEqual:lastDonatedPickerChoice];

  if (v12)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = forCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Not dropping duplicate picker choice for %@ - picks are distributed", &v16, 0xCu);
    }
  }

  [(MRDRouteRecommendationController *)self setLastDonatedPickerChoice:forCopy];
  v14 = [[IRMediaEvent alloc] initWithEventType:0 eventSubType:0];
  [v14 setBundleID:identifierCopy];

  [v14 setContextIdentifier:contextIdentifierCopy];
  recommender = [(MRDRouteRecommendationController *)self recommender];
  [recommender addEvent:v14 forRouteCandidate:forCopy];
}

- (void)mediaApplicationsInFocus:(id)focus
{
  focusCopy = focus;
  allObjects = [focusCopy allObjects];
  [(MRDRouteRecommendationController *)self setVisibleMediaApps:allObjects];

  focusMonitor = [(MRDRouteRecommendationController *)self focusMonitor];
  lockScreenVisible = [focusMonitor lockScreenVisible];

  v8 = ([focusCopy count] != 0) | lockScreenVisible;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v10 = @"OnEvents";
    }

    else
    {
      v10 = @"Paused";
    }

    v11 = [focusCopy count];
    v12 = @"NO";
    *v22 = 138413058;
    *&v22[4] = v10;
    *&v22[12] = 2048;
    if (lockScreenVisible)
    {
      v12 = @"YES";
    }

    *&v22[14] = v11;
    v23 = 2112;
    v24 = focusCopy;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC] setting mode to %@: %lu media apps in focus: %@, lockscreen: %@", v22, 0x2Au);
  }

  recommender = [(MRDRouteRecommendationController *)self recommender];
  v14 = recommender;
  if (v8)
  {
    mode = [recommender mode];

    if (mode == 1)
    {
      recommender2 = _MRLogForCategory();
      if (os_log_type_enabled(recommender2, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, recommender2, OS_LOG_TYPE_DEFAULT, "[MRDRRC] mode already set to update on events - won't set again", v22, 2u);
      }
    }

    else
    {
      recommender2 = [(MRDRouteRecommendationController *)self recommender];
      [recommender2 setMode:1];
    }

    v17 = +[NSUUID UUID];
    [(NSMutableArray *)self->_signpostIds addObject:v17];
    v18 = _MRLogForCategory();
    v19 = [v17 hash];
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      if (os_signpost_enabled(v18))
      {
        *v22 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, "RequestRouteRecommendations", "", v22, 2u);
      }
    }
  }

  else
  {
    [recommender setMode:0];

    [(MRDRouteRecommendationController *)self dismissAllBannerRequests];
  }

  routedBackgroundActivityManager = [(MRDRouteRecommendationController *)self routedBackgroundActivityManager];
  [routedBackgroundActivityManager mediaApplicationsInFocus:focusCopy];
}

- (void)_handleLayoutDidChangeNotification:(id)notification
{
  lastUnusedAutoRouteBundleIdentifier = [(MRDRouteRecommendationController *)self lastUnusedAutoRouteBundleIdentifier];
  if (!lastUnusedAutoRouteBundleIdentifier)
  {
    goto LABEL_11;
  }

  v5 = +[MRDDisplayMonitor sharedMonitor];
  if ([v5 displayOn])
  {
    v6 = +[MRDDisplayMonitor sharedMonitor];
    presentedBundleIdentifiers = [v6 presentedBundleIdentifiers];
    v8 = [presentedBundleIdentifiers containsObject:lastUnusedAutoRouteBundleIdentifier];

    if (v8)
    {
      undoTimer = [(MRDRouteRecommendationController *)self undoTimer];

      if (undoTimer)
      {
        [(MRDRouteRecommendationController *)self setUndoTimer:0];
        v10 = _MRLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = lastUnusedAutoRouteBundleIdentifier;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC] cancelling timer, %@ is in focus again", &v13, 0xCu);
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  undoTimer2 = [(MRDRouteRecommendationController *)self undoTimer];

  if (!undoTimer2)
  {
    lastUnusedAutoRoute = [(MRDRouteRecommendationController *)self lastUnusedAutoRoute];
    [(MRDRouteRecommendationController *)self setupTimerForRoute:lastUnusedAutoRoute bundleIdentifier:lastUnusedAutoRouteBundleIdentifier];
  }

LABEL_11:
}

- (void)didReceiveNewRecommendations:(id)recommendations forBundleIdentifier:(id)identifier
{
  recommendationsCopy = recommendations;
  identifierCopy = identifier;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = recommendationsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC] %@", buf, 0xCu);
  }

  [(MRDRouteRecommendationController *)self setRecommendedRoutes:recommendationsCopy];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"MRRouteRecommenderDidReceiveNewRecommendationsNotification" object:self];

  v10 = [recommendationsCopy msv_compactMap:&stru_1004C14B8];
  v11 = +[MRDDisplayMonitor sharedMonitor];
  primaryUIApplicationBundleIdentifier = [v11 primaryUIApplicationBundleIdentifier];

  if (identifierCopy)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = primaryUIApplicationBundleIdentifier;
      v30 = 2112;
      v31 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC] overriding %@ with %@ - request outside app", buf, 0x16u);
    }

    v14 = identifierCopy;
    primaryUIApplicationBundleIdentifier = v14;
  }

  else
  {
    recommender = [(MRDRouteRecommendationController *)self recommender];
    mode = [recommender mode];

    if (mode != 1)
    {
      v19 = _MRLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        recommender2 = [(MRDRouteRecommendationController *)self recommender];
        mode2 = [recommender2 mode];
        v24 = [v10 count];
        *buf = 134218498;
        v29 = mode2;
        v30 = 2048;
        v31 = v24;
        v32 = 2112;
        v33 = primaryUIApplicationBundleIdentifier;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Session mode is %ld - ignoring %lu recommendations - primary: %@", buf, 0x20u);
      }

      goto LABEL_14;
    }
  }

  v17 = +[MRDDisplayMonitor sharedMonitor];
  lockScreenVisible = [v17 lockScreenVisible];

  if (lockScreenVisible)
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v10 count];
      *buf = 134217984;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDRRC] lockscreen is visible - ignoring %lu recommendations", buf, 0xCu);
    }

LABEL_14:

    [(MRDRouteRecommendationController *)self signpostEndWillShowBanner:0];
    goto LABEL_15;
  }

  validator = [(MRDRouteRecommendationController *)self validator];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001AB8D4;
  v25[3] = &unk_1004C15D0;
  v25[4] = self;
  primaryUIApplicationBundleIdentifier = primaryUIApplicationBundleIdentifier;
  v26 = primaryUIApplicationBundleIdentifier;
  v27 = identifierCopy != 0;
  [validator bestRecommendationIn:v10 primaryBundleIdentifier:primaryUIApplicationBundleIdentifier eligibleToShowRecommendationsOutsideApp:identifierCopy != 0 completion:v25];

LABEL_15:
}

- (void)signpostEndWillShowBanner:(BOOL)banner
{
  bannerCopy = banner;
  signpostIds = [(MRDRouteRecommendationController *)self signpostIds];
  v6 = [signpostIds count];

  if (v6)
  {
    signpostIds2 = [(MRDRouteRecommendationController *)self signpostIds];
    firstObject = [signpostIds2 firstObject];

    signpostIds3 = [(MRDRouteRecommendationController *)self signpostIds];
    [signpostIds3 removeFirstObject];

    v10 = _MRLogForCategory();
    v11 = [firstObject hash];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        v13 = @"NO";
        if (bannerCopy)
        {
          v13 = @"YES";
        }

        v14 = 138412290;
        v15 = v13;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "RequestRouteRecommendations", "willShowBanner = %@", &v14, 0xCu);
      }
    }
  }
}

- (BOOL)shouldUseVideoSymbolForDevices:(id)devices bundleIdentifier:(id)identifier
{
  devicesCopy = devices;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = +[MRDMediaBundleManager shared];
    v8 = [v7 cachedEligibilityOf:identifierCopy];

    if ([v8 isVideoApp])
    {
      mr_containsVideoOutputDevice = [devicesCopy mr_containsVideoOutputDevice];
    }

    else
    {
      mr_containsVideoOutputDevice = 0;
    }
  }

  else
  {
    mr_containsVideoOutputDevice = [devicesCopy mr_containsVideoOutputDevice];
  }

  return mr_containsVideoOutputDevice;
}

- (void)setASEToLocal
{
  activeSystemEndpoint = [(MRDRouteRecommendationController *)self activeSystemEndpoint];
  isLocalEndpoint = [activeSystemEndpoint isLocalEndpoint];

  if ((isLocalEndpoint & 1) == 0)
  {
    v6 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"Coriander setASEToLocal"];
    [v6 setChangeType:0];
    queue = [(MRDRouteRecommendationController *)self queue];
    [v6 perform:queue completion:&stru_1004C15F0];
  }
}

- (void)stopAirPlayingAndRemoteControlling
{
  v4 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"Coriander Clear State"];
  [v4 setChangeType:0];
  queue = [(MRDRouteRecommendationController *)self queue];
  [v4 perform:queue completion:&stru_1004C1610];
}

- (void)airPlayTo:(id)to completion:(id)completion
{
  toCopy = to;
  completionCopy = completion;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localSystemEndpoint = [(MRDRouteRecommendationController *)self localSystemEndpoint];
    *buf = 138412546;
    v26 = localSystemEndpoint;
    v27 = 2112;
    v28 = toCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Will AirPlay %@ to %@", buf, 0x16u);
  }

  localSystemEndpoint2 = [(MRDRouteRecommendationController *)self localSystemEndpoint];
  objc_initWeak(buf, localSystemEndpoint2);

  v11 = [MRRequestDetails alloc];
  v12 = +[NSUUID UUID];
  uUIDString = [v12 UUIDString];
  v14 = [v11 initWithName:@"RouteRecommendation.AirPlay" requestID:uUIDString reason:@"MRDRRC/AP"];

  v15 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v14 type:3 outputDevices:toCopy];
  [v15 setMuteUntilFinished:1];
  localSystemEndpoint3 = [(MRDRouteRecommendationController *)self localSystemEndpoint];
  queue = [(MRDRouteRecommendationController *)self queue];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001AD6D4;
  v22 = &unk_1004B95A0;
  v18 = completionCopy;
  v23 = v18;
  objc_copyWeak(&v24, buf);
  [localSystemEndpoint3 modifyTopologyWithRequest:v15 withReplyQueue:queue completion:&v19];

  [(MRDRouteRecommendationController *)self setASEToLocal:v19];
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
}

- (void)handOffQueueOrAirPlay:(id)play sourceEndpoint:(id)endpoint destinationEndpoint:(id)destinationEndpoint playerPath:(id)path completion:(id)completion
{
  playCopy = play;
  endpointCopy = endpoint;
  destinationEndpointCopy = destinationEndpoint;
  pathCopy = path;
  completionCopy = completion;
  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [destinationEndpointCopy uniqueIdentifier];
    *buf = 138412802;
    v33 = uniqueIdentifier;
    v34 = 2112;
    v35 = playCopy;
    v36 = 2112;
    v37 = pathCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Will try to HandOff or AirPlay to %@ (%@) pp: %@", buf, 0x20u);
  }

  v19 = +[MRUserSettings currentSettings];
  enableQueueHandOffForRouteRecommendations = [v19 enableQueueHandOffForRouteRecommendations];

  if (enableQueueHandOffForRouteRecommendations)
  {
    v21 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
    [v21 setPlayerPath:pathCopy];
    v22 = [MRRequestDetails alloc];
    v23 = +[NSUUID UUID];
    uUIDString = [v23 UUIDString];
    v25 = [v22 initWithName:@"RouteRecommendation.HandOffQueueOrAirPlay" requestID:uUIDString reason:@"MRDRRC/QHOFallbackToAirPlay"];

    v26 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v25 type:3 outputDevices:playCopy];
    [v26 setMuteUntilFinished:1];
    queue = [(MRDRouteRecommendationController *)self queue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001ADA58;
    v29[3] = &unk_1004B9DE8;
    v31 = completionCopy;
    v30 = destinationEndpointCopy;
    [endpointCopy migrateToEndpointOrModifyTopology:v30 migrationRequest:v21 topologyModificationRequest:v26 withReplyQueue:queue completion:v29];
  }

  else
  {
    v28 = _MRLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDRRC] HandOff is disabled, AirPlaying...", buf, 2u);
    }

    [(MRDRouteRecommendationController *)self airPlayTo:playCopy completion:completionCopy];
  }
}

- (void)remoteControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v8 = [MRUpdateActiveSystemEndpointRequest alloc];
  outputDeviceUIDs = [controlCopy outputDeviceUIDs];
  firstObject = [outputDeviceUIDs firstObject];
  v11 = [v8 initWithOutputDeviceUID:firstObject reason:@"Coriander One-Tap Recommendation accepted"];

  [v11 setChangeType:0];
  queue = [(MRDRouteRecommendationController *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001ADBB8;
  v15[3] = &unk_1004C1678;
  v16 = controlCopy;
  v17 = completionCopy;
  v13 = controlCopy;
  v14 = completionCopy;
  [v11 perform:queue completion:v15];
}

- (void)performTopologyModificationToRoute:(id)route devices:(id)devices endpoint:(id)endpoint requestName:(id)name completion:(id)completion
{
  devicesCopy = devices;
  endpointCopy = endpoint;
  v14 = devicesCopy;
  v15 = endpointCopy;
  completionCopy = completion;
  nameCopy = name;
  routeCopy = route;
  v19 = +[NSDate date];
  nameCopy = [NSString stringWithFormat:@"MRDRRC:TM/%@", nameCopy];

  v21 = +[NSUUID UUID];
  uUIDString = [v21 UUIDString];

  routeIdentifier = [routeCopy routeIdentifier];

  v146 = v15;
  debugName = [v15 debugName];
  v144 = v14;
  v25 = MRAVOutputDeviceArrayDescription();
  v26 = [NSString stringWithFormat:@"route=%@, endpoint=%@, devices=%@", routeIdentifier, debugName, v25];

  v27 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", nameCopy, uUIDString];
  v28 = v27;
  if (v26)
  {
    [v27 appendFormat:@" for %@", v26];
  }

  v29 = _MRLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v159 = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v152[0] = _NSConcreteStackBlock;
  v152[1] = 3221225472;
  v152[2] = sub_1001AEE1C;
  v152[3] = &unk_1004BAE50;
  v141 = v26;
  v153 = v141;
  v30 = nameCopy;
  v154 = v30;
  v148 = uUIDString;
  v155 = v148;
  v140 = v19;
  v156 = v140;
  v139 = completionCopy;
  v157 = v139;
  v138 = objc_retainBlock(v152);
  v31 = v146;
  if (v146)
  {
    v32 = [v14 mr_any:&stru_1004C1698];
  }

  else
  {
    v32 = 0;
  }

  focusMonitor = [(MRDRouteRecommendationController *)self focusMonitor];
  bundlesInFocus = [focusMonitor bundlesInFocus];

  v142 = bundlesInFocus;
  v35 = [bundlesInFocus msv_filter:&stru_1004C16B8];
  v36 = [NSSet setWithArray:v35];

  focusMonitor2 = [(MRDRouteRecommendationController *)self focusMonitor];
  mediaBundlesInFocus = [focusMonitor2 mediaBundlesInFocus];

  v143 = mediaBundlesInFocus;
  v39 = [mediaBundlesInFocus mutableCopy];
  [v39 minusSet:v36];
  v147 = v36;
  v145 = v30;
  if ([v36 count])
  {
    v40 = [v39 count] == 0;
  }

  else
  {
    v40 = 0;
  }

  v41 = v39;
  localSystemEndpoint = [(MRDRouteRecommendationController *)self localSystemEndpoint];
  selfCopy = self;
  activeSystemEndpoint = [(MRDRouteRecommendationController *)self activeSystemEndpoint];
  v44 = activeSystemEndpoint;
  if (v40)
  {
    v45 = activeSystemEndpoint;
  }

  else
  {
    v45 = localSystemEndpoint;
  }

  v46 = v45;
  uniqueIdentifier = [v46 uniqueIdentifier];
  uniqueIdentifier2 = [v146 uniqueIdentifier];
  v136 = v44;
  v137 = localSystemEndpoint;
  v49 = [NSString stringWithFormat:@"visible RC: %@\n visible AP: %@\n sEP: %@, dEP: %@\n ASE: %@ local: %@", v147, v41, uniqueIdentifier, uniqueIdentifier2, v44, localSystemEndpoint];

  v50 = _MRLogForCategory();
  v51 = v145;
  v52 = v41;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v159 = v145;
    v160 = 2114;
    v161 = v148;
    v162 = 2112;
    v163 = v49;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v135 = v49;

  if (v32)
  {
    v53 = v40;
    v132 = v41;
    v54 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v54 nowPlayingServer];
    v56 = v46;
    origin = [v46 origin];
    v58 = [nowPlayingServer originClientForOrigin:origin];

    activeNowPlayingClient = [v58 activeNowPlayingClient];
    client = [activeNowPlayingClient client];
    bundleIdentifier = [client bundleIdentifier];

    v127 = v58;
    activeNowPlayingClient2 = [v58 activeNowPlayingClient];
    activePlayerClient = [activeNowPlayingClient2 activePlayerClient];
    isPlaying = [activePlayerClient isPlaying];

    if (bundleIdentifier)
    {
      v129 = [v142 containsObject:bundleIdentifier];
    }

    else
    {
      v129 = 0;
    }

    v68 = v146;
    v69 = +[MRDMediaRemoteServer server];
    nowPlayingServer2 = [v69 nowPlayingServer];
    origin2 = [v68 origin];
    v72 = [nowPlayingServer2 originClientForOrigin:origin2];

    activeNowPlayingClient3 = [v72 activeNowPlayingClient];
    client2 = [activeNowPlayingClient3 client];
    bundleIdentifier2 = [client2 bundleIdentifier];

    v125 = v72;
    activeNowPlayingClient4 = [v72 activeNowPlayingClient];
    activePlayerClient2 = [activeNowPlayingClient4 activePlayerClient];
    isPlaying2 = [activePlayerClient2 isPlaying];

    if (bundleIdentifier2)
    {
      v122 = [v143 containsObject:bundleIdentifier2] & isPlaying2;
    }

    else
    {
      v122 = 0;
    }

    uniqueIdentifier3 = [v56 uniqueIdentifier];
    v126 = v68;
    uniqueIdentifier4 = [v68 uniqueIdentifier];
    v81 = uniqueIdentifier4;
    if (isPlaying)
    {
      v82 = @"YES";
    }

    else
    {
      v82 = @"NO";
    }

    if (isPlaying2)
    {
      v83 = @"YES";
    }

    else
    {
      v83 = @"NO";
    }

    v128 = bundleIdentifier2;
    v84 = [NSString stringWithFormat:@"sEP: %@\n dEP: %@\n sNP: %@\n dNP: %@\n sPL: %@ - dPL: %@\n", uniqueIdentifier3, uniqueIdentifier4, bundleIdentifier, bundleIdentifier2, v82, v83];

    v85 = _MRLogForCategory();
    v51 = v145;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v159 = v145;
      v160 = 2114;
      v161 = v148;
      v162 = 2112;
      v163 = v84;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v31 = v146;
    v52 = v132;
    if (!(v129 & 1 | ((isPlaying & 1) == 0)) && [v143 count])
    {
      v86 = [NSString stringWithFormat:@"Pausing ASE - NP: %@", bundleIdentifier];
      v87 = _MRLogForCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v159 = v145;
        v160 = 2114;
        v161 = v148;
        v162 = 2112;
        v163 = v86;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v149 = bundleIdentifier;
      v150 = v148;
      v151 = v145;
      MRMediaRemoteSendCommandToPlayer();

      v52 = v132;
    }

    v124 = v84;
    if (!v53)
    {
      v94 = _MRLogForCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v159 = v145;
        v160 = 2114;
        v161 = v148;
        v162 = 2112;
        v163 = @"Non-RC visible: AP";
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v66 = v144;
      v67 = v138;
      [(MRDRouteRecommendationController *)selfCopy airPlayTo:v144 completion:v138];
      v93 = v126;
      goto LABEL_74;
    }

    if (isPlaying)
    {
      v66 = v144;
      if ((v129 & 1) == 0)
      {
        v97 = [NSString stringWithFormat:@"Only RC, source was playing %@ (not FG): Migrating", bundleIdentifier];
        v98 = _MRLogForCategory();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v159 = v145;
          v160 = 2114;
          v161 = v148;
          v162 = 2112;
          v163 = v97;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v99 = [v147 mutableCopy];
        if (bundleIdentifier)
        {
          [NSSet setWithObject:bundleIdentifier];
        }

        else
        {
          +[NSSet set];
        }

        v123 = v130 = v97;
        [v99 minusSet:v123];
        anyObject = [v99 anyObject];
        v104 = [NSString stringWithFormat:@"migration candidates: %@, will try to migrate %@", v99, anyObject];
        v106 = _MRLogForCategory();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v159 = v145;
          v160 = 2114;
          v161 = v148;
          v162 = 2112;
          v163 = v104;
          _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v107 = [[MRClient alloc] initWithBundleIdentifier:anyObject];
        v108 = [MRPlayerPath alloc];
        v109 = +[MROrigin localOrigin];
        v110 = [v108 initWithOrigin:v109 client:v107 player:0];

        v93 = v126;
        v111 = v104;
        v67 = v138;
        [(MRDRouteRecommendationController *)selfCopy handOffQueueOrAirPlay:v144 sourceEndpoint:v56 destinationEndpoint:v126 playerPath:v110 completion:v138];

        v51 = v145;
        v31 = v146;
        v52 = v132;
        goto LABEL_74;
      }

      v88 = _MRLogForCategory();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v159 = v145;
        v160 = 2114;
        v161 = v148;
        v162 = 2112;
        v163 = @"Only RC, source playing: QHO/AP";
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v89 = [[MRClient alloc] initWithBundleIdentifier:bundleIdentifier];
      v90 = [MRPlayerPath alloc];
      v91 = +[MROrigin localOrigin];
      v92 = [v90 initWithOrigin:v91 client:v89 player:0];

      v93 = v126;
      v67 = v138;
      [(MRDRouteRecommendationController *)selfCopy handOffQueueOrAirPlay:v144 sourceEndpoint:v56 destinationEndpoint:v126 playerPath:v92 completion:v138];

      v51 = v145;
    }

    else
    {
      if (v122)
      {
        v128 = [NSString stringWithFormat:@"Only RC, source is not playing, destination is playing %@ (FG locally): RC", v128];
        v96 = _MRLogForCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v159 = v145;
          v160 = 2114;
          v161 = v148;
          v162 = 2112;
          v163 = v128;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v93 = v126;
        v67 = v138;
        [(MRDRouteRecommendationController *)selfCopy remoteControl:v126 completion:v138];

        v66 = v144;
        goto LABEL_74;
      }

      v100 = [NSString stringWithFormat:@"Only RC, source is not playing, NP: %@ dPL: %@ HIJACK/QHO/AP", v128, v83];
      v101 = _MRLogForCategory();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v159 = v145;
        v160 = 2114;
        v161 = v148;
        v162 = 2112;
        v163 = v100;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v133 = v100;

      v66 = v144;
      if (v129)
      {
        anyObject2 = bundleIdentifier;
      }

      else
      {
        v103 = [v147 mutableCopy];
        if (bundleIdentifier)
        {
          [NSSet setWithObject:bundleIdentifier];
        }

        else
        {
          +[NSSet set];
        }
        v112 = ;
        [v103 minusSet:v112];
        anyObject2 = [v103 anyObject];
        v103 = [NSString stringWithFormat:@"migration candidates: %@", v103];
        v113 = _MRLogForCategory();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v159 = v145;
          v160 = 2114;
          v161 = v148;
          v162 = 2112;
          v163 = v103;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }
      }

      v102 = [NSString stringWithFormat:@"will try to migrate %@", anyObject2];
      v115 = _MRLogForCategory();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v159 = v145;
        v160 = 2114;
        v161 = v148;
        v162 = 2112;
        v163 = v102;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v116 = [[MRClient alloc] initWithBundleIdentifier:anyObject2];
      v117 = [MRPlayerPath alloc];
      +[MROrigin localOrigin];
      v119 = v118 = anyObject2;
      v120 = [v117 initWithOrigin:v119 client:v116 player:0];

      v93 = v126;
      v121 = v102;
      v67 = v138;
      [(MRDRouteRecommendationController *)selfCopy handOffQueueOrAirPlay:v144 sourceEndpoint:v56 destinationEndpoint:v126 playerPath:v120 completion:v138];

      v51 = v145;
    }

    v31 = v146;
LABEL_74:

    goto LABEL_75;
  }

  v65 = _MRLogForCategory();
  v56 = v46;
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v159 = v145;
    v160 = 2114;
    v161 = v148;
    v162 = 2112;
    v163 = @"Route is not RC: AP";
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v66 = v144;
  v67 = v138;
  [(MRDRouteRecommendationController *)selfCopy airPlayTo:v144 completion:v138];
LABEL_75:
}

- (void)setupTimerForRoute:(id)route bundleIdentifier:(id)identifier
{
  routeCopy = route;
  identifierCopy = identifier;
  v8 = +[MRUserSettings currentSettings];
  [v8 undoUnusedAutoRouteTimerDuration];
  v10 = v9;

  if (v10 > 0.0)
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = routeCopy;
      v23 = 2112;
      v24 = identifierCopy;
      v25 = 2048;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Setting up timer for %@ (%@) for %f seconds", buf, 0x20u);
    }

    [(MRDRouteRecommendationController *)self setLastUnusedAutoRoute:routeCopy];
    objc_initWeak(buf, self);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1001B0144;
    v16 = &unk_1004C1730;
    v17 = identifierCopy;
    selfCopy = self;
    v19 = routeCopy;
    objc_copyWeak(&v20, buf);
    v12 = [MSVTimer timerWithInterval:0 repeats:&v13 block:v10];
    [(MRDRouteRecommendationController *)self setUndoTimer:v12, v13, v14, v15, v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (BOOL)isRoutePlaying:(id)playing
{
  playingCopy = playing;
  v4 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v4 nowPlayingServer];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  nodes = [playingCopy nodes];
  v7 = [nodes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(nodes);
        }

        avOutputDeviceIdentifier = [*(*(&v13 + 1) + 8 * i) avOutputDeviceIdentifier];
        v11 = [nowPlayingServer originClientForGroupLeaderOfDeviceUID:avOutputDeviceIdentifier];

        LOBYTE(avOutputDeviceIdentifier) = [v11 isPlaying];
        if (avOutputDeviceIdentifier)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [nodes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)clearUnusedAutoRoute
{
  [(MRDRouteRecommendationController *)self setLastUnusedAutoRoute:0];
  [(MRDRouteRecommendationController *)self setLastUnusedAutoRouteBundleIdentifier:0];

  [(MRDRouteRecommendationController *)self setUndoTimer:0];
}

- (void)openRoutePickerForRouteUID:(id)d
{
  dCopy = d;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Long pressed - will open route picker for %@", &buf, 0xCu);
  }

  v6 = objc_alloc_init(sub_1001B0780());
  v7 = +[NSBundle mainBundle];
  bundleIdentifier = [v7 bundleIdentifier];
  [v6 setPresentingAppBundleID:bundleIdentifier];

  [v6 setStyle:2];
  [v6 setSurface:11];
  if (MRAVOutputContextGetSharedAudioPresentationContext())
  {
    v9 = MRAVOutputContextCopyUniqueIdentifier();
    [v6 setRoutingContextUID:v9];
  }

  [v6 setRouteUID:dCopy];
  objc_initWeak(&location, self);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v10 = qword_100529718;
  v23 = qword_100529718;
  if (!qword_100529718)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v25 = sub_1001B1538;
    v26 = &unk_1004B8728;
    v27 = &v20;
    sub_1001B1538(&buf);
    v10 = v21[3];
  }

  v11 = v10;
  _Block_object_dispose(&v20, 8);
  v12 = [[v10 alloc] initWithConfiguration:v6 shouldObserveRoutingContextUIDChanges:0];
  mediaControls = self->_mediaControls;
  self->_mediaControls = v12;

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001B0860;
  v17 = &unk_1004B8280;
  objc_copyWeak(&v18, &location);
  [(MPMediaControls *)self->_mediaControls setDismissHandler:&v14];
  [(MPMediaControls *)self->_mediaControls present:v14];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)route:(id)route endpoint:(id)endpoint bundleIdentifier:(id)identifier emittedEvent:(unint64_t)event
{
  routeCopy = route;
  endpointCopy = endpoint;
  identifierCopy = identifier;
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v46 = routeCopy;
    v47 = 2112;
    v48 = identifierCopy;
    v49 = 2048;
    eventCopy = event;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDRRC] route: %@ bundleIdentifier: %@, emittedEvent: %ld", buf, 0x20u);
  }

  eventCopy2 = event;

  v13 = +[MRDMediaBundleManager shared];
  v14 = [v13 cachedEligibilityOf:identifierCopy];

  v41 = v14;
  isEligible = [v14 isEligible];
  selfCopy = self;
  focusMonitor = [(MRDRouteRecommendationController *)self focusMonitor];
  bundlesInFocus = [focusMonitor bundlesInFocus];
  v18 = [bundlesInFocus containsObject:identifierCopy];

  isLocalEndpoint = [endpointCopy isLocalEndpoint];
  v20 = +[MRDDisplayMonitor sharedMonitor];
  if ([v20 homeScreenVisible])
  {
    controlCenterVisible = 1;
  }

  else
  {
    v22 = +[MRDDisplayMonitor sharedMonitor];
    controlCenterVisible = [v22 controlCenterVisible];
  }

  v23 = +[MRDDisplayMonitor sharedMonitor];
  siriVisible = [v23 siriVisible];

  if (v18)
  {
    v25 = 0;
  }

  else
  {
    v25 = controlCenterVisible & (siriVisible ^ 1);
  }

  v26 = isLocalEndpoint & isEligible & v25;
  v27 = _MRLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (v26)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    if (isLocalEndpoint)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    if (isEligible)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v40 = identifierCopy;
    if (v25)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v32 = routeCopy;
    if (siriVisible)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    focusMonitor2 = [(MRDRouteRecommendationController *)selfCopy focusMonitor];
    bundlesInFocus2 = [focusMonitor2 bundlesInFocus];
    *buf = 138413570;
    v46 = v28;
    v47 = 2112;
    v48 = v29;
    v49 = 2112;
    eventCopy = v30;
    v51 = 2112;
    v52 = v31;
    identifierCopy = v40;
    v53 = 2112;
    v54 = v33;
    routeCopy = v32;
    v55 = 2112;
    v56 = bundlesInFocus2;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDRRC] eligible: %@, route: %@, app: %@, vis: %@ - siri: %@ - %@", buf, 0x3Eu);
  }

  if (eventCopy2 && eventCopy2 != 2)
  {
    if (eventCopy2 == 1)
    {
      v36 = selfCopy;
      [(MRDRouteRecommendationController *)selfCopy handlePlaybackStartForEndpoint:endpointCopy bundleIdentifier:identifierCopy eligibleForRecommendationsOutsideApp:v26];
      v37 = 5;
    }

    else
    {
      v37 = 0;
      v36 = selfCopy;
    }

    v38 = [[IRMediaEvent alloc] initWithEventType:v37 eventSubType:0];
    [v38 setBundleID:identifierCopy];
    [v38 setIsOutsideApp:v26];
    recommender = [(MRDRouteRecommendationController *)v36 recommender];
    [recommender addEvent:v38 forRouteCandidate:routeCopy];
  }
}

- (void)handlePlaybackStartForEndpoint:(id)endpoint bundleIdentifier:(id)identifier eligibleForRecommendationsOutsideApp:(BOOL)app
{
  appCopy = app;
  endpointCopy = endpoint;
  identifierCopy = identifier;
  v10 = [MRIRRoute routeWithEndpoint:endpointCopy];
  lastUnusedAutoRoute = [(MRDRouteRecommendationController *)self lastUnusedAutoRoute];
  v12 = [lastUnusedAutoRoute isEqual:v10];

  v13 = _MRLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v17 = 138412546;
      v18 = endpointCopy;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC] playbackStarted ForEndpoint: %@ bundleIdentifier: %@, invalidating timer", &v17, 0x16u);
    }

    [(MRDRouteRecommendationController *)self clearUnusedAutoRoute];
    if (!appCopy)
    {
      goto LABEL_12;
    }

LABEL_9:
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = endpointCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDRRC] playback started for %@-%@; will request context update", &v17, 0x16u);
    }

    recommender = [(MRDRouteRecommendationController *)self recommender];
    [recommender requestCurrentContextWithBundleID:identifierCopy];

    goto LABEL_12;
  }

  if (v14)
  {
    v17 = 138412546;
    v18 = endpointCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC] playbackStarted forUnrelatedEndpoint: %@ bundleIdentifier: %@", &v17, 0x16u);
  }

  if (appCopy)
  {
    goto LABEL_9;
  }

LABEL_12:
}

- (id)_updateMediaControlsBlob:(id)blob sender:(id)sender
{
  blobCopy = blob;
  senderCopy = sender;
  sub_1001B0780();
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:blobCopy error:0];
  if (!v8)
  {
    v13 = blobCopy;
    goto LABEL_12;
  }

  nowPlayingStateMonitor = [(MRDRouteRecommendationController *)self nowPlayingStateMonitor];
  nowPlayingApp = [nowPlayingStateMonitor nowPlayingApp];

  [v8 setNowPlayingAppBundleID:nowPlayingApp];
  visibleMediaApps = [(MRDRouteRecommendationController *)self visibleMediaApps];
  [v8 setVisibleMediaApps:visibleMediaApps];

  if ([senderCopy isEqualToString:@"com.apple.MediaRemoteUI"])
  {
    v12 = [MRSystemMediaBundles systemMediaBundleIDForBundleID:nowPlayingApp type:1];
  }

  else
  {
    if ([senderCopy isEqualToString:@"com.apple.mediaremoted"])
    {
      visibleMediaApps2 = [(MRDRouteRecommendationController *)self visibleMediaApps];
      if ([visibleMediaApps2 count] == 1)
      {
        visibleMediaApps3 = [(MRDRouteRecommendationController *)self visibleMediaApps];
        firstObject = [visibleMediaApps3 firstObject];
      }

      else
      {
        firstObject = 0;
      }

      if (!firstObject)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = senderCopy;
  }

  firstObject = v12;
  if (v12)
  {
LABEL_10:
    v17 = +[MRDMediaBundleManager shared];
    v18 = [v17 cachedEligibilityOf:firstObject];

    [v8 setDonatingAppEligible:{objc_msgSend(v18, "isEligible")}];
    [v8 setDonatingAppBundleID:firstObject];
  }

LABEL_11:
  v13 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

LABEL_12:

  return v13;
}

@end