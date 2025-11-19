@interface NMCRoutePlanningRouteRequestState
+ (int64_t)requiredInitialStateForRequest:(id)a3;
- (void)_launchMapsWithURL:(id)a3 companionRouteContext:(id)a4;
- (void)start;
@end

@implementation NMCRoutePlanningRouteRequestState

+ (int64_t)requiredInitialStateForRequest:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = [v4 waypoints];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B1A0;
  v9[3] = &unk_1000850D0;
  v9[4] = &v10;
  [v5 enumerateObjectsUsingBlock:v9];

  if (v11[3])
  {
    v6 = 3;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NMCRoutePlanningRouteRequestState;
    v6 = objc_msgSendSuper2(&v8, "requiredInitialStateForRequest:", v4);
  }

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)start
{
  v3 = [(NanoRoutePlanningState *)self manager];
  v4 = [v3 request];

  v5 = sub_100053324();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 waypoints];
    *buf = 138477827;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "-start, will generate map-ish items for waypoints: %{private}@", buf, 0xCu);
  }

  v7 = [v4 waypoints];
  v8 = sub_1000282B8(v7, &stru_100085110);

  v9 = [v8 count];
  v10 = [v4 waypoints];
  v11 = [v10 count];

  if (v9 == v11)
  {
    v12 = [v4 transportType];
    if (v12 > 5)
    {
      v13 = 1;
    }

    else
    {
      v13 = qword_100065980[v12];
    }

    v18 = [v4 departureDate];
    v19 = [v4 arrivalDate];
    v20 = [v4 companionRouteContext];
    if (v19)
    {
      v21 = 1;
      v22 = v19;
    }

    else
    {
      if (!v18)
      {
        v27 = objc_alloc_init(NSMutableDictionary);
        goto LABEL_20;
      }

      v21 = 0;
      v22 = v18;
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
        v28 = [v4 transitOptions];
        v29 = &MKLaunchOptionsTransitOptionsKey;
        goto LABEL_30;
      }

      if (v13 == 8)
      {
        [v27 setObject:MKLaunchOptionsDirectionsModeCycling forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        v28 = [v4 cyclingOptions];
        v29 = &MKLaunchOptionsCyclingOptionsKey;
        goto LABEL_30;
      }
    }

    else
    {
      if (v13 == 1)
      {
        [v27 setObject:MKLaunchOptionsDirectionsModeDriving forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        v28 = [v4 automobileOptions];
        v29 = &MKLaunchOptionsAutomobileOptionsKey;
        goto LABEL_30;
      }

      if (v13 == 2)
      {
        [v27 setObject:MKLaunchOptionsDirectionsModeWalking forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        v28 = [v4 walkingOptions];
        v29 = &MKLaunchOptionsWalkingOptionsKey;
LABEL_30:
        [v27 setObject:v28 forKeyedSubscript:*v29];

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
    [(NMCRoutePlanningRouteRequestState *)self _launchMapsWithURL:v31 companionRouteContext:v20];

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

  v24 = [(NanoRoutePlanningState *)self manager];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000BA84;
  v32[3] = &unk_100085138;
  v33 = v23;
  v18 = v23;
  [v24 updateWithBlock:v32];

  v19 = v33;
LABEL_34:
}

- (void)_launchMapsWithURL:(id)a3 companionRouteContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100053324();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 simpleDescription];
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will launch Maps to load directions with context %@", buf, 0xCu);
  }

  v10 = +[MapsCompanionDaemonIPCInterface sharedInterface];
  v11 = objc_alloc_init(IPCLoadDirectionsMessage);
  [(IPCLoadDirectionsMessage *)v11 setUrl:v7];

  [(IPCLoadDirectionsMessage *)v11 setOriginIsWatch:1];
  v12 = [v6 data];
  [(IPCLoadDirectionsMessage *)v11 setRouteContextData:v12];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000BC58;
  v14[3] = &unk_1000851A0;
  v15 = v6;
  v16 = self;
  v13 = v6;
  [v10 loadDirections:v11 completion:v14];
}

@end