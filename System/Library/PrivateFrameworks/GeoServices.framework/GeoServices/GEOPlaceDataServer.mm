@interface GEOPlaceDataServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (GEOPlaceDataServer)initWithDaemon:(id)daemon;
- (GEOPlaceDataServer)initWithDaemon:(id)daemon proxy:(id)proxy;
- (void)_addRequestUUID:(id)d forPeer:(id)peer;
- (void)_removeRequestUUID:(id)d forPeer:(id)peer;
- (void)calculateFreeableSpaceSyncWithRequest:(id)request;
- (void)calculateFreeableSpaceWithRequest:(id)request;
- (void)cancelPlaceDataRequestWithRequest:(id)request;
- (void)fetchAllCacheEntriesWithRequest:(id)request;
- (void)fetchAllURLCacheEntriesWithRequest:(id)request;
- (void)issuePlaceRequestWithPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (void)peerDidDisconnect:(id)disconnect;
- (void)performPlaceDataRequestWithRequest:(id)request;
- (void)preservePlaceDataWithRequest:(id)request;
- (void)registerPlaceRequestExtrasWithRequest:(id)request;
- (void)requestMUIDsWithRequest:(id)request;
- (void)requestPhoneNumbersWithRequest:(id)request;
- (void)shrinkBySizeSyncWithRequest:(id)request;
- (void)shrinkBySizeWithRequest:(id)request;
@end

@implementation GEOPlaceDataServer

- (void)issuePlaceRequestWithPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v8 = [GEOApplicationAuditToken alloc];
  bundleIdForNetworkAttribution = [messageCopy bundleIdForNetworkAttribution];
  v10 = [v8 initWithProxiedExternalApplicationBundleId:bundleIdForNetworkAttribution];

  offlineCohortId = [messageCopy offlineCohortId];
  v12 = [offlineCohortId length];

  if (v12)
  {
    offlineCohortId2 = [messageCopy offlineCohortId];
    v14 = [v10 overrideTokenWithOfflineCohortId:offlineCohortId2];

    v10 = v14;
  }

  v15 = [GEOMapServiceTraits alloc];
  traits = [messageCopy traits];
  v17 = [v15 initWithData:traits];

  v18 = [GEOPDPlaceRequest alloc];
  requestData = [messageCopy requestData];
  v20 = [v18 initWithData:requestData];

  placeDataProxy = self->_placeDataProxy;
  v22 = +[NSUUID UUID];
  cachePolicy = [messageCopy cachePolicy];
  timeoutSeconds = [messageCopy timeoutSeconds];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000034E4;
  v26[3] = &unk_1000816B0;
  v27 = handlerCopy;
  v25 = handlerCopy;
  [(GEOPlaceDataLocalProxy *)placeDataProxy performPlaceDataRequest:v20 requestUUID:v22 traits:v17 cachePolicy:cachePolicy timeout:v10 auditToken:0 throttleToken:timeoutSeconds requesterHandler:v26];
}

- (void)shrinkBySizeSyncWithRequest:(id)request
{
  requestCopy = request;
  v7 = [[GEOPlaceFreeSpaceReply alloc] initWithRequest:requestCopy];
  placeDataProxy = self->_placeDataProxy;
  freeBytes = [requestCopy freeBytes];

  [v7 setFreedBytes:{-[GEOPlaceDataLocalProxy shrinkBySizeSync:](placeDataProxy, "shrinkBySizeSync:", freeBytes)}];
  [v7 send];
}

- (void)shrinkBySizeWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOPlaceFreeSpaceReply alloc] initWithRequest:requestCopy];
  placeDataProxy = self->_placeDataProxy;
  freeBytes = [requestCopy freeBytes];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003730;
  v9[3] = &unk_100081688;
  v10 = v5;
  v8 = v5;
  [(GEOPlaceDataLocalProxy *)placeDataProxy shrinkBySize:freeBytes finished:v9];
}

- (void)calculateFreeableSpaceSyncWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOPlaceCalculateFreeableSpaceReply alloc] initWithRequest:requestCopy];

  [v5 setFreeableBytes:{-[GEOPlaceDataLocalProxy calculateFreeableSpaceSync](self->_placeDataProxy, "calculateFreeableSpaceSync")}];
  [v5 send];
}

- (void)calculateFreeableSpaceWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOPlaceCalculateFreeableSpaceReply alloc] initWithRequest:requestCopy];

  placeDataProxy = self->_placeDataProxy;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000038CC;
  v8[3] = &unk_100081688;
  v9 = v5;
  v7 = v5;
  [(GEOPlaceDataLocalProxy *)placeDataProxy calculateFreeableSpaceWithHandler:v8];
}

- (void)registerPlaceRequestExtrasWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOPlacePlaceRequestExtrasRegistered alloc] initWithRequest:requestCopy];
  v5 = [GEOFilePaths urlFor:40];
  if ([requestCopy deleteExisting])
  {
    v6 = +[NSFileManager defaultManager];
    v17 = 0;
    [v6 removeItemAtURL:v5 error:&v17];
    v7 = v17;

    domain = [v7 domain];
    if ([domain isEqual:NSCocoaErrorDomain])
    {
      code = [v7 code];

      if (code == 4)
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

  request = [requestCopy request];
  if (request)
  {
    v7 = request;
    data = [request data];
    if ([data length])
    {
      v16 = 0;
      v12 = [data writeToURL:v5 options:268435457 error:&v16];
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

- (void)cancelPlaceDataRequestWithRequest:(id)request
{
  requestCopy = request;
  requestUUID = [requestCopy requestUUID];

  if (requestUUID)
  {
    requestUUID2 = [requestCopy requestUUID];
    peer = [requestCopy peer];
    [(GEOPlaceDataServer *)self _removeRequestUUID:requestUUID2 forPeer:peer];

    placeDataProxy = self->_placeDataProxy;
    requestUUID3 = [requestCopy requestUUID];
    [(GEOPlaceDataLocalProxy *)placeDataProxy cancelRequest:requestUUID3];
  }
}

- (void)performPlaceDataRequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOPlaceReplyMessage alloc] initWithRequest:requestCopy];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    request = [requestCopy request];
    *buf = 134217984;
    v27 = request;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received place data request: %p", buf, 0xCu);
  }

  request2 = [requestCopy request];
  if (request2 && (v9 = request2, [requestCopy traits], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    requestUUID = [requestCopy requestUUID];
    peer = [requestCopy peer];
    [(GEOPlaceDataServer *)self _addRequestUUID:requestUUID forPeer:peer];

    placeDataProxy = self->_placeDataProxy;
    request3 = [requestCopy request];
    requestUUID2 = [requestCopy requestUUID];
    traits = [requestCopy traits];
    cachePolicy = [requestCopy cachePolicy];
    [requestCopy timeout];
    v18 = v17;
    preferredAuditToken = [requestCopy preferredAuditToken];
    throttleToken = [requestCopy throttleToken];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100003EE0;
    v23[3] = &unk_100081660;
    v23[4] = self;
    v24 = requestCopy;
    v25 = v5;
    [(GEOPlaceDataLocalProxy *)placeDataProxy performPlaceDataRequest:request3 requestUUID:requestUUID2 traits:traits cachePolicy:cachePolicy timeout:preferredAuditToken auditToken:throttleToken throttleToken:v18 requesterHandler:v23];
  }

  else
  {
    v21 = [NSError GEOErrorWithCode:-10 reason:@"Missing request or traits"];
    [v5 setError:v21];

    [v5 send];
  }
}

- (void)preservePlaceDataWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOPlaceCachePlaceReply alloc] initWithRequest:requestCopy];
  place = [requestCopy place];

  if (place)
  {
    placeDataProxy = self->_placeDataProxy;
    place2 = [requestCopy place];
    [(GEOPlaceDataLocalProxy *)placeDataProxy trackPlaceData:place2];

    v9 = [GEOMapItemIdentifier alloc];
    place3 = [requestCopy place];
    v11 = [v9 initWithPlace:place3];
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

- (void)fetchAllURLCacheEntriesWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOPlaceFetchURLCacheReply alloc] initWithRequest:requestCopy];

  placeDataProxy = self->_placeDataProxy;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000042B8;
  v8[3] = &unk_1000816D8;
  v9 = v5;
  v7 = v5;
  [(GEOPlaceDataLocalProxy *)placeDataProxy fetchAllURLCacheEntriesWithRequesterHandler:v8];
}

- (void)fetchAllCacheEntriesWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOPlaceFetchCacheReply alloc] initWithRequest:requestCopy];

  placeDataProxy = self->_placeDataProxy;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000043EC;
  v8[3] = &unk_1000816D8;
  v9 = v5;
  v7 = v5;
  [(GEOPlaceDataLocalProxy *)placeDataProxy fetchAllCacheEntriesWithRequesterHandler:v8];
}

- (void)requestPhoneNumbersWithRequest:(id)request
{
  requestCopy = request;
  v27 = [[GEOPlaceByPhoneNumberReply alloc] initWithRequest:requestCopy];
  phoneNumbers = [requestCopy phoneNumbers];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [phoneNumbers count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  phoneNumbers2 = [requestCopy phoneNumbers];
  v8 = [phoneNumbers2 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(phoneNumbers2);
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
      v9 = [phoneNumbers2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    peer = [requestCopy peer];
    bundleIdentifier = [peer bundleIdentifier];
    *buf = 138478083;
    v36 = v6;
    v37 = 2113;
    v38 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Request for phone numbers: %{private}@ by bundle identifier: %{private}@", buf, 0x16u);
  }

  allowCellular = [requestCopy allowCellular];
  requestUUID = [requestCopy requestUUID];
  peer2 = [requestCopy peer];
  [(GEOPlaceDataServer *)self _addRequestUUID:requestUUID forPeer:peer2];

  placeDataProxy = self->_placeDataProxy;
  requestUUID2 = [requestCopy requestUUID];
  traits = [requestCopy traits];
  preferredAuditToken = [requestCopy preferredAuditToken];
  throttleToken = [requestCopy throttleToken];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000047B8;
  v28[3] = &unk_100081660;
  v28[4] = self;
  v29 = requestCopy;
  v30 = v27;
  v25 = v27;
  v26 = requestCopy;
  [(GEOPlaceDataLocalProxy *)placeDataProxy requestPhoneNumbers:v6 requestUUID:requestUUID2 allowCellularDataForLookup:allowCellular traits:traits auditToken:preferredAuditToken throttleToken:throttleToken requesterHandler:v28];
}

- (void)requestMUIDsWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOPlaceByIdentifiersReply alloc] initWithRequest:requestCopy];
  identifiers = [requestCopy identifiers];
  v7 = [identifiers count];

  if (v7)
  {
    requestUUID = [requestCopy requestUUID];
    peer = [requestCopy peer];
    [(GEOPlaceDataServer *)self _addRequestUUID:requestUUID forPeer:peer];

    placeDataProxy = self->_placeDataProxy;
    identifiers2 = [requestCopy identifiers];
    resultProvider = [requestCopy resultProvider];
    requestUUID2 = [requestCopy requestUUID];
    traits = [requestCopy traits];
    options = [requestCopy options];
    preferredAuditToken = [requestCopy preferredAuditToken];
    throttleToken = [requestCopy throttleToken];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100004B30;
    v19[3] = &unk_100081660;
    v19[4] = self;
    v20 = requestCopy;
    v21 = v5;
    [(GEOPlaceDataLocalProxy *)placeDataProxy requestIdentifiers:identifiers2 resultProviderID:resultProvider requestUUID:requestUUID2 traits:traits options:options auditToken:preferredAuditToken throttleToken:throttleToken requesterHandler:v19];
  }

  else
  {
    v16 = [NSError GEOErrorWithCode:-10 reason:@"Empty list of Identifiers"];
    [v5 setError:v16];

    [v5 send];
  }
}

