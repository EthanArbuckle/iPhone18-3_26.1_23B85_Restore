@interface CMContinuityCaptureActiveSession
- (CMContinuityCaptureActiveSession)initWithDevice:(id)a3 transport:(int64_t)a4 initiatedOnCommunalDevice:(BOOL)a5 micOnly:(BOOL)a6;
- (ContinuityCaptureTransportDevice)device;
- (NSDate)shieldSessionIDGeneratedTime;
- (NSString)shieldSessionID;
- (id)description;
- (int64_t)deviceModel;
- (int64_t)transport;
- (void)launchShieldUI;
- (void)setDevice:(id)a3;
- (void)setDeviceModel:(int64_t)a3;
- (void)setShieldSessionID:(id)a3;
- (void)setShieldSessionIDGeneratedTime:(id)a3;
- (void)setTransport:(int64_t)a3;
@end

@implementation CMContinuityCaptureActiveSession

- (void)launchShieldUI
{
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = self->_device;
    v5 = [(CMContinuityCaptureActiveSession *)self device];
    v10 = 138413058;
    v11 = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureActiveSession launchShieldUI]";
    v14 = 2114;
    v15 = device;
    v16 = 1024;
    v17 = [v5 isPlacementStepSkipped];
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@ (isPlacementStepSkipped:%d)", &v10, 0x26u);
  }

  if (FigGetCFPreferenceBooleanWithDefault() && (([(ContinuityCaptureTransportDevice *)self->_device wired]& 1) != 0 || ([(ContinuityCaptureTransportDevice *)self->_device wifiP2pActive]& 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2];
    v7 = [v6 mutableBytes];
    v8 = [(CMContinuityCaptureActiveSession *)self device];
    *v7 = *v7 & 0xFFFE | [v8 isPlacementStepSkipped];

    v9 = [(CMContinuityCaptureActiveSession *)self device];
    [v9 preLaunchShieldUIForTransport:-[CMContinuityCaptureActiveSession transport](self data:{"transport"), v6}];
  }

  else
  {
    v6 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ prelaunch shield disabled", &v10, 0xCu);
    }
  }
}

- (ContinuityCaptureTransportDevice)device
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_device;
  objc_sync_exit(v2);

  return v3;
}

- (int64_t)transport
{
  v2 = self;
  objc_sync_enter(v2);
  transport = v2->_transport;
  objc_sync_exit(v2);

  return transport;
}

- (void)setDevice:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CMContinuityCaptureActiveSession *)self device];
    v7 = [(CMContinuityCaptureActiveSession *)self device];
    v10 = 138413570;
    v11 = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureActiveSession setDevice:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2112;
    v19 = v4;
    v20 = 2048;
    v21 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s %@(%p) -> %@(%p)", &v10, 0x3Eu);
  }

  v8 = self;
  objc_sync_enter(v8);
  device = v8->_device;
  v8->_device = v4;

  objc_sync_exit(v8);
  [(CMContinuityCaptureActiveSession *)v8 launchShieldUI];
}

- (void)setTransport:(int64_t)a3
{
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138413058;
    v8 = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureActiveSession setTransport:]";
    v11 = 1024;
    v12 = [(CMContinuityCaptureActiveSession *)self transport];
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s %d -> %d", &v7, 0x22u);
  }

  v6 = self;
  objc_sync_enter(v6);
  v6->_transport = a3;
  objc_sync_exit(v6);
}

- (NSString)shieldSessionID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_shieldSessionID;
  objc_sync_exit(v2);

  return v3;
}

- (void)setShieldSessionID:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  shieldSessionID = obj->_shieldSessionID;
  obj->_shieldSessionID = v4;

  objc_sync_exit(obj);
}

- (NSDate)shieldSessionIDGeneratedTime
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_shieldSessionIDGeneratedTime;
  objc_sync_exit(v2);

  return v3;
}

- (void)setShieldSessionIDGeneratedTime:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  shieldSessionIDGeneratedTime = obj->_shieldSessionIDGeneratedTime;
  obj->_shieldSessionIDGeneratedTime = v4;

  objc_sync_exit(obj);
}

- (void)setDeviceModel:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deviceModel = a3;
  objc_sync_exit(obj);
}

- (int64_t)deviceModel
{
  v2 = self;
  objc_sync_enter(v2);
  deviceModel = v2->_deviceModel;
  objc_sync_exit(v2);

  return deviceModel;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  device = self->_device;
  v5 = [(CMContinuityCaptureActiveSession *)self shieldSessionID];
  v6 = [v3 stringWithFormat:@"Device:%@ SID:%@ Transport:%d Model:%d", device, v5, self->_transport, -[CMContinuityCaptureActiveSession deviceModel](self, "deviceModel")];

  return v6;
}

- (CMContinuityCaptureActiveSession)initWithDevice:(id)a3 transport:(int64_t)a4 initiatedOnCommunalDevice:(BOOL)a5 micOnly:(BOOL)a6
{
  v11 = a3;
  v18.receiver = self;
  v18.super_class = CMContinuityCaptureActiveSession;
  v12 = [(CMContinuityCaptureActiveSession *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, a3);
    v13->_transport = a4;
    v13->_initiatedOnCommunalDevice = a5;
    v13->_micOnly = a6;
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sCameraStreamingPowerEventsByCameraType = v13->_sCameraStreamingPowerEventsByCameraType;
    v13->_sCameraStreamingPowerEventsByCameraType = v14;

    [(CMContinuityCaptureActiveSession *)v13 launchShieldUI];
    v16 = v13;
  }

  return v13;
}

@end