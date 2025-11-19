@interface MRDRouteRecommendationController
- (BOOL)isRoutePlaying:(id)a3;
- (BOOL)shouldUseVideoSymbolForDevices:(id)a3 bundleIdentifier:(id)a4;
- (MRDRouteRecommendationController)init;
- (MRRouteRecommender)recommender;
- (MRRouteValidator)validator;
- (NSArray)recommendedRoutes;
- (id)_updateMediaControlsBlob:(id)a3 sender:(id)a4;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3;
- (void)_handleLayoutDidChangeNotification:(id)a3;
- (void)_handleOutputDevicesDidChangeNotification:(id)a3;
- (void)airPlayTo:(id)a3 completion:(id)a4;
- (void)clearUnusedAutoRoute;
- (void)didReceiveNewRecommendations:(id)a3 forBundleIdentifier:(id)a4;
- (void)dismissAllBannerRequests;
- (void)donatePickerChoiceFor:(id)a3 bundleIdentifier:(id)a4 contextIdentifier:(id)a5;
- (void)handOffQueueOrAirPlay:(id)a3 sourceEndpoint:(id)a4 destinationEndpoint:(id)a5 playerPath:(id)a6 completion:(id)a7;
- (void)handlePlaybackStartForEndpoint:(id)a3 bundleIdentifier:(id)a4 eligibleForRecommendationsOutsideApp:(BOOL)a5;
- (void)mediaApplicationsInFocus:(id)a3;
- (void)openRoutePickerForRouteUID:(id)a3;
- (void)performTopologyModificationToRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 requestName:(id)a6 completion:(id)a7;
- (void)remoteControl:(id)a3 completion:(id)a4;
- (void)route:(id)a3 endpoint:(id)a4 bundleIdentifier:(id)a5 emittedEvent:(unint64_t)a6;
- (void)setASEToLocal;
- (void)setRecommendedRoutes:(id)a3;
- (void)setup;
- (void)setupTimerForRoute:(id)a3 bundleIdentifier:(id)a4;
- (void)signpostEndWillShowBanner:(BOOL)a3;
- (void)stopAirPlayingAndRemoteControlling;
@end

@implementation MRDRouteRecommendationController

- (MRRouteRecommender)recommender
{
  v2 = self;
  objc_sync_enter(v2);
  recommender = v2->_recommender;
  if (!recommender)
  {
    v4 = objc_alloc_init(MRDIRDRouteRecommender);
    v5 = v2->_recommender;
    v2->_recommender = v4;

    [(MRRouteRecommender *)v2->_recommender setDelegate:v2];
    recommender = v2->_recommender;
  }

  v6 = recommender;
  objc_sync_exit(v2);

  return v6;
}

- (MRRouteValidator)validator
{
  v2 = self;
  objc_sync_enter(v2);
  validator = v2->_validator;
  if (!validator)
  {
    v4 = objc_alloc_init(MRDRouteValidator);
    v5 = v2->_validator;
    v2->_validator = v4;

    validator = v2->_validator;
  }

  v6 = validator;
  objc_sync_exit(v2);

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
  v2 = [(MRDRouteRecommendationController *)self mediaActivityManager];
  [v2 dismissAllBannerRequests];
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
  v3 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
  [v3 setAlwaysAllowUpdates:1];

  v4 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
  [v4 setAlwaysAllowUpdates:1];

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
    v15 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
    v16 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
    *buf = 134218498;
    v43 = self;
    v44 = 2048;
    v45 = v15;
    v46 = 2112;
    v47 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDRRC] <%p> Setup RRC: RC discovery session (%p) = %@", buf, 0x20u);
  }

  v17 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10003C8B4;
  v39[3] = &unk_1004B9B48;
  objc_copyWeak(&v40, &location);
  v18 = [v17 addEndpointsAddedCallback:v39];

  v19 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100020EFC;
  v37[3] = &unk_1004B9B48;
  objc_copyWeak(&v38, &location);
  v20 = [v19 addEndpointsModifiedCallback:v37];

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
    v23 = [(MRDRouteRecommendationController *)self remoteControlDiscoverySession];
    *buf = 134218498;
    v43 = self;
    v44 = 2048;
    v45 = v22;
    v46 = 2112;
    v47 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDRRC] <%p> Setup RRC: added callbacks for RC discovery session (%p) = %@", buf, 0x20u);
  }

  v24 = _MRLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
    v26 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
    *buf = 134218498;
    v43 = self;
    v44 = 2048;
    v45 = v25;
    v46 = 2112;
    v47 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[MRDRRC] <%p> Setup RRC: audio discovery session (%p) = %@", buf, 0x20u);
  }

  v27 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1001AA73C;
  v35 = &unk_1004B9B48;
  objc_copyWeak(&v36, &location);
  v28 = [v27 addOutputDevicesAddedCallback:&v32];

  v29 = _MRLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [(MRDRouteRecommendationController *)self audioDiscoverySession:v32];
    v31 = [(MRDRouteRecommendationController *)self audioDiscoverySession];
    *buf = 134218498;
    v43 = self;
    v44 = 2048;
    v45 = v30;
    v46 = 2112;
    v47 = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[MRDRRC] <%p> Setup RRC: added callbacks for audio discovery session (%p) = %@", buf, 0x20u);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (void)setRecommendedRoutes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_recommendedRoutesLock);
  recommendedRoutes = self->_recommendedRoutes;
  self->_recommendedRoutes = v4;

  os_unfair_lock_unlock(&self->_recommendedRoutesLock);
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v7 = [v6 intValue];

  if (!v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC] _handleActiveSystemEndpointDidChangeNotification: %@", buf, 0xCu);
    }

    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    v11 = [(MRDRouteRecommendationController *)self queue];
    v12 = v10;
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (void)_handleOutputDevicesDidChangeNotification:(id)a3
{
  v6 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  if ([v6 shouldDonate])
  {
    v4 = [(MRDRouteRecommendationController *)self recommender];
    v5 = [MRIRRoute routeWithEndpoint:v6];
    [v4 updateRouteCandidate:v5];
  }
}

