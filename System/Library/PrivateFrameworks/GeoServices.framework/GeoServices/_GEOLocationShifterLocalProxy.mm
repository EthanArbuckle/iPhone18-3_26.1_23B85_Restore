@interface _GEOLocationShifterLocalProxy
- (BOOL)isLocationShiftEnabled;
- (BOOL)isLocationShiftRequiredForCoordinate:(id)coordinate;
- (BOOL)isLocationShiftRequiredForRegion:(id)region;
- (_GEOLocationShifterLocalProxy)init;
- (unsigned)locationShiftFunctionVersion;
- (void)_callCompletionHandler:(id)handler withRequestedCoordinate:(id)coordinate reduceRadius:(double)radius forResponse:(id)response error:(id)error;
- (void)_doNetworkRequestForLatLng:(id)lng reduceRadius:(double)radius traits:(id)traits auditToken:(id)token shouldCache:(BOOL)cache completionHandler:(id)handler;
- (void)_shiftLatLng:(id)lng auditToken:(id)token usePersistentCache:(BOOL)cache completionHandler:(id)handler;
- (void)dealloc;
- (void)fetchCachedShiftFunctionResponseForLocation:(id)location callbackQueue:(id)queue completionHandler:(id)handler;
- (void)fetchRawShiftFunctionResponseForRequest:(id)request auditToken:(id)token callbackQueue:(id)queue completionHandler:(id)handler;
- (void)flushDiskCache;
- (void)getAllShiftEntries:(id)entries queue:(id)queue handler:(id)handler;
- (void)pruneDiskCache;
- (void)shiftLatLng:(id)lng auditToken:(id)token completionHandler:(id)handler;
@end

@implementation _GEOLocationShifterLocalProxy

- (BOOL)isLocationShiftEnabled
{
  v2 = GEOURLString();
  v3 = [v2 length] != 0;

  return v3;
}

- (void)fetchCachedShiftFunctionResponseForLocation:(id)location callbackQueue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = GeoServicesConfig_LocationShiftFunctionRadius[1];
  queueCopy = queue;
  locationCopy = location;
  GEOConfigGetDouble();
  v13 = v12;
  [(_GEOLocationShifterLocalProxy *)self pruneDiskCache];
  persistentCache = [(_GEOLocationShifterLocalProxy *)self persistentCache];
  [locationCopy coordinate];
  v16 = v15;
  v18 = v17;

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100023918;
  v20[3] = &unk_100082230;
  v20[4] = self;
  v21 = handlerCopy;
  v19 = handlerCopy;
  [persistentCache findShiftResponseForCoordinate:queueCopy reduceRadius:v20 queue:v16 completion:{v18, v13}];
}

- (void)fetchRawShiftFunctionResponseForRequest:(id)request auditToken:(id)token callbackQueue:(id)queue completionHandler:(id)handler
{
  tokenCopy = token;
  queueCopy = queue;
  handlerCopy = handler;
  if (handlerCopy)
  {
    requestCopy = request;
    v14 = [[GEOPolyLocationShiftRequest alloc] initWithData:requestCopy];

    location = [v14 location];
    if (!location)
    {
      goto LABEL_5;
    }

    v16 = location;
    location2 = [v14 location];
    [location2 coordinate];
    v19 = v18;
    v21 = fabs(v20 + 180.0);

    if (v21 >= 0.00000001 || fabs(v19 + 180.0) >= 0.00000001)
    {
      location3 = [v14 location];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100023C80;
      v24[3] = &unk_100082208;
      v22 = &v25;
      v25 = queueCopy;
      v26 = handlerCopy;
      [(_GEOLocationShifterLocalProxy *)self _shiftLatLng:location3 auditToken:tokenCopy usePersistentCache:1 completionHandler:v24];
    }

    else
    {
LABEL_5:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100023C14;
      block[3] = &unk_1000833E0;
      v22 = &v28;
      v28 = handlerCopy;
      dispatch_async(queueCopy, block);
    }
  }
}

- (void)getAllShiftEntries:(id)entries queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  entriesCopy = entries;
  persistentCache = [(_GEOLocationShifterLocalProxy *)self persistentCache];
  [persistentCache getAllShiftEntries:entriesCopy queue:queueCopy handler:handlerCopy];
}

- (void)flushDiskCache
{
  persistentCache = [(_GEOLocationShifterLocalProxy *)self persistentCache];
  [persistentCache removeAllShiftEntriesSync];
}

- (void)pruneDiskCache
{
  persistentCache = [(_GEOLocationShifterLocalProxy *)self persistentCache];
  [persistentCache pruneShiftEntries];
}

- (void)_callCompletionHandler:(id)handler withRequestedCoordinate:(id)coordinate reduceRadius:(double)radius forResponse:(id)response error:(id)error
{
  handlerCopy = handler;
  responseCopy = response;
  errorCopy = error;
  if (radius > 0.0)
  {
    v15 = [responseCopy contractFunctionTo:coordinate withRadius:radius];

    responseCopy = v15;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002400C;
  block[3] = &unk_100083738;
  v22 = errorCopy;
  v23 = handlerCopy;
  v21 = responseCopy;
  v17 = errorCopy;
  v18 = responseCopy;
  v19 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)_doNetworkRequestForLatLng:(id)lng reduceRadius:(double)radius traits:(id)traits auditToken:(id)token shouldCache:(BOOL)cache completionHandler:(id)handler
{
  lngCopy = lng;
  tokenCopy = token;
  handlerCopy = handler;
  traitsCopy = traits;
  v18 = objc_alloc_init(GEOPolyLocationShiftRequest);
  [v18 setLocation:lngCopy];
  v19 = GEOGreenTeaGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO) && [lngCopy hasGreenTeaWithValue:1])
  {
    GEOGreenTeaLog();
  }

  requester = self->_requester;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000241A0;
  v23[3] = &unk_1000821E0;
  cacheCopy = cache;
  v24 = lngCopy;
  selfCopy = self;
  v26 = handlerCopy;
  radiusCopy = radius;
  v21 = handlerCopy;
  v22 = lngCopy;
  [(_GEOLocationShiftRequester *)requester startWithRequest:v18 traits:traitsCopy auditToken:tokenCopy completionHandler:v23];
}

