@interface SHFUPlugin
- (BOOL)abortRegistryEntryID:(id)a3;
- (BOOL)deviceNeedsUpdate:(id)a3;
- (BOOL)hostBatteryOnACPower;
- (BOOL)hostConnectedToNetwork;
- (BOOL)reconnectDeviceToHost;
- (FudPluginDelegate)delegate;
- (NSDictionary)hostPowerSource;
- (NSString)description;
- (NSString)errorDomain;
- (SHFUPlugin)init;
- (SHFUPlugin)initWithCoder:(id)a3;
- (SHFUPlugin)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6;
- (SHFUPlugin)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6 deviceProperties:(id)a7;
- (id)getParsersForHWRevID:(id)a3;
- (id)getPreloadedFWVersions:(id *)a3;
- (id)sendPersonalizedFirmwareToDevice;
- (id)verifyDeviceBattery;
- (id)verifyLatestFWVersions;
- (int)hostBatteryCapacity;
- (unint64_t)getTotalPrepareBytes:(id)a3;
- (void)applyFirmwareWithOptions:(id)a3;
- (void)bootstrapWithOptions:(id)a3;
- (void)btSessionArrived;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)checkNetworkReachability:(unsigned int)a3;
- (void)clearNotification;
- (void)clearOldRegistryEntryIDs;
- (void)commitFirmwareWithOptions:(id)a3;
- (void)createPowerAssertion;
- (void)dealloc;
- (void)delayBootstrap;
- (void)executeNextBootstrapAction;
- (void)finishWithOptions:(id)a3;
- (void)logIORegistryEntry:(id)a3;
- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5;
- (void)prepareFirmwareWithOptions:(id)a3;
- (void)registerForMatchNotification;
- (void)releasePowerAssertion;
- (void)sendFirmwareToDeviceWithOptions:(id)a3;
- (void)sendPersonalizedManifestsToDevice;
- (void)setDelegate:(id)a3;
- (void)setupBTSession;
- (void)storeRegistryEntryID:(id)a3;
- (void)tagForBluetoothGATTServicesDiscovery;
- (void)verifyHostBattery;
- (void)waitForBTSession;
- (void)waitForDeviceEnumerationWithProgressUpdates:(BOOL)a3;
- (void)waitForNetwork;
- (void)waitForUserInactivity:(int)a3 withOptions:(id)a4;
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
  v6 = [(SHFUPlugin *)self serialQueue];
  IONotificationPortSetDispatchQueue(notificationPort, v6);

  matching = IOServiceMatching("IOHIDDevice");
  v7 = [(SHFUPlugin *)self vendorID];
  [(__CFDictionary *)matching setObject:v7 forKeyedSubscript:@"VendorID"];

  v8 = [(SHFUPlugin *)self productID];
  [(__CFDictionary *)matching setObject:v8 forKeyedSubscript:@"ProductID"];

  v9 = [(SHFUPlugin *)self productID];
  v10 = [v9 intValue];

  if (v10 > 612)
  {
    if (((v10 - 613) > 0x3A || ((1 << (v10 - 101)) & 0x4A06000001F01FFLL) == 0) && v10 != 786)
    {
      goto LABEL_17;
    }

LABEL_5:
    [(__CFDictionary *)matching setObject:&off_100026970 forKeyedSubscript:@"PrimaryUsagePage"];
    v11 = &off_100026988;
    v12 = @"PrimaryUsage";
    goto LABEL_6;
  }

  if (v10 == 332 || v10 == 546)
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

- (SHFUPlugin)initWithCoder:(id)a3
{
  [NSException raise:NSInternalInconsistencyException format:@"NSCoding protocol unused by fud"];

  return [(SHFUPlugin *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0 deviceProperties:0];
}

- (SHFUPlugin)init
{
  [NSException raise:NSInternalInconsistencyException format:@"use -initWithDeviceClass:delegate:info:options:deviceProperties:"];

  return [(SHFUPlugin *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0 deviceProperties:0];
}

- (SHFUPlugin)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6
{
  [NSException raise:NSInternalInconsistencyException format:@"use -initWithDeviceClass:delegate:info:options:deviceProperties:", a5, a6];

  return [(SHFUPlugin *)self initWithDeviceClass:&stru_1000249B8 delegate:0 info:0 options:0 deviceProperties:0];
}

- (SHFUPlugin)initWithDeviceClass:(id)a3 delegate:(id)a4 info:(id *)a5 options:(id)a6 deviceProperties:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v15 objectForKeyedSubscript:@"Policy"];
  v17 = [v15 objectForKeyedSubscript:@"MatchingDictionary"];
  v18 = v17;
  v19 = 0;
  if (v15 && v16 && v17)
  {
    v131.receiver = self;
    v131.super_class = SHFUPlugin;
    v20 = [(SHFUPlugin *)&v131 init];
    if (v20)
    {
      v128 = a5;
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

      v130 = v12;
      v33 = [[NSString alloc] initWithString:v12];
      deviceClass = v20->_deviceClass;
      v20->_deviceClass = v33;

      v35 = [[NSDictionary alloc] initWithDictionary:v14];
      options = v20->_options;
      v20->_options = v35;

      v37 = objc_alloc_init(NSMutableDictionary);
      pluginInfo = v20->_pluginInfo;
      v20->_pluginInfo = v37;

      v129 = v13;
      objc_storeWeak(&v20->_delegate, v13);
      v39 = objc_alloc_init(NSMutableDictionary);
      parsers = v20->_parsers;
      v20->_parsers = v39;

      v41 = objc_alloc_init(NSMutableDictionary);
      latestFirmwareVersions = v20->_latestFirmwareVersions;
      v20->_latestFirmwareVersions = v41;

      v43 = [NSURL alloc];
      v44 = [v16 objectForKeyedSubscript:@"FirmwareDirectory"];
      v45 = [v44 stringByStandardizingPath];
      v46 = [v43 initFileURLWithPath:v45 isDirectory:1];
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
        v112 = [(NSURL *)v20->_firmwareDirectory path];
        v113 = [v112 hasSuffix:v111];

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
        v119 = [v117 stringByStandardizingPath];
        v120 = [v118 initFileURLWithPath:v119 isDirectory:1];
        v121 = v20->_firmwareDirectory;
        v20->_firmwareDirectory = v120;
      }

      v122 = os_log_create("com.apple.StandaloneHIDFudPlugins", [(NSString *)v20->_loggingIdentifier UTF8String]);
      logHandle = v20->_logHandle;
      v20->_logHandle = v122;

      v124 = os_transaction_create();
      transaction = v20->_transaction;
      v20->_transaction = v124;

      v126 = [v15 objectForKeyedSubscript:@"DeviceClassName"];
      [(NSMutableDictionary *)v20->_pluginInfo setObject:v126 forKeyedSubscript:@"DeviceClassName"];

      [(NSMutableDictionary *)v20->_pluginInfo setObject:&off_100026B58 forKeyedSubscript:@"PrepareWeight"];
      [(NSMutableDictionary *)v20->_pluginInfo setObject:&off_100026B68 forKeyedSubscript:@"ApplyWeight"];
      [(NSMutableDictionary *)v20->_pluginInfo setObject:&off_100026B78 forKeyedSubscript:@"FinishWeight"];
      *v128 = v20->_pluginInfo;

      v13 = v129;
      v12 = v130;
    }

    self = v20;
    v19 = self;
  }

  return v19;
}

