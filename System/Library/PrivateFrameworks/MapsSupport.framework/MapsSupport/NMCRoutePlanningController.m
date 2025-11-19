@interface NMCRoutePlanningController
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (GEOCompanionRouteContext)companionRouteContext;
- (NMCRoutePlanningController)init;
- (id)_messageForNoRoutesWithError:(id)a3 routeContextData:(id)a4;
- (id)_messageForRouteDetailsData:(id)a3 index:(unint64_t)a4 count:(unint64_t)a5 routeContextData:(id)a6;
- (id)_replyForMessage:(id)a3 withSafetyWarning:(int64_t)a4 error:(id)a5;
- (id)companionRouteAtIndex:(unint64_t)a3;
- (id)companionRouteWithRouteID:(id)a3;
- (id)startNavigationDetailsForRouteID:(id)a3;
- (unint64_t)selectedRouteIndex;
- (void)_checkinForRoutePlanningWithConnection:(id)a3;
- (void)_clearLocally;
- (void)_clearPreviewRoutesIfNeeded;
- (void)_enumerateMapsConnectionsUnderAssertionNamed:(id)a3 usingBlock:(id)a4;
- (void)_forgetConnection:(id)a3 reason:(id)a4;
- (void)_handleIncomingMessage:(id)a3;
- (void)_handlePreviewNavMessage:(id)a3;
- (void)_notifyMapsRoutePlanningSessionDidFail:(id)a3;
- (void)_notifyMapsRoutePlanningSessionDidInvalidate:(id)a3;
- (void)_notifyMapsRoutePlanningSessionDidSelectRoute:(id)a3;
- (void)_notifyMapsRoutePlanningSessionDidStartLoading:(id)a3;
- (void)_notifyMapsRoutePlanningSessionDidUpdateResponse:(id)a3;
- (void)_notifyNanoMapsRoutePlanningSession:(id)a3 didReceiveRouteUpdatesForRoutes:(id)a4;
- (void)_notifyNanoMapsRoutePlanningSessionDidFail:(id)a3;
- (void)_notifyNanoMapsRoutePlanningSessionDidInvalidate:(id)a3;
- (void)_notifyNanoMapsRoutePlanningSessionDidSelectRoute:(id)a3;
- (void)_notifyNanoMapsRoutePlanningSessionDidStartLoading:(id)a3;
- (void)_notifyNanoMapsRoutePlanningSessionDidUpdateResponse:(id)a3 changedRouteIdentifiers:(id)a4;
- (void)_prepareTransitRouteUpdaterIfNeeded;
- (void)_registerIDSMessageObservers;
- (void)_registerXPCRoutes;
- (void)_sendClearPreviewWithContext:(id)a3;
- (void)_sendPreviewRoutes:(id)a3 atIndexes:(id)a4 error:(id)a5 companionRouteContext:(id)a6 includeSyntheticRoute:(BOOL)a7;
- (void)_sendPreviewRoutesIfAvailable;
- (void)_sendRouteUpdates:(id)a3 context:(id)a4;
- (void)_sendSelectedPreviewRouteIndex:(unint64_t)a3 context:(id)a4;
- (void)_setCurrentSessionInputOrigin:(unint64_t)a3;
- (void)_updateRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5;
- (void)anticipateRoutePlanningRequest:(id)a3 completionHandler:(id)a4;
- (void)checkinForRoutePlanning;
- (void)clearLocally;
- (void)clearPreviewRoutesIfNeeded;
- (void)clearRoutePlanningWithContext:(id)a3 completionHandler:(id)a4;
- (void)failRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5;
- (void)mapsApplicationStateDidChange:(id)a3;
- (void)routePlanningSession:(id)a3 didFailWithResponse:(id)a4;
- (void)routePlanningSession:(id)a3 didStartLoadingWithRequest:(id)a4;
- (void)routePlanningSession:(id)a3 didUpdateWithResponse:(id)a4;
- (void)routePlanningSessionDidInvalidate:(id)a3;
- (void)sendPreviewRoutesIfAvailable;
- (void)transitRouteUpdater:(id)a3 didUpdateTransitRoutes:(id)a4;
- (void)updateRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5;
- (void)updateRoutePlanningRequest:(id)a3 withSelectedRouteID:(id)a4 completionHandler:(id)a5;
@end

@implementation NMCRoutePlanningController

- (NMCRoutePlanningController)init
{
  v8.receiver = self;
  v8.super_class = NMCRoutePlanningController;
  v2 = [(NMCRoutePlanningController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentSessionInputOrigin = 3;
    v4 = +[NMCGizmoConnection sharedInstance];
    v5 = [v4 supportsXPCUseMapsForRoutePlanning];

    if (v5)
    {
      [NanoRoutePlanningSession setDefaultClass:objc_opt_class() forSessionState:3];
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"mapsApplicationStateDidChange:" name:off_10009DD38 object:0];

    [(NMCRoutePlanningController *)v3 _registerXPCRoutes];
    [(NMCRoutePlanningController *)v3 _registerIDSMessageObservers];
  }

  return v3;
}

- (GEOCompanionRouteContext)companionRouteContext
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001EB00;
  v11 = sub_10001EB10;
  v12 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001EB18;
  v6[3] = &unk_1000856D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (unint64_t)selectedRouteIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001EC3C;
  v5[3] = &unk_100085D98;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)companionRouteAtIndex:(unint64_t)a3
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10001EB00;
    v13 = sub_10001EB10;
    v14 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EDE4;
    block[3] = &unk_100085DC0;
    block[4] = self;
    block[5] = &v9;
    block[6] = a3;
    dispatch_sync(isolationQueue, block);
    v5 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (id)companionRouteWithRouteID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_10001EB00;
    v15 = sub_10001EB10;
    v16 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EFCC;
    block[3] = &unk_100085DE8;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(isolationQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)startNavigationDetailsForRouteID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10001EB00;
  v43 = sub_10001EB10;
  v44 = 0;
  if (v4)
  {
    v5 = [NSUUID _maps_UUIDWithData:v4];
    if (v5)
    {
      isolationQueue = self->_isolationQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F728;
      block[3] = &unk_1000856D0;
      block[4] = self;
      block[5] = &v39;
      dispatch_sync(isolationQueue, block);
      goto LABEL_5;
    }

    v29 = sub_100053324();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v4;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Asked for start navigation details, but route ID is malformed (%@)", buf, 0xCu);
    }
  }

  else
  {
    v7 = self->_isolationQueue;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10001F778;
    v37[3] = &unk_1000856D0;
    v37[4] = self;
    v37[5] = &v39;
    dispatch_sync(v7, v37);
    v5 = [v40[5] selectedRouteID];
    if (v5)
    {
LABEL_5:
      v8 = [v40[5] routes];
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_10001F7C8;
      v35 = &unk_100085E10;
      v9 = v5;
      v36 = v9;
      v10 = [v8 indexOfObjectPassingTest:&v32];
      if (v10 >= [v8 count])
      {
        v12 = 0;
      }

      else
      {
        v11 = [v8 objectAtIndexedSubscript:v10];
        v12 = v11;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v11)
        {
          v13 = sub_100053324();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v47 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Generating start navigation details for route ID %@", buf, 0xCu);
          }

          v14 = objc_alloc_init(MNStartNavigationDetails);
          if ([v12 transportType] == 1)
          {
            v15 = 2;
          }

          else
          {
            v15 = 3;
          }

          [v14 setNavigationType:v15];
          [v14 setGuidanceType:0];
          v45 = v12;
          v16 = [NSArray arrayWithObjects:&v45 count:1];
          [v14 setRoutes:v16];

          [v14 setSelectedRouteIndex:0];
          v17 = [v12 routeAttributes];
          [v14 setRouteAttributes:v17];

          v18 = NavigationConfig_TraceRecordingEnabled[1];
          BOOL = GEOConfigGetBOOL();
          v20 = +[GEOPlatform sharedPlatform];
          v21 = [v20 isInternalInstall];

          if (v21)
          {
            v22 = NavigationConfig_SimulationEnabled[1];
            if (GEOConfigGetBOOL())
            {
              v23 = NavigationConfig_SimulationType[1];
              [v14 setSimulationType:GEOConfigGetInteger()];
              LOBYTE(BOOL) = ([v14 simulationType] == -1) | BOOL;
            }

            v24 = sub_100053324();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = @"NO";
              if (BOOL)
              {
                v25 = @"YES";
              }

              v26 = v25;
              v27 = [v14 simulationType];
              *buf = 138412546;
              v47 = v26;
              v48 = 1024;
              LODWORD(v49) = v27;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Internal only: shouldRecordTrace: %@, simulationType: %d", buf, 0x12u);
            }

            if ((BOOL & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else if (!BOOL)
          {
            goto LABEL_27;
          }

          v28 = [v40[5] traceRecordingData];
          [v14 setTraceRecordingData:v28];
LABEL_26:

LABEL_27:
          goto LABEL_35;
        }
      }

      v28 = sub_100053324();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v47 = v10;
        v48 = 2112;
        v49 = v9;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Asked for start navigation details, but route not found (index: %lu, routeID: %@)", buf, 0x16u);
      }

      v14 = 0;
      goto LABEL_26;
    }

    v30 = sub_100053324();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Asked for start navigation details, but there isn't a selected route to default to", buf, 2u);
    }
  }

  v9 = 0;
  v14 = 0;
