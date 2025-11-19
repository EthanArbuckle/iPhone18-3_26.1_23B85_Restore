@interface GEOPlaceDataLocalProxy
+ (GEOPlaceDataLocalProxy)shared;
- (GEOPlaceDataLocalProxy)init;
- (id)serviceRequester;
- (unint64_t)calculateFreeableSpaceSync;
- (unint64_t)shrinkBySizeSync:(unint64_t)a3;
- (void)_callHistoryRecentsClearedObserver:(id)a3;
- (void)_privacyAndLocationSettingsResetObserver:(id)a3;
- (void)calculateFreeableSpaceWithHandler:(id)a3;
- (void)cancelRequest:(id)a3;
- (void)clearCache;
- (void)dealloc;
- (void)fetchAllCacheEntriesWithRequesterHandler:(id)a3;
- (void)fetchAllURLCacheEntriesWithRequesterHandler:(id)a3;
- (void)performPlaceDataRequest:(id)a3 requestUUID:(id)a4 traits:(id)a5 cachePolicy:(unint64_t)a6 timeout:(double)a7 auditToken:(id)a8 throttleToken:(id)a9 requesterHandler:(id)a10;
- (void)requestIdentifiers:(id)a3 resultProviderID:(int)a4 requestUUID:(id)a5 traits:(id)a6 options:(unint64_t)a7 auditToken:(id)a8 throttleToken:(id)a9 requesterHandler:(id)a10;
- (void)requestPhoneNumbers:(id)a3 requestUUID:(id)a4 allowCellularDataForLookup:(BOOL)a5 traits:(id)a6 auditToken:(id)a7 throttleToken:(id)a8 requesterHandler:(id)a9;
- (void)shrinkBySize:(unint64_t)a3 finished:(id)a4;
- (void)startRequest:(id)a3 requestUUID:(id)a4 traits:(id)a5 timeout:(double)a6 auditToken:(id)a7 throttleToken:(id)a8 finished:(id)a9 error:(id)a10;
- (void)trackPlaceData:(id)a3;
@end

@implementation GEOPlaceDataLocalProxy

- (id)serviceRequester
{
  serviceRequester = self->_serviceRequester;
  if (serviceRequester)
  {
    v3 = serviceRequester;
  }

  else
  {
    v3 = +[GEOPlaceDataRequester sharedInstance];
  }

  return v3;
}

- (void)_privacyAndLocationSettingsResetObserver:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "User did reset privacy and location settings", v6, 2u);
  }

  v5 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  [v5 deletePhoneNumberMapping];

  [(GEOPlaceDataLocalProxy *)self clearCache];
}

- (void)_callHistoryRecentsClearedObserver:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received notification indicating phone recents were cleared.", v6, 2u);
  }

  v5 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  [v5 deletePhoneNumberMapping];
}

- (void)clearCache
{
  v2 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  [v2 evictAllEntries];
}

- (unint64_t)shrinkBySizeSync:(unint64_t)a3
{
  v4 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  v5 = [v4 shrinkBySizeSync:a3];

  return v5;
}

- (unint64_t)calculateFreeableSpaceSync
{
  v2 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  v3 = [v2 calculateFreeableSpaceSync];

  return v3;
}

