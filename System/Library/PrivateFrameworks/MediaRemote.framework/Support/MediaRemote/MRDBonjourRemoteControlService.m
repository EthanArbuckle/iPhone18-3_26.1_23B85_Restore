@interface MRDBonjourRemoteControlService
+ (id)_netServiceTXTRecordDataWithDeviceInfo:(id)a3;
- (MRDBonjourRemoteControlService)initWithNetServiceType:(id)a3;
- (MRDBonjourRemoteControlServiceDelegate)delegate;
- (NSString)description;
- (void)_handleDeviceInfoChangedNotification:(id)a3;
- (void)_handleRestrictionChangedNotification:(id)a3;
- (void)_initializeBonjourServiceWithDeviceInfo:(id)a3;
- (void)_txtDataChanged;
- (void)_txtDataChangedWithDeviceInfo:(id)a3;
- (void)_txtDataChangedWithUserInfo:(id)a3;
- (void)dealloc;
- (void)netService:(id)a3 didAcceptConnectionWithInputStream:(id)a4 outputStream:(id)a5;
- (void)netService:(id)a3 didNotPublish:(id)a4;
- (void)netServiceDidPublish:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation MRDBonjourRemoteControlService

- (MRDBonjourRemoteControlService)initWithNetServiceType:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MRDBonjourRemoteControlService;
  v5 = [(MRDBonjourRemoteControlService *)&v19 init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = [v4 copy];
    netServiceType = v5->_netServiceType;
    v5->_netServiceType = v6;

    v8 = objc_alloc_init(MSVWeakLinkClass());
    bluetoothClient = v5->_bluetoothClient;
    v5->_bluetoothClient = v8;

    v10 = &_dispatch_main_q;
    [(CUBluetoothClient *)v5->_bluetoothClient setDispatchQueue:&_dispatch_main_q];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007AB40;
    v16[3] = &unk_1004B8928;
    objc_copyWeak(&v17, &location);
    [(CUBluetoothClient *)v5->_bluetoothClient setBluetoothAddressChangedHandler:v16];
    v11 = +[MROrigin localOrigin];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007AC1C;
    v14[3] = &unk_1004B8950;
    objc_copyWeak(&v15, &location);
    [MRDeviceInfoRequest deviceInfoForOrigin:v11 queue:&_dispatch_main_q completion:v14];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v5 selector:"_handleDeviceInfoChangedNotification:" name:kMRDeviceInfoDidChangeNotification object:0];
    [v12 addObserver:v5 selector:"_handleRestrictionChangedNotification:" name:MCRestrictionChangedNotification object:0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(MRDBonjourRemoteControlService *)self stop];
  v4.receiver = self;
  v4.super_class = MRDBonjourRemoteControlService;
  [(MRDBonjourRemoteControlService *)&v4 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p %@>", v4, self, self->_netServiceType];

  return v5;
}

- (void)start
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    networkService = self->_networkService;
    netServiceType = self->_netServiceType;
    v6 = 138543618;
    v7 = networkService;
    v8 = 2114;
    v9 = netServiceType;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Starting network service: %{public}@ for type %{public}@", &v6, 0x16u);
  }

  [(CUBluetoothClient *)self->_bluetoothClient activate];
  [(NSNetService *)self->_networkService publishWithOptions:2];
  self->_started = 1;
}

- (void)stop
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    networkService = self->_networkService;
    netServiceType = self->_netServiceType;
    v6 = 138543618;
    v7 = networkService;
    v8 = 2114;
    v9 = netServiceType;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Stopping network service %{public}@ for type %{public}@", &v6, 0x16u);
  }

  [(CUBluetoothClient *)self->_bluetoothClient invalidate];
  [(NSNetService *)self->_networkService stop];
  self->_started = 0;
}

- (void)netService:(id)a3 didAcceptConnectionWithInputStream:(id)a4 outputStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    netServiceType = self->_netServiceType;
    v17 = 138544130;
    v18 = v8;
    v19 = 2114;
    v20 = netServiceType;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Did accept connection with service: %{public}@ using type: %{public}@ input: %{public}@ output: %{public}@", &v17, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [[MRStreamTransportConnection alloc] initWithInputStream:v9 outputStream:v10 dataSource:0];
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 bonjourRemoteControlService:self didAcceptConnection:v15];
  }
}

- (void)netServiceDidPublish:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    netServiceType = self->_netServiceType;
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = netServiceType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Remote server advertisement success with service: %{public}@ using type: %{public}@", &v7, 0x16u);
  }
}

- (void)netService:(id)a3 didNotPublish:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Remote server advertisement failed with service: %{public}@ error: %{public}@", buf, 0x16u);
  }

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Retrying after 30s...", buf, 2u);
  }

  networkService = self->_networkService;
  if (networkService)
  {
    [(NSNetService *)networkService stop];
    v11 = self->_networkService;
    self->_networkService = 0;
  }

  v12 = +[MROrigin localOrigin];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007B304;
  v13[3] = &unk_1004B8978;
  v13[4] = self;
  [MRDeviceInfoRequest deviceInfoForOrigin:v12 queue:&_dispatch_main_q completion:v13];
}

