@interface NMCNavigationProxy
+ (id)sharedInstance;
- (BOOL)_isCarPlayConnected;
- (BOOL)_prepareToStartNavigationWithStartDetails:(id)details;
- (BOOL)_shouldSendRouteStatus:(id)status previousRouteStatus:(id)routeStatus;
- (NMCNavigationProxy)init;
- (int)currentUITargetForAnalytics:(int64_t)analytics;
- (void)_cleanupNavigation;
- (void)_handleMessage:(id)message;
- (void)_launchMapsForNavigation;
- (void)_legacy_sendPreviewRouteDetails:(id)details context:(id)context;
- (void)_openOrCloseNavigationService;
- (void)_registerMessageObservers;
- (void)_sendRouteDetails:(id)details routeStatus:(id)status routeContext:(id)context forced:(BOOL)forced;
- (void)_sendRouteStatus:(id)status routeContext:(id)context;
- (void)_sendRouteUpdate:(id)update routeContext:(id)context;
- (void)_setupForNavigationWithRouteID:(id)d context:(id)context;
- (void)_updateForActiveDevice;
- (void)_updateNavigationRouteDetails:(id)details routeStatus:(id)status routeUpdated:(BOOL)updated;
- (void)closeNavigationService;
- (void)dealloc;
- (void)pauseNavigation;
- (void)resumeNavigation;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startNavigationWithDetails:(id)details;
- (void)startNavigationWithRouteID:(id)d routeIndex:(unint64_t)index routePersistentData:(id)data companionRouteContext:(id)context;
- (void)stopNavigation;
- (void)updateNavigationRouteWithUpdate:(id)update;
@end

@implementation NMCNavigationProxy

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000653C;
  block[3] = &unk_100084E80;
  block[4] = self;
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

- (void)startNavigationWithRouteID:(id)d routeIndex:(unint64_t)index routePersistentData:(id)data companionRouteContext:(id)context
{
  dCopy = d;
  dataCopy = data;
  contextCopy = context;
  if (contextCopy && (dCopy || index != 0x7FFFFFFFFFFFFFFFLL || dataCopy))
  {
    [(NSLock *)self->_routeLock lock];
    objc_storeStrong(&self->_companionRouteContext, context);
    [(NSLock *)self->_routeLock unlock];
    v13 = objc_alloc_init(IPCLoadDirectionsMessage);
    -[IPCLoadDirectionsMessage setOriginIsWatch:](v13, "setOriginIsWatch:", [contextCopy origin] == 1);
    data = [contextCopy data];
    [(IPCLoadDirectionsMessage *)v13 setRouteContextData:data];

    [(IPCLoadDirectionsMessage *)v13 setRoutePersistentData:dataCopy];
    v23 = [IPCStartNavigationMessage startNavigationMessageWithLoadDirectionsMessage:v13];
    [v23 setOriginIsWatch:1];
    [v23 setRouteIndex:index];
    [v23 setRouteID:dCopy];
    v24 = sub_100053214();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [contextCopy simpleDescription];
      v26 = @"NO";
      if (dataCopy)
      {
        v26 = @"YES";
      }

      v27 = v26;
      *buf = 134218498;
      indexCopy = index;
      v32 = 2112;
      v33 = simpleDescription;
      v34 = 2114;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Will start navigation via IPC to route at index %lu (directions context:%@), with routePersistentData %{public}@", buf, 0x20u);
    }

    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:dCopy context:contextCopy];
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
      if (contextCopy)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = v14;
      if (dCopy)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = v16;
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = @"NO";
      }

      else
      {
        v18 = @"YES";
      }

      v19 = v18;
      if (dataCopy)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = v20;
      *buf = 138544130;
      indexCopy = v15;
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

