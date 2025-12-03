@interface SHFUPlugin
- (BOOL)abortRegistryEntryID:(id)d;
- (BOOL)deviceNeedsUpdate:(id)update;
- (BOOL)hostBatteryOnACPower;
- (BOOL)hostConnectedToNetwork;
- (BOOL)reconnectDeviceToHost;
- (FudPluginDelegate)delegate;
- (NSDictionary)hostPowerSource;
- (NSString)description;
- (NSString)errorDomain;
- (SHFUPlugin)init;
- (SHFUPlugin)initWithCoder:(id)coder;
- (SHFUPlugin)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options;
- (SHFUPlugin)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options deviceProperties:(id)properties;
- (id)getParsersForHWRevID:(id)d;
- (id)getPreloadedFWVersions:(id *)versions;
- (id)sendPersonalizedFirmwareToDevice;
- (id)verifyDeviceBattery;
- (id)verifyLatestFWVersions;
- (int)hostBatteryCapacity;
- (unint64_t)getTotalPrepareBytes:(id)bytes;
- (void)applyFirmwareWithOptions:(id)options;
- (void)bootstrapWithOptions:(id)options;
- (void)btSessionArrived;
- (void)centralManagerDidUpdateState:(id)state;
- (void)checkNetworkReachability:(unsigned int)reachability;
- (void)clearNotification;
- (void)clearOldRegistryEntryIDs;
- (void)commitFirmwareWithOptions:(id)options;
- (void)createPowerAssertion;
- (void)dealloc;
- (void)delayBootstrap;
- (void)executeNextBootstrapAction;
- (void)finishWithOptions:(id)options;
- (void)logIORegistryEntry:(id)entry;
- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status;
- (void)prepareFirmwareWithOptions:(id)options;
- (void)registerForMatchNotification;
- (void)releasePowerAssertion;
- (void)sendFirmwareToDeviceWithOptions:(id)options;
- (void)sendPersonalizedManifestsToDevice;
- (void)setDelegate:(id)delegate;
- (void)setupBTSession;
- (void)storeRegistryEntryID:(id)d;
- (void)tagForBluetoothGATTServicesDiscovery;
- (void)verifyHostBattery;
- (void)waitForBTSession;
- (void)waitForDeviceEnumerationWithProgressUpdates:(BOOL)updates;
- (void)waitForNetwork;
- (void)waitForUserInactivity:(int)inactivity withOptions:(id)options;
@end

@implementation SHFUPlugin

- (void)clearNotification
{
  notificationIter = self->_notificationIter;
  if (notificationIter)
  {
    IOObjectRelease(notificationIter);
    self->_notificationIter = 0;
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
    self->_notificationPort = 0;
  }
}

- (void)registerForMatchNotification
{
  v3 = IONotificationPortCreate(kIOMasterPortDefault);
  self->_notificationPort = v3;
  if (!v3)
  {
    return;
  }

  v4 = dispatch_semaphore_create(0);
  [(SHFUPlugin *)self setMatchSemaphore:v4];

  notificationPort = self->_notificationPort;
  serialQueue = [(SHFUPlugin *)self serialQueue];
  IONotificationPortSetDispatchQueue(notificationPort, serialQueue);

  matching = IOServiceMatching("IOHIDDevice");
  vendorID = [(SHFUPlugin *)self vendorID];
  [(__CFDictionary *)matching setObject:vendorID forKeyedSubscript:@"VendorID"];

  productID = [(SHFUPlugin *)self productID];
  [(__CFDictionary *)matching setObject:productID forKeyedSubscript:@"ProductID"];

  productID2 = [(SHFUPlugin *)self productID];
  intValue = [productID2 intValue];

  if (intValue > 612)
  {
    if (((intValue - 613) > 0x3A || ((1 << (intValue - 101)) & 0x4A06000001F01FFLL) == 0) && intValue != 786)
    {
      goto LABEL_17;
    }

LABEL_5:
    [(__CFDictionary *)matching setObject:&off_100026970 forKeyedSubscript:@"PrimaryUsagePage"];
    v11 = &off_100026988;
    v12 = @"PrimaryUsage";
    goto LABEL_6;
  }

  if (intValue == 332 || intValue == 546)
  {
    goto LABEL_5;
  }

LABEL_17:
  v11 = &off_100026B10;
  v12 = @"DeviceUsagePairs";
LABEL_6:
  [(__CFDictionary *)matching setObject:v11 forKeyedSubscript:v12];
  if (!IOServiceAddMatchingNotification(self->_notificationPort, "IOServiceMatched", matching, sub_10000144C, self, &self->_notificationIter) && self->_notificationIter)
  {
      ;
    }
  }
}

