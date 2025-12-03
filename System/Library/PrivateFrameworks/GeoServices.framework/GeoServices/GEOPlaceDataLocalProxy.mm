@interface GEOPlaceDataLocalProxy
+ (GEOPlaceDataLocalProxy)shared;
- (GEOPlaceDataLocalProxy)init;
- (id)serviceRequester;
- (unint64_t)calculateFreeableSpaceSync;
- (unint64_t)shrinkBySizeSync:(unint64_t)sync;
- (void)_callHistoryRecentsClearedObserver:(id)observer;
- (void)_privacyAndLocationSettingsResetObserver:(id)observer;
- (void)calculateFreeableSpaceWithHandler:(id)handler;
- (void)cancelRequest:(id)request;
- (void)clearCache;
- (void)dealloc;
- (void)fetchAllCacheEntriesWithRequesterHandler:(id)handler;
- (void)fetchAllURLCacheEntriesWithRequesterHandler:(id)handler;
- (void)performPlaceDataRequest:(id)request requestUUID:(id)d traits:(id)traits cachePolicy:(unint64_t)policy timeout:(double)timeout auditToken:(id)token throttleToken:(id)throttleToken requesterHandler:(id)self0;
- (void)requestIdentifiers:(id)identifiers resultProviderID:(int)d requestUUID:(id)iD traits:(id)traits options:(unint64_t)options auditToken:(id)token throttleToken:(id)throttleToken requesterHandler:(id)self0;
- (void)requestPhoneNumbers:(id)numbers requestUUID:(id)d allowCellularDataForLookup:(BOOL)lookup traits:(id)traits auditToken:(id)token throttleToken:(id)throttleToken requesterHandler:(id)handler;
- (void)shrinkBySize:(unint64_t)size finished:(id)finished;
- (void)startRequest:(id)request requestUUID:(id)d traits:(id)traits timeout:(double)timeout auditToken:(id)token throttleToken:(id)throttleToken finished:(id)finished error:(id)self0;
- (void)trackPlaceData:(id)data;
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

- (void)_privacyAndLocationSettingsResetObserver:(id)observer
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "User did reset privacy and location settings", v6, 2u);
  }

  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  [pdPlaceCache deletePhoneNumberMapping];

  [(GEOPlaceDataLocalProxy *)self clearCache];
}

- (void)_callHistoryRecentsClearedObserver:(id)observer
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received notification indicating phone recents were cleared.", v6, 2u);
  }

  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  [pdPlaceCache deletePhoneNumberMapping];
}

- (void)clearCache
{
  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  [pdPlaceCache evictAllEntries];
}

- (unint64_t)shrinkBySizeSync:(unint64_t)sync
{
  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  v5 = [pdPlaceCache shrinkBySizeSync:sync];

  return v5;
}

- (unint64_t)calculateFreeableSpaceSync
{
  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  calculateFreeableSpaceSync = [pdPlaceCache calculateFreeableSpaceSync];

  return calculateFreeableSpaceSync;
}

- (void)shrinkBySize:(unint64_t)size finished:(id)finished
{
  finishedCopy = finished;
  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  v8 = pdPlaceCache;
  if (pdPlaceCache)
  {
    [pdPlaceCache shrinkBySize:size finished:finishedCopy];
  }

  else
  {
    finishedCopy[2](finishedCopy, 0);
  }
}