LABEL_35:
  _Block_object_dispose(&v39, 8);

  return v14;
}

- (void)sendPreviewRoutesIfAvailable
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F8D0;
  v4[3] = &unk_100085638;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_sendPreviewRoutesIfAvailable
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = [(NanoRoutePlanningSession *)self->_routePlanningSession response];
  v4 = [v3 companionRoutes];

  v5 = [(NanoRoutePlanningSession *)self->_routePlanningSession request];
  v6 = [v5 companionRouteContext];
  v7 = [v6 copy];

  v8 = [(NanoRoutePlanningSession *)self->_routePlanningSession response];
  v9 = [v8 selectedRouteID];

  if (v9)
  {
    v10 = [(NanoRoutePlanningSession *)self->_routePlanningSession response];
    v11 = [v10 routeIDs];
    v12 = [v11 indexOfObject:v9];
  }

  else
  {
    v12 = 0;
  }

  if ([v4 count])
  {
    v13 = sub_100053324();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Connection needs sync: sending latest preview routes", v14, 2u);
    }

    [(NMCRoutePlanningController *)self _sendPreviewRoutes:v4 atIndexes:0 error:0 companionRouteContext:v7 includeSyntheticRoute:1];
    if (v12 && v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NMCRoutePlanningController *)self _sendSelectedPreviewRouteIndex:v12 context:v7];
    }
  }
}

- (void)clearPreviewRoutesIfNeeded
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FB44;
  v4[3] = &unk_100085638;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_clearPreviewRoutesIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = self->_routePlanningSession;
  if (v3)
  {
    v4 = sub_100053324();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(NanoRoutePlanningSession *)v3 request];
      v6 = [v5 companionRouteContext];
      v7 = [v6 simpleDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clearing existing route planning session (context: %@)", &v8, 0xCu);
    }

    [(NanoRoutePlanningSession *)v3 invalidate];
  }
}

- (void)clearLocally
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FD3C;
  v4[3] = &unk_100085638;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_clearLocally
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = self->_routePlanningSession;
  snapshot = self->_snapshot;
  self->_snapshot = 0;

  routePlanningSession = self->_routePlanningSession;
  self->_routePlanningSession = 0;

  if (v8)
  {
    v5 = [(NanoRoutePlanningSession *)v8 request];
    v6 = [v5 companionRouteContext];
    lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
    self->_lastInvalidatedCompanionRouteContext = v6;

    [(NanoRoutePlanningSession *)v8 unregisterObserver:self];
    [(NanoRoutePlanningSession *)v8 invalidate];
  }
}

- (void)mapsApplicationStateDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:BKSApplicationStateKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 unsignedIntValue];
    v8 = sub_100053324();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[NMCRoutePlanningController mapsApplicationStateDidChange:]";
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %lu", &v12, 0x16u);
    }

    v9 = (v7 == 0) | v7;
    if (v9)
    {
      [(NMCRoutePlanningController *)self clearPreviewRoutesIfNeeded];
    }

    [(GEOTransitRouteUpdater *)self->_transitRouteUpdater setActive:v9 & self->_sendAllUpdates & 1];
  }

  else
  {
    v10 = sub_100053324();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v4 userInfo];
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unknown userInfo format: %{public}@", &v12, 0xCu);
    }
  }
}

- (void)_prepareTransitRouteUpdaterIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100020344;
  v30[3] = &unk_100084F10;
  v30[4] = self;
  v3 = objc_retainBlock(v30);
  v4 = self->_routePlanningSession;
  v5 = [(NanoRoutePlanningSession *)v4 request];
  v6 = v5;
  if (v5 && [v5 resolvedTransportType] == 1)
  {
    v7 = [(NanoRoutePlanningSession *)v4 response];
    if ([v7 numberOfRoutes] && objc_msgSend(v7, "routeOrigin") == 1)
    {
      v24 = v7;
      v25 = v4;
      v8 = [v7 routes];
      v9 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v27;
        v14 = 0.0;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v16 transitRouteUpdateRequest];
            if (v17)
            {
              if (fabs(v14) < 0.000001)
              {
                [v16 transitUpdateInitialDelay];
                v14 = v18;
              }

              [v9 addObject:v17];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v26 objects:v33 count:16];
        }

        while (v12);
      }

      else
      {
        v14 = 0.0;
      }

      if ([v9 count])
      {
        v19 = sub_100053324();
        v7 = v24;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [v9 count];
          *buf = 134217984;
          v32 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Starting transit route updater for %lu transit routes", buf, 0xCu);
        }

        if (!self->_transitRouteUpdater)
        {
          v21 = [[GEOTransitRouteUpdater alloc] initWithDelegate:self andInitialTTL:v14];
          transitRouteUpdater = self->_transitRouteUpdater;
          self->_transitRouteUpdater = v21;
        }

        v4 = v25;
        v23 = self->_sendAllUpdates && !sub_100014134();
        [(GEOTransitRouteUpdater *)self->_transitRouteUpdater setActive:v23];
        [(GEOTransitRouteUpdater *)self->_transitRouteUpdater setRequests:v9];
      }

      else
      {
        (v3[2])(v3);
        v7 = v24;
        v4 = v25;
      }
    }

    else
    {
      (v3[2])(v3);
    }
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)transitRouteUpdater:(id)a3 didUpdateTransitRoutes:(id)a4
{
  v5 = a4;
  isolationQueue = self->_isolationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020478;
  v8[3] = &unk_1000856F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(isolationQueue, v8);
}

- (void)routePlanningSession:(id)a3 didStartLoadingWithRequest:(id)a4
{
  v5 = a3;
  isolationQueue = self->_isolationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020834;
  v8[3] = &unk_1000856F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(isolationQueue, v8);
}

- (void)routePlanningSession:(id)a3 didUpdateWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020958;
  block[3] = &unk_100085E38;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(isolationQueue, block);
}

- (void)routePlanningSession:(id)a3 didFailWithResponse:(id)a4
{
  v5 = a3;
  isolationQueue = self->_isolationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020B1C;
  v8[3] = &unk_1000856F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(isolationQueue, v8);
}

- (void)routePlanningSessionDidInvalidate:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020C14;
  v7[3] = &unk_1000856F8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(isolationQueue, v7);
}

- (void)_setCurrentSessionInputOrigin:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_currentSessionInputOrigin != a3)
  {
    v5 = sub_100053324();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_1000134A4(a3);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Switching current session input origin to %@", &v7, 0xCu);
    }

    self->_currentSessionInputOrigin = a3;
  }
}

- (void)_registerIDSMessageObservers
{
  v3 = +[NMCGizmoConnection sharedInstance];
  v4 = objc_alloc_init(NMMessageQueue);
  [(NMMessageQueue *)v4 setMaximumInFlightMessagesCount:GEOConfigGetUInteger()];
  [v3 setMessageQueue:v4 forType:307];
  [v3 setMessageQueue:v4 forType:308];
  [v3 setMessageQueue:v4 forType:312];
  [v3 setMessageQueue:v4 forType:309];
  [v3 setMessageQueue:v4 forType:305];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100020FA4;
  v13[3] = &unk_100084F38;
  objc_copyWeak(&v14, &location);
  v5 = objc_retainBlock(v13);
  v6 = sub_100053324();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will begin listening for incoming IDS messages", v12, 2u);
  }

  v7 = [v3 addMessageObserverForType:304 callback:v5];
  v8 = [v3 addMessageObserverForType:307 callback:v5];
  v9 = [v3 addMessageObserverForType:305 callback:v5];
  v10 = [v3 addMessageObserverForType:306 callback:v5];
  v11 = [v3 addMessageObserverForType:309 callback:v5];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_handleIncomingMessage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [v4 type];
  if (v5 > 305)
  {
    switch(v5)
    {
      case 306:
        v16 = [v4 argumentForTag:5];
        v6 = v16;
        if (v16 && ([(NMReply *)v16 hasBoolValue]& 1) != 0)
        {
          self->_sendAllUpdates = [(NMReply *)v6 BOOLValue];
          v17 = sub_100053324();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            if (self->_sendAllUpdates)
            {
              v18 = "YES";
            }

            else
            {
              v18 = "NO";
            }

            *buf = 136315138;
            v50 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Setting _sendAllUpdates to %s", buf, 0xCu);
          }

          if (self->_sendAllUpdates)
          {
            routePlanningSession = self->_routePlanningSession;
            if (routePlanningSession)
            {
              v20 = [(NanoRoutePlanningSession *)routePlanningSession response];
              v21 = [v20 routeIDs];
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = sub_100022404;
              v45[3] = &unk_100085E88;
              v22 = v20;
              v46 = v22;
              v23 = sub_1000282B8(v21, v45);

              if ([v23 count])
              {
                v24 = [(NanoRoutePlanningSession *)self->_routePlanningSession request];
                v25 = [v24 companionRouteContext];

                v26 = sub_100053324();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v50 = v25;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Sending all received route updates in session (context: %@)", buf, 0xCu);
                }

                [(NMCRoutePlanningController *)self _sendRouteUpdates:v23 context:v25];
              }
            }
          }

          [(NMCRoutePlanningController *)self _prepareTransitRouteUpdaterIfNeeded];
          goto LABEL_316;
        }

        v7 = sub_100053324();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES message has no flag argument, ignoring", buf, 2u);
        }

        goto LABEL_315;
      case 307:
        v6 = +[MapsCompanionDaemonIPCInterface sharedInterface];
        if (([(NMReply *)v6 canReceiveMessages]& 1) != 0)
        {
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_1000223F4;
          v47[3] = &unk_100085E60;
          v48 = v6;
          sub_100013C38(@"com.apple.Maps.launchFromGizmo.DISMISS_NAV_SAFETY_ALERT", v47);

LABEL_316:
          goto LABEL_317;
        }

        v7 = +[MSPMapsPaths mapsApplicationContainerPaths];
        [NSNumber numberWithBool:1];
        v27 = [v7 homeDirectory];
        _CFPreferencesSetAppValueWithContainer();

