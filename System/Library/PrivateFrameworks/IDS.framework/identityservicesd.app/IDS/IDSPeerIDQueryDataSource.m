@interface IDSPeerIDQueryDataSource
- (BOOL)hasPeerTokensForURI:(id)a3 fromURI:(id)a4 service:(id)a5;
- (BOOL)hasQueryResultsForURI:(id)a3 fromURI:(id)a4 service:(id)a5 isForceQuery:(BOOL)a6 validThrough:(id)a7;
- (IDSIDStatusQueryController)IDStatusQueryController;
- (IDSPeerIDManagerProtocol)peerIDManager;
- (IDSPeerIDQueryDataSource)initWithPeerIDManager:(id)a3 IDStatusQueryController:(id)a4;
- (unint64_t)forceQueryGracePeriodForService:(id)a3;
@end

@implementation IDSPeerIDQueryDataSource

- (IDSPeerIDQueryDataSource)initWithPeerIDManager:(id)a3 IDStatusQueryController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IDSPeerIDQueryDataSource;
  v8 = [(IDSPeerIDQueryDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_peerIDManager, v6);
    objc_storeStrong(&v9->_IDStatusQueryController, a4);
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

- (BOOL)hasPeerTokensForURI:(id)a3 fromURI:(id)a4 service:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IDSPeerIDQueryDataSource *)self peerIDManager];
  v12 = [v11 hasPeerTokensForURI:v10 fromURI:v9 service:v8];

  return v12;
}

- (BOOL)hasQueryResultsForURI:(id)a3 fromURI:(id)a4 service:(id)a5 isForceQuery:(BOOL)a6 validThrough:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v8)
  {
    v16 = [(IDSPeerIDQueryDataSource *)self peerIDManager];
    v17 = [v12 tokenFreeURI];
    v18 = [v16 queryDateForService:v14 fromURI:v13 toURI:v17];

    [v18 timeIntervalSinceNow];
    v20 = v19;
    v21 = fabs(v19);
    v22 = [(IDSPeerIDQueryDataSource *)self forceQueryGracePeriodForService:v14];
    v23 = v22;
    if (!v18 || v21 > v22)
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
  v26 = [v25 hasPeerTokensForURI:v12 fromURI:v13 service:v14 validThrough:v15 outReason:0];

  if ((v26 & 1) == 0)
  {
    v28 = [(IDSPeerIDQueryDataSource *)self IDStatusQueryController];
    v29 = [v12 tokenFreeURI];
    v30 = [v28 cachedIDStatusForID:v29 fromURI:v13 fromService:v14 respectExpiry:1 reason:@"InternalQueryCacheCheck"];

    if (v30 != 2)
    {
      v27 = 0;
      goto LABEL_28;
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v12 tokenFreeURI];
      *buf = 138413058;
      v39 = *&v12;
      v40 = 2112;
      v41 = *&v13;
      v42 = 2112;
      v43 = v32;
      v44 = 2112;
      v45 = v14;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Already have cached invalid results {uri: %@, fromURI: %@, strippedURI: %@, service: %@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        v18 = [v12 tokenFreeURI];
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

- (unint64_t)forceQueryGracePeriodForService:(id)a3
{
  v3 = a3;
  v4 = +[IDSServerBag sharedInstance];
  v5 = [v4 objectForKey:@"client-query-force-query-debounce"];

  if (v5 && ![v5 BOOLValue])
  {
    v9 = 0;
  }

  else
  {
    v6 = +[IDSServerBag sharedInstance];
    v7 = [NSString stringWithFormat:@"client-query-force-query-debounce--%@", v3];
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      v9 = [v8 integerValue];
    }

    else
    {
      v9 = 60;
    }
  }

  return v9;
}

- (IDSPeerIDManagerProtocol)peerIDManager
{
  WeakRetained = objc_loadWeakRetained(&self->_peerIDManager);

  return WeakRetained;
}

@end