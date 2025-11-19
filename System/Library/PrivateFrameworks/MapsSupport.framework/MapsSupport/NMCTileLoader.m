@interface NMCTileLoader
- (NMCTileLoader)initWithRequestIdentifier:(id)a3 manifestConfiguration:(id)a4 tileRequests:(id)a5 auditToken:(id)a6;
- (id)tileRequester:(uint64_t)a3 receivedData:(uint64_t)a4 tileEdition:(uint64_t)a5 tileSetDB:(uint64_t)a6 tileSet:(uint64_t)a7 etag:(uint64_t)a8 forKey:(uint64_t)a9 userInfo:(uint64_t)a10;
- (id)tileRequester:(uint64_t)a3 receivedError:(uint64_t)a4 forKey:(uint64_t)a5;
- (void)_finish;
- (void)_handleTile:(__int128 *)a3 tile:(void *)a4 ETag:(void *)a5 error:(void *)a6 userInfo:(void *)a7 populateCombinedBaseLocalizationData:(int)a8;
- (void)_requestTiles;
- (void)cancel;
- (void)startWithCallbackQueue:(id)a3 tileHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation NMCTileLoader

- (NMCTileLoader)initWithRequestIdentifier:(id)a3 manifestConfiguration:(id)a4 tileRequests:(id)a5 auditToken:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = NMCTileLoader;
  v14 = [(NMCTileLoader *)&v22 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("NMCTileLoader", v15);
    workQueue = v14->_workQueue;
    v14->_workQueue = v16;

    objc_storeStrong(&v14->_manifestConfiguration, a4);
    objc_storeStrong(&v14->_requests, a5);
    objc_storeStrong(&v14->_auditToken, a6);
    v18 = [v10 copy];
    requestIdentifier = v14->_requestIdentifier;
    v14->_requestIdentifier = v18;

    v20 = v14;
  }

  return v14;
}

- (void)startWithCallbackQueue:(id)a3 tileHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009F0C;
  v15[3] = &unk_100085018;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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
        v16 = [v15 cachedETag];
        [v45 setObject:v16 forKey:v14];
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
          v46 = [v24 unsignedIntValue];

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
          [(GEOTileLoader *)v25 loadKey:v23 priority:v46 forClient:v26 options:1027 reason:0 qos:v27 signpostID:v30 auditToken:0 createTime:auditToken callbackQ:workQueue beginNetwork:0 callback:v49];
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

- (id)tileRequester:(uint64_t)a3 receivedData:(uint64_t)a4 tileEdition:(uint64_t)a5 tileSetDB:(uint64_t)a6 tileSet:(uint64_t)a7 etag:(uint64_t)a8 forKey:(uint64_t)a9 userInfo:(uint64_t)a10
{
  v12[0] = a9;
  v12[1] = a10;
  return [a1 _handleTile:v12 tile:a4 ETag:a8 error:0 userInfo:a11 populateCombinedBaseLocalizationData:0];
}

- (id)tileRequester:(uint64_t)a3 receivedError:(uint64_t)a4 forKey:(uint64_t)a5
{
  v7[0] = a5;
  v7[1] = a6;
  return [a1 _handleTile:v7 tile:0 ETag:0 error:a4 userInfo:0 populateCombinedBaseLocalizationData:0];
}

- (void)_handleTile:(__int128 *)a3 tile:(void *)a4 ETag:(void *)a5 error:(void *)a6 userInfo:(void *)a7 populateCombinedBaseLocalizationData:(int)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  dispatch_assert_queue_V2(*(a1 + 8));
  v77 = *a3;
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
    if (!v16)
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
      v81 = v16;
      v19 = "Error loading tile key %{private,geo:TileKey}.*P: %{public}@";
      v20 = v18;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 28;
      goto LABEL_7;
    }
  }