- (void)donatePickerChoiceFor:(id)a3 bundleIdentifier:(id)a4 contextIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(MRDRouteRecommendationController *)self lastDonatedPickerChoice];
  v12 = [v8 isEqual:v11];

  if (v12)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Not dropping duplicate picker choice for %@ - picks are distributed", &v16, 0xCu);
    }
  }

  [(MRDRouteRecommendationController *)self setLastDonatedPickerChoice:v8];
  v14 = [[IRMediaEvent alloc] initWithEventType:0 eventSubType:0];
  [v14 setBundleID:v10];

  [v14 setContextIdentifier:v9];
  v15 = [(MRDRouteRecommendationController *)self recommender];
  [v15 addEvent:v14 forRouteCandidate:v8];
}

- (void)mediaApplicationsInFocus:(id)a3
{
  v4 = a3;
  v5 = [v4 allObjects];
  [(MRDRouteRecommendationController *)self setVisibleMediaApps:v5];

  v6 = [(MRDRouteRecommendationController *)self focusMonitor];
  v7 = [v6 lockScreenVisible];

  v8 = ([v4 count] != 0) | v7;
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

    v11 = [v4 count];
    v12 = @"NO";
    *v22 = 138413058;
    *&v22[4] = v10;
    *&v22[12] = 2048;
    if (v7)
    {
      v12 = @"YES";
    }

    *&v22[14] = v11;
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC] setting mode to %@: %lu media apps in focus: %@, lockscreen: %@", v22, 0x2Au);
  }

  v13 = [(MRDRouteRecommendationController *)self recommender];
  v14 = v13;
  if (v8)
  {
    v15 = [v13 mode];

    if (v15 == 1)
    {
      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDRRC] mode already set to update on events - won't set again", v22, 2u);
      }
    }

    else
    {
      v16 = [(MRDRouteRecommendationController *)self recommender];
      [v16 setMode:1];
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
    [v13 setMode:0];

    [(MRDRouteRecommendationController *)self dismissAllBannerRequests];
  }

  v21 = [(MRDRouteRecommendationController *)self routedBackgroundActivityManager];
  [v21 mediaApplicationsInFocus:v4];
}