- (NSString)errorDomain
{
  v2 = [(SHFUPlugin *)self loggingIdentifier];
  v3 = [NSString stringWithFormat:@"%@.%@", @"com.apple.MobileAccessoryUpdater.StandaloneHIDFudPlugins", v2];

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
  v23 = [(SHFUPlugin *)self versionCheckDelay];
  v22 = [(SHFUPlugin *)self inactivityDelayPreflight];
  v21 = [(SHFUPlugin *)self allowDowngrade];
  v20 = [(SHFUPlugin *)self bootstrapDelay];
  v16 = [(SHFUPlugin *)self inactivityDelay];
  v19 = [(SHFUPlugin *)self networkDelay];
  v15 = [(SHFUPlugin *)self featureReportDelay];
  v18 = [(SHFUPlugin *)self compatibilityVersion];
  v17 = [(SHFUPlugin *)self batteryCheckHost];
  v3 = [(SHFUPlugin *)self batteryCheckDevice];
  v4 = [(SHFUPlugin *)self minBatteryHost];
  v5 = [(SHFUPlugin *)self minBatteryDevice];
  v14 = [(SHFUPlugin *)self STFWFirst];
  v6 = [(SHFUPlugin *)self resetEveryFWPayload];
  v7 = [(SHFUPlugin *)self deviceNeedsBTReconnect];
  v13 = [(SHFUPlugin *)self sendSDPQueryNotification];
  v8 = [(SHFUPlugin *)self btReconnectDelay];
  v12 = [(SHFUPlugin *)self targetDevice];
  v9 = [(SHFUPlugin *)self abortUpdate];
  v10 = [NSString stringWithFormat:@"FW update policy: %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@", @"VersionCheckDelay", v23, @"InactivityDelayPreflight", v22, @"AllowDowngrade", v21, @"BootstrapDelay", v20, @"InactivityDelay", v16, @"NetworkDelay", v19, @"FeatureReportDelay", v15, @"CompatibilityVersion", v18, @"BatteryCheckHost", v17, @"BatteryCheckDevice", v3, @"MinBatteryHost", v4, @"MinBatteryDevice", v5, @"STFWFirst", v14, @"ResetEveryFWPayload", v6, @"NeedsBluetoothReconnect", v7, @"SendSDPQueryNotification", v13, @"BluetoothReconnectDelay", v8, @"TargetDevice", v12, @"AbortUpdate", v9];

  return v10;
}

- (void)logIORegistryEntry:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SHFUPlugin *)self logHandle];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = IORegistryEntryIDMatching([v4 unsignedLongLongValue]);
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
                v12 = [(SHFUPlugin *)self logHandle];
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                {
                  v13 = [v4 unsignedLongLongValue];
                  *buf = 134218242;
                  v17 = v13;
                  v18 = 2112;
                  v19 = v11;
                  _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "IORegistryEntry ID 0x%016llX properties: %@", buf, 0x16u);
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100014638();
  }

  objc_storeWeak(&self->_delegate, v4);
}

- (BOOL)hostBatteryOnACPower
{
  v2 = [(SHFUPlugin *)self hostPowerSource];
  v3 = [v2 objectForKeyedSubscript:@"Power Source State"];

  LOBYTE(v2) = [v3 isEqualToString:@"AC Power"];
  return v2;
}

