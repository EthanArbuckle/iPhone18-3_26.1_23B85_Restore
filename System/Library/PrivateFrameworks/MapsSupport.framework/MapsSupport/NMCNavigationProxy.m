@interface NMCNavigationProxy
+ (id)sharedInstance;
- (BOOL)_isCarPlayConnected;
- (BOOL)_prepareToStartNavigationWithStartDetails:(id)a3;
- (BOOL)_shouldSendRouteStatus:(id)a3 previousRouteStatus:(id)a4;
- (NMCNavigationProxy)init;
- (int)currentUITargetForAnalytics:(int64_t)a3;
- (void)_cleanupNavigation;
- (void)_handleMessage:(id)a3;
- (void)_launchMapsForNavigation;
- (void)_legacy_sendPreviewRouteDetails:(id)a3 context:(id)a4;
- (void)_openOrCloseNavigationService;
- (void)_registerMessageObservers;
- (void)_sendRouteDetails:(id)a3 routeStatus:(id)a4 routeContext:(id)a5 forced:(BOOL)a6;
- (void)_sendRouteStatus:(id)a3 routeContext:(id)a4;
- (void)_sendRouteUpdate:(id)a3 routeContext:(id)a4;
- (void)_setupForNavigationWithRouteID:(id)a3 context:(id)a4;
- (void)_updateForActiveDevice;
- (void)_updateNavigationRouteDetails:(id)a3 routeStatus:(id)a4 routeUpdated:(BOOL)a5;
- (void)closeNavigationService;
- (void)dealloc;
- (void)pauseNavigation;
- (void)resumeNavigation;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)startNavigationWithDetails:(id)a3;
- (void)startNavigationWithRouteID:(id)a3 routeIndex:(unint64_t)a4 routePersistentData:(id)a5 companionRouteContext:(id)a6;
- (void)stopNavigation;
- (void)updateNavigationRouteWithUpdate:(id)a3;
@end

@implementation NMCNavigationProxy

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000653C;
  block[3] = &unk_100084E80;
  block[4] = a1;
  if (qword_10009E730 != -1)
  {
    dispatch_once(&qword_10009E730, block);
  }

  v2 = qword_10009E728;

  return v2;
}

- (NMCNavigationProxy)init
{
  v18.receiver = self;
  v18.super_class = NMCNavigationProxy;
  v2 = [(NMCNavigationProxy *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    routeLock = v2->_routeLock;
    v2->_routeLock = v3;

    v5 = [[MNCompanionNavigationAdapter alloc] initWithDelegate:v2];
    adapter = v2->_adapter;
    v2->_adapter = v5;

    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_updateForActiveDevice" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v9 = objc_alloc_init(MapsDistanceUnitUpdater);
    distanceUnitUpdater = v2->_distanceUnitUpdater;
    v2->_distanceUnitUpdater = v9;

    [(MapsDistanceUnitUpdater *)v2->_distanceUnitUpdater start];
    v11 = [NavigationSettingsMonitor alloc];
    v12 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Maps"];
    v13 = [(NavigationSettingsMonitor *)v11 initWithUserDefaults:v12];
    settingsMonitor = v2->_settingsMonitor;
    v2->_settingsMonitor = v13;

    v15 = objc_alloc_init(CARSessionStatus);
    carSessionStatus = v2->_carSessionStatus;
    v2->_carSessionStatus = v15;

    [(CARSessionStatus *)v2->_carSessionStatus addSessionObserver:v2];
    [(NMCNavigationProxy *)v2 _registerMessageObservers];
    [(NMCNavigationProxy *)v2 _openOrCloseNavigationService];
  }

  return v2;
}

- (void)dealloc
{
  [(MNCompanionNavigationAdapter *)self->_adapter invalidate];
  v3 = +[MNNavigationService sharedService];
  [v3 closeForClient:self];

  v4.receiver = self;
  v4.super_class = NMCNavigationProxy;
  [(NMCNavigationProxy *)&v4 dealloc];
}

- (void)startNavigationWithRouteID:(id)a3 routeIndex:(unint64_t)a4 routePersistentData:(id)a5 companionRouteContext:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v12 && (v10 || a4 != 0x7FFFFFFFFFFFFFFFLL || v11))
  {
    [(NSLock *)self->_routeLock lock];
    objc_storeStrong(&self->_companionRouteContext, a6);
    [(NSLock *)self->_routeLock unlock];
    v13 = objc_alloc_init(IPCLoadDirectionsMessage);
    -[IPCLoadDirectionsMessage setOriginIsWatch:](v13, "setOriginIsWatch:", [v12 origin] == 1);
    v22 = [v12 data];
    [(IPCLoadDirectionsMessage *)v13 setRouteContextData:v22];

    [(IPCLoadDirectionsMessage *)v13 setRoutePersistentData:v11];
    v23 = [IPCStartNavigationMessage startNavigationMessageWithLoadDirectionsMessage:v13];
    [v23 setOriginIsWatch:1];
    [v23 setRouteIndex:a4];
    [v23 setRouteID:v10];
    v24 = sub_100053214();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v12 simpleDescription];
      v26 = @"NO";
      if (v11)
      {
        v26 = @"YES";
      }

      v27 = v26;
      *buf = 134218498;
      v31 = a4;
      v32 = 2112;
      v33 = v25;
      v34 = 2114;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Will start navigation via IPC to route at index %lu (directions context:%@), with routePersistentData %{public}@", buf, 0x20u);
    }

    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:v10 context:v12];
    [(NMCNavigationProxy *)self _openOrCloseNavigationService];
    v28 = +[MapsCompanionDaemonIPCInterface sharedInterface];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100006AB8;
    v29[3] = &unk_100084EA8;
    v29[4] = self;
    [v28 startPreparedNavigation:v23 completion:v29];
  }

  else
  {
    v13 = sub_100053214();
    if (os_log_type_enabled(&v13->super.super, OS_LOG_TYPE_ERROR))
    {
      if (v12)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = v14;
      if (v10)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = v16;
      if (a4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = @"NO";
      }

      else
      {
        v18 = @"YES";
      }

      v19 = v18;
      if (v11)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = v20;
      *buf = 138544130;
      v31 = v15;
      v32 = 2114;
      v33 = v17;
      v34 = 2114;
      v35 = v19;
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&_mh_execute_header, &v13->super.super, OS_LOG_TYPE_ERROR, "Missing vital info for starting navigation, got routeContext:%{public}@ + (routeID:%{public}@ || routeIndex:%{public}@ || routePersistentData: %{public}@)", buf, 0x2Au);
    }
  }
}