- (void)_handleLayoutDidChangeNotification:(id)a3
{
  v4 = [(MRDRouteRecommendationController *)self lastUnusedAutoRouteBundleIdentifier];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = +[MRDDisplayMonitor sharedMonitor];
  if ([v5 displayOn])
  {
    v6 = +[MRDDisplayMonitor sharedMonitor];
    v7 = [v6 presentedBundleIdentifiers];
    v8 = [v7 containsObject:v4];

    if (v8)
    {
      v9 = [(MRDRouteRecommendationController *)self undoTimer];

      if (v9)
      {
        [(MRDRouteRecommendationController *)self setUndoTimer:0];
        v10 = _MRLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC] cancelling timer, %@ is in focus again", &v13, 0xCu);
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = [(MRDRouteRecommendationController *)self undoTimer];

  if (!v11)
  {
    v12 = [(MRDRouteRecommendationController *)self lastUnusedAutoRoute];
    [(MRDRouteRecommendationController *)self setupTimerForRoute:v12 bundleIdentifier:v4];
  }

LABEL_11:
}

- (void)didReceiveNewRecommendations:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC] %@", buf, 0xCu);
  }

  [(MRDRouteRecommendationController *)self setRecommendedRoutes:v6];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"MRRouteRecommenderDidReceiveNewRecommendationsNotification" object:self];

  v10 = [v6 msv_compactMap:&stru_1004C14B8];
  v11 = +[MRDDisplayMonitor sharedMonitor];
  v12 = [v11 primaryUIApplicationBundleIdentifier];

  if (v7)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v12;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC] overriding %@ with %@ - request outside app", buf, 0x16u);
    }

    v14 = v7;
    v12 = v14;
  }

  else
  {
    v15 = [(MRDRouteRecommendationController *)self recommender];
    v16 = [v15 mode];

    if (v16 != 1)
    {
      v19 = _MRLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(MRDRouteRecommendationController *)self recommender];
        v23 = [v22 mode];
        v24 = [v10 count];
        *buf = 134218498;
        v29 = v23;
        v30 = 2048;
        v31 = v24;
        v32 = 2112;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Session mode is %ld - ignoring %lu recommendations - primary: %@", buf, 0x20u);
      }

      goto LABEL_14;
    }
  }

  v17 = +[MRDDisplayMonitor sharedMonitor];
  v18 = [v17 lockScreenVisible];

  if (v18)
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

  v21 = [(MRDRouteRecommendationController *)self validator];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001AB8D4;
  v25[3] = &unk_1004C15D0;
  v25[4] = self;
  v12 = v12;
  v26 = v12;
  v27 = v7 != 0;
  [v21 bestRecommendationIn:v10 primaryBundleIdentifier:v12 eligibleToShowRecommendationsOutsideApp:v7 != 0 completion:v25];

LABEL_15:
}

- (void)signpostEndWillShowBanner:(BOOL)a3
{
  v3 = a3;
  v5 = [(MRDRouteRecommendationController *)self signpostIds];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MRDRouteRecommendationController *)self signpostIds];
    v8 = [v7 firstObject];

    v9 = [(MRDRouteRecommendationController *)self signpostIds];
    [v9 removeFirstObject];

    v10 = _MRLogForCategory();
    v11 = [v8 hash];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        v13 = @"NO";
        if (v3)
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

- (BOOL)shouldUseVideoSymbolForDevices:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[MRDMediaBundleManager shared];
    v8 = [v7 cachedEligibilityOf:v6];

    if ([v8 isVideoApp])
    {
      v9 = [v5 mr_containsVideoOutputDevice];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [v5 mr_containsVideoOutputDevice];
  }

  return v9;
}

- (void)setASEToLocal
{
  v3 = [(MRDRouteRecommendationController *)self activeSystemEndpoint];
  v4 = [v3 isLocalEndpoint];

  if ((v4 & 1) == 0)
  {
    v6 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"Coriander setASEToLocal"];
    [v6 setChangeType:0];
    v5 = [(MRDRouteRecommendationController *)self queue];
    [v6 perform:v5 completion:&stru_1004C15F0];
  }
}

- (void)stopAirPlayingAndRemoteControlling
{
  v4 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"Coriander Clear State"];
  [v4 setChangeType:0];
  v3 = [(MRDRouteRecommendationController *)self queue];
  [v4 perform:v3 completion:&stru_1004C1610];
}