- (int)hostBatteryCapacity
{
  v2 = [(SHFUPlugin *)self hostPowerSource];
  v3 = [v2 objectForKeyedSubscript:@"Current Capacity"];

  LODWORD(v2) = [v3 intValue];
  return v2;
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
  v3 = [(SHFUPlugin *)self batteryCheckHost];
  if ([v3 BOOLValue])
  {
    v4 = [(SHFUPlugin *)self hostBatteryCapacity];
    v5 = [(SHFUPlugin *)self minBatteryHost];
    v6 = [v5 intValue];

    if (v4 < v6)
    {
      v7 = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(SHFUPlugin *)self hostBatteryCapacity];
        v9 = [(SHFUPlugin *)self minBatteryHost];
        *buf = 67109376;
        *v40 = v8;
        *&v40[4] = 1024;
        *&v40[6] = [v9 intValue];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Host battery %d%% is below minimum %d%%", buf, 0xEu);
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
        v12 = [(SHFUPlugin *)self logHandle];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v40 = 3600;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Host battery on AC power. Wait %llu seconds for battery level to reach minimum.", buf, 0xCu);
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
        v16 = [(SHFUPlugin *)self serialQueue];
        v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);
        [(SHFUPlugin *)self setBatteryTimer:v17];

        v18 = [(SHFUPlugin *)self batteryTimer];

        if (v18)
        {
          v19 = [(SHFUPlugin *)self batteryTimer];
          v20 = dispatch_time(0, 3600000000000);
          dispatch_source_set_timer(v19, v20, 0x34630B8A000uLL, 0x12A05F200uLL);

          v21 = [(SHFUPlugin *)self batteryTimer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1000030BC;
          handler[3] = &unk_100024620;
          objc_copyWeak(&v29, &location);
          v26 = v15;
          v27 = v13;
          v28 = v14;
          dispatch_source_set_event_handler(v21, handler);

          v22 = [(SHFUPlugin *)self batteryTimer];
          dispatch_activate(v22);

          objc_destroyWeak(&v29);
        }

        v23 = [(SHFUPlugin *)self serialQueue];
        v24 = notify_register_dispatch("com.apple.system.powersources.percent", &self->_batteryToken, v23, v15);

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
  v3 = [(SHFUPlugin *)self batteryCheckDevice];
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v5 = [(SHFUPlugin *)self delegate];
  v6 = [(SHFUPlugin *)self batteryCheckDevice];
  v7 = [v6 BOOLValue];
  v8 = [(SHFUPlugin *)self logHandle];
  v9 = [(SHFUPlugin *)self options];
  v10 = [v9 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  v11 = [(SHFUPlugin *)self errorDomain];
  v40 = 0;
  v12 = [SHFUDevice getDevices:v5 hasPowerSource:v7 logHandle:v8 registryEntryID:v10 errorDomain:v11 error:&v40];
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
      v20 = [v19 powerSource];

      if (!v20)
      {
        v26 = [NSString stringWithFormat:@"No power source for device %@", v19];
        v30 = [NSError alloc];
        v28 = [(SHFUPlugin *)self errorDomain];
        v43 = NSLocalizedDescriptionKey;
        v44 = v26;
        v31 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v29 = [v30 initWithDomain:v28 code:58 userInfo:v31];

        v13 = v31;
        goto LABEL_12;
      }

      v21 = [v19 batteryCapacity];
      v22 = [(SHFUPlugin *)self minBatteryDevice];
      v23 = [v22 intValue];

      if (v21 < v23)
      {
        v24 = [v19 batteryCapacity];
        v25 = [(SHFUPlugin *)self minBatteryDevice];
        v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Low battery %d%% below minimum %d%% for device %@", v24, [v25 intValue], v19);

        v27 = [NSError alloc];
        v41 = NSLocalizedDescriptionKey;
        v42 = v26;
        v28 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v29 = [v27 initWithDomain:@"com.apple.MobileAccessoryUpdater.ErrorDomain" code:-1 userInfo:v28];
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
  v2 = [(SHFUPlugin *)self btSessionSemaphore];
  dispatch_semaphore_signal(v2);
}

- (void)setupBTSession
{
  v3 = [(SHFUPlugin *)self serialQueue];
  v4 = BTSessionAttachWithQueue();

  if (v4)
  {
    v5 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v5 = [(SHFUPlugin *)self btSessionSemaphore];
  v6 = dispatch_semaphore_wait(v5, v4);

  if (v6)
  {
    v7 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100014718();
    }
  }
}

- (BOOL)reconnectDeviceToHost
{
  objc_initWeak(&location, self);
  v3 = [(SHFUPlugin *)self deviceNeedsBTReconnect];
  if (![v3 BOOLValue])
  {
    goto LABEL_10;
  }

  v4 = [(SHFUPlugin *)self btAddress];
  v5 = [v4 length] == 0;

  if (!v5)
  {
    if ([(SHFUPlugin *)self btSession])
    {
      v6 = [(SHFUPlugin *)self btReconnectDelay];
      [v6 doubleValue];
      v3 = [NSDate dateWithTimeIntervalSinceNow:?];

      v7 = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reconnect device at %@", buf, 0xCu);
      }

      v8 = [(SHFUPlugin *)self btReconnectDelay];
      [v8 doubleValue];
      v10 = dispatch_time(0, (v9 * 1000000000.0));
      v11 = [(SHFUPlugin *)self serialQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000039A8;
      v14[3] = &unk_1000245D0;
      objc_copyWeak(&v15, &location);
      dispatch_after(v10, v11, v14);

      objc_destroyWeak(&v15);
      v12 = 1;
      goto LABEL_11;
    }

    v3 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
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
  v3 = [(SHFUPlugin *)self bootstrapDelay];
  v4 = [v3 intValue];

  if (v4 < 1)
  {

    [(SHFUPlugin *)self executeNextBootstrapAction];
  }

  else
  {
    v5 = [(SHFUPlugin *)self serialQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    [(SHFUPlugin *)self setDelayBootstrapSource:v6];

    v7 = [(SHFUPlugin *)self delayBootstrapSource];

    if (v7)
    {
      v8 = [(SHFUPlugin *)self delayBootstrapSource];
      v9 = [(SHFUPlugin *)self bootstrapDelay];
      v10 = dispatch_time(0, 1000000000 * [v9 intValue]);
      v11 = [(SHFUPlugin *)self bootstrapDelay];
      dispatch_source_set_timer(v8, v10, 1000000000 * [v11 intValue], 0xEE6B280uLL);

      objc_initWeak(&location, self);
      v12 = [(SHFUPlugin *)self delayBootstrapSource];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100003DCC;
      v20 = &unk_1000245D0;
      objc_copyWeak(&v21, &location);
      dispatch_source_set_event_handler(v12, &v17);

      v13 = [(SHFUPlugin *)self delayBootstrapSource:v17];
      dispatch_activate(v13);

      v14 = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [(SHFUPlugin *)self bootstrapDelay];
        v16 = [v15 intValue];
        *buf = 67109120;
        v24 = v16;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Delay bootstrap for %d seconds", buf, 8u);
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

  v6 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = "NOT ";
    if (v5)
    {
      v7 = "";
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%sconnected to the network", &v9, 0xCu);
  }

  return v5;
}

- (void)checkNetworkReachability:(unsigned int)a3
{
  v3 = a3;
  v5 = [(SHFUPlugin *)self networkReachability];
  if ((v3 & 2) != 0 && v5)
  {
    v6 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network connection established", buf, 2u);
    }

    v7 = [(SHFUPlugin *)self networkStatus];

    if (v7)
    {
      v8 = [(SHFUPlugin *)self networkStatus];
      dispatch_source_cancel(v8);

      [(SHFUPlugin *)self setNetworkStatus:0];
    }

    SCNetworkReachabilitySetCallback([(SHFUPlugin *)self networkReachability], 0, 0);
    SCNetworkReachabilitySetDispatchQueue([(SHFUPlugin *)self networkReachability], 0);
    CFRelease([(SHFUPlugin *)self networkReachability]);
    [(SHFUPlugin *)self setNetworkReachability:0];
    objc_initWeak(buf, self);
    v9 = dispatch_time(0, 10000000000);
    v10 = [(SHFUPlugin *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004138;
    block[3] = &unk_1000245D0;
    objc_copyWeak(&v12, buf);
    dispatch_after(v9, v10, block);

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
    v3 = [(SHFUPlugin *)self networkReachability];
    v4 = [(SHFUPlugin *)self serialQueue];
    LODWORD(v3) = SCNetworkReachabilitySetDispatchQueue(v3, v4);

    if (v3)
    {
      v5 = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(SHFUPlugin *)self networkDelay];
        LODWORD(buf.version) = 67109120;
        HIDWORD(buf.version) = [v6 intValue];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will wait %d seconds for a network connection", &buf, 8u);
      }

      v7 = [(SHFUPlugin *)self serialQueue];
      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
      [(SHFUPlugin *)self setNetworkStatus:v8];

      v9 = [(SHFUPlugin *)self networkStatus];

      if (v9)
      {
        v10 = [(SHFUPlugin *)self networkStatus];
        v11 = [(SHFUPlugin *)self networkDelay];
        v12 = dispatch_time(0, 1000000000 * [v11 intValue]);
        v13 = [(SHFUPlugin *)self networkDelay];
        dispatch_source_set_timer(v10, v12, 1000000000 * [v13 intValue], 0x12A05F200uLL);

        objc_initWeak(&location, self);
        v14 = [(SHFUPlugin *)self networkStatus];
        v16 = _NSConcreteStackBlock;
        v17 = 3221225472;
        v18 = sub_100004490;
        v19 = &unk_1000245D0;
        objc_copyWeak(&v20, &location);
        dispatch_source_set_event_handler(v14, &v16);

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
  v3 = [(SHFUPlugin *)self error];

  if (v3)
  {
    v4 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(SHFUPlugin *)self targetDevice];
      v6 = [(SHFUPlugin *)self error];
      *buf = 138412802;
      v16 = v5;
      v17 = 1024;
      v18 = 0;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "bootstrap: target device %@ successful %d error %@", buf, 0x1Cu);
    }

    v7 = [(SHFUPlugin *)self delegate];
    v8 = [(SHFUPlugin *)self pluginInfo];
    v9 = [(SHFUPlugin *)self error];
    [v7 didBootstrap:0 info:v8 error:v9];

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
    v10 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SHFUPlugin *)self targetDevice];
      *buf = 138412802;
      v16 = v11;
      v17 = 1024;
      v18 = 1;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "bootstrap: target device %@ successful %d error %@", buf, 0x1Cu);
    }

    v12 = [(SHFUPlugin *)self delegate];
    v13 = [(SHFUPlugin *)self pluginInfo];
    [v12 didBootstrap:1 info:v13 error:0];
  }
}

- (void)bootstrapWithOptions:(id)a3
{
  v17 = a3;
  val = self;
  v4 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
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

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100014A1C(v4);
  }

  if ([v4 state] == 5)
  {
    v6 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100014A9C();
    }

    [(SHFUPlugin *)self setBluetoothPoweredOn:1];
  }
}