- (void)_shiftLatLng:(id)lng auditToken:(id)token usePersistentCache:(BOOL)cache completionHandler:(id)handler
{
  cacheCopy = cache;
  lngCopy = lng;
  tokenCopy = token;
  handlerCopy = handler;
  v13 = +[GEOMapService sharedService];
  defaultTraits = [v13 defaultTraits];

  v15 = GeoServicesConfig_LocationShiftFunctionRadius[1];
  GEOConfigGetDouble();
  v17 = v16;
  if (cacheCopy)
  {
    [(_GEOLocationShifterLocalProxy *)self pruneDiskCache];
    persistentCache = [(_GEOLocationShifterLocalProxy *)self persistentCache];
    [lngCopy coordinate];
    v20 = v19;
    v22 = v21;
    queue = self->_queue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100024484;
    v24[3] = &unk_1000821B8;
    v24[4] = self;
    v28 = handlerCopy;
    v25 = lngCopy;
    v29 = v17;
    v26 = defaultTraits;
    v27 = tokenCopy;
    v30 = 1;
    [persistentCache findShiftResponseForCoordinate:queue reduceRadius:v24 queue:v20 completion:{v22, v17}];
  }

  else
  {
    [(_GEOLocationShifterLocalProxy *)self _doNetworkRequestForLatLng:lngCopy reduceRadius:defaultTraits traits:tokenCopy auditToken:0 shouldCache:handlerCopy completionHandler:v16];
  }
}

- (void)shiftLatLng:(id)lng auditToken:(id)token completionHandler:(id)handler
{
  lngCopy = lng;
  tokenCopy = token;
  handlerCopy = handler;
  if (handlerCopy)
  {
    bundleId = [tokenCopy bundleId];
    shiftQueueToAvoidCoreLocDeadLocks = self->_shiftQueueToAvoidCoreLocDeadLocks;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000245D0;
    block[3] = &unk_100082190;
    v15 = bundleId;
    v16 = tokenCopy;
    selfCopy = self;
    v18 = lngCopy;
    v19 = handlerCopy;
    v13 = bundleId;
    dispatch_async(shiftQueueToAvoidCoreLocDeadLocks, block);
  }
}

- (BOOL)isLocationShiftRequiredForRegion:(id)region
{
  regionCopy = region;
  if ([(_GEOLocationShifterLocalProxy *)self isLocationShiftEnabled])
  {
    GEOMapRectForMapRegion();
    v5 = +[GEOResourceManifestManager modernManager];
    activeTileGroup = [v5 activeTileGroup];
    locationShiftEnabledRegions = [activeTileGroup locationShiftEnabledRegions];

    if ([locationShiftEnabledRegions count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = locationShiftEnabledRegions;
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = *v15;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            GEOMapRectForMapRegion();
            if (GEOMapRectIntersectsRect())
            {
              LOBYTE(v9) = 1;
              goto LABEL_13;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isLocationShiftRequiredForCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  if ([(_GEOLocationShifterLocalProxy *)self isLocationShiftEnabled])
  {
    v5 = +[GEOResourceManifestManager modernManager];
    activeTileGroup = [v5 activeTileGroup];
    locationShiftEnabledRegions = [activeTileGroup locationShiftEnabledRegions];

    if ([locationShiftEnabledRegions count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = locationShiftEnabledRegions;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v8);
            }

            if ([*(*(&v13 + 1) + 8 * i) containsCoordinate:{var0, var1, v13}])
            {
              LOBYTE(v9) = 1;
              goto LABEL_13;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unsigned)locationShiftFunctionVersion
{
  v2 = +[GEOResourceManifestManager modernManager];
  activeTileGroup = [v2 activeTileGroup];
  locationShiftVersion = [activeTileGroup locationShiftVersion];

  return locationShiftVersion;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  notify_cancel(self->_resetPrivacyToken);
  v4.receiver = self;
  v4.super_class = _GEOLocationShifterLocalProxy;
  [(_GEOLocationShifterLocalProxy *)&v4 dealloc];
}

- (_GEOLocationShifterLocalProxy)init
{
  v15.receiver = self;
  v15.super_class = _GEOLocationShifterLocalProxy;
  v2 = [(_GEOLocationShifterLocalProxy *)&v15 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_workloop_qos();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = geo_dispatch_queue_create();
    shiftQueueToAvoidCoreLocDeadLocks = v2->_shiftQueueToAvoidCoreLocDeadLocks;
    v2->_shiftQueueToAvoidCoreLocDeadLocks = v5;

    v7 = objc_alloc_init(_GEOLocationShiftRequester);
    requester = v2->_requester;
    v2->_requester = v7;

    objc_initWeak(&location, v2);
    v9 = v2->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024F58;
    v12[3] = &unk_100082928;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch("com.apple.Preferences.ResetPrivacyWarningsNotification", &v2->_resetPrivacyToken, v9, v12);
    v10 = v2;
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

@end