- (void)airPlayTo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MRDRouteRecommendationController *)self localSystemEndpoint];
    *buf = 138412546;
    v26 = v9;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Will AirPlay %@ to %@", buf, 0x16u);
  }

  v10 = [(MRDRouteRecommendationController *)self localSystemEndpoint];
  objc_initWeak(buf, v10);

  v11 = [MRRequestDetails alloc];
  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];
  v14 = [v11 initWithName:@"RouteRecommendation.AirPlay" requestID:v13 reason:@"MRDRRC/AP"];

  v15 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v14 type:3 outputDevices:v6];
  [v15 setMuteUntilFinished:1];
  v16 = [(MRDRouteRecommendationController *)self localSystemEndpoint];
  v17 = [(MRDRouteRecommendationController *)self queue];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001AD6D4;
  v22 = &unk_1004B95A0;
  v18 = v7;
  v23 = v18;
  objc_copyWeak(&v24, buf);
  [v16 modifyTopologyWithRequest:v15 withReplyQueue:v17 completion:&v19];

  [(MRDRouteRecommendationController *)self setASEToLocal:v19];
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
}

- (void)handOffQueueOrAirPlay:(id)a3 sourceEndpoint:(id)a4 destinationEndpoint:(id)a5 playerPath:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v14 uniqueIdentifier];
    *buf = 138412802;
    v33 = v18;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Will try to HandOff or AirPlay to %@ (%@) pp: %@", buf, 0x20u);
  }

  v19 = +[MRUserSettings currentSettings];
  v20 = [v19 enableQueueHandOffForRouteRecommendations];

  if (v20)
  {
    v21 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
    [v21 setPlayerPath:v15];
    v22 = [MRRequestDetails alloc];
    v23 = +[NSUUID UUID];
    v24 = [v23 UUIDString];
    v25 = [v22 initWithName:@"RouteRecommendation.HandOffQueueOrAirPlay" requestID:v24 reason:@"MRDRRC/QHOFallbackToAirPlay"];

    v26 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v25 type:3 outputDevices:v12];
    [v26 setMuteUntilFinished:1];
    v27 = [(MRDRouteRecommendationController *)self queue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001ADA58;
    v29[3] = &unk_1004B9DE8;
    v31 = v16;
    v30 = v14;
    [v13 migrateToEndpointOrModifyTopology:v30 migrationRequest:v21 topologyModificationRequest:v26 withReplyQueue:v27 completion:v29];
  }

  else
  {
    v28 = _MRLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDRRC] HandOff is disabled, AirPlaying...", buf, 2u);
    }

    [(MRDRouteRecommendationController *)self airPlayTo:v12 completion:v16];
  }
}

