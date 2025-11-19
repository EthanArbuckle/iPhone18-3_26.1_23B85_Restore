@interface NavdTTLCache
- (NavdTTLCache)init;
- (NavdTTLCache)initWithCacheOperationQueue:(id)a3 localProxy:(id)a4;
- (id)findEntryForKey:(id)a3;
- (void)_resolvedMapItem:(id)a3 error:(id)a4 forPendingCacheEntry:(id)a5 uuid:(id)a6 osTransaction:(id)a7 clientInfo:(id)a8;
- (void)_resolvedMapItem:(id)a3 toOnlyPerformLocalUpdatesForPlannedDestination:(id)a4 client:(id)a5 osTransaction:(id)a6;
- (void)_resolvedMapItem:(id)a3 toPostUINotification:(unint64_t)a4 forDestination:(id)a5 client:(id)a6 osTransaction:(id)a7;
- (void)_resolvedMapItem:(id)a3 toRefreshPlannedDestination:(id)a4 client:(id)a5 osTransaction:(id)a6;
- (void)_resolvedMapItem:(id)a3 toStopMonitoringPlannedDestination:(id)a4 clientInfo:(id)a5 uuid:(id)a6 osTransaction:(id)a7;
- (void)_resolvedOriginWaypoint:(id)a3 originWaypointError:(id)a4 destinationWaypoint:(id)a5 destinationWaypointError:(id)a6 forKey:(id)a7 pendingCacheEntry:(id)a8 osTransaction:(id)a9 clientInfo:(id)a10;
- (void)callHandlers:(id)a3 withHypothesis:(id)a4;
- (void)didPostUINotification:(unint64_t)a3 forDestination:(id)a4 client:(id)a5 osTransaction:(id)a6;
- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)a3 client:(id)a4 osTransaction:(id)a5;
- (void)removeEntry:(id)a3 withKey:(id)a4 value:(id)a5;
- (void)requestRefreshForPlannedDestination:(id)a3 client:(id)a4 osTransaction:(id)a5;
- (void)shouldPostDarwinNotificationForNextUpdate:(BOOL)a3;
- (void)startMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5 osTransaction:(id)a6 handler:(id)a7;
- (void)stopMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5 osTransaction:(id)a6;
@end

@implementation NavdTTLCache

- (NavdTTLCache)initWithCacheOperationQueue:(id)a3 localProxy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = NavdTTLCache;
  v9 = [(NavdTTLCache *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheOperationQueue, a3);
    v11 = objc_alloc_init(GEORouteHypothesisCache);
    cache = v10->_cache;
    v10->_cache = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    pendingEntriesByKey = v10->_pendingEntriesByKey;
    v10->_pendingEntriesByKey = v13;

    v15 = objc_alloc_init(NSMutableArray);
    entries = v10->_entries;
    v10->_entries = v15;

    objc_storeWeak(&v10->_localProxy, v8);
    v10->_shouldPostDarwinNotificationForNextUpdate = 0;
    v17 = v10->_cache;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100005E04;
    v22[3] = &unk_100064E68;
    v18 = v10;
    v23 = v18;
    [(GEORouteHypothesisCache *)v17 enumerateAllForCacheEntriesWithHandler:v22];
    v19 = objc_alloc_init(NSMutableSet);
    pendingStopUUIDs = v18->_pendingStopUUIDs;
    v18->_pendingStopUUIDs = v19;
  }

  return v10;
}

- (NavdTTLCache)init
{
  [(NavdTTLCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)findEntryForKey:(id)a3
{
  v4 = [(GEORouteHypothesisCache *)self->_cache loadValueForKey:a3];
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_entries;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 rowId];
          if (v11 == [v4 rowId])
          {
            v13 = v10;
            goto LABEL_14;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_ERROR))
    {
      v12 = [v4 rowId];
      *buf = 134217984;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, &v5->super.super, OS_LOG_TYPE_ERROR, "Found a value (with rowId %lld) but didn't find an entry for it!", buf, 0xCu);
    }

    v13 = 0;
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)shouldPostDarwinNotificationForNextUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"no";
    if (v3)
    {
      v6 = @"yes";
    }

    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "_shouldPostDarwinNotificationForNextUpdate set to: %{private}@", &v7, 0xCu);
  }

  self->_shouldPostDarwinNotificationForNextUpdate = v3;
}