- (void)startNavigationWithDetails:(id)details
{
  detailsCopy = details;
  if ([(NMCNavigationProxy *)self _prepareToStartNavigationWithStartDetails:detailsCopy])
  {
    v5 = +[MNNavigationService sharedService];
    v9 = 0;
    v6 = [v5 startNavigationWithDetails:detailsCopy error:&v9];
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

- (BOOL)_prepareToStartNavigationWithStartDetails:(id)details
{
  detailsCopy = details;
  [(NMCNavigationProxy *)self _openOrCloseNavigationService];
  v5 = +[MNNavigationService sharedService];
  v6 = [v5 isOpenForClient:self];

  if (v6)
  {
    v7 = +[GEOCompanionRouteContext context];
    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:0 context:v7];
    routes = [detailsCopy routes];
    v9 = [routes objectAtIndexedSubscript:{objc_msgSend(detailsCopy, "selectedRouteIndex")}];

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
    [detailsCopy setGuidanceLevelOverride:0];
    v12 = sub_100053214();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [v7 simpleDescription];
      v15 = 138412290;
      v16 = simpleDescription;
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
  isInNavigatingState = [v3 isInNavigatingState];

  if (isInNavigatingState)
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

- (int)currentUITargetForAnalytics:(int64_t)analytics
{
  if ((analytics - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_100065938[analytics - 1];
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

- (void)_handleMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  if (type > 314)
  {
    if (type == 315)
    {
      v36 = [messageCopy argumentForTag:418];
      v6 = v36;
      if (v36)
      {
        intValue = [v36 intValue];
      }

      else
      {
        intValue = 0x7FFFFFFFFFFFFFFFLL;
      }

      v41 = +[MNNavigationService sharedService];
      displayedStepIndex = [v41 displayedStepIndex];

      v43 = sub_100053214();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = intValue;
        *&buf[12] = 2048;
        *&buf[14] = displayedStepIndex;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Gizmo sent displayedStepIndex: %lu, we had %lu", buf, 0x16u);
      }

      if (intValue == displayedStepIndex)
      {
        goto LABEL_56;
      }

      v7 = +[MNNavigationService sharedService];
      [(NMReply *)v7 setDisplayedStepIndex:intValue];
LABEL_55:

LABEL_56:
      goto LABEL_57;
    }

    if (type != 1000)
    {
      goto LABEL_57;
    }

    v19 = [messageCopy argumentForTag:1000];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
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
      isInNavigatingState = [v45 isInNavigatingState];

      if ((isInNavigatingState & 1) == 0)
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
        [v51 sendReply:v7 forMessage:messageCopy options:0];

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

  if (type == 306)
  {
    v21 = [messageCopy argumentForTag:5];
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

    bOOLValue2 = [v6 BOOLValue];
    self->_sendAllUpdates = bOOLValue2;
    if (!bOOLValue2)
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
      [v77 sendReply:v7 forMessage:messageCopy options:0];

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
        transportType = [(NMReply *)v7 transportType];
        if (transportType >= 7)
        {
          v56 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
        }

        else
        {
          v56 = off_100084F80[transportType];
        }

        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES YES, gizmo does not support transport type: %@, bailing", buf, 0xCu);
      }

      goto LABEL_55;
    }

    v27 = [messageCopy argumentForTag:401];

    if (!v27)
    {
      goto LABEL_26;
    }

    dataValue = [v27 dataValue];
    v29 = dataValue;
    if (v7)
    {
      routeID = [(NMReply *)v7 routeID];
      v31 = [routeID isEqualToData:v29];

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
        simpleDescription = [v24 simpleDescription];
        *buf = 138413058;
        *&buf[4] = v80;
        *&buf[12] = 2112;
        *&buf[14] = v78;
        v83 = 2112;
        v84 = v34;
        v85 = 2112;
        v86 = simpleDescription;
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
      v57 = [dataValue length];
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
          feedbackType = [v23 feedbackType];
          if (feedbackType >= 0xB)
          {
            v61 = [NSString stringWithFormat:@"(unknown: %i)", feedbackType];
          }

          else
          {
            v61 = off_100084FB8[feedbackType];
          }
        }

        else
        {
          v61 = 0;
        }

        simpleDescription2 = [v24 simpleDescription];
        *buf = 138413058;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v81;
        v83 = 2112;
        v84 = v61;
        v85 = 2112;
        v86 = simpleDescription2;
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

  if (type == 310)
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
        routeID2 = [v6 routeID];
        simpleDescription3 = [v8 simpleDescription];
        *buf = 138412546;
        *&buf[4] = routeID2;
        *&buf[12] = 2112;
        *&buf[14] = simpleDescription3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Gizmo has asked for a full navigation update, send latest status for route %@ (context:%@)", buf, 0x16u);
      }

      v10 = objc_alloc_init(NMArgument);
      [v10 setTag:401];
      data = [v6 data];
      [v10 setDataValue:data];

      [(NMReply *)v9 addArgument:v10 withCompressionType:1];
      v15 = objc_alloc_init(NMArgument);
      [(NMArgument *)v15 setTag:402];
      data2 = [(NMReply *)v7 data];
      [(NMArgument *)v15 setDataValue:data2];

      [(NMReply *)v9 addArgument:v15];
      v17 = objc_alloc_init(NMArgument);
      [(NMArgument *)v17 setTag:406];
      data3 = [v8 data];
      [(NMArgument *)v17 setDataValue:data3];

      [(NMReply *)v9 addArgument:v17];
    }

    else if (v11)
    {
      routeID3 = [v6 routeID];
      feedbackType2 = [(NMReply *)v7 feedbackType];
      if (feedbackType2 >= 0xB)
      {
        v40 = [NSString stringWithFormat:@"(unknown: %i)", feedbackType2];
      }

      else
      {
        v40 = off_100084FB8[feedbackType2];
      }

      simpleDescription4 = [v8 simpleDescription];
      *buf = 138412802;
      *&buf[4] = routeID3;
      *&buf[12] = 2112;
      *&buf[14] = v40;
      v83 = 2112;
      v84 = simpleDescription4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Gizmo has asked for a full navigation update, but we don't have anything to send it, just ack (details:%@, status:%@, context:%@)", buf, 0x20u);
    }

    v53 = +[NMCGizmoConnection sharedInstance];
    [v53 sendReply:v9 forMessage:messageCopy options:0];

    goto LABEL_55;
  }

LABEL_57:
}

- (void)_updateForActiveDevice
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v3 getActivePairedDevice];

  v5 = [[NSUUID alloc] initWithUUIDString:@"CB81F0AE-3F2F-4D57-8C90-F0D1A4ADD373"];
  self->_activeDeviceSupportsNavigation = [getActivePairedDevice supportsCapability:v5];

  v6 = [[NSUUID alloc] initWithUUIDString:@"5C068089-C478-48CE-892A-13DBA45BE33A"];
  self->_activeDeviceNeedsUnpackedPointsRemoved = [getActivePairedDevice supportsCapability:v6] ^ 1;

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
  isNearbyAndUsable = [v3 isNearbyAndUsable];

  v5 = +[MNNavigationService sharedService];
  v6 = [v5 isOpenForClient:self];

  if (!isNearbyAndUsable || (v6 & 1) != 0)
  {
    if (isNearbyAndUsable & 1 | ((v6 & 1) == 0))
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

- (void)updateNavigationRouteWithUpdate:(id)update
{
  updateCopy = update;
  [(NSLock *)self->_routeLock lock];
  objc_storeStrong(&self->_companionRouteUpdate, update);
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
    [(NMCNavigationProxy *)self _sendRouteUpdate:updateCopy routeContext:v5];
  }
}

