@interface NMCTileLoader
- (NMCTileLoader)initWithRequestIdentifier:(id)identifier manifestConfiguration:(id)configuration tileRequests:(id)requests auditToken:(id)token;
- (id)tileRequester:(uint64_t)requester receivedData:(uint64_t)data tileEdition:(uint64_t)edition tileSetDB:(uint64_t)b tileSet:(uint64_t)set etag:(uint64_t)etag forKey:(uint64_t)key userInfo:(uint64_t)self0;
- (id)tileRequester:(uint64_t)requester receivedError:(uint64_t)error forKey:(uint64_t)key;
- (void)_finish;
- (void)_handleTile:(__int128 *)tile tile:(void *)a4 ETag:(void *)tag error:(void *)error userInfo:(void *)info populateCombinedBaseLocalizationData:(int)data;
- (void)_requestTiles;
- (void)cancel;
- (void)startWithCallbackQueue:(id)queue tileHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation NMCTileLoader

- (NMCTileLoader)initWithRequestIdentifier:(id)identifier manifestConfiguration:(id)configuration tileRequests:(id)requests auditToken:(id)token
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  requestsCopy = requests;
  tokenCopy = token;
  v22.receiver = self;
  v22.super_class = NMCTileLoader;
  v14 = [(NMCTileLoader *)&v22 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("NMCTileLoader", v15);
    workQueue = v14->_workQueue;
    v14->_workQueue = v16;

    objc_storeStrong(&v14->_manifestConfiguration, configuration);
    objc_storeStrong(&v14->_requests, requests);
    objc_storeStrong(&v14->_auditToken, token);
    v18 = [identifierCopy copy];
    requestIdentifier = v14->_requestIdentifier;
    v14->_requestIdentifier = v18;

    v20 = v14;
  }

  return v14;
}

- (void)startWithCallbackQueue:(id)queue tileHandler:(id)handler completionHandler:(id)completionHandler
{
  queueCopy = queue;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009F0C;
  v15[3] = &unk_100085018;
  v15[4] = self;
  v16 = queueCopy;
  v17 = handlerCopy;
  v18 = completionHandlerCopy;
  v12 = completionHandlerCopy;
  v13 = handlerCopy;
  v14 = queueCopy;
  dispatch_async(workQueue, v15);
}