- (void)startNavigationWithDetails:(id)a3
{
  v4 = a3;
  if ([(NMCNavigationProxy *)self _prepareToStartNavigationWithStartDetails:v4])
  {
    v5 = +[MNNavigationService sharedService];
    v9 = 0;
    v6 = [v5 startNavigationWithDetails:v4 error:&v9];
    v7 = v9;

    if (v6)
    {
      [(NMCNavigationProxy *)self _launchMapsForNavigation];
    }

    else
    {
      v8 = sub_100053214();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to start navigation: %@", buf, 0xCu);
      }

      [(NMCNavigationProxy *)self _cleanupNavigation];
    }
  }
}

- (BOOL)_prepareToStartNavigationWithStartDetails:(id)a3
{
  v4 = a3;
  [(NMCNavigationProxy *)self _openOrCloseNavigationService];
  v5 = +[MNNavigationService sharedService];
  v6 = [v5 isOpenForClient:self];

  if (v6)
  {
    v7 = +[GEOCompanionRouteContext context];
    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:0 context:v7];
    v8 = [v4 routes];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "selectedRouteIndex")}];

    v10 = [v9 transportType] - 1;
    if (v10 > 5)
    {
      v11 = 1;
    }

    else
    {
      v11 = qword_100065908[v10];
    }

    [(NavigationSettingsMonitor *)self->_settingsMonitor setTransportType:v11];
    [v4 setGuidanceLevelOverride:0];
    v12 = sub_100053214();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 simpleDescription];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will start navigation (context:%@)", &v15, 0xCu);
    }
  }

  else
  {
    v7 = sub_100053214();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will not start navigation, service not open for us", &v15, 2u);
    }
  }

  return v6;
}

- (void)_launchMapsForNavigation
{
  v2 = sub_100053214();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will launch Maps to show navigation", v4, 2u);
  }

  v3 = +[MapsCompanionDaemonIPCInterface sharedInterface];
  [v3 performWithMapsRunning:&stru_100084EE8];
}

- (void)pauseNavigation
{
  v2 = sub_100053214();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will pause navigation", v5, 2u);
  }

  v3 = +[MNNavigationService sharedService];
  [v3 stopNavigationWithReason:3];

  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:11028 onTarget:1225 eventValue:0];
}

- (void)resumeNavigation
{
  v2 = sub_100053214();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will resume navigation", v5, 2u);
  }

  v3 = +[MNNavigationService sharedService];
  [v3 advanceToNextLeg];

  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:11029 onTarget:1225 eventValue:0];
}