- (void)remoteControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MRUpdateActiveSystemEndpointRequest alloc];
  v9 = [v6 outputDeviceUIDs];
  v10 = [v9 firstObject];
  v11 = [v8 initWithOutputDeviceUID:v10 reason:@"Coriander One-Tap Recommendation accepted"];

  [v11 setChangeType:0];
  v12 = [(MRDRouteRecommendationController *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001ADBB8;
  v15[3] = &unk_1004C1678;
  v16 = v6;
  v17 = v7;
  v13 = v6;
  v14 = v7;
  [v11 perform:v12 completion:v15];
}

- (void)performTopologyModificationToRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 requestName:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = v12;
  v15 = v13;
  v16 = a7;
  v17 = a6;
  v18 = a3;
  v19 = +[NSDate date];
  v20 = [NSString stringWithFormat:@"MRDRRC:TM/%@", v17];

  v21 = +[NSUUID UUID];
  v22 = [v21 UUIDString];

  v23 = [v18 routeIdentifier];

  v146 = v15;
  v24 = [v15 debugName];
  v144 = v14;
  v25 = MRAVOutputDeviceArrayDescription();
  v26 = [NSString stringWithFormat:@"route=%@, endpoint=%@, devices=%@", v23, v24, v25];

  v27 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", v20, v22];
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
  v30 = v20;
  v154 = v30;
  v148 = v22;
  v155 = v148;
  v140 = v19;
  v156 = v140;
  v139 = v16;
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

  v33 = [(MRDRouteRecommendationController *)self focusMonitor];
  v34 = [v33 bundlesInFocus];

  v142 = v34;
  v35 = [v34 msv_filter:&stru_1004C16B8];
  v36 = [NSSet setWithArray:v35];

  v37 = [(MRDRouteRecommendationController *)self focusMonitor];
  v38 = [v37 mediaBundlesInFocus];

  v143 = v38;
  v39 = [v38 mutableCopy];
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
  v42 = [(MRDRouteRecommendationController *)self localSystemEndpoint];
  v134 = self;
  v43 = [(MRDRouteRecommendationController *)self activeSystemEndpoint];
  v44 = v43;
  if (v40)
  {
    v45 = v43;
  }

  else
  {
    v45 = v42;
  }

  v46 = v45;
  v47 = [v46 uniqueIdentifier];
  v48 = [v146 uniqueIdentifier];
  v136 = v44;
  v137 = v42;
  v49 = [NSString stringWithFormat:@"visible RC: %@\n visible AP: %@\n sEP: %@, dEP: %@\n ASE: %@ local: %@", v147, v41, v47, v48, v44, v42];

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
    v55 = [v54 nowPlayingServer];
    v56 = v46;
    v57 = [v46 origin];
    v58 = [v55 originClientForOrigin:v57];

    v59 = [v58 activeNowPlayingClient];
    v60 = [v59 client];
    v61 = [v60 bundleIdentifier];

    v127 = v58;
    v62 = [v58 activeNowPlayingClient];
    v63 = [v62 activePlayerClient];
    v64 = [v63 isPlaying];

    if (v61)
    {
      v129 = [v142 containsObject:v61];
    }

    else
    {
      v129 = 0;
    }

    v68 = v146;
    v69 = +[MRDMediaRemoteServer server];
    v70 = [v69 nowPlayingServer];
    v71 = [v68 origin];
    v72 = [v70 originClientForOrigin:v71];

    v73 = [v72 activeNowPlayingClient];
    v74 = [v73 client];
    v75 = [v74 bundleIdentifier];

    v125 = v72;
    v76 = [v72 activeNowPlayingClient];
    v77 = [v76 activePlayerClient];
    v78 = [v77 isPlaying];

    if (v75)
    {
      v122 = [v143 containsObject:v75] & v78;
    }

    else
    {
      v122 = 0;
    }

    v79 = [v56 uniqueIdentifier];
    v126 = v68;
    v80 = [v68 uniqueIdentifier];
    v81 = v80;
    if (v64)
    {
      v82 = @"YES";
    }

    else
    {
      v82 = @"NO";
    }

    if (v78)
    {
      v83 = @"YES";
    }

    else
    {
      v83 = @"NO";
    }

    v128 = v75;
    v84 = [NSString stringWithFormat:@"sEP: %@\n dEP: %@\n sNP: %@\n dNP: %@\n sPL: %@ - dPL: %@\n", v79, v80, v61, v75, v82, v83];

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
    if (!(v129 & 1 | ((v64 & 1) == 0)) && [v143 count])
    {
      v86 = [NSString stringWithFormat:@"Pausing ASE - NP: %@", v61];
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

      v149 = v61;
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
      [(MRDRouteRecommendationController *)v134 airPlayTo:v144 completion:v138];
      v93 = v126;
      goto LABEL_74;
    }

    if (v64)
    {
      v66 = v144;
      if ((v129 & 1) == 0)
      {
        v97 = [NSString stringWithFormat:@"Only RC, source was playing %@ (not FG): Migrating", v61];
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
        if (v61)
        {
          [NSSet setWithObject:v61];
        }

        else
        {
          +[NSSet set];
        }

        v123 = v130 = v97;
        [v99 minusSet:v123];
        v104 = [v99 anyObject];
        v105 = [NSString stringWithFormat:@"migration candidates: %@, will try to migrate %@", v99, v104];
        v106 = _MRLogForCategory();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v159 = v145;
          v160 = 2114;
          v161 = v148;
          v162 = 2112;
          v163 = v105;
          _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v107 = [[MRClient alloc] initWithBundleIdentifier:v104];
        v108 = [MRPlayerPath alloc];
        v109 = +[MROrigin localOrigin];
        v110 = [v108 initWithOrigin:v109 client:v107 player:0];

        v93 = v126;
        v111 = v105;
        v67 = v138;
        [(MRDRouteRecommendationController *)v134 handOffQueueOrAirPlay:v144 sourceEndpoint:v56 destinationEndpoint:v126 playerPath:v110 completion:v138];

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

      v89 = [[MRClient alloc] initWithBundleIdentifier:v61];
      v90 = [MRPlayerPath alloc];
      v91 = +[MROrigin localOrigin];
      v92 = [v90 initWithOrigin:v91 client:v89 player:0];

      v93 = v126;
      v67 = v138;
      [(MRDRouteRecommendationController *)v134 handOffQueueOrAirPlay:v144 sourceEndpoint:v56 destinationEndpoint:v126 playerPath:v92 completion:v138];

      v51 = v145;
    }

    else
    {
      if (v122)
      {
        v95 = [NSString stringWithFormat:@"Only RC, source is not playing, destination is playing %@ (FG locally): RC", v128];
        v96 = _MRLogForCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v159 = v145;
          v160 = 2114;
          v161 = v148;
          v162 = 2112;
          v163 = v95;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v93 = v126;
        v67 = v138;
        [(MRDRouteRecommendationController *)v134 remoteControl:v126 completion:v138];

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
        v102 = v61;
      }

      else
      {
        v103 = [v147 mutableCopy];
        if (v61)
        {
          [NSSet setWithObject:v61];
        }

        else
        {
          +[NSSet set];
        }
        v112 = ;
        [v103 minusSet:v112];
        v102 = [v103 anyObject];
        v131 = [NSString stringWithFormat:@"migration candidates: %@", v103];
        v113 = _MRLogForCategory();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v159 = v145;
          v160 = 2114;
          v161 = v148;
          v162 = 2112;
          v163 = v131;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }
      }

      v114 = [NSString stringWithFormat:@"will try to migrate %@", v102];
      v115 = _MRLogForCategory();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v159 = v145;
        v160 = 2114;
        v161 = v148;
        v162 = 2112;
        v163 = v114;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v116 = [[MRClient alloc] initWithBundleIdentifier:v102];
      v117 = [MRPlayerPath alloc];
      +[MROrigin localOrigin];
      v119 = v118 = v102;
      v120 = [v117 initWithOrigin:v119 client:v116 player:0];

      v93 = v126;
      v121 = v114;
      v67 = v138;
      [(MRDRouteRecommendationController *)v134 handOffQueueOrAirPlay:v144 sourceEndpoint:v56 destinationEndpoint:v126 playerPath:v120 completion:v138];

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
  [(MRDRouteRecommendationController *)v134 airPlayTo:v144 completion:v138];
LABEL_75:
}

- (void)setupTimerForRoute:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MRUserSettings currentSettings];
  [v8 undoUnusedAutoRouteTimerDuration];
  v10 = v9;

  if (v10 > 0.0)
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      v25 = 2048;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Setting up timer for %@ (%@) for %f seconds", buf, 0x20u);
    }

    [(MRDRouteRecommendationController *)self setLastUnusedAutoRoute:v6];
    objc_initWeak(buf, self);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1001B0144;
    v16 = &unk_1004C1730;
    v17 = v7;
    v18 = self;
    v19 = v6;
    objc_copyWeak(&v20, buf);
    v12 = [MSVTimer timerWithInterval:0 repeats:&v13 block:v10];
    [(MRDRouteRecommendationController *)self setUndoTimer:v12, v13, v14, v15, v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (BOOL)isRoutePlaying:(id)a3
{
  v3 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v3 nodes];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) avOutputDeviceIdentifier];
        v11 = [v5 originClientForGroupLeaderOfDeviceUID:v10];

        LOBYTE(v10) = [v11 isPlaying];
        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)openRoutePickerForRouteUID:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Long pressed - will open route picker for %@", &buf, 0xCu);
  }

  v6 = objc_alloc_init(sub_1001B0780());
  v7 = +[NSBundle mainBundle];
  v8 = [v7 bundleIdentifier];
  [v6 setPresentingAppBundleID:v8];

  [v6 setStyle:2];
  [v6 setSurface:11];
  if (MRAVOutputContextGetSharedAudioPresentationContext())
  {
    v9 = MRAVOutputContextCopyUniqueIdentifier();
    [v6 setRoutingContextUID:v9];
  }

  [v6 setRouteUID:v4];
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

