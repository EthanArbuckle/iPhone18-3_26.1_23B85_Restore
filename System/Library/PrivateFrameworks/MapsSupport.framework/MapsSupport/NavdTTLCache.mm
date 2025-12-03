@interface NavdTTLCache
- (NavdTTLCache)init;
- (NavdTTLCache)initWithCacheOperationQueue:(id)queue localProxy:(id)proxy;
- (id)findEntryForKey:(id)key;
- (void)_resolvedMapItem:(id)item error:(id)error forPendingCacheEntry:(id)entry uuid:(id)uuid osTransaction:(id)transaction clientInfo:(id)info;
- (void)_resolvedMapItem:(id)item toOnlyPerformLocalUpdatesForPlannedDestination:(id)destination client:(id)client osTransaction:(id)transaction;
- (void)_resolvedMapItem:(id)item toPostUINotification:(unint64_t)notification forDestination:(id)destination client:(id)client osTransaction:(id)transaction;
- (void)_resolvedMapItem:(id)item toRefreshPlannedDestination:(id)destination client:(id)client osTransaction:(id)transaction;
- (void)_resolvedMapItem:(id)item toStopMonitoringPlannedDestination:(id)destination clientInfo:(id)info uuid:(id)uuid osTransaction:(id)transaction;
- (void)_resolvedOriginWaypoint:(id)waypoint originWaypointError:(id)error destinationWaypoint:(id)destinationWaypoint destinationWaypointError:(id)waypointError forKey:(id)key pendingCacheEntry:(id)entry osTransaction:(id)transaction clientInfo:(id)self0;
- (void)callHandlers:(id)handlers withHypothesis:(id)hypothesis;
- (void)didPostUINotification:(unint64_t)notification forDestination:(id)destination client:(id)client osTransaction:(id)transaction;
- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)destination client:(id)client osTransaction:(id)transaction;
- (void)removeEntry:(id)entry withKey:(id)key value:(id)value;
- (void)requestRefreshForPlannedDestination:(id)destination client:(id)client osTransaction:(id)transaction;
- (void)shouldPostDarwinNotificationForNextUpdate:(BOOL)update;
- (void)startMonitoringDestination:(id)destination forClient:(id)client uuid:(id)uuid osTransaction:(id)transaction handler:(id)handler;
- (void)stopMonitoringDestination:(id)destination forClient:(id)client uuid:(id)uuid osTransaction:(id)transaction;
@end

@implementation NavdTTLCache