- (void)calculateFreeableSpaceWithHandler:(id)handler
{
  handlerCopy = handler;
  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  v6 = pdPlaceCache;
  if (pdPlaceCache)
  {
    [pdPlaceCache calculateFreeableSpaceWithHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)performPlaceDataRequest:(id)request requestUUID:(id)d traits:(id)traits cachePolicy:(unint64_t)policy timeout:(double)timeout auditToken:(id)token throttleToken:(id)throttleToken requesterHandler:(id)self0
{
  requestCopy = request;
  dCopy = d;
  traitsCopy = traits;
  tokenCopy = token;
  throttleTokenCopy = throttleToken;
  handlerCopy = handler;
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
  offlineCohortId = [tokenCopy offlineCohortId];
  v24 = [v22 currentStateForCohortId:offlineCohortId];

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

  if (policy != 4 && policy != 1)
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
  requestedComponents = [requestCopy requestedComponents];
  v29 = [NSSet setWithArray:requestedComponents];
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
    handleData = [requestCopy handleData];

    if (handleData)
    {
      pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
      handleData2 = [requestCopy handleData];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10004D528;
      v65[3] = &unk_1000839B8;
      v65[4] = buf;
      v65[5] = &v70;
      v65[6] = &v66;
      [pdPlaceCache lookupPlaceByHandle:handleData2 allowExpired:0 resultBlock:v65];

      [requestCopy setHandleData:0];
    }

    v33 = *(v77 + 40);
    if (!v33)
    {
      pdPlaceCache2 = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10004D598;
      v64[3] = &unk_1000839B8;
      v64[4] = buf;
      v64[5] = &v70;
      v64[6] = &v66;
      [pdPlaceCache2 lookupPlaceByRequest:requestCopy allowExpired:0 resultBlock:v64];

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
      handlerCopy[2](handlerCopy, 0, v36);
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
        v36 = [v42 initWithPlace:*(v77 + 40) forRequestType:{objc_msgSend(requestCopy, "requestType")}];
        (handlerCopy)[2](handlerCopy, v36, 0);

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
          -[GEOPlaceDataLocalProxy registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:](self, "registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:", 3, 0, v44, [requestCopy requestType], tokenCopy);
          handlerCopy = 0;
          v37 = 1;
        }

        else
        {
          -[GEOPlaceDataLocalProxy registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:](self, "registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:", 1, 0, v44, [requestCopy requestType], tokenCopy);
          v37 = 0;
          handlerCopy = 0;
        }

        goto LABEL_47;
      }

      -[GEOPlaceDataLocalProxy registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:](self, "registerCacheResult:forMapItem:cachedByteCount:forRequestType:auditToken:", 2, 0, v67[3], [requestCopy requestType], tokenCopy);
      v45 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        placeRequestParameters = [requestCopy placeRequestParameters];
        v47 = _GEOLogPBCodableData();

        v48 = v45;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = [v47 length];
          v50 = v47;
          bytes = [v47 bytes];
          *v74 = 68157955;
          *v75 = v49;
          *&v75[4] = 2097;
          *&v75[6] = bytes;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Did not find in cache for request: %{private,geo:PBCodable}.*P", v74, 0x12u);
        }
      }

      if (policy != 3)
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
      handlerCopy[2](handlerCopy, 0, v36);
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
  policyCopy = policy;
  v59 = requestCopy;
  selfCopy = self;
  v27 = v27;
  v61 = v27;
  v62 = handlerCopy;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10004D8C8;
  v56[3] = &unk_100083C38;
  handlerCopy = v62;
  v57 = handlerCopy;
  [(GEOPlaceDataLocalProxy *)self startRequest:v59 requestUUID:dCopy traits:traitsCopy timeout:tokenCopy auditToken:throttleTokenCopy throttleToken:v58 finished:timeout error:v56];

LABEL_29:
}

- (void)trackPlaceData:(id)data
{
  dataCopy = data;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    compactDebugDescription = [dataCopy compactDebugDescription];
    v8 = 138477827;
    v9 = compactDebugDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Tracking place data: %{private}@", &v8, 0xCu);
  }

  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  [pdPlaceCache trackPlace:dataCopy];
}

