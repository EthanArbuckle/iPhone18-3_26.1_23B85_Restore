@interface GEOPlaceDataServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (BOOL)handleIncomingPairedDeviceMessage:(id)a3 completionHandler:(id)a4;
- (GEOPlaceDataServer)initWithDaemon:(id)a3;
- (GEOPlaceDataServer)initWithDaemon:(id)a3 proxy:(id)a4;
- (void)_addRequestUUID:(id)a3 forPeer:(id)a4;
- (void)_removeRequestUUID:(id)a3 forPeer:(id)a4;
- (void)calculateFreeableSpaceSyncWithRequest:(id)a3;
- (void)calculateFreeableSpaceWithRequest:(id)a3;
- (void)cancelPlaceDataRequestWithRequest:(id)a3;
- (void)fetchAllCacheEntriesWithRequest:(id)a3;
- (void)fetchAllURLCacheEntriesWithRequest:(id)a3;
- (void)issuePlaceRequestWithPairedDeviceMessage:(id)a3 completionHandler:(id)a4;
- (void)peerDidDisconnect:(id)a3;
- (void)performPlaceDataRequestWithRequest:(id)a3;
- (void)preservePlaceDataWithRequest:(id)a3;
- (void)registerPlaceRequestExtrasWithRequest:(id)a3;
- (void)requestMUIDsWithRequest:(id)a3;
- (void)requestPhoneNumbersWithRequest:(id)a3;
- (void)shrinkBySizeSyncWithRequest:(id)a3;
- (void)shrinkBySizeWithRequest:(id)a3;
@end

@implementation GEOPlaceDataServer

- (void)issuePlaceRequestWithPairedDeviceMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [GEOApplicationAuditToken alloc];
  v9 = [v6 bundleIdForNetworkAttribution];
  v10 = [v8 initWithProxiedExternalApplicationBundleId:v9];

  v11 = [v6 offlineCohortId];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v6 offlineCohortId];
    v14 = [v10 overrideTokenWithOfflineCohortId:v13];

    v10 = v14;
  }

  v15 = [GEOMapServiceTraits alloc];
  v16 = [v6 traits];
  v17 = [v15 initWithData:v16];

  v18 = [GEOPDPlaceRequest alloc];
  v19 = [v6 requestData];
  v20 = [v18 initWithData:v19];

  placeDataProxy = self->_placeDataProxy;
  v22 = +[NSUUID UUID];
  v23 = [v6 cachePolicy];
  v24 = [v6 timeoutSeconds];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000034E4;
  v26[3] = &unk_1000816B0;
  v27 = v7;
  v25 = v7;
  [(GEOPlaceDataLocalProxy *)placeDataProxy performPlaceDataRequest:v20 requestUUID:v22 traits:v17 cachePolicy:v23 timeout:v10 auditToken:0 throttleToken:v24 requesterHandler:v26];
}

- (void)shrinkBySizeSyncWithRequest:(id)a3
{
  v4 = a3;
  v7 = [[GEOPlaceFreeSpaceReply alloc] initWithRequest:v4];
  placeDataProxy = self->_placeDataProxy;
  v6 = [v4 freeBytes];

  [v7 setFreedBytes:{-[GEOPlaceDataLocalProxy shrinkBySizeSync:](placeDataProxy, "shrinkBySizeSync:", v6)}];
  [v7 send];
}

- (void)shrinkBySizeWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOPlaceFreeSpaceReply alloc] initWithRequest:v4];
  placeDataProxy = self->_placeDataProxy;
  v7 = [v4 freeBytes];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003730;
  v9[3] = &unk_100081688;
  v10 = v5;
  v8 = v5;
  [(GEOPlaceDataLocalProxy *)placeDataProxy shrinkBySize:v7 finished:v9];
}

- (void)calculateFreeableSpaceSyncWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOPlaceCalculateFreeableSpaceReply alloc] initWithRequest:v4];

  [v5 setFreeableBytes:{-[GEOPlaceDataLocalProxy calculateFreeableSpaceSync](self->_placeDataProxy, "calculateFreeableSpaceSync")}];
  [v5 send];
}