- (NavdTTLCache)initWithCacheOperationQueue:(id)queue localProxy:(id)proxy
{
  queueCopy = queue;
  proxyCopy = proxy;
  v24.receiver = self;
  v24.super_class = NavdTTLCache;
  v9 = [(NavdTTLCache *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheOperationQueue, queue);
    v11 = objc_alloc_init(GEORouteHypothesisCache);
    cache = v10->_cache;
    v10->_cache = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    pendingEntriesByKey = v10->_pendingEntriesByKey;
    v10->_pendingEntriesByKey = v13;

    v15 = objc_alloc_init(NSMutableArray);
    entries = v10->_entries;
    v10->_entries = v15;

    objc_storeWeak(&v10->_localProxy, proxyCopy);
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

- (id)findEntryForKey:(id)key
{
  v4 = [(GEORouteHypothesisCache *)self->_cache loadValueForKey:key];
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
          rowId = [v10 rowId];
          if (rowId == [v4 rowId])
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
      rowId2 = [v4 rowId];
      *buf = 134217984;
      v20 = rowId2;
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

- (void)shouldPostDarwinNotificationForNextUpdate:(BOOL)update
{
  updateCopy = update;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"no";
    if (updateCopy)
    {
      v6 = @"yes";
    }

    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "_shouldPostDarwinNotificationForNextUpdate set to: %{private}@", &v7, 0xCu);
  }

  self->_shouldPostDarwinNotificationForNextUpdate = updateCopy;
}

- (void)startMonitoringDestination:(id)destination forClient:(id)client uuid:(id)uuid osTransaction:(id)transaction handler:(id)handler
{
  clientCopy = client;
  uuidCopy = uuid;
  transactionCopy = transaction;
  handlerCopy = handler;
  destinationCopy = destination;
  v17 = [[NavdPendingTTLCacheEntry alloc] initWithDestination:destinationCopy forClient:clientCopy uuid:uuidCopy handler:handlerCopy cacheOperationQueue:self->_cacheOperationQueue navdCache:self];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000062C8;
  v21[3] = &unk_100064E90;
  v21[4] = self;
  v22 = uuidCopy;
  v23 = transactionCopy;
  v24 = clientCopy;
  v18 = clientCopy;
  v19 = transactionCopy;
  v20 = uuidCopy;
  [(NavdPendingTTLCacheEntry *)v17 resolveMapItem:v21];
}

- (void)_resolvedMapItem:(id)item error:(id)error forPendingCacheEntry:(id)entry uuid:(id)uuid osTransaction:(id)transaction clientInfo:(id)info
{
  itemCopy = item;
  errorCopy = error;
  entryCopy = entry;
  uuidCopy = uuid;
  transactionCopy = transaction;
  infoCopy = info;
  if (!itemCopy)
  {
    v21 = objc_alloc_init(GEORouteHypothesis);
    [v21 _setError:errorCopy];
    clientInfoStates = [entryCopy clientInfoStates];
    [(NavdTTLCache *)self callHandlers:clientInfoStates withHypothesis:v21];
LABEL_17:

    goto LABEL_18;
  }

  if (![(NSMutableSet *)self->_pendingStopUUIDs containsObject:uuidCopy])
  {
    v23 = [GEOMapItemStorage mapItemStorageForGEOMapItem:itemCopy];
    [entryCopy setDestinationLocation:v23];

    v24 = [GEORouteHypothesisKey alloc];
    request = [entryCopy request];
    v21 = [v24 initWithRouteHypothesisRequest:request];

    v26 = [(NavdTTLCache *)self findEntryForKey:v21];
    clientInfoStates = v26;
    if (v26)
    {
      [v26 subsumePendingEntry:entryCopy];
      v40 = -[NavdTTLCache loadEntryForRowId:](self, "loadEntryForRowId:", [clientInfoStates rowId]);
      v39 = [v40 objectAtIndexedSubscript:1];
      currentHypothesis = [v39 currentHypothesis];
      v28 = currentHypothesis;
      if (currentHypothesis)
      {
        v37 = currentHypothesis;
        v38 = v21;
        v29 = +[NavdLocationLeecher sharedLeecher];
        lastLeechedLocation = [v29 lastLeechedLocation];

        if (lastLeechedLocation)
        {
          [lastLeechedLocation course];
          v31 = [GEOLocation locationWithCLLocation:lastLeechedLocation course:?];
          monitor = [v39 monitor];
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_10000674C;
          v46[3] = &unk_100064EB8;
          v46[4] = self;
          v47 = entryCopy;
          [monitor updateLocation:v31 allowServer:0 familiarRouteProvider:0 hypothesisHandler:v46];

          v28 = v37;
        }

        else
        {
          clientInfoStates2 = [entryCopy clientInfoStates];
          v28 = v37;
          [(NavdTTLCache *)self callHandlers:clientInfoStates2 withHypothesis:v37];
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
        [v33 subsumePendingCacheEntry:entryCopy];
      }

      else
      {
        [(NSMutableDictionary *)self->_pendingEntriesByKey setObject:entryCopy forKeyedSubscript:v21];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000067BC;
        v41[3] = &unk_100064EE0;
        v41[4] = self;
        v42 = v21;
        v43 = entryCopy;
        v44 = transactionCopy;
        v45 = infoCopy;
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
    v49 = uuidCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Resolved map item but found pending stop for uuid %{private}@, stopping.", buf, 0xCu);
  }

  [(NSMutableSet *)self->_pendingStopUUIDs removeObject:uuidCopy];
LABEL_18:
}

- (void)_resolvedOriginWaypoint:(id)waypoint originWaypointError:(id)error destinationWaypoint:(id)destinationWaypoint destinationWaypointError:(id)waypointError forKey:(id)key pendingCacheEntry:(id)entry osTransaction:(id)transaction clientInfo:(id)self0
{
  waypointCopy = waypoint;
  errorCopy = error;
  destinationWaypointCopy = destinationWaypoint;
  waypointErrorCopy = waypointError;
  keyCopy = key;
  entryCopy = entry;
  transactionCopy = transaction;
  infoCopy = info;
  if (!(errorCopy | waypointErrorCopy))
  {
    v75 = destinationWaypointCopy;
    if ([(NSMutableSet *)self->_pendingStopUUIDs count])
    {
      [entryCopy removePendingStops:self->_pendingStopUUIDs];
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

    clientInfoStates = [entryCopy clientInfoStates];
    v33 = [clientInfoStates count];

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

    v70 = transactionCopy;
    v71 = waypointErrorCopy;
    selfCopy = self;
    v73 = errorCopy;
    request = [keyCopy request];
    transportType = [request transportType];
    request2 = [keyCopy request];
    [request2 arrivalDate];
    v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v38 = [GEORouteHypothesisMonitor routeAttributesForTransportType:transportType withArrivalDate:v37];

    v39 = [MNRouteAttributes alloc];
    v74 = infoCopy;
    v77[0] = waypointCopy;
    v77[1] = destinationWaypointCopy;
    v40 = entryCopy;
    v41 = [NSArray arrayWithObjects:v77 count:2];
    v69 = v38;
    v42 = [v39 initWithAttributes:v38 waypoints:v41];

    v66 = [GEORouteHypothesisValue alloc];
    request3 = [keyCopy request];
    [request3 arrivalDate];
    v44 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v67 = keyCopy;
    v45 = keyCopy;
    v46 = v40;
    request4 = [v45 request];
    [request4 expirationDate];
    v48 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    traceName = [v46 traceName];
    v50 = +[GEOMapService sharedService];
    navd_defaultTraitsForNavd = [v50 navd_defaultTraitsForNavd];
    v68 = v42;
    v52 = [v66 initWithSource:waypointCopy toDestination:v75 arrivalDate:v44 expirationDate:v48 traceName:traceName traits:navd_defaultTraitsForNavd routeAttributes:v42 clientInfo:v74];

    [v52 setValueRefreshTimeStamp:CFAbsoluteTimeGetCurrent()];
    if ([v52 canBePersistedToDisk])
    {
      entryCopy = v46;
      self = selfCopy;
      keyCopy = v67;
      [(GEORouteHypothesisCache *)selfCopy->_cache saveValue:v52 forKey:v67];
      transactionCopy = v70;
      if ([v52 rowId] == -1)
      {
        v55 = objc_alloc_init(GEORouteHypothesis);
        v63 = [NSError alloc];
        v64 = GEOErrorDomain();
        WeakRetained = [v63 initWithDomain:v64 code:-1501 userInfo:0];

        [(NavdTTLCacheEntry *)v55 _setError:WeakRetained];
        clientInfoStates2 = [entryCopy clientInfoStates];
        [(NavdTTLCache *)selfCopy callHandlers:clientInfoStates2 withHypothesis:v55];
      }

      else
      {
        v53 = [NavdTTLCacheEntry alloc];
        rowId = [v52 rowId];
        [v52 valueRefreshTimeStamp];
        v55 = [(NavdTTLCacheEntry *)v53 initWithRowId:rowId refreshTimestamp:0 state:selfCopy->_cacheOperationQueue cacheOperationQueue:selfCopy cache:?];
        traceName2 = [entryCopy traceName];
        [(NavdTTLCacheEntry *)v55 setTraceName:traceName2];

        [(NavdTTLCacheEntry *)v55 subsumePendingEntry:entryCopy];
        [(NSMutableArray *)selfCopy->_entries addObject:v55];
        WeakRetained = objc_loadWeakRetained(&selfCopy->_localProxy);
        [WeakRetained _refreshCacheEntriesIfNeededOrForced:0 osTransaction:v70];
      }

      infoCopy = v74;
      v27 = v69;
    }

    else
    {
      clientInfoStates3 = [v46 clientInfoStates];
      v59 = [clientInfoStates3 count];

      self = selfCopy;
      entryCopy = v46;
      keyCopy = v67;
      v27 = v69;
      transactionCopy = v70;
      infoCopy = v74;
      if (!v59)
      {
LABEL_25:

        errorCopy = v73;
        destinationWaypointCopy = v75;
        waypointErrorCopy = v71;
LABEL_26:

        goto LABEL_27;
      }

      v55 = objc_alloc_init(GEORouteHypothesis);
      v60 = [NSError alloc];
      v61 = GEOErrorDomain();
      WeakRetained = [v60 initWithDomain:v61 code:-1501 userInfo:0];

      [(NavdTTLCacheEntry *)v55 _setError:WeakRetained];
      clientInfoStates4 = [entryCopy clientInfoStates];
      [(NavdTTLCache *)selfCopy callHandlers:clientInfoStates4 withHypothesis:v55];
    }

    goto LABEL_25;
  }

  v23 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544130;
    v79 = waypointCopy;
    v80 = 2114;
    v81 = errorCopy;
    v82 = 2114;
    v83 = destinationWaypointCopy;
    v84 = 2114;
    v85 = waypointErrorCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get a waypoints. OriginWaypoint: %{public}@, OriginWaypointError: %{public}@, DestinationWaypoint: %{public}@, Destination Waypoint Error: %{public}@", buf, 0x2Au);
  }

  clientInfoStates5 = [entryCopy clientInfoStates];
  v25 = [clientInfoStates5 count];

  if (v25)
  {
    v26 = objc_alloc_init(GEORouteHypothesis);
    v27 = v26;
    if (errorCopy)
    {
      v28 = errorCopy;
    }

    else
    {
      v28 = waypointErrorCopy;
    }

    [v26 _setError:v28];
    clientInfoStates6 = [entryCopy clientInfoStates];
    [(NavdTTLCache *)self callHandlers:clientInfoStates6 withHypothesis:v27];

    goto LABEL_26;
  }

LABEL_27:
  [(NSMutableDictionary *)self->_pendingEntriesByKey removeObjectForKey:keyCopy];
}

- (void)_resolvedMapItem:(id)item toRefreshPlannedDestination:(id)destination client:(id)client osTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (item)
  {
    destinationCopy = destination;
    itemCopy = item;
    v12 = objc_alloc_init(GEORouteHypothesisRequest);
    [v12 setTransportType:{objc_msgSend(destinationCopy, "transportType")}];
    arrivalDate = [destinationCopy arrivalDate];

    [arrivalDate timeIntervalSinceReferenceDate];
    [v12 setArrivalDate:?];

    v14 = [GEOMapItemStorage mapItemStorageForGEOMapItem:itemCopy];

    [v12 setDestinationLocation:v14];
    v15 = [[GEORouteHypothesisKey alloc] initWithRouteHypothesisRequest:v12];
    v16 = [(NavdTTLCache *)self findEntryForKey:v15];
    if (v16)
    {
      WeakRetained = objc_loadWeakRetained(&self->_localProxy);
      [WeakRetained _refreshCacheEntriesIfNeededOrForced:0 osTransaction:transactionCopy];
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

- (void)requestRefreshForPlannedDestination:(id)destination client:(id)client osTransaction:(id)transaction
{
  destinationCopy = destination;
  clientCopy = client;
  transactionCopy = transaction;
  v11 = +[GEOMapService sharedService];
  handle = [destinationCopy handle];
  v13 = +[GEOMapService sharedService];
  navd_defaultTraitsForNavd = [v13 navd_defaultTraitsForNavd];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000071EC;
  v18[3] = &unk_100064F30;
  v18[4] = self;
  v19 = destinationCopy;
  v20 = clientCopy;
  v21 = transactionCopy;
  v15 = transactionCopy;
  v16 = clientCopy;
  v17 = destinationCopy;
  [v11 resolveMapItemFromHandle:handle withTraits:navd_defaultTraitsForNavd useCache:1 coordinateOnlyRefinement:1 completionHandler:v18];
}

- (void)_resolvedMapItem:(id)item toOnlyPerformLocalUpdatesForPlannedDestination:(id)destination client:(id)client osTransaction:(id)transaction
{
  clientCopy = client;
  destinationCopy = destination;
  itemCopy = item;
  v11 = objc_alloc_init(GEORouteHypothesisRequest);
  [v11 setTransportType:{objc_msgSend(destinationCopy, "transportType")}];
  arrivalDate = [destinationCopy arrivalDate];

  [arrivalDate timeIntervalSinceReferenceDate];
  [v11 setArrivalDate:?];

  v13 = [GEOMapItemStorage mapItemStorageForGEOMapItem:itemCopy];

  [v11 setDestinationLocation:v13];
  v14 = [[GEORouteHypothesisKey alloc] initWithRouteHypothesisRequest:v11];
  v15 = [(NavdTTLCache *)self findEntryForKey:v14];
  v16 = v15;
  if (v15)
  {
    [v15 setLocalUpdatesOnlyForClientInfo:clientCopy];
  }

  else
  {
    v17 = [(NSMutableDictionary *)self->_pendingEntriesByKey objectForKeyedSubscript:v14];
    v18 = v17;
    if (v17)
    {
      [v17 setLocalUpdatesOnlyForClientInfo:clientCopy];
    }
  }
}

- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)destination client:(id)client osTransaction:(id)transaction
{
  destinationCopy = destination;
  clientCopy = client;
  transactionCopy = transaction;
  v11 = +[GEOMapService sharedService];
  handle = [destinationCopy handle];
  v13 = +[GEOMapService sharedService];
  navd_defaultTraitsForNavd = [v13 navd_defaultTraitsForNavd];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000075B0;
  v18[3] = &unk_100064F30;
  v18[4] = self;
  v19 = destinationCopy;
  v20 = clientCopy;
  v21 = transactionCopy;
  v15 = transactionCopy;
  v16 = clientCopy;
  v17 = destinationCopy;
  [v11 resolveMapItemFromHandle:handle withTraits:navd_defaultTraitsForNavd useCache:1 coordinateOnlyRefinement:1 completionHandler:v18];
}

- (void)_resolvedMapItem:(id)item toStopMonitoringPlannedDestination:(id)destination clientInfo:(id)info uuid:(id)uuid osTransaction:(id)transaction
{
  itemCopy = item;
  destinationCopy = destination;
  infoCopy = info;
  uuidCopy = uuid;
  transactionCopy = transaction;
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    *&buf[4] = destinationCopy;
    v37 = 2113;
    v38 = uuidCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Resolved Map Item to Stop Monitoring Destination %{private}@ with uuid %{private}@", buf, 0x16u);
  }

  if (itemCopy)
  {
    v16 = objc_alloc_init(GEORouteHypothesisRequest);
    [v16 setTransportType:{objc_msgSend(destinationCopy, "transportType", transactionCopy)}];
    arrivalDate = [destinationCopy arrivalDate];
    [arrivalDate timeIntervalSinceReferenceDate];
    [v16 setArrivalDate:?];

    v18 = [GEOMapItemStorage mapItemStorageForGEOMapItem:itemCopy];
    [v16 setDestinationLocation:v18];

    v19 = [[GEORouteHypothesisKey alloc] initWithRouteHypothesisRequest:v16];
    v20 = [(NavdTTLCache *)self findEntryForKey:v19];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 hasHandlerForClientInfo:infoCopy];
      v23 = GEOFindOrCreateLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (v22)
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Entry found, removing handler", buf, 2u);
        }

        if (infoCopy)
        {
          [v21 removeHandlerForClientInfo:infoCopy];
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

        if (uuidCopy)
        {
          [(NSMutableSet *)self->_pendingStopUUIDs addObject:uuidCopy];
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
      *&buf[4] = uuidCopy;
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
      *&buf[4] = uuidCopy;
      v27 = "No cache entry found, adding uuid %{private}@ to list of pending stops.";
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, v27, buf, 0xCu);
    goto LABEL_20;
  }

LABEL_23:
}

- (void)stopMonitoringDestination:(id)destination forClient:(id)client uuid:(id)uuid osTransaction:(id)transaction
{
  destinationCopy = destination;
  clientCopy = client;
  uuidCopy = uuid;
  transactionCopy = transaction;
  v14 = +[GEOMapService sharedService];
  handle = [destinationCopy handle];
  v16 = +[GEOMapService sharedService];
  navd_defaultTraitsForNavd = [v16 navd_defaultTraitsForNavd];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100007E44;
  v22[3] = &unk_100064FD0;
  v22[4] = self;
  v23 = destinationCopy;
  v24 = clientCopy;
  v25 = uuidCopy;
  v26 = transactionCopy;
  v18 = transactionCopy;
  v19 = uuidCopy;
  v20 = clientCopy;
  v21 = destinationCopy;
  [v14 resolveMapItemFromHandle:handle withTraits:navd_defaultTraitsForNavd useCache:1 coordinateOnlyRefinement:1 completionHandler:v22];
}

- (void)_resolvedMapItem:(id)item toPostUINotification:(unint64_t)notification forDestination:(id)destination client:(id)client osTransaction:(id)transaction
{
  itemCopy = item;
  destinationCopy = destination;
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138477827;
    v19 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Resolved Map Item to Post UI Notification For Destination %{private}@", &v18, 0xCu);
  }

  if (itemCopy)
  {
    v13 = objc_alloc_init(GEORouteHypothesisRequest);
    [v13 setTransportType:{objc_msgSend(destinationCopy, "transportType")}];
    arrivalDate = [destinationCopy arrivalDate];
    [arrivalDate timeIntervalSinceReferenceDate];
    [v13 setArrivalDate:?];

    v15 = [GEOMapItemStorage mapItemStorageForGEOMapItem:itemCopy];
    [v13 setDestinationLocation:v15];

    v16 = [[GEORouteHypothesisKey alloc] initWithRouteHypothesisRequest:v13];
    v17 = [(NavdTTLCache *)self findEntryForKey:v16];
    [v17 clientDisplayedUINotification:notification];
  }
}

- (void)didPostUINotification:(unint64_t)notification forDestination:(id)destination client:(id)client osTransaction:(id)transaction
{
  destinationCopy = destination;
  clientCopy = client;
  transactionCopy = transaction;
  v13 = objc_alloc_init(GEORouteHypothesisRequest);
  [v13 setTransportType:{objc_msgSend(destinationCopy, "transportType")}];
  arrivalDate = [destinationCopy arrivalDate];
  [arrivalDate timeIntervalSinceReferenceDate];
  [v13 setArrivalDate:?];

  v15 = +[GEOMapService sharedService];
  handle = [destinationCopy handle];
  v17 = +[GEOMapService sharedService];
  navd_defaultTraitsForNavd = [v17 navd_defaultTraitsForNavd];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000082C8;
  v22[3] = &unk_100065020;
  v25 = transactionCopy;
  notificationCopy = notification;
  v22[4] = self;
  v23 = destinationCopy;
  v24 = clientCopy;
  v19 = transactionCopy;
  v20 = clientCopy;
  v21 = destinationCopy;
  [v15 resolveMapItemFromHandle:handle withTraits:navd_defaultTraitsForNavd useCache:1 coordinateOnlyRefinement:1 completionHandler:v22];
}

- (void)removeEntry:(id)entry withKey:(id)key value:(id)value
{
  cache = self->_cache;
  entryCopy = entry;
  [(GEORouteHypothesisCache *)cache removeKey:key value:value];
  [(NSMutableArray *)self->_entries removeObject:entryCopy];
}

- (void)callHandlers:(id)handlers withHypothesis:(id)hypothesis
{
  handlersCopy = handlers;
  hypothesisCopy = hypothesis;
  error = [hypothesisCopy error];
  if (error)
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
  v12 = hypothesisCopy;
  v10 = hypothesisCopy;
  [handlersCopy enumerateKeysAndObjectsUsingBlock:v11];
}

@end