- (SHFUPlugin)initWithCoder:(id)coder
{
  [NSException raise:NSInternalInconsistencyException format:@"NSCoding protocol unused by fud"];

  return [(SHFUPlugin *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0 deviceProperties:0];
}

- (SHFUPlugin)init
{
  [NSException raise:NSInternalInconsistencyException format:@"use -initWithDeviceClass:delegate:info:options:deviceProperties:"];

  return [(SHFUPlugin *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0 deviceProperties:0];
}

- (SHFUPlugin)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options
{
  [NSException raise:NSInternalInconsistencyException format:@"use -initWithDeviceClass:delegate:info:options:deviceProperties:", info, options];

  return [(SHFUPlugin *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0 deviceProperties:0];
}

- (SHFUPlugin)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options deviceProperties:(id)properties
{
  classCopy = class;
  delegateCopy = delegate;
  optionsCopy = options;
  propertiesCopy = properties;
  v16 = [propertiesCopy objectForKeyedSubscript:@"Policy"];
  v17 = [propertiesCopy objectForKeyedSubscript:@"MatchingDictionary"];
  v18 = v17;
  selfCopy = 0;
  if (propertiesCopy && v16 && v17)
  {
    v131.receiver = self;
    v131.super_class = SHFUPlugin;
    v20 = [(SHFUPlugin *)&v131 init];
    if (v20)
    {
      infoCopy = info;
      v21 = dispatch_queue_create("com.apple.StandaloneHIDFudPlugins.SHFUPlugin", 0);
      serialQueue = v20->_serialQueue;
      v20->_serialQueue = v21;

      v20->_powerAssertionID = 0;
      v20->_notificationIter = 0;
      v20->_notificationPort = 0;
      v23 = [v16 objectForKeyedSubscript:@"MobileAssetType"];
      mobileAssetType = v20->_mobileAssetType;
      v20->_mobileAssetType = v23;

      v25 = [v18 objectForKeyedSubscript:@"VendorID"];
      vendorID = v20->_vendorID;
      v20->_vendorID = v25;

      v27 = [v18 objectForKeyedSubscript:@"ProductID"];
      productID = v20->_productID;
      v20->_productID = v27;

      v29 = [v16 objectForKeyedSubscript:@"EquivalentPIDs"];
      equivalentPIDs = v20->_equivalentPIDs;
      v20->_equivalentPIDs = v29;

      v31 = [v16 objectForKeyedSubscript:@"VersionCheckDelay"];
      versionCheckDelay = v20->_versionCheckDelay;
      v20->_versionCheckDelay = v31;

      v130 = classCopy;
      v33 = [[NSString alloc] initWithString:classCopy];
      deviceClass = v20->_deviceClass;
      v20->_deviceClass = v33;

      v35 = [[NSDictionary alloc] initWithDictionary:optionsCopy];
      options = v20->_options;
      v20->_options = v35;

      v37 = objc_alloc_init(NSMutableDictionary);
      pluginInfo = v20->_pluginInfo;
      v20->_pluginInfo = v37;

      v129 = delegateCopy;
      objc_storeWeak(&v20->_delegate, delegateCopy);
      v39 = objc_alloc_init(NSMutableDictionary);
      parsers = v20->_parsers;
      v20->_parsers = v39;

      v41 = objc_alloc_init(NSMutableDictionary);
      latestFirmwareVersions = v20->_latestFirmwareVersions;
      v20->_latestFirmwareVersions = v41;

      v43 = [NSURL alloc];
      v44 = [v16 objectForKeyedSubscript:@"FirmwareDirectory"];
      stringByStandardizingPath = [v44 stringByStandardizingPath];
      v46 = [v43 initFileURLWithPath:stringByStandardizingPath isDirectory:1];
      firmwareDirectory = v20->_firmwareDirectory;
      v20->_firmwareDirectory = v46;

      v48 = [v16 objectForKeyedSubscript:@"InactivityDelayPreflight"];
      inactivityDelayPreflight = v20->_inactivityDelayPreflight;
      v20->_inactivityDelayPreflight = v48;

      v50 = [v16 objectForKeyedSubscript:@"AllowDowngrade"];
      allowDowngrade = v20->_allowDowngrade;
      v20->_allowDowngrade = v50;

      v52 = [v16 objectForKeyedSubscript:@"BootstrapDelay"];
      bootstrapDelay = v20->_bootstrapDelay;
      v20->_bootstrapDelay = v52;

      v54 = [v16 objectForKeyedSubscript:@"InactivityDelay"];
      inactivityDelay = v20->_inactivityDelay;
      v20->_inactivityDelay = v54;

      v56 = [v16 objectForKeyedSubscript:@"NetworkDelay"];
      networkDelay = v20->_networkDelay;
      v20->_networkDelay = v56;

      v58 = [v16 objectForKeyedSubscript:@"FeatureReportDelay"];
      featureReportDelay = v20->_featureReportDelay;
      v20->_featureReportDelay = v58;

      v60 = [v16 objectForKeyedSubscript:@"LoggingIdentifier"];
      loggingIdentifier = v20->_loggingIdentifier;
      v20->_loggingIdentifier = v60;

      v62 = [v16 objectForKeyedSubscript:@"CompatibilityVersion"];
      compatibilityVersion = v20->_compatibilityVersion;
      v20->_compatibilityVersion = v62;

      v64 = [v16 objectForKeyedSubscript:@"BatteryCheckHost"];
      batteryCheckHost = v20->_batteryCheckHost;
      v20->_batteryCheckHost = v64;

      v66 = [v16 objectForKeyedSubscript:@"BatteryCheckDevice"];
      batteryCheckDevice = v20->_batteryCheckDevice;
      v20->_batteryCheckDevice = v66;

      v68 = [v16 objectForKeyedSubscript:@"MinBatteryHost"];
      minBatteryHost = v20->_minBatteryHost;
      v20->_minBatteryHost = v68;

      v70 = [v16 objectForKeyedSubscript:@"MinBatteryDevice"];
      minBatteryDevice = v20->_minBatteryDevice;
      v20->_minBatteryDevice = v70;

      v72 = [v16 objectForKeyedSubscript:@"STFWFirst"];
      STFWFirst = v20->_STFWFirst;
      v20->_STFWFirst = v72;

      v74 = [v16 objectForKeyedSubscript:@"ResetEveryFWPayload"];
      resetEveryFWPayload = v20->_resetEveryFWPayload;
      v20->_resetEveryFWPayload = v74;

      v76 = [v16 objectForKeyedSubscript:@"NeedsBluetoothReconnect"];
      deviceNeedsBTReconnect = v20->_deviceNeedsBTReconnect;
      v20->_deviceNeedsBTReconnect = v76;

      v78 = [v16 objectForKeyedSubscript:@"SendSDPQueryNotification"];
      sendSDPQueryNotification = v20->_sendSDPQueryNotification;
      v20->_sendSDPQueryNotification = v78;

      v80 = [v16 objectForKeyedSubscript:@"BluetoothReconnectDelay"];
      btReconnectDelay = v20->_btReconnectDelay;
      v20->_btReconnectDelay = v80;

      btAddress = v20->_btAddress;
      v20->_btAddress = &stru_1000249B8;

      targetDevice = v20->_targetDevice;
      v20->_targetDevice = &stru_1000249B8;

      v20->_pmNotificationHandle = 0;
      v84 = [v16 objectForKeyedSubscript:@"FeatureReportDelay"];
      v85 = v20->_featureReportDelay;
      v20->_featureReportDelay = v84;

      v86 = [v16 objectForKeyedSubscript:@"ManifestCount"];
      manifestCount = v20->_manifestCount;
      v20->_manifestCount = v86;

      v88 = +[NSUserDefaults standardUserDefaults];
      v89 = [v88 objectForKey:@"FeatureReportDelay"];

      if (v89)
      {
        [v88 doubleForKey:@"FeatureReportDelay"];
        v90 = [NSNumber numberWithDouble:?];
        v91 = v20->_featureReportDelay;
        v20->_featureReportDelay = v90;
      }

      v92 = [v88 objectForKey:@"BootstrapDelay"];

      if (v92)
      {
        [v88 doubleForKey:@"BootstrapDelay"];
        v93 = [NSNumber numberWithDouble:?];
        v94 = v20->_bootstrapDelay;
        v20->_bootstrapDelay = v93;
      }

      v95 = [v88 objectForKey:@"InactivityDelay"];

      if (v95)
      {
        v96 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 integerForKey:@"InactivityDelay"]);
        v97 = v20->_inactivityDelay;
        v20->_inactivityDelay = v96;
      }

      v98 = [v88 objectForKey:@"NetworkDelay"];

      if (v98)
      {
        v99 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 integerForKey:@"NetworkDelay"]);
        v100 = v20->_networkDelay;
        v20->_networkDelay = v99;
      }

      v101 = [v88 objectForKey:@"MinBatteryHost"];

      if (v101)
      {
        v102 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 integerForKey:@"MinBatteryHost"]);
        v103 = v20->_minBatteryHost;
        v20->_minBatteryHost = v102;
      }

      v104 = [v88 objectForKey:@"MinBatteryDevice"];

      if (v104)
      {
        v105 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 integerForKey:@"MinBatteryDevice"]);
        v106 = v20->_minBatteryDevice;
        v20->_minBatteryDevice = v105;
      }

      v107 = [v88 objectForKey:@"ManifestCount"];

      if (v107)
      {
        v108 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 integerForKey:@"ManifestCount"]);
        v109 = v20->_manifestCount;
        v20->_manifestCount = v108;
      }

      abortUpdate = v20->_abortUpdate;
      v20->_abortUpdate = &__kCFBooleanFalse;

      v111 = [v88 stringForKey:@"TargetDevice"];
      if (v111)
      {
        path = [(NSURL *)v20->_firmwareDirectory path];
        v113 = [path hasSuffix:v111];

        if (v113)
        {
          v114 = v111;
          v115 = v20->_targetDevice;
          v20->_targetDevice = v114;
        }

        else
        {
          v116 = v20->_targetDevice;
          v20->_targetDevice = @"notTargetedDevice";

          v115 = v20->_abortUpdate;
          v20->_abortUpdate = &__kCFBooleanTrue;
        }
      }

      v117 = [v88 stringForKey:@"FirmwareDirectory"];
      if (v117)
      {
        v118 = [NSURL alloc];
        stringByStandardizingPath2 = [v117 stringByStandardizingPath];
        v120 = [v118 initFileURLWithPath:stringByStandardizingPath2 isDirectory:1];
        v121 = v20->_firmwareDirectory;
        v20->_firmwareDirectory = v120;
      }

      v122 = os_log_create("com.apple.StandaloneHIDFudPlugins", [(NSString *)v20->_loggingIdentifier UTF8String]);
      logHandle = v20->_logHandle;
      v20->_logHandle = v122;

      v124 = os_transaction_create();
      transaction = v20->_transaction;
      v20->_transaction = v124;

      v126 = [propertiesCopy objectForKeyedSubscript:@"DeviceClassName"];
      [(NSMutableDictionary *)v20->_pluginInfo setObject:v126 forKeyedSubscript:@"DeviceClassName"];

      [(NSMutableDictionary *)v20->_pluginInfo setObject:&off_100026B58 forKeyedSubscript:@"PrepareWeight"];
      [(NSMutableDictionary *)v20->_pluginInfo setObject:&off_100026B68 forKeyedSubscript:@"ApplyWeight"];
      [(NSMutableDictionary *)v20->_pluginInfo setObject:&off_100026B78 forKeyedSubscript:@"FinishWeight"];
      *infoCopy = v20->_pluginInfo;

      delegateCopy = v129;
      classCopy = v130;
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)errorDomain
{
  loggingIdentifier = [(SHFUPlugin *)self loggingIdentifier];
  v3 = [NSString stringWithFormat:@"%@.%@", @"com.apple.MobileAccessoryUpdater.StandaloneHIDFudPlugins", loggingIdentifier];

  return v3;
}

- (void)dealloc
{
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000145FC();
  }

  notificationIter = self->_notificationIter;
  if (notificationIter)
  {
    IOObjectRelease(notificationIter);
    self->_notificationIter = 0;
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
    self->_notificationPort = 0;
  }

  networkReachability = self->_networkReachability;
  if (networkReachability)
  {
    SCNetworkReachabilitySetCallback(networkReachability, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(self->_networkReachability, 0);
    CFRelease(self->_networkReachability);
    self->_networkReachability = 0;
  }

  networkStatus = self->_networkStatus;
  if (networkStatus)
  {
    dispatch_source_cancel(networkStatus);
    v7 = self->_networkStatus;
    self->_networkStatus = 0;
  }

  userInactivityStatus = self->_userInactivityStatus;
  if (userInactivityStatus)
  {
    dispatch_source_cancel(userInactivityStatus);
    v9 = self->_userInactivityStatus;
    self->_userInactivityStatus = 0;
  }

  if (self->_pmNotificationHandle)
  {
    IOPMUnregisterNotification();
    self->_pmNotificationHandle = 0;
  }

  v10.receiver = self;
  v10.super_class = SHFUPlugin;
  [(SHFUPlugin *)&v10 dealloc];
}

- (NSString)description
{
  versionCheckDelay = [(SHFUPlugin *)self versionCheckDelay];
  inactivityDelayPreflight = [(SHFUPlugin *)self inactivityDelayPreflight];
  allowDowngrade = [(SHFUPlugin *)self allowDowngrade];
  bootstrapDelay = [(SHFUPlugin *)self bootstrapDelay];
  inactivityDelay = [(SHFUPlugin *)self inactivityDelay];
  networkDelay = [(SHFUPlugin *)self networkDelay];
  featureReportDelay = [(SHFUPlugin *)self featureReportDelay];
  compatibilityVersion = [(SHFUPlugin *)self compatibilityVersion];
  batteryCheckHost = [(SHFUPlugin *)self batteryCheckHost];
  batteryCheckDevice = [(SHFUPlugin *)self batteryCheckDevice];
  minBatteryHost = [(SHFUPlugin *)self minBatteryHost];
  minBatteryDevice = [(SHFUPlugin *)self minBatteryDevice];
  sTFWFirst = [(SHFUPlugin *)self STFWFirst];
  resetEveryFWPayload = [(SHFUPlugin *)self resetEveryFWPayload];
  deviceNeedsBTReconnect = [(SHFUPlugin *)self deviceNeedsBTReconnect];
  sendSDPQueryNotification = [(SHFUPlugin *)self sendSDPQueryNotification];
  btReconnectDelay = [(SHFUPlugin *)self btReconnectDelay];
  targetDevice = [(SHFUPlugin *)self targetDevice];
  abortUpdate = [(SHFUPlugin *)self abortUpdate];
  v10 = [NSString stringWithFormat:@"FW update policy: %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@", @"VersionCheckDelay", versionCheckDelay, @"InactivityDelayPreflight", inactivityDelayPreflight, @"AllowDowngrade", allowDowngrade, @"BootstrapDelay", bootstrapDelay, @"InactivityDelay", inactivityDelay, @"NetworkDelay", networkDelay, @"FeatureReportDelay", featureReportDelay, @"CompatibilityVersion", compatibilityVersion, @"BatteryCheckHost", batteryCheckHost, @"BatteryCheckDevice", batteryCheckDevice, @"MinBatteryHost", minBatteryHost, @"MinBatteryDevice", minBatteryDevice, @"STFWFirst", sTFWFirst, @"ResetEveryFWPayload", resetEveryFWPayload, @"NeedsBluetoothReconnect", deviceNeedsBTReconnect, @"SendSDPQueryNotification", sendSDPQueryNotification, @"BluetoothReconnectDelay", btReconnectDelay, @"TargetDevice", targetDevice, @"AbortUpdate", abortUpdate];

  return v10;
}