- (void)stopNavigation
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 isInNavigatingState];

  if (v4)
  {
    v5 = +[MNNavigationService sharedService];
    v6 = [v5 navigationTransportType] - 1;
    if (v6 > 5)
    {
      v7 = 1;
    }

    else
    {
      v7 = qword_100065908[v6];
    }

    v8 = +[MNNavigationService sharedService];
    [v8 stopNavigationWithReason:2];

    v9 = [(NMCNavigationProxy *)self currentUITargetForAnalytics:v7];
    v10 = +[MKMapService sharedService];
    [v10 captureUserAction:344 onTarget:v9 eventValue:0];
  }

  [(NMCNavigationProxy *)self _cleanupNavigation];
}

- (int)currentUITargetForAnalytics:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_100065938[a3 - 1];
  }
}

- (void)closeNavigationService
{
  v3 = sub_100053434();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "SIGTERM received. Closing navigation service.", v5, 2u);
  }

  v4 = +[MNNavigationService sharedService];
  [v4 closeForClient:self];
}

- (void)_registerMessageObservers
{
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007738;
  v16[3] = &unk_100084F38;
  objc_copyWeak(&v17, &location);
  v3 = objc_retainBlock(v16);
  v4 = +[NMCGizmoConnection sharedInstance];
  [v4 addConnectionObserver:self];

  v5 = objc_alloc_init(NMMessageQueue);
  [(NMMessageQueue *)v5 setMaximumInFlightMessagesCount:GEOConfigGetUInteger()];
  [(NMMessageQueue *)v5 setMaximumPendingMessages:GEOConfigGetUInteger() forMessageType:300];
  [(NMMessageQueue *)v5 setMaximumPendingMessages:GEOConfigGetUInteger() forMessageType:301];
  [(NMMessageQueue *)v5 setMaximumPendingMessages:GEOConfigGetUInteger() forMessageType:311];
  v6 = +[NMCGizmoConnection sharedInstance];
  [v6 setMessageQueue:v5 forType:300];

  v7 = +[NMCGizmoConnection sharedInstance];
  [v7 setMessageQueue:v5 forType:301];

  v8 = +[NMCGizmoConnection sharedInstance];
  [v8 setMessageQueue:v5 forType:311];

  v9 = +[NMCGizmoConnection sharedInstance];
  v10 = [v9 addMessageObserverForType:306 callback:v3];
  v11 = [v9 addMessageObserverForType:310 callback:v3];
  v12 = [v9 addMessageObserverForType:1000 callback:v3];
  v13 = [v9 addMessageObserverForType:315 callback:v3];
  v14 = sub_100053214();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Navigation proxy now listening for IDS messages", v15, 2u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_handleMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 > 314)
  {
    if (v5 == 315)
    {
      v36 = [v4 argumentForTag:418];
      v6 = v36;
      if (v36)
      {
        v37 = [v36 intValue];
      }

      else
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v41 = +[MNNavigationService sharedService];
      v42 = [v41 displayedStepIndex];

      v43 = sub_100053214();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Gizmo sent displayedStepIndex: %lu, we had %lu", buf, 0x16u);
      }

      if (v37 == v42)
      {
        goto LABEL_56;
      }

      v7 = +[MNNavigationService sharedService];
      [(NMReply *)v7 setDisplayedStepIndex:v37];
LABEL_55:

LABEL_56:
      goto LABEL_57;
    }

    if (v5 != 1000)
    {
      goto LABEL_57;
    }

    v19 = [v4 argumentForTag:1000];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      [(NSLock *)self->_routeLock lock];
      if (self->_companionRouteStatus)
      {
        v6 = 0;
      }

      else
      {
        v87 = NSLocalizedDescriptionKey;
        v88 = NSLocalizedFailureReasonErrorKey;
        *buf = @"Navigation is not running";
        *&buf[8] = @"Navigation is not running";
        v44 = [NSDictionary dictionaryWithObjects:buf forKeys:&v87 count:2];
        v6 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:2 userInfo:v44];
      }

      [(NSLock *)self->_routeLock unlock];
      v45 = +[MNNavigationService sharedService];
      v46 = [v45 isInNavigatingState];

      if ((v46 & 1) == 0)
      {
        v87 = NSLocalizedDescriptionKey;
        v88 = NSLocalizedFailureReasonErrorKey;
        *buf = @"Maps is not running";
        *&buf[8] = @"Maps is not running";
        v47 = [NSDictionary dictionaryWithObjects:buf forKeys:&v87 count:2];
        v48 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:1 userInfo:v47];

        v6 = v48;
      }

      v7 = objc_alloc_init(NMReply);
      if (v6)
      {
        v49 = [[NMArgument alloc] _nm_initWithErrorValue:v6 tag:3];
        [(NMReply *)v7 addArgument:v49];
        v50 = sub_100053214();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Gizmo pinged us and we discovered an error: %@", buf, 0xCu);
        }

