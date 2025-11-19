@interface GEOLocationShiftServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (BOOL)handleIncomingPairedDeviceMessage:(id)a3 completionHandler:(id)a4;
- (GEOLocationShiftServer)initWithDaemon:(id)a3;
- (void)fetchCachedFunctionWithRequest:(id)a3;
- (void)fetchShiftFunctionWithPairedDeviceMessage:(id)a3 completionHandler:(id)a4;
- (void)flushDiskCacheWithRequest:(id)a3;
- (void)functionVersionWithRequest:(id)a3;
- (void)isEnabledWithRequest:(id)a3;
- (void)isRequiredForCoordinateWithRequest:(id)a3;
- (void)isRequiredForRegionWithRequest:(id)a3;
- (void)listDiskCacheWithRequest:(id)a3;
- (void)pruneDiskCacheWithRequest:(id)a3;
- (void)shiftCoordinateWithRequest:(id)a3;
@end

@implementation GEOLocationShiftServer

- (BOOL)handleIncomingPairedDeviceMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 5)
  {
    v8 = [v6 locationShift];
    v9 = v8 != 0;
    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001896C;
      v11[3] = &unk_100081C60;
      v12 = v7;
      [(GEOLocationShiftServer *)self fetchShiftFunctionWithPairedDeviceMessage:v8 completionHandler:v11];
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
  if (v13 <= 1573)
  {
    if (v13 > 1408)
    {
      if (v13 == 1409)
      {
        if ((sub_100001548(self, v12) & 1) == 0)
        {
          v14 = 1;
          if (sub_100001B78(v12, v11, @"locationshift", v10, &off_100088BB0, 1))
          {
            v26 = objc_opt_class();
            v27 = sub_100001388(@"locationshift", v10, v11, v26, v12);
            v17 = v27;
            if (v27)
            {
              [v27 setSignpostId:a6];
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

        if ((sub_100001548(self, v12) & 1) == 0)
        {
          v14 = 1;
          if (sub_100001B78(v12, v11, @"locationshift", v10, &off_100088B98, 1))
          {
            v20 = objc_opt_class();
            v21 = sub_100001388(@"locationshift", v10, v11, v20, v12);
            v17 = v21;
            if (v21)
            {
              [v21 setSignpostId:a6];
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
      if ((sub_100001548(self, v12) & 1) == 0)
      {
        v24 = objc_opt_class();
        v25 = sub_100001388(@"locationshift", v10, v11, v24, v12);
        v17 = v25;
        if (v25)
        {
          [v25 setSignpostId:a6];
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

      if ((sub_100001548(self, v12) & 1) == 0)
      {
        v14 = 1;
        if (sub_100001B78(v12, v11, @"locationshift", v10, &off_100088BC8, 1))
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"locationshift", v10, v11, v18, v12);
          v17 = v19;
          if (v19)
          {
            [v19 setSignpostId:a6];
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
      if ((sub_100001548(self, v12) & 1) == 0)
      {
        v30 = objc_opt_class();
        v31 = sub_100001388(@"locationshift", v10, v11, v30, v12);
        v17 = v31;
        if (v31)
        {
          [v31 setSignpostId:a6];
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

      if ((sub_100001548(self, v12) & 1) == 0)
      {
        v22 = objc_opt_class();
        v23 = sub_100001388(@"locationshift", v10, v11, v22, v12);
        v17 = v23;
        if (v23)
        {
          [v23 setSignpostId:a6];
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
      if ((sub_100001548(self, v12) & 1) == 0)
      {
        v14 = 1;
        if (sub_100001B78(v12, v11, @"locationshift", v10, &off_100088BE0, 1))
        {
          v28 = objc_opt_class();
          v29 = sub_100001388(@"locationshift", v10, v11, v28, v12);
          v17 = v29;
          if (v29)
          {
            [v29 setSignpostId:a6];
            [(GEOLocationShiftServer *)self fetchCachedFunctionWithRequest:v17];
            goto LABEL_45;
          }

          goto LABEL_48;
        }

        break;
      }

      goto LABEL_42;
    case 1960:
      if ((sub_100001548(self, v12) & 1) == 0)
      {
        v32 = objc_opt_class();
        v33 = sub_100001388(@"locationshift", v10, v11, v32, v12);
        v17 = v33;
        if (v33)
        {
          [v33 setSignpostId:a6];
          [(GEOLocationShiftServer *)self isRequiredForRegionWithRequest:v17];
          goto LABEL_45;
        }

        goto LABEL_48;
      }

      goto LABEL_42;
    case 2380:
      if ((sub_100001548(self, v12) & 1) == 0)
      {
        v15 = objc_opt_class();
        v16 = sub_100001388(@"locationshift", v10, v11, v15, v12);
        v17 = v16;
        if (v16)
        {
          [v16 setSignpostId:a6];
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

- (void)fetchShiftFunctionWithPairedDeviceMessage:(id)a3 completionHandler:(id)a4
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

  shifter = self->_shifter;
  v16 = [v6 requestData];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000221A8;
  v19[3] = &unk_1000820C8;
  v20 = v7;
  v18 = v7;
  [(GEOLocationShifter *)shifter fetchRawShiftFunctionResponseForRequest:v16 auditToken:v10 callbackQueue:global_queue completionHandler:v19];
}

- (void)listDiskCacheWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOLocationShiftingListCacheResponse alloc] initWithRequest:v4];

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

- (void)flushDiskCacheWithRequest:(id)a3
{
  shifter = self->_shifter;
  v4 = objc_opt_class();

  [v4 flushDiskCache];
}

- (void)pruneDiskCacheWithRequest:(id)a3
{
  shifter = self->_shifter;
  v4 = objc_opt_class();

  [v4 pruneDiskCache];
}

- (void)functionVersionWithRequest:(id)a3
{
  v4 = a3;
  v6 = [[GEOLocationShiftingVersionResponse alloc] initWithRequest:v4];

  shifter = self->_shifter;
  [v6 setVersion:{objc_msgSend(objc_opt_class(), "locationShiftFunctionVersion")}];
  [v6 send];
}

- (void)isRequiredForRegionWithRequest:(id)a3
{
  v4 = a3;
  v8 = [[GEOLocationShiftingIsRequiredResponse alloc] initWithRequest:v4];
  shifter = self->_shifter;
  v6 = objc_opt_class();
  v7 = [v4 region];

  [v8 setRequired:{objc_msgSend(v6, "isLocationShiftRequiredForRegion:", v7)}];
  [v8 send];
}

- (void)isRequiredForCoordinateWithRequest:(id)a3
{
  v4 = a3;
  v11 = [[GEOLocationShiftingIsRequiredResponse alloc] initWithRequest:v4];
  shifter = self->_shifter;
  v6 = objc_opt_class();
  [v4 coordinate];
  v8 = v7;
  v10 = v9;

  [v11 setRequired:{objc_msgSend(v6, "isLocationShiftRequiredForCoordinate:", v8, v10)}];
  [v11 send];
}

- (void)isEnabledWithRequest:(id)a3
{
  v4 = a3;
  v6 = [[GEOLocationShiftingEnabledResponse alloc] initWithRequest:v4];

  shifter = self->_shifter;
  [v6 setEnabled:{objc_msgSend(objc_opt_class(), "isLocationShiftEnabled")}];
  [v6 send];
}

- (void)fetchCachedFunctionWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOLocationShiftingCachedResponseFetchResponse alloc] initWithRequest:v4];
  shifter = self->_shifter;
  v7 = [v4 latLng];

  qos_class_self();
  global_queue = geo_get_global_queue();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000228EC;
  v10[3] = &unk_100082078;
  v11 = v5;
  v9 = v5;
  [(GEOLocationShifter *)shifter _fetchCachedShiftFunctionResponseForLocation:v7 callbackQueue:global_queue completionHandler:v10];
}

- (void)shiftCoordinateWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOLocationShiftingFunctionResponse alloc] initWithRequest:v4];
  shifter = self->_shifter;
  v7 = [v4 latLng];
  v8 = [v4 preferredAuditToken];

  global_queue = geo_get_global_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100022A6C;
  v11[3] = &unk_100082078;
  v12 = v5;
  v10 = v5;
  [(GEOLocationShifter *)shifter _fetchShiftFunctionForLatLng:v7 auditToken:v8 callbackQueue:global_queue completionHandler:v11];
}

- (GEOLocationShiftServer)initWithDaemon:(id)a3
{
  v8.receiver = self;
  v8.super_class = GEOLocationShiftServer;
  v3 = [(GEOLocationShiftServer *)&v8 initWithDaemon:a3];
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