LABEL_315:
        goto LABEL_316;
      case 309:
        v6 = objc_alloc_init(NMReply);
        v7 = objc_alloc_init(NMArgument);
        [v7 setTag:1];
        [(NMReply *)v6 addArgument:v7];
        v8 = +[NMCGizmoConnection sharedInstance];
        [v8 sendReply:v6 forMessage:v4 options:0];
LABEL_314:

        goto LABEL_315;
    }

    goto LABEL_317;
  }

  if (v5 == 304)
  {
    [(NMCRoutePlanningController *)self _handlePreviewNavMessage:v4];
    goto LABEL_317;
  }

  if (v5 == 305)
  {
    v6 = self->_routePlanningSession;
    v9 = [(NMReply *)v6 request];
    v7 = [v9 companionRouteContext];

    v10 = [v4 argumentForTag:406];
    v8 = [v10 dataValue];

    if (v8)
    {
      v11 = [[GEOCompanionRouteContext alloc] initWithData:v8];
      v12 = v11;
      if (v7 && [v11 isStaleComparedToContext:v7])
      {
        v13 = sub_100053324();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
LABEL_209:

          goto LABEL_306;
        }

        v14 = [v4 type];
        if (v14 > 202)
        {
          if (v14 <= 400)
          {
            if (v14 <= 205)
            {
              if (v14 == 203)
              {
                v15 = @"FAILED_TO_UPDATE_LOCATION";
              }

              else if (v14 == 204)
              {
                v15 = @"DID_PAUSE_LOCATION_UPDATES";
              }

              else
              {
                v15 = @"DID_RESUME_LOCATION_UPDATES";
              }
            }

            else
            {
              switch(v14)
              {
                case 300:
                  v15 = @"UPDATE_NAV_ROUTE_DETAILS";
                  break;
                case 301:
                  v15 = @"UPDATE_NAV_ROUTE_STATUS";
                  break;
                case 302:
                  v15 = @"START_NAV";
                  break;
                case 303:
                  v15 = @"STOP_NAV";
                  break;
                case 304:
                  v15 = @"PREVIEW_NAV";
                  break;
                case 305:
                  v15 = @"CLEAR_NAV_PREVIEW";
                  break;
                case 306:
                  v15 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
                  break;
                case 307:
                  v15 = @"DISMISS_NAV_SAFETY_ALERT";
                  break;
                case 308:
                  v15 = @"AVAILABLE_ROUTE";
                  break;
                case 309:
                  v15 = @"SELECTED_ROUTE";
                  break;
                case 310:
                  v15 = @"REQUEST_NAVIGATION_UPDATE";
                  break;
                case 311:
                  v15 = @"UPDATE_NAV_ROUTE_UPDATE";
                  break;
                case 312:
                  v15 = @"AVAILABLE_ROUTE_UPDATE";
                  break;
                case 313:
                  v15 = @"PAUSE_NAV";
                  break;
                case 314:
                  v15 = @"RESUME_NAV";
                  break;
                case 315:
                  v15 = @"SET_DISPLAYED_STEP";
                  break;
                default:
                  if (v14 != 206)
                  {
                    goto LABEL_168;
                  }

                  v15 = @"APPLY_LOCATION_AUTHORIZATION";
                  break;
              }
            }

            goto LABEL_208;
          }

          if (v14 > 599)
          {
            if (v14 > 1499)
            {
              if (v14 == 1500)
              {
                v15 = @"DEBUG_FETCH_CONFIGURATION_INFO";
                goto LABEL_208;
              }

              if (v14 == 1501)
              {
                v15 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
                goto LABEL_208;
              }
            }

            else
            {
              if (v14 == 600)
              {
                v15 = @"FETCH_ROUTE_GENIUS";
                goto LABEL_208;
              }

              if (v14 == 1000)
              {
                v15 = @"PING";
                goto LABEL_208;
              }
            }

            goto LABEL_168;
          }

          if (v14 > 500)
          {
            if (v14 == 501)
            {
              v15 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
              goto LABEL_208;
            }

            if (v14 == 502)
            {
              v15 = @"SERVICE_REQUEST";
              goto LABEL_208;
            }

            goto LABEL_168;
          }

          if (v14 == 401)
          {
            v15 = @"OPEN_URL";
            goto LABEL_208;
          }

          if (v14 != 500)
          {
            goto LABEL_168;
          }

          v15 = @"PLACE_DATA_MUID_LOOKUP";
        }

        else
        {
          if (v14 <= 99)
          {
            if (v14 > 3)
            {
              switch(v14)
              {
                case '2':
                  v15 = @"START_INITIAL_SYNC";
                  break;
                case '3':
                  v15 = @"FETCH_CURRENT_COUNTRY_CODE";
                  break;
                case '4':
                  v15 = @"FETCH_EXPERIMENTS_CONFIG";
                  break;
                case '5':
                  v15 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
                  break;
                case '6':
                  v15 = @"SYNC_UP_NEXT_ITEMS";
                  break;
                case '7':
                  v15 = @"REQUEST_UP_NEXT_ITEMS";
                  break;
                case '8':
                  v15 = @"SYNC_CONFIG_STORE";
                  break;
                case '9':
                  v15 = @"CHECKIN_WITH_CONFIG_STORE";
                  break;
                case ':':
                  v15 = @"REQUEST_ANALYTIC_IDENTIFIERS";
                  break;
                case ';':
                  v15 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
                  break;
                case '<':
                  v15 = @"SYNC_SUBSCRIPTION_INFO";
                  break;
                case '=':
                  v15 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
                  break;
                case '>':
                  goto LABEL_168;
                case '?':
                  v15 = @"UPDATE_SUBSCRIPTION_STATE";
                  break;
                case '@':
                  v15 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
                  break;
                case 'A':
                  v15 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
                  break;
                case 'B':
                  v15 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
                  break;
                case 'C':
                  v15 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
                  break;
                default:
                  if (v14 != 4)
                  {
                    goto LABEL_168;
                  }

                  v15 = @"FETCHED_TILE";
                  break;
              }

              goto LABEL_208;
            }

            switch(v14)
            {
              case 1:
                v15 = @"FETCH_TILES";
                goto LABEL_208;
              case 2:
                v15 = @"CANCEL_TILES";
                goto LABEL_208;
              case 3:
                v15 = @"REPORT_CORRUPT_TILE";
                goto LABEL_208;
            }

LABEL_168:
            v15 = [NSString stringWithFormat:@"(unknown: %i)", v14];
            goto LABEL_208;
          }

          if (v14 <= 102)
          {
            if (v14 == 100)
            {
              v15 = @"CHECKIN_WITH_TILE_GROUP";
            }

            else if (v14 == 101)
            {
              v15 = @"FORCE_UPDATE_MANIFEST";
            }

            else
            {
              v15 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
            }

            goto LABEL_208;
          }

          if (v14 > 200)
          {
            if (v14 == 201)
            {
              v15 = @"STOP_LOCATION_UPDATE";
            }

            else
            {
              v15 = @"UPDATED_LOCATION";
            }

            goto LABEL_208;
          }

          if (v14 == 103)
          {
            v15 = @"FETCH_RESOURCE";
            goto LABEL_208;
          }

          if (v14 != 200)
          {
            goto LABEL_168;
          }

          v15 = @"START_LOCATION_UPDATE";
        }

LABEL_208:
        v36 = [v7 simpleDescription];
        v37 = [v12 simpleDescription];
        *buf = 138412802;
        v50 = v15;
        v51 = 2112;
        v52 = v36;
        v53 = 2112;
        v54 = v37;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Ignoring %@ message; incoming route context is old (current:%@, incoming:%@)", buf, 0x20u);

        goto LABEL_209;
      }

      goto LABEL_309;
    }

    if (!v7)
    {
      goto LABEL_310;
    }

    v28 = [v7 origin];
    v12 = sub_100053324();
    v29 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v28 == 2)
    {
      if (!v29)
      {
LABEL_306:

        goto LABEL_314;
      }

      v30 = [v7 simpleDescription];
      v31 = [v4 type];
      if (v31 > 202)
      {
        if (v31 <= 400)
        {
          if (v31 <= 205)
          {
            if (v31 == 203)
            {
              v32 = @"FAILED_TO_UPDATE_LOCATION";
            }

            else if (v31 == 204)
            {
              v32 = @"DID_PAUSE_LOCATION_UPDATES";
            }

            else
            {
              v32 = @"DID_RESUME_LOCATION_UPDATES";
            }
          }

          else
          {
            switch(v31)
            {
              case 300:
                v32 = @"UPDATE_NAV_ROUTE_DETAILS";
                break;
              case 301:
                v32 = @"UPDATE_NAV_ROUTE_STATUS";
                break;
              case 302:
                v32 = @"START_NAV";
                break;
              case 303:
                v32 = @"STOP_NAV";
                break;
              case 304:
                v32 = @"PREVIEW_NAV";
                break;
              case 305:
                v32 = @"CLEAR_NAV_PREVIEW";
                break;
              case 306:
                v32 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
                break;
              case 307:
                v32 = @"DISMISS_NAV_SAFETY_ALERT";
                break;
              case 308:
                v32 = @"AVAILABLE_ROUTE";
                break;
              case 309:
                v32 = @"SELECTED_ROUTE";
                break;
              case 310:
                v32 = @"REQUEST_NAVIGATION_UPDATE";
                break;
              case 311:
                v32 = @"UPDATE_NAV_ROUTE_UPDATE";
                break;
              case 312:
                v32 = @"AVAILABLE_ROUTE_UPDATE";
                break;
              case 313:
                v32 = @"PAUSE_NAV";
                break;
              case 314:
                v32 = @"RESUME_NAV";
                break;
              case 315:
                v32 = @"SET_DISPLAYED_STEP";
                break;
              default:
                if (v31 != 206)
                {
                  goto LABEL_224;
                }

                v32 = @"APPLY_LOCATION_AUTHORIZATION";
                break;
            }
          }

          goto LABEL_305;
        }

        if (v31 > 599)
        {
          if (v31 > 1499)
          {
            if (v31 == 1500)
            {
              v32 = @"DEBUG_FETCH_CONFIGURATION_INFO";
              goto LABEL_305;
            }

            if (v31 == 1501)
            {
              v32 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
              goto LABEL_305;
            }
          }

          else
          {
            if (v31 == 600)
            {
              v32 = @"FETCH_ROUTE_GENIUS";
              goto LABEL_305;
            }

            if (v31 == 1000)
            {
              v32 = @"PING";
              goto LABEL_305;
            }
          }

          goto LABEL_224;
        }

        if (v31 > 500)
        {
          if (v31 == 501)
          {
            v32 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
            goto LABEL_305;
          }

          if (v31 == 502)
          {
            v32 = @"SERVICE_REQUEST";
            goto LABEL_305;
          }

          goto LABEL_224;
        }

        if (v31 == 401)
        {
          v32 = @"OPEN_URL";
          goto LABEL_305;
        }

        if (v31 != 500)
        {
          goto LABEL_224;
        }

        v32 = @"PLACE_DATA_MUID_LOOKUP";
      }

      else
      {
        if (v31 <= 99)
        {
          if (v31 > 3)
          {
            switch(v31)
            {
              case '2':
                v32 = @"START_INITIAL_SYNC";
                break;
              case '3':
                v32 = @"FETCH_CURRENT_COUNTRY_CODE";
                break;
              case '4':
                v32 = @"FETCH_EXPERIMENTS_CONFIG";
                break;
              case '5':
                v32 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
                break;
              case '6':
                v32 = @"SYNC_UP_NEXT_ITEMS";
                break;
              case '7':
                v32 = @"REQUEST_UP_NEXT_ITEMS";
                break;
              case '8':
                v32 = @"SYNC_CONFIG_STORE";
                break;
              case '9':
                v32 = @"CHECKIN_WITH_CONFIG_STORE";
                break;
              case ':':
                v32 = @"REQUEST_ANALYTIC_IDENTIFIERS";
                break;
              case ';':
                v32 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
                break;
              case '<':
                v32 = @"SYNC_SUBSCRIPTION_INFO";
                break;
              case '=':
                v32 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
                break;
              case '>':
                goto LABEL_224;
              case '?':
                v32 = @"UPDATE_SUBSCRIPTION_STATE";
                break;
              case '@':
                v32 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
                break;
              case 'A':
                v32 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
                break;
              case 'B':
                v32 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
                break;
              case 'C':
                v32 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
                break;
              default:
                if (v31 != 4)
                {
                  goto LABEL_224;
                }

                v32 = @"FETCHED_TILE";
                break;
            }

            goto LABEL_305;
          }

          switch(v31)
          {
            case 1:
              v32 = @"FETCH_TILES";
              goto LABEL_305;
            case 2:
              v32 = @"CANCEL_TILES";
              goto LABEL_305;
            case 3:
              v32 = @"REPORT_CORRUPT_TILE";
              goto LABEL_305;
          }

LABEL_224:
          v32 = [NSString stringWithFormat:@"(unknown: %i)", v31];
          goto LABEL_305;
        }

        if (v31 <= 102)
        {
          if (v31 == 100)
          {
            v32 = @"CHECKIN_WITH_TILE_GROUP";
          }

          else if (v31 == 101)
          {
            v32 = @"FORCE_UPDATE_MANIFEST";
          }

          else
          {
            v32 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
          }

          goto LABEL_305;
        }

        if (v31 > 200)
        {
          if (v31 == 201)
          {
            v32 = @"STOP_LOCATION_UPDATE";
          }

          else
          {
            v32 = @"UPDATED_LOCATION";
          }

          goto LABEL_305;
        }

        if (v31 == 103)
        {
          v32 = @"FETCH_RESOURCE";
          goto LABEL_305;
        }

        if (v31 != 200)
        {
          goto LABEL_224;
        }

        v32 = @"START_LOCATION_UPDATE";
      }

LABEL_305:
      *buf = 138412546;
      v50 = v30;
      v51 = 2112;
      v52 = v32;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Was told to clear nav preview without a context and our current context is from companion (%@); dropping (%@) message", buf, 0x16u);

      goto LABEL_306;
    }

    if (!v29)
    {
LABEL_309:

LABEL_310:
      snapshot = self->_snapshot;
      self->_snapshot = 0;

      v39 = self->_routePlanningSession;
      self->_routePlanningSession = 0;

      if (v6)
      {
        v40 = [(NMReply *)v6 request];
        v41 = [v40 companionRouteContext];
        lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
        self->_lastInvalidatedCompanionRouteContext = v41;

        v43 = sub_100053324();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [(GEOCompanionRouteContext *)self->_lastInvalidatedCompanionRouteContext simpleDescription];
          *buf = 138412290;
          v50 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Will clear route planning locally and notify Maps (context: %@)", buf, 0xCu);
        }

        [(NMReply *)v6 unregisterObserver:self];
        [(NMReply *)v6 invalidate];
        [(NMCRoutePlanningController *)self _notifyMapsRoutePlanningSessionDidInvalidate:v6];
      }

      goto LABEL_314;
    }

    v33 = [v7 simpleDescription];
    v34 = [v4 type];
    if (v34 > 202)
    {
      if (v34 <= 400)
      {
        if (v34 <= 205)
        {
          if (v34 == 203)
          {
            v35 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (v34 == 204)
          {
            v35 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v35 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(v34)
          {
            case 300:
              v35 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v35 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v35 = @"START_NAV";
              break;
            case 303:
              v35 = @"STOP_NAV";
              break;
            case 304:
              v35 = @"PREVIEW_NAV";
              break;
            case 305:
              v35 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v35 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v35 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v35 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v35 = @"SELECTED_ROUTE";
              break;
            case 310:
              v35 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v35 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v35 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v35 = @"PAUSE_NAV";
              break;
            case 314:
              v35 = @"RESUME_NAV";
              break;
            case 315:
              v35 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (v34 != 206)
              {
                goto LABEL_227;
              }

              v35 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_308;
      }

      if (v34 > 599)
      {
        if (v34 > 1499)
        {
          if (v34 == 1500)
          {
            v35 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_308;
          }

          if (v34 == 1501)
          {
            v35 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_308;
          }
        }

        else
        {
          if (v34 == 600)
          {
            v35 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_308;
          }

          if (v34 == 1000)
          {
            v35 = @"PING";
            goto LABEL_308;
          }
        }

        goto LABEL_227;
      }

      if (v34 > 500)
      {
        if (v34 == 501)
        {
          v35 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_308;
        }

        if (v34 == 502)
        {
          v35 = @"SERVICE_REQUEST";
          goto LABEL_308;
        }

        goto LABEL_227;
      }

      if (v34 == 401)
      {
        v35 = @"OPEN_URL";
        goto LABEL_308;
      }

      if (v34 != 500)
      {
        goto LABEL_227;
      }

      v35 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (v34 <= 99)
      {
        if (v34 > 3)
        {
          switch(v34)
          {
            case '2':
              v35 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v35 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v35 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v35 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v35 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v35 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v35 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v35 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v35 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v35 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v35 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v35 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_227;
            case '?':
              v35 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v35 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v35 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v35 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v35 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (v34 != 4)
              {
                goto LABEL_227;
              }

              v35 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_308;
        }

        switch(v34)
        {
          case 1:
            v35 = @"FETCH_TILES";
            goto LABEL_308;
          case 2:
            v35 = @"CANCEL_TILES";
            goto LABEL_308;
          case 3:
            v35 = @"REPORT_CORRUPT_TILE";
            goto LABEL_308;
        }

LABEL_227:
        v35 = [NSString stringWithFormat:@"(unknown: %i)", v34];
        goto LABEL_308;
      }

      if (v34 <= 102)
      {
        if (v34 == 100)
        {
          v35 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (v34 == 101)
        {
          v35 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v35 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_308;
      }

      if (v34 > 200)
      {
        if (v34 == 201)
        {
          v35 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v35 = @"UPDATED_LOCATION";
        }

        goto LABEL_308;
      }

      if (v34 == 103)
      {
        v35 = @"FETCH_RESOURCE";
        goto LABEL_308;
      }

      if (v34 != 200)
      {
        goto LABEL_227;
      }

      v35 = @"START_LOCATION_UPDATE";
    }

LABEL_308:
    *buf = 138412546;
    v50 = v33;
    v51 = 2112;
    v52 = v35;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Was told to clear nav preview without a context but our current context is from gizmo (%@); allowing (%@) message to be sent to Maps", buf, 0x16u);

    goto LABEL_309;
  }

LABEL_317:
}

- (void)_handlePreviewNavMessage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [v4 argumentForTag:417];
  v6 = [v5 dataListValues];

  v7 = [v6 lastObject];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v4 argumentForTag:405];
    v9 = [v10 dataValue];
  }

  v11 = [v6 firstObject];
  if (v11)
  {
    v12 = v11;
    v13 = v9 == 0;
    goto LABEL_6;
  }

  v16 = [v4 argumentForTag:404];
  v12 = [v16 dataValue];

  v13 = v9 == 0;
  if (v12 | v9)
  {
    if (!v12)
    {
      v14 = 0;
      v15 = 0;
      if (!v9)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_6:
    v14 = [[GEOMapItemStorage alloc] initWithData:v12];
    if (v13)
    {
      v15 = 0;
LABEL_13:
      v78 = v15;
      if (![v6 count] && !v14 && !v15)
      {
        v81 = NSLocalizedDescriptionKey;
        v82 = NSLocalizedFailureReasonErrorKey;
        *buf = @"The destination was invalid";
        *&buf[8] = @"The destination was invalid";
        v20 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:2];
        v19 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:4 userInfo:v20];

        v21 = objc_alloc_init(NMReply);
        v22 = [[NMArgument alloc] _nm_initWithErrorValue:v19 tag:3];
        [(NMReply *)v21 addArgument:v22];
        v23 = +[NMCGizmoConnection sharedInstance];
        [v23 sendReply:v21 forMessage:v4 options:0];
LABEL_70:

        v18 = v78;
        goto LABEL_71;
      }

      if ([v6 count])
      {
        v76 = sub_1000282B8(v6, &stru_100085EC8);
      }

      else
      {
        if (v14)
        {
          [NanoDirectionWaypoint directionWaypointWithGEOMapItem:v14];
        }

        else
        {
          [NanoDirectionWaypoint directionWaypointForCurrentLocation:0];
        }
        v24 = ;
        if (v15)
        {
          [NanoDirectionWaypoint directionWaypointWithGEOMapItem:v15];
        }

        else
        {
          [NanoDirectionWaypoint directionWaypointForCurrentLocation:0];
        }
        v25 = ;
        v80[0] = v24;
        v80[1] = v25;
        v76 = [NSArray arrayWithObjects:v80 count:2];
      }

      v26 = [v4 argumentForTag:406];
      v27 = [v26 dataValue];

      v28 = [(NMReply *)v27 length];
      v69 = v27;
      if (v28)
      {
        v28 = [[GEOCompanionRouteContext alloc] initWithData:v27];
      }

      v75 = v28;
      v29 = [v4 argumentForTag:407];
      v72 = v29;
      if (v29)
      {
        [v29 doubleValue];
        v77 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v77 = 0;
      }

      v30 = [v4 argumentForTag:408];
      v71 = v30;
      if (v30)
      {
        [v30 doubleValue];
        v70 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v70 = 0;
      }

      v31 = [v4 argumentForTag:413];
      v32 = [v31 dataValue];

      if (v32)
      {
        v67 = [[GEOAutomobileOptions alloc] initWithData:v32];
      }

      else
      {
        v67 = 0;
      }

      v33 = [v4 argumentForTag:414];
      v34 = [v33 dataValue];

      v66 = v34;
      if (v34)
      {
        v65 = [[GEOTransitOptions alloc] initWithData:v34];
      }

      else
      {
        v65 = 0;
      }

      v35 = [v4 argumentForTag:415];
      v36 = [v35 dataValue];

      if (v36)
      {
        v64 = [[GEOWalkingOptions alloc] initWithData:v36];
      }

      else
      {
        v64 = 0;
      }

      v37 = [v4 argumentForTag:416];
      v38 = [v37 dataValue];

      v68 = v32;
      if (v38)
      {
        v63 = [[GEOCyclingOptions alloc] initWithData:v38];
      }

      else
      {
        v63 = 0;
      }

      v39 = [[NMCRPCGizmoPreviewState alloc] initWithMessage:v4];
      gizmoPreviewState = self->_gizmoPreviewState;
      self->_gizmoPreviewState = v39;

      v41 = [v4 argumentForTag:400];
      v42 = [v41 intValue];

      v74 = v9;
      if (v42 <= 3)
      {
        if (v42 == 2)
        {
          v43 = 2;
          goto LABEL_56;
        }
      }

      else
      {
        switch(v42)
        {
          case 4:
            v43 = 1;
            goto LABEL_56;
          case 8:
            v43 = 3;
            goto LABEL_56;
          case 0xFFFFFFFLL:
            v43 = 4;
LABEL_56:
            v73 = v14;
            v44 = sub_100053324();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v45 = *(&off_100085FF0 + v43);
              v46 = [v75 simpleDescription];
              *buf = 138412546;
              *&buf[4] = v45;
              *&buf[12] = 2112;
              *&buf[14] = v46;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Will preview directions (transportType:%@, context:%@)", buf, 0x16u);
            }

            routePlanningSession = self->_routePlanningSession;
            if (routePlanningSession)
            {
              v48 = [(NanoRoutePlanningSession *)routePlanningSession request];
              v49 = [v48 companionRouteContext];

              v50 = sub_100053324();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
              {
                v51 = [v49 simpleDescription];
                *buf = 138412290;
                *&buf[4] = v51;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Invalidating existing route planning session (context, %@)", buf, 0xCu);
              }

              lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
              self->_lastInvalidatedCompanionRouteContext = v49;
              v53 = v49;

              [(NanoRoutePlanningSession *)self->_routePlanningSession unregisterObserver:self];
              [(NanoRoutePlanningSession *)self->_routePlanningSession invalidate];
              snapshot = self->_snapshot;
              self->_snapshot = 0;

              v55 = self->_routePlanningSession;
              self->_routePlanningSession = 0;
            }

            v56 = +[GEOMapService sharedService];
            v57 = [v56 defaultTraits];
            v22 = v75;
            v58 = [NanoRoutePlanningRequest requestWithWaypoints:v76 viaTransportType:v43 traits:v57 companionRouteContext:v75];

            if (v77 || v70 || v67 || v65 || v64 || v63)
            {
              v59 = [v58 mutableCopy];
              [v59 setDepartureDate:v77];
              [v59 setArrivalDate:v70];
              [v59 setAutomobileOptions:v67];
              [v59 setTransitOptions:v65];
              [v59 setWalkingOptions:v64];
              [v59 setCyclingOptions:v63];
              v60 = [v59 copy];

              v22 = v75;
              v58 = v60;
            }

            v14 = v73;
            v9 = v74;
            [(NMCRoutePlanningController *)self _setCurrentSessionInputOrigin:3];
            v61 = objc_alloc_init(NanoRoutePlanningSession);
            v62 = self->_routePlanningSession;
            self->_routePlanningSession = v61;

            [(NanoRoutePlanningSession *)self->_routePlanningSession setShouldBroadcast:1];
            [(NanoRoutePlanningSession *)self->_routePlanningSession registerObserver:self];
            [(NanoRoutePlanningSession *)self->_routePlanningSession processRequest:v58];

            v19 = v76;
            v23 = v72;
            v21 = v69;
            goto LABEL_70;
        }
      }

      v43 = 0;
      goto LABEL_56;
    }

LABEL_12:
    v15 = [[GEOMapItemStorage alloc] initWithData:v9];
    goto LABEL_13;
  }

  v81 = NSLocalizedDescriptionKey;
  v82 = NSLocalizedFailureReasonErrorKey;
  *buf = @"No destination was provided";
  *&buf[8] = @"No destination was provided";
  v17 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:2];
  v12 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:3 userInfo:v17];

  v14 = objc_alloc_init(NMReply);
  v18 = [[NMArgument alloc] _nm_initWithErrorValue:v12 tag:3];
  [(NMReply *)v14 addArgument:v18];
  v19 = +[NMCGizmoConnection sharedInstance];
  [v19 sendReply:v14 forMessage:v4 options:0];