- (void)tagForBluetoothGATTServicesDiscovery
{
  v3 = [(SHFUPlugin *)self centralManager];
  v4 = [v3 retrieveConnectedPeripheralsWithServices:0 allowAll:1];

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
        v12 = [(SHFUPlugin *)self logHandle];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found Bluetooth peripheral %@", buf, 0xCu);
        }

        if ([(__CFString *)v11 hasTag:@"BluetoothTVRemote"])
        {
          v13 = [(SHFUPlugin *)self logHandle];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = @"BluetoothTVRemote";
            v21 = 2112;
            v22 = @"_FORCE_GATT_SERVICES_DISCOVERY_";
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found Bluetooth peripheral with tag %@. Setting tag %@", buf, 0x16u);
          }

          [(__CFString *)v11 tag:@"_FORCE_GATT_SERVICES_DISCOVERY_"];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v8);
  }
}

- (BOOL)deviceNeedsUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPlugin *)self latestFirmwareVersions];
  v6 = [v4 hardwareVersionSupportedBy:v5];

  if (!v6)
  {
    v11 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100014AD8();
    }

LABEL_7:

    goto LABEL_8;
  }

  v7 = [(SHFUPlugin *)self allowDowngrade];
  v8 = [v7 BOOLValue];

  v9 = [(SHFUPlugin *)self latestFirmwareVersions];
  if (!v8)
  {
    v13 = [v4 firmwareVersionsOlderThan:v9];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v10 = [v4 firmwareVersionsEqualTo:v9];

  if (v10)
  {
LABEL_10:
    if (!+[SHFUDevice ignoreVersionCheck])
    {
      LOBYTE(v6) = 0;
      goto LABEL_8;
    }

    v11 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating firmware due to preference telling us to ignore the FW version check.", v14, 2u);
    }

    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v6) = 1;
LABEL_8:

  return v6;
}