- (void)fetchAllURLCacheEntriesWithRequesterHandler:(id)handler
{
  handlerCopy = handler;
  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  if (pdPlaceCache)
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
    v9 = handlerCopy;
    v6 = v11;
    [pdPlaceCache iterateAllMapsURLsWithBlock:v10 finishedBlock:v7];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)fetchAllCacheEntriesWithRequesterHandler:(id)handler
{
  handlerCopy = handler;
  pdPlaceCache = [(GEOPlaceDataLocalProxy *)self pdPlaceCache];
  if (pdPlaceCache)
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
    v9 = handlerCopy;
    v6 = v11;
    [pdPlaceCache iterateAllPlacesWithBlock:v10 finishedBlock:v7];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)requestPhoneNumbers:(id)numbers requestUUID:(id)d allowCellularDataForLookup:(BOOL)lookup traits:(id)traits auditToken:(id)token throttleToken:(id)throttleToken requesterHandler:(id)handler
{
  lookupCopy = lookup;
  numbersCopy = numbers;
  dCopy = d;
  traitsCopy = traits;
  tokenCopy = token;
  throttleTokenCopy = throttleToken;
  handlerCopy = handler;
  v19 = handlerCopy;
  if (!numbersCopy)
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

  if (!handlerCopy)
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

  if (!traitsCopy)
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

  if ([numbersCopy count])
  {
    v20 = [numbersCopy count];
    v21 = [NSMutableDictionary dictionaryWithCapacity:v20];
    for (i = [NSMutableArray arrayWithCapacity:v20];
    {
      v23 = [GEOPDPlace failedPlaceData:dCopy];
      [i addObject:v23];
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10004EB94;
    v48[3] = &unk_100083B20;
    v48[4] = self;
    v24 = v21;
    v49 = v24;
    [numbersCopy enumerateObjectsUsingBlock:v48];
    if ([v24 count])
    {
      allKeys = [v24 allKeys];
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = @"NO";
        if (lookupCopy)
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
      v40 = dCopy;
      v41 = traitsCopy;
      v42 = tokenCopy;
      v43 = throttleTokenCopy;
      v46 = buf;
      v44 = v24;
      v45 = i;
      v47 = lookupCopy;
      v28 = objc_retainBlock(v39);
      v29 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v28;

      (*(*(*&buf[8] + 40) + 16))();
      _Block_object_dispose(buf, 8);
    }

    else
    {
      allKeys = sub_10004B204(i);
      (v19)[2](v19, allKeys, 0);
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

- (void)requestIdentifiers:(id)identifiers resultProviderID:(int)d requestUUID:(id)iD traits:(id)traits options:(unint64_t)options auditToken:(id)token throttleToken:(id)throttleToken requesterHandler:(id)self0
{
  identifiersCopy = identifiers;
  iDCopy = iD;
  traitsCopy = traits;
  tokenCopy = token;
  throttleTokenCopy = throttleToken;
  handlerCopy = handler;
  v20 = +[GEOOfflineStateManager shared];
  offlineCohortId = [tokenCopy offlineCohortId];
  v22 = [v20 currentStateForCohortId:offlineCohortId];

  if (v22 >= 3u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    v34 = v22;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", buf, 8u);
  }

  accessIsolater = self->_accessIsolater;
  v30 = identifiersCopy;
  v31 = traitsCopy;
  v32 = iDCopy;
  v24 = throttleTokenCopy;
  v25 = iDCopy;
  v26 = tokenCopy;
  v27 = traitsCopy;
  v28 = handlerCopy;
  v29 = identifiersCopy;
  geo_reentrant_isolate_sync();
}

- (void)cancelRequest:(id)request
{
  requestCopy = request;
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
  v6 = requestCopy;
  geo_reentrant_isolate_sync_data();
  [v14[5] cancelRequest:{v8[5], _NSConcreteStackBlock, 3221225472, sub_100050EB4, &unk_100083990, self}];

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
}

- (void)startRequest:(id)request requestUUID:(id)d traits:(id)traits timeout:(double)timeout auditToken:(id)token throttleToken:(id)throttleToken finished:(id)finished error:(id)self0
{
  requestCopy = request;
  dCopy = d;
  finishedCopy = finished;
  errorCopy = error;
  throttleTokenCopy = throttleToken;
  tokenCopy = token;
  traitsCopy = traits;
  serviceRequester = [(GEOPlaceDataLocalProxy *)self serviceRequester];
  accessIsolater = self->_accessIsolater;
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_100051138;
  v38 = &unk_100083918;
  selfCopy = self;
  v40 = dCopy;
  v41 = serviceRequester;
  v42 = requestCopy;
  v26 = requestCopy;
  v27 = serviceRequester;
  geo_reentrant_isolate_sync_data();
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100051184;
  v31[3] = &unk_100083968;
  v31[4] = self;
  v32 = v40;
  v33 = errorCopy;
  v34 = finishedCopy;
  v28 = finishedCopy;
  v29 = errorCopy;
  v30 = v40;
  [v27 startWithRequest:v26 traits:traitsCopy timeout:tokenCopy auditToken:throttleTokenCopy throttleToken:v31 completionHandler:timeout];
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
  allKeys = [(NSMutableDictionary *)self->_requestUUIDToRequests allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(GEOPlaceDataLocalProxy *)self cancelRequest:*(*(&v12 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    hasFiredCallHistoryRecentsClearedNotification = [v13 hasFiredCallHistoryRecentsClearedNotification];

    if (hasFiredCallHistoryRecentsClearedNotification)
    {
      [(GEOPlaceDataLocalProxy *)v2 _callHistoryRecentsClearedObserver:0];
    }

    v15 = +[GEOPrivacyManager sharedManager];
    hasFiredResetPrivacyWarningsNotification = [v15 hasFiredResetPrivacyWarningsNotification];

    if (hasFiredResetPrivacyWarningsNotification)
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
  block[4] = self;
  if (qword_100096190 != -1)
  {
    dispatch_once(&qword_100096190, block);
  }

  v2 = qword_100096188;

  return v2;
}

@end