LABEL_71:
}

- (void)_notifyNanoMapsRoutePlanningSessionDidStartLoading:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [v4 request];
  v6 = sub_100053324();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 companionRouteContext];
    v8 = [v7 simpleDescription];
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Notifying NanoMaps: session did start (context:%@)", buf, 0xCu);
  }

  v9 = [v5 requestedCompanionRouteDetails];
  v10 = v9;
  if (v9)
  {
    v14 = v9;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12 = [v4 request];
    v13 = [v12 companionRouteContext];
    [(NMCRoutePlanningController *)self _sendPreviewRoutes:v11 atIndexes:0 error:0 companionRouteContext:v13 includeSyntheticRoute:0];
  }
}

- (void)_notifyNanoMapsRoutePlanningSessionDidUpdateResponse:(id)a3 changedRouteIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = sub_100053324();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 request];
    v10 = [v9 companionRouteContext];
    v11 = [v10 simpleDescription];
    *buf = 138412290;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notifying NanoMaps: did receive routes (context:%@)", buf, 0xCu);
  }

  gizmoPreviewState = self->_gizmoPreviewState;
  if (gizmoPreviewState)
  {
    v13 = [(NMCRPCGizmoPreviewState *)gizmoPreviewState message];
    v14 = [(NMCRPCGizmoPreviewState *)self->_gizmoPreviewState hasShownNavModeAdvisory];
    v15 = self->_gizmoPreviewState;
    self->_gizmoPreviewState = 0;

    v16 = [v6 response];
    v17 = [v16 lastError];
    v18 = [(NMCRoutePlanningController *)self _replyForMessage:v13 withSafetyWarning:v14 << 63 >> 63 error:v17];

    v19 = +[NMCGizmoConnection sharedInstance];
    [v19 sendReply:v18 forMessage:v13 options:0];
  }

  v20 = [v6 response];
  v21 = [v20 companionRoutes];

  if ([v21 count])
  {
    if (v7)
    {
      sub_1000282B8(v7, &stru_100085F08);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10002339C;
      v22 = v30[3] = &unk_100085F30;
      v31 = v22;
      v23 = [v21 indexesOfObjectsPassingTest:v30];
      v24 = [v23 count];
      if (v24 == [v21 count])
      {

        v23 = 0;
      }

      else
      {
        v25 = sub_100053324();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v23 count];
          v27 = [v21 count];
          *buf = 134218240;
          v33 = v26;
          v34 = 2048;
          v35 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Filtered %lu to %lu companion routes to send", buf, 0x16u);
        }

        if (![v23 count])
        {
          v29 = sub_100053324();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "No routes to send after filtering, bailing", buf, 2u);
          }

          v28 = v31;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    v22 = [v6 request];
    v28 = [v22 companionRouteContext];
    [(NMCRoutePlanningController *)self _sendPreviewRoutes:v21 atIndexes:v23 error:0 companionRouteContext:v28 includeSyntheticRoute:0];