- (void)logIORegistryEntry:(id)entry
{
  entryCopy = entry;
  if (entryCopy)
  {
    logHandle = [(SHFUPlugin *)self logHandle];
    v6 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = IORegistryEntryIDMatching([entryCopy unsignedLongLongValue]);
      existing = 0;
      if (!IOServiceGetMatchingServices(kIOMasterPortDefault, v7, &existing))
      {
        v8 = IOIteratorNext(existing);
        if (v8)
        {
          v9 = v8;
          do
          {
            properties = 0;
            Default = CFAllocatorGetDefault();
            if (!IORegistryEntryCreateCFProperties(v9, &properties, Default, 0))
            {
              v11 = properties;
              if (properties)
              {
                [(__CFDictionary *)properties removeObjectForKey:@"Elements"];
                logHandle2 = [(SHFUPlugin *)self logHandle];
                if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
                {
                  unsignedLongLongValue = [entryCopy unsignedLongLongValue];
                  *buf = 134218242;
                  v17 = unsignedLongLongValue;
                  v18 = 2112;
                  v19 = v11;
                  _os_log_debug_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEBUG, "IORegistryEntry ID 0x%016llX properties: %@", buf, 0x16u);
                }
              }
            }

            IOObjectRelease(v9);
            v9 = IOIteratorNext(existing);
          }

          while (v9);
        }

        IOObjectRelease(existing);
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100014638();
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (BOOL)hostBatteryOnACPower
{
  hostPowerSource = [(SHFUPlugin *)self hostPowerSource];
  v3 = [hostPowerSource objectForKeyedSubscript:@"Power Source State"];

  LOBYTE(hostPowerSource) = [v3 isEqualToString:@"AC Power"];
  return hostPowerSource;
}

- (int)hostBatteryCapacity
{
  hostPowerSource = [(SHFUPlugin *)self hostPowerSource];
  v3 = [hostPowerSource objectForKeyedSubscript:@"Current Capacity"];

  LODWORD(hostPowerSource) = [v3 intValue];
  return hostPowerSource;
}

- (NSDictionary)hostPowerSource
{
  hostPowerSource = self->_hostPowerSource;
  if (!hostPowerSource)
  {
    v4 = IOPSCopyPowerSourcesByType();
    if (v4)
    {
      v5 = v4;
      v6 = IOPSCopyPowerSourcesList(v4);
      if (v6)
      {
        v7 = v6;
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
            if (ValueAtIndex)
            {
              v12 = IOPSGetPowerSourceDescription(v5, ValueAtIndex);
              if (v12)
              {
                v13 = [NSDictionary dictionaryWithDictionary:v12];
                v14 = self->_hostPowerSource;
                self->_hostPowerSource = v13;
              }
            }
          }
        }

        CFRelease(v7);
      }

      CFRelease(v5);
    }

    hostPowerSource = self->_hostPowerSource;
  }

  v15 = hostPowerSource;

  return v15;
}

- (void)verifyHostBattery
{
  batteryCheckHost = [(SHFUPlugin *)self batteryCheckHost];
  if ([batteryCheckHost BOOLValue])
  {
    hostBatteryCapacity = [(SHFUPlugin *)self hostBatteryCapacity];
    minBatteryHost = [(SHFUPlugin *)self minBatteryHost];
    intValue = [minBatteryHost intValue];

    if (hostBatteryCapacity < intValue)
    {
      logHandle = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        hostBatteryCapacity2 = [(SHFUPlugin *)self hostBatteryCapacity];
        minBatteryHost2 = [(SHFUPlugin *)self minBatteryHost];
        *buf = 67109376;
        *v40 = hostBatteryCapacity2;
        *&v40[4] = 1024;
        *&v40[6] = [minBatteryHost2 intValue];
        _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Host battery %d%% is below minimum %d%%", buf, 0xEu);
      }

      objc_initWeak(&location, self);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100002D54;
      v36[3] = &unk_1000245A8;
      objc_copyWeak(&v37, &location);
      v36[4] = self;
      v10 = objc_retainBlock(v36);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100002EA0;
      v34[3] = &unk_1000245D0;
      objc_copyWeak(&v35, &location);
      v11 = objc_retainBlock(v34);
      if ([(SHFUPlugin *)self hostBatteryOnACPower])
      {
        logHandle2 = [(SHFUPlugin *)self logHandle];
        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v40 = 3600;
          _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Host battery on AC power. Wait %llu seconds for battery level to reach minimum.", buf, 0xCu);
        }

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100002F4C;
        v30[3] = &unk_1000245F8;
        objc_copyWeak(&v33, &location);
        v13 = v11;
        v31 = v13;
        v14 = v10;
        v32 = v14;
        v15 = objc_retainBlock(v30);
        serialQueue = [(SHFUPlugin *)self serialQueue];
        v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, serialQueue);
        [(SHFUPlugin *)self setBatteryTimer:v17];

        batteryTimer = [(SHFUPlugin *)self batteryTimer];

        if (batteryTimer)
        {
          batteryTimer2 = [(SHFUPlugin *)self batteryTimer];
          v20 = dispatch_time(0, 3600000000000);
          dispatch_source_set_timer(batteryTimer2, v20, 0x34630B8A000uLL, 0x12A05F200uLL);

          batteryTimer3 = [(SHFUPlugin *)self batteryTimer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1000030BC;
          handler[3] = &unk_100024620;
          objc_copyWeak(&v29, &location);
          v26 = v15;
          v27 = v13;
          v28 = v14;
          dispatch_source_set_event_handler(batteryTimer3, handler);

          batteryTimer4 = [(SHFUPlugin *)self batteryTimer];
          dispatch_activate(batteryTimer4);

          objc_destroyWeak(&v29);
        }

        serialQueue2 = [(SHFUPlugin *)self serialQueue];
        v24 = notify_register_dispatch("com.apple.system.powersources.percent", &self->_batteryToken, serialQueue2, v15);

        if (v24)
        {
          v13[2](v13);
          v14[2](v14);
        }

        else
        {
          (v15[2])(v15, [(SHFUPlugin *)self batteryToken]);
        }

        objc_destroyWeak(&v33);
      }

      else
      {
        (v10[2])(v10);
      }

      objc_destroyWeak(&v35);
      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
      return;
    }
  }

  else
  {
  }

  [(SHFUPlugin *)self executeNextBootstrapAction];
}

- (id)verifyDeviceBattery
{
  batteryCheckDevice = [(SHFUPlugin *)self batteryCheckDevice];
  bOOLValue = [batteryCheckDevice BOOLValue];

  if (!bOOLValue)
  {
    v13 = 0;
    goto LABEL_22;
  }

  delegate = [(SHFUPlugin *)self delegate];
  batteryCheckDevice2 = [(SHFUPlugin *)self batteryCheckDevice];
  bOOLValue2 = [batteryCheckDevice2 BOOLValue];
  logHandle = [(SHFUPlugin *)self logHandle];
  options = [(SHFUPlugin *)self options];
  v10 = [options objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  errorDomain = [(SHFUPlugin *)self errorDomain];
  v40 = 0;
  v12 = [SHFUDevice getDevices:delegate hasPowerSource:bOOLValue2 logHandle:logHandle registryEntryID:v10 errorDomain:errorDomain error:&v40];
  v13 = v40;

  if (v13)
  {
    goto LABEL_21;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (!v15)
  {
    v13 = v14;
    goto LABEL_20;
  }

  v16 = v15;
  v33 = v12;
  v13 = 0;
  v34 = 0;
  v17 = *v37;
  obj = v14;
  do
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v37 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v36 + 1) + 8 * i);
      powerSource = [v19 powerSource];

      if (!powerSource)
      {
        v26 = [NSString stringWithFormat:@"No power source for device %@", v19];
        v30 = [NSError alloc];
        errorDomain2 = [(SHFUPlugin *)self errorDomain];
        v43 = NSLocalizedDescriptionKey;
        v44 = v26;
        v31 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v29 = [v30 initWithDomain:errorDomain2 code:58 userInfo:v31];

        v13 = v31;
        goto LABEL_12;
      }

      batteryCapacity = [v19 batteryCapacity];
      minBatteryDevice = [(SHFUPlugin *)self minBatteryDevice];
      intValue = [minBatteryDevice intValue];

      if (batteryCapacity < intValue)
      {
        batteryCapacity2 = [v19 batteryCapacity];
        minBatteryDevice2 = [(SHFUPlugin *)self minBatteryDevice];
        v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Low battery %d%% below minimum %d%% for device %@", batteryCapacity2, [minBatteryDevice2 intValue], v19);

        v27 = [NSError alloc];
        v41 = NSLocalizedDescriptionKey;
        v42 = v26;
        errorDomain2 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v29 = [v27 initWithDomain:@"com.apple.MobileAccessoryUpdater.ErrorDomain" code:-1 userInfo:errorDomain2];
LABEL_12:

        v13 = v29;
        continue;
      }

      v34 = 1;
    }

    v16 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  }

  while (v16);

  v12 = v33;
  if (v34)
  {
LABEL_20:

    v13 = 0;
  }