- (void)cancel
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A21C;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_requestTiles
{
  v3 = sub_10000A164();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(GEOTileKeyList *)self->_tileKeys count];
    *buf = 134349056;
    v64 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Loading %{public}llu tiles from the network", buf, 0xCu);
  }

  v45 = [[GEOTileKeyMap alloc] initWithMapType:0];
  v5 = [[GEOTileKeyMap alloc] initWithMapType:0];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v6 = self->_tileKeys;
  v7 = [(GEOTileKeyList *)v6 countByEnumeratingWithState:&v57 objects:v62 count:16];
  v47 = v5;
  if (!v7)
  {

LABEL_31:
    LOWORD(v40) = 1;
    v35 = v45;
    v36 = [[GEOTileRequest alloc] initWithKeyList:self->_tileKeys manifestConfiguration:self->_manifestConfiguration locale:0 cachedEtags:v45 cachedData:0 priorities:v5 signpostIDs:0 createTimes:0 additionalInfos:0 cacheInfos:0 auditToken:self->_auditToken constraints:0 backgroundSessionIdentifier:0 shouldParticipateInBalancer:v40 reason:?];
    v37 = [[_NMCSimpleTileRequester alloc] initWithTileRequest:v36 forOriginalRequests:self->_keyToRequest delegateQueue:self->_workQueue delegate:self];
    tileRequester = self->_tileRequester;
    self->_tileRequester = v37;

    v39 = self->_tileRequester;
    v34 = v36;
    v5 = v47;
    [(_NMCSimpleTileRequester *)v39 start];
    goto LABEL_32;
  }

  v8 = v7;
  v9 = 0;
  IsOffline = 0;
  v11 = *v58;
  do
  {
    v12 = 0;
    v13 = IsOffline;
    do
    {
      if (*v58 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v57 + 1) + 8 * v12);
      IsOffline = GEOTileKeyIsOffline();
      if (v9 & (v13 ^ IsOffline))
      {
        sub_1000558F0(buf, &buf[1]);
      }

      v15 = [(GEOTileKeyMap *)self->_keyToRequest objectForKey:v14];
      if ([v15 hasCachedETag])
      {
        cachedETag = [v15 cachedETag];
        [v45 setObject:cachedETag forKey:v14];
      }

      if ([v15 hasPriority])
      {
        v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 priority]);
        [v5 setObject:v17 forKey:v14];
      }

      else
      {
        [v5 setObject:&off_10008BF10 forKey:v14];
      }

      v12 = v12 + 1;
      v9 = 1;
      v13 = IsOffline;
    }

    while (v8 != v12);
    v8 = [(GEOTileKeyList *)v6 countByEnumeratingWithState:&v57 objects:v62 count:16];
  }

  while (v8);

  if (!IsOffline)
  {
    goto LABEL_31;
  }

  group = dispatch_group_create();
  v18 = GEOTileLoaderClientIdentifier();
  tileLoaderClientIdentifier = self->_tileLoaderClientIdentifier;
  self->_tileLoaderClientIdentifier = v18;

  v20 = +[GEOTileLoader modernLoader];
  tileLoaderForOfflineTiles = self->_tileLoaderForOfflineTiles;
  self->_tileLoaderForOfflineTiles = v20;

  [(GEOTileLoader *)self->_tileLoaderForOfflineTiles openForClient:self->_tileLoaderClientIdentifier];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_tileKeys;
  v44 = [(GEOTileKeyList *)obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v44)
  {
    v42 = *v54;
    do
    {
      v22 = 0;
      do
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v53 + 1) + 8 * v22);
        if (GEOTileKeyIsOffline())
        {
          dispatch_group_enter(group);
          v24 = [v47 objectForKey:v23];
          unsignedIntValue = [v24 unsignedIntValue];

          v25 = self->_tileLoaderForOfflineTiles;
          v26 = self->_tileLoaderClientIdentifier;
          v27 = qos_class_self();
          auditToken = self->_auditToken;
          GEOMachAbsoluteTimeGetCurrent();
          v30 = v29;
          workQueue = self->_workQueue;
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_10000A7B0;
          v49[3] = &unk_100085040;
          v49[4] = self;
          v50 = group;
          [(GEOTileLoader *)v25 loadKey:v23 priority:unsignedIntValue forClient:v26 options:1027 reason:0 qos:v27 signpostID:v30 auditToken:0 createTime:auditToken callbackQ:workQueue beginNetwork:0 callback:v49];
        }

        else
        {
          sub_10005595C(&v51, v52);
        }

        v22 = v22 + 1;
        v5 = v47;
      }

      while (v44 != v22);
      v32 = [(GEOTileKeyList *)obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      v44 = v32;
    }

    while (v32);
  }

  v33 = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A804;
  block[3] = &unk_100084F10;
  block[4] = self;
  v34 = group;
  dispatch_group_notify(group, v33, block);
  v35 = v45;
LABEL_32:
}