LABEL_15:
  }
}

- (void)_notifyNanoMapsRoutePlanningSession:(id)a3 didReceiveRouteUpdatesForRoutes:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  [v6 response];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000235C0;
  v17 = v16[3] = &unk_100085E88;
  v8 = v17;
  v9 = sub_1000282B8(v7, v16);
  v10 = sub_100053324();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v6 request];
    v12 = [v11 companionRouteContext];
    v13 = [v12 simpleDescription];
    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Notifying NanoMaps: did receive updates for routes: %@ (context:%@)", buf, 0x16u);
  }

  v14 = [v6 request];
  v15 = [v14 companionRouteContext];
  [(NMCRoutePlanningController *)self _sendRouteUpdates:v9 context:v15];
}

- (void)_notifyNanoMapsRoutePlanningSessionDidSelectRoute:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [v4 response];
  v6 = [v5 routes];
  v7 = [v4 selectedRoute];
  v8 = [v6 indexOfObject:v7];

  v9 = sub_100053324();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v4 request];
    v11 = [v10 companionRouteContext];
    v12 = [v11 simpleDescription];
    v21 = 134218242;
    v22 = v8;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Notifying NanoMaps: did select route (index:%lu, context:%@)", &v21, 0x16u);
  }

  v13 = +[NMCGizmoConnection sharedInstance];
  v14 = [v13 canSendMessageWithType:309];

  if (v14)
  {
    v15 = [v4 request];
    v16 = [v15 companionRouteContext];
    [(NMCRoutePlanningController *)self _sendSelectedPreviewRouteIndex:v8 context:v16];
  }

  else
  {
    v17 = [v4 response];
    v18 = [v17 companionRoutes];
    v15 = [v18 objectAtIndexedSubscript:v8];

    v16 = +[NMCNavigationProxy sharedInstance];
    v19 = [v4 request];
    v20 = [v19 companionRouteContext];
    [v16 _legacy_sendPreviewRouteDetails:v15 context:v20];
  }
}