- (void)_updateNavigationRouteDetails:(id)details routeStatus:(id)status routeUpdated:(BOOL)updated
{
  updatedCopy = updated;
  detailsCopy = details;
  statusCopy = status;
  isNavigating = [statusCopy isNavigating];
  v12 = isNavigating;
  if (isNavigating)
  {
    routeID = [statusCopy routeID];
    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:routeID context:0];
  }

  [(NSLock *)self->_routeLock lock];
  if (updatedCopy)
  {
    if (self->_activeDeviceNeedsUnpackedPointsRemoved)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = detailsCopy;
      response = [detailsCopy response];
      routes = [response routes];

      v16 = [routes countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(routes);
            }

            [*(*(&v23 + 1) + 8 * i) setUnpackedLatLngVertices:0];
          }

          v17 = [routes countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      detailsCopy = v22;
    }

    objc_storeStrong(&self->_companionRouteDetails, details);
  }

  objc_storeStrong(&self->_companionRouteStatus, status);
  v20 = [(GEOCompanionRouteStatus *)self->_lastSentCompanionRouteStatus copy];
  v21 = self->_companionRouteContext;
  [(NSLock *)self->_routeLock unlock];
  if (updatedCopy)
  {
    [(NMCNavigationProxy *)self _sendRouteDetails:detailsCopy routeStatus:statusCopy routeContext:v21 forced:0];
  }

  else if ([(NMCNavigationProxy *)self _shouldSendRouteStatus:statusCopy previousRouteStatus:v20])
  {
    [(NMCNavigationProxy *)self _sendRouteStatus:statusCopy routeContext:v21];
  }

  if ((v12 & 1) == 0)
  {
    [(NMCNavigationProxy *)self _cleanupNavigation];
  }
}

- (void)_setupForNavigationWithRouteID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  [(NSLock *)self->_routeLock lock];
  if (self->_isNavigating)
  {
    goto LABEL_13;
  }

  self->_isNavigating = 1;
  if (contextCopy)
  {
    objc_storeStrong(&self->_companionRouteContext, context);
    v8 = sub_100053214();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    simpleDescription = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v15 = 138412290;
    *&v15[4] = simpleDescription;
    v10 = "Navigating with provided context %@";
  }

  else if (self->_companionRouteContext)
  {
    v8 = sub_100053214();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    simpleDescription = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v15 = 138412290;
    *&v15[4] = simpleDescription;
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

    simpleDescription = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v15 = 138412290;
    *&v15[4] = simpleDescription;
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
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setRouteID:dCopy];
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

