@interface _GEOLocationShifterLocalProxy
- (BOOL)isLocationShiftEnabled;
- (BOOL)isLocationShiftRequiredForCoordinate:(id)a3;
- (BOOL)isLocationShiftRequiredForRegion:(id)a3;
- (_GEOLocationShifterLocalProxy)init;
- (unsigned)locationShiftFunctionVersion;
- (void)_callCompletionHandler:(id)a3 withRequestedCoordinate:(id)a4 reduceRadius:(double)a5 forResponse:(id)a6 error:(id)a7;
- (void)_doNetworkRequestForLatLng:(id)a3 reduceRadius:(double)a4 traits:(id)a5 auditToken:(id)a6 shouldCache:(BOOL)a7 completionHandler:(id)a8;
- (void)_shiftLatLng:(id)a3 auditToken:(id)a4 usePersistentCache:(BOOL)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)fetchCachedShiftFunctionResponseForLocation:(id)a3 callbackQueue:(id)a4 completionHandler:(id)a5;
- (void)fetchRawShiftFunctionResponseForRequest:(id)a3 auditToken:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)flushDiskCache;
- (void)getAllShiftEntries:(id)a3 queue:(id)a4 handler:(id)a5;
- (void)pruneDiskCache;
- (void)shiftLatLng:(id)a3 auditToken:(id)a4 completionHandler:(id)a5;
@end

@implementation _GEOLocationShifterLocalProxy

- (BOOL)isLocationShiftEnabled
{
  v2 = GEOURLString();
  v3 = [v2 length] != 0;

  return v3;
}

- (void)fetchCachedShiftFunctionResponseForLocation:(id)a3 callbackQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = GeoServicesConfig_LocationShiftFunctionRadius[1];
  v10 = a4;
  v11 = a3;
  GEOConfigGetDouble();
  v13 = v12;
  [(_GEOLocationShifterLocalProxy *)self pruneDiskCache];
  v14 = [(_GEOLocationShifterLocalProxy *)self persistentCache];
  [v11 coordinate];
  v16 = v15;
  v18 = v17;

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100023918;
  v20[3] = &unk_100082230;
  v20[4] = self;
  v21 = v8;
  v19 = v8;
  [v14 findShiftResponseForCoordinate:v10 reduceRadius:v20 queue:v16 completion:{v18, v13}];
}

- (void)fetchRawShiftFunctionResponseForRequest:(id)a3 auditToken:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = a3;
    v14 = [[GEOPolyLocationShiftRequest alloc] initWithData:v13];

    v15 = [v14 location];
    if (!v15)
    {
      goto LABEL_5;
    }

    v16 = v15;
    v17 = [v14 location];
    [v17 coordinate];
    v19 = v18;
    v21 = fabs(v20 + 180.0);

    if (v21 >= 0.00000001 || fabs(v19 + 180.0) >= 0.00000001)
    {
      v23 = [v14 location];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100023C80;
      v24[3] = &unk_100082208;
      v22 = &v25;
      v25 = v11;
      v26 = v12;
      [(_GEOLocationShifterLocalProxy *)self _shiftLatLng:v23 auditToken:v10 usePersistentCache:1 completionHandler:v24];
    }

    else
    {
LABEL_5:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100023C14;
      block[3] = &unk_1000833E0;
      v22 = &v28;
      v28 = v12;
      dispatch_async(v11, block);
    }
  }
}

- (void)getAllShiftEntries:(id)a3 queue:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_GEOLocationShifterLocalProxy *)self persistentCache];
  [v11 getAllShiftEntries:v10 queue:v9 handler:v8];
}

- (void)flushDiskCache
{
  v2 = [(_GEOLocationShifterLocalProxy *)self persistentCache];
  [v2 removeAllShiftEntriesSync];
}

- (void)pruneDiskCache
{
  v2 = [(_GEOLocationShifterLocalProxy *)self persistentCache];
  [v2 pruneShiftEntries];
}

