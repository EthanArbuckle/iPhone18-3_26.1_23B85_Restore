@interface MRDRoutedBackgroundActivityManager
- (BOOL)shouldUseVideoSymbolForEndpoint:(id)a3 bundleIdentifiers:(id)a4;
- (MRDRoutedBackgroundActivityManager)init;
- (id)controllerForType:(unint64_t)a3;
- (id)makeControllerWithIdentifier:(id)a3;
- (unint64_t)activeBackgroundActivityType;
- (unint64_t)pillTypeWithEndpoint:(id)a3;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3;
- (void)_presentRoutePickerWithConfiguration:(id)a3;
- (void)_reevaluatePillsIfDisplayMonitorAndFocusMonitorAreInSyncWithReason:(id)a3;
- (void)dealloc;
- (void)dismissPillWithReason:(id)a3;
- (void)dismissSystemAperturePillWithReason:(id)a3;
- (void)handlePillTap;
- (void)openRoutePicker;
- (void)presentBluePillWithPlainType:(unint64_t)a3 pulseType:(unint64_t)a4 route:(id)a5 remoteControl:(BOOL)a6 reason:(id)a7;
- (void)presentCarPlayBanner;
- (void)reevaluatePillsWithReason:(id)a3;
- (void)setActiveSystemEndpoint:(id)a3;
- (void)setOptimisticRoute:(id)a3;
- (void)updateActiveBackgroundActivityWithType:(unint64_t)a3 reason:(id)a4;
@end

@implementation MRDRoutedBackgroundActivityManager

- (unint64_t)pillTypeWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isLocalEndpoint];
    v7 = [v5 resolvedOutputDevices];
    if ([v5 isLocalEndpoint])
    {
      v8 = [v7 msv_firstWhere:&stru_1004B85A0];
      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }

    v11 = +[MRDDisplayMonitor sharedMonitor];
    v12 = [v11 routePickerVisible];

    v13 = [(MRDRoutedBackgroundActivityManager *)self focusMonitor];
    v14 = [v13 mediaBundlesInFocus];

    v15 = [v14 msv_firstWhere:&stru_1004B85E0];

    v16 = [v14 count];
    if (v12)
    {
      [(MRDRoutedBackgroundActivityManager *)self shouldUseVideoSymbolForEndpoint:v5 bundleIdentifiers:v14];
      v10 = 0;
    }

    else
    {
      v17 = (v15 != 0) & ~v6 | (v9 && v16 != 0);
      v18 = [(MRDRoutedBackgroundActivityManager *)self shouldUseVideoSymbolForEndpoint:v5 bundleIdentifiers:v14];
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

- (BOOL)shouldUseVideoSymbolForEndpoint:(id)a3 bundleIdentifiers:(id)a4
{
  v5 = a3;
  v6 = [a4 anyObject];
  v7 = [v5 outputDevices];
  v8 = [v7 mr_containsVideoOutputDevice];

  v9 = [v5 outputDevices];
  v10 = [v9 mr_first:&stru_1004B8600];

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if ([v5 isLocalEndpoint] && v10)
    {
      v12 = +[AVOutputContext sharedSystemRemoteDisplayContext];
      v13 = [v12 ID];
      v14 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:v13];

      v15 = [v14 outputDevices];
      v11 = [v15 mr_containsVideoOutputDevice];
    }
  }

  if (v6)
  {
    v16 = +[MRDMediaBundleManager shared];
    v17 = [v16 cachedEligibilityOf:v6];

    v11 &= [v17 isVideoApp];
  }

  return v11;
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

- (id)makeControllerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MRDBackgroundActivityController controllerForBackgroundActivityIdentifier:v4];
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

- (id)controllerForType:(unint64_t)a3
{
  if (a3)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(MRDRoutedBackgroundActivityManager *)v4 backgroundActivityControllers];
    v6 = [NSNumber numberWithUnsignedInteger:a3];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = sub_100073EB4(a3);
      v7 = [(MRDRoutedBackgroundActivityManager *)v4 makeControllerWithIdentifier:v8];

      v9 = [(MRDRoutedBackgroundActivityManager *)v4 backgroundActivityControllers];
      v10 = [NSNumber numberWithUnsignedInteger:a3];
      [v9 setObject:v7 forKeyedSubscript:v10];
    }

    objc_sync_exit(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dismissSystemAperturePillWithReason:(id)a3
{
  v4 = a3;
  v5 = [(MRDRoutedBackgroundActivityManager *)self mediaActivityManager];
  v6 = [v5 isPresentingConnectedPill];

  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM Asked to dismissPill because %@", &v9, 0xCu);
    }

    v8 = [(MRDRoutedBackgroundActivityManager *)self mediaActivityManager];
    [v8 dismissConnectedBanner];
  }
}

