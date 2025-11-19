@interface MRNetServiceTransport
+ (id)createDeviceInfoFromNetService:(id)a3;
+ (id)createDeviceInfoFromTXTRecord:(id)a3;
- (BOOL)getInputStream:(id *)a3 outputStream:(id *)a4 userInfo:(id)a5;
- (MRNetServiceTransport)initWithNetService:(id)a3;
- (id)createConnectionWithUserInfo:(id)a3;
- (id)deviceInfo;
- (void)dealloc;
- (void)setNetService:(id)a3;
- (void)updateDeviceInfoWithTXTRecord:(id)a3;
@end

@implementation MRNetServiceTransport

- (MRNetServiceTransport)initWithNetService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRNetServiceTransport;
  v6 = [(MRNetServiceTransport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_netService, a3);
    v7->_requiresCustomPairing = 1;
  }

  return v7;
}

- (void)dealloc
{
  [(MRNetServiceTransport *)self resetWithError:0];
  v3.receiver = self;
  v3.super_class = MRNetServiceTransport;
  [(MRNetServiceTransport *)&v3 dealloc];
}

- (void)setNetService:(id)a3
{
  v5 = a3;
  if (self->_netService != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_netService, a3);
    v6 = MEMORY[0x1E695AC20];
    v7 = [(NSNetService *)v12 TXTRecordData];
    v8 = [v6 dictionaryFromTXTRecordData:v7];
    v9 = [v8 mutableCopy];

    v10 = [(NSNetService *)v12 name];
    v11 = [v10 dataUsingEncoding:4];
    [v9 setObject:v11 forKey:@"Name"];

    [(MRNetServiceTransport *)self updateDeviceInfoWithTXTRecord:v9];
    v5 = v12;
  }
}

+ (id)createDeviceInfoFromNetService:(id)a3
{
  v3 = MEMORY[0x1E695AC20];
  v4 = a3;
  v5 = [v4 TXTRecordData];
  v6 = [v3 dictionaryFromTXTRecordData:v5];
  v7 = [v6 mutableCopy];

  v8 = [v4 name];

  v9 = [v8 dataUsingEncoding:4];
  [v7 setObject:v9 forKey:@"Name"];

  v10 = [objc_opt_class() createDeviceInfoFromTXTRecord:v7];

  return v10;
}

+ (id)createDeviceInfoFromTXTRecord:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 objectForKeyedSubscript:@"UniqueIdentifier"];
  v7 = [v5 initWithData:v6 encoding:4];

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [v4 objectForKeyedSubscript:@"Name"];
  v10 = [v8 initWithData:v9 encoding:4];

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [v4 objectForKeyedSubscript:@"ModelName"];
  v13 = [v11 initWithData:v12 encoding:4];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [v4 objectForKeyedSubscript:@"SystemBuildVersion"];
  v16 = [v14 initWithData:v15 encoding:4];

  v17 = objc_alloc(MEMORY[0x1E695DEF0]);
  v18 = [v4 objectForKeyedSubscript:@"BluetoothAddress"];
  v19 = [v17 initWithData:v18];

  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [v4 objectForKeyedSubscript:@"LocalAirPlayReceiverPairingIdentity"];
  v22 = [v20 initWithData:v21 encoding:4];

  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24 = [v4 objectForKeyedSubscript:@"macAddress"];
  v25 = [v23 initWithData:v24 encoding:4];

  v26 = objc_alloc(MEMORY[0x1E696AEC0]);
  v27 = [v4 objectForKeyedSubscript:@"AllowPairing"];

  v28 = [v26 initWithData:v27 encoding:4];
  if (v7)
  {
    v29 = objc_alloc_init(MRDeviceInfo);
    [(MRDeviceInfo *)v29 setIdentifier:v7];
    [(MRDeviceInfo *)v29 setName:v10];
    [(MRDeviceInfo *)v29 setLocalizedModelName:v13];
    [(MRDeviceInfo *)v29 setBuildVersion:v16];
    [(MRDeviceInfo *)v29 setBluetoothAddress:v19];
    [(MRDeviceInfo *)v29 setDeviceUID:v22];
    [(MRDeviceInfo *)v29 setManagedConfigurationDeviceIdentifier:v25];
    if ([v28 length])
    {
      v30 = [v28 BOOLValue];
    }

    else
    {
      v30 = 1;
    }

    [(MRDeviceInfo *)v29 setPairingAllowed:v30];
  }

  else
  {
    v29 = 0;
  }

  v31 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = v29;
    _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, "decoded txtData: %@", &v34, 0xCu);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)updateDeviceInfoWithTXTRecord:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v12 = [v4 defaultCenter];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = v6;
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    [v6 setObject:deviceInfo forKey:@"OldDeviceInfo"];
  }

  v9 = [objc_opt_class() createDeviceInfoFromTXTRecord:v5];

  v10 = self->_deviceInfo;
  self->_deviceInfo = v9;

  v11 = self->_deviceInfo;
  if (v11)
  {
    [v7 setObject:v11 forKey:@"NewDeviceInfo"];
  }

  [v12 postNotificationName:@"MRExternalDeviceTransportDeviceInfoDidChangeNotification" object:self userInfo:v7];
}

- (id)deviceInfo
{
  deviceInfo = self->_deviceInfo;
  if (!deviceInfo)
  {
    v4 = [objc_opt_class() createDeviceInfoFromNetService:self->_netService];
    v5 = self->_deviceInfo;
    self->_deviceInfo = v4;

    deviceInfo = self->_deviceInfo;
  }

  return deviceInfo;
}

- (id)createConnectionWithUserInfo:(id)a3
{
  v8 = 0;
  v9 = 0;
  v3 = [(MRNetServiceTransport *)self getInputStream:&v9 outputStream:&v8 userInfo:a3];
  v4 = v9;
  v5 = v8;
  v6 = 0;
  if (v3)
  {
    v6 = [[MRStreamTransportConnection alloc] initWithInputStream:v4 outputStream:v5 dataSource:0];
  }

  return v6;
}

- (BOOL)getInputStream:(id *)a3 outputStream:(id *)a4 userInfo:(id)a5
{
  v9 = 0;
  v10 = 0;
  v7 = [(NSNetService *)self->_netService getInputStream:&v10 outputStream:&v9, a5];
  *a3 = v10;
  *a4 = v9;

  return v7;
}

@end