- (void)startMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5 osTransaction:(id)a6 handler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3;
  v17 = [[NavdPendingTTLCacheEntry alloc] initWithDestination:v16 forClient:v12 uuid:v13 handler:v15 cacheOperationQueue:self->_cacheOperationQueue navdCache:self];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000062C8;
  v21[3] = &unk_100064E90;
  v21[4] = self;
  v22 = v13;
  v23 = v14;
  v24 = v12;
  v18 = v12;
  v19 = v14;
  v20 = v13;
  [(NavdPendingTTLCacheEntry *)v17 resolveMapItem:v21];
}

- (void)_resolvedMapItem:(id)a3 error:(id)a4 forPendingCacheEntry:(id)a5 uuid:(id)a6 osTransaction:(id)a7 clientInfo:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
  {
    v21 = objc_alloc_init(GEORouteHypothesis);
    [v21 _setError:v15];
    v22 = [v16 clientInfoStates];
    [(NavdTTLCache *)self callHandlers:v22 withHypothesis:v21];
LABEL_17:

    goto LABEL_18;
  }

  if (![(NSMutableSet *)self->_pendingStopUUIDs containsObject:v17])
  {
    v23 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v14];
    [v16 setDestinationLocation:v23];

    v24 = [GEORouteHypothesisKey alloc];
    v25 = [v16 request];
    v21 = [v24 initWithRouteHypothesisRequest:v25];

    v26 = [(NavdTTLCache *)self findEntryForKey:v21];
    v22 = v26;
    if (v26)
    {
      [v26 subsumePendingEntry:v16];
      v40 = -[NavdTTLCache loadEntryForRowId:](self, "loadEntryForRowId:", [v22 rowId]);
      v39 = [v40 objectAtIndexedSubscript:1];
      v27 = [v39 currentHypothesis];
      v28 = v27;
      if (v27)
      {
        v37 = v27;
        v38 = v21;
        v29 = +[NavdLocationLeecher sharedLeecher];
        v30 = [v29 lastLeechedLocation];

        if (v30)
        {
          [v30 course];
          v31 = [GEOLocation locationWithCLLocation:v30 course:?];
          v32 = [v39 monitor];
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_10000674C;
          v46[3] = &unk_100064EB8;
          v46[4] = self;
          v47 = v16;
          [v32 updateLocation:v31 allowServer:0 familiarRouteProvider:0 hypothesisHandler:v46];

          v28 = v37;
        }

        else
        {
          v35 = [v16 clientInfoStates];
          v28 = v37;
          [(NavdTTLCache *)self callHandlers:v35 withHypothesis:v37];
        }

        v21 = v38;
      }

      v34 = v40;
    }

    else
    {
      v33 = [(NSMutableDictionary *)self->_pendingEntriesByKey objectForKeyedSubscript:v21];
      v34 = v33;
      if (v33)
      {
        [v33 subsumePendingCacheEntry:v16];
      }

      else
      {
        [(NSMutableDictionary *)self->_pendingEntriesByKey setObject:v16 forKeyedSubscript:v21];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000067BC;
        v41[3] = &unk_100064EE0;
        v41[4] = self;
        v42 = v21;
        v43 = v16;
        v44 = v18;
        v45 = v19;
        v34 = 0;
        [v43 findWaypointsForKey:v42 handler:v41];
      }
    }

    goto LABEL_17;
  }

  v20 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v49 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Resolved map item but found pending stop for uuid %{private}@, stopping.", buf, 0xCu);
  }

  [(NSMutableSet *)self->_pendingStopUUIDs removeObject:v17];
LABEL_18:
}

