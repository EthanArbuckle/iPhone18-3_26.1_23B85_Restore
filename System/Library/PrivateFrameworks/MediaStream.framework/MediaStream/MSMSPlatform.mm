@interface MSMSPlatform
+ (id)thePlatform;
- (BOOL)_mayPerformFileTransfer;
- (BOOL)personIDUsesProductionPushEnvironment:(id)a3;
- (Class)deletePluginClass;
- (Class)pluginClass;
- (Class)publisherPluginClass;
- (Class)subscriberPluginClass;
- (MSMSPlatform)init;
- (__CFString)_facilityStringForFacility:(int)a3;
- (id)OSString;
- (id)OSVersion;
- (id)UDID;
- (id)_accountForPersonID:(id)a3;
- (id)appBundleInfoString;
- (id)authTokenForPersonID:(id)a3;
- (id)baseURLForPersonID:(id)a3;
- (id)contentURLForPersonID:(id)a3;
- (id)fullNameFromFirstName:(id)a3 lastName:(id)a4;
- (id)hardwareString;
- (id)pathMediaStreamDir;
- (id)socketOptions;
- (id)stringForSysctlKey:(id)a3;
- (void)_rereadDefaults;
- (void)didDetectUnrecoverableCondition;
- (void)logFacility:(int)a3 level:(int)a4 format:(id)a5 args:(char *)a6;
- (void)logFile:(const char *)a3 func:(const char *)a4 line:(int)a5 facility:(int)a6 level:(int)a7 format:(id)a8 args:(char *)a9;
@end

@implementation MSMSPlatform

- (id)fullNameFromFirstName:(id)a3 lastName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, v6];
    v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];

    goto LABEL_9;
  }

  if ([v5 length])
  {
    v10 = v5;
LABEL_8:
    v9 = v10;
    goto LABEL_9;
  }

  if ([v6 length])
  {
    v10 = v6;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (BOOL)personIDUsesProductionPushEnvironment:(id)a3
{
  v3 = [(MSMSPlatform *)self _accountForPersonID:a3];
  v4 = [v3 propertiesForDataclass:*MEMORY[0x277CB9158]];
  v5 = [v4 objectForKey:@"apsEnv"];
  v6 = [v5 isEqualToString:@"production"];

  return v6;
}

- (id)contentURLForPersonID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MSMSPlatform *)self _accountForPersonID:v4];
    v6 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }

    v7 = MEMORY[0x277CBEBC0];
    v8 = [v5 propertiesForDataclass:*MEMORY[0x277CB9118]];
    v9 = [v8 objectForKey:@"url"];
    v10 = [v7 URLWithString:v9];

    if (v10)
    {
      v11 = [v10 URLByAppendingPathComponent:v4];
    }

    else
    {
LABEL_5:
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)baseURLForPersonID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 objectForKey:@"MSForcedBaseURL"];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  }

  else
  {
    v8 = [(MSMSPlatform *)self _accountForPersonID:v4];
    v9 = MEMORY[0x277CBEBC0];
    v10 = [v8 propertiesForDataclass:*MEMORY[0x277CB9158]];
    v11 = [v10 objectForKey:@"url"];
    v7 = [v9 URLWithString:v11];
  }

  return v7;
}

- (id)authTokenForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MSMSPlatform *)self _accountForPersonID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 aa_authToken];
    if (v7)
    {
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Missing authToken. Requesting", v10, 2u);
    }

    v8 = +[MSAuthenticationManager sharedManager];
    [v8 didEncounterAuthenticationFailureForPersonID:v4];
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)_accountForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MSMSPlatform *)self accountStore];
  v6 = [v5 aa_appleAccountWithPersonID:v4];

  return v6;
}

- (void)didDetectUnrecoverableCondition
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Restarting mstreamd.", v2, 2u);
  }

  exit(-1);
}

- (id)socketOptions
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = *MEMORY[0x277CBAE40];
  v5 = [v2 dictionaryWithObjectsAndKeys:{v3, *MEMORY[0x277CBAE40], *MEMORY[0x277CBAD68], *MEMORY[0x277CBAD50], 0}];

  return v5;
}

- (BOOL)_mayPerformFileTransfer
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[MSBatteryPowerMonitor defaultMonitor];
  if ([v2 isExternalPowerConnected])
  {
    v3 = 1;
  }

  else
  {
    [v2 batteryPercentRemaining];
    v9 = v8;
    v3 = 1;
    if (v8 != -1.0 && v8 < 0.2)
    {
      v3 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v9 * 100.0;
        _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Battery level is too low to continue at %.1f%%.", &v10, 0xCu);
        v3 = 0;
      }
    }
  }

  v4 = +[MSPauseManager sharedManager];
  v5 = [v4 isPaused];

  v6 = *MEMORY[0x277D85DE8];
  return v3 & (v5 ^ 1);
}

- (id)appBundleInfoString
{
  if (appBundleInfoString_once != -1)
  {
    dispatch_once(&appBundleInfoString_once, &__block_literal_global_81);
  }

  v3 = appBundleInfoString_string;

  return v3;
}

void __35__MSMSPlatform_appBundleInfoString__block_invoke()
{
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v5 infoDictionary];
  v1 = [v0 objectForKey:*MEMORY[0x277CBED38]];
  v2 = [v0 objectForKey:@"CFBundleShortVersionString"];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v1, v2];
  v4 = appBundleInfoString_string;
  appBundleInfoString_string = v3;
}

