@interface NanoRoutePlanningRouteRequestState
- (void)_processIncomingRoutes:(id)a3 error:(id)a4 directionsError:(id)a5 fromTicket:(id)a6;
- (void)cancelRequest;
- (void)dealloc;
- (void)start;
@end

@implementation NanoRoutePlanningRouteRequestState

- (void)dealloc
{
  [(MNNavigationServiceDirectionsRequestTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;

  v4.receiver = self;
  v4.super_class = NanoRoutePlanningRouteRequestState;
  [(NanoRoutePlanningRouteRequestState *)&v4 dealloc];
}

- (void)start
{
  v3 = [(NanoRoutePlanningState *)self manager];
  v4 = [v3 request];

  v5 = [v4 waypoints];
  v6 = sub_1000282B8(v5, &stru_1000853D0);

  v7 = [v4 routeAttributes];
  v8 = [v4 tracePath];
  v9 = [v8 length];

  v10 = [MNDirectionsRequestDetails alloc];
  v11 = v10;
  if (v9)
  {
    v12 = [v4 tracePath];
    v13 = [v11 initWithTracePath:v12];
  }

  else
  {
    v13 = [v10 initWithWaypoints:v6 routeAttributes:v7];
  }

  v14 = [[GEODirectionsRequestFeedback alloc] initWithPurpose:4 andSource:1];
  [v14 setAppIdentifier:MapsAppBundleId];
  [v13 setDirectionsRequestFeedback:v14];
  v15 = [v4 auditToken];
  [v13 setAuditToken:v15];

  v16 = [v4 traits];
  [v13 setTraits:v16];

  v17 = [v4 traits];
  v18 = [v17 deviceLocation];

  [v13 setCurrentUserLocation:v18];
  ticket = self->_ticket;
  if (ticket)
  {
    [(MNNavigationServiceDirectionsRequestTicket *)ticket cancel];
    v20 = self->_ticket;
    self->_ticket = 0;
  }

  v21 = +[MNNavigationService sharedService];
  v22 = [v21 ticketForDirectionsRequest:v13];

  objc_storeStrong(&self->_ticket, v22);
  v23 = sub_100053324();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = sub_10001C414(v6);
    *buf = 138477827;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Will submit directions request ticket for waypoints: %{private}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000101F0;
  v26[3] = &unk_100085420;
  objc_copyWeak(&v28, buf);
  v25 = v22;
  v27 = v25;
  [v25 submitWithHandler:v26];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

- (void)_processIncomingRoutes:(id)a3 error:(id)a4 directionsError:(id)a5 fromTicket:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(NanoRoutePlanningState *)self isActive])
  {
    v14 = sub_100053324();
    v15 = v14;
    if (v11 | v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        *&buf[4] = [v10 count];
        v36 = 2114;
        v37 = v11;
        v38 = 2114;
        v39 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Route request returned with %lu routes and error: %{public}@, directionsError: %{public}@", buf, 0x20u);
      }

      ticket = self->_ticket;
      self->_ticket = 0;

      if (v12)
      {
        v17 = +[GEODirectionsError key];
        v33 = v17;
        v34 = v12;
        v18 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v19 = [v18 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        v20 = v18;
        if (!v19)
        {
          v21 = sub_1000134CC(5);
          v20 = v18;
          if (v21)
          {
            v28 = v21;
            v22 = [[NSMutableDictionary alloc] initWithDictionary:v18];
            [v22 setObject:v28 forKeyedSubscript:NSLocalizedDescriptionKey];
            v20 = [v22 copy];

            v21 = v28;
          }
        }

        v23 = [NSError errorWithDomain:@"NanoRoutePlanningSession" code:5 userInfo:v20, v28];

        goto LABEL_20;
      }

      if (v11)
      {
        v25 = sub_1000134CC(5);
        v17 = v25;
        if (v25)
        {
          v40 = NSLocalizedDescriptionKey;
          *buf = v25;
          v18 = [NSDictionary dictionaryWithObjects:buf forKeys:&v40 count:1];
        }

        else
        {
          v18 = 0;
        }

        v23 = [NSError errorWithDomain:@"NanoRoutePlanningSession" code:5 userInfo:v18];
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = [v10 count];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Route request returned %lu routes", buf, 0xCu);
      }

      v24 = self->_ticket;
      self->_ticket = 0;
    }

    v23 = 0;
LABEL_21:
    v26 = [(NanoRoutePlanningState *)self manager];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100010748;
    v29[3] = &unk_100085448;
    v30 = v13;
    v31 = v23;
    v32 = v10;
    v27 = v23;
    [v26 updateWithBlock:v29];
  }
}

- (void)cancelRequest
{
  if (self->_ticket)
  {
    v3 = sub_100053324();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Cancelling in-flight route manager request", v5, 2u);
    }

    [(MNNavigationServiceDirectionsRequestTicket *)self->_ticket cancel];
    ticket = self->_ticket;
    self->_ticket = 0;
  }
}

@end