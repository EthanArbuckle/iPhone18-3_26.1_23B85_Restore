@interface BDSServiceDelegate
- (BDSServiceConnectionClient)serviceConnectionClient;
- (BDSServiceDelegate)initWithServiceConnectionClient:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_bdsService;
- (void)_deleteLocaliCloudDataIfUserLoggedOutFromiCloudCompletion:(id)a3;
- (void)_dieIfUnacknowledgediCloudLogoutOcccurred;
- (void)dealloc;
- (void)deleteCloudDataWithCompletion:(id)a3;
@end

@implementation BDSServiceDelegate

- (void)_dieIfUnacknowledgediCloudLogoutOcccurred
{
  v3 = sub_1000023E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking if an account change happened, necessitating our process going away.", v7, 2u);
  }

  v4 = [(BDSServiceDelegate *)self iCloudIdentityTokenTracker];
  [v4 fetchCurrentToken];
  if ([v4 didUnacknowledgediCloudLogoutOccur])
  {
    v5 = sub_1000023E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3C34(v5);
    }

    raise(9);
  }

  else
  {
    v6 = [(BDSServiceDelegate *)self iCloudIdentityTokenTracker];
    [v6 acknowledgeiCloudIdentity];
  }
}

- (id)_bdsService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007888C;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  if (qword_100274AC8 != -1)
  {
    dispatch_once(&qword_100274AC8, block);
  }

  return qword_100274AC0;
}

- (BDSServiceConnectionClient)serviceConnectionClient
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnectionClient);

  return WeakRetained;
}

- (BDSServiceDelegate)initWithServiceConnectionClient:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BDSServiceDelegate;
  v5 = [(BDSServiceDelegate *)&v27 init];
  if (v5)
  {
    v6 = sub_1000023E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initializing service delegate.", buf, 2u);
    }

    v7 = objc_alloc_init(BDSClientConnectionManager);
    clientConnectionManager = v5->_clientConnectionManager;
    v5->_clientConnectionManager = v7;

    objc_storeWeak(&v5->_serviceConnectionClient, v4);
    v9 = +[BDSReachability sharedReachabilityForInternetConnection];
    networkReachability = v5->_networkReachability;
    v5->_networkReachability = v9;

    +[BCCloudKitDatabaseController startInternetConnectionReachabilityNotifier];
    v11 = [BDSICloudIdentityTokenTracker alloc];
    v12 = +[BDSAppGroupContainer containerURL];
    v13 = [(BDSICloudIdentityTokenTracker *)v11 initWithContainerURL:v12 trackingLiverpool:0];
    iCloudIdentityTokenTracker = v5->_iCloudIdentityTokenTracker;
    v5->_iCloudIdentityTokenTracker = v13;

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100077FFC;
    v25[3] = &unk_10023F6B0;
    v15 = v5;
    v26 = v15;
    [(BDSServiceDelegate *)v15 _deleteLocaliCloudDataIfUserLoggedOutFromiCloudCompletion:v25];
    v16 = +[BUAccountsProvider sharedProvider];
    [v16 observeTCCAccessChangeNotificationIfNeeded];

    out_token = -1;
    objc_initWeak(buf, v15);
    v17 = [@"com.apple.tcc.access.changed" UTF8String];
    v18 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100078020;
    handler[3] = &unk_100241E20;
    objc_copyWeak(&v22, buf);
    LODWORD(v17) = notify_register_dispatch(v17, &out_token, &_dispatch_main_q, handler);

    if (v17)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = out_token;
    }

    [(BDSServiceDelegate *)v15 setTccNotifyToken:v19];
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  return v5;
}

- (void)dealloc
{
  if ([(BDSServiceDelegate *)self tccNotifyToken]!= -1)
  {
    notify_cancel([(BDSServiceDelegate *)self tccNotifyToken]);
  }

  [(BDSReachability *)self->_networkReachability stopNotifier];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = sub_1000023E8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Service delegate released.", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = BDSServiceDelegate;
  [(BDSServiceDelegate *)&v5 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = sub_1000023E8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received incomming connection request.", buf, 2u);
  }

  [(BDSServiceDelegate *)self _dieIfUnacknowledgediCloudLogoutOcccurred];
  objc_opt_class();
  v8 = [v6 valueForEntitlement:@"com.apple.iBooks.BDSService.private"];
  v9 = BUDynamicCast();
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDSDaemonProtocol];
    v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDSClientSideProtocol];
    [BDSServiceProtocolInterface configureInterface:v11];
    v12 = [[BDSClient alloc] initWithConnection:v6];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v6);
    objc_initWeak(&from, v12);
    [v6 setRemoteObjectInterface:v22];
    [v6 setExportedInterface:v11];
    v13 = [(BDSServiceDelegate *)self _bdsService];
    [v6 setExportedObject:v13];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10007867C;
    v28[3] = &unk_100241E48;
    objc_copyWeak(&v29, &from);
    objc_copyWeak(&v30, &location);
    objc_copyWeak(&v31, buf);
    [v6 setInvalidationHandler:v28];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100078784;
    v24[3] = &unk_100241E48;
    objc_copyWeak(&v25, &from);
    objc_copyWeak(&v26, &location);
    objc_copyWeak(&v27, buf);
    [v6 setInterruptionHandler:v24];
    v14 = [(BDSServiceDelegate *)self clientConnectionManager];
    [v14 addClient:v12];

    [v6 resume];
    v15 = [(BDSServiceDelegate *)self serviceConnectionClient];
    [v15 serviceDelegate:self didAcceptConnection:v6];

    v16 = sub_1000023E8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v6 processIdentifier];
      *v35 = 67109120;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Accepted connection to %d.", v35, 8u);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v29);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    objc_opt_class();
    v18 = [v6 valueForEntitlement:@"application-identifier"];
    v11 = BUDynamicCast();

    if (!v11)
    {
      objc_opt_class();
      v19 = [v6 valueForEntitlement:@"com.apple.application-identifier"];
      v11 = BUDynamicCast();
    }

    v20 = sub_1000023E8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3B94(v6, v11, v20);
    }

    [v6 invalidate];
  }

  return v10;
}

- (void)_deleteLocaliCloudDataIfUserLoggedOutFromiCloudCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_1000023E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if cloud data should get deleted.", buf, 2u);
  }

  v6 = [(BDSServiceDelegate *)self iCloudIdentityTokenTracker];
  [v6 fetchCurrentToken];
  if ([v6 didUnacknowledgediCloudLogoutOccur])
  {
    v7 = sub_1000023E8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User logged out from iCloud.  Deleting local copies of cloud data.", buf, 2u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100078AAC;
    v10[3] = &unk_100240D90;
    v11 = v4;
    [(BDSServiceDelegate *)self deleteCloudDataWithCompletion:v10];
    v8 = v11;
  }

  else
  {
    v9 = objc_retainBlock(v4);
    v8 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  [v6 acknowledgeiCloudIdentity];
}

- (void)deleteCloudDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = sub_1000023E8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deleting cloud data.", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100078C1C;
  v6[3] = &unk_100240D90;
  v7 = v3;
  v5 = v3;
  [BCCloudAssetManager deleteCloudDataWithCompletion:v6];
}

@end