- (id)getParsersForHWRevID:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPlugin *)self parsers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(SHFUPlugin *)self parsers];
    v6 = [v7 objectForKeyedSubscript:&off_1000269A0];
  }

  return v6;
}

- (unint64_t)getTotalPrepareBytes:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (-[SHFUPlugin deviceNeedsUpdate:](self, "deviceNeedsUpdate:", v10) && [v10 hardwareVersion])
        {
          v11 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v10 hardwareVersion]);
          v12 = [(SHFUPlugin *)self getParsersForHWRevID:v11];

          v7 += [v10 getTotalFirmwareBytes:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v4 = [(SHFUPlugin *)self logHandle];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100014B14();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100014B84();
  }
}

- (void)releasePowerAssertion
{
  if ([(SHFUPlugin *)self powerAssertionID])
  {
    v3 = IOPMAssertionRelease([(SHFUPlugin *)self powerAssertionID]);
    v4 = [(SHFUPlugin *)self logHandle];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100014BC0();
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100014C30();
    }

    [(SHFUPlugin *)self setPowerAssertionID:0];
  }
}

- (void)waitForUserInactivity:(int)a3 withOptions:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(SHFUPlugin *)self serialQueue];
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
  [(SHFUPlugin *)self setUserInactivityStatus:v8];

  v9 = [(SHFUPlugin *)self userInactivityStatus];

  if (v9)
  {
    v10 = [(SHFUPlugin *)self userInactivityStatus];
    v11 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v10, v11, 0xDF8475800uLL, 0x1DCD6500uLL);

    v12 = [(SHFUPlugin *)self userInactivityStatus];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006370;
    handler[3] = &unk_1000245D0;
    objc_copyWeak(&v25, &location);
    dispatch_source_set_event_handler(v12, handler);

    v13 = [(SHFUPlugin *)self userInactivityStatus];
    dispatch_activate(v13);

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
  v21 = a3;
  v14 = v6;
  v19 = v14;
  v23 = objc_retainBlock(v18);
  v15 = [(SHFUPlugin *)self serialQueue];
  v16 = [(SHFUPlugin *)self inactivityDelay];
  [v16 intValue];
  objc_copyWeak(&v17, &location);
  [(SHFUPlugin *)self setPmNotificationHandle:IOPMScheduleUserActivityLevelNotificationWithTimeout()];

  objc_destroyWeak(&v17);
  _Block_object_dispose(v22, 8);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)prepareFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000149AC();
  }

  [(SHFUPlugin *)self createPowerAssertion];
  v6 = [(SHFUPlugin *)self inactivityDelayPreflight];
  if (([v6 BOOLValue] & 1) == 0)
  {

    goto LABEL_7;
  }

  v7 = [(SHFUPlugin *)self inactivityDelay];
  v8 = [v7 intValue];

  if (v8 < 1)
  {
LABEL_7:
    [(SHFUPlugin *)self sendFirmwareToDeviceWithOptions:v4];
    goto LABEL_8;
  }

  [(SHFUPlugin *)self waitForUserInactivity:0 withOptions:v4];
LABEL_8:
}

