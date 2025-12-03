@interface NMCRoutePlanningRouteRequestState
+ (int64_t)requiredInitialStateForRequest:(id)request;
- (void)_launchMapsWithURL:(id)l companionRouteContext:(id)context;
- (void)start;
@end

@implementation NMCRoutePlanningRouteRequestState

+ (int64_t)requiredInitialStateForRequest:(id)request
{
  requestCopy = request;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  waypoints = [requestCopy waypoints];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B1A0;
  v9[3] = &unk_1000850D0;
  v9[4] = &v10;
  [waypoints enumerateObjectsUsingBlock:v9];

  if (v11[3])
  {
    v6 = 3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NMCRoutePlanningRouteRequestState;
    v6 = objc_msgSendSuper2(&v8, "requiredInitialStateForRequest:", requestCopy);
  }

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)start
{
  manager = [(NanoRoutePlanningState *)self manager];
  request = [manager request];

  v5 = sub_100053324();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    waypoints = [request waypoints];
    *buf = 138477827;
    *&buf[4] = waypoints;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "-start, will generate map-ish items for waypoints: %{private}@", buf, 0xCu);
  }

  waypoints2 = [request waypoints];
  v8 = sub_1000282B8(waypoints2, &stru_100085110);

  v9 = [v8 count];
  waypoints3 = [request waypoints];
  v11 = [waypoints3 count];

  if (v9 == v11)
  {
    transportType = [request transportType];
    if (transportType > 5)
    {
      v13 = 1;
    }

    else
    {
      v13 = qword_100065980[transportType];
    }

    departureDate = [request departureDate];
    arrivalDate = [request arrivalDate];
    companionRouteContext = [request companionRouteContext];
    if (arrivalDate)
    {
      v21 = 1;
      v22 = arrivalDate;
    }

    else
    {
      if (!departureDate)
      {
        v27 = objc_alloc_init(NSMutableDictionary);
        goto LABEL_20;
      }

      v21 = 0;
      v22 = departureDate;
    }

    v25 = objc_alloc_init(GEOURLTimePoint);
    [v25 setType:v21];
    [v22 timeIntervalSinceReferenceDate];
    [v25 setTime:?];
    v26 = objc_alloc_init(NSMutableDictionary);
    v27 = v26;
    if (v25)
    {
      [v26 setObject:v25 forKeyedSubscript:MKLaunchOptionsTimePointKey];
    }

LABEL_20:
    if (v13 > 3)
    {
      if (v13 == 4)
      {
        [v27 setObject:MKLaunchOptionsDirectionsModeTransit forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        transitOptions = [request transitOptions];
        v29 = &MKLaunchOptionsTransitOptionsKey;
        goto LABEL_30;
      }

      if (v13 == 8)
      {
        [v27 setObject:MKLaunchOptionsDirectionsModeCycling forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        transitOptions = [request cyclingOptions];
        v29 = &MKLaunchOptionsCyclingOptionsKey;
        goto LABEL_30;
      }
    }

    else
    {
      if (v13 == 1)
      {
        [v27 setObject:MKLaunchOptionsDirectionsModeDriving forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        transitOptions = [request automobileOptions];
        v29 = &MKLaunchOptionsAutomobileOptionsKey;
        goto LABEL_30;
      }

      if (v13 == 2)
      {
        [v27 setObject:MKLaunchOptionsDirectionsModeWalking forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        transitOptions = [request walkingOptions];
        v29 = &MKLaunchOptionsWalkingOptionsKey;
LABEL_30:
        [v27 setObject:transitOptions forKeyedSubscript:*v29];

        goto LABEL_31;
      }
    }

    [v27 setObject:MKLaunchOptionsDirectionsModeDefault forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
LABEL_31:
    v30 = sub_100053324();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "-start, launching Maps with a url and options %{public}@", buf, 0xCu);
    }

    v31 = [MKMapItem urlForMapItems:v8 options:v27];
    [(NMCRoutePlanningRouteRequestState *)self _launchMapsWithURL:v31 companionRouteContext:companionRouteContext];

    goto LABEL_34;
  }

  v14 = sub_100053324();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "-start, only generated map-ish items: %{private}@", buf, 0xCu);
  }

  v15 = sub_1000134CC(4);
  v16 = v15;
  if (v15)
  {
    v35 = NSLocalizedDescriptionKey;
    *buf = v15;
    v17 = [NSDictionary dictionaryWithObjects:buf forKeys:&v35 count:1];
  }

  else
  {
    v17 = 0;
  }

  v23 = [NSError errorWithDomain:@"NanoRoutePlanningSession" code:4 userInfo:v17];

  manager2 = [(NanoRoutePlanningState *)self manager];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000BA84;
  v32[3] = &unk_100085138;
  v33 = v23;
  departureDate = v23;
  [manager2 updateWithBlock:v32];

  arrivalDate = v33;
LABEL_34:
}

- (void)_launchMapsWithURL:(id)l companionRouteContext:(id)context
{
  contextCopy = context;
  lCopy = l;
  v8 = sub_100053324();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    simpleDescription = [contextCopy simpleDescription];
    *buf = 138412290;
    v18 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will launch Maps to load directions with context %@", buf, 0xCu);
  }

  v10 = +[MapsCompanionDaemonIPCInterface sharedInterface];
  v11 = objc_alloc_init(IPCLoadDirectionsMessage);
  [(IPCLoadDirectionsMessage *)v11 setUrl:lCopy];

  [(IPCLoadDirectionsMessage *)v11 setOriginIsWatch:1];
  data = [contextCopy data];
  [(IPCLoadDirectionsMessage *)v11 setRouteContextData:data];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000BC58;
  v14[3] = &unk_1000851A0;
  v15 = contextCopy;
  selfCopy = self;
  v13 = contextCopy;
  [v10 loadDirections:v11 completion:v14];
}

@end