LABEL_21:

LABEL_22:

  return v13;
}

- (void)btSessionArrived
{
  btSessionSemaphore = [(SHFUPlugin *)self btSessionSemaphore];
  dispatch_semaphore_signal(btSessionSemaphore);
}

- (void)setupBTSession
{
  serialQueue = [(SHFUPlugin *)self serialQueue];
  v4 = BTSessionAttachWithQueue();

  if (v4)
  {
    logHandle = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1000146A8();
    }
  }
}

- (void)waitForBTSession
{
  v3 = dispatch_semaphore_create(0);
  [(SHFUPlugin *)self setBtSessionSemaphore:v3];

  [(SHFUPlugin *)self setupBTSession];
  v4 = dispatch_time(0, 10000000000);
  btSessionSemaphore = [(SHFUPlugin *)self btSessionSemaphore];
  v6 = dispatch_semaphore_wait(btSessionSemaphore, v4);

  if (v6)
  {
    logHandle = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100014718();
    }
  }
}

- (BOOL)reconnectDeviceToHost
{
  objc_initWeak(&location, self);
  deviceNeedsBTReconnect = [(SHFUPlugin *)self deviceNeedsBTReconnect];
  if (![deviceNeedsBTReconnect BOOLValue])
  {
    goto LABEL_10;
  }

  btAddress = [(SHFUPlugin *)self btAddress];
  v5 = [btAddress length] == 0;

  if (!v5)
  {
    if ([(SHFUPlugin *)self btSession])
    {
      btReconnectDelay = [(SHFUPlugin *)self btReconnectDelay];
      [btReconnectDelay doubleValue];
      deviceNeedsBTReconnect = [NSDate dateWithTimeIntervalSinceNow:?];

      logHandle = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = deviceNeedsBTReconnect;
        _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Reconnect device at %@", buf, 0xCu);
      }

      btReconnectDelay2 = [(SHFUPlugin *)self btReconnectDelay];
      [btReconnectDelay2 doubleValue];
      v10 = dispatch_time(0, (v9 * 1000000000.0));
      serialQueue = [(SHFUPlugin *)self serialQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000039A8;
      v14[3] = &unk_1000245D0;
      objc_copyWeak(&v15, &location);
      dispatch_after(v10, serialQueue, v14);

      objc_destroyWeak(&v15);
      v12 = 1;
      goto LABEL_11;
    }

    deviceNeedsBTReconnect = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(deviceNeedsBTReconnect, OS_LOG_TYPE_ERROR))
    {
      sub_100014754();
    }

LABEL_10:
    v12 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:
  objc_destroyWeak(&location);
  return v12;
}

- (void)delayBootstrap
{
  bootstrapDelay = [(SHFUPlugin *)self bootstrapDelay];
  intValue = [bootstrapDelay intValue];

  if (intValue < 1)
  {

    [(SHFUPlugin *)self executeNextBootstrapAction];
  }

  else
  {
    serialQueue = [(SHFUPlugin *)self serialQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, serialQueue);
    [(SHFUPlugin *)self setDelayBootstrapSource:v6];

    delayBootstrapSource = [(SHFUPlugin *)self delayBootstrapSource];

    if (delayBootstrapSource)
    {
      delayBootstrapSource2 = [(SHFUPlugin *)self delayBootstrapSource];
      bootstrapDelay2 = [(SHFUPlugin *)self bootstrapDelay];
      v10 = dispatch_time(0, 1000000000 * [bootstrapDelay2 intValue]);
      bootstrapDelay3 = [(SHFUPlugin *)self bootstrapDelay];
      dispatch_source_set_timer(delayBootstrapSource2, v10, 1000000000 * [bootstrapDelay3 intValue], 0xEE6B280uLL);

      objc_initWeak(&location, self);
      delayBootstrapSource3 = [(SHFUPlugin *)self delayBootstrapSource];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100003DCC;
      v20 = &unk_1000245D0;
      objc_copyWeak(&v21, &location);
      dispatch_source_set_event_handler(delayBootstrapSource3, &v17);

      v13 = [(SHFUPlugin *)self delayBootstrapSource:v17];
      dispatch_activate(v13);

      logHandle = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        bootstrapDelay4 = [(SHFUPlugin *)self bootstrapDelay];
        intValue2 = [bootstrapDelay4 intValue];
        *buf = 67109120;
        v24 = intValue2;
        _os_log_debug_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "Delay bootstrap for %d seconds", buf, 8u);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

- (BOOL)hostConnectedToNetwork
{
  address = xmmword_1000204E0;
  v3 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
  if (v3)
  {
    v4 = v3;
    v9 = 0;
    if (SCNetworkReachabilityGetFlags(v3, &v9))
    {
      v5 = (v9 >> 1) & 1;
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v7 = "NOT ";
    if (v5)
    {
      v7 = "";
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "%sconnected to the network", &v9, 0xCu);
  }

  return v5;
}

- (void)checkNetworkReachability:(unsigned int)reachability
{
  reachabilityCopy = reachability;
  networkReachability = [(SHFUPlugin *)self networkReachability];
  if ((reachabilityCopy & 2) != 0 && networkReachability)
  {
    logHandle = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Network connection established", buf, 2u);
    }

    networkStatus = [(SHFUPlugin *)self networkStatus];

    if (networkStatus)
    {
      networkStatus2 = [(SHFUPlugin *)self networkStatus];
      dispatch_source_cancel(networkStatus2);

      [(SHFUPlugin *)self setNetworkStatus:0];
    }

    SCNetworkReachabilitySetCallback([(SHFUPlugin *)self networkReachability], 0, 0);
    SCNetworkReachabilitySetDispatchQueue([(SHFUPlugin *)self networkReachability], 0);
    CFRelease([(SHFUPlugin *)self networkReachability]);
    [(SHFUPlugin *)self setNetworkReachability:0];
    objc_initWeak(buf, self);
    v9 = dispatch_time(0, 10000000000);
    serialQueue = [(SHFUPlugin *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004138;
    block[3] = &unk_1000245D0;
    objc_copyWeak(&v12, buf);
    dispatch_after(v9, serialQueue, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)waitForNetwork
{
  address = xmmword_1000204E0;
  [(SHFUPlugin *)self setNetworkReachability:SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address)];
  if ([(SHFUPlugin *)self networkReachability])
  {
    networkReachability = [(SHFUPlugin *)self networkReachability];
    serialQueue = [(SHFUPlugin *)self serialQueue];
    LODWORD(networkReachability) = SCNetworkReachabilitySetDispatchQueue(networkReachability, serialQueue);

    if (networkReachability)
    {
      logHandle = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        networkDelay = [(SHFUPlugin *)self networkDelay];
        LODWORD(buf.version) = 67109120;
        HIDWORD(buf.version) = [networkDelay intValue];
        _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Will wait %d seconds for a network connection", &buf, 8u);
      }

      serialQueue2 = [(SHFUPlugin *)self serialQueue];
      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, serialQueue2);
      [(SHFUPlugin *)self setNetworkStatus:v8];

      networkStatus = [(SHFUPlugin *)self networkStatus];

      if (networkStatus)
      {
        networkStatus2 = [(SHFUPlugin *)self networkStatus];
        networkDelay2 = [(SHFUPlugin *)self networkDelay];
        v12 = dispatch_time(0, 1000000000 * [networkDelay2 intValue]);
        networkDelay3 = [(SHFUPlugin *)self networkDelay];
        dispatch_source_set_timer(networkStatus2, v12, 1000000000 * [networkDelay3 intValue], 0x12A05F200uLL);

        objc_initWeak(&location, self);
        networkStatus3 = [(SHFUPlugin *)self networkStatus];
        v16 = _NSConcreteStackBlock;
        v17 = 3221225472;
        v18 = sub_100004490;
        v19 = &unk_1000245D0;
        objc_copyWeak(&v20, &location);
        dispatch_source_set_event_handler(networkStatus3, &v16);

        v15 = [(SHFUPlugin *)self networkStatus:v16];
        dispatch_activate(v15);

        buf.version = 0;
        memset(&buf.retain, 0, 24);
        buf.info = self;
        SCNetworkReachabilitySetCallback([(SHFUPlugin *)self networkReachability], sub_1000045F4, &buf);
        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)executeNextBootstrapAction
{
  error = [(SHFUPlugin *)self error];

  if (error)
  {
    logHandle = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      targetDevice = [(SHFUPlugin *)self targetDevice];
      error2 = [(SHFUPlugin *)self error];
      *buf = 138412802;
      v16 = targetDevice;
      v17 = 1024;
      v18 = 0;
      v19 = 2112;
      v20 = error2;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "bootstrap: target device %@ successful %d error %@", buf, 0x1Cu);
    }

    delegate = [(SHFUPlugin *)self delegate];
    pluginInfo = [(SHFUPlugin *)self pluginInfo];
    error3 = [(SHFUPlugin *)self error];
    [delegate didBootstrap:0 info:pluginInfo error:error3];

    [(SHFUPlugin *)self setSerialQueue:0];
    [(SHFUPlugin *)self setTransaction:0];
  }

  else if ([(NSMutableArray *)self->_bootstrapActions count])
  {
    v14 = [(NSMutableArray *)self->_bootstrapActions objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_bootstrapActions removeObjectAtIndex:0];
    v14[2]();
  }

  else
  {
    logHandle2 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      targetDevice2 = [(SHFUPlugin *)self targetDevice];
      *buf = 138412802;
      v16 = targetDevice2;
      v17 = 1024;
      v18 = 1;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "bootstrap: target device %@ successful %d error %@", buf, 0x1Cu);
    }

    delegate2 = [(SHFUPlugin *)self delegate];
    pluginInfo2 = [(SHFUPlugin *)self pluginInfo];
    [delegate2 didBootstrap:1 info:pluginInfo2 error:0];
  }
}

- (void)bootstrapWithOptions:(id)options
{
  optionsCopy = options;
  val = self;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000149AC();
  }

  objc_initWeak(&location, val);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100004E04;
  v41[3] = &unk_1000245D0;
  objc_copyWeak(&v42, &location);
  v25 = objc_retainBlock(v41);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100005008;
  v39[3] = &unk_1000245D0;
  objc_copyWeak(&v40, &location);
  v24 = objc_retainBlock(v39);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10000504C;
  v37[3] = &unk_1000245D0;
  objc_copyWeak(&v38, &location);
  v23 = objc_retainBlock(v37);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000052C8;
  v35[3] = &unk_1000245D0;
  objc_copyWeak(&v36, &location);
  v22 = objc_retainBlock(v35);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100005518;
  v33[3] = &unk_1000245D0;
  objc_copyWeak(&v34, &location);
  v21 = objc_retainBlock(v33);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000555C;
  v31[3] = &unk_1000245D0;
  objc_copyWeak(&v32, &location);
  v20 = objc_retainBlock(v31);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000055C8;
  v29[3] = &unk_1000245D0;
  objc_copyWeak(&v30, &location);
  v19 = objc_retainBlock(v29);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100005654;
  v27[3] = &unk_1000245D0;
  objc_copyWeak(&v28, &location);
  v18 = objc_retainBlock(v27);
  v5 = [NSMutableArray alloc];
  v6 = objc_retainBlock(v25);
  v44[0] = v6;
  v7 = objc_retainBlock(v24);
  v44[1] = v7;
  v8 = objc_retainBlock(v23);
  v44[2] = v8;
  v9 = objc_retainBlock(v22);
  v44[3] = v9;
  v10 = objc_retainBlock(v21);
  v44[4] = v10;
  v11 = objc_retainBlock(v20);
  v44[5] = v11;
  v12 = objc_retainBlock(v19);
  v44[6] = v12;
  v13 = objc_retainBlock(v18);
  v44[7] = v13;
  v14 = [NSArray arrayWithObjects:v44 count:8];
  v15 = [v5 initWithArray:v14];
  bootstrapActions = val->_bootstrapActions;
  val->_bootstrapActions = v15;

  [(SHFUPlugin *)val executeNextBootstrapAction];
  objc_destroyWeak(&v28);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100014A1C(stateCopy);
  }

  if ([stateCopy state] == 5)
  {
    logHandle2 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_100014A9C();
    }

    [(SHFUPlugin *)self setBluetoothPoweredOn:1];
  }
}