LABEL_9:
  [*(a1 + 56) removeKey:a3];
  v23 = [*(a1 + 64) objectForKey:a3];
  if (v23)
  {
    v24 = objc_retainBlock(*(a1 + 88));
    v25 = v24;
    if (!v24)
    {
LABEL_16:

      goto LABEL_17;
    }

    v26 = a8;
    v66 = v24;
    v27 = v14;
    v28 = v17;
    v69 = v15;
    v29 = objc_alloc_init(NMMessage);
    [(NMMessage *)v29 setType:4];
    v30 = objc_alloc_init(NMArgument);
    [(NMArgument *)v30 setTag:103];
    [(NMArgument *)v30 setStringValue:*(a1 + 24)];
    sub_10000AE24();
    v31 = objc_alloc_init(NMArgument);

    [(NMArgument *)v31 setTag:100];
    v68 = v23;
    v32 = [v23 tileKey];
    [(NMArgument *)v31 setDataValue:v32];

    [(NMMessage *)v29 addArgument:v31];
    if (v16)
    {
      v33 = [[NMArgument alloc] _nm_initWithErrorValue:v16 tag:3];
      v14 = v27;
      v25 = v66;
      goto LABEL_13;
    }

    if (v26)
    {
      if ([v69 length])
      {
        v36 = objc_alloc_init(NMArgument);

        [(NMArgument *)v36 setTag:101];
        [(NMArgument *)v36 setStringValue:v69];
        sub_10000AE24();
        v31 = v36;
      }

      v14 = v27;
      v37 = [v17 objectForKeyedSubscript:GEOTileLoadStaleCachedDataWasCurrentKey];
      objc_opt_class();
      v25 = v66;
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v37 BOOLValue])
      {
        v38 = &OBJC_IVAR___NMTileRequest__localizationURL;
LABEL_54:

        if (!v17)
        {
          goto LABEL_15;
        }

        v33 = objc_alloc_init((v38 + 894));

        [(NMArgument *)v33 setTag:2];
        v55 = GEOTileLoadResultSourceKey;
        v56 = [v17 objectForKeyedSubscript:GEOTileLoadResultSourceKey];

        if (!v56)
        {
LABEL_14:
          [(NMMessage *)v29 addArgument:v33];
          v31 = v33;
LABEL_15:
          v34 = *(a1 + 80);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000A844;
          block[3] = &unk_100085068;
          v71 = v29;
          v72 = v25;
          v35 = v29;
          dispatch_async(v34, block);

          v23 = v68;
          v15 = v69;
          goto LABEL_16;
        }

        v31 = objc_alloc_init(NMStringToObjectTuple);
        [(NMArgument *)v31 setKey:v55];
        v57 = [v17 objectForKeyedSubscript:v55];
        -[NMArgument setIntValue:](v31, "setIntValue:", [v57 unsignedLongLongValue]);

        [(NMArgument *)v33 addStringToObjectMap:v31];
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
        v31 = [v14 data];
        [(NMArgument *)v44 setDataValue:v31];
      }

      else
      {
        v44 = [[NMArgument alloc] _nm_initWithErrorValue:v43 tag:3];
      }

      sub_10000AE24();
      v31 = v44;
      v37 = v63;
LABEL_53:

      goto LABEL_54;
    }

    v75[1] = 0;
    v75[2] = 0;
    GEOSimpleTileRequesterUnpackETag();
    v39 = 0;
    v65 = 0;
    v40 = [v23 cachedBaseETag];
    v62 = [v68 cachedLocalizationETag];
    v37 = v39;
    v41 = [v39 length];
    v17 = v28;
    v64 = v40;
    if (v41)
    {
      v14 = v27;
      if ([v40 length])
      {
        v60 = [v37 isEqualToString:v40];
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
    if ([v65 length] && objc_msgSend(v62, "length"))
    {
      v45 = v65;
      v67 = [v65 isEqualToString:v62];
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
      v31 = v46;
      v45 = v65;
    }

    if ([v45 length])
    {
      v47 = v45;
      v48 = objc_alloc_init(NMArgument);

      [(NMArgument *)v48 setTag:107];
      [(NMArgument *)v48 setStringValue:v47];
      sub_10000AE24();
      v31 = v48;
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
          v31 = v54;
        }

        v38 = &OBJC_IVAR___NMTileRequest__localizationURL;
        goto LABEL_53;
      }
    }

    v53 = objc_alloc_init(NMArgument);

    [(NMArgument *)v53 setTag:104];
    [(NMArgument *)v53 setDataValue:v59];
    [(NMMessage *)v29 addArgument:v53];
    v31 = v53;
    goto LABEL_50;
  }

LABEL_17:
}

@end