- (void)shrinkBySize:(unint64_t)a3 finished:(id)a4
{
  v6 = a4;
  v7 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  v8 = v7;
  if (v7)
  {
    [v7 shrinkBySize:a3 finished:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)calculateFreeableSpaceWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  v6 = v5;
  if (v5)
  {
    [v5 calculateFreeableSpaceWithHandler:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)performPlaceDataRequest:(id)a3 requestUUID:(id)a4 traits:(id)a5 cachePolicy:(unint64_t)a6 timeout:(double)a7 auditToken:(id)a8 throttleToken:(id)a9 requesterHandler:(id)a10
{
  v16 = a3;
  v53 = a4;
  v54 = a5;
  v17 = a8;
  v55 = a9;
  v18 = a10;
  v19 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = _GEOLogPBCodableData();
    v21 = v19;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68157955;
      *&buf[4] = [v20 length];
      LOWORD(v77) = 2097;
      *(&v77 + 2) = [v20 bytes];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Received request: %{private,geo:PBCodable}.*P", buf, 0x12u);
    }
  }

  v22 = +[GEOOfflineStateManager shared];
  v23 = [v17 offlineCohortId];
  v24 = [v22 currentStateForCohortId:v23];

  v25 = v24;
  if (v24 >= 2u)
  {
    if (v24 == 2)
    {
      goto LABEL_11;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", buf, 8u);
    }
  }

  if (a6 != 4 && a6 != 1)
  {
    v26 = 1;
    goto LABEL_15;
  }

LABEL_11:
  v25 = +[GEOPlatform sharedPlatform];
  if (![v25 isInternalInstall])
  {
    v27 = 0;
    goto LABEL_25;
  }

  v26 = 0;
LABEL_15:
  v28 = [v16 requestedComponents];
  v29 = [NSSet setWithArray:v28];
  v27 = [GEOPDPlace componentTypesFromComponentInfos:v29];

  if (v26)
  {
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    *buf = 0;
    *&v77 = buf;
    *(&v77 + 1) = 0x3032000000;
    v78 = sub_10004D510;
    v79 = sub_10004D520;
    v80 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v30 = [v16 handleData];

    if (v30)
    {
      v31 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
      v32 = [v16 handleData];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10004D528;
      v65[3] = &unk_1000839B8;
      v65[4] = buf;
      v65[5] = &v70;
      v65[6] = &v66;
      [v31 lookupPlaceByHandle:v32 allowExpired:0 resultBlock:v65];

      [v16 setHandleData:0];
    }

    v33 = *(v77 + 40);
    if (!v33)
    {
      v34 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10004D598;
      v64[3] = &unk_1000839B8;
      v64[4] = buf;
      v64[5] = &v70;
      v64[6] = &v66;
      [v34 lookupPlaceByRequest:v16 allowExpired:0 resultBlock:v64];

      v33 = *(v77 + 40);
    }

    if ([v33 nilPlace])
    {
      v35 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Negative cached place", v74, 2u);
      }

      v36 = [NSError GEOErrorWithCode:-8];
      v18[2](v18, 0, v36);
    }

    else
    {
      v39 = *(v77 + 40);
      if (v39 && ([v39 hasExpectedComponentTypes:v27] & 1) == 0)
      {
        v40 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Cached place does not have all expected components, ignoring cache", v74, 2u);
        }

        v41 = *(v77 + 40);
        *(v77 + 40) = 0;
      }

      if (*(v77 + 40))
      {
        v42 = [GEOPDPlaceResponse alloc];
        v36 = [v42 initWithPlace:*(v77 + 40) forRequestType:{objc_msgSend(v16, "requestType")}];
        (v18)[2](v18, v36, 0);

        v43 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *v74 = 134217984;
          *v75 = v36;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Response from the cache: %p", v74, 0xCu);
        }

        v44 = v67[3];
        if (v71[3])
        {
          -[GEOPlaceDataLocalProxy registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:](self, "registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:", 3, 0, v44, [v16 requestType], v17);
          v18 = 0;
          v37 = 1;
        }

        else
        {
          -[GEOPlaceDataLocalProxy registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:](self, "registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:", 1, 0, v44, [v16 requestType], v17);
          v37 = 0;
          v18 = 0;
        }

        goto LABEL_47;
      }

      -[GEOPlaceDataLocalProxy registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:](self, "registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:", 2, 0, v67[3], [v16 requestType], v17);
      v45 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = [v16 placeRequestParameters];
        v47 = _GEOLogPBCodableData();

        v48 = v45;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = [v47 length];
          v50 = v47;
          v51 = [v47 bytes];
          *v74 = 68157955;
          *v75 = v49;
          *&v75[4] = 2097;
          *&v75[6] = v51;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Did not find in cache for request: %{private,geo:PBCodable}.*P", v74, 0x12u);
        }
      }

      if (a6 != 3)
      {
        v37 = 1;
LABEL_48:
        _Block_object_dispose(&v66, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v70, 8);
        if ((v37 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      v36 = [NSError GEOErrorWithCode:-21];
      v18[2](v18, 0, v36);
    }

    v37 = 0;
LABEL_47:

    goto LABEL_48;
  }

LABEL_25:

LABEL_26:
  v38 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Performing request.", buf, 2u);
  }

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10004D608;
  v58[3] = &unk_100083C10;
  v63 = a6;
  v59 = v16;
  v60 = self;
  v27 = v27;
  v61 = v27;
  v62 = v18;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10004D8C8;
  v56[3] = &unk_100083C38;
  v18 = v62;
  v57 = v18;
  [(GEOPlaceDataLocalProxy *)self startRequest:v59 requestUUID:v53 traits:v54 timeout:v17 auditToken:v55 throttleToken:v58 finished:a7 error:v56];

