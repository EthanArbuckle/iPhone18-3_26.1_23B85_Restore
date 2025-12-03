@interface CMContinuityCaptureActiveSession
- (CMContinuityCaptureActiveSession)initWithDevice:(id)device transport:(int64_t)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only;
- (ContinuityCaptureTransportDevice)device;
- (NSDate)shieldSessionIDGeneratedTime;
- (NSString)shieldSessionID;
- (id)description;
- (int64_t)deviceModel;
- (int64_t)transport;
- (void)launchShieldUI;
- (void)setDevice:(id)device;
- (void)setDeviceModel:(int64_t)model;
- (void)setShieldSessionID:(id)d;
- (void)setShieldSessionIDGeneratedTime:(id)time;
- (void)setTransport:(int64_t)transport;
@end

@implementation CMContinuityCaptureActiveSession

- (void)launchShieldUI
{
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = self->_device;
    device = [(CMContinuityCaptureActiveSession *)self device];
    v10 = 138413058;
    selfCopy2 = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureActiveSession launchShieldUI]";
    v14 = 2114;
    v15 = device;
    v16 = 1024;
    isPlacementStepSkipped = [device isPlacementStepSkipped];
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@ (isPlacementStepSkipped:%d)", &v10, 0x26u);
  }

  if (FigGetCFPreferenceBooleanWithDefault() && (([(ContinuityCaptureTransportDevice *)self->_device wired]& 1) != 0 || ([(ContinuityCaptureTransportDevice *)self->_device wifiP2pActive]& 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2];
    mutableBytes = [v6 mutableBytes];
    device2 = [(CMContinuityCaptureActiveSession *)self device];
    *mutableBytes = *mutableBytes & 0xFFFE | [device2 isPlacementStepSkipped];

    device3 = [(CMContinuityCaptureActiveSession *)self device];
    [device3 preLaunchShieldUIForTransport:-[CMContinuityCaptureActiveSession transport](self data:{"transport"), v6}];
  }

  else
  {
    v6 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ prelaunch shield disabled", &v10, 0xCu);
    }
  }
}

- (ContinuityCaptureTransportDevice)device
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_device;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)transport
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  transport = selfCopy->_transport;
  objc_sync_exit(selfCopy);

  return transport;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    device = [(CMContinuityCaptureActiveSession *)self device];
    device2 = [(CMContinuityCaptureActiveSession *)self device];
    v10 = 138413570;
    selfCopy = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureActiveSession setDevice:]";
    v14 = 2112;
    v15 = device;
    v16 = 2048;
    v17 = device2;
    v18 = 2112;
    v19 = deviceCopy;
    v20 = 2048;
    v21 = deviceCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s %@(%p) -> %@(%p)", &v10, 0x3Eu);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  device = selfCopy2->_device;
  selfCopy2->_device = deviceCopy;

  objc_sync_exit(selfCopy2);
  [(CMContinuityCaptureActiveSession *)selfCopy2 launchShieldUI];
}

- (void)setTransport:(int64_t)transport
{
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138413058;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureActiveSession setTransport:]";
    v11 = 1024;
    transport = [(CMContinuityCaptureActiveSession *)self transport];
    v13 = 1024;
    transportCopy = transport;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s %d -> %d", &v7, 0x22u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_transport = transport;
  objc_sync_exit(selfCopy2);
}

- (NSString)shieldSessionID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_shieldSessionID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setShieldSessionID:(id)d
{
  dCopy = d;
  obj = self;
  objc_sync_enter(obj);
  shieldSessionID = obj->_shieldSessionID;
  obj->_shieldSessionID = dCopy;

  objc_sync_exit(obj);
}

- (NSDate)shieldSessionIDGeneratedTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_shieldSessionIDGeneratedTime;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setShieldSessionIDGeneratedTime:(id)time
{
  timeCopy = time;
  obj = self;
  objc_sync_enter(obj);
  shieldSessionIDGeneratedTime = obj->_shieldSessionIDGeneratedTime;
  obj->_shieldSessionIDGeneratedTime = timeCopy;

  objc_sync_exit(obj);
}

- (void)setDeviceModel:(int64_t)model
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deviceModel = model;
  objc_sync_exit(obj);
}

- (int64_t)deviceModel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceModel = selfCopy->_deviceModel;
  objc_sync_exit(selfCopy);

  return deviceModel;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  device = self->_device;
  shieldSessionID = [(CMContinuityCaptureActiveSession *)self shieldSessionID];
  v6 = [v3 stringWithFormat:@"Device:%@ SID:%@ Transport:%d Model:%d", device, shieldSessionID, self->_transport, -[CMContinuityCaptureActiveSession deviceModel](self, "deviceModel")];

  return v6;
}

- (CMContinuityCaptureActiveSession)initWithDevice:(id)device transport:(int64_t)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = CMContinuityCaptureActiveSession;
  v12 = [(CMContinuityCaptureActiveSession *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    v13->_transport = transport;
    v13->_initiatedOnCommunalDevice = communalDevice;
    v13->_micOnly = only;
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sCameraStreamingPowerEventsByCameraType = v13->_sCameraStreamingPowerEventsByCameraType;
    v13->_sCameraStreamingPowerEventsByCameraType = v14;

    [(CMContinuityCaptureActiveSession *)v13 launchShieldUI];
    v16 = v13;
  }

  return v13;
}

@end