- (void)_resolvedOriginWaypoint:(id)a3 originWaypointError:(id)a4 destinationWaypoint:(id)a5 destinationWaypointError:(id)a6 forKey:(id)a7 pendingCacheEntry:(id)a8 osTransaction:(id)a9 clientInfo:(id)a10
{
  v76 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (!(v16 | v18))
  {
    v75 = v17;
    if ([(NSMutableSet *)self->_pendingStopUUIDs count])
    {
      [v20 removePendingStops:self->_pendingStopUUIDs];
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        pendingStopUUIDs = self->_pendingStopUUIDs;
        *buf = 138477827;
        v79 = pendingStopUUIDs;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Removed pendingStopUUIDs: %{private}@", buf, 0xCu);
      }

      [(NSMutableSet *)self->_pendingStopUUIDs removeAllObjects];
    }

    v32 = [v20 clientInfoStates];
    v33 = [v32 count];

    if (!v33)
    {
      v27 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "There are no handlers left, stopping.", buf, 2u);
      }

      goto LABEL_26;
    }

    v70 = v21;
    v71 = v18;
    v72 = self;
    v73 = v16;
    v34 = [v19 request];
    v35 = [v34 transportType];
    v36 = [v19 request];
    [v36 arrivalDate];
    v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v38 = [GEORouteHypothesisMonitor routeAttributesForTransportType:v35 withArrivalDate:v37];

    v39 = [MNRouteAttributes alloc];
    v74 = v22;
    v77[0] = v76;
    v77[1] = v17;
    v40 = v20;
    v41 = [NSArray arrayWithObjects:v77 count:2];
    v69 = v38;
    v42 = [v39 initWithAttributes:v38 waypoints:v41];

    v66 = [GEORouteHypothesisValue alloc];
    v43 = [v19 request];
    [v43 arrivalDate];
    v44 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v67 = v19;
    v45 = v19;
    v46 = v40;
    v47 = [v45 request];
    [v47 expirationDate];
    v48 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v49 = [v46 traceName];
    v50 = +[GEOMapService sharedService];
    v51 = [v50 navd_defaultTraitsForNavd];
    v68 = v42;
    v52 = [v66 initWithSource:v76 toDestination:v75 arrivalDate:v44 expirationDate:v48 traceName:v49 traits:v51 routeAttributes:v42 clientInfo:v74];

    [v52 setValueRefreshTimeStamp:CFAbsoluteTimeGetCurrent()];
    if ([v52 canBePersistedToDisk])
    {
      v20 = v46;
      self = v72;
      v19 = v67;
      [(GEORouteHypothesisCache *)v72->_cache saveValue:v52 forKey:v67];
      v21 = v70;
      if ([v52 rowId] == -1)
      {
        v55 = objc_alloc_init(GEORouteHypothesis);
        v63 = [NSError alloc];
        v64 = GEOErrorDomain();
        WeakRetained = [v63 initWithDomain:v64 code:-1501 userInfo:0];

        [(NavdTTLCacheEntry *)v55 _setError:WeakRetained];
        v65 = [v20 clientInfoStates];
        [(NavdTTLCache *)v72 callHandlers:v65 withHypothesis:v55];
      }

      else
      {
        v53 = [NavdTTLCacheEntry alloc];
        v54 = [v52 rowId];
        [v52 valueRefreshTimeStamp];
        v55 = [(NavdTTLCacheEntry *)v53 initWithRowId:v54 refreshTimestamp:0 state:v72->_cacheOperationQueue cacheOperationQueue:v72 cache:?];
        v56 = [v20 traceName];
        [(NavdTTLCacheEntry *)v55 setTraceName:v56];

        [(NavdTTLCacheEntry *)v55 subsumePendingEntry:v20];
        [(NSMutableArray *)v72->_entries addObject:v55];
        WeakRetained = objc_loadWeakRetained(&v72->_localProxy);
        [WeakRetained _refreshCacheEntriesIfNeededOrForced:0 osTransaction:v70];
      }

      v22 = v74;
      v27 = v69;
    }

    else
    {
      v58 = [v46 clientInfoStates];
      v59 = [v58 count];

      self = v72;
      v20 = v46;
      v19 = v67;
      v27 = v69;
      v21 = v70;
      v22 = v74;
      if (!v59)
      {
LABEL_25:

        v16 = v73;
        v17 = v75;
        v18 = v71;
LABEL_26:

        goto LABEL_27;
      }

      v55 = objc_alloc_init(GEORouteHypothesis);
      v60 = [NSError alloc];
      v61 = GEOErrorDomain();
      WeakRetained = [v60 initWithDomain:v61 code:-1501 userInfo:0];

      [(NavdTTLCacheEntry *)v55 _setError:WeakRetained];
      v62 = [v20 clientInfoStates];
      [(NavdTTLCache *)v72 callHandlers:v62 withHypothesis:v55];
    }

    goto LABEL_25;
  }

  v23 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544130;
    v79 = v76;
    v80 = 2114;
    v81 = v16;
    v82 = 2114;
    v83 = v17;
    v84 = 2114;
    v85 = v18;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get a waypoints. OriginWaypoint: %{public}@, OriginWaypointError: %{public}@, DestinationWaypoint: %{public}@, Destination Waypoint Error: %{public}@", buf, 0x2Au);
  }

  v24 = [v20 clientInfoStates];
  v25 = [v24 count];

  if (v25)
  {
    v26 = objc_alloc_init(GEORouteHypothesis);
    v27 = v26;
    if (v16)
    {
      v28 = v16;
    }

    else
    {
      v28 = v18;
    }

    [v26 _setError:v28];
    v29 = [v20 clientInfoStates];
    [(NavdTTLCache *)self callHandlers:v29 withHypothesis:v27];

    goto LABEL_26;
  }

