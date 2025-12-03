@interface BLNetworkMonitor
+ (id)defaultMonitor;
- (BLNetworkMonitor)initWithPathEvalulator:(id)evalulator;
- (BOOL)isConnected;
- (BOOL)isConstrained;
- (BOOL)isExpensive;
- (BOOL)isRoaming;
- (id)copyCellularNetworkIdentityWithError:(id *)error;
- (void)_forcePropertyRefresh;
- (void)_setPropertiesUsingPath:(id)path;
- (void)_updateRoamingStatusForContext:(id)context;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation BLNetworkMonitor

+ (id)defaultMonitor
{
  if (qword_10013EC00 != -1)
  {
    sub_1000CB3C4();
  }

  v3 = qword_10013EBF8;

  return v3;
}

- (BLNetworkMonitor)initWithPathEvalulator:(id)evalulator
{
  evalulatorCopy = evalulator;
  v18.receiver = self;
  v18.super_class = BLNetworkMonitor;
  v6 = [(BLNetworkMonitor *)&v18 init];
  if (v6)
  {
    v7 = dispatch_get_global_queue(9, 0);
    v8 = dispatch_queue_create_with_target_V2("com.apple.bookassetd.BLNetworkMonitor", 0, v7);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v8;

    objc_storeStrong(&v6->_pathEvaluator, evalulator);
    [(NWPathEvaluator *)v6->_pathEvaluator addObserver:v6 forKeyPath:@"path" options:5 context:0];
    v10 = [[CoreTelephonyClient alloc] initWithQueue:v6->_dispatchQueue];
    telephonyClient = v6->_telephonyClient;
    v6->_telephonyClient = v10;

    [(CoreTelephonyClient *)v6->_telephonyClient setDelegate:v6];
    v12 = [NSUserDefaults alloc];
    v13 = BUBooksGroupContainerIdentifier;
    v14 = +[NSURL bu_booksGroupContainerURL];
    v15 = [v12 _initWithSuiteName:v13 container:v14];
    sharedDefaults = v6->_sharedDefaults;
    v6->_sharedDefaults = v15;

    [(NSUserDefaults *)v6->_sharedDefaults addObserver:v6 forKeyPath:@"BKEmulateCellularNetwork" options:1 context:off_10013E238];
    [(NSUserDefaults *)v6->_sharedDefaults addObserver:v6 forKeyPath:@"BKEmulateRoamingNetwork" options:1 context:off_10013E238];
  }

  return v6;
}

- (void)dealloc
{
  [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path"];
  [(CoreTelephonyClient *)self->_telephonyClient setDelegate:0];
  [(NSUserDefaults *)self->_sharedDefaults removeObserver:self forKeyPath:@"BKEmulateCellularNetwork"];
  [(NSUserDefaults *)self->_sharedDefaults removeObserver:self forKeyPath:@"BKEmulateRoamingNetwork"];
  v3.receiver = self;
  v3.super_class = BLNetworkMonitor;
  [(BLNetworkMonitor *)&v3 dealloc];
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009478C;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isConstrained
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009484C;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isExpensive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009490C;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRoaming
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100094AAC;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)copyCellularNetworkIdentityWithError:(id *)error
{
  subscriptionContext = self->_subscriptionContext;
  if (!subscriptionContext)
  {
    [(BLNetworkMonitor *)self activeSubscriptionsDidChange];
    subscriptionContext = self->_subscriptionContext;
  }

  v6 = [BUCellularIdentity identityForSubscription:subscriptionContext usingClient:self->_telephonyClient error:error];
  v7 = MGGetBoolAnswer();
  if (([v6 isRoaming] & 1) == 0 && v7)
  {
    [v6 setRoaming:{-[BLNetworkMonitor _emulateRoamingNetwork](self, "_emulateRoamingNetwork")}];
  }

  return v6;
}

- (void)activeSubscriptionsDidChange
{
  telephonyClient = self->_telephonyClient;
  v20 = 0;
  v4 = [(CoreTelephonyClient *)telephonyClient getCurrentDataSubscriptionContextSync:&v20];
  v5 = v20;
  subscriptionContext = self->_subscriptionContext;
  self->_subscriptionContext = v4;

  v7 = self->_subscriptionContext;
  if (v7)
  {
    v8 = self->_telephonyClient;
    v19 = v5;
    v9 = [(CoreTelephonyClient *)v8 copySIMIdentity:v7 error:&v19];
    v10 = v19;

    if (v9 && [v9 length])
    {
      v11 = [v9 dataUsingEncoding:4];
      bu_md5 = [v11 bu_md5];

      v13 = BLServiceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = bu_md5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Network] Cellular data subscription became: %{public}@", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v14 = BLServiceLog();
    bu_md5 = v14;
    if (v10)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v10;
        v15 = "[Network] Unable to identify cellular data subscription:  %@";
        v16 = bu_md5;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 12;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "[Network] There is no cellular data subscription";
      v16 = bu_md5;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 2;
      goto LABEL_15;
    }

LABEL_16:

    [(BLNetworkMonitor *)self _updateRoamingStatusForContext:self->_subscriptionContext];
    goto LABEL_17;
  }

  v9 = BLServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[Network] Unable to fetch current cellular data subscription:  %@", buf, 0xCu);
  }

  v10 = v5;
