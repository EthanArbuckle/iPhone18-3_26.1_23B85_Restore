@interface IDSPeerIDQueryDataSource
- (BOOL)hasPeerTokensForURI:(id)i fromURI:(id)rI service:(id)service;
- (BOOL)hasQueryResultsForURI:(id)i fromURI:(id)rI service:(id)service isForceQuery:(BOOL)query validThrough:(id)through;
- (IDSIDStatusQueryController)IDStatusQueryController;
- (IDSPeerIDManagerProtocol)peerIDManager;
- (IDSPeerIDQueryDataSource)initWithPeerIDManager:(id)manager IDStatusQueryController:(id)controller;
- (unint64_t)forceQueryGracePeriodForService:(id)service;
@end

@implementation IDSPeerIDQueryDataSource

- (IDSPeerIDQueryDataSource)initWithPeerIDManager:(id)manager IDStatusQueryController:(id)controller
{
  managerCopy = manager;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = IDSPeerIDQueryDataSource;
  v8 = [(IDSPeerIDQueryDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_peerIDManager, managerCopy);
    objc_storeStrong(&v9->_IDStatusQueryController, controller);
  }

  return v9;
}

- (IDSIDStatusQueryController)IDStatusQueryController
{
  IDStatusQueryController = self->_IDStatusQueryController;
  if (!IDStatusQueryController)
  {
    v4 = +[IDSIDStatusQueryController sharedInstance];
    v5 = self->_IDStatusQueryController;
    self->_IDStatusQueryController = v4;

    IDStatusQueryController = self->_IDStatusQueryController;
  }

  return IDStatusQueryController;
}

- (BOOL)hasPeerTokensForURI:(id)i fromURI:(id)rI service:(id)service
{
  serviceCopy = service;
  rICopy = rI;
  iCopy = i;
  peerIDManager = [(IDSPeerIDQueryDataSource *)self peerIDManager];
  v12 = [peerIDManager hasPeerTokensForURI:iCopy fromURI:rICopy service:serviceCopy];

  return v12;
}

- (BOOL)hasQueryResultsForURI:(id)i fromURI:(id)rI service:(id)service isForceQuery:(BOOL)query validThrough:(id)through
{
  queryCopy = query;
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  throughCopy = through;
  if (queryCopy)
  {
    peerIDManager = [(IDSPeerIDQueryDataSource *)self peerIDManager];
    tokenFreeURI = [iCopy tokenFreeURI];
    tokenFreeURI4 = [peerIDManager queryDateForService:serviceCopy fromURI:rICopy toURI:tokenFreeURI];

    [tokenFreeURI4 timeIntervalSinceNow];
    v20 = v19;
    v21 = fabs(v19);
    v22 = [(IDSPeerIDQueryDataSource *)self forceQueryGracePeriodForService:serviceCopy];
    v23 = v22;
    if (!tokenFreeURI4 || v21 > v22)
    {
      v33 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = INFINITY;
        if (v20 != 0.0)
        {
          v34 = v21;
        }

        *buf = 134218240;
        v39 = v34;
        v40 = 2048;
        v41 = *&v23;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Query is forced and difference %f is greater than force query debounce %lu, treating URI as if there are no results", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v27 = 0;
      goto LABEL_26;
    }

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v39 = *&v23;
      v40 = 2048;
      v41 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Query is forced but we have queried this URI on this service in the last %lu seconds (Last lookup was %f seconds ago). Checking the cache.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v37 = v21;
      v36 = v23;
      _IDSLogV();
    }
  }

  v25 = [(IDSPeerIDQueryDataSource *)self peerIDManager:v36];
  v26 = [v25 hasPeerTokensForURI:iCopy fromURI:rICopy service:serviceCopy validThrough:throughCopy outReason:0];

  if ((v26 & 1) == 0)
  {
    iDStatusQueryController = [(IDSPeerIDQueryDataSource *)self IDStatusQueryController];
    tokenFreeURI2 = [iCopy tokenFreeURI];
    v30 = [iDStatusQueryController cachedIDStatusForID:tokenFreeURI2 fromURI:rICopy fromService:serviceCopy respectExpiry:1 reason:@"InternalQueryCacheCheck"];

    if (v30 != 2)
    {
      v27 = 0;
      goto LABEL_28;
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      tokenFreeURI3 = [iCopy tokenFreeURI];
      *buf = 138413058;
      v39 = *&iCopy;
      v40 = 2112;
      v41 = *&rICopy;
      v42 = 2112;
      v43 = tokenFreeURI3;
      v44 = 2112;
      v45 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Already have cached invalid results {uri: %@, fromURI: %@, strippedURI: %@, service: %@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        tokenFreeURI4 = [iCopy tokenFreeURI];
        _IDSLogV();
        v27 = 1;
LABEL_26:

        goto LABEL_28;
      }
    }
  }

  v27 = 1;
LABEL_28:

  return v27;
}

- (unint64_t)forceQueryGracePeriodForService:(id)service
{
  serviceCopy = service;
  v4 = +[IDSServerBag sharedInstance];
  v5 = [v4 objectForKey:@"client-query-force-query-debounce"];

  if (v5 && ![v5 BOOLValue])
  {
    integerValue = 0;
  }

  else
  {
    v6 = +[IDSServerBag sharedInstance];
    serviceCopy = [NSString stringWithFormat:@"client-query-force-query-debounce--%@", serviceCopy];
    v8 = [v6 objectForKey:serviceCopy];

    if (v8)
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 60;
    }
  }

  return integerValue;
}

- (IDSPeerIDManagerProtocol)peerIDManager
{
  WeakRetained = objc_loadWeakRetained(&self->_peerIDManager);

  return WeakRetained;
}

@end