LABEL_27:
  [(NSMutableDictionary *)self->_pendingEntriesByKey removeObjectForKey:v19];
}

- (void)_resolvedMapItem:(id)a3 toRefreshPlannedDestination:(id)a4 client:(id)a5 osTransaction:(id)a6
{
  v9 = a6;
  if (a3)
  {
    v10 = a4;
    v11 = a3;
    v12 = objc_alloc_init(GEORouteHypothesisRequest);
    [v12 setTransportType:{objc_msgSend(v10, "transportType")}];
    v13 = [v10 arrivalDate];

    [v13 timeIntervalSinceReferenceDate];
    [v12 setArrivalDate:?];

    v14 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v11];

    [v12 setDestinationLocation:v14];
    v15 = [[GEORouteHypothesisKey alloc] initWithRouteHypothesisRequest:v12];
    v16 = [(NavdTTLCache *)self findEntryForKey:v15];
    if (v16)
    {
      WeakRetained = objc_loadWeakRetained(&self->_localProxy);
      [WeakRetained _refreshCacheEntriesIfNeededOrForced:0 osTransaction:v9];
    }

    else
    {
      WeakRetained = GEOFindOrCreateLog();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        v18 = 138477827;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "No entry found with key: %{private}@", &v18, 0xCu);
      }
    }
  }
}

- (void)requestRefreshForPlannedDestination:(id)a3 client:(id)a4 osTransaction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[GEOMapService sharedService];
  v12 = [v8 handle];
  v13 = +[GEOMapService sharedService];
  v14 = [v13 navd_defaultTraitsForNavd];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000071EC;
  v18[3] = &unk_100064F30;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v11 resolveMapItemFromHandle:v12 withTraits:v14 useCache:1 coordinateOnlyRefinement:1 completionHandler:v18];
}

- (void)_resolvedMapItem:(id)a3 toOnlyPerformLocalUpdatesForPlannedDestination:(id)a4 client:(id)a5 osTransaction:(id)a6
{
  v19 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(GEORouteHypothesisRequest);
  [v11 setTransportType:{objc_msgSend(v9, "transportType")}];
  v12 = [v9 arrivalDate];

  [v12 timeIntervalSinceReferenceDate];
  [v11 setArrivalDate:?];

  v13 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v10];

  [v11 setDestinationLocation:v13];
  v14 = [[GEORouteHypothesisKey alloc] initWithRouteHypothesisRequest:v11];
  v15 = [(NavdTTLCache *)self findEntryForKey:v14];
  v16 = v15;
  if (v15)
  {
    [v15 setLocalUpdatesOnlyForClientInfo:v19];
  }

  else
  {
    v17 = [(NSMutableDictionary *)self->_pendingEntriesByKey objectForKeyedSubscript:v14];
    v18 = v17;
    if (v17)
    {
      [v17 setLocalUpdatesOnlyForClientInfo:v19];
    }
  }
}

- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)a3 client:(id)a4 osTransaction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[GEOMapService sharedService];
  v12 = [v8 handle];
  v13 = +[GEOMapService sharedService];
  v14 = [v13 navd_defaultTraitsForNavd];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000075B0;
  v18[3] = &unk_100064F30;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v11 resolveMapItemFromHandle:v12 withTraits:v14 useCache:1 coordinateOnlyRefinement:1 completionHandler:v18];
}

- (void)_resolvedMapItem:(id)a3 toStopMonitoringPlannedDestination:(id)a4 clientInfo:(id)a5 uuid:(id)a6 osTransaction:(id)a7
{
  v12 = a3;
  v13 = a4;
  v33 = a5;
  v14 = a6;
  v32 = a7;
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    *&buf[4] = v13;
    v37 = 2113;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Resolved Map Item to Stop Monitoring Destination %{private}@ with uuid %{private}@", buf, 0x16u);
  }

  if (v12)
  {
    v16 = objc_alloc_init(GEORouteHypothesisRequest);
    [v16 setTransportType:{objc_msgSend(v13, "transportType", v32)}];
    v17 = [v13 arrivalDate];
    [v17 timeIntervalSinceReferenceDate];
    [v16 setArrivalDate:?];

    v18 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v12];
    [v16 setDestinationLocation:v18];

    v19 = [[GEORouteHypothesisKey alloc] initWithRouteHypothesisRequest:v16];
    v20 = [(NavdTTLCache *)self findEntryForKey:v19];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 hasHandlerForClientInfo:v33];
      v23 = GEOFindOrCreateLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (v22)
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Entry found, removing handler", buf, 2u);
        }

        if (v33)
        {
          [v21 removeHandlerForClientInfo:v33];
        }

        v25 = [(GEORouteHypothesisCache *)self->_cache loadValueForKey:v19];
        if (![v21 handlerCount])
        {
          v26 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "No handlers remain, removing entry", buf, 2u);
          }

          [(NavdTTLCache *)self removeEntry:v21 withKey:v19 value:v25];
        }