LABEL_50:

        v51 = +[NMCGizmoConnection sharedInstance];
        [v51 sendReply:v7 forMessage:v4 options:0];

        goto LABEL_55;
      }
    }

    else
    {
      v7 = objc_alloc_init(NMReply);
    }

    v49 = objc_alloc_init(NMArgument);
    [(NMArgument *)v49 setTag:1];
    [(NMReply *)v7 addArgument:v49];
    v50 = sub_100053214();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Gizmo pinged us and nothing is wrong, just ack", buf, 2u);
    }

    v6 = 0;
    goto LABEL_50;
  }

  if (v5 == 306)
  {
    v21 = [v4 argumentForTag:5];
    v6 = v21;
    if (!v21 || ([v21 hasBoolValue] & 1) == 0)
    {
      v7 = sub_100053214();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES message has no flag argument, ignoring", buf, 2u);
      }

      goto LABEL_55;
    }

    v22 = [v6 BOOLValue];
    self->_sendAllUpdates = v22;
    if (!v22)
    {
      v27 = v6;
LABEL_83:
      v64 = +[MNNavigationService sharedService];
      v65 = [v64 isOpenForClient:self];

      if (v65)
      {
        sendAllUpdates = self->_sendAllUpdates;
        v67 = sub_100053214();
        v68 = os_log_type_enabled(v67, OS_LOG_TYPE_INFO);
        if (sendAllUpdates)
        {
          if (v68)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Resuming real-time updates", buf, 2u);
          }

          v69 = +[MNNavigationService sharedService];
          [v69 resumeRealtimeUpdates];
        }

        else
        {
          if (v68)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Pausing real-time updates", buf, 2u);
          }

          v69 = +[MNNavigationService sharedService];
          [v69 pauseRealtimeUpdates];
        }
      }

      v70 = +[MNNavigationService sharedService];
      v71 = [v70 isOpenForClient:self];

      if (v71)
      {
        v72 = self->_sendAllUpdates;
        v73 = sub_100053214();
        v74 = os_log_type_enabled(v73, OS_LOG_TYPE_INFO);
        if (v72)
        {
          if (v74)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Resuming real-time updates", buf, 2u);
          }

          v75 = +[MNNavigationService sharedService];
          [v75 resumeRealtimeUpdates];
        }

        else
        {
          if (v74)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Pausing real-time updates", buf, 2u);
          }

          v75 = +[MNNavigationService sharedService];
          [v75 pauseRealtimeUpdates];
        }
      }

      v7 = objc_alloc_init(NMReply);
      v76 = objc_alloc_init(NMArgument);
      [(NMArgument *)v76 setTag:1];
      [(NMReply *)v7 addArgument:v76];
      v77 = +[NMCGizmoConnection sharedInstance];
      [v77 sendReply:v7 forMessage:v4 options:0];

      v6 = v27;
      goto LABEL_55;
    }

    [(NSLock *)self->_routeLock lock];
    v7 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
    v23 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus copy];
    v24 = [(GEOCompanionRouteContext *)self->_companionRouteContext copy];
    [(NSLock *)self->_routeLock unlock];
    v25 = +[NMCGizmoConnection sharedInstance];
    v26 = [v25 supportsTransportType:{-[NMReply transportType](v7, "transportType")}];

    if ((v26 & 1) == 0)
    {
      v54 = sub_100053214();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = [(NMReply *)v7 transportType];
        if (v55 >= 7)
        {
          v56 = [NSString stringWithFormat:@"(unknown: %i)", v55];
        }

        else
        {
          v56 = off_100084F80[v55];
        }

        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES YES, gizmo does not support transport type: %@, bailing", buf, 0xCu);
      }

      goto LABEL_55;
    }

    v27 = [v4 argumentForTag:401];

    if (!v27)
    {
      goto LABEL_26;
    }

    v28 = [v27 dataValue];
    v29 = v28;
    if (v7)
    {
      v30 = [(NMReply *)v7 routeID];
      v31 = [v30 isEqualToData:v29];

      v32 = sub_100053214();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = @"YES";
        if (v31)
        {
          v33 = @"NO";
        }

        v78 = v33;
        [(NMReply *)v7 routeID];
        v34 = v80 = v29;
        v35 = [v24 simpleDescription];
        *buf = 138413058;
        *&buf[4] = v80;
        *&buf[12] = 2112;
        *&buf[14] = v78;
        v83 = 2112;
        v84 = v34;
        v85 = 2112;
        v86 = v35;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES YES (routeID:%@), shouldSendRoute:%@ with lastRouteDetails:%@ (context:%@)", buf, 0x2Au);

        v29 = v80;
      }

      if (v31)
      {
LABEL_26:
        if (v23)
        {
          [(NMCNavigationProxy *)self _sendRouteStatus:v23 routeContext:v24];
        }

LABEL_82:

        goto LABEL_83;
      }
    }

    else
    {
      v57 = [v28 length];
      v58 = sub_100053214();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = @"YES";
        if (!v57)
        {
          v59 = @"NO";
        }

        v79 = v57;
        v81 = v59;
        if (v23)
        {
          v60 = [v23 feedbackType];
          if (v60 >= 0xB)
          {
            v61 = [NSString stringWithFormat:@"(unknown: %i)", v60];
          }

          else
          {
            v61 = off_100084FB8[v60];
          }
        }

        else
        {
          v61 = 0;
        }

        v62 = [v24 simpleDescription];
        *buf = 138413058;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v81;
        v83 = 2112;
        v84 = v61;
        v85 = 2112;
        v86 = v62;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES YES (routeID:%@), shouldSendRoute:%@ with lastRouteStatus:%@ (context:%@)", buf, 0x2Au);

        if (v23)
        {
        }

        v57 = v79;
      }

      if (!v57)
      {
        goto LABEL_26;
      }
    }

    if (![v23 feedbackType] && !v24)
    {
      v24 = +[GEOCompanionRouteContext context];
      v63 = sub_100053214();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Created override context to force NanoMaps to stop navigating!", buf, 2u);
      }
    }

    [(NMCNavigationProxy *)self _sendRouteDetails:v7 routeStatus:v23 routeContext:v24 forced:1];
    goto LABEL_82;
  }

  if (v5 == 310)
  {
    [(NSLock *)self->_routeLock lock];
    v6 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
    v7 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus copy];
    v8 = [(GEOCompanionRouteContext *)self->_companionRouteContext copy];
    [(NSLock *)self->_routeLock unlock];
    v9 = objc_alloc_init(NMReply);
    v10 = sub_100053214();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v6 && v7 && v8)
    {
      if (v11)
      {
        v12 = [v6 routeID];
        v13 = [v8 simpleDescription];
        *buf = 138412546;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Gizmo has asked for a full navigation update, send latest status for route %@ (context:%@)", buf, 0x16u);
      }

      v10 = objc_alloc_init(NMArgument);
      [v10 setTag:401];
      v14 = [v6 data];
      [v10 setDataValue:v14];

      [(NMReply *)v9 addArgument:v10 withCompressionType:1];
      v15 = objc_alloc_init(NMArgument);
      [(NMArgument *)v15 setTag:402];
      v16 = [(NMReply *)v7 data];
      [(NMArgument *)v15 setDataValue:v16];

      [(NMReply *)v9 addArgument:v15];
      v17 = objc_alloc_init(NMArgument);
      [(NMArgument *)v17 setTag:406];
      v18 = [v8 data];
      [(NMArgument *)v17 setDataValue:v18];

      [(NMReply *)v9 addArgument:v17];
    }

    else if (v11)
    {
      v38 = [v6 routeID];
      v39 = [(NMReply *)v7 feedbackType];
      if (v39 >= 0xB)
      {
        v40 = [NSString stringWithFormat:@"(unknown: %i)", v39];
      }

      else
      {
        v40 = off_100084FB8[v39];
      }

      v52 = [v8 simpleDescription];
      *buf = 138412802;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = v40;
      v83 = 2112;
      v84 = v52;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Gizmo has asked for a full navigation update, but we don't have anything to send it, just ack (details:%@, status:%@, context:%@)", buf, 0x20u);
    }

    v53 = +[NMCGizmoConnection sharedInstance];
    [v53 sendReply:v9 forMessage:v4 options:0];

    goto LABEL_55;
  }