- (void)_sendRouteDetails:(id)details routeStatus:(id)status routeContext:(id)context forced:(BOOL)forced
{
  forcedCopy = forced;
  detailsCopy = details;
  statusCopy = status;
  contextCopy = context;
  v13 = +[NMCGizmoConnection sharedInstance];
  v14 = [v13 supportsTransportType:{objc_msgSend(detailsCopy, "transportType")}];

  if (v14)
  {
    v32 = forcedCopy;
    if (!self->_activeDeviceSupportsNavigation)
    {
      v15 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
      [v15 setRequest:0];
      [v15 setResponse:0];

      detailsCopy = v15;
    }

    v16 = +[NMCGizmoConnection sharedInstance];
    protocolVersion = [v16 protocolVersion];

    v31 = [detailsCopy instanceCompatibleWithProtocolVersion:protocolVersion];
    v18 = objc_alloc_init(NMMessage);
    [(NMMessage *)v18 setType:300];
    v19 = objc_alloc_init(NMArgument);
    [(NMArgument *)v19 setTag:401];
    data = [v31 data];
    [(NMArgument *)v19 setDataValue:data];

    [(NMMessage *)v18 addArgument:v19];
    v21 = [statusCopy instanceCompatibleWithProtocolVersion:protocolVersion];
    v22 = objc_alloc_init(NMArgument);

    [(NMArgument *)v22 setTag:402];
    data2 = [v21 data];
    [(NMArgument *)v22 setDataValue:data2];

    [(NMMessage *)v18 addArgument:v22];
    v24 = objc_alloc_init(NMArgument);

    [(NMArgument *)v24 setTag:406];
    data3 = [contextCopy data];
    [(NMArgument *)v24 setDataValue:data3];

    [(NMMessage *)v18 addArgument:v24];
    v26 = +[NMCGizmoConnection sharedInstance];
    v33 = @"NMSendMessageOptionSendImmediately";
    v27 = [NSNumber numberWithBool:v32];
    v34 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v26 sendMessage:v18 options:v28];

    [(NSLock *)self->_routeLock lock];
    v29 = [statusCopy copy];
    lastSentCompanionRouteStatus = self->_lastSentCompanionRouteStatus;
    self->_lastSentCompanionRouteStatus = v29;

    [(NSLock *)self->_routeLock unlock];
  }
}

- (void)_sendRouteStatus:(id)status routeContext:(id)context
{
  contextCopy = context;
  statusCopy = status;
  v17 = objc_alloc_init(NMMessage);
  [(NMMessage *)v17 setType:301];
  v8 = +[NMCGizmoConnection sharedInstance];
  v9 = [statusCopy instanceCompatibleWithProtocolVersion:{objc_msgSend(v8, "protocolVersion")}];

  v10 = objc_alloc_init(NMArgument);
  [(NMArgument *)v10 setTag:402];
  data = [v9 data];
  [(NMArgument *)v10 setDataValue:data];

  [(NMMessage *)v17 addArgument:v10];
  v12 = objc_alloc_init(NMArgument);
  [(NMArgument *)v12 setTag:406];
  data2 = [contextCopy data];

  [(NMArgument *)v12 setDataValue:data2];
  [(NMMessage *)v17 addArgument:v12];
  v14 = +[NMCGizmoConnection sharedInstance];
  [v14 sendMessage:v17 options:0];

  [(NSLock *)self->_routeLock lock];
  v15 = [statusCopy copy];

  lastSentCompanionRouteStatus = self->_lastSentCompanionRouteStatus;
  self->_lastSentCompanionRouteStatus = v15;

  [(NSLock *)self->_routeLock unlock];
}