- (void)tagForBluetoothGATTServicesDiscovery
{
  centralManager = [(SHFUPlugin *)self centralManager];
  v4 = [centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 138412546;
    v14 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        logHandle = [(SHFUPlugin *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Found Bluetooth peripheral %@", buf, 0xCu);
        }

        if ([(__CFString *)v11 hasTag:@"BluetoothTVRemote"])
        {
          logHandle2 = [(SHFUPlugin *)self logHandle];
          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = @"BluetoothTVRemote";
            v21 = 2112;
            v22 = @"_FORCE_GATT_SERVICES_DISCOVERY_";
            _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Found Bluetooth peripheral with tag %@. Setting tag %@", buf, 0x16u);
          }

          [(__CFString *)v11 tag:@"_FORCE_GATT_SERVICES_DISCOVERY_"];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v8);
  }
}

- (BOOL)deviceNeedsUpdate:(id)update
{
  updateCopy = update;
  latestFirmwareVersions = [(SHFUPlugin *)self latestFirmwareVersions];
  v6 = [updateCopy hardwareVersionSupportedBy:latestFirmwareVersions];

  if (!v6)
  {
    logHandle = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100014AD8();
    }

LABEL_7:

    goto LABEL_8;
  }

  allowDowngrade = [(SHFUPlugin *)self allowDowngrade];
  bOOLValue = [allowDowngrade BOOLValue];

  latestFirmwareVersions2 = [(SHFUPlugin *)self latestFirmwareVersions];
  if (!bOOLValue)
  {
    v13 = [updateCopy firmwareVersionsOlderThan:latestFirmwareVersions2];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v10 = [updateCopy firmwareVersionsEqualTo:latestFirmwareVersions2];

  if (v10)
  {
LABEL_10:
    if (!+[SHFUDevice ignoreVersionCheck])
    {
      LOBYTE(v6) = 0;
      goto LABEL_8;
    }

    logHandle = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Updating firmware due to preference telling us to ignore the FW version check.", v14, 2u);
    }

    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v6) = 1;
LABEL_8:

  return v6;
}

- (id)getParsersForHWRevID:(id)d
{
  dCopy = d;
  parsers = [(SHFUPlugin *)self parsers];
  v6 = [parsers objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    parsers2 = [(SHFUPlugin *)self parsers];
    v6 = [parsers2 objectForKeyedSubscript:&off_1000269A0];
  }

  return v6;
}

- (unint64_t)getTotalPrepareBytes:(id)bytes
{
  bytesCopy = bytes;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [bytesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(bytesCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (-[SHFUPlugin deviceNeedsUpdate:](self, "deviceNeedsUpdate:", v10) && [v10 hardwareVersion])
        {
          v11 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v10 hardwareVersion]);
          v12 = [(SHFUPlugin *)self getParsersForHWRevID:v11];

          v7 += [v10 getTotalFirmwareBytes:v12];
        }
      }

      v6 = [bytesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createPowerAssertion
{
  v3 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.StandaloneHIDFudPlugins.FirmwareUpdate", &self->_powerAssertionID);
  logHandle = [(SHFUPlugin *)self logHandle];
  v5 = logHandle;
  if (v3)
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100014B14();
    }
  }

  else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100014B84();
  }
}

- (void)releasePowerAssertion
{
  if ([(SHFUPlugin *)self powerAssertionID])
  {
    v3 = IOPMAssertionRelease([(SHFUPlugin *)self powerAssertionID]);
    logHandle = [(SHFUPlugin *)self logHandle];
    v5 = logHandle;
    if (v3)
    {
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100014BC0();
      }
    }

    else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_100014C30();
    }

    [(SHFUPlugin *)self setPowerAssertionID:0];
  }
}

- (void)waitForUserInactivity:(int)inactivity withOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  serialQueue = [(SHFUPlugin *)self serialQueue];
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, serialQueue);
  [(SHFUPlugin *)self setUserInactivityStatus:v8];

  userInactivityStatus = [(SHFUPlugin *)self userInactivityStatus];

  if (userInactivityStatus)
  {
    userInactivityStatus2 = [(SHFUPlugin *)self userInactivityStatus];
    v11 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(userInactivityStatus2, v11, 0xDF8475800uLL, 0x1DCD6500uLL);

    userInactivityStatus3 = [(SHFUPlugin *)self userInactivityStatus];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006370;
    handler[3] = &unk_1000245D0;
    objc_copyWeak(&v25, &location);
    dispatch_source_set_event_handler(userInactivityStatus3, handler);

    userInactivityStatus4 = [(SHFUPlugin *)self userInactivityStatus];
    dispatch_activate(userInactivityStatus4);

    objc_destroyWeak(&v25);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_100006448;
  v22[4] = sub_100006474;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000647C;
  v18[3] = &unk_100024648;
  objc_copyWeak(&v20, &location);
  inactivityCopy = inactivity;
  v14 = optionsCopy;
  v19 = v14;
  v23 = objc_retainBlock(v18);
  serialQueue2 = [(SHFUPlugin *)self serialQueue];
  inactivityDelay = [(SHFUPlugin *)self inactivityDelay];
  [inactivityDelay intValue];
  objc_copyWeak(&v17, &location);
  [(SHFUPlugin *)self setPmNotificationHandle:IOPMScheduleUserActivityLevelNotificationWithTimeout()];

  objc_destroyWeak(&v17);
  _Block_object_dispose(v22, 8);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)prepareFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000149AC();
  }

  [(SHFUPlugin *)self createPowerAssertion];
  inactivityDelayPreflight = [(SHFUPlugin *)self inactivityDelayPreflight];
  if (([inactivityDelayPreflight BOOLValue] & 1) == 0)
  {

    goto LABEL_7;
  }

  inactivityDelay = [(SHFUPlugin *)self inactivityDelay];
  intValue = [inactivityDelay intValue];

  if (intValue < 1)
  {
LABEL_7:
    [(SHFUPlugin *)self sendFirmwareToDeviceWithOptions:optionsCopy];
    goto LABEL_8;
  }

  [(SHFUPlugin *)self waitForUserInactivity:0 withOptions:optionsCopy];
LABEL_8:
}