- (void)route:(id)a3 endpoint:(id)a4 bundleIdentifier:(id)a5 emittedEvent:(unint64_t)a6
{
  v10 = a3;
  v44 = a4;
  v11 = a5;
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v46 = v10;
    v47 = 2112;
    v48 = v11;
    v49 = 2048;
    v50 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDRRC] route: %@ bundleIdentifier: %@, emittedEvent: %ld", buf, 0x20u);
  }

  v42 = a6;

  v13 = +[MRDMediaBundleManager shared];
  v14 = [v13 cachedEligibilityOf:v11];

  v41 = v14;
  v15 = [v14 isEligible];
  v43 = self;
  v16 = [(MRDRouteRecommendationController *)self focusMonitor];
  v17 = [v16 bundlesInFocus];
  v18 = [v17 containsObject:v11];

  v19 = [v44 isLocalEndpoint];
  v20 = +[MRDDisplayMonitor sharedMonitor];
  if ([v20 homeScreenVisible])
  {
    v21 = 1;
  }

  else
  {
    v22 = +[MRDDisplayMonitor sharedMonitor];
    v21 = [v22 controlCenterVisible];
  }

  v23 = +[MRDDisplayMonitor sharedMonitor];
  v24 = [v23 siriVisible];

  if (v18)
  {
    v25 = 0;
  }

  else
  {
    v25 = v21 & (v24 ^ 1);
  }

  v26 = v19 & v15 & v25;
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

    if (v19)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    if (v15)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v40 = v11;
    if (v25)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v32 = v10;
    if (v24)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v34 = [(MRDRouteRecommendationController *)v43 focusMonitor];
    v35 = [v34 bundlesInFocus];
    *buf = 138413570;
    v46 = v28;
    v47 = 2112;
    v48 = v29;
    v49 = 2112;
    v50 = v30;
    v51 = 2112;
    v52 = v31;
    v11 = v40;
    v53 = 2112;
    v54 = v33;
    v10 = v32;
    v55 = 2112;
    v56 = v35;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDRRC] eligible: %@, route: %@, app: %@, vis: %@ - siri: %@ - %@", buf, 0x3Eu);
  }

  if (v42 && v42 != 2)
  {
    if (v42 == 1)
    {
      v36 = v43;
      [(MRDRouteRecommendationController *)v43 handlePlaybackStartForEndpoint:v44 bundleIdentifier:v11 eligibleForRecommendationsOutsideApp:v26];
      v37 = 5;
    }

    else
    {
      v37 = 0;
      v36 = v43;
    }

    v38 = [[IRMediaEvent alloc] initWithEventType:v37 eventSubType:0];
    [v38 setBundleID:v11];
    [v38 setIsOutsideApp:v26];
    v39 = [(MRDRouteRecommendationController *)v36 recommender];
    [v39 addEvent:v38 forRouteCandidate:v10];
  }
}