LABEL_17:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_pathEvaluator == objectCopy && [pathCopy isEqualToString:@"path"])
  {
    v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if (v13)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100095088;
      block[3] = &unk_10011CFE8;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

  else if (off_10013E238 == context)
  {
    v15 = BLServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = pathCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Network] Got user defaults change: %{public}@", buf, 0xCu);
    }

    v16 = self->_dispatchQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100095090;
    v17[3] = &unk_10011CFE8;
    v17[4] = self;
    dispatch_async(v16, v17);
  }
}

- (void)_forcePropertyRefresh
{
  path = [(NWPathEvaluator *)self->_pathEvaluator path];
  [(BLNetworkMonitor *)self _setPropertiesUsingPath:path];
}

- (void)_setPropertiesUsingPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([pathCopy status] | 2) == 3)
  {
    self->_connected = 1;
    self->_expensive = [pathCopy isExpensive];
    self->_constrained = [pathCopy isConstrained];
    if (!self->_expensive && [pathCopy usesInterfaceType:2])
    {
      v5 = BLServiceLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Network] Forcing expensive for cellular interface", buf, 2u);
      }

      self->_expensive = 1;
    }
  }

  else
  {
    *&self->_connected = 0;
    self->_expensive = 0;
  }

  interface = [pathCopy interface];
  self->_interfaceType = [interface type];

  v7 = BLServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    interfaceType = self->_interfaceType;
    *buf = 134217984;
    v20[0] = interfaceType;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Network] Interface type: %ld", buf, 0xCu);
  }

  connected = self->_connected;
  v10 = BLServiceLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (connected)
  {
    if (v11)
    {
      expensive = self->_expensive;
      constrained = self->_constrained;
      *buf = 67109376;
      LODWORD(v20[0]) = expensive;
      WORD2(v20[0]) = 1024;
      *(v20 + 6) = constrained;
      v14 = "[Network] Network available (expensive = %d, constrained = %d)";
      v15 = v10;
      v16 = 14;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

  else if (v11)
  {
    *buf = 0;
    v14 = "[Network] Network unavailable";
    v15 = v10;
    v16 = 2;
    goto LABEL_15;
  }

  v17 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095378;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_async(v17, block);
}

- (void)_updateRoamingStatusForContext:(id)context
{
  subscriptionContext = self->_subscriptionContext;
  telephonyClient = self->_telephonyClient;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009544C;
  v5[3] = &unk_10011E160;
  v5[4] = self;
  [(CoreTelephonyClient *)telephonyClient getDataStatus:subscriptionContext completion:v5];
}

@end