- (void)sendFirmwareToDeviceWithOptions:(id)options
{
  optionsCopy = options;
  firmwareDirectory = [(SHFUPlugin *)self firmwareDirectory];
  logHandle = [(SHFUPlugin *)self logHandle];
  productID = [(SHFUPlugin *)self productID];
  equivalentPIDs = [(SHFUPlugin *)self equivalentPIDs];
  errorDomain = [(SHFUPlugin *)self errorDomain];
  sTFWFirst = [(SHFUPlugin *)self STFWFirst];
  parsers = [(SHFUPlugin *)self parsers];
  v11 = [AUFileParser loadParsersFromFWDirectory:firmwareDirectory logHandle:logHandle productID:productID equivalentPIDs:equivalentPIDs errorDomain:errorDomain STFWFirst:sTFWFirst parsers:parsers];

  if (v11)
  {
    v12 = 0;
    selfCopy3 = self;
LABEL_5:
    [(SHFUPlugin *)selfCopy3 setTransaction:0];
    [(SHFUPlugin *)selfCopy3 setSerialQueue:0];
    [(SHFUPlugin *)selfCopy3 setError:v11];
    [(SHFUPlugin *)selfCopy3 releasePowerAssertion];
    v22 = 0;
    goto LABEL_6;
  }

  delegate = [(SHFUPlugin *)self delegate];
  batteryCheckDevice = [(SHFUPlugin *)self batteryCheckDevice];
  bOOLValue = [batteryCheckDevice BOOLValue];
  logHandle2 = [(SHFUPlugin *)self logHandle];
  options = [(SHFUPlugin *)self options];
  v19 = [options objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  errorDomain2 = [(SHFUPlugin *)self errorDomain];
  v73 = 0;
  v21 = [SHFUDevice getDevices:delegate hasPowerSource:bOOLValue logHandle:logHandle2 registryEntryID:v19 errorDomain:errorDomain2 error:&v73];
  v11 = v73;

  if (v11)
  {
    selfCopy3 = self;
    v12 = v21;
    goto LABEL_5;
  }

  v66 = [(SHFUPlugin *)self getTotalPrepareBytes:v21];
  *buf = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v12 = v21;
  v27 = [v12 countByEnumeratingWithState:&v69 objects:v83 count:16];
  selfCopy3 = self;
  if (!v27)
  {

    v11 = 0;
    goto LABEL_5;
  }

  v28 = v27;
  v11 = 0;
  v62 = 0;
  v29 = *v70;
  v30 = &selRef_errorDomain;
  v61 = v12;
  v67 = *v70;
  do
  {
    v31 = 0;
    v68 = v28;
    do
    {
      if (*v70 != v29)
      {
        objc_enumerationMutation(v12);
      }

      v32 = *(*(&v69 + 1) + 8 * v31);
      if ([(SHFUPlugin *)selfCopy3 deviceNeedsUpdate:v32])
      {
        deviceNeedsBTReconnect = [(SHFUPlugin *)selfCopy3 deviceNeedsBTReconnect];
        bOOLValue2 = [deviceNeedsBTReconnect BOOLValue];

        if (!bOOLValue2)
        {
          goto LABEL_41;
        }

        [(SHFUPlugin *)selfCopy3 waitForBTSession];
        if ([(SHFUPlugin *)selfCopy3 btSession])
        {
          goto LABEL_41;
        }

        v51 = [NSString stringWithFormat:@"Bluetooth Session not found for device %@", v32];
        v52 = [NSError alloc];
        errorDomain3 = [(SHFUPlugin *)selfCopy3 errorDomain];
        v81 = NSLocalizedDescriptionKey;
        v82 = v51;
        v54 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v46 = [v52 initWithDomain:errorDomain3 code:34 userInfo:v54];

        v62 = 0;
        if (!v46)
        {
LABEL_41:
          if ([v32 hardwareVersion])
          {
            goto LABEL_42;
          }

          v47 = [NSString stringWithFormat:@"No hardware revision ID for device %@", v32];
          v48 = [NSError alloc];
          errorDomain4 = [(SHFUPlugin *)selfCopy3 errorDomain];
          v79 = NSLocalizedDescriptionKey;
          v80 = v47;
          v50 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v46 = [v48 initWithDomain:errorDomain4 code:9 userInfo:v50];

          if (!v46)
          {
LABEL_42:
            v35 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v32 hardwareVersion]);
            v36 = [(SHFUPlugin *)selfCopy3 getParsersForHWRevID:v35];

            resetEveryFWPayload = [(SHFUPlugin *)selfCopy3 resetEveryFWPayload];
            bOOLValue3 = [resetEveryFWPayload BOOLValue];

            if (bOOLValue3)
            {
              v63 = v30 + 371;
              vendorID = [(SHFUPlugin *)selfCopy3 vendorID];
              productID2 = [(SHFUPlugin *)selfCopy3 productID];
              batteryCheckDevice2 = [(SHFUPlugin *)selfCopy3 batteryCheckDevice];
              v65 = v11;
              bOOLValue4 = [batteryCheckDevice2 BOOLValue];
              featureReportDelay = [(SHFUPlugin *)selfCopy3 featureReportDelay];
              logHandle3 = [(SHFUPlugin *)selfCopy3 logHandle];
              delegate2 = [(SHFUPlugin *)selfCopy3 delegate];
              errorDomain5 = [(SHFUPlugin *)selfCopy3 errorDomain];
              v46 = [v63 sendAllFirmwaresToDeviceWithVendorID:vendorID productID:productID2 hasPowerSource:bOOLValue4 parsers:v36 totalPrepareBytes:v66 bytesSent:buf featureReportDelay:featureReportDelay logHandle:logHandle3 pluginDelegate:delegate2 errorDomain:errorDomain5];

              v30 = &selRef_errorDomain;
              v11 = v65;

              v12 = v61;
            }

            else
            {
              vendorID = [(SHFUPlugin *)selfCopy3 featureReportDelay];
              v46 = [v32 sendAllFirmwaresToDevice:v36 totalPrepareBytes:v66 bytesSent:buf featureReportDelay:vendorID];
            }

            if (!v46)
            {
              v62 = 1;
LABEL_33:
              v29 = v67;
              v28 = v68;
              goto LABEL_34;
            }
          }
        }

        verifyDeviceBattery = [(SHFUPlugin *)selfCopy3 verifyDeviceBattery];
        v56 = verifyDeviceBattery;
        if (verifyDeviceBattery)
        {
          domain = [verifyDeviceBattery domain];
          if ([domain isEqualToString:@"com.apple.MobileAccessoryUpdater.ErrorDomain"])
          {
            code = [v56 code];

            if (code != -1)
            {
              v30 = &selRef_errorDomain;
              goto LABEL_32;
            }

            domain = v46;
            v46 = v56;
            v30 = &selRef_errorDomain;
          }
        }

LABEL_32:

        v59 = v46;
        v11 = v59;
        goto LABEL_33;
      }

LABEL_34:
      v31 = v31 + 1;
    }

    while (v28 != v31);
    v28 = [v12 countByEnumeratingWithState:&v69 objects:v83 count:16];
  }

  while (v28);

  if ((v62 & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = 0;
  v22 = 1;
LABEL_6:
  logHandle4 = [(SHFUPlugin *)selfCopy3 logHandle];
  if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
  {
    targetDevice = [(SHFUPlugin *)selfCopy3 targetDevice];
    *buf = 138412802;
    *&buf[4] = targetDevice;
    v75 = 1024;
    v76 = v22;
    v77 = 2112;
    v78 = v11;
    _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "prepareFirmware: target device %@ successful %d error %@", buf, 0x1Cu);
  }

  delegate3 = [(SHFUPlugin *)selfCopy3 delegate];
  pluginInfo = [(SHFUPlugin *)selfCopy3 pluginInfo];
  [delegate3 didPrepare:v22 info:pluginInfo error:v11];
}

- (void)applyFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000149AC();
  }

  resetEveryFWPayload = [(SHFUPlugin *)self resetEveryFWPayload];
  bOOLValue = [resetEveryFWPayload BOOLValue];

  if (!bOOLValue)
  {
    inactivityDelayPreflight = [(SHFUPlugin *)self inactivityDelayPreflight];
    if ([inactivityDelayPreflight BOOLValue])
    {
    }

    else
    {
      inactivityDelay = [(SHFUPlugin *)self inactivityDelay];
      intValue = [inactivityDelay intValue];

      if (intValue >= 1)
      {
        [(SHFUPlugin *)self waitForUserInactivity:1 withOptions:optionsCopy];
        goto LABEL_12;
      }
    }

    [(SHFUPlugin *)self commitFirmwareWithOptions:optionsCopy];
    goto LABEL_12;
  }

  [(SHFUPlugin *)self reconnectDeviceToHost];
  delegate = [(SHFUPlugin *)self delegate];
  [delegate progress:100.0];

  logHandle2 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    targetDevice = [(SHFUPlugin *)self targetDevice];
    v16 = 138412802;
    v17 = targetDevice;
    v18 = 1024;
    v19 = 1;
    v20 = 2112;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "applyFirmware: target device %@ successful %d error %@", &v16, 0x1Cu);
  }

  delegate2 = [(SHFUPlugin *)self delegate];
  pluginInfo = [(SHFUPlugin *)self pluginInfo];
  [delegate2 didApply:1 info:pluginInfo error:0];

LABEL_12:
}