- (id)OSString
{
  if (OSString_once != -1)
  {
    dispatch_once(&OSString_once, &__block_literal_global_72);
  }

  v3 = OSString_string;

  return v3;
}

void __24__MSMSPlatform_OSString__block_invoke()
{
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v0 = [v5 objectForKey:@"ProductName"];
  v1 = [v5 objectForKey:@"ProductVersion"];
  v2 = [v5 objectForKey:@"ProductBuildVersion"];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@;%@;%@", v0, v1, v2];
  v4 = OSString_string;
  OSString_string = v3;
}

- (id)hardwareString
{
  if (hardwareString_once != -1)
  {
    dispatch_once(&hardwareString_once, &__block_literal_global_58);
  }

  v3 = hardwareString_productType;

  return v3;
}

uint64_t __30__MSMSPlatform_hardwareString__block_invoke()
{
  hardwareString_productType = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

- (id)stringForSysctlKey:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 256;
  if (sysctlbyname([a3 UTF8String], v7, &v6, 0, 0))
  {
    v3 = @"UNKNOWN";
  }

  else
  {
    v7[v6 - 1] = 0;
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)OSVersion
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 operatingSystemVersionString];

  return v3;
}

- (id)UDID
{
  if (UDID_once != -1)
  {
    dispatch_once(&UDID_once, &__block_literal_global_52);
  }

  v3 = UDID_UDID;

  return v3;
}

uint64_t __20__MSMSPlatform_UDID__block_invoke()
{
  UDID_UDID = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

- (Class)deletePluginClass
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [(MSMSPlatform *)self pluginClass];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "deleterPluginClass principalClass %{public}@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (Class)subscriberPluginClass
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [(MSMSPlatform *)self pluginClass];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "subscriberPluginClass principalClass %{public}@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (Class)publisherPluginClass
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [(MSMSPlatform *)self pluginClass];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "publisherPluginClass principalClass %{public}@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (Class)pluginClass
{
  if (pluginClass_onceToken != -1)
  {
    dispatch_once(&pluginClass_onceToken, &__block_literal_global_43);
  }

  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:pluginClass_pluginPath];
  v3 = [v2 principalClass];

  return v3;
}

void __27__MSMSPlatform_pluginClass__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = [@"/System/Library/MediaStreamPlugins" stringByAppendingPathComponent:@"PhotoStreamsPlugin.mediastream"];
  v1 = pluginClass_pluginPath;
  pluginClass_pluginPath = v0;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = 138543362;
    v4 = pluginClass_pluginPath;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Loading Photo Streams plugin from %{public}@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (id)pathMediaStreamDir
{
  if (pathMediaStreamDir_once != -1)
  {
    dispatch_once(&pathMediaStreamDir_once, &__block_literal_global_34);
  }

  v3 = pathMediaStreamDir_path;

  return v3;
}

void __34__MSMSPlatform_pathMediaStreamDir__block_invoke()
{
  v3 = [MEMORY[0x277CCACA8] MSMSUserDirectory];
  v0 = [v3 stringByAppendingPathComponent:@"Library"];
  v1 = [v0 stringByAppendingPathComponent:@"MediaStream"];
  v2 = pathMediaStreamDir_path;
  pathMediaStreamDir_path = v1;
}

- (void)logFile:(const char *)a3 func:(const char *)a4 line:(int)a5 facility:(int)a6 level:(int)a7 format:(id)a8 args:(char *)a9
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = a8;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unexpected call to legacy logging method, please switch to os_log(): %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_rereadDefaults
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MSPerfLogLevel", @"com.apple.mediastream", &keyExistsAndHasValidFormat);
  v9 = 0;
  v4 = CFPreferencesGetAppIntegerValue(@"MSPerfOutputLevel", @"com.apple.mediastream", &v9);
  isPerfLoggingEnabled = self->_isPerfLoggingEnabled;
  if (!keyExistsAndHasValidFormat || AppIntegerValue < 0)
  {
    if (v9)
    {
      v7 = v4 < 0;
    }

    else
    {
      v7 = 1;
    }

    v6 = !v7;
  }

  else
  {
    v6 = 1;
  }

  self->_isPerfLoggingEnabled = v6;
  if (v6 != isPerfLoggingEnabled)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"MSPlatformPerformanceLoggingSettingDidChange" object:self];
  }
}

- (void)logFacility:(int)a3 level:(int)a4 format:(id)a5 args:(char *)a6
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = a5;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unexpected call to legacy logging method, please switch to os_log(): %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (__CFString)_facilityStringForFacility:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_2798A4DB0[a3];
  }
}

- (MSMSPlatform)init
{
  v12.receiver = self;
  v12.super_class = MSMSPlatform;
  v2 = [(MSMSPlatform *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    objc_initWeak(&location, v2);
    out_token = 0;
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__MSMSPlatform_init__block_invoke;
    handler[3] = &unk_2798A4D90;
    objc_copyWeak(&v9, &location);
    notify_register_dispatch("com.apple.managedconfiguration.defaultsdidchange", &out_token, v5, handler);

    [(MSMSPlatform *)v2 _rereadDefaults];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __20__MSMSPlatform_init__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Re-reading defaults.", v3, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rereadDefaults];
}

+ (id)thePlatform
{
  if (thePlatform_once != -1)
  {
    dispatch_once(&thePlatform_once, &__block_literal_global_211);
  }

  v3 = thePlatform_platform;

  return v3;
}

uint64_t __27__MSMSPlatform_thePlatform__block_invoke()
{
  thePlatform_platform = objc_alloc_init(MSMSPlatform);

  return MEMORY[0x2821F96F8]();
}

@end