- (void)sendFirmwareToDeviceWithOptions:(id)a3
{
  v60 = a3;
  v4 = [(SHFUPlugin *)self firmwareDirectory];
  v5 = [(SHFUPlugin *)self logHandle];
  v6 = [(SHFUPlugin *)self productID];
  v7 = [(SHFUPlugin *)self equivalentPIDs];
  v8 = [(SHFUPlugin *)self errorDomain];
  v9 = [(SHFUPlugin *)self STFWFirst];
  v10 = [(SHFUPlugin *)self parsers];
  v11 = [AUFileParser loadParsersFromFWDirectory:v4 logHandle:v5 productID:v6 equivalentPIDs:v7 errorDomain:v8 STFWFirst:v9 parsers:v10];

  if (v11)
  {
    v12 = 0;
    v13 = self;
LABEL_5:
    [(SHFUPlugin *)v13 setTransaction:0];
    [(SHFUPlugin *)v13 setSerialQueue:0];
    [(SHFUPlugin *)v13 setError:v11];
    [(SHFUPlugin *)v13 releasePowerAssertion];
    v22 = 0;
    goto LABEL_6;
  }

  v14 = [(SHFUPlugin *)self delegate];
  v15 = [(SHFUPlugin *)self batteryCheckDevice];
  v16 = [v15 BOOLValue];
  v17 = [(SHFUPlugin *)self logHandle];
  v18 = [(SHFUPlugin *)self options];
  v19 = [v18 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  v20 = [(SHFUPlugin *)self errorDomain];
  v73 = 0;
  v21 = [SHFUDevice getDevices:v14 hasPowerSource:v16 logHandle:v17 registryEntryID:v19 errorDomain:v20 error:&v73];
  v11 = v73;

  if (v11)
  {
    v13 = self;
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
  v13 = self;
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
      if ([(SHFUPlugin *)v13 deviceNeedsUpdate:v32])
      {
        v33 = [(SHFUPlugin *)v13 deviceNeedsBTReconnect];
        v34 = [v33 BOOLValue];

        if (!v34)
        {
          goto LABEL_41;
        }

        [(SHFUPlugin *)v13 waitForBTSession];
        if ([(SHFUPlugin *)v13 btSession])
        {
          goto LABEL_41;
        }

        v51 = [NSString stringWithFormat:@"Bluetooth Session not found for device %@", v32];
        v52 = [NSError alloc];
        v53 = [(SHFUPlugin *)v13 errorDomain];
        v81 = NSLocalizedDescriptionKey;
        v82 = v51;
        v54 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v46 = [v52 initWithDomain:v53 code:34 userInfo:v54];

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
          v49 = [(SHFUPlugin *)v13 errorDomain];
          v79 = NSLocalizedDescriptionKey;
          v80 = v47;
          v50 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v46 = [v48 initWithDomain:v49 code:9 userInfo:v50];

          if (!v46)
          {
LABEL_42:
            v35 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v32 hardwareVersion]);
            v36 = [(SHFUPlugin *)v13 getParsersForHWRevID:v35];

            v37 = [(SHFUPlugin *)v13 resetEveryFWPayload];
            v38 = [v37 BOOLValue];

            if (v38)
            {
              v63 = v30 + 371;
              v39 = [(SHFUPlugin *)v13 vendorID];
              v40 = [(SHFUPlugin *)v13 productID];
              v64 = [(SHFUPlugin *)v13 batteryCheckDevice];
              v65 = v11;
              v41 = [v64 BOOLValue];
              v42 = [(SHFUPlugin *)v13 featureReportDelay];
              v43 = [(SHFUPlugin *)v13 logHandle];
              v44 = [(SHFUPlugin *)v13 delegate];
              v45 = [(SHFUPlugin *)v13 errorDomain];
              v46 = [v63 sendAllFirmwaresToDeviceWithVendorID:v39 productID:v40 hasPowerSource:v41 parsers:v36 totalPrepareBytes:v66 bytesSent:buf featureReportDelay:v42 logHandle:v43 pluginDelegate:v44 errorDomain:v45];

              v30 = &selRef_errorDomain;
              v11 = v65;

              v12 = v61;
            }

            else
            {
              v39 = [(SHFUPlugin *)v13 featureReportDelay];
              v46 = [v32 sendAllFirmwaresToDevice:v36 totalPrepareBytes:v66 bytesSent:buf featureReportDelay:v39];
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

        v55 = [(SHFUPlugin *)v13 verifyDeviceBattery];
        v56 = v55;
        if (v55)
        {
          v57 = [v55 domain];
          if ([v57 isEqualToString:@"com.apple.MobileAccessoryUpdater.ErrorDomain"])
          {
            v58 = [v56 code];

            if (v58 != -1)
            {
              v30 = &selRef_errorDomain;
              goto LABEL_32;
            }

            v57 = v46;
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
  v23 = [(SHFUPlugin *)v13 logHandle];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(SHFUPlugin *)v13 targetDevice];
    *buf = 138412802;
    *&buf[4] = v24;
    v75 = 1024;
    v76 = v22;
    v77 = 2112;
    v78 = v11;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "prepareFirmware: target device %@ successful %d error %@", buf, 0x1Cu);
  }

  v25 = [(SHFUPlugin *)v13 delegate];
  v26 = [(SHFUPlugin *)v13 pluginInfo];
  [v25 didPrepare:v22 info:v26 error:v11];
}

- (void)applyFirmwareWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000149AC();
  }

  v6 = [(SHFUPlugin *)self resetEveryFWPayload];
  v7 = [v6 BOOLValue];

  if (!v7)
  {
    v13 = [(SHFUPlugin *)self inactivityDelayPreflight];
    if ([v13 BOOLValue])
    {
    }

    else
    {
      v14 = [(SHFUPlugin *)self inactivityDelay];
      v15 = [v14 intValue];

      if (v15 >= 1)
      {
        [(SHFUPlugin *)self waitForUserInactivity:1 withOptions:v4];
        goto LABEL_12;
      }
    }

    [(SHFUPlugin *)self commitFirmwareWithOptions:v4];
    goto LABEL_12;
  }

  [(SHFUPlugin *)self reconnectDeviceToHost];
  v8 = [(SHFUPlugin *)self delegate];
  [v8 progress:100.0];

  v9 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SHFUPlugin *)self targetDevice];
    v16 = 138412802;
    v17 = v10;
    v18 = 1024;
    v19 = 1;
    v20 = 2112;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "applyFirmware: target device %@ successful %d error %@", &v16, 0x1Cu);
  }

  v11 = [(SHFUPlugin *)self delegate];
  v12 = [(SHFUPlugin *)self pluginInfo];
  [v11 didApply:1 info:v12 error:0];

LABEL_12:
}

- (void)commitFirmwareWithOptions:(id)a3
{
  v40 = a3;
  v4 = [(SHFUPlugin *)self delegate];
  v5 = [(SHFUPlugin *)self batteryCheckDevice];
  v6 = [v5 BOOLValue];
  v7 = [(SHFUPlugin *)self logHandle];
  v8 = [(SHFUPlugin *)self options];
  v9 = [v8 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  v10 = [(SHFUPlugin *)self errorDomain];
  v46 = 0;
  v11 = [SHFUDevice getDevices:v4 hasPowerSource:v6 logHandle:v7 registryEntryID:v9 errorDomain:v10 error:&v46];
  v12 = v46;

  if (v12)
  {
    v13 = 0;
    v14 = v40;
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
        v23 = [(SHFUPlugin *)self sendSDPQueryNotification];
        v24 = [v23 BOOLValue];

        if (v24)
        {
          v25 = [(SHFUPlugin *)self productID];
          -[SHFUPlugin sendUpdateSDPQueryNotificationForPID:](self, "sendUpdateSDPQueryNotificationForPID:", [v25 intValue]);
        }

        if ([v22 GATTServicesDiscoveryNeeded] && -[SHFUPlugin bluetoothPoweredOn](self, "bluetoothPoweredOn"))
        {
          [(SHFUPlugin *)self tagForBluetoothGATTServicesDiscovery];
        }

        v26 = [v22 commitAllFirmwares];
        v19 |= v26 == 0;
        if (v26)
        {
LABEL_15:
          v27 = v26;

          v12 = v27;
        }
      }

      else
      {
        v28 = [NSString stringWithFormat:@"Update not needed for device %@", v22];
        v29 = [NSError alloc];
        v30 = [(SHFUPlugin *)self errorDomain];
        v53 = NSLocalizedDescriptionKey;
        v54 = v28;
        v31 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v26 = [v29 initWithDomain:v30 code:17 userInfo:v31];

        if (v26)
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
    v14 = v40;
  }

  else
  {
    v13 = 0;
    v15 = v39;
    v14 = v40;
  }

LABEL_25:
  [(SHFUPlugin *)self reconnectDeviceToHost];
  v33 = [(SHFUPlugin *)self delegate];
  [v33 progress:100.0];

  v34 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [(SHFUPlugin *)self targetDevice];
    *buf = 138412802;
    v48 = v35;
    v49 = 1024;
    v50 = v13;
    v51 = 2112;
    v52 = v12;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "applyFirmware: target device %@ successful %d error %@", buf, 0x1Cu);
  }

  v36 = [(SHFUPlugin *)self delegate];
  v37 = [(SHFUPlugin *)self pluginInfo];
  [v36 didApply:v13 info:v37 error:v12];

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

  v5 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
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

