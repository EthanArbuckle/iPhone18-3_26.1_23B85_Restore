@interface GEOLocationShiftServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (GEOLocationShiftServer)initWithDaemon:(id)daemon;
- (void)fetchCachedFunctionWithRequest:(id)request;
- (void)fetchShiftFunctionWithPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (void)flushDiskCacheWithRequest:(id)request;
- (void)functionVersionWithRequest:(id)request;
- (void)isEnabledWithRequest:(id)request;
- (void)isRequiredForCoordinateWithRequest:(id)request;
- (void)isRequiredForRegionWithRequest:(id)request;
- (void)listDiskCacheWithRequest:(id)request;
- (void)pruneDiskCacheWithRequest:(id)request;
- (void)shiftCoordinateWithRequest:(id)request;
@end

@implementation GEOLocationShiftServer

- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if ([messageCopy type] == 5)
  {
    locationShift = [messageCopy locationShift];
    v9 = locationShift != 0;
    if (locationShift)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001896C;
      v11[3] = &unk_100081C60;
      v12 = handlerCopy;
      [(GEOLocationShiftServer *)self fetchShiftFunctionWithPairedDeviceMessage:locationShift completionHandler:v11];
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
  if (v13 <= 1573)
  {
    if (v13 > 1408)
    {
      if (v13 == 1409)
      {
        if ((sub_100001548(self, peerCopy) & 1) == 0)
        {
          v14 = 1;
          if (sub_100001B78(peerCopy, objectCopy, @"locationshift", messageCopy, &off_100088BB0, 1))
          {
            v26 = objc_opt_class();
            v27 = sub_100001388(@"locationshift", messageCopy, objectCopy, v26, peerCopy);
            v17 = v27;
            if (v27)
            {
              [v27 setSignpostId:id];
              [(GEOLocationShiftServer *)self flushDiskCacheWithRequest:v17];
              goto LABEL_45;
            }

            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (v13 != 1417)
        {
          goto LABEL_47;
        }

        if ((sub_100001548(self, peerCopy) & 1) == 0)
        {
          v14 = 1;
          if (sub_100001B78(peerCopy, objectCopy, @"locationshift", messageCopy, &off_100088B98, 1))
          {
            v20 = objc_opt_class();
            v21 = sub_100001388(@"locationshift", messageCopy, objectCopy, v20, peerCopy);
            v17 = v21;
            if (v21)
            {
              [v21 setSignpostId:id];
              [(GEOLocationShiftServer *)self pruneDiskCacheWithRequest:v17];
              goto LABEL_45;
            }

            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }
    }

    else if (v13 == 903)
    {
      if ((sub_100001548(self, peerCopy) & 1) == 0)
      {
        v24 = objc_opt_class();
        v25 = sub_100001388(@"locationshift", messageCopy, objectCopy, v24, peerCopy);
        v17 = v25;
        if (v25)
        {
          [v25 setSignpostId:id];
          [(GEOLocationShiftServer *)self isEnabledWithRequest:v17];
          goto LABEL_45;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v13 != 1307)
      {
        goto LABEL_47;
      }

      if ((sub_100001548(self, peerCopy) & 1) == 0)
      {
        v14 = 1;
        if (sub_100001B78(peerCopy, objectCopy, @"locationshift", messageCopy, &off_100088BC8, 1))
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"locationshift", messageCopy, objectCopy, v18, peerCopy);
          v17 = v19;
          if (v19)
          {
            [v19 setSignpostId:id];
            [(GEOLocationShiftServer *)self listDiskCacheWithRequest:v17];
            goto LABEL_45;
          }

LABEL_48:
          v14 = 0;
          goto LABEL_46;
        }

        goto LABEL_47;
      }
    }

LABEL_42:
    v14 = 1;
    goto LABEL_47;
  }

  if (v13 <= 1927)
  {
    if (v13 == 1574)
    {
      if ((sub_100001548(self, peerCopy) & 1) == 0)
      {
        v30 = objc_opt_class();
        v31 = sub_100001388(@"locationshift", messageCopy, objectCopy, v30, peerCopy);
        v17 = v31;
        if (v31)
        {
          [v31 setSignpostId:id];
          [(GEOLocationShiftServer *)self shiftCoordinateWithRequest:v17];
          goto LABEL_45;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v13 != 1612)
      {
        goto LABEL_47;
      }

      if ((sub_100001548(self, peerCopy) & 1) == 0)
      {
        v22 = objc_opt_class();
        v23 = sub_100001388(@"locationshift", messageCopy, objectCopy, v22, peerCopy);
        v17 = v23;
        if (v23)
        {
          [v23 setSignpostId:id];
          [(GEOLocationShiftServer *)self functionVersionWithRequest:v17];
          goto LABEL_45;
        }

        goto LABEL_48;
      }
    }

    goto LABEL_42;
  }

  switch(v13)
  {
    case 1928:
      if ((sub_100001548(self, peerCopy) & 1) == 0)
      {
        v14 = 1;
        if (sub_100001B78(peerCopy, objectCopy, @"locationshift", messageCopy, &off_100088BE0, 1))
        {
          v28 = objc_opt_class();
          v29 = sub_100001388(@"locationshift", messageCopy, objectCopy, v28, peerCopy);
          v17 = v29;
          if (v29)
          {
            [v29 setSignpostId:id];
            [(GEOLocationShiftServer *)self fetchCachedFunctionWithRequest:v17];
            goto LABEL_45;
          }

          goto LABEL_48;
        }

        break;
      }

      goto LABEL_42;
    case 1960:
      if ((sub_100001548(self, peerCopy) & 1) == 0)
      {
        v32 = objc_opt_class();
        v33 = sub_100001388(@"locationshift", messageCopy, objectCopy, v32, peerCopy);
        v17 = v33;
        if (v33)
        {
          [v33 setSignpostId:id];
          [(GEOLocationShiftServer *)self isRequiredForRegionWithRequest:v17];
          goto LABEL_45;
        }

        goto LABEL_48;
      }

      goto LABEL_42;
    case 2380:
      if ((sub_100001548(self, peerCopy) & 1) == 0)
      {
        v15 = objc_opt_class();
        v16 = sub_100001388(@"locationshift", messageCopy, objectCopy, v15, peerCopy);
        v17 = v16;
        if (v16)
        {
          [v16 setSignpostId:id];
          [(GEOLocationShiftServer *)self isRequiredForCoordinateWithRequest:v17];
LABEL_45:
          v14 = 1;
LABEL_46:

          break;
        }

        goto LABEL_48;
      }

      goto LABEL_42;
  }

LABEL_47:

  return v14;
}

- (void)fetchShiftFunctionWithPairedDeviceMessage:(id)message completionHandler:(id)handler
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

  shifter = self->_shifter;
  requestData = [messageCopy requestData];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000221A8;
  v19[3] = &unk_1000820C8;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [(GEOLocationShifter *)shifter fetchRawShiftFunctionResponseForRequest:requestData auditToken:v10 callbackQueue:global_queue completionHandler:v19];
}

- (void)listDiskCacheWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOLocationShiftingListCacheResponse alloc] initWithRequest:requestCopy];

  qos_class_self();
  global_queue = geo_get_global_queue();
  v7 = dispatch_group_create();
  v8 = +[NSMutableArray array];
  shifter = self->_shifter;
  qos_class_self();
  v10 = geo_get_global_queue();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100022408;
  v17[3] = &unk_1000820A0;
  v11 = v8;
  v18 = v11;
  [(GEOLocationShifter *)shifter getAllShiftEntries:v7 queue:v10 handler:v17];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000224B8;
  block[3] = &unk_100083940;
  v15 = v5;
  v16 = v11;
  v12 = v11;
  v13 = v5;
  dispatch_group_notify(v7, global_queue, block);
}