- (void)_notifyNanoMapsRoutePlanningSessionDidFail:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = sub_100053324();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 response];
    v7 = [v6 lastError];
    v8 = [v4 request];
    v9 = [v8 companionRouteContext];
    v10 = [v9 simpleDescription];
    v22 = 138412546;
    v23 = v7;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Notifying NanoMaps: session failed with error: %@ (context:%@)", &v22, 0x16u);
  }

  gizmoPreviewState = self->_gizmoPreviewState;
  if (gizmoPreviewState)
  {
    v12 = [(NMCRPCGizmoPreviewState *)gizmoPreviewState message];
    v13 = self->_gizmoPreviewState;
    self->_gizmoPreviewState = 0;

    v14 = [v4 response];
    v15 = [v14 lastError];
    v16 = [(NMCRoutePlanningController *)self _replyForMessage:v12 withSafetyWarning:-1 error:v15];

    v17 = +[NMCGizmoConnection sharedInstance];
    [v17 sendReply:v16 forMessage:v12 options:0];
  }

  v18 = [v4 response];
  v19 = [v18 lastError];
  v20 = [v4 request];
  v21 = [v20 companionRouteContext];
  [(NMCRoutePlanningController *)self _sendPreviewRoutes:0 atIndexes:0 error:v19 companionRouteContext:v21 includeSyntheticRoute:0];
}

- (void)_notifyNanoMapsRoutePlanningSessionDidInvalidate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = sub_100053324();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 request];
    v7 = [v6 companionRouteContext];
    v8 = [v7 simpleDescription];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Notifying NanoMaps: session invalidated (context:%@)", &v12, 0xCu);
  }

  v9 = [v4 request];
  v10 = [v9 companionRouteContext];
  v11 = [v10 data];
  [(NMCRoutePlanningController *)self _sendClearPreviewWithContext:v11];
}

- (void)_sendPreviewRoutes:(id)a3 atIndexes:(id)a4 error:(id)a5 companionRouteContext:(id)a6 includeSyntheticRoute:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v16 = +[NMCGizmoConnection sharedInstance];
  v17 = [v16 canSendMessageWithType:308];

  if ((v17 & 1) == 0)
  {
    v21 = +[NMCNavigationProxy sharedInstance];
    v22 = [v12 firstObject];
    [v21 _legacy_sendPreviewRouteDetails:v22 context:v15];

    goto LABEL_26;
  }

  v18 = +[NMCGizmoConnection sharedInstance];
  v19 = [v12 firstObject];
  v20 = [v18 supportsTransportType:{objc_msgSend(v19, "transportType")}];

  if (v20)
  {
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v23 = sub_100053324();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Gizmo does not support transport type of first route, sending error instead", buf, 2u);
  }

  v61[0] = NSLocalizedDescriptionKey;
  v61[1] = NSLocalizedFailureReasonErrorKey;
  *buf = @"Transport type not supported";
  *&buf[8] = @"Transport type not supported";
  v24 = [NSDictionary dictionaryWithObjects:buf forKeys:v61 count:2];
  v25 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:7 userInfo:v24];

  v14 = v25;
  if (v15)
  {
LABEL_9:
    v26 = +[NMCGizmoConnection sharedInstance];
    v59 = @"NMSendMessageOptionTimeout";
    v60 = &off_10008C768;
    v27 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v28 = [v15 data];
    [v26 cancelAllMessagesOfType:308];
    [v26 cancelAllMessagesOfType:312];
    if (v14)
    {
      v29 = sub_100053324();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Will send no-routes+error to gizmo", buf, 2u);
      }

      v30 = [(NMCRoutePlanningController *)self _messageForNoRoutesWithError:v14 routeContextData:v28];
      [v26 sendMessage:v30 options:v27];
    }

    else
    {
      v31 = [v12 count];
      v32 = v31;
      if (v7)
      {
        v47 = v31;
        v48 = v28;
        v49 = v27;
        v33 = [v12 firstObject];
        v34 = sub_100053324();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = [v33 composedOrigin];
          v36 = [v33 composedDestination];
          *buf = 138412802;
          *&buf[4] = v33;
          *&buf[12] = 2112;
          *&buf[14] = v35;
          v57 = 2112;
          v58 = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Will send synthetic route ahead of full routes: %@, origin: %@, destination: %@", buf, 0x20u);
        }

        [v33 waypoints];
        v37 = v33;
        v38 = v46 = v33;
        v39 = [v37 transportType];
        v40 = [v37 destinationName];
        v41 = [GEOCompanionRouteDetails syntheticRouteDetailsWithWaypoints:v38 transportType:v39 destinationName:v40];

        v42 = [v41 data];
        v43 = -[NMCRoutePlanningController _messageForRouteDetailsData:index:count:routeContextData:](self, "_messageForRouteDetailsData:index:count:routeContextData:", v42, 0, [v12 count], v48);

        [v43 setPriority:300];
        v27 = v49;
        [v26 sendMessage:v43 options:v49];

        v28 = v48;
        v32 = v47;
      }

      v44 = sub_100053324();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        if (v45)
        {
          *buf = 138412546;
          *&buf[4] = v13;
          *&buf[12] = 2048;
          *&buf[14] = v32;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Will send routes %@ to gizmo (out of all %lu)", buf, 0x16u);
        }
      }

      else
      {
        if (v45)
        {
          *buf = 134217984;
          *&buf[4] = v32;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Will send %lu routes to gizmo", buf, 0xCu);
        }

        v13 = [NSIndexSet indexSetWithIndexesInRange:0, v32];
      }

      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1000241C8;
      v50[3] = &unk_100085F58;
      v50[4] = self;
      v55 = v32;
      v51 = v28;
      v13 = v13;
      v52 = v13;
      v53 = v26;
      v54 = v27;
      [v12 enumerateObjectsAtIndexes:v13 options:0 usingBlock:v50];
    }
  }