LABEL_57:
}

- (void)_updateForActiveDevice
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 getActivePairedDevice];

  v5 = [[NSUUID alloc] initWithUUIDString:@"CB81F0AE-3F2F-4D57-8C90-F0D1A4ADD373"];
  self->_activeDeviceSupportsNavigation = [v4 supportsCapability:v5];

  v6 = [[NSUUID alloc] initWithUUIDString:@"5C068089-C478-48CE-892A-13DBA45BE33A"];
  self->_activeDeviceNeedsUnpackedPointsRemoved = [v4 supportsCapability:v6] ^ 1;

  v7 = sub_100053214();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (self->_activeDeviceSupportsNavigation)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    if (self->_activeDeviceNeedsUnpackedPointsRemoved)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Device supports navigation: %@. Requires unpackedLatLng removal: %@", &v12, 0x16u);
  }
}

- (void)_openOrCloseNavigationService
{
  v3 = +[NMCGizmoConnection sharedInstance];
  v4 = [v3 isNearbyAndUsable];

  v5 = +[MNNavigationService sharedService];
  v6 = [v5 isOpenForClient:self];

  if (!v4 || (v6 & 1) != 0)
  {
    if (v4 & 1 | ((v6 & 1) == 0))
    {
      return;
    }

    v12 = sub_100053214();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Closing navigation service; watch not nearby", v14, 2u);
    }

    v13 = +[MNNavigationService sharedService];
    [v13 pauseRealtimeUpdates];

    v11 = +[MNNavigationService sharedService];
    [v11 closeForClient:self];
  }

  else
  {
    v7 = sub_100053214();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Opening navigation service; watch nearby", buf, 2u);
    }

    v8 = +[MNNavigationService sharedService];
    [v8 openForClient:self];

    sendAllUpdates = self->_sendAllUpdates;
    v10 = +[MNNavigationService sharedService];
    v11 = v10;
    if (sendAllUpdates)
    {
      [v10 resumeRealtimeUpdates];
    }

    else
    {
      [v10 pauseRealtimeUpdates];
    }
  }
}