- (BOOL)_shouldSendRouteStatus:(id)status previousRouteStatus:(id)routeStatus
{
  statusCopy = status;
  routeStatusCopy = routeStatus;
  [(NSLock *)self->_routeLock lock];
  v8 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
  [(NSLock *)self->_routeLock unlock];
  v9 = +[NMCGizmoConnection sharedInstance];
  v10 = [v9 supportsTransportType:{objc_msgSend(v8, "transportType")}];

  if (v10)
  {
    remainingTime = [routeStatusCopy remainingTime];
    remainingTime2 = [statusCopy remainingTime];
    if (!self->_sendAllUpdates)
    {
      v13 = remainingTime2;
      feedbackType = [routeStatusCopy feedbackType];
      if (feedbackType == [statusCopy feedbackType])
      {
        hapticsType = [routeStatusCopy hapticsType];
        if (hapticsType == [statusCopy hapticsType])
        {
          isConnectedToCarplay = [routeStatusCopy isConnectedToCarplay];
          if (isConnectedToCarplay == [statusCopy isConnectedToCarplay])
          {
            guidancePromptsEnabled = [routeStatusCopy guidancePromptsEnabled];
            if (guidancePromptsEnabled == [statusCopy guidancePromptsEnabled])
            {
              lowGuidanceNavigation = [routeStatusCopy lowGuidanceNavigation];
              if (lowGuidanceNavigation == [statusCopy lowGuidanceNavigation])
              {
                displayedStepID = [routeStatusCopy displayedStepID];
                if (displayedStepID == [statusCopy displayedStepID])
                {
                  v20 = [routeStatusCopy effectiveStepIDInRoute:v8];
                  if (v20 == [statusCopy effectiveStepIDInRoute:v8])
                  {
                    selectedRideIndices = [routeStatusCopy selectedRideIndices];
                    selectedRideIndices2 = [statusCopy selectedRideIndices];
                    v23 = selectedRideIndices;
                    v24 = selectedRideIndices2;
                    v25 = v24;
                    if (v23 | v24)
                    {
                      if (!v23 || !v24)
                      {

                        v34 = 1;
                        alightMessage = v23;
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

                    v26 = vcvtpd_s64_f64(remainingTime / 30.0);
                    v27 = vcvtpd_s64_f64(v13 / 30.0);
                    alightMessage = [statusCopy alightMessage];
                    if (alightMessage)
                    {
                      alightMessage2 = [statusCopy alightMessage];
                      identifier = [alightMessage2 identifier];
                      alightMessage3 = [routeStatusCopy alightMessage];
                      [alightMessage3 identifier];
                      v37 = v27;
                      v32 = v31 = v26;
                      v33 = [identifier isEqual:v32] ^ 1;
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

- (void)_sendRouteUpdate:(id)update routeContext:(id)context
{
  contextCopy = context;
  updateCopy = update;
  v12 = objc_alloc_init(NMMessage);
  [(NMMessage *)v12 setType:311];
  v7 = objc_alloc_init(NMArgument);
  [(NMArgument *)v7 setTag:412];
  data = [updateCopy data];

  [(NMArgument *)v7 setDataValue:data];
  [(NMMessage *)v12 addArgument:v7];
  v9 = objc_alloc_init(NMArgument);
  [(NMArgument *)v9 setTag:406];
  data2 = [contextCopy data];

  [(NMArgument *)v9 setDataValue:data2];
  [(NMMessage *)v12 addArgument:v9];
  v11 = +[NMCGizmoConnection sharedInstance];
  [v11 sendMessage:v12 options:0];
}

- (void)_legacy_sendPreviewRouteDetails:(id)details context:(id)context
{
  detailsCopy = details;
  contextCopy = context;
  if (detailsCopy)
  {
    v8 = [GEOCompanionRouteStatus alloc];
    routeID = [detailsCopy routeID];
    v10 = [v8 initWithRouteID:routeID];

    v11 = +[NSDate date];
    [v11 timeIntervalSinceReferenceDate];
    [v10 setTimestamp:?];

    [v10 setFeedbackType:8];
    [v10 setRemainingTime:{objc_msgSend(detailsCopy, "originalDuration")}];
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_100053214();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    simpleDescription = [contextCopy simpleDescription];
    v14 = 138412290;
    v15 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "(Legacy) Will send preview route details/status to gizmo (context:%@)", &v14, 0xCu);
  }

  [(NMCNavigationProxy *)self _sendRouteDetails:detailsCopy routeStatus:v10 routeContext:contextCopy forced:0];
}

- (BOOL)_isCarPlayConnected
{
  currentSession = [(CARSessionStatus *)self->_carSessionStatus currentSession];
  v3 = currentSession != 0;

  return v3;
}

- (void)sessionDidConnect:(id)connect
{
  _isCarPlayConnected = [(NMCNavigationProxy *)self _isCarPlayConnected];
  v5 = sub_100053214();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = _isCarPlayConnected;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlay session did connect (connected:%i)", buf, 8u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009910;
  v6[3] = &unk_100084F60;
  v6[4] = self;
  v7 = _isCarPlayConnected;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  _isCarPlayConnected = [(NMCNavigationProxy *)self _isCarPlayConnected];
  v5 = sub_100053214();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = _isCarPlayConnected;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CarPlay session did disconnect (connected:%i)", buf, 8u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009A34;
  v6[3] = &unk_100084F60;
  v6[4] = self;
  v7 = _isCarPlayConnected;
  dispatch_async(&_dispatch_main_q, v6);
}

@end