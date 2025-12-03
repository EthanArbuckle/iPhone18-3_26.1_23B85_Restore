@interface _GEOCountryConfigurationLocalProxy
- (BOOL)_checkThrottlerOrScheduleUpdate:(id *)update;
- (_GEOCountryConfigurationLocalProxy)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (id)_buildNetworkSignature;
- (id)_getCachedCountryInfoForSource:(unsigned int)source;
- (void)_callCompletionHandler:(id)handler;
- (void)_deleteCacheForSource:(unsigned int)source;
- (void)_determineGeoIPCountryCode:(id)code completion:(id)completion;
- (void)_determineGeoIPCountryCodeLocal:(id)local;
- (void)_determineRegulatoryDomain:(id)domain;
- (void)_determineRegulatoryDomainSync:(id)sync;
- (void)_getNetworkSignature:(id)signature;
- (void)_pickNewCountryCode;
- (void)_postNotificationsForOldInfo:(id)info newInfo:(id)newInfo;
- (void)_reachabilityChanged:(id)changed;
- (void)_regulatoryDomainUpdated;
- (void)_scheduleUpdate:(double)update source:(unsigned int)source;
- (void)_updateCachedCountryInfo:(id)info;
- (void)_updateCountryCode:(unsigned int)code;
- (void)_withCache:(id)cache;
- (void)dealloc;
- (void)fetchGEOIPCountryCode:(id)code auditToken:(id)token callback:(id)callback;
- (void)updateCountryCodeWithCallbackQueue:(id)queue callback:(id)callback;
@end

@implementation _GEOCountryConfigurationLocalProxy

- (void)fetchGEOIPCountryCode:(id)code auditToken:(id)token callback:(id)callback
{
  codeCopy = code;
  tokenCopy = token;
  callbackCopy = callback;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003335C;
  v15[3] = &unk_100083390;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = codeCopy;
  v18 = callbackCopy;
  v12 = callbackCopy;
  v13 = codeCopy;
  v14 = tokenCopy;
  dispatch_async(queue, v15);
}

- (void)_callCompletionHandler:(id)handler
{
  handlerCopy = handler;
  callbackQueue = self->_callbackQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033634;
  v7[3] = &unk_100083940;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(callbackQueue, v7);
}

- (void)updateCountryCodeWithCallbackQueue:(id)queue callback:(id)callback
{
  queueCopy = queue;
  v7 = objc_retainBlock(callback);
  callback = self->_callback;
  self->_callback = v7;

  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = queueCopy;
  v10 = queueCopy;

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033704;
  block[3] = &unk_1000838C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_postNotificationsForOldInfo:(id)info newInfo:(id)newInfo
{
  newInfoCopy = newInfo;
  infoCopy = info;
  v8 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Country code changed. Informing delegate", buf, 2u);
  }

  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033978;
  block[3] = &unk_100083940;
  block[4] = self;
  v10 = newInfoCopy;
  v24 = v10;
  dispatch_async(delegateQueue, block);
  notify_post(GEOCountryConfigurationCountryCodeChangedDarwinNotification);
  v11 = GeoServicesConfig_CountryProviders[1];
  v12 = GEOConfigGetDictionary();
  countryCode = [infoCopy countryCode];

  v14 = [v12 objectForKeyedSubscript:countryCode];

  countryCode2 = [v10 countryCode];
  v16 = [v12 objectForKeyedSubscript:countryCode2];

  if (v14 && v16)
  {
    if ([v16 isEqualToDictionary:v14])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = v14 == 0;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v17 = 0;
      v18 = v14 == 0;
    }

    if (v18 && !v17)
    {
      goto LABEL_17;
    }
  }

  v20 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Country-specific networkDefaults changed. Informing delegate", buf, 2u);
  }

  v21 = self->_delegateQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000339CC;
  v22[3] = &unk_1000838C8;
  v22[4] = self;
  dispatch_async(v21, v22);
  notify_post(kCountryProvidersChangedDarwinNotification);
LABEL_17:
}