LABEL_26:
}

- (void)_sendSelectedPreviewRouteIndex:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && v6)
  {
    v7 = objc_alloc_init(NMMessage);
    [(NMMessage *)v7 setType:309];
    v8 = objc_alloc_init(NMArgument);
    [(NMArgument *)v8 setIntValue:a3];
    [(NMArgument *)v8 setTag:409];
    [(NMMessage *)v7 addArgument:v8];
    v9 = objc_alloc_init(NMArgument);
    v10 = [v6 data];
    [(NMArgument *)v9 setDataValue:v10];

    [(NMArgument *)v9 setTag:406];
    [(NMMessage *)v7 addArgument:v9];
    v11 = +[NMCGizmoConnection sharedInstance];
    v13 = @"NMSendMessageOptionTimeout";
    v14 = &off_10008C768;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v11 sendMessage:v7 options:v12];
  }
}

- (void)_sendRouteUpdates:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [[GEOCompanionRouteUpdate alloc] initWithTransitRouteUpdate:*(*(&v19 + 1) + 8 * v10)];
        v12 = objc_alloc_init(NMMessage);
        [(NMMessage *)v12 setType:312];
        v13 = objc_alloc_init(NMArgument);
        [(NMArgument *)v13 setTag:412];
        v14 = [v11 data];
        [(NMArgument *)v13 setDataValue:v14];

        [(NMMessage *)v12 addArgument:v13];
        v15 = objc_alloc_init(NMArgument);
        [(NMArgument *)v15 setTag:406];
        v16 = [v6 data];
        [(NMArgument *)v15 setDataValue:v16];

        [(NMMessage *)v12 addArgument:v15];
        v17 = +[NMCGizmoConnection sharedInstance];
        [v17 sendMessage:v12 options:0];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)_sendClearPreviewWithContext:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (v4)
  {
    v5 = objc_alloc_init(NMMessage);
    [(NMMessage *)v5 setType:305];
    v6 = objc_alloc_init(NMArgument);
    [(NMArgument *)v6 setDataValue:v4];
    [(NMArgument *)v6 setTag:406];
    [(NMMessage *)v5 addArgument:v6];
    v7 = +[NMCGizmoConnection sharedInstance];
    v9 = @"NMSendMessageOptionTimeout";
    v10 = &off_10008C768;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v7 sendMessage:v5 options:v8];
  }
}

- (id)_messageForRouteDetailsData:(id)a3 index:(unint64_t)a4 count:(unint64_t)a5 routeContextData:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = objc_alloc_init(NMMessage);
  [(NMMessage *)v11 setType:308];
  v12 = objc_alloc_init(NMArgument);
  [(NMArgument *)v12 setDataValue:v10];

  [(NMArgument *)v12 setTag:401];
  [(NMMessage *)v11 addArgument:v12 withCompressionType:1];
  v13 = objc_alloc_init(NMArgument);
  [(NMArgument *)v13 setIntValue:a4];
  [(NMArgument *)v13 setTag:409];
  [(NMMessage *)v11 addArgument:v13];
  v14 = objc_alloc_init(NMArgument);
  [(NMArgument *)v14 setIntValue:a5];
  [(NMArgument *)v14 setTag:410];
  [(NMMessage *)v11 addArgument:v14];
  v15 = objc_alloc_init(NMArgument);
  [(NMArgument *)v15 setDataValue:v9];

  [(NMArgument *)v15 setTag:406];
  [(NMMessage *)v11 addArgument:v15];

  return v11;
}

- (id)_messageForNoRoutesWithError:(id)a3 routeContextData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NMMessage);
  [(NMMessage *)v7 setType:308];
  v8 = objc_alloc_init(NMArgument);
  [(NMArgument *)v8 setTag:409];
  [(NMMessage *)v7 addArgument:v8];
  v9 = [[NMArgument alloc] _nm_initWithErrorValue:v6 tag:3];

  [(NMMessage *)v7 addArgument:v9];
  v10 = objc_alloc_init(NMArgument);
  [(NMArgument *)v10 setDataValue:v5];

  [(NMArgument *)v10 setTag:406];
  [(NMMessage *)v7 addArgument:v10];

  return v7;
}

- (id)_replyForMessage:(id)a3 withSafetyWarning:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  if (a3)
  {
    v8 = a3;
    a3 = objc_alloc_init(NMReply);
    if (v7)
    {
      v9 = [[NMArgument alloc] _nm_initWithErrorValue:v7 tag:3];
    }

    else
    {
      v10 = objc_alloc_init(NMArgument);
      v9 = v10;
      if (a4 == -1)
      {
        [(NMArgument *)v10 setTag:1];
      }

      else
      {
        [(NMArgument *)v10 setTag:403];
        [(NMArgument *)v9 setIntValue:a4];
      }
    }

    [a3 addArgument:v9];

    v11 = +[NMCGizmoConnection sharedInstance];
    [v11 sendReply:a3 forMessage:v8 options:0];
  }

  return a3;
}

- (void)_registerXPCRoutes
{
  v3 = +[NSMutableSet set];
  connections = self->_connections;
  self->_connections = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.Maps.NMCRoutePlanningController.XPC", v5);
  isolationQueue = self->_isolationQueue;
  self->_isolationQueue = v6;

  v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanomaps.xpc.Routes"];
  listener = self->_listener;
  self->_listener = v8;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener _setQueue:self->_isolationQueue];
  v10 = self->_listener;

  [(NSXPCListener *)v10 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCRouting];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCRouting];
  [v7 setRemoteObjectInterface:v9];

  [v7 _setQueue:self->_isolationQueue];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100024E50;
  v17[3] = &unk_100085720;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  [v7 setInvalidationHandler:v17];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100024EBC;
  v14 = &unk_100085720;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  [v7 setInterruptionHandler:&v11];
  [(NSMutableSet *)self->_connections addObject:v7, v11, v12, v13, v14];
  [v7 resume];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)_forgetConnection:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (v6)
  {
    [(NSMutableSet *)self->_connections removeObject:v6];
    v8 = sub_100053324();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(NSMutableSet *)self->_connections count];
      v10 = 138412802;
      v11 = v7;
      v12 = 2048;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ XPC connection (%lu remaining peers) %@", &v10, 0x20u);
    }
  }
}

- (void)_enumerateMapsConnectionsUnderAssertionNamed:(id)a3 usingBlock:(id)a4
{
  isolationQueue = self->_isolationQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v9 = [(NSMutableSet *)self->_connections allObjects];
  sub_100013B60(v9, v8, v7);
}

- (void)checkinForRoutePlanning
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = +[NSXPCConnection currentConnection];
  v4 = sub_100053324();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "checkinForRoutePlanning on connection %@", &v5, 0xCu);
  }

  [(NMCRoutePlanningController *)self _checkinForRoutePlanningWithConnection:v3];
}

- (void)anticipateRoutePlanningRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  isolationQueue = self->_isolationQueue;
  v8 = a4;
  dispatch_assert_queue_V2(isolationQueue);
  v9 = sub_100053324();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 companionRouteContext];
    v11 = [v10 simpleDescription];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Anticipate request with context: %@", &v12, 0xCu);
  }

  [(NMCRoutePlanningController *)self _updateRoutePlanningRequest:v6 withResponse:0 completionHandler:v8];
}

- (void)updateRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  isolationQueue = self->_isolationQueue;
  v10 = a5;
  v11 = a4;
  dispatch_assert_queue_V2(isolationQueue);
  v12 = sub_100053324();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v8 companionRouteContext];
    v14 = [v13 simpleDescription];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "updateRoutePlanningRequest:, Update request/response with context: %@", &v15, 0xCu);
  }

  [(NMCRoutePlanningController *)self _updateRoutePlanningRequest:v8 withResponse:v11 completionHandler:v10];
}

- (void)_updateRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v11 = [v8 companionRouteContext];
  v12 = self->_routePlanningSession;
  v13 = [(NanoRoutePlanningSession *)v12 request];
  v14 = [v13 companionRouteContext];
  lastInvalidatedCompanionRouteContext = v14;
  if (!v14)
  {
    lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
  }

  v16 = lastInvalidatedCompanionRouteContext;

  if ([v11 isStaleComparedToContext:v16])
  {
    v17 = sub_100053324();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [(GEOCompanionRouteContext *)v16 simpleDescription];
      v19 = [v11 simpleDescription];
      *buf = 138412546;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "updatePreviewRoutes: incoming route context is old (current:%@, incoming:%@)", buf, 0x16u);
    }
  }

  else
  {
    v26 = v9;
    if (!v16 || [(GEOCompanionRouteContext *)v16 isStaleComparedToContext:v11])
    {
      v20 = sub_100053324();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(GEOCompanionRouteContext *)v16 simpleDescription];
        v22 = [v11 simpleDescription];
        *buf = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "updatePreviewRoutes: incoming context is newer, create new session (current:%@, incoming:%@)", buf, 0x16u);
      }

      objc_storeStrong(&self->_lastInvalidatedCompanionRouteContext, lastInvalidatedCompanionRouteContext);
      [(NanoRoutePlanningSession *)v12 unregisterObserver:self];
      [(NanoRoutePlanningSession *)v12 invalidate];
      v23 = objc_alloc_init(NanoRoutePlanningSession);
      [(NanoRoutePlanningSession *)v23 setShouldBroadcast:1];
      [(NanoRoutePlanningSession *)v23 setNextClass:objc_opt_class() forSessionState:3];
      [(NanoRoutePlanningSession *)v23 setNextClass:objc_opt_class() forSessionState:4];
      [(NanoRoutePlanningSession *)v23 registerObserver:self];
      routePlanningSession = self->_routePlanningSession;
      self->_routePlanningSession = v23;
    }

    v25 = self->_routePlanningSession;

    [(NMCRoutePlanningController *)self _setCurrentSessionInputOrigin:1];
    [(NanoRoutePlanningSession *)v25 updateWithRequest:v8 response:v26];
    v12 = v25;
    v9 = v26;
  }

  v10[2](v10);
}

