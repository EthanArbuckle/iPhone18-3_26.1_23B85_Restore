@interface GKDevice
+ (id)currentDevice;
+ (id)zeroOutVersionWithDeviceType:(id)a3;
- (BOOL)isDevelopmentDevice;
- (BOOL)isFocusDevice;
- (GKDevice)init;
- (NSString)udid;
- (id)_platformUDID;
- (id)buildVersionHeader;
- (id)platformBuildVersion;
- (id)processNameHeader;
- (id)userAgentWithProcessName:(id)a3 protocolVersion:(id)a4;
- (void)_initPlatform;
@end

@implementation GKDevice

+ (id)currentDevice
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__GKDevice_currentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentDevice_sDispatchOnceToken != -1)
  {
    dispatch_once(&currentDevice_sDispatchOnceToken, block);
  }

  v2 = currentDevice_sCurrentDevice;

  return v2;
}

- (NSString)udid
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(GKDevice *)self _platformUDID];
    udid = self->_udid;
    self->_udid = v3;
  }

  v5 = self->_udid;

  return v5;
}

- (id)_platformUDID
{
  if (_platformUDID_onceToken != -1)
  {
    [GKDevice(PlatformDependent) _platformUDID];
  }

  if (!self->_udid)
  {
    objc_storeStrong(&self->_udid, _platformUDID_uuid);
  }

  v3 = _platformUDID_uuid;

  return v3;
}

uint64_t __25__GKDevice_currentDevice__block_invoke(uint64_t a1)
{
  currentDevice_sCurrentDevice = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (GKDevice)init
{
  v12.receiver = self;
  v12.super_class = GKDevice;
  v2 = [(GKDevice *)&v12 init];
  if (v2)
  {
    v3 = GKGameKitBundle();
    v4 = v3;
    if (v3)
    {
      v5 = [v3 infoDictionary];
      v6 = [v5 objectForKey:*MEMORY[0x277CBED58]];

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"GameKit-%@", v6];
      gameKitVersion = v2->_gameKitVersion;
      v2->_gameKitVersion = v7;
    }

    v2->_gameKitAvailable = 1;
    [(GKDevice *)v2 _initPlatform];
    if (!v2->_deviceType)
    {
      v2->_deviceType = @"Unknown";
    }

    if (!v2->_buildVersion)
    {
      v2->_buildVersion = @"Unknown";
    }

    if (!v2->_osVersion)
    {
      v2->_osVersion = @"Unknown";
    }

    if (!v2->_gameKitVersion)
    {
      v2->_gameKitVersion = @"Unknown";
    }

    v9 = [GKDevice zeroOutVersionWithDeviceType:v2->_deviceType];
    versionlessDeviceType = v2->_versionlessDeviceType;
    v2->_versionlessDeviceType = v9;
  }

  return v2;
}

- (id)userAgentWithProcessName:(id)a3 protocolVersion:(id)a4
{
  v6 = MEMORY[0x277CCAB68];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithCapacity:256];
  [v9 appendString:v8];

  [v9 appendString:@"/"];
  [v9 appendString:v7];

  objc_msgSend(v9, "appendString:", @" (");
  v10 = [(GKDevice *)self versionlessDeviceType];
  [v9 appendString:v10];

  [v9 appendString:@"; "];
  v11 = [(GKDevice *)self osVersion];
  [v9 appendString:v11];

  [v9 appendString:@"; "];
  v12 = [(GKDevice *)self buildVersion];
  [v9 appendString:v12];

  [v9 appendString:@"; "];
  v13 = [(GKDevice *)self gameKitVersion];
  [v9 appendString:v13];

  [v9 appendString:@""]);

  return v9;
}

- (id)processNameHeader
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 infoDictionary];
    v5 = [v4 objectForKey:*MEMORY[0x277CBED50]];
    if (v5 || ([v4 objectForKey:*MEMORY[0x277CBEC40]], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
    }

    else
    {
      v6 = @"GameKit";
    }
  }

  else
  {
    v6 = @"GameKit";
  }

  return v6;
}

- (id)buildVersionHeader
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:256];
  v4 = [(GKDevice *)self deviceType];
  [v3 appendString:v4];

  [v3 appendString:@"; "];
  v5 = [(GKDevice *)self buildVersion];
  [v3 appendString:v5];

  [v3 appendString:@"; "];
  v6 = [(GKDevice *)self gameKitVersion];
  [v3 appendString:v6];

  return v3;
}

- (id)platformBuildVersion
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:256];
  [v3 appendString:@"iOS"];
  [v3 appendString:@"."];
  v4 = [(GKDevice *)self osVersion];
  [v3 appendString:v4];

  [v3 appendString:@"."];
  v5 = [(GKDevice *)self buildVersion];
  [v3 appendString:v5];

  return v3;
}

- (void)_initPlatform
{
  v24[5] = *MEMORY[0x277D85DE8];
  v24[0] = @"ProductType";
  v24[1] = @"ProductVersion";
  v24[2] = @"BuildVersion";
  v24[3] = @"ipad";
  v24[4] = @"gamekit";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v4 = MGCopyMultipleAnswers();
  v5 = [v4 objectForKeyedSubscript:@"ProductType"];
  deviceType = self->_deviceType;
  self->_deviceType = v5;

  v7 = [v4 objectForKeyedSubscript:@"ProductVersion"];
  osVersion = self->_osVersion;
  self->_osVersion = v7;

  v9 = [v4 objectForKeyedSubscript:@"BuildVersion"];
  buildVersion = self->_buildVersion;
  self->_buildVersion = v9;

  v11 = [v4 objectForKeyedSubscript:@"gamekit"];
  self->_gameKitAvailable = [v11 BOOLValue];

  v12 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
    v12 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = self->_deviceType;
    v15 = self->_osVersion;
    v16 = self->_buildVersion;
    v18 = 138412802;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Game Center DeviceType:%@, OS:%@ Build:%@", &v18, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __44__GKDevice_PlatformDependent___platformUDID__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = _platformUDID_uuid;
  _platformUDID_uuid = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)isDevelopmentDevice
{
  if (isDevelopmentDevice_onceToken != -1)
  {
    [GKDevice(PlatformDependent) isDevelopmentDevice];
  }

  return isDevelopmentDevice_isDevelopment;
}

void __50__GKDevice_PlatformDependent__isDevelopmentDevice__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA00]);
  isDevelopmentDevice_isDevelopment = [v0 fileExistsAtPath:@"/Developer"];
}

- (BOOL)isFocusDevice
{
  if (isFocusDevice_onceToken != -1)
  {
    [GKDevice(PlatformDependent) isFocusDevice];
  }

  return 0;
}

+ (id)zeroOutVersionWithDeviceType:(id)a3
{
  v3 = sub_227A724EC();
  static GKDevice.zeroOutVersion(deviceType:)(v3);

  v4 = sub_227A724BC();

  return v4;
}

@end