- (void)_pickNewCountryCode
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100033ED4;
  v31 = sub_100033EE4;
  v32 = 0;
  v3 = GeoServicesConfig_ShouldOverrideCountryCode[1];
  if (GEOConfigGetBOOL())
  {
    v4 = GeoServicesConfig_OverrideCountryCode[1];
    v5 = GEOConfigGetString();
    if (_GEO_validateCountryCode())
    {
      v6 = GEOGetCountryConfigurationLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138477827;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Overriding country code to '%{private}@'", &buf, 0xCu);
      }

      v7 = [[_GEOCountryConfigurationInfo alloc] initWithCountryCode:v5 source:258];
      v8 = v28[5];
      v28[5] = v7;
    }
  }

  if (!v28[5])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100033EEC;
    v26[3] = &unk_100082AB0;
    v26[4] = &v27;
    [(_GEOCountryConfigurationLocalProxy *)self _withCache:v26];
  }

  v9 = +[_GEOCountryConfigurationInfo get];
  v10 = v28[5];
  if (!v10 || ([v10 countryCode], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length") == 0, v11, v12))
  {
    v18 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      countryCode = [v28[5] countryCode];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = countryCode;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Country code '%{public}@' is not a valid ISO 3166-1 alpha-2 country code. Ignoring...", &buf, 0xCu);
    }

    v20 = [NSMutableDictionary dictionaryWithObject:@"Received non-ISO 3166-1 alpha-2 country code" forKey:kCFErrorDescriptionKey];
    countryCode2 = [v28[5] countryCode];
    v22 = countryCode2 == 0;

    if (!v22)
    {
      countryCode3 = [v28[5] countryCode];
      [v20 setObject:countryCode3 forKey:@"Country Code"];
    }

    v24 = [NSError GEOErrorWithCode:-14 userInfo:v20];
    [(_GEOCountryConfigurationLocalProxy *)self _callCompletionHandler:v24];
  }

  else
  {
    if (([v28[5] isEqual:v9] & 1) == 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v34 = 0x3032000000;
      v35 = sub_100033ED4;
      v36 = sub_100033EE4;
      v37 = 0;
      queue = self->_queue;
      v25 = v9;
      v14 = GeoServicesConfig_DeviceCountryCodeSourced[1];
      v15 = _GEOConfigAddBlockListenerForKey();
      v16 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v15;

      _Block_object_dispose(&buf, 8);
    }

    [v28[5] set];
    v17 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Finished updating country configuration. Calling callback.", &buf, 2u);
    }

    [(_GEOCountryConfigurationLocalProxy *)self _callCompletionHandler:0];
  }

  _Block_object_dispose(&v27, 8);
}

- (void)_updateCountryCode:(unsigned int)code
{
  scheduledUpdateTimer = self->_scheduledUpdateTimer;
  if (scheduledUpdateTimer)
  {
    dispatch_source_cancel(scheduledUpdateTimer);
    v6 = self->_scheduledUpdateTimer;
    self->_scheduledUpdateTimer = 0;
  }

  +[NSMutableArray array];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000343B0;
  v7 = v20[3] = &unk_100082A88;
  v21 = v7;
  selfCopy = self;
  v8 = objc_retainBlock(v20);
  v9 = v8;
  switch(code)
  {
    case 6u:
      goto LABEL_6;
    case 4u:
LABEL_7:
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_100034558;
      v15 = &unk_100083BC0;
      selfCopy2 = self;
      v17 = v9;
      v11 = objc_retainBlock(&v12);
      [v7 addObject:{v11, v12, v13, v14, v15, selfCopy2}];

      break;
    case 0u:
LABEL_6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10003454C;
      v18[3] = &unk_100083BC0;
      v18[4] = self;
      v19 = v8;
      v10 = objc_retainBlock(v18);
      [v7 addObject:v10];

      if ((code | 4) == 4)
      {
        goto LABEL_7;
      }

      break;
  }

  v9[2](v9, 0, 0, 0);
}

