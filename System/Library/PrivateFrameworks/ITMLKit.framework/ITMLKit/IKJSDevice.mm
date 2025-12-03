@interface IKJSDevice
+ (id)getMobileGestaltString:(__CFString *)string;
- (BOOL)isInAirplaneMode;
- (BOOL)isNetworkReachable;
- (IKAppDeviceConfig)deviceConfig;
- (IKJSDevice)initWithAppContext:(id)context deviceConfig:(id)config;
- (NSNumber)pixelRatio;
- (NSString)appIdentifier;
- (NSString)appVersion;
- (NSString)model;
- (NSString)networkType;
- (NSString)osBuildNumber;
- (NSString)productType;
- (NSString)systemVersion;
- (NSString)vendorIdentifier;
- (double)lastNetworkChangedTime;
- (id)asPrivateIKJSDevice;
- (id)capacity:(id)capacity;
- (void)dealloc;
@end

@implementation IKJSDevice

- (id)asPrivateIKJSDevice
{
  if ([(IKJSDevice *)self conformsToProtocol:&unk_286706CF0])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IKJSDevice)initWithAppContext:(id)context deviceConfig:(id)config
{
  contextCopy = context;
  configCopy = config;
  v18.receiver = self;
  v18.super_class = IKJSDevice;
  v8 = [(IKJSObject *)&v18 initWithAppContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_deviceConfig, configCopy);
    objc_initWeak(&location, v9);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = +[IKNetworkUtilities sharedInstance];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__IKJSDevice_initWithAppContext_deviceConfig___block_invoke;
    v15[3] = &unk_27979A088;
    objc_copyWeak(&v16, &location);
    v12 = [defaultCenter addObserverForName:@"IKNetworkPropertiesChangedNotification" object:v11 queue:0 usingBlock:v15];
    networkPropertiesChangedToken = v9->_networkPropertiesChangedToken;
    v9->_networkPropertiesChangedToken = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __46__IKJSDevice_initWithAppContext_deviceConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 userInfo];
    v6 = [WeakRetained appContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__IKJSDevice_initWithAppContext_deviceConfig___block_invoke_2;
    v8[3] = &unk_27979A0B0;
    objc_copyWeak(&v10, (a1 + 32));
    v7 = v5;
    v9 = v7;
    [v6 evaluate:v8 completionBlock:0];

    objc_destroyWeak(&v10);
  }
}

void __46__IKJSDevice_initWithAppContext_deviceConfig___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6[0] = *(a1 + 32);
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    v4 = [WeakRetained invokeMethod:@"onNetworkChange" withArguments:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_networkPropertiesChangedToken];

  v4.receiver = self;
  v4.super_class = IKJSDevice;
  [(IKJSDevice *)&v4 dealloc];
}

- (NSString)vendorIdentifier
{
  appContext = [(IKJSObject *)self appContext];
  v3 = [appContext app];
  vendorIdentifier = [v3 vendorIdentifier];
  v5 = vendorIdentifier;
  if (vendorIdentifier)
  {
    uUIDString = vendorIdentifier;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    identifierForVendor = [currentDevice identifierForVendor];
    uUIDString = [identifierForVendor UUIDString];
  }

  return uUIDString;
}

- (NSString)appVersion
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v4 = [infoDictionary objectForKey:@"CFBundleVersion"];

  return v4;
}

- (NSString)appIdentifier
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = [infoDictionary objectForKey:@"CFBundleIdentifier"];
  deviceConfig = [(IKJSDevice *)self deviceConfig];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    appContext = [(IKJSObject *)self appContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __27__IKJSDevice_appIdentifier__block_invoke;
    v10[3] = &unk_279799028;
    v10[4] = self;
    v10[5] = &v11;
    [appContext evaluateDelegateBlockSync:v10];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __27__IKJSDevice_appIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) deviceConfig];
  v2 = [v5 bundleIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)systemVersion
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  systemVersion = [currentDevice systemVersion];

  return systemVersion;
}

- (NSString)model
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  model = [currentDevice model];

  return model;
}

- (NSString)productType
{
  v2 = objc_opt_class();

  return [v2 getMobileGestaltString:@"ProductType"];
}

- (NSNumber)pixelRatio
{
  v2 = MEMORY[0x277CCABB0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = [v2 numberWithDouble:?];

  return v4;
}

- (BOOL)isNetworkReachable
{
  v2 = +[IKNetworkUtilities sharedInstance];
  isNetworkReachable = [v2 isNetworkReachable];

  return isNetworkReachable;
}

- (BOOL)isInAirplaneMode
{
  v2 = +[IKNetworkUtilities sharedInstance];
  isAirplaneModeEnabled = [v2 isAirplaneModeEnabled];

  return isAirplaneModeEnabled;
}

- (NSString)networkType
{
  v2 = +[IKNetworkUtilities sharedInstance];
  networkType = [v2 networkType];

  return networkType;
}

- (double)lastNetworkChangedTime
{
  v2 = +[IKNetworkUtilities sharedInstance];
  [v2 lastNetworkChangedTime];
  v4 = v3;

  return v4;
}

- (id)capacity:(id)capacity
{
  capacityCopy = capacity;
  v4 = MGCopyAnswer();
  if ([capacityCopy isEqualToString:@"totalSystemCapacity"])
  {
    v5 = MEMORY[0x277D823E8];
LABEL_11:
    v6 = [v4 objectForKey:*v5];
    goto LABEL_12;
  }

  if ([capacityCopy isEqualToString:@"totalSystemAvailable"])
  {
    v5 = MEMORY[0x277D823D8];
    goto LABEL_11;
  }

  if ([capacityCopy isEqualToString:@"totalDataCapacity"])
  {
    v5 = MEMORY[0x277D823C0];
    goto LABEL_11;
  }

  if ([capacityCopy isEqualToString:@"totalDataAvailable"])
  {
    v5 = MEMORY[0x277D823A8];
    goto LABEL_11;
  }

  if ([capacityCopy isEqualToString:@"totalDiskCapacity"])
  {
    v5 = MEMORY[0x277D823C8];
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (NSString)osBuildNumber
{
  v2 = objc_opt_class();

  return [v2 getMobileGestaltString:@"BuildVersion"];
}

+ (id)getMobileGestaltString:(__CFString *)string
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [MEMORY[0x277CCACA8] stringWithString:v4];
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IKAppDeviceConfig)deviceConfig
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceConfig);

  return WeakRetained;
}

@end