- (void)calculateFreeableSpaceWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOPlaceCalculateFreeableSpaceReply alloc] initWithRequest:v4];

  placeDataProxy = self->_placeDataProxy;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000038CC;
  v8[3] = &unk_100081688;
  v9 = v5;
  v7 = v5;
  [(GEOPlaceDataLocalProxy *)placeDataProxy calculateFreeableSpaceWithHandler:v8];
}

- (void)registerPlaceRequestExtrasWithRequest:(id)a3
{
  v3 = a3;
  v4 = [[GEOPlacePlaceRequestExtrasRegistered alloc] initWithRequest:v3];
  v5 = [GEOFilePaths urlFor:40];
  if ([v3 deleteExisting])
  {
    v6 = +[NSFileManager defaultManager];
    v17 = 0;
    [v6 removeItemAtURL:v5 error:&v17];
    v7 = v17;

    v8 = [v7 domain];
    if ([v8 isEqual:NSCocoaErrorDomain])
    {
      v9 = [v7 code];

      if (v9 == 4)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    [v4 setError:v7];
LABEL_11:
    notify_post(GEOPlaceRequestExtrasUpdatedNotification);
    [v4 send];
    goto LABEL_17;
  }

  v10 = [v3 request];
  if (v10)
  {
    v7 = v10;
    v11 = [v10 data];
    if ([v11 length])
    {
      v16 = 0;
      v12 = [v11 writeToURL:v5 options:268435457 error:&v16];
      v13 = v16;
      if (v12)
      {
        notify_post(GEOPlaceRequestExtrasUpdatedNotification);
      }

      else
      {
        [v4 setError:v13];
      }

      [v4 send];
    }

    else
    {
      v15 = [NSError GEOErrorWithCode:-13 reason:@"extras are not encodeable as data??"];
      [v4 setError:v15];

      [v4 send];
    }
  }

  else
  {
    v14 = [NSError GEOErrorWithCode:-10 reason:@"extras are not parseable as GEOPDPlaceRequest"];
    [v4 setError:v14];

    [v4 send];
    v7 = 0;
  }

LABEL_17:
}

- (void)cancelPlaceDataRequestWithRequest:(id)a3
{
  v9 = a3;
  v4 = [v9 requestUUID];

  if (v4)
  {
    v5 = [v9 requestUUID];
    v6 = [v9 peer];
    [(GEOPlaceDataServer *)self _removeRequestUUID:v5 forPeer:v6];

    placeDataProxy = self->_placeDataProxy;
    v8 = [v9 requestUUID];
    [(GEOPlaceDataLocalProxy *)placeDataProxy cancelRequest:v8];
  }
}

- (void)performPlaceDataRequestWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOPlaceReplyMessage alloc] initWithRequest:v4];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4 request];
    *buf = 134217984;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received place data request: %p", buf, 0xCu);
  }

  v8 = [v4 request];
  if (v8 && (v9 = v8, [v4 traits], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [v4 requestUUID];
    v12 = [v4 peer];
    [(GEOPlaceDataServer *)self _addRequestUUID:v11 forPeer:v12];

    placeDataProxy = self->_placeDataProxy;
    v13 = [v4 request];
    v14 = [v4 requestUUID];
    v15 = [v4 traits];
    v16 = [v4 cachePolicy];
    [v4 timeout];
    v18 = v17;
    v19 = [v4 preferredAuditToken];
    v20 = [v4 throttleToken];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100003EE0;
    v23[3] = &unk_100081660;
    v23[4] = self;
    v24 = v4;
    v25 = v5;
    [(GEOPlaceDataLocalProxy *)placeDataProxy performPlaceDataRequest:v13 requestUUID:v14 traits:v15 cachePolicy:v16 timeout:v19 auditToken:v20 throttleToken:v18 requesterHandler:v23];
  }

  else
  {
    v21 = [NSError GEOErrorWithCode:-10 reason:@"Missing request or traits"];
    [v5 setError:v21];

    [v5 send];
  }
}

- (void)preservePlaceDataWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOPlaceCachePlaceReply alloc] initWithRequest:v4];
  v6 = [v4 place];

  if (v6)
  {
    placeDataProxy = self->_placeDataProxy;
    v8 = [v4 place];
    [(GEOPlaceDataLocalProxy *)placeDataProxy trackPlaceData:v8];

    v9 = [GEOMapItemIdentifier alloc];
    v10 = [v4 place];
    v11 = [v9 initWithPlace:v10];
    v14 = v11;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    [v5 setIdentifiers:v12];
  }

  else
  {
    v13 = [NSError GEOErrorWithCode:-10 reason:@"Missing place"];
    [v5 setError:v13];
  }

  [v5 send];
}

- (void)fetchAllURLCacheEntriesWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOPlaceFetchURLCacheReply alloc] initWithRequest:v4];

  placeDataProxy = self->_placeDataProxy;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000042B8;
  v8[3] = &unk_1000816D8;
  v9 = v5;
  v7 = v5;
  [(GEOPlaceDataLocalProxy *)placeDataProxy fetchAllURLCacheEntriesWithRequesterHandler:v8];
}

- (void)fetchAllCacheEntriesWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOPlaceFetchCacheReply alloc] initWithRequest:v4];

  placeDataProxy = self->_placeDataProxy;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000043EC;
  v8[3] = &unk_1000816D8;
  v9 = v5;
  v7 = v5;
  [(GEOPlaceDataLocalProxy *)placeDataProxy fetchAllCacheEntriesWithRequesterHandler:v8];
}

- (void)requestPhoneNumbersWithRequest:(id)a3
{
  v4 = a3;
  v27 = [[GEOPlaceByPhoneNumberReply alloc] initWithRequest:v4];
  v5 = [v4 phoneNumbers];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v4 phoneNumbers];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v31 + 1) + 8 * v11) length] || (v12 = GEOCreatePhoneNumberForStringRepresentation()) == 0)
        {
          v12 = +[NSNull null];
        }

        v13 = v12;
        [v6 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v4 peer];
    v16 = [v15 bundleIdentifier];
    *buf = 138478083;
    v36 = v6;
    v37 = 2113;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Request for phone numbers: %{private}@ by bundle identifier: %{private}@", buf, 0x16u);
  }

  v17 = [v4 allowCellular];
  v18 = [v4 requestUUID];
  v19 = [v4 peer];
  [(GEOPlaceDataServer *)self _addRequestUUID:v18 forPeer:v19];

  placeDataProxy = self->_placeDataProxy;
  v21 = [v4 requestUUID];
  v22 = [v4 traits];
  v23 = [v4 preferredAuditToken];
  v24 = [v4 throttleToken];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000047B8;
  v28[3] = &unk_100081660;
  v28[4] = self;
  v29 = v4;
  v30 = v27;
  v25 = v27;
  v26 = v4;
  [(GEOPlaceDataLocalProxy *)placeDataProxy requestPhoneNumbers:v6 requestUUID:v21 allowCellularDataForLookup:v17 traits:v22 auditToken:v23 throttleToken:v24 requesterHandler:v28];
}

- (void)requestMUIDsWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOPlaceByIdentifiersReply alloc] initWithRequest:v4];
  v6 = [v4 identifiers];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v4 requestUUID];
    v9 = [v4 peer];
    [(GEOPlaceDataServer *)self _addRequestUUID:v8 forPeer:v9];

    placeDataProxy = self->_placeDataProxy;
    v10 = [v4 identifiers];
    v17 = [v4 resultProvider];
    v11 = [v4 requestUUID];
    v12 = [v4 traits];
    v13 = [v4 options];
    v14 = [v4 preferredAuditToken];
    v15 = [v4 throttleToken];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100004B30;
    v19[3] = &unk_100081660;
    v19[4] = self;
    v20 = v4;
    v21 = v5;
    [(GEOPlaceDataLocalProxy *)placeDataProxy requestIdentifiers:v10 resultProviderID:v17 requestUUID:v11 traits:v12 options:v13 auditToken:v14 throttleToken:v15 requesterHandler:v19];
  }

  else
  {
    v16 = [NSError GEOErrorWithCode:-10 reason:@"Empty list of Identifiers"];
    [v5 setError:v16];

    [v5 send];
  }
}

- (void)peerDidDisconnect:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100004E90;
  v26 = sub_100004EA0;
  v27 = 0;
  peerToRequestUUIDIsolater = self->_peerToRequestUUIDIsolater;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100004EA8;
  v18 = &unk_100082AD8;
  v21 = &v22;
  v19 = self;
  v6 = v4;
  v20 = v6;
  geo_isolate_sync_data();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v23[5];
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v28 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(GEOPlaceDataLocalProxy *)self->_placeDataProxy cancelRequest:*(*(&v11 + 1) + 8 * v10), v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v28 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v22, 8);
}