- (void)presentBluePillWithPlainType:(unint64_t)a3 pulseType:(unint64_t)a4 route:(id)a5 remoteControl:(BOOL)a6 reason:(id)a7
{
  v17 = a7;
  v11 = [(MRDRoutedBackgroundActivityManager *)self playbackState];
  v12 = [(MRDRoutedBackgroundActivityManager *)self activeBackgroundActivityType];
  if (a5)
  {
    v13 = a4;
  }

  else
  {
    v13 = a3;
  }

  if (v11 != 1 || a5 == 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = a4;
  }

  if (v12 == a4)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  if (v12 != v16)
  {
    [MRDRoutedBackgroundActivityManager updateActiveBackgroundActivityWithType:"updateActiveBackgroundActivityWithType:reason:" reason:?];
  }
}

- (void)dismissPillWithReason:(id)a3
{
  v4 = a3;
  if ([(MRDRoutedBackgroundActivityManager *)self supportsCustomSystemAperturePill])
  {
    [(MRDRoutedBackgroundActivityManager *)self dismissSystemAperturePillWithReason:v4];
  }

  else if ([(MRDRoutedBackgroundActivityManager *)self isPresentingBackgroundActivity])
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM Asked to dismissPill because %@", &v6, 0xCu);
    }

    [(MRDRoutedBackgroundActivityManager *)self updateActiveBackgroundActivityWithType:0 reason:v4];
  }
}

- (unint64_t)activeBackgroundActivityType
{
  v2 = [(MRDRoutedBackgroundActivityManager *)self backgroundActivityControllers];
  v3 = [v2 msv_firstWhere:&stru_1004B8668];

  if (v3)
  {
    v4 = [v3 first];
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateActiveBackgroundActivityWithType:(unint64_t)a3 reason:(id)a4
{
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 - 1 > 3)
    {
      v9 = @"None";
    }

    else
    {
      v9 = off_1004B8780[a3 - 1];
    }

    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM Asked to updateActiveBackgroundActivity withType:%@ because %@", buf, 0x16u);
  }

  v10 = [(MRDRoutedBackgroundActivityManager *)v7 controllerForType:a3];
  if (([v10 isBackgroundActivityActive] & 1) == 0)
  {
    [v10 setIsBackgroundActivityActive:1];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(MRDRoutedBackgroundActivityManager *)v7 backgroundActivityControllers];
    v12 = [v11 allValues];

    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (v16 != v10)
          {
            [v16 setIsBackgroundActivityActive:0];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  objc_sync_exit(v7);
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
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM _handleActiveSystemEndpointDidChangeNotification: %@", buf, 0xCu);
    }

    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    v11 = [(MRDRoutedBackgroundActivityManager *)self queue];
    v12 = v10;
    MRAVEndpointResolveActiveSystemEndpointWithType();
  }
}

- (void)_reevaluatePillsIfDisplayMonitorAndFocusMonitorAreInSyncWithReason:(id)a3
{
  v11 = a3;
  v4 = +[MRDDisplayMonitor sharedMonitor];
  v5 = [v4 presentedBundleIdentifiers];
  v6 = [(MRDRoutedBackgroundActivityManager *)self focusMonitor];
  v7 = [v6 bundlesInFocus];
  v8 = v7;
  if (v5 == v7)
  {

    goto LABEL_5;
  }

  v9 = [v5 isEqual:v7];

  v10 = v11;
  if (v9)
  {
LABEL_5:
    [(MRDRoutedBackgroundActivityManager *)self reevaluatePillsWithReason:v11];
    v10 = v11;
  }
}

- (void)setActiveSystemEndpoint:(id)a3
{
  objc_storeStrong(&self->_activeSystemEndpoint, a3);

  [(MRDRoutedBackgroundActivityManager *)self reevaluatePillsWithReason:@"active system endpoint changed"];
}