- (BOOL)abortRegistryEntryID:(id)a3
{
  v4 = a3;
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
      if ([v10 isEqualToNumber:v4])
      {
        break;
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_5;
      }
    }

    [v7 removeObjectAtIndex:v8];
    v12 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
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

- (void)storeRegistryEntryID:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 arrayForKey:@"RegistryEntryIDs"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableArray);
  }

  v17[0] = @"EntryID";
  v17[1] = @"Timestamp";
  v18[0] = v4;
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  v9 = [NSNumber numberWithDouble:?];
  v18[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v7 addObject:v10];

  [v5 setObject:v7 forKey:@"RegistryEntryIDs"];
  v11 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[NSDate date];
    v13 = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Store registry entry ID %@ at %@", &v13, 0x16u);
  }
}

- (id)sendPersonalizedFirmwareToDevice
{
  v48 = 0;
  v35 = [(SHFUPlugin *)self delegate];
  obja = [(SHFUPlugin *)self batteryCheckDevice];
  v3 = [obja BOOLValue];
  v4 = [(SHFUPlugin *)self logHandle];
  v5 = [(SHFUPlugin *)self vendorID];
  v6 = [v5 intValue];
  v7 = [(SHFUPlugin *)self productID];
  v8 = [v7 intValue];
  v9 = SHFU_UNKNOWN_LOCATION_ID;
  v10 = SHFU_UNKNOWN_INTERFACE_NUMBER;
  v11 = [(SHFUPlugin *)self errorDomain];
  v47 = 0;
  LODWORD(v34) = v10;
  v12 = [SHFUDevice getDevices:v35 hasPowerSource:v3 logHandle:v4 withVendorID:v6 productID:v8 locationID:v9 interfaceNumber:v34 errorDomain:v11 error:&v47];
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

              v27 = [v18 registryEntryID];
              [(SHFUPlugin *)self storeRegistryEntryID:v27];

              [(SHFUPlugin *)self setPersonalizationParser:v26];
              v28 = [(SHFUPlugin *)self personalizationParser];
              v29 = [(SHFUPlugin *)self featureReportDelay];
              v13 = [v18 sendUnsignedFWToDevice:v28 featureReportDelay:v29 sendPersonalizedManifests:&v48];

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
  v26 = [(SHFUPlugin *)self delegate];
  v27 = [(SHFUPlugin *)self batteryCheckDevice];
  v3 = [v27 BOOLValue];
  v4 = [(SHFUPlugin *)self logHandle];
  v5 = [(SHFUPlugin *)self vendorID];
  v6 = [v5 intValue];
  v7 = [(SHFUPlugin *)self productID];
  v8 = [v7 intValue];
  v9 = SHFU_UNKNOWN_LOCATION_ID;
  v10 = SHFU_UNKNOWN_INTERFACE_NUMBER;
  v11 = [(SHFUPlugin *)self errorDomain];
  v32 = 0;
  LODWORD(v25) = v10;
  v12 = [SHFUDevice getDevices:v26 hasPowerSource:v3 logHandle:v4 withVendorID:v6 productID:v8 locationID:v9 interfaceNumber:v25 errorDomain:v11 error:&v32];
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
            v20 = [(SHFUPlugin *)self personalizationParser];
            v21 = [(SHFUPlugin *)self featureReportDelay];
            v22 = [(SHFUPlugin *)self manifestCount];
            v23 = [v19 sendPersonalizedManifestsToDevice:v20 featureReportDelay:v21 manifestCount:v22];
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

    v24 = [(SHFUPlugin *)self personalizationSemaphore];
    dispatch_semaphore_signal(v24);
  }
}

- (void)waitForDeviceEnumerationWithProgressUpdates:(BOOL)a3
{
  v3 = a3;
  v5 = [(SHFUPlugin *)self resetEveryFWPayload];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {
    [(SHFUPlugin *)self registerForMatchNotification];
    v7 = [(SHFUPlugin *)self versionCheckDelay];
    [v7 doubleValue];
    v9 = v8 + 300.0;

    for (i = 1; i != 301; ++i)
    {
      v11 = dispatch_time(0, 1000000000);
      v12 = [(SHFUPlugin *)self matchSemaphore];
      v13 = dispatch_semaphore_wait(v12, v11);

      if (!v13)
      {
        break;
      }

      if (v3)
      {
        v14 = [(SHFUPlugin *)self delegate];
        [v14 progress:i / v9 * 100.0];
      }
    }

    v15 = [(SHFUPlugin *)self versionCheckDelay];
    v16 = [v15 isEqualToNumber:&off_1000269B8];

    if ((v16 & 1) == 0)
    {
      v17 = [(SHFUPlugin *)self versionCheckDelay];
      [v17 doubleValue];
      v19 = v18;

      if (v19 > 0.0)
      {
        v20 = 0.0;
        do
        {
          [NSThread sleepForTimeInterval:1.0];
          v20 = v20 + 1.0;
          if (v3)
          {
            v21 = [(SHFUPlugin *)self delegate];
            [v21 progress:(v20 + 300.0) / v9 * 100.0];
          }

          v22 = [(SHFUPlugin *)self versionCheckDelay];
          [v22 doubleValue];
          v24 = v23;
        }

        while (v20 < v24);
      }
    }
  }
}