- (void)_removeRequestUUID:(id)a3 forPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  peerToRequestUUIDIsolater = self->_peerToRequestUUIDIsolater;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  geo_isolate_sync_data();
}

- (void)_addRequestUUID:(id)a3 forPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  peerToRequestUUIDIsolater = self->_peerToRequestUUIDIsolater;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  geo_isolate_sync_data();
}

- (GEOPlaceDataServer)initWithDaemon:(id)a3 proxy:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = GEOPlaceDataServer;
  v8 = [(GEOPlaceDataServer *)&v17 initWithDaemon:a3];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    objc_storeStrong(&v8->_placeDataProxy, a4);
    v10 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:5];
    peerToRequestUUID = v9->_peerToRequestUUID;
    v9->_peerToRequestUUID = v10;

    v12 = geo_isolater_create();
    peerToRequestUUIDIsolater = v9->_peerToRequestUUIDIsolater;
    v9->_peerToRequestUUIDIsolater = v12;

LABEL_4:
    v14 = v9;
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v16[0] = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: proxy != ((void *)0)", v16, 2u);
  }

  v14 = 0;
LABEL_5:

  return v14;
}

- (GEOPlaceDataServer)initWithDaemon:(id)a3
{
  v4 = a3;
  v5 = +[GEOPlaceDataLocalProxy shared];
  v6 = [(GEOPlaceDataServer *)self initWithDaemon:v4 proxy:v5];

  return v6;
}

- (BOOL)handleIncomingPairedDeviceMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 4)
  {
    v8 = [v6 placeRequest];
    v9 = v8 != 0;
    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100016A0C;
      v11[3] = &unk_100081C60;
      v12 = v7;
      [(GEOPlaceDataServer *)self issuePlaceRequestWithPairedDeviceMessage:v8 completionHandler:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 <= 2014)
  {
    if (v13 > 1665)
    {
      switch(v13)
      {
        case 1666:
          v14 = 1;
          if (sub_100001B78(v12, v11, @"placedata", v10, &off_100088CA0, 1))
          {
            v36 = objc_opt_class();
            v37 = sub_100001388(@"placedata", v10, v11, v36, v12);
            v17 = v37;
            if (v37)
            {
              [v37 setSignpostId:a6];
              [(GEOPlaceDataServer *)self shrinkBySizeSyncWithRequest:v17];
              goto LABEL_52;
            }

            goto LABEL_55;
          }

          break;
        case 1739:
          v40 = objc_opt_class();
          v41 = sub_100001388(@"placedata", v10, v11, v40, v12);
          v17 = v41;
          if (v41)
          {
            [v41 setSignpostId:a6];
            [(GEOPlaceDataServer *)self preservePlaceDataWithRequest:v17];
            goto LABEL_52;
          }

          goto LABEL_55;
        case 2001:
          v14 = 1;
          if (sub_100001B78(v12, v11, @"placedata", v10, &off_100088C10, 1))
          {
            v22 = objc_opt_class();
            v23 = sub_100001388(@"placedata", v10, v11, v22, v12);
            v17 = v23;
            if (v23)
            {
              [v23 setSignpostId:a6];
              [(GEOPlaceDataServer *)self fetchAllCacheEntriesWithRequest:v17];
              goto LABEL_52;
            }

            goto LABEL_55;
          }

          break;
      }
    }

    else
    {
      switch(v13)
      {
        case 987:
          v14 = 1;
          if (sub_100001B78(v12, v11, @"placedata", v10, &off_100088CB8, 1))
          {
            v34 = objc_opt_class();
            v35 = sub_100001388(@"placedata", v10, v11, v34, v12);
            v17 = v35;
            if (v35)
            {
              [v35 setSignpostId:a6];
              [(GEOPlaceDataServer *)self clearCacheWithRequest:v17];
              goto LABEL_52;
            }

            goto LABEL_55;
          }

          break;
        case 1195:
          v38 = objc_opt_class();
          v39 = sub_100001388(@"placedata", v10, v11, v38, v12);
          v17 = v39;
          if (v39)
          {
            [v39 setSignpostId:a6];
            [(GEOPlaceDataServer *)self requestMUIDsWithRequest:v17];
            goto LABEL_52;
          }

          goto LABEL_55;
        case 1253:
          v14 = 1;
          if (sub_100001B78(v12, v11, @"placedata", v10, &off_100088C88, 1))
          {
            v18 = objc_opt_class();
            v19 = sub_100001388(@"placedata", v10, v11, v18, v12);
            v17 = v19;
            if (v19)
            {
              [v19 setSignpostId:a6];
              [(GEOPlaceDataServer *)self shrinkBySizeWithRequest:v17];
              goto LABEL_52;
            }

LABEL_55:
            v14 = 0;
            goto LABEL_53;
          }

          break;
      }
    }
  }

  else if (v13 <= 2243)
  {
    switch(v13)
    {
      case 2015:
        v30 = objc_opt_class();
        v31 = sub_100001388(@"placedata", v10, v11, v30, v12);
        v17 = v31;
        if (v31)
        {
          [v31 setSignpostId:a6];
          [(GEOPlaceDataServer *)self requestPhoneNumbersWithRequest:v17];
          goto LABEL_52;
        }

        goto LABEL_55;
      case 2222:
        v32 = objc_opt_class();
        v33 = sub_100001388(@"placedata", v10, v11, v32, v12);
        v17 = v33;
        if (v33)
        {
          [v33 setSignpostId:a6];
          [(GEOPlaceDataServer *)self cancelPlaceDataRequestWithRequest:v17];
          goto LABEL_52;
        }

        goto LABEL_55;
      case 2224:
        v14 = 1;
        if (sub_100001B78(v12, v11, @"placedata", v10, &off_100088C58, 1))
        {
          v20 = objc_opt_class();
          v21 = sub_100001388(@"placedata", v10, v11, v20, v12);
          v17 = v21;
          if (v21)
          {
            [v21 setSignpostId:a6];
            [(GEOPlaceDataServer *)self calculateFreeableSpaceWithRequest:v17];
            goto LABEL_52;
          }

          goto LABEL_55;
        }

        break;
    }
  }

  else if (v13 > 2636)
  {
    if (v13 == 2637)
    {
      v14 = 1;
      if (sub_100001B78(v12, v11, @"placedata", v10, &off_100088C70, 1))
      {
        v28 = objc_opt_class();
        v29 = sub_100001388(@"placedata", v10, v11, v28, v12);
        v17 = v29;
        if (v29)
        {
          [v29 setSignpostId:a6];
          [(GEOPlaceDataServer *)self calculateFreeableSpaceSyncWithRequest:v17];
          goto LABEL_52;
        }

        goto LABEL_55;
      }
    }

    else if (v13 == 2730)
    {
      v14 = 1;
      if (sub_100001B78(v12, v11, @"placedata", v10, &off_100088C40, 1))
      {
        v24 = objc_opt_class();
        v25 = sub_100001388(@"placedata", v10, v11, v24, v12);
        v17 = v25;
        if (v25)
        {
          [v25 setSignpostId:a6];
          [(GEOPlaceDataServer *)self registerPlaceRequestExtrasWithRequest:v17];
          goto LABEL_52;
        }

        goto LABEL_55;
      }
    }
  }

  else if (v13 == 2244)
  {
    v14 = 1;
    if (sub_100001B78(v12, v11, @"placedata", v10, &off_100088C28, 1))
    {
      v26 = objc_opt_class();
      v27 = sub_100001388(@"placedata", v10, v11, v26, v12);
      v17 = v27;
      if (v27)
      {
        [v27 setSignpostId:a6];
        [(GEOPlaceDataServer *)self fetchAllURLCacheEntriesWithRequest:v17];
        goto LABEL_52;
      }

      goto LABEL_55;
    }
  }

  else if (v13 == 2371)
  {
    v15 = objc_opt_class();
    v16 = sub_100001388(@"placedata", v10, v11, v15, v12);
    v17 = v16;
    if (v16)
    {
      [v16 setSignpostId:a6];
      [(GEOPlaceDataServer *)self performPlaceDataRequestWithRequest:v17];
LABEL_52:
      v14 = 1;
LABEL_53:

      goto LABEL_54;
    }

    goto LABEL_55;
  }

LABEL_54:

  return v14;
}

@end