- (void)setOptimisticRoute:(id)a3
{
  objc_storeStrong(&self->_optimisticRoute, a3);

  [(MRDRoutedBackgroundActivityManager *)self reevaluatePillsWithReason:@"optimistic route changed"];
}

- (void)reevaluatePillsWithReason:(id)a3
{
  v15 = a3;
  v4 = [(MRDRoutedBackgroundActivityManager *)self mediaActivityManager];
  if (([v4 isPresentingBanner] & 1) == 0)
  {

LABEL_5:
    v6 = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
    v7 = [(MRDRoutedBackgroundActivityManager *)self pillTypeWithEndpoint:v6];

    if (v7)
    {
      if (v7 != 2)
      {
        if (v7 != 1)
        {
          goto LABEL_15;
        }

        v8 = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
        v9 = [v8 isLocalEndpoint] ^ 1;
        v10 = self;
        v11 = 0;
LABEL_13:
        [(MRDRoutedBackgroundActivityManager *)v10 presentAudioBluePill:v11 remoteControl:v9 reason:v15];
        goto LABEL_14;
      }

      v8 = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
      v9 = [v8 isLocalEndpoint] ^ 1;
      v10 = self;
      v11 = 0;
    }

    else
    {
      v12 = [(MRDRoutedBackgroundActivityManager *)self optimisticRoute];

      if (!v12)
      {
        [(MRDRoutedBackgroundActivityManager *)self dismissPillWithReason:v15];
        goto LABEL_15;
      }

      v13 = [(MRDRoutedBackgroundActivityManager *)self optimisticDevices];
      v14 = [v13 mr_containsVideoOutputDevice];

      v8 = [(MRDRoutedBackgroundActivityManager *)self optimisticRoute];
      v10 = self;
      v11 = v8;
      v9 = 0;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    [(MRDRoutedBackgroundActivityManager *)v10 presentVideoBluePill:v11 remoteControl:v9 reason:v15];
LABEL_14:

    goto LABEL_15;
  }

  v5 = [(MRDRoutedBackgroundActivityManager *)self optimisticRoute];

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_15:
}

- (void)handlePillTap
{
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 routingServer];
  v5 = [v4 carPlayRecommendationController];

  if ([v5 isCarPlayVideoAllowed] && objc_msgSend(v5, "isCarPlayVideoActive"))
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
  v3 = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
  v4 = [v3 outputDeviceUIDs];
  v5 = [v4 firstObject];

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MRDRoutedBackgroundActivityManager *)self activeSystemEndpoint];
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v7;
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
  v11 = [(MRDRoutedBackgroundActivityManager *)self focusMonitor];
  v12 = [v11 bundlesInFocus];

  v13 = [v12 msv_firstWhere:&stru_1004B86D8];
  if (_os_feature_enabled_impl())
  {
    if (v13)
    {
      [v10 setPresentingAppBundleID:v13];
    }

    else
    {
      v16 = [v12 anyObject];
      [v10 setPresentingAppBundleID:v16];
    }
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 bundleIdentifier];
    [v10 setPresentingAppBundleID:v15];
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
  v20 = [v19 primaryUIApplicationBundleIdentifier];

  v21 = [(MRDRoutedBackgroundActivityManager *)self nowPlayingController];
  v22 = [v21 destination];
  v23 = [v22 client];
  v24 = [v23 bundleIdentifier];

  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v20;
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
    v30 = self;
    [v27 queryEligibilityOf:v26 completionHandler:v28];
  }

  else
  {
    [(MRDRoutedBackgroundActivityManager *)self _presentRoutePickerWithConfiguration:v10];
  }
}

- (void)_presentRoutePickerWithConfiguration:(id)a3
{
  v4 = a3;
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
  v7 = [[v5 alloc] initWithConfiguration:v4 shouldObserveRoutingContextUIDChanges:0];
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
  v4 = [v3 routingServer];
  v5 = [v4 carPlayRecommendationController];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100076158;
  v6[3] = &unk_1004B7838;
  v6[4] = self;
  [v5 displayCarPlayVideoConnectedBannerWithCompletion:v6];
}

@end