- (void)updateNavigationRouteWithUpdate:(id)a3
{
  v8 = a3;
  [(NSLock *)self->_routeLock lock];
  objc_storeStrong(&self->_companionRouteUpdate, a3);
  v5 = self->_companionRouteContext;
  sendAllUpdates = self->_sendAllUpdates;
  [(NSLock *)self->_routeLock unlock];
  if (v5)
  {
    v7 = !sendAllUpdates;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(NMCNavigationProxy *)self _sendRouteUpdate:v8 routeContext:v5];
  }
}

- (void)_updateNavigationRouteDetails:(id)a3 routeStatus:(id)a4 routeUpdated:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [v10 isNavigating];
  v12 = v11;
  if (v11)
  {
    v13 = [v10 routeID];
    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:v13 context:0];
  }

  [(NSLock *)self->_routeLock lock];
  if (v5)
  {
    if (self->_activeDeviceNeedsUnpackedPointsRemoved)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v9;
      v14 = [v9 response];
      v15 = [v14 routes];

      v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v23 + 1) + 8 * i) setUnpackedLatLngVertices:0];
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      v9 = v22;
    }

    objc_storeStrong(&self->_companionRouteDetails, a3);
  }

  objc_storeStrong(&self->_companionRouteStatus, a4);
  v20 = [(GEOCompanionRouteStatus *)self->_lastSentCompanionRouteStatus copy];
  v21 = self->_companionRouteContext;
  [(NSLock *)self->_routeLock unlock];
  if (v5)
  {
    [(NMCNavigationProxy *)self _sendRouteDetails:v9 routeStatus:v10 routeContext:v21 forced:0];
  }

  else if ([(NMCNavigationProxy *)self _shouldSendRouteStatus:v10 previousRouteStatus:v20])
  {
    [(NMCNavigationProxy *)self _sendRouteStatus:v10 routeContext:v21];
  }

  if ((v12 & 1) == 0)
  {
    [(NMCNavigationProxy *)self _cleanupNavigation];
  }
}

- (void)_setupForNavigationWithRouteID:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSLock *)self->_routeLock lock];
  if (self->_isNavigating)
  {
    goto LABEL_13;
  }

  self->_isNavigating = 1;
  if (v7)
  {
    objc_storeStrong(&self->_companionRouteContext, a4);
    v8 = sub_100053214();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v9 = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v15 = 138412290;
    *&v15[4] = v9;
    v10 = "Navigating with provided context %@";
  }

  else if (self->_companionRouteContext)
  {
    v8 = sub_100053214();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v9 = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v15 = 138412290;
    *&v15[4] = v9;
    v10 = "Navigating with context %@";
  }

  else
  {
    v11 = +[GEOCompanionRouteContext context];
    companionRouteContext = self->_companionRouteContext;
    self->_companionRouteContext = v11;

    v8 = sub_100053214();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v9 = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v15 = 138412290;
    *&v15[4] = v9;
    v10 = "Creating context for navigation %@";
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v10, v15, 0xCu);

LABEL_11:
  if (!self->_companionRouteStatus)
  {
    v13 = objc_alloc_init(GEOCompanionRouteStatus);
    companionRouteStatus = self->_companionRouteStatus;
    self->_companionRouteStatus = v13;

    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setFeedbackType:1];
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setRouteID:v6];
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setStepID:0];
  }