- (void)flushDiskCacheWithRequest:(id)request
{
  shifter = self->_shifter;
  v4 = objc_opt_class();

  [v4 flushDiskCache];
}

- (void)pruneDiskCacheWithRequest:(id)request
{
  shifter = self->_shifter;
  v4 = objc_opt_class();

  [v4 pruneDiskCache];
}

- (void)functionVersionWithRequest:(id)request
{
  requestCopy = request;
  v6 = [[GEOLocationShiftingVersionResponse alloc] initWithRequest:requestCopy];

  shifter = self->_shifter;
  [v6 setVersion:{objc_msgSend(objc_opt_class(), "locationShiftFunctionVersion")}];
  [v6 send];
}

- (void)isRequiredForRegionWithRequest:(id)request
{
  requestCopy = request;
  v8 = [[GEOLocationShiftingIsRequiredResponse alloc] initWithRequest:requestCopy];
  shifter = self->_shifter;
  v6 = objc_opt_class();
  region = [requestCopy region];

  [v8 setRequired:{objc_msgSend(v6, "isLocationShiftRequiredForRegion:", region)}];
  [v8 send];
}

- (void)isRequiredForCoordinateWithRequest:(id)request
{
  requestCopy = request;
  v11 = [[GEOLocationShiftingIsRequiredResponse alloc] initWithRequest:requestCopy];
  shifter = self->_shifter;
  v6 = objc_opt_class();
  [requestCopy coordinate];
  v8 = v7;
  v10 = v9;

  [v11 setRequired:{objc_msgSend(v6, "isLocationShiftRequiredForCoordinate:", v8, v10)}];
  [v11 send];
}

- (void)isEnabledWithRequest:(id)request
{
  requestCopy = request;
  v6 = [[GEOLocationShiftingEnabledResponse alloc] initWithRequest:requestCopy];

  shifter = self->_shifter;
  [v6 setEnabled:{objc_msgSend(objc_opt_class(), "isLocationShiftEnabled")}];
  [v6 send];
}

- (void)fetchCachedFunctionWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOLocationShiftingCachedResponseFetchResponse alloc] initWithRequest:requestCopy];
  shifter = self->_shifter;
  latLng = [requestCopy latLng];

  qos_class_self();
  global_queue = geo_get_global_queue();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000228EC;
  v10[3] = &unk_100082078;
  v11 = v5;
  v9 = v5;
  [(GEOLocationShifter *)shifter _fetchCachedShiftFunctionResponseForLocation:latLng callbackQueue:global_queue completionHandler:v10];
}

- (void)shiftCoordinateWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOLocationShiftingFunctionResponse alloc] initWithRequest:requestCopy];
  shifter = self->_shifter;
  latLng = [requestCopy latLng];
  preferredAuditToken = [requestCopy preferredAuditToken];

  global_queue = geo_get_global_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100022A6C;
  v11[3] = &unk_100082078;
  v12 = v5;
  v10 = v5;
  [(GEOLocationShifter *)shifter _fetchShiftFunctionForLatLng:latLng auditToken:preferredAuditToken callbackQueue:global_queue completionHandler:v11];
}

- (GEOLocationShiftServer)initWithDaemon:(id)daemon
{
  v8.receiver = self;
  v8.super_class = GEOLocationShiftServer;
  v3 = [(GEOLocationShiftServer *)&v8 initWithDaemon:daemon];
  if (v3)
  {
    v4 = objc_alloc_init(GEOLocationShifter);
    shifter = v3->_shifter;
    v3->_shifter = v4;

    v6 = v3;
  }

  return v3;
}

@end