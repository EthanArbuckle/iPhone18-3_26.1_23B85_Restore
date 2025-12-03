@interface MSMSPlatform
+ (id)thePlatform;
- (BOOL)_mayPerformFileTransfer;
- (BOOL)personIDUsesProductionPushEnvironment:(id)environment;
- (Class)deletePluginClass;
- (Class)pluginClass;
- (Class)publisherPluginClass;
- (Class)subscriberPluginClass;
- (MSMSPlatform)init;
- (__CFString)_facilityStringForFacility:(int)facility;
- (id)OSString;
- (id)OSVersion;
- (id)UDID;
- (id)_accountForPersonID:(id)d;
- (id)appBundleInfoString;
- (id)authTokenForPersonID:(id)d;
- (id)baseURLForPersonID:(id)d;
- (id)contentURLForPersonID:(id)d;
- (id)fullNameFromFirstName:(id)name lastName:(id)lastName;
- (id)hardwareString;
- (id)pathMediaStreamDir;
- (id)socketOptions;
- (id)stringForSysctlKey:(id)key;
- (void)_rereadDefaults;
- (void)didDetectUnrecoverableCondition;
- (void)logFacility:(int)facility level:(int)level format:(id)format args:(char *)args;
- (void)logFile:(const char *)file func:(const char *)func line:(int)line facility:(int)facility level:(int)level format:(id)format args:(char *)args;
@end

@implementation MSMSPlatform

- (id)fullNameFromFirstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  if ([nameCopy length] && objc_msgSend(lastNameCopy, "length"))
  {
    lastNameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", nameCopy, lastNameCopy];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v9 = [lastNameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    goto LABEL_9;
  }

  if ([nameCopy length])
  {
    v10 = nameCopy;
LABEL_8:
    v9 = v10;
    goto LABEL_9;
  }

  if ([lastNameCopy length])
  {
    v10 = lastNameCopy;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (BOOL)personIDUsesProductionPushEnvironment:(id)environment
{
  v3 = [(MSMSPlatform *)self _accountForPersonID:environment];
  v4 = [v3 propertiesForDataclass:*MEMORY[0x277CB9158]];
  v5 = [v4 objectForKey:@"apsEnv"];
  v6 = [v5 isEqualToString:@"production"];

  return v6;
}

- (id)contentURLForPersonID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(MSMSPlatform *)self _accountForPersonID:dCopy];
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
      v11 = [v10 URLByAppendingPathComponent:dCopy];
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

- (id)baseURLForPersonID:(id)d
{
  dCopy = d;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"MSForcedBaseURL"];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  }

  else
  {
    v8 = [(MSMSPlatform *)self _accountForPersonID:dCopy];
    v9 = MEMORY[0x277CBEBC0];
    v10 = [v8 propertiesForDataclass:*MEMORY[0x277CB9158]];
    v11 = [v10 objectForKey:@"url"];
    v7 = [v9 URLWithString:v11];
  }

  return v7;
}

- (id)authTokenForPersonID:(id)d
{
  dCopy = d;
  v5 = [(MSMSPlatform *)self _accountForPersonID:dCopy];
  v6 = v5;
  if (v5)
  {
    aa_authToken = [v5 aa_authToken];
    if (aa_authToken)
    {
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Missing authToken. Requesting", v10, 2u);
    }

    v8 = +[MSAuthenticationManager sharedManager];
    [v8 didEncounterAuthenticationFailureForPersonID:dCopy];
  }

  aa_authToken = 0;
LABEL_7:

  return aa_authToken;
}

- (id)_accountForPersonID:(id)d
{
  dCopy = d;
  accountStore = [(MSMSPlatform *)self accountStore];
  v6 = [accountStore aa_appleAccountWithPersonID:dCopy];

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
  isPaused = [v4 isPaused];

  v6 = *MEMORY[0x277D85DE8];
  return v3 & (isPaused ^ 1);
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

- (id)stringForSysctlKey:(id)key
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 256;
  if (sysctlbyname([key UTF8String], v7, &v6, 0, 0))
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
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];

  return operatingSystemVersionString;
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
  pluginClass = [(MSMSPlatform *)self pluginClass];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = pluginClass;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "deleterPluginClass principalClass %{public}@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];

  return pluginClass;
}

- (Class)subscriberPluginClass
{
  v7 = *MEMORY[0x277D85DE8];
  pluginClass = [(MSMSPlatform *)self pluginClass];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = pluginClass;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "subscriberPluginClass principalClass %{public}@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];

  return pluginClass;
}

- (Class)publisherPluginClass
{
  v7 = *MEMORY[0x277D85DE8];
  pluginClass = [(MSMSPlatform *)self pluginClass];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = pluginClass;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "publisherPluginClass principalClass %{public}@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];

  return pluginClass;
}

- (Class)pluginClass
{
  if (pluginClass_onceToken != -1)
  {
    dispatch_once(&pluginClass_onceToken, &__block_literal_global_43);
  }

  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:pluginClass_pluginPath];
  principalClass = [v2 principalClass];

  return principalClass;
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

- (void)logFile:(const char *)file func:(const char *)func line:(int)line facility:(int)facility level:(int)level format:(id)format args:(char *)args
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    formatCopy = format;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MSPlatformPerformanceLoggingSettingDidChange" object:self];
  }
}

- (void)logFacility:(int)facility level:(int)level format:(id)format args:(char *)args
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    formatCopy = format;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unexpected call to legacy logging method, please switch to os_log(): %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (__CFString)_facilityStringForFacility:(int)facility
{
  if (facility > 4)
  {
    return 0;
  }

  else
  {
    return off_2798A4DB0[facility];
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