LABEL_13:
  [(NSLock *)self->_routeLock unlock];
}

- (void)_cleanupNavigation
{
  [(NSLock *)self->_routeLock lock];
  if (self->_isNavigating)
  {
    v3 = sub_100053214();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Did stop navigating", v8, 2u);
    }

    self->_isNavigating = 0;
    companionRouteContext = self->_companionRouteContext;
    self->_companionRouteContext = 0;

    companionRouteStatus = self->_companionRouteStatus;
    self->_companionRouteStatus = 0;

    companionRouteUpdate = self->_companionRouteUpdate;
    self->_companionRouteUpdate = 0;

    [(NSLock *)self->_routeLock unlock];
  }

  else
  {
    routeLock = self->_routeLock;

    [(NSLock *)routeLock unlock];
  }
}

- (void)_sendRouteDetails:(id)a3 routeStatus:(id)a4 routeContext:(id)a5 forced:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NMCGizmoConnection sharedInstance];
  v14 = [v13 supportsTransportType:{objc_msgSend(v10, "transportType")}];

  if (v14)
  {
    v32 = v6;
    if (!self->_activeDeviceSupportsNavigation)
    {
      v15 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
      [v15 setRequest:0];
      [v15 setResponse:0];

      v10 = v15;
    }

    v16 = +[NMCGizmoConnection sharedInstance];
    v17 = [v16 protocolVersion];

    v31 = [v10 instanceCompatibleWithProtocolVersion:v17];
    v18 = objc_alloc_init(NMMessage);
    [(NMMessage *)v18 setType:300];
    v19 = objc_alloc_init(NMArgument);
    [(NMArgument *)v19 setTag:401];
    v20 = [v31 data];
    [(NMArgument *)v19 setDataValue:v20];

    [(NMMessage *)v18 addArgument:v19];
    v21 = [v11 instanceCompatibleWithProtocolVersion:v17];
    v22 = objc_alloc_init(NMArgument);

    [(NMArgument *)v22 setTag:402];
    v23 = [v21 data];
    [(NMArgument *)v22 setDataValue:v23];

    [(NMMessage *)v18 addArgument:v22];
    v24 = objc_alloc_init(NMArgument);

    [(NMArgument *)v24 setTag:406];
    v25 = [v12 data];
    [(NMArgument *)v24 setDataValue:v25];

    [(NMMessage *)v18 addArgument:v24];
    v26 = +[NMCGizmoConnection sharedInstance];
    v33 = @"NMSendMessageOptionSendImmediately";
    v27 = [NSNumber numberWithBool:v32];
    v34 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v26 sendMessage:v18 options:v28];

    [(NSLock *)self->_routeLock lock];
    v29 = [v11 copy];
    lastSentCompanionRouteStatus = self->_lastSentCompanionRouteStatus;
    self->_lastSentCompanionRouteStatus = v29;

    [(NSLock *)self->_routeLock unlock];
  }
}

- (void)_sendRouteStatus:(id)a3 routeContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v17 = objc_alloc_init(NMMessage);
  [(NMMessage *)v17 setType:301];
  v8 = +[NMCGizmoConnection sharedInstance];
  v9 = [v7 instanceCompatibleWithProtocolVersion:{objc_msgSend(v8, "protocolVersion")}];

  v10 = objc_alloc_init(NMArgument);
  [(NMArgument *)v10 setTag:402];
  v11 = [v9 data];
  [(NMArgument *)v10 setDataValue:v11];

  [(NMMessage *)v17 addArgument:v10];
  v12 = objc_alloc_init(NMArgument);
  [(NMArgument *)v12 setTag:406];
  v13 = [v6 data];

  [(NMArgument *)v12 setDataValue:v13];
  [(NMMessage *)v17 addArgument:v12];
  v14 = +[NMCGizmoConnection sharedInstance];
  [v14 sendMessage:v17 options:0];

  [(NSLock *)self->_routeLock lock];
  v15 = [v7 copy];

  lastSentCompanionRouteStatus = self->_lastSentCompanionRouteStatus;
  self->_lastSentCompanionRouteStatus = v15;

  [(NSLock *)self->_routeLock unlock];
}