- (BOOL)_checkThrottlerOrScheduleUpdate:(id *)update
{
  v5 = +[GEOApplicationAuditToken currentProcessAuditToken];
  v6 = +[GEODataRequestThrottler sharedThrottler];
  v7 = [v6 allowRequest:1 forClient:v5 throttlerToken:0 error:update];

  if ((v7 & 1) == 0)
  {
    v13 = 0.0;
    v12 = 0;
    v8 = +[GEODataRequestThrottler sharedThrottler];
    [v8 getInfoForRequest:1 client:v5 timeUntilNextReset:&v13 availableRequestCount:&v12];

    if (v13 > 0.0)
    {
      [(_GEOCountryConfigurationLocalProxy *)self _scheduleUpdate:4 source:v13];
    }

    v9 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *update;
      *buf = 134218242;
      v15 = v13;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Refusing to update country code again, will try again in %f seconds: %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (void)_determineGeoIPCountryCodeLocal:(id)local
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000347E8;
  v9[3] = &unk_100082A10;
  v9[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100034924;
  v6[3] = &unk_100082A60;
  localCopy = local;
  v8 = objc_retainBlock(v9);
  v6[4] = self;
  v4 = localCopy;
  v5 = v8;
  [(_GEOCountryConfigurationLocalProxy *)self _getNetworkSignature:v6];
}

- (void)_determineGeoIPCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  geoIPCompletions = self->_geoIPCompletions;
  if (geoIPCompletions)
  {
    completionCopy = completion;
    v8 = [completionCopy copy];

    v9 = objc_retainBlock(v8);
    [(NSMutableArray *)geoIPCompletions addObject:v9];
  }

  else
  {
    completionCopy2 = completion;
    v11 = +[NSMutableArray array];
    v12 = self->_geoIPCompletions;
    self->_geoIPCompletions = v11;

    v13 = self->_geoIPCompletions;
    v14 = [completionCopy2 copy];

    v15 = objc_retainBlock(v14);
    [(NSMutableArray *)v13 addObject:v15];

    [(_GEOCountryConfigurationLocalProxy *)self _determineGeoIPCountryCodeLocal:codeCopy];
  }
}

- (void)_determineRegulatoryDomainSync:(id)sync
{
  syncCopy = sync;
  if (sub_100001910())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v5 = qword_1000960B0;
    v21 = qword_1000960B0;
    if (!qword_1000960B0)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v23 = sub_1000353F0;
      v24 = &unk_1000830D0;
      v25 = &v18;
      sub_100001910();
      Class = objc_getClass("RDEstimate");
      *(v25[1] + 24) = Class;
      qword_1000960B0 = *(v25[1] + 24);
      v5 = v19[3];
    }

    v7 = v5;
    _Block_object_dispose(&v18, 8);
    currentEstimates = [v5 currentEstimates];
    if ([currentEstimates count] == 1)
    {
      firstObject = [currentEstimates firstObject];
      countryCode = [firstObject countryCode];
      if (([countryCode isEqual:@"XZ"] & 1) == 0)
      {
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v11 = qword_1000960B8;
        v21 = qword_1000960B8;
        if (!qword_1000960B8)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v23 = sub_100035444;
          v24 = &unk_1000830D0;
          v25 = &v18;
          v12 = sub_100035494();
          v13 = dlsym(v12, "kRDPriorityWiFiAP");
          *(v25[1] + 24) = v13;
          qword_1000960B8 = *(v25[1] + 24);
          v11 = v19[3];
        }

        _Block_object_dispose(&v18, 8);
        if (!v11)
        {
          dlerror();
          abort_report_np();
          __break(1u);
        }

        if ([firstObject priorityIsAtLeast:*v11])
        {
          v14 = [[_GEOCountryConfigurationInfo alloc] initWithCountryCode:countryCode source:262];
          [(_GEOCountryConfigurationLocalProxy *)self _updateCachedCountryInfo:v14];
          syncCopy[2](syncCopy, 262, countryCode, 0);

LABEL_20:
          goto LABEL_21;
        }
      }

      v17 = GEOGetCountryConfigurationLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"XZ";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "current RDEstimate < kRDPriorityWiFiAP or == %@, ignoring", &buf, 0xCu);
      }
    }

    else
    {
      firstObject = GEOGetCountryConfigurationLog();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        v16 = [currentEstimates count];
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v16;
        _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "current RDEstimate count == %d, ignoring", &buf, 8u);
      }
    }

    [(_GEOCountryConfigurationLocalProxy *)self _deleteCacheForSource:262];
    syncCopy[2](syncCopy, 262, 0, 0);
    goto LABEL_20;
  }

  v15 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "RegulatoryDomain.framework is not available", &buf, 2u);
  }

  syncCopy[2](syncCopy, 262, 0, 0);
LABEL_21:
}

- (void)_determineRegulatoryDomain:(id)domain
{
  domainCopy = domain;
  qos_class_self();
  global_queue = geo_get_global_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100035614;
  v7[3] = &unk_100083BC0;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  dispatch_async(global_queue, v7);
}

- (void)_scheduleUpdate:(double)update source:(unsigned int)source
{
  scheduledUpdateTimer = self->_scheduledUpdateTimer;
  if (scheduledUpdateTimer)
  {
    dispatch_source_cancel(scheduledUpdateTimer);
    v6 = self->_scheduledUpdateTimer;
    self->_scheduledUpdateTimer = 0;
  }

  queue = self->_queue;
  v8 = geo_dispatch_timer_create_on_queue();
  v9 = self->_scheduledUpdateTimer;
  self->_scheduledUpdateTimer = v8;

  dispatch_activate(self->_scheduledUpdateTimer);
}

- (void)_reachabilityChanged:(id)changed
{
  changedCopy = changed;
  v5 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Reachability changed: %{private}@", buf, 0xCu);
  }

  v6 = GeoServicesConfig_CountryConfigurationRefreshOnReachability[1];
  if (GEOConfigGetBOOL())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000358AC;
    block[3] = &unk_1000838C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_regulatoryDomainUpdated
{
  v3 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Regulatory Domain updated. Scheduling country code update", v4, 2u);
  }

  [(_GEOCountryConfigurationLocalProxy *)self _scheduleUpdate:0 source:0.5];
}