- (void)_finish
{
  if ([(GEOTileKeyList *)self->_remainingKeys count])
  {
    v3 = sub_10000A164();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(GEOTileKeyList *)self->_remainingKeys count];
      *buf = 134217984;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Requester claimed to be finished, but still have %llu keys remaining.", buf, 0xCu);
    }

    v5 = [NSError GEOErrorWithCode:-13 reason:@"Requester claimed to be finished without handling key"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_remainingKeys;
    v7 = [(GEOTileKeyList *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(NMCTileLoader *)self _handleTile:*(*(&v14 + 1) + 8 * v10) tile:0 ETag:0 error:v5 userInfo:0 populateCombinedBaseLocalizationData:0, v14];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(GEOTileKeyList *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v11 = objc_retainBlock(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  tileHandler = self->_tileHandler;
  self->_tileHandler = 0;

  dispatch_async(self->_callbackQueue, v11);
}

- (id)tileRequester:(uint64_t)requester receivedData:(uint64_t)data tileEdition:(uint64_t)edition tileSetDB:(uint64_t)b tileSet:(uint64_t)set etag:(uint64_t)etag forKey:(uint64_t)key userInfo:(uint64_t)self0
{
  v12[0] = key;
  v12[1] = info;
  return [self _handleTile:v12 tile:data ETag:etag error:0 userInfo:a11 populateCombinedBaseLocalizationData:0];
}

- (id)tileRequester:(uint64_t)requester receivedError:(uint64_t)error forKey:(uint64_t)key
{
  v7[0] = key;
  v7[1] = a6;
  return [self _handleTile:v7 tile:0 ETag:0 error:error userInfo:0 populateCombinedBaseLocalizationData:0];
}

- (void)_handleTile:(__int128 *)tile tile:(void *)a4 ETag:(void *)tag error:(void *)error userInfo:(void *)info populateCombinedBaseLocalizationData:(int)data
{
  v14 = a4;
  tagCopy = tag;
  errorCopy = error;
  infoCopy = info;
  dispatch_assert_queue_V2(*(self + 8));
  v77 = *tile;
  if (v14)
  {
    v18 = sub_10000A164();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68157955;
      LODWORD(v79) = 16;
      sub_10000AE3C();
      v19 = "Successfully loaded tile key %{private,geo:TileKey}.*P";
      v20 = v18;
      v21 = OS_LOG_TYPE_DEBUG;
      v22 = 18;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, v22);
    }
  }

  else
  {
    if (!errorCopy)
    {
      goto LABEL_9;
    }

    v18 = sub_10000A164();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158211;
      LODWORD(v79) = 16;
      sub_10000AE3C();
      v80 = 2114;
      v81 = errorCopy;
      v19 = "Error loading tile key %{private,geo:TileKey}.*P: %{public}@";
      v20 = v18;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 28;
      goto LABEL_7;
    }
  }

LABEL_9:
  [*(self + 56) removeKey:tile];
  v23 = [*(self + 64) objectForKey:tile];
  if (v23)
  {
    v24 = objc_retainBlock(*(self + 88));
    v25 = v24;
    if (!v24)
    {
LABEL_16:

      goto LABEL_17;
    }

    dataCopy = data;
    v66 = v24;
    v27 = v14;
    v28 = infoCopy;
    v69 = tagCopy;
    v29 = objc_alloc_init(NMMessage);
    [(NMMessage *)v29 setType:4];
    v30 = objc_alloc_init(NMArgument);
    [(NMArgument *)v30 setTag:103];
    [(NMArgument *)v30 setStringValue:*(self + 24)];
    sub_10000AE24();
    data = objc_alloc_init(NMArgument);

    [(NMArgument *)data setTag:100];
    v68 = v23;
    tileKey = [v23 tileKey];
    [(NMArgument *)data setDataValue:tileKey];

    [(NMMessage *)v29 addArgument:data];
    if (errorCopy)
    {
      v33 = [[NMArgument alloc] _nm_initWithErrorValue:errorCopy tag:3];
      v14 = v27;
      v25 = v66;
      goto LABEL_13;
    }

    if (dataCopy)
    {
      if ([v69 length])
      {
        v36 = objc_alloc_init(NMArgument);

        [(NMArgument *)v36 setTag:101];
        [(NMArgument *)v36 setStringValue:v69];
        sub_10000AE24();
        data = v36;
      }

      v14 = v27;
      v37 = [infoCopy objectForKeyedSubscript:GEOTileLoadStaleCachedDataWasCurrentKey];
      objc_opt_class();
      v25 = v66;
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v37 BOOLValue])
      {
        v38 = &OBJC_IVAR___NMTileRequest__localizationURL;
LABEL_54:

        if (!infoCopy)
        {
          goto LABEL_15;
        }

        v33 = objc_alloc_init((v38 + 894));

        [(NMArgument *)v33 setTag:2];
        v55 = GEOTileLoadResultSourceKey;
        v56 = [infoCopy objectForKeyedSubscript:GEOTileLoadResultSourceKey];

        if (!v56)
        {
LABEL_14:
          [(NMMessage *)v29 addArgument:v33];
          data = v33;
LABEL_15:
          v34 = *(self + 80);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000A844;
          block[3] = &unk_100085068;
          v71 = v29;
          v72 = v25;
          v35 = v29;
          dispatch_async(v34, block);

          v23 = v68;
          tagCopy = v69;
          goto LABEL_16;
        }

        data = objc_alloc_init(NMStringToObjectTuple);
        [(NMArgument *)data setKey:v55];
        v57 = [infoCopy objectForKeyedSubscript:v55];
        -[NMArgument setIntValue:](data, "setIntValue:", [v57 unsignedLongLongValue]);

        [(NMArgument *)v33 addStringToObjectMap:data];
LABEL_13:

        goto LABEL_14;
      }

      v63 = v37;
      v76 = 0;
      v42 = [v14 readDataWithError:&v76];
      v43 = v76;
      v38 = &OBJC_IVAR___NMTileRequest__localizationURL;
      v64 = v43;
      v65 = v42;
      if (v42)
      {
        v44 = objc_alloc_init(NMArgument);

        [(NMArgument *)v44 setTag:1];
        data = [v14 data];
        [(NMArgument *)v44 setDataValue:data];
      }

      else
      {
        v44 = [[NMArgument alloc] _nm_initWithErrorValue:v43 tag:3];
      }

      sub_10000AE24();
      data = v44;
      v37 = v63;
LABEL_53:

      goto LABEL_54;
    }

    v75[1] = 0;
    v75[2] = 0;
    GEOSimpleTileRequesterUnpackETag();
    v39 = 0;
    v65 = 0;
    cachedBaseETag = [v23 cachedBaseETag];
    cachedLocalizationETag = [v68 cachedLocalizationETag];
    v37 = v39;
    v41 = [v39 length];
    infoCopy = v28;
    v64 = cachedBaseETag;
    if (v41)
    {
      v14 = v27;
      if ([cachedBaseETag length])
      {
        v60 = [v37 isEqualToString:cachedBaseETag];
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
      v14 = v27;
    }

    v25 = v66;
    if ([v65 length] && objc_msgSend(cachedLocalizationETag, "length"))
    {
      v45 = v65;
      v67 = [v65 isEqualToString:cachedLocalizationETag];
    }

    else
    {
      v67 = 0;
      v45 = v65;
    }

    if ([v37 length])
    {
      v46 = objc_alloc_init(NMArgument);

      [(NMArgument *)v46 setTag:105];
      [(NMArgument *)v46 setStringValue:v37];
      sub_10000AE24();
      data = v46;
      v45 = v65;
    }

    if ([v45 length])
    {
      v47 = v45;
      v48 = objc_alloc_init(NMArgument);

      [(NMArgument *)v48 setTag:107];
      [(NMArgument *)v48 setStringValue:v47];
      sub_10000AE24();
      data = v48;
    }

    v49 = v60;
    v75[0] = 0;
    v50 = [v14 readDataWithError:v75];
    v58 = v75[0];
    v61 = v50;
    if (!v50)
    {
      v51 = sub_10000A164();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v79 = v58;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Error reading tile data: %{public}@", buf, 0xCu);
      }
    }

    if (v49 & v67)
    {
      v59 = 0;
      v52 = 0;
      if (v49)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v73 = 0;
      v74 = 0;
      GEOTileUnpackageBaseAndLocalization();
      v59 = 0;
      v52 = 0;
      if (v49)
      {
LABEL_50:
        if ((v67 & 1) == 0)
        {
          v54 = objc_alloc_init(NMArgument);

          [(NMArgument *)v54 setTag:106];
          [(NMArgument *)v54 setDataValue:v52];
          [(NMMessage *)v29 addArgument:v54];
          data = v54;
        }

        v38 = &OBJC_IVAR___NMTileRequest__localizationURL;
        goto LABEL_53;
      }
    }

    v53 = objc_alloc_init(NMArgument);

    [(NMArgument *)v53 setTag:104];
    [(NMArgument *)v53 setDataValue:v59];
    [(NMMessage *)v29 addArgument:v53];
    data = v53;
    goto LABEL_50;
  }

LABEL_17:
}

@end