- (BOOL)_shouldSendRouteStatus:(id)a3 previousRouteStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSLock *)self->_routeLock lock];
  v8 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
  [(NSLock *)self->_routeLock unlock];
  v9 = +[NMCGizmoConnection sharedInstance];
  v10 = [v9 supportsTransportType:{objc_msgSend(v8, "transportType")}];

  if (v10)
  {
    v11 = [v7 remainingTime];
    v12 = [v6 remainingTime];
    if (!self->_sendAllUpdates)
    {
      v13 = v12;
      v14 = [v7 feedbackType];
      if (v14 == [v6 feedbackType])
      {
        v15 = [v7 hapticsType];
        if (v15 == [v6 hapticsType])
        {
          v16 = [v7 isConnectedToCarplay];
          if (v16 == [v6 isConnectedToCarplay])
          {
            v17 = [v7 guidancePromptsEnabled];
            if (v17 == [v6 guidancePromptsEnabled])
            {
              v18 = [v7 lowGuidanceNavigation];
              if (v18 == [v6 lowGuidanceNavigation])
              {
                v19 = [v7 displayedStepID];
                if (v19 == [v6 displayedStepID])
                {
                  v20 = [v7 effectiveStepIDInRoute:v8];
                  if (v20 == [v6 effectiveStepIDInRoute:v8])
                  {
                    v21 = [v7 selectedRideIndices];
                    v22 = [v6 selectedRideIndices];
                    v23 = v21;
                    v24 = v22;
                    v25 = v24;
                    if (v23 | v24)
                    {
                      if (!v23 || !v24)
                      {

                        v34 = 1;
                        v28 = v23;
LABEL_25:

                        goto LABEL_26;
                      }

                      v36 = [v23 isEqualToArray:v24];

                      if (!v36)
                      {
                        v34 = 1;
LABEL_26:

                        goto LABEL_18;
                      }
                    }

                    v26 = vcvtpd_s64_f64(v11 / 30.0);
                    v27 = vcvtpd_s64_f64(v13 / 30.0);
                    v28 = [v6 alightMessage];
                    if (v28)
                    {
                      v38 = [v6 alightMessage];
                      v29 = [v38 identifier];
                      v30 = [v7 alightMessage];
                      [v30 identifier];
                      v37 = v27;
                      v32 = v31 = v26;
                      v33 = [v29 isEqual:v32] ^ 1;
                      if (v31 == v37)
                      {
                        v34 = v33;
                      }

                      else
                      {
                        v34 = 1;
                      }
                    }

                    else
                    {
                      v34 = v26 != v27;
                    }

                    goto LABEL_25;
                  }
                }
              }
            }
          }
        }
      }
    }

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

LABEL_18:

  return v34;
}

- (void)_sendRouteUpdate:(id)a3 routeContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v12 = objc_alloc_init(NMMessage);
  [(NMMessage *)v12 setType:311];
  v7 = objc_alloc_init(NMArgument);
  [(NMArgument *)v7 setTag:412];
  v8 = [v6 data];

  [(NMArgument *)v7 setDataValue:v8];
  [(NMMessage *)v12 addArgument:v7];
  v9 = objc_alloc_init(NMArgument);
  [(NMArgument *)v9 setTag:406];
  v10 = [v5 data];

  [(NMArgument *)v9 setDataValue:v10];
  [(NMMessage *)v12 addArgument:v9];
  v11 = +[NMCGizmoConnection sharedInstance];
  [v11 sendMessage:v12 options:0];
}

- (void)_legacy_sendPreviewRouteDetails:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [GEOCompanionRouteStatus alloc];
    v9 = [v6 routeID];
    v10 = [v8 initWithRouteID:v9];

    v11 = +[NSDate date];
    [v11 timeIntervalSinceReferenceDate];
    [v10 setTimestamp:?];

    [v10 setFeedbackType:8];
    [v10 setRemainingTime:{objc_msgSend(v6, "originalDuration")}];
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_100053214();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v7 simpleDescription];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "(Legacy) Will send preview route details/status to gizmo (context:%@)", &v14, 0xCu);
  }

  [(NMCNavigationProxy *)self _sendRouteDetails:v6 routeStatus:v10 routeContext:v7 forced:0];
}

- (BOOL)_isCarPlayConnected
{
  v2 = [(CARSessionStatus *)self->_carSessionStatus currentSession];
  v3 = v2 != 0;

  return v3;
}

- (void)sessionDidConnect:(id)a3
{
  v4 = [(NMCNavigationProxy *)self _isCarPlayConnected];
  v5 = sub_100053214();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlay session did connect (connected:%i)", buf, 8u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009910;
  v6[3] = &unk_100084F60;
  v6[4] = self;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = [(NMCNavigationProxy *)self _isCarPlayConnected];
  v5 = sub_100053214();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlay session did disconnect (connected:%i)", buf, 8u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009A34;
  v6[3] = &unk_100084F60;
  v6[4] = self;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v6);
}

@end