- (void)commitFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(SHFUPlugin *)self delegate];
  batteryCheckDevice = [(SHFUPlugin *)self batteryCheckDevice];
  bOOLValue = [batteryCheckDevice BOOLValue];
  logHandle = [(SHFUPlugin *)self logHandle];
  options = [(SHFUPlugin *)self options];
  v9 = [options objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  errorDomain = [(SHFUPlugin *)self errorDomain];
  v46 = 0;
  v11 = [SHFUDevice getDevices:delegate hasPowerSource:bOOLValue logHandle:logHandle registryEntryID:v9 errorDomain:errorDomain error:&v46];
  v12 = v46;

  if (v12)
  {
    v13 = 0;
    v14 = optionsCopy;
    v15 = v11;
    goto LABEL_25;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v55 count:16];
  v13 = v17 != 0;
  v15 = v11;
  if (!v17)
  {
    goto LABEL_23;
  }

  v18 = v17;
  v38 = v17 != 0;
  v39 = v11;
  v12 = 0;
  v19 = 0;
  v20 = *v43;
  obj = v16;
  do
  {
    v21 = 0;
    do
    {
      if (*v43 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v42 + 1) + 8 * v21);
      if ([(SHFUPlugin *)self deviceNeedsUpdate:v22])
      {
        sendSDPQueryNotification = [(SHFUPlugin *)self sendSDPQueryNotification];
        bOOLValue2 = [sendSDPQueryNotification BOOLValue];

        if (bOOLValue2)
        {
          productID = [(SHFUPlugin *)self productID];
          -[SHFUPlugin sendUpdateSDPQueryNotificationForPID:](self, "sendUpdateSDPQueryNotificationForPID:", [productID intValue]);
        }

        if ([v22 GATTServicesDiscoveryNeeded] && -[SHFUPlugin bluetoothPoweredOn](self, "bluetoothPoweredOn"))
        {
          [(SHFUPlugin *)self tagForBluetoothGATTServicesDiscovery];
        }

        commitAllFirmwares = [v22 commitAllFirmwares];
        v19 |= commitAllFirmwares == 0;
        if (commitAllFirmwares)
        {
LABEL_15:
          v27 = commitAllFirmwares;

          v12 = v27;
        }
      }

      else
      {
        v28 = [NSString stringWithFormat:@"Update not needed for device %@", v22];
        v29 = [NSError alloc];
        errorDomain2 = [(SHFUPlugin *)self errorDomain];
        v53 = NSLocalizedDescriptionKey;
        v54 = v28;
        v31 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        commitAllFirmwares = [v29 initWithDomain:errorDomain2 code:17 userInfo:v31];

        if (commitAllFirmwares)
        {
          goto LABEL_15;
        }
      }

      v21 = v21 + 1;
    }

    while (v18 != v21);
    v32 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
    v18 = v32;
  }

  while (v32);

  if (v19)
  {
    v16 = v12;
    v15 = v39;
    v13 = v38;
LABEL_23:

    v12 = 0;
    v14 = optionsCopy;
  }

  else
  {
    v13 = 0;
    v15 = v39;
    v14 = optionsCopy;
  }

LABEL_25:
  [(SHFUPlugin *)self reconnectDeviceToHost];
  delegate2 = [(SHFUPlugin *)self delegate];
  [delegate2 progress:100.0];

  logHandle2 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    targetDevice = [(SHFUPlugin *)self targetDevice];
    *buf = 138412802;
    v48 = targetDevice;
    v49 = 1024;
    v50 = v13;
    v51 = 2112;
    v52 = v12;
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "applyFirmware: target device %@ successful %d error %@", buf, 0x1Cu);
  }

  delegate3 = [(SHFUPlugin *)self delegate];
  pluginInfo = [(SHFUPlugin *)self pluginInfo];
  [delegate3 didApply:v13 info:pluginInfo error:v12];

  if ((v13 & 1) == 0)
  {
    [(SHFUPlugin *)self setError:v12];
    [(SHFUPlugin *)self setTransaction:0];
    [(SHFUPlugin *)self setSerialQueue:0];
    [(SHFUPlugin *)self releasePowerAssertion];
  }
}

- (void)clearOldRegistryEntryIDs
{
  v15 = +[NSUserDefaults standardUserDefaults];
  v3 = [v15 arrayForKey:@"RegistryEntryIDs"];
  v4 = [v3 mutableCopy];

  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100014E24();
  }

  v16 = objc_alloc_init(NSMutableArray);
  v17 = [NSDate dateWithTimeIntervalSinceNow:-172800.0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"Timestamp"];
        [v11 doubleValue];
        v12 = [NSDate dateWithTimeIntervalSince1970:?];
        v13 = +[NSDate date];
        v14 = [v12 compare:v13];

        if (v14 != 1 && [v12 compare:v17] != -1)
        {
          [v16 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [v15 setObject:v16 forKey:@"RegistryEntryIDs"];
}

- (BOOL)abortRegistryEntryID:(id)d
{
  dCopy = d;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 arrayForKey:@"RegistryEntryIDs"];
  v7 = [v6 mutableCopy];

  if ([v7 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      v10 = [v9 objectForKeyedSubscript:@"EntryID"];
      if ([v10 isEqualToNumber:dCopy])
      {
        break;
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_5;
      }
    }

    [v7 removeObjectAtIndex:v8];
    logHandle = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_100014E94();
    }

    v11 = 1;
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  [v5 setObject:v7 forKey:@"RegistryEntryIDs"];

  return v11;
}

- (void)storeRegistryEntryID:(id)d
{
  dCopy = d;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 arrayForKey:@"RegistryEntryIDs"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableArray);
  }

  v17[0] = @"EntryID";
  v17[1] = @"Timestamp";
  v18[0] = dCopy;
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  v9 = [NSNumber numberWithDouble:?];
  v18[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v7 addObject:v10];

  [v5 setObject:v7 forKey:@"RegistryEntryIDs"];
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[NSDate date];
    v13 = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Store registry entry ID %@ at %@", &v13, 0x16u);
  }
}

- (id)sendPersonalizedFirmwareToDevice
{
  v48 = 0;
  delegate = [(SHFUPlugin *)self delegate];
  obja = [(SHFUPlugin *)self batteryCheckDevice];
  bOOLValue = [obja BOOLValue];
  logHandle = [(SHFUPlugin *)self logHandle];
  vendorID = [(SHFUPlugin *)self vendorID];
  intValue = [vendorID intValue];
  productID = [(SHFUPlugin *)self productID];
  intValue2 = [productID intValue];
  v9 = SHFU_UNKNOWN_LOCATION_ID;
  v10 = SHFU_UNKNOWN_INTERFACE_NUMBER;
  errorDomain = [(SHFUPlugin *)self errorDomain];
  v47 = 0;
  LODWORD(v34) = v10;
  v12 = [SHFUDevice getDevices:delegate hasPowerSource:bOOLValue logHandle:logHandle withVendorID:intValue productID:intValue2 locationID:v9 interfaceNumber:v34 errorDomain:errorDomain error:&v47];
  v13 = v47;

  if (!v13)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v12;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v44;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          if ([(SHFUPlugin *)self deviceNeedsUpdate:v18])
          {
            v19 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v18 hardwareVersion]);
            v20 = [(SHFUPlugin *)self getParsersForHWRevID:v19];

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v39 objects:v49 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v40;
LABEL_10:
              v25 = 0;
              while (1)
              {
                if (*v40 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v39 + 1) + 8 * v25);
                if ([v26 personalizationRequired])
                {
                  break;
                }

                if (v23 == ++v25)
                {
                  v23 = [v21 countByEnumeratingWithState:&v39 objects:v49 count:16];
                  if (v23)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_16;
                }
              }

              registryEntryID = [v18 registryEntryID];
              [(SHFUPlugin *)self storeRegistryEntryID:registryEntryID];

              [(SHFUPlugin *)self setPersonalizationParser:v26];
              personalizationParser = [(SHFUPlugin *)self personalizationParser];
              featureReportDelay = [(SHFUPlugin *)self featureReportDelay];
              v13 = [v18 sendUnsignedFWToDevice:personalizationParser featureReportDelay:featureReportDelay sendPersonalizedManifests:&v48];

              if (!v13)
              {
                goto LABEL_18;
              }

              goto LABEL_25;
            }

LABEL_16:

LABEL_18:
            v30 = v48;

            if (v30)
            {
              goto LABEL_21;
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    if (v48 == 1)
    {
      v31 = dispatch_semaphore_create(0);
      [(SHFUPlugin *)self setPersonalizationSemaphore:v31];

      [(SHFUPlugin *)self waitForUserInactivity:2 withOptions:0];
    }

    v13 = 0;
LABEL_25:
    v12 = v36;
  }

  v32 = v13;

  return v32;
}