- (void)handlePlaybackStartForEndpoint:(id)a3 bundleIdentifier:(id)a4 eligibleForRecommendationsOutsideApp:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [MRIRRoute routeWithEndpoint:v8];
  v11 = [(MRDRouteRecommendationController *)self lastUnusedAutoRoute];
  v12 = [v11 isEqual:v10];

  v13 = _MRLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC] playbackStarted ForEndpoint: %@ bundleIdentifier: %@, invalidating timer", &v17, 0x16u);
    }

    [(MRDRouteRecommendationController *)self clearUnusedAutoRoute];
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_9:
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDRRC] playback started for %@-%@; will request context update", &v17, 0x16u);
    }

    v16 = [(MRDRouteRecommendationController *)self recommender];
    [v16 requestCurrentContextWithBundleID:v9];

    goto LABEL_12;
  }

  if (v14)
  {
    v17 = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC] playbackStarted forUnrelatedEndpoint: %@ bundleIdentifier: %@", &v17, 0x16u);
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_12:
}

- (id)_updateMediaControlsBlob:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_1001B0780();
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
  if (!v8)
  {
    v13 = v6;
    goto LABEL_12;
  }

  v9 = [(MRDRouteRecommendationController *)self nowPlayingStateMonitor];
  v10 = [v9 nowPlayingApp];

  [v8 setNowPlayingAppBundleID:v10];
  v11 = [(MRDRouteRecommendationController *)self visibleMediaApps];
  [v8 setVisibleMediaApps:v11];

  if ([v7 isEqualToString:@"com.apple.MediaRemoteUI"])
  {
    v12 = [MRSystemMediaBundles systemMediaBundleIDForBundleID:v10 type:1];
  }

  else
  {
    if ([v7 isEqualToString:@"com.apple.mediaremoted"])
    {
      v14 = [(MRDRouteRecommendationController *)self visibleMediaApps];
      if ([v14 count] == 1)
      {
        v15 = [(MRDRouteRecommendationController *)self visibleMediaApps];
        v16 = [v15 firstObject];
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = v7;
  }

  v16 = v12;
  if (v12)
  {
LABEL_10:
    v17 = +[MRDMediaBundleManager shared];
    v18 = [v17 cachedEligibilityOf:v16];

    [v8 setDonatingAppEligible:{objc_msgSend(v18, "isEligible")}];
    [v8 setDonatingAppBundleID:v16];
  }

LABEL_11:
  v13 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

LABEL_12:

  return v13;
}

@end