- (void)finishWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SHFUPlugin *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000149AC();
  }

  v6 = [(SHFUPlugin *)self error];
  if (v6)
  {

LABEL_5:
    v7 = [NSString stringWithFormat:@"Previous FudPlugin method failed"];
    v8 = [NSError alloc];
    v9 = [(SHFUPlugin *)self errorDomain];
    v30 = NSLocalizedDescriptionKey;
    v31 = v7;
    v10 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v11 = [v8 initWithDomain:v9 code:55 userInfo:v10];

    [(SHFUPlugin *)self releasePowerAssertion];
    [(SHFUPlugin *)self setTransaction:0];
    v12 = [(SHFUPlugin *)self logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(SHFUPlugin *)self targetDevice];
      *buf = 138412802;
      v25 = v13;
      v26 = 1024;
      v27 = 0;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "finish: target device %@ successful %d error %@", buf, 0x1Cu);
    }

    v14 = [(SHFUPlugin *)self delegate];
    v15 = [(SHFUPlugin *)self pluginInfo];
    [v14 didFinish:0 info:v15 error:v11];

    goto LABEL_8;
  }

  v16 = [(SHFUPlugin *)self serialQueue];

  if (!v16)
  {
    goto LABEL_5;
  }

  [(SHFUPlugin *)self waitForDeviceEnumerationWithProgressUpdates:1];
  v17 = [(SHFUPlugin *)self sendPersonalizedFirmwareToDevice];
  [(SHFUPlugin *)self setError:v17];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000088C0;
  v23[3] = &unk_100024698;
  v23[4] = self;
  v7 = objc_retainBlock(v23);
  v18 = [(SHFUPlugin *)self error];
  if (v18)
  {
  }

  else
  {
    v19 = [(SHFUPlugin *)self personalizationSemaphore];

    if (v19)
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
  v30 = [(SHFUPlugin *)self delegate];
  v32 = [(SHFUPlugin *)self batteryCheckDevice];
  v3 = [v32 BOOLValue];
  v4 = [(SHFUPlugin *)self logHandle];
  v5 = [(SHFUPlugin *)self vendorID];
  v6 = [v5 intValue];
  v7 = [(SHFUPlugin *)self productID];
  v8 = [v7 intValue];
  v9 = SHFU_UNKNOWN_LOCATION_ID;
  v10 = SHFU_UNKNOWN_INTERFACE_NUMBER;
  v11 = [(SHFUPlugin *)self errorDomain];
  v37 = 0;
  LODWORD(v29) = v10;
  v12 = [SHFUDevice getDevices:v30 hasPowerSource:v3 logHandle:v4 withVendorID:v6 productID:v8 locationID:v9 interfaceNumber:v29 errorDomain:v11 error:&v37];
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
          v20 = [(SHFUPlugin *)self loggingIdentifier];
          [v19 logVersions:v20];

          v21 = [(SHFUPlugin *)self latestFirmwareVersions];
          v22 = [v19 firmwareVersionsEqualTo:v21];

          if (!v22)
          {
            v24 = [NSString stringWithFormat:@"%@ does not have latest FW versions", v19];
            v25 = [NSError alloc];
            v26 = [(SHFUPlugin *)self errorDomain];
            v40 = NSLocalizedDescriptionKey;
            v41 = v24;
            v27 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            v13 = [v25 initWithDomain:v26 code:14 userInfo:v27];

            goto LABEL_14;
          }

          v23 = [(SHFUPlugin *)self logHandle];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v19;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "successfully updated %@", buf, 0xCu);
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

- (id)getPreloadedFWVersions:(id *)a3
{
  v37 = objc_alloc_init(NSMutableDictionary);
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHFUPlugin *)self firmwareDirectory];
  v45 = NSURLPathKey;
  v7 = [NSArray arrayWithObjects:&v45 count:1];
  v8 = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v7 options:4 error:a3];

  if (!*a3)
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
            v14 = [v12 path];
            v15 = [(SHFUPlugin *)self productID];
            v16 = [(SHFUPlugin *)self equivalentPIDs];
            v17 = [(SHFUPlugin *)self logHandle];
            v18 = [(SHFUPlugin *)self errorDomain];
            v19 = [(AUFileParser *)v13 initWithFilePath:v14 productID:v15 equivalentPIDs:v16 logHandle:v17 errorDomain:v18 error:a3];

            if (*a3)
            {
              v8 = v34;
              goto LABEL_16;
            }

            v20 = [(AUFileParser *)v19 getFirmwareType];
            v21 = [(AUFileParser *)v19 getFirmwareVersion];
            v22 = [(AUFileParser *)v19 getHardwareRevisionID];
            v23 = [v22 stringValue];
            v24 = [v37 objectForKeyedSubscript:v23];

            if (!v24)
            {
              v24 = objc_alloc_init(NSMutableDictionary);
              v25 = [v22 stringValue];
              [v37 setObject:v24 forKeyedSubscript:v25];
            }

            v26 = [v20 stringValue];
            [v24 setObject:v21 forKeyedSubscript:v26];
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
      v27 = [(SHFUPlugin *)self firmwareDirectory];
      v28 = [v27 path];
      v29 = [NSString stringWithFormat:@"No firmware files found at %@", v28];

      v30 = [NSError alloc];
      v19 = [(SHFUPlugin *)self errorDomain];
      v43 = NSLocalizedDescriptionKey;
      v44 = v29;
      obj = v29;
      v31 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *a3 = [v30 initWithDomain:v19 code:3 userInfo:v31];

LABEL_16:
    }

    if (!*a3)
    {
      v32 = [(SHFUPlugin *)self logHandle];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        sub_100014F04(self);
      }
    }
  }

  return v37;
}

- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SHFUPlugin *)self logHandle];
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100014FA8();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000093C0;
    block[3] = &unk_1000246E8;
    v14 = v10;
    v15 = v8;
    v16 = v9;
    dispatch_async(&_dispatch_main_q, block);

    v12 = v14;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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