- (void)failRoutePlanningRequest:(id)a3 withResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_currentSessionInputOrigin == 1)
  {
    v11 = [v8 companionRouteContext];
    v12 = self->_routePlanningSession;
    v13 = [(NanoRoutePlanningSession *)v12 request];
    v14 = [v13 companionRouteContext];
    lastInvalidatedCompanionRouteContext = v14;
    if (!v14)
    {
      lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
    }

    v16 = lastInvalidatedCompanionRouteContext;

    if ([v11 isStaleComparedToContext:v16])
    {
      v17 = sub_100053324();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [(GEOCompanionRouteContext *)v16 simpleDescription];
        v19 = [v11 simpleDescription];
        *buf = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "failRoutePlanningRequest: incoming context is old (current:%@, incoming:%@)", buf, 0x16u);
      }
    }

    else if (v16 && ![(GEOCompanionRouteContext *)v16 isStaleComparedToContext:v11])
    {
      [(NanoRoutePlanningSession *)v12 updateWithRequest:v8 response:v9];
    }

    else
    {
      v20 = sub_100053324();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = [(GEOCompanionRouteContext *)v16 simpleDescription];
        [v11 simpleDescription];
        *buf = 138412546;
        v24 = v22;
        v26 = v25 = 2112;
        v21 = v26;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "failRoutePlanningRequest: incoming context is newer, invalidate current session and ignore incoming (current:%@, incoming:%@)", buf, 0x16u);
      }

      objc_storeStrong(&self->_lastInvalidatedCompanionRouteContext, lastInvalidatedCompanionRouteContext);
      [(NanoRoutePlanningSession *)v12 unregisterObserver:self];
      [(NanoRoutePlanningSession *)v12 invalidate];
    }

    v10[2](v10);
  }

  else
  {
    v10[2](v10);
  }
}

- (void)updateRoutePlanningRequest:(id)a3 withSelectedRouteID:(id)a4 completionHandler:(id)a5
{
  isolationQueue = self->_isolationQueue;
  v8 = a5;
  v9 = a4;
  dispatch_assert_queue_V2(isolationQueue);
  [(NMCRoutePlanningController *)self _setCurrentSessionInputOrigin:1];
  v10 = [NSUUID _maps_UUIDWithData:v9];

  [(NanoRoutePlanningSession *)self->_routePlanningSession setSelectedRouteWithRouteID:v10];
  v8[2](v8);
}

- (void)clearRoutePlanningWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = self->_routePlanningSession;
  v9 = [(NanoRoutePlanningSession *)v8 request];
  v10 = [v9 companionRouteContext];
  lastInvalidatedCompanionRouteContext = v10;
  if (!v10)
  {
    lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
  }

  v12 = lastInvalidatedCompanionRouteContext;

  if ([v6 isStaleComparedToContext:v12])
  {
    v13 = sub_100053324();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(GEOCompanionRouteContext *)v12 simpleDescription];
      v15 = [v6 simpleDescription];
      *buf = 138412546;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "clearRoutePlanningRequest: incoming context is old (current:%@, incoming:%@)", buf, 0x16u);
    }

LABEL_12:
    v7[2](v7);
    goto LABEL_13;
  }

  if (!v12 || [(GEOCompanionRouteContext *)v12 isStaleComparedToContext:v6])
  {
    v16 = sub_100053324();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(GEOCompanionRouteContext *)v12 simpleDescription];
      v18 = [v6 simpleDescription];
      *buf = 138412546;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "clearRoutePlanningRequest: incoming context is newer, invalidate current session and ignore incoming (current:%@, incoming:%@)", buf, 0x16u);
    }

    [(NanoRoutePlanningSession *)v8 unregisterObserver:self];
    [(NanoRoutePlanningSession *)v8 invalidate];
    goto LABEL_12;
  }

  v19 = self->_routePlanningSession;
  snapshot = self->_snapshot;
  self->_snapshot = 0;

  routePlanningSession = self->_routePlanningSession;
  self->_routePlanningSession = 0;

  if (v19)
  {
    v22 = sub_100053324();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = [(NanoRoutePlanningSession *)v19 request];
      v23 = [v25 companionRouteContext];
      v24 = [v23 simpleDescription];
      *buf = 138412290;
      v27 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Maps asked us to clear route planning (context:%@)", buf, 0xCu);
    }

    objc_storeStrong(&self->_lastInvalidatedCompanionRouteContext, lastInvalidatedCompanionRouteContext);
    [(NanoRoutePlanningSession *)v19 unregisterObserver:self];
    [(NanoRoutePlanningSession *)v19 invalidate];
    [(NMCRoutePlanningController *)self _notifyNanoMapsRoutePlanningSessionDidInvalidate:v19];
  }

  v7[2](v7);

LABEL_13:
}

- (void)_checkinForRoutePlanningWithConnection:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = +[NMCGizmoConnection sharedInstance];
  v6 = [v5 supportsXPCUseMapsForRoutePlanning];

  if ((v6 & 1) == 0)
  {
    routePlanningSession = self->_routePlanningSession;
    if (routePlanningSession)
    {
      v8 = routePlanningSession;
      v9 = [(NanoRoutePlanningSession *)v8 request];
      v10 = [(NanoRoutePlanningSession *)v8 response];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100025E68;
      v13[3] = &unk_100085F80;
      v14 = v4;
      v15 = v9;
      v16 = v10;
      v11 = v10;
      v12 = v9;
      sub_100013C38(@"com.apple.Maps.launchFromGizmo.preview.synchronize", v13);
    }
  }
}

- (void)_notifyMapsRoutePlanningSessionDidStartLoading:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = +[NMCGizmoConnection sharedInstance];
  v6 = [v5 supportsXPCUseMapsForRoutePlanning];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 request];
    v8 = [v7 companionRouteContext];
    v9 = sub_100053324();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 simpleDescription];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Notifying Maps: session did start (context:%@)", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000260CC;
    v12[3] = &unk_100085FA8;
    v13 = v7;
    v11 = v7;
    [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.anticipate" usingBlock:v12];
  }
}

- (void)_notifyMapsRoutePlanningSessionDidUpdateResponse:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = +[NMCGizmoConnection sharedInstance];
  v6 = [v5 supportsXPCUseMapsForRoutePlanning];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 request];
    v8 = [v4 response];
    v9 = [v7 companionRouteContext];
    v10 = sub_100053324();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 simpleDescription];
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Notifying Maps: session did receive routes (context:%@)", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100026368;
    v14[3] = &unk_100085FD0;
    v15 = v7;
    v16 = v8;
    v12 = v8;
    v13 = v7;
    [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.routes" usingBlock:v14];
  }
}

- (void)_notifyMapsRoutePlanningSessionDidSelectRoute:(id)a3
{
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v6 = [v5 request];
  v7 = [v5 selectedRoute];

  v8 = [v7 uniqueRouteID];
  v9 = [v8 _maps_data];

  v10 = [v6 companionRouteContext];
  v11 = sub_100053324();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 simpleDescription];
    *buf = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Notifying Maps: did select route (routeID:%@, context:%@)", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100026610;
  v15[3] = &unk_100085FD0;
  v16 = v6;
  v17 = v9;
  v13 = v9;
  v14 = v6;
  [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.select" usingBlock:v15];
}

- (void)_notifyMapsRoutePlanningSessionDidFail:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = +[NMCGizmoConnection sharedInstance];
  v6 = [v5 supportsXPCUseMapsForRoutePlanning];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 request];
    v8 = [v4 response];
    v9 = [v7 companionRouteContext];
    v10 = sub_100053324();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v8 lastError];
      v12 = [v9 simpleDescription];
      *buf = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Notifying Maps: session failed with error: %@ (context:%@)", buf, 0x16u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000268D0;
    v15[3] = &unk_100085FD0;
    v16 = v7;
    v17 = v8;
    v13 = v8;
    v14 = v7;
    [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.fail" usingBlock:v15];
  }
}

- (void)_notifyMapsRoutePlanningSessionDidInvalidate:(id)a3
{
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v6 = [v5 request];

  v7 = [v6 companionRouteContext];

  v8 = sub_100053324();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 simpleDescription];
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notifying Maps: session invalidated (context:%@)", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026B1C;
  v11[3] = &unk_100085FA8;
  v12 = v7;
  v10 = v7;
  [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.clear" usingBlock:v11];
}

@end