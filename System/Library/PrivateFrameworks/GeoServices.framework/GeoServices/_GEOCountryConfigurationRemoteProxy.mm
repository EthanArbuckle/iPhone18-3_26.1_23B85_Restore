@interface _GEOCountryConfigurationRemoteProxy
- (_GEOCountryConfigurationRemoteProxy)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (void)dealloc;
- (void)fetchGEOIPCountryCode:(id)a3 auditToken:(id)a4 callback:(id)a5;
- (void)updateCountryCodeWithCallbackQueue:(id)a3 callback:(id)a4;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation _GEOCountryConfigurationRemoteProxy

- (void)fetchGEOIPCountryCode:(id)a3 auditToken:(id)a4 callback:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[GEOCountryConfigFetchGeoIPRequest alloc] initWithTraits:0 auditToken:v9 throttleToken:0];

  v12 = [(_GEOCountryConfigurationRemoteProxy *)self _xpcConnection];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002BC8;
  v14[3] = &unk_100081638;
  v15 = v8;
  v13 = v8;
  [v11 send:v12 withReply:v10 handler:v14];
}

- (void)updateCountryCodeWithCallbackQueue:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[GEOCountryConfigUpdateRequest alloc] initWithTraits:0 auditToken:0 throttleToken:0];
  v9 = [(_GEOCountryConfigurationRemoteProxy *)self _xpcConnection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002D80;
  v11[3] = &unk_100081610;
  v12 = v6;
  v10 = v6;
  [v8 send:v9 withReply:v7 handler:v11];
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  v4 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received country code change notification. Informing delegate.", buf, 2u);
  }

  v5 = +[_GEOCountryConfigurationInfo get];
  delegateQueue = self->_delegateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002F00;
  v8[3] = &unk_100083940;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(delegateQueue, v8);
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  notify_cancel(self->_countryCodeChangedToken);
  notify_cancel(self->_providersChangedToken);
  v3.receiver = self;
  v3.super_class = _GEOCountryConfigurationRemoteProxy;
  [(_GEOCountryConfigurationRemoteProxy *)&v3 dealloc];
}

- (_GEOCountryConfigurationRemoteProxy)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _GEOCountryConfigurationRemoteProxy;
  v8 = [(_GEOCountryConfigurationRemoteProxy *)&v20 init];
  if (v8)
  {
    v9 = geo_dispatch_queue_create();
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v8->_delegateQueue, a4);
    v11 = v8->_queue;
    v12 = GeoServicesConfig_DeviceCountryCodeSourced[1];
    _GEOConfigAddDelegateListenerForKey();
    objc_initWeak(&location, v8);
    v13 = kCountryProvidersChangedDarwinNotification;
    v14 = v8->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100003124;
    v17[3] = &unk_100082928;
    objc_copyWeak(&v18, &location);
    notify_register_dispatch(v13, &v8->_providersChangedToken, v14, v17);
    v15 = v8;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v8;
}

@end