LABEL_29:
}

- (void)trackPlaceData:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 compactDebugDescription];
    v8 = 138477827;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Tracking place data: %{private}@", &v8, 0xCu);
  }

  v7 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  [v7 trackPlace:v4];
}

- (void)fetchAllURLCacheEntriesWithRequesterHandler:(id)a3
{
  v4 = a3;
  v5 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  if (v5)
  {
    +[NSMutableDictionary dictionary];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004E2AC;
    v11 = v10[3] = &unk_100083BE8;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004E2D0;
    v7[3] = &unk_100083BC0;
    v8 = v11;
    v9 = v4;
    v6 = v11;
    [v5 iterateAllMapsURLsWithBlock:v10 finishedBlock:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)fetchAllCacheEntriesWithRequesterHandler:(id)a3
{
  v4 = a3;
  v5 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  if (v5)
  {
    +[NSMutableDictionary dictionary];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004E47C;
    v11 = v10[3] = &unk_100083B98;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004E4DC;
    v7[3] = &unk_100083BC0;
    v8 = v11;
    v9 = v4;
    v6 = v11;
    [v5 iterateAllPlacesWithBlock:v10 finishedBlock:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)requestPhoneNumbers:(id)a3 requestUUID:(id)a4 allowCellularDataForLookup:(BOOL)a5 traits:(id)a6 auditToken:(id)a7 throttleToken:(id)a8 requesterHandler:(id)a9
{
  v12 = a5;
  v16 = a3;
  v36 = a4;
  v17 = a6;
  v37 = a7;
  v38 = a8;
  v18 = a9;
  v19 = v18;
  if (!v16)
  {
    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      *buf = 138543618;
      *&buf[4] = v31;
      *&buf[12] = 2082;
      *&buf[14] = "nil == phoneNumbers";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (!v18)
  {
    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      *buf = 138543618;
      *&buf[4] = v32;
      *&buf[12] = 2082;
      *&buf[14] = "nil == requesterHandler";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (!v17)
  {
    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      *buf = 138543618;
      *&buf[4] = v33;
      *&buf[12] = 2082;
      *&buf[14] = "nil == traits";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

LABEL_21:

    goto LABEL_27;
  }

  if ([v16 count])
  {
    v20 = [v16 count];
    v21 = [NSMutableDictionary dictionaryWithCapacity:v20];
    for (i = [NSMutableArray arrayWithCapacity:v20];
    {
      v23 = [GEOPDPlace failedPlaceData:v36];
      [i addObject:v23];
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10004EB94;
    v48[3] = &unk_100083B20;
    v48[4] = self;
    v24 = v21;
    v49 = v24;
    [v16 enumerateObjectsUsingBlock:v48];
    if ([v24 count])
    {
      v25 = [v24 allKeys];
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = @"NO";
        if (v12)
        {
          v27 = @"YES";
        }

        *buf = 138477827;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Allowed to use cellular data for lookup: %{private}@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v51 = sub_10004ECD8;
      v52 = sub_10004ED04;
      v53 = 0;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10004ED0C;
      v39[3] = &unk_100083B70;
      v39[4] = self;
      v40 = v36;
      v41 = v17;
      v42 = v37;
      v43 = v38;
      v46 = buf;
      v44 = v24;
      v45 = i;
      v47 = v12;
      v28 = objc_retainBlock(v39);
      v29 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v28;

      (*(*(*&buf[8] + 40) + 16))();
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v25 = sub_10004B204(i);
      (v19)[2](v19, v25, 0);
    }
  }

  else
  {
    v34 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "No use running %{public}@ without any phone numbers.", buf, 0xCu);
    }

    v19[2](v19, 0, 0);
  }

LABEL_27:
}

- (void)requestIdentifiers:(id)a3 resultProviderID:(int)a4 requestUUID:(id)a5 traits:(id)a6 options:(unint64_t)a7 auditToken:(id)a8 throttleToken:(id)a9 requesterHandler:(id)a10
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = +[GEOOfflineStateManager shared];
  v21 = [v17 offlineCohortId];
  v22 = [v20 currentStateForCohortId:v21];

  if (v22 >= 3u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    v34 = v22;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", buf, 8u);
  }

  accessIsolater = self->_accessIsolater;
  v30 = v14;
  v31 = v16;
  v32 = v15;
  v24 = v18;
  v25 = v15;
  v26 = v17;
  v27 = v16;
  v28 = v19;
  v29 = v14;
  geo_reentrant_isolate_sync();
}

- (void)cancelRequest:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10004D510;
  v17 = sub_10004D520;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004D510;
  v11 = sub_10004D520;
  v12 = 0;
  accessIsolater = self->_accessIsolater;
  v6 = v4;
  geo_reentrant_isolate_sync_data();
  [v14[5] cancelRequest:{v8[5], _NSConcreteStackBlock, 3221225472, sub_100050EB4, &unk_100083990, self}];

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
}

- (void)startRequest:(id)a3 requestUUID:(id)a4 traits:(id)a5 timeout:(double)a6 auditToken:(id)a7 throttleToken:(id)a8 finished:(id)a9 error:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a9;
  v20 = a10;
  v21 = a8;
  v22 = a7;
  v23 = a5;
  v24 = [(GEOPlaceDataLocalProxy *)self serviceRequester];
  accessIsolater = self->_accessIsolater;
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_100051138;
  v38 = &unk_100083918;
  v39 = self;
  v40 = v18;
  v41 = v24;
  v42 = v17;
  v26 = v17;
  v27 = v24;
  geo_reentrant_isolate_sync_data();
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100051184;
  v31[3] = &unk_100083968;
  v31[4] = self;
  v32 = v40;
  v33 = v20;
  v34 = v19;
  v28 = v19;
  v29 = v20;
  v30 = v40;
  [v27 startWithRequest:v26 traits:v23 timeout:v22 auditToken:v21 throttleToken:v31 completionHandler:a6];
}

- (void)dealloc
{
  requestTimeoutTimer = self->_requestTimeoutTimer;
  if (requestTimeoutTimer)
  {
    dispatch_source_set_timer(requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(self->_requestTimeoutTimer, &stru_1000838A0);
    v4 = self->_requestTimeoutTimer;
    self->_requestTimeoutTimer = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_requestUUIDToRequests allKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(GEOPlaceDataLocalProxy *)self cancelRequest:*(*(&v12 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(GEOPlaceDataLocalProxy *)self _cleanupPendingRequestMananger];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self];

  v11.receiver = self;
  v11.super_class = GEOPlaceDataLocalProxy;
  [(GEOPlaceDataLocalProxy *)&v11 dealloc];
}

- (GEOPlaceDataLocalProxy)init
{
  v19.receiver = self;
  v19.super_class = GEOPlaceDataLocalProxy;
  v2 = [(GEOPlaceDataLocalProxy *)&v19 init];
  if (v2)
  {
    v3 = geo_reentrant_isolater_create();
    accessIsolater = v2->_accessIsolater;
    v2->_accessIsolater = v3;

    v5 = [NSMutableDictionary dictionaryWithCapacity:5];
    requestUUIDToRequesters = v2->_requestUUIDToRequesters;
    v2->_requestUUIDToRequesters = v5;

    v7 = [NSMutableDictionary dictionaryWithCapacity:5];
    requestUUIDToRequests = v2->_requestUUIDToRequests;
    v2->_requestUUIDToRequests = v7;

    v9 = objc_alloc_init(_GEOPlaceDataPendingRequestManager);
    pendingRequestManager = v2->_pendingRequestManager;
    v2->_pendingRequestManager = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_callHistoryRecentsClearedObserver:" name:kGEOCallHistoryRecentsClearedNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"_privacyAndLocationSettingsResetObserver:" name:kGEOResetPrivacyWarningsNotification object:0];

    v13 = +[GEOPrivacyManager sharedManager];
    v14 = [v13 hasFiredCallHistoryRecentsClearedNotification];

    if (v14)
    {
      [(GEOPlaceDataLocalProxy *)v2 _callHistoryRecentsClearedObserver:0];
    }

    v15 = +[GEOPrivacyManager sharedManager];
    v16 = [v15 hasFiredResetPrivacyWarningsNotification];

    if (v16)
    {
      [(GEOPlaceDataLocalProxy *)v2 _privacyAndLocationSettingsResetObserver:0];
    }

    v17 = v2;
  }

  return v2;
}

+ (GEOPlaceDataLocalProxy)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000519BC;
  block[3] = &unk_100083880;
  block[4] = a1;
  if (qword_100096190 != -1)
  {
    dispatch_once(&qword_100096190, block);
  }

  v2 = qword_100096188;

  return v2;
}

@end