@interface GEOWiFiQualityServiceLocalProxy
- (GEOWiFiQualityServiceLocalProxy)init;
- (void)cancelRequestId:(id)id;
- (void)submitWiFiQualityServiceRequest:(id)request requestId:(id)id auditToken:(id)token completionQueue:(id)queue completion:(id)completion;
- (void)submitWiFiQualityTileLoadForKey:(id)key eTag:(id)tag requestId:(id)id auditToken:(id)token completionQueue:(id)queue completion:(id)completion;
@end

@implementation GEOWiFiQualityServiceLocalProxy

- (void)cancelRequestId:(id)id
{
  idCopy = id;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100025430;
  v11 = sub_100025440;
  v12 = 0;
  inflightIsolater = self->_inflightIsolater;
  v6 = idCopy;
  geo_isolate_sync();
  [v8[5] cancel];

  _Block_object_dispose(&v7, 8);
}

- (void)submitWiFiQualityTileLoadForKey:(id)key eTag:(id)tag requestId:(id)id auditToken:(id)token completionQueue:(id)queue completion:(id)completion
{
  keyCopy = key;
  idCopy = id;
  completionCopy = completion;
  queueCopy = queue;
  tokenCopy = token;
  tagCopy = tag;
  v18 = [GEOWiFiQualityTileRequester alloc];
  v19 = keyCopy;
  v20 = tagCopy;
  v21 = tokenCopy;
  if (v18)
  {
    block.receiver = v18;
    block.super_class = GEOWiFiQualityTileRequester;
    v22 = [(GEOWiFiQualityServiceLocalProxy *)&block init];
    v18 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_inflightRequests, key);
      objc_storeStrong(&v18->_eTag, tag);
      objc_storeStrong(&v18->_auditToken, token);
    }
  }

  inflightIsolater = self->_inflightIsolater;
  v70 = _NSConcreteStackBlock;
  v71 = 3221225472;
  v72 = sub_1000259B4;
  v73 = &unk_100083A30;
  selfCopy = self;
  v75 = idCopy;
  v76 = v18;
  v24 = v18;
  geo_isolate_sync();
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000259C4;
  v66[3] = &unk_1000822C8;
  v66[4] = self;
  v67 = v75;
  v68 = v19;
  v69 = completionCopy;
  v25 = v19;
  v26 = completionCopy;
  v27 = v75;
  v28 = queueCopy;
  v29 = v66;
  if (v24)
  {
    v30 = GEOURLString();
    if ([v30 length])
    {
      v58 = v28;
      v59 = v29;
      v61 = v27;
      v63 = v26;
      v65 = v25;
      v31 = [v29 copy];
      completion = v24->_completion;
      v24->_completion = v31;

      v33 = [NSMutableDictionary dictionaryWithCapacity:2];
      [v33 setObject:v24->_tileKey forKey:@"X-tilekey"];
      v34 = GeoServicesConfig_WiFiQualityTileSendVersioning[1];
      if (GEOConfigGetBOOL())
      {
        v35 = +[GEOPlatform sharedPlatform];
        osAndBuildVersion = [v35 osAndBuildVersion];

        [v33 setObject:osAndBuildVersion forKey:@"X-os-version"];
      }

      requestKind = [objc_opt_class() requestKind];
      v38 = +[GEORequestCounter sharedCounter];
      v39 = [v38 requestCounterTicketForType:requestKind auditToken:v24->_auditToken traits:0];

      v40 = GeoServicesConfig_WiFiQualityTileAllowCellular[1];
      if (GEOConfigGetBOOL())
      {
        v41 = 0;
      }

      else
      {
        v41 = 16;
      }

      v42 = GeoServicesConfig_WiFiQualityTileRequirePower[1];
      if (GEOConfigGetBOOL())
      {
        v41 |= 0x20uLL;
      }

      v43 = GeoServicesConfig_TLSSessionTicketsEnabled[1];
      if (GEOConfigGetBOOL())
      {
        v44 = v41 | 2;
      }

      else
      {
        v44 = v41;
      }

      v45 = [GEODataRequest alloc];
      v46 = [NSURL URLWithString:v30];
      auditToken = v24->_auditToken;
      v48 = GeoServicesConfig_WiFiQualityTileTimeout[1];
      GEOConfigGetDouble();
      v50 = v49;
      v51 = [v33 copy];
      v52 = [v45 initWithKind:requestKind URL:v46 auditToken:auditToken timeoutInterval:v51 additionalHTTPHeaders:0 bodyData:0 userAgent:v50 entityTag:v24->_eTag cachedData:0 requestCounterTicket:v39 multipathServiceType:0 multipathAlternatePort:0 backgroundSessionIdentifier:0 throttleToken:0 options:v44];

      v53 = +[GEODataURLSession sharedDataURLSession];
      v28 = v58;
      v54 = [v53 taskWithRequest:v52 delegate:v24 delegateQueue:v58];
      task = v24->_task;
      v24->_task = v54;

      [(GEODataURLSessionTask *)v24->_task start];
      v26 = v63;
      v25 = v65;
      v29 = v59;
      v27 = v61;
    }

    else
    {
      v56 = [NSError GEOErrorWithCode:-4 reason:@"No URL in manifest for WiFi tile service"];
      block.receiver = _NSConcreteStackBlock;
      block.super_class = 3221225472;
      v78 = sub_100036A78;
      v79 = &unk_100083BC0;
      v57 = v29;
      v80 = v56;
      v81 = v57;
      v33 = v56;
      dispatch_async(v28, &block);

      v39 = v81;
    }
  }
}