- (void)_handleDeviceInfoChangedNotification:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Updating txtData because deviceInfo changed...", v9, 2u);
  }

  v6 = [v4 userInfo];
  v7 = MRGetOriginFromUserInfo();

  if ([v7 isLocal])
  {
    v8 = [v4 userInfo];
    [(MRDBonjourRemoteControlService *)self _txtDataChangedWithUserInfo:v8];
  }
}

- (void)_handleRestrictionChangedNotification:(id)a3
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Updating txtData because device restrictions changed...", v5, 2u);
  }

  [(MRDBonjourRemoteControlService *)self _txtDataChanged];
}

- (void)_txtDataChangedWithUserInfo:(id)a3
{
  v4 = MRGetDeviceInfoFromUserInfo();
  [(MRDBonjourRemoteControlService *)self _txtDataChangedWithDeviceInfo:v4];
}

- (void)_txtDataChanged
{
  v3 = +[MROrigin localOrigin];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007B628;
  v4[3] = &unk_1004B8978;
  v4[4] = self;
  [MRDeviceInfoRequest deviceInfoForOrigin:v3 queue:&_dispatch_main_q completion:v4];
}

- (void)_txtDataChangedWithDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Updating txtData: %{public}@", &v8, 0xCu);
  }

  if (v4)
  {
    v6 = [(MRDBonjourRemoteControlService *)self lastKnownBluetoothAddress];
    MRPairedDeviceSetBluetoothAddress();

    v7 = [objc_opt_class() _netServiceTXTRecordDataWithDeviceInfo:v4];
    [(NSNetService *)self->_networkService setTXTRecordData:v7];
  }
}

+ (id)_netServiceTXTRecordDataWithDeviceInfo:(id)a3
{
  v29[0] = kMRExternalDeviceUniqueIdentifierTXTRecordKey;
  v3 = a3;
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1004D2058;
  }

  v30[0] = v6;
  v29[1] = kMRExternalDeviceNameTXTRecordKey;
  v7 = [v3 name];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1004D2058;
  }

  v30[1] = v9;
  v29[2] = kMRExternalDeviceModelNameTXTRecordKey;
  v10 = [v3 localizedModelName];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1004D2058;
  }

  v30[2] = v12;
  v29[3] = kMRExternalDeviceSystemBuildVersionTXTRecordKey;
  v13 = [v3 buildVersion];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1004D2058;
  }

  v30[3] = v15;
  v29[4] = kMRExternalDeviceAllowPairingTXTRecordKey;
  v16 = [v3 isPairingAllowed];
  v17 = @"NO";
  if (v16)
  {
    v17 = @"YES";
  }

  v30[4] = v17;
  v29[5] = kMRExternalDeviceBluetoothAddressTXTRecordKey;
  v18 = [v3 bluetoothAddress];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_1004D2058;
  }

  v30[5] = v20;
  v29[6] = kMRExternalDeviceLocalAirPlayReceiverPairingIdentityKey;
  v21 = [v3 deviceUID];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_1004D2058;
  }

  v30[6] = v23;
  v29[7] = kMRExternalManagedConfigDeviceIDKey;
  v24 = [v3 managedConfigurationDeviceIdentifier];

  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = &stru_1004D2058;
  }

  v30[7] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:8];

  v27 = [NSNetService dataFromTXTRecordDictionary:v26];

  return v27;
}

- (void)_initializeBonjourServiceWithDeviceInfo:(id)a3
{
  v4 = a3;
  if (self->_networkService)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Stopping bonjour service %{public}@", &v16, 0xCu);
    }

    [(NSNetService *)self->_networkService stop];
    networkService = self->_networkService;
    self->_networkService = 0;
  }

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    netServiceType = self->_netServiceType;
    v16 = 138543362;
    v17 = netServiceType;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Initializing bonjour service for type %{public}@", &v16, 0xCu);
  }

  v9 = [[NSNetService alloc] initWithDomain:@"local." type:self->_netServiceType name:&stru_1004D2058];
  v10 = self->_networkService;
  self->_networkService = v9;

  [(NSNetService *)self->_networkService setDelegate:self];
  v11 = [objc_opt_class() _netServiceTXTRecordDataWithDeviceInfo:v4];
  [(NSNetService *)self->_networkService setTXTRecordData:v11];

  v12 = +[MRUserSettings currentSettings];
  v13 = [v12 usePeerToPeerExternalDeviceConnections];

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "NO";
    if (v13)
    {
      v15 = "YES";
    }

    v16 = 136315138;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Configuring remote control network service with includesPeerToPeer = %s", &v16, 0xCu);
  }

  [(NSNetService *)self->_networkService setIncludesPeerToPeer:v13];
  if (self->_started)
  {
    [(MRDBonjourRemoteControlService *)self start];
  }
}

- (MRDBonjourRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end