- (void)_deleteCacheForSource:(unsigned int)source
{
  v4 = sub_1000340A0(source);
  if ([v4 length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100035AE8;
    v5[3] = &unk_1000829C0;
    v6 = v4;
    [(_GEOCountryConfigurationLocalProxy *)self _withCache:v5];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: name.length > 0", buf, 2u);
  }
}

- (void)_updateCachedCountryInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v6 = sub_1000340A0([infoCopy source]);
    if ([v6 length])
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100035C9C;
      v7[3] = &unk_100082998;
      v8 = v6;
      v9 = v5;
      [(_GEOCountryConfigurationLocalProxy *)self _withCache:v7];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: name.length > 0", buf, 2u);
    }
  }
}

- (id)_getCachedCountryInfoForSource:(unsigned int)source
{
  v4 = sub_1000340A0(source);
  if ([v4 length])
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x3032000000;
    v13 = sub_100033ED4;
    v14 = sub_100033EE4;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100035ECC;
    v7[3] = &unk_100082970;
    v9 = buf;
    v8 = v4;
    [(_GEOCountryConfigurationLocalProxy *)self _withCache:v7];
    v5 = *(v11 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: name.length > 0", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_withCache:(id)cache
{
  cacheCopy = cache;
  cacheIsolater = self->_cacheIsolater;
  v7 = cacheCopy;
  v6 = cacheCopy;
  geo_isolate_sync();
}

- (id)_buildNetworkSignature
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[GEONetworkObserver sharedNetworkObserver];
  networkSignature = [v2 networkSignature];

  v4 = [networkSignature base64EncodedStringWithOptions:0];

  return v4;
}

- (void)_getNetworkSignature:(id)signature
{
  signatureCopy = signature;
  dispatch_assert_queue_V2(self->_queue);
  v4 = GeoServicesConfig_CountryConfigUseCheckNetworkSignature[1];
  if (GEOConfigGetBOOL())
  {
    _buildNetworkSignature = [(_GEOCountryConfigurationLocalProxy *)self _buildNetworkSignature];
    signatureCopy[2](signatureCopy, _buildNetworkSignature);
  }

  else
  {
    signatureCopy[2](signatureCopy, 0);
  }
}

- (void)dealloc
{
  countryCodeOverrideChangeListener = self->_countryCodeOverrideChangeListener;
  GEOConfigRemoveBlockListener();
  scheduledUpdateTimer = self->_scheduledUpdateTimer;
  if (scheduledUpdateTimer)
  {
    dispatch_source_cancel(scheduledUpdateTimer);
  }

  regulatoryDomainListener = self->_regulatoryDomainListener;
  self->_regulatoryDomainListener = -1;
  if (regulatoryDomainListener != -1)
  {
    notify_cancel(regulatoryDomainListener);
  }

  v6 = +[GEONetworkObserver sharedNetworkObserver];
  [v6 removeNetworkReachableObserver:self];

  v7.receiver = self;
  v7.super_class = _GEOCountryConfigurationLocalProxy;
  [(_GEOCountryConfigurationLocalProxy *)&v7 dealloc];
}

- (_GEOCountryConfigurationLocalProxy)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = _GEOCountryConfigurationLocalProxy;
  v8 = [(_GEOCountryConfigurationLocalProxy *)&v25 init];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = geo_dispatch_queue_create();
  queue = v8->_queue;
  v8->_queue = v9;

  objc_storeWeak(&v8->_delegate, delegateCopy);
  objc_storeStrong(&v8->_delegateQueue, queue);
  v11 = geo_isolater_create();
  cacheIsolater = v8->_cacheIsolater;
  v8->_cacheIsolater = v11;

  v8->_regulatoryDomainListener = -1;
  objc_initWeak(&location, v8);
  if (!sub_100001910())
  {
LABEL_7:
    v21 = v8;
    geo_dispatch_async_qos();
    v19 = v21;

    objc_destroyWeak(&location);
LABEL_8:

    return v8;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v13 = qword_1000960A8;
  v34 = qword_1000960A8;
  if (!qword_1000960A8)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1000365B4;
    v29 = &unk_1000830D0;
    v30 = &v31;
    v14 = sub_100035494();
    v15 = dlsym(v14, "kRegulatoryDomainUpdateNotification");
    *(v30[1] + 24) = v15;
    qword_1000960A8 = *(v30[1] + 24);
    v13 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (v13)
  {
    v16 = *v13;
    uTF8String = [v16 UTF8String];
    v18 = v8->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100036604;
    handler[3] = &unk_100082928;
    objc_copyWeak(&v23, &location);
    notify_register_dispatch(uTF8String, &v8->_regulatoryDomainListener, v18, handler);

    objc_destroyWeak(&v23);
    goto LABEL_7;
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

@end