- (void)_callCompletionHandler:(id)a3 withRequestedCoordinate:(id)a4 reduceRadius:(double)a5 forResponse:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (a5 > 0.0)
  {
    v15 = [v13 contractFunctionTo:a4 withRadius:a5];

    v13 = v15;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002400C;
  block[3] = &unk_100083738;
  v22 = v14;
  v23 = v12;
  v21 = v13;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  dispatch_async(queue, block);
}

- (void)_doNetworkRequestForLatLng:(id)a3 reduceRadius:(double)a4 traits:(id)a5 auditToken:(id)a6 shouldCache:(BOOL)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = a5;
  v18 = objc_alloc_init(GEOPolyLocationShiftRequest);
  [v18 setLocation:v14];
  v19 = GEOGreenTeaGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO) && [v14 hasGreenTeaWithValue:1])
  {
    GEOGreenTeaLog();
  }

  requester = self->_requester;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000241A0;
  v23[3] = &unk_1000821E0;
  v28 = a7;
  v24 = v14;
  v25 = self;
  v26 = v16;
  v27 = a4;
  v21 = v16;
  v22 = v14;
  [(_GEOLocationShiftRequester *)requester startWithRequest:v18 traits:v17 auditToken:v15 completionHandler:v23];
}

- (void)_shiftLatLng:(id)a3 auditToken:(id)a4 usePersistentCache:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[GEOMapService sharedService];
  v14 = [v13 defaultTraits];

  v15 = GeoServicesConfig_LocationShiftFunctionRadius[1];
  GEOConfigGetDouble();
  v17 = v16;
  if (v7)
  {
    [(_GEOLocationShifterLocalProxy *)self pruneDiskCache];
    v18 = [(_GEOLocationShifterLocalProxy *)self persistentCache];
    [v10 coordinate];
    v20 = v19;
    v22 = v21;
    queue = self->_queue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100024484;
    v24[3] = &unk_1000821B8;
    v24[4] = self;
    v28 = v12;
    v25 = v10;
    v29 = v17;
    v26 = v14;
    v27 = v11;
    v30 = 1;
    [v18 findShiftResponseForCoordinate:queue reduceRadius:v24 queue:v20 completion:{v22, v17}];
  }

  else
  {
    [(_GEOLocationShifterLocalProxy *)self _doNetworkRequestForLatLng:v10 reduceRadius:v14 traits:v11 auditToken:0 shouldCache:v12 completionHandler:v16];
  }
}

- (void)shiftLatLng:(id)a3 auditToken:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v9 bundleId];
    shiftQueueToAvoidCoreLocDeadLocks = self->_shiftQueueToAvoidCoreLocDeadLocks;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000245D0;
    block[3] = &unk_100082190;
    v15 = v11;
    v16 = v9;
    v17 = self;
    v18 = v8;
    v19 = v10;
    v13 = v11;
    dispatch_async(shiftQueueToAvoidCoreLocDeadLocks, block);
  }
}

- (BOOL)isLocationShiftRequiredForRegion:(id)a3
{
  v4 = a3;
  if ([(_GEOLocationShifterLocalProxy *)self isLocationShiftEnabled])
  {
    GEOMapRectForMapRegion();
    v5 = +[GEOResourceManifestManager modernManager];
    v6 = [v5 activeTileGroup];
    v7 = [v6 locationShiftEnabledRegions];

    if ([v7 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = v7;
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

- (BOOL)isLocationShiftRequiredForCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(_GEOLocationShifterLocalProxy *)self isLocationShiftEnabled])
  {
    v5 = +[GEOResourceManifestManager modernManager];
    v6 = [v5 activeTileGroup];
    v7 = [v6 locationShiftEnabledRegions];

    if ([v7 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = v7;
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
  v3 = [v2 activeTileGroup];
  v4 = [v3 locationShiftVersion];

  return v4;
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