- (void)sendPersonalizedManifestsToDevice
{
  delegate = [(SHFUPlugin *)self delegate];
  batteryCheckDevice = [(SHFUPlugin *)self batteryCheckDevice];
  bOOLValue = [batteryCheckDevice BOOLValue];
  logHandle = [(SHFUPlugin *)self logHandle];
  vendorID = [(SHFUPlugin *)self vendorID];
  intValue = [vendorID intValue];
  productID = [(SHFUPlugin *)self productID];
  intValue2 = [productID intValue];
  v9 = SHFU_UNKNOWN_LOCATION_ID;
  v10 = SHFU_UNKNOWN_INTERFACE_NUMBER;
  errorDomain = [(SHFUPlugin *)self errorDomain];
  v32 = 0;
  LODWORD(v25) = v10;
  v12 = [SHFUDevice getDevices:delegate hasPowerSource:bOOLValue logHandle:logHandle withVendorID:intValue productID:intValue2 locationID:v9 interfaceNumber:v25 errorDomain:errorDomain error:&v32];
  v13 = v32;

  if (v13)
  {
    [(SHFUPlugin *)self setError:v13];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          if ([(SHFUPlugin *)self deviceNeedsUpdate:v19])
          {
            personalizationParser = [(SHFUPlugin *)self personalizationParser];
            featureReportDelay = [(SHFUPlugin *)self featureReportDelay];
            manifestCount = [(SHFUPlugin *)self manifestCount];
            v23 = [v19 sendPersonalizedManifestsToDevice:personalizationParser featureReportDelay:featureReportDelay manifestCount:manifestCount];
            [(SHFUPlugin *)self setError:v23];

            goto LABEL_13;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    personalizationSemaphore = [(SHFUPlugin *)self personalizationSemaphore];
    dispatch_semaphore_signal(personalizationSemaphore);
  }
}

- (void)waitForDeviceEnumerationWithProgressUpdates:(BOOL)updates
{
  updatesCopy = updates;
  resetEveryFWPayload = [(SHFUPlugin *)self resetEveryFWPayload];
  bOOLValue = [resetEveryFWPayload BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(SHFUPlugin *)self registerForMatchNotification];
    versionCheckDelay = [(SHFUPlugin *)self versionCheckDelay];
    [versionCheckDelay doubleValue];
    v9 = v8 + 300.0;

    for (i = 1; i != 301; ++i)
    {
      v11 = dispatch_time(0, 1000000000);
      matchSemaphore = [(SHFUPlugin *)self matchSemaphore];
      v13 = dispatch_semaphore_wait(matchSemaphore, v11);

      if (!v13)
      {
        break;
      }

      if (updatesCopy)
      {
        delegate = [(SHFUPlugin *)self delegate];
        [delegate progress:i / v9 * 100.0];
      }
    }

    versionCheckDelay2 = [(SHFUPlugin *)self versionCheckDelay];
    v16 = [versionCheckDelay2 isEqualToNumber:&off_1000269B8];

    if ((v16 & 1) == 0)
    {
      versionCheckDelay3 = [(SHFUPlugin *)self versionCheckDelay];
      [versionCheckDelay3 doubleValue];
      v19 = v18;

      if (v19 > 0.0)
      {
        v20 = 0.0;
        do
        {
          [NSThread sleepForTimeInterval:1.0];
          v20 = v20 + 1.0;
          if (updatesCopy)
          {
            delegate2 = [(SHFUPlugin *)self delegate];
            [delegate2 progress:(v20 + 300.0) / v9 * 100.0];
          }

          versionCheckDelay4 = [(SHFUPlugin *)self versionCheckDelay];
          [versionCheckDelay4 doubleValue];
          v24 = v23;
        }

        while (v20 < v24);
      }
    }
  }
}

- (void)finishWithOptions:(id)options
{
  optionsCopy = options;
  logHandle = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000149AC();
  }

  error = [(SHFUPlugin *)self error];
  if (error)
  {

LABEL_5:
    v7 = [NSString stringWithFormat:@"Previous FudPlugin method failed"];
    v8 = [NSError alloc];
    errorDomain = [(SHFUPlugin *)self errorDomain];
    v30 = NSLocalizedDescriptionKey;
    v31 = v7;
    v10 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v11 = [v8 initWithDomain:errorDomain code:55 userInfo:v10];

    [(SHFUPlugin *)self releasePowerAssertion];
    [(SHFUPlugin *)self setTransaction:0];
    logHandle2 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      targetDevice = [(SHFUPlugin *)self targetDevice];
      *buf = 138412802;
      v25 = targetDevice;
      v26 = 1024;
      v27 = 0;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "finish: target device %@ successful %d error %@", buf, 0x1Cu);
    }

    delegate = [(SHFUPlugin *)self delegate];
    pluginInfo = [(SHFUPlugin *)self pluginInfo];
    [delegate didFinish:0 info:pluginInfo error:v11];

    goto LABEL_8;
  }

  serialQueue = [(SHFUPlugin *)self serialQueue];

  if (!serialQueue)
  {
    goto LABEL_5;
  }

  [(SHFUPlugin *)self waitForDeviceEnumerationWithProgressUpdates:1];
  sendPersonalizedFirmwareToDevice = [(SHFUPlugin *)self sendPersonalizedFirmwareToDevice];
  [(SHFUPlugin *)self setError:sendPersonalizedFirmwareToDevice];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000088C0;
  v23[3] = &unk_100024698;
  v23[4] = self;
  v7 = objc_retainBlock(v23);
  error2 = [(SHFUPlugin *)self error];
  if (error2)
  {
  }

  else
  {
    personalizationSemaphore = [(SHFUPlugin *)self personalizationSemaphore];

    if (personalizationSemaphore)
    {
      v20 = dispatch_get_global_queue(17, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100008AA4;
      block[3] = &unk_1000246C0;
      block[4] = self;
      v22 = v7;
      dispatch_async(v20, block);

      goto LABEL_8;
    }
  }

  (*(v7 + 16))(v7);
LABEL_8:
}

- (id)verifyLatestFWVersions
{
  delegate = [(SHFUPlugin *)self delegate];
  batteryCheckDevice = [(SHFUPlugin *)self batteryCheckDevice];
  bOOLValue = [batteryCheckDevice BOOLValue];
  logHandle = [(SHFUPlugin *)self logHandle];
  vendorID = [(SHFUPlugin *)self vendorID];
  intValue = [vendorID intValue];
  productID = [(SHFUPlugin *)self productID];
  intValue2 = [productID intValue];
  v9 = SHFU_UNKNOWN_LOCATION_ID;
  v10 = SHFU_UNKNOWN_INTERFACE_NUMBER;
  errorDomain = [(SHFUPlugin *)self errorDomain];
  v37 = 0;
  LODWORD(v29) = v10;
  v12 = [SHFUDevice getDevices:delegate hasPowerSource:bOOLValue logHandle:logHandle withVendorID:intValue productID:intValue2 locationID:v9 interfaceNumber:v29 errorDomain:errorDomain error:&v37];
  v13 = v37;

  if (!v13)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v31 = v12;
      v17 = *v34;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          loggingIdentifier = [(SHFUPlugin *)self loggingIdentifier];
          [v19 logVersions:loggingIdentifier];

          latestFirmwareVersions = [(SHFUPlugin *)self latestFirmwareVersions];
          v22 = [v19 firmwareVersionsEqualTo:latestFirmwareVersions];

          if (!v22)
          {
            v24 = [NSString stringWithFormat:@"%@ does not have latest FW versions", v19];
            v25 = [NSError alloc];
            errorDomain2 = [(SHFUPlugin *)self errorDomain];
            v40 = NSLocalizedDescriptionKey;
            v41 = v24;
            v27 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            v13 = [v25 initWithDomain:errorDomain2 code:14 userInfo:v27];

            goto LABEL_14;
          }

          logHandle2 = [(SHFUPlugin *)self logHandle];
          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v19;
            _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "successfully updated %@", buf, 0xCu);
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v13 = 0;
LABEL_14:
      v12 = v31;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)getPreloadedFWVersions:(id *)versions
{
  v37 = objc_alloc_init(NSMutableDictionary);
  v5 = +[NSFileManager defaultManager];
  firmwareDirectory = [(SHFUPlugin *)self firmwareDirectory];
  v45 = NSURLPathKey;
  v7 = [NSArray arrayWithObjects:&v45 count:1];
  v8 = [v5 contentsOfDirectoryAtURL:firmwareDirectory includingPropertiesForKeys:v7 options:4 error:versions];

  if (!*versions)
  {
    if ([v8 count])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v8;
      v9 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v9)
      {
        v10 = v9;
        v34 = v8;
        v36 = *v39;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v39 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v38 + 1) + 8 * i);
            v13 = [AUFileParser alloc];
            path = [v12 path];
            productID = [(SHFUPlugin *)self productID];
            equivalentPIDs = [(SHFUPlugin *)self equivalentPIDs];
            logHandle = [(SHFUPlugin *)self logHandle];
            errorDomain = [(SHFUPlugin *)self errorDomain];
            errorDomain2 = [(AUFileParser *)v13 initWithFilePath:path productID:productID equivalentPIDs:equivalentPIDs logHandle:logHandle errorDomain:errorDomain error:versions];

            if (*versions)
            {
              v8 = v34;
              goto LABEL_16;
            }

            getFirmwareType = [(AUFileParser *)errorDomain2 getFirmwareType];
            getFirmwareVersion = [(AUFileParser *)errorDomain2 getFirmwareVersion];
            getHardwareRevisionID = [(AUFileParser *)errorDomain2 getHardwareRevisionID];
            stringValue = [getHardwareRevisionID stringValue];
            v24 = [v37 objectForKeyedSubscript:stringValue];

            if (!v24)
            {
              v24 = objc_alloc_init(NSMutableDictionary);
              stringValue2 = [getHardwareRevisionID stringValue];
              [v37 setObject:v24 forKeyedSubscript:stringValue2];
            }

            stringValue3 = [getFirmwareType stringValue];
            [v24 setObject:getFirmwareVersion forKeyedSubscript:stringValue3];
          }

          v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v8 = v34;
      }
    }

    else
    {
      firmwareDirectory2 = [(SHFUPlugin *)self firmwareDirectory];
      path2 = [firmwareDirectory2 path];
      v29 = [NSString stringWithFormat:@"No firmware files found at %@", path2];

      v30 = [NSError alloc];
      errorDomain2 = [(SHFUPlugin *)self errorDomain];
      v43 = NSLocalizedDescriptionKey;
      v44 = v29;
      obj = v29;
      v31 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *versions = [v30 initWithDomain:errorDomain2 code:3 userInfo:v31];

LABEL_16:
    }

    if (!*versions)
    {
      logHandle2 = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
      {
        sub_100014F04(self);
      }
    }
  }

  return v37;
}

- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status
{
  responseCopy = response;
  v9 = a4;
  statusCopy = status;
  logHandle = [(SHFUPlugin *)self logHandle];
  v12 = logHandle;
  if (responseCopy)
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_100014FA8();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000093C0;
    block[3] = &unk_1000246E8;
    v14 = statusCopy;
    v15 = responseCopy;
    v16 = v9;
    dispatch_async(&_dispatch_main_q, block);

    v12 = v14;
  }

  else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    sub_100014FE4();
  }
}

- (FudPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end