@interface NanoRoutePlanningRouteRequestState
- (void)_processIncomingRoutes:(id)routes error:(id)error directionsError:(id)directionsError fromTicket:(id)ticket;
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
  manager = [(NanoRoutePlanningState *)self manager];
  request = [manager request];

  waypoints = [request waypoints];
  v6 = sub_1000282B8(waypoints, &stru_1000853D0);

  routeAttributes = [request routeAttributes];
  tracePath = [request tracePath];
  v9 = [tracePath length];

  v10 = [MNDirectionsRequestDetails alloc];
  v11 = v10;
  if (v9)
  {
    tracePath2 = [request tracePath];
    v13 = [v11 initWithTracePath:tracePath2];
  }

  else
  {
    v13 = [v10 initWithWaypoints:v6 routeAttributes:routeAttributes];
  }

  v14 = [[GEODirectionsRequestFeedback alloc] initWithPurpose:4 andSource:1];
  [v14 setAppIdentifier:MapsAppBundleId];
  [v13 setDirectionsRequestFeedback:v14];
  auditToken = [request auditToken];
  [v13 setAuditToken:auditToken];

  traits = [request traits];
  [v13 setTraits:traits];

  traits2 = [request traits];
  deviceLocation = [traits2 deviceLocation];

  [v13 setCurrentUserLocation:deviceLocation];
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

- (void)_processIncomingRoutes:(id)routes error:(id)error directionsError:(id)directionsError fromTicket:(id)ticket
{
  routesCopy = routes;
  errorCopy = error;
  directionsErrorCopy = directionsError;
  ticketCopy = ticket;
  if ([(NanoRoutePlanningState *)self isActive])
  {
    v14 = sub_100053324();
    v15 = v14;
    if (errorCopy | directionsErrorCopy)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        *&buf[4] = [routesCopy count];
        v36 = 2114;
        v37 = errorCopy;
        v38 = 2114;
        v39 = directionsErrorCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Route request returned with %lu routes and error: %{public}@, directionsError: %{public}@", buf, 0x20u);
      }

      ticket = self->_ticket;
      self->_ticket = 0;

      if (directionsErrorCopy)
      {
        v17 = +[GEODirectionsError key];
        v33 = v17;
        v34 = directionsErrorCopy;
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

      if (errorCopy)
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
        *&buf[4] = [routesCopy count];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Route request returned %lu routes", buf, 0xCu);
      }

      v24 = self->_ticket;
      self->_ticket = 0;
    }

    v23 = 0;
LABEL_21:
    manager = [(NanoRoutePlanningState *)self manager];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100010748;
    v29[3] = &unk_100085448;
    v30 = ticketCopy;
    v31 = v23;
    v32 = routesCopy;
    v27 = v23;
    [manager updateWithBlock:v29];
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