- (void)submitWiFiQualityServiceRequest:(id)request requestId:(id)id auditToken:(id)token completionQueue:(id)queue completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  queueCopy = queue;
  tokenCopy = token;
  requestCopy = request;
  v17 = [GEOWiFiQualityServiceRequester alloc];
  v18 = requestCopy;
  v19 = tokenCopy;
  if (v17)
  {
    v42.receiver = v17;
    v42.super_class = GEOWiFiQualityServiceRequester;
    v20 = [(GEOWiFiQualityServiceLocalProxy *)&v42 init];
    v17 = v20;
    if (v20)
    {
      objc_storeStrong(&v20->_inflightRequests, request);
      objc_storeStrong(&v17->_token, token);
    }
  }

  inflightIsolater = self->_inflightIsolater;
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_100025DAC;
  v38 = &unk_100083A30;
  selfCopy = self;
  v40 = idCopy;
  v41 = v17;
  v22 = v17;
  geo_isolate_sync();
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100025DBC;
  v32[3] = &unk_1000822A0;
  v32[4] = self;
  v33 = v40;
  v34 = completionCopy;
  v31 = completionCopy;
  v23 = v40;
  v24 = queueCopy;
  v25 = v32;
  if (v22)
  {
    v26 = objc_alloc_init(GEOWiFiQualityServiceDataRequestConfig);
    request = v22->_request;
    v28 = +[GEOMapService sharedService];
    defaultTraits = [v28 defaultTraits];
    token = v22->_token;
    v42.receiver = _NSConcreteStackBlock;
    v42.super_class = 3221225472;
    v43 = sub_10003AE0C;
    v44 = &unk_100082DE0;
    v45 = v24;
    v46 = v25;
    [(GEOWiFiQualityServiceRequester *)v22 _startWithRequest:request traits:defaultTraits auditToken:token config:v26 throttleToken:0 options:0 completionHandler:&v42];
  }
}

- (GEOWiFiQualityServiceLocalProxy)init
{
  v8.receiver = self;
  v8.super_class = GEOWiFiQualityServiceLocalProxy;
  v2 = [(GEOWiFiQualityServiceLocalProxy *)&v8 init];
  if (v2)
  {
    v3 = [NSMutableDictionary dictionaryWithCapacity:1];
    inflightRequests = v2->_inflightRequests;
    v2->_inflightRequests = v3;

    v5 = geo_isolater_create();
    inflightIsolater = v2->_inflightIsolater;
    v2->_inflightIsolater = v5;
  }

  return v2;
}

@end