LABEL_22:
        goto LABEL_23;
      }

      if (!v24)
      {
LABEL_20:

        if (v14)
        {
          [(NSMutableSet *)self->_pendingStopUUIDs addObject:v14];
          *buf = 0;
          v28 = +[GEONavdDefaults sharedInstance];
          [v28 pendingStopTimeToLive];
          v30 = dispatch_time(0, (v29 * 1000000000.0));

          v31 = dispatch_get_global_queue(17, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100007B28;
          block[3] = &unk_100064F80;
          block[4] = self;
          objc_copyWeak(&v35, buf);
          dispatch_after(v30, v31, block);

          objc_destroyWeak(&v35);
          objc_destroyWeak(buf);
        }

        goto LABEL_22;
      }

      *buf = 138477827;
      *&buf[4] = v14;
      v27 = "Found cache entry but our handle wasn't on it so adding uuid %{private}@ to list of pending stops.";
    }

    else
    {
      v23 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 138477827;
      *&buf[4] = v14;
      v27 = "No cache entry found, adding uuid %{private}@ to list of pending stops.";
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, v27, buf, 0xCu);
    goto LABEL_20;
  }

LABEL_23:
}

- (void)stopMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5 osTransaction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[GEOMapService sharedService];
  v15 = [v10 handle];
  v16 = +[GEOMapService sharedService];
  v17 = [v16 navd_defaultTraitsForNavd];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100007E44;
  v22[3] = &unk_100064FD0;
  v22[4] = self;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  [v14 resolveMapItemFromHandle:v15 withTraits:v17 useCache:1 coordinateOnlyRefinement:1 completionHandler:v22];
}

- (void)_resolvedMapItem:(id)a3 toPostUINotification:(unint64_t)a4 forDestination:(id)a5 client:(id)a6 osTransaction:(id)a7
{
  v10 = a3;
  v11 = a5;
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138477827;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Resolved Map Item to Post UI Notification For Destination %{private}@", &v18, 0xCu);
  }

  if (v10)
  {
    v13 = objc_alloc_init(GEORouteHypothesisRequest);
    [v13 setTransportType:{objc_msgSend(v11, "transportType")}];
    v14 = [v11 arrivalDate];
    [v14 timeIntervalSinceReferenceDate];
    [v13 setArrivalDate:?];

    v15 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v10];
    [v13 setDestinationLocation:v15];

    v16 = [[GEORouteHypothesisKey alloc] initWithRouteHypothesisRequest:v13];
    v17 = [(NavdTTLCache *)self findEntryForKey:v16];
    [v17 clientDisplayedUINotification:a4];
  }
}

- (void)didPostUINotification:(unint64_t)a3 forDestination:(id)a4 client:(id)a5 osTransaction:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(GEORouteHypothesisRequest);
  [v13 setTransportType:{objc_msgSend(v10, "transportType")}];
  v14 = [v10 arrivalDate];
  [v14 timeIntervalSinceReferenceDate];
  [v13 setArrivalDate:?];

  v15 = +[GEOMapService sharedService];
  v16 = [v10 handle];
  v17 = +[GEOMapService sharedService];
  v18 = [v17 navd_defaultTraitsForNavd];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000082C8;
  v22[3] = &unk_100065020;
  v25 = v12;
  v26 = a3;
  v22[4] = self;
  v23 = v10;
  v24 = v11;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  [v15 resolveMapItemFromHandle:v16 withTraits:v18 useCache:1 coordinateOnlyRefinement:1 completionHandler:v22];
}

- (void)removeEntry:(id)a3 withKey:(id)a4 value:(id)a5
{
  cache = self->_cache;
  v9 = a3;
  [(GEORouteHypothesisCache *)cache removeKey:a4 value:a5];
  [(NSMutableArray *)self->_entries removeObject:v9];
}

- (void)callHandlers:(id)a3 withHypothesis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 error];
  if (v8)
  {
  }

  else if (self->_shouldPostDarwinNotificationForNextUpdate)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Sending wake up notification to all clients", buf, 2u);
    }

    self->_shouldPostDarwinNotificationForNextUpdate = 0;
    notify_post("com.apple.navd.wakeUpForHypothesisUpdate");
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000858C;
  v11[3] = &unk_100065048;
  v12 = v7;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];
}

@end