- (void)peerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
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
  selfCopy = self;
  v6 = disconnectCopy;
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

- (void)_removeRequestUUID:(id)d forPeer:(id)peer
{
  dCopy = d;
  peerCopy = peer;
  peerToRequestUUIDIsolater = self->_peerToRequestUUIDIsolater;
  v11 = peerCopy;
  v9 = dCopy;
  v10 = peerCopy;
  geo_isolate_sync_data();
}

- (void)_addRequestUUID:(id)d forPeer:(id)peer
{
  dCopy = d;
  peerCopy = peer;
  peerToRequestUUIDIsolater = self->_peerToRequestUUIDIsolater;
  v11 = peerCopy;
  v9 = dCopy;
  v10 = peerCopy;
  geo_isolate_sync_data();
}

- (GEOPlaceDataServer)initWithDaemon:(id)daemon proxy:(id)proxy
{
  proxyCopy = proxy;
  v17.receiver = self;
  v17.super_class = GEOPlaceDataServer;
  v8 = [(GEOPlaceDataServer *)&v17 initWithDaemon:daemon];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  if (proxyCopy)
  {
    objc_storeStrong(&v8->_placeDataProxy, proxy);
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

- (GEOPlaceDataServer)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = +[GEOPlaceDataLocalProxy shared];
  v6 = [(GEOPlaceDataServer *)self initWithDaemon:daemonCopy proxy:v5];

  return v6;
}

- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if ([messageCopy type] == 4)
  {
    placeRequest = [messageCopy placeRequest];
    v9 = placeRequest != 0;
    if (placeRequest)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100016A0C;
      v11[3] = &unk_100081C60;
      v12 = handlerCopy;
      [(GEOPlaceDataServer *)self issuePlaceRequestWithPairedDeviceMessage:placeRequest completionHandler:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 <= 2014)
  {
    if (v13 > 1665)
    {
      switch(v13)
      {
        case 1666:
          v14 = 1;
          if (sub_100001B78(peerCopy, objectCopy, @"placedata", messageCopy, &off_100088CA0, 1))
          {
            v36 = objc_opt_class();
            v37 = sub_100001388(@"placedata", messageCopy, objectCopy, v36, peerCopy);
            v17 = v37;
            if (v37)
            {
              [v37 setSignpostId:id];
              [(GEOPlaceDataServer *)self shrinkBySizeSyncWithRequest:v17];
              goto LABEL_52;
            }

            goto LABEL_55;
          }

          break;
        case 1739:
          v40 = objc_opt_class();
          v41 = sub_100001388(@"placedata", messageCopy, objectCopy, v40, peerCopy);
          v17 = v41;
          if (v41)
          {
            [v41 setSignpostId:id];
            [(GEOPlaceDataServer *)self preservePlaceDataWithRequest:v17];
            goto LABEL_52;
          }

          goto LABEL_55;
        case 2001:
          v14 = 1;
          if (sub_100001B78(peerCopy, objectCopy, @"placedata", messageCopy, &off_100088C10, 1))
          {
            v22 = objc_opt_class();
            v23 = sub_100001388(@"placedata", messageCopy, objectCopy, v22, peerCopy);
            v17 = v23;
            if (v23)
            {
              [v23 setSignpostId:id];
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
          if (sub_100001B78(peerCopy, objectCopy, @"placedata", messageCopy, &off_100088CB8, 1))
          {
            v34 = objc_opt_class();
            v35 = sub_100001388(@"placedata", messageCopy, objectCopy, v34, peerCopy);
            v17 = v35;
            if (v35)
            {
              [v35 setSignpostId:id];
              [(GEOPlaceDataServer *)self clearCacheWithRequest:v17];
              goto LABEL_52;
            }

            goto LABEL_55;
          }

          break;
        case 1195:
          v38 = objc_opt_class();
          v39 = sub_100001388(@"placedata", messageCopy, objectCopy, v38, peerCopy);
          v17 = v39;
          if (v39)
          {
            [v39 setSignpostId:id];
            [(GEOPlaceDataServer *)self requestMUIDsWithRequest:v17];
            goto LABEL_52;
          }

          goto LABEL_55;
        case 1253:
          v14 = 1;
          if (sub_100001B78(peerCopy, objectCopy, @"placedata", messageCopy, &off_100088C88, 1))
          {
            v18 = objc_opt_class();
            v19 = sub_100001388(@"placedata", messageCopy, objectCopy, v18, peerCopy);
            v17 = v19;
            if (v19)
            {
              [v19 setSignpostId:id];
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
        v31 = sub_100001388(@"placedata", messageCopy, objectCopy, v30, peerCopy);
        v17 = v31;
        if (v31)
        {
          [v31 setSignpostId:id];
          [(GEOPlaceDataServer *)self requestPhoneNumbersWithRequest:v17];
          goto LABEL_52;
        }

        goto LABEL_55;
      case 2222:
        v32 = objc_opt_class();
        v33 = sub_100001388(@"placedata", messageCopy, objectCopy, v32, peerCopy);
        v17 = v33;
        if (v33)
        {
          [v33 setSignpostId:id];
          [(GEOPlaceDataServer *)self cancelPlaceDataRequestWithRequest:v17];
          goto LABEL_52;
        }

        goto LABEL_55;
      case 2224:
        v14 = 1;
        if (sub_100001B78(peerCopy, objectCopy, @"placedata", messageCopy, &off_100088C58, 1))
        {
          v20 = objc_opt_class();
          v21 = sub_100001388(@"placedata", messageCopy, objectCopy, v20, peerCopy);
          v17 = v21;
          if (v21)
          {
            [v21 setSignpostId:id];
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
      if (sub_100001B78(peerCopy, objectCopy, @"placedata", messageCopy, &off_100088C70, 1))
      {
        v28 = objc_opt_class();
        v29 = sub_100001388(@"placedata", messageCopy, objectCopy, v28, peerCopy);
        v17 = v29;
        if (v29)
        {
          [v29 setSignpostId:id];
          [(GEOPlaceDataServer *)self calculateFreeableSpaceSyncWithRequest:v17];
          goto LABEL_52;
        }

        goto LABEL_55;
      }
    }

    else if (v13 == 2730)
    {
      v14 = 1;
      if (sub_100001B78(peerCopy, objectCopy, @"placedata", messageCopy, &off_100088C40, 1))
      {
        v24 = objc_opt_class();
        v25 = sub_100001388(@"placedata", messageCopy, objectCopy, v24, peerCopy);
        v17 = v25;
        if (v25)
        {
          [v25 setSignpostId:id];
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
    if (sub_100001B78(peerCopy, objectCopy, @"placedata", messageCopy, &off_100088C28, 1))
    {
      v26 = objc_opt_class();
      v27 = sub_100001388(@"placedata", messageCopy, objectCopy, v26, peerCopy);
      v17 = v27;
      if (v27)
      {
        [v27 setSignpostId:id];
        [(GEOPlaceDataServer *)self fetchAllURLCacheEntriesWithRequest:v17];
        goto LABEL_52;
      }

      goto LABEL_55;
    }
  }

  else if (v13 == 2371)
  {
    v15 = objc_opt_class();
    v16 = sub_100001388(@"placedata", messageCopy, objectCopy, v15, peerCopy);
    v17 = v16;
    if (v16)
    {
      [v16 setSignpostId:id];
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