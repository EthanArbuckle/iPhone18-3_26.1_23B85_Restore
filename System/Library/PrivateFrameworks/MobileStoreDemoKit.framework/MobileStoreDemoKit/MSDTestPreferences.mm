@interface MSDTestPreferences
+ (id)sharedInstance;
- (BOOL)bailOnStashedStagingRestoreFailure;
- (BOOL)disableParallelProcessing;
- (BOOL)disassociateWiFiBeforeCheckIn;
- (BOOL)enableAIModelAutoUpdate;
- (BOOL)enablePeerDemoService;
- (BOOL)fakeActivationDemoBit;
- (BOOL)mockForBetterTogetherDemo;
- (BOOL)pauseContentUpdateOnError;
- (BOOL)skipMarkAsNotDemo;
- (BOOL)skipVerifyHashBeforeStaging;
- (double)appUsagePollingInterval;
- (double)caLogsUploadInterval;
- (double)cachingHubRetryInterval;
- (id)LSMeasurementsFilePath;
- (id)contentSyncTimeoutInterval;
- (id)demoUnitServerURL;
- (id)getValueFromTestPreferencesForKey:(id)key;
- (id)mockAccountSettingsFile;
- (id)mockOSUpdateRequestFile;
- (id)mockPeerProtocolVersion;
- (id)pressDemoTestTarget;
- (id)pressDemoXCTestProductsPath;
- (id)screenSaverIdleDelay;
- (int64_t)concurrentDownloadOperation;
- (int64_t)concurrentDownloadRequest;
- (int64_t)concurrentSession;
- (int64_t)deviceActivationFlag;
- (int64_t)findMyHubRetryDelay;
- (int64_t)storePickerUIMode;
- (unsigned)rebootDelayForStaging;
- (unsigned)systemAppPollingInterval;
- (unsigned)systemAppTimeoutInterval;
- (unsigned)timeShowingFatalError;
@end

@implementation MSDTestPreferences

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[MSDTestPreferences sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __36__MSDTestPreferences_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MSDTestPreferences);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)fakeActivationDemoBit
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"FakeActivationDemoBit"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)demoUnitServerURL
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"DemoUnitServerURL"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)findMyHubRetryDelay
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"FMHRetryDelay"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (unsigned)rebootDelayForStaging
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"RebootDelayForStaging"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unsigned)timeShowingFatalError
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"TimeShowingFatalError"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (BOOL)disableParallelProcessing
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"DisableParallelProcessing"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)pauseContentUpdateOnError
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"PauseContentUpdateOnError"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)bailOnStashedStagingRestoreFailure
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"BailOnStashedStagingRestoreFailure"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)concurrentDownloadRequest
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ConcurrentDownloadRequest"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)concurrentDownloadOperation
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ConcurrentDownloadOperation"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)concurrentSession
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ConcurrentSession"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (double)cachingHubRetryInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"CachingHubRetryInterval"];
  integerValue = 0.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v2 integerValue];
    }
  }

  return integerValue;
}

- (double)caLogsUploadInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"CALogsUploadInterval"];
  integerValue = 0.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v2 integerValue];
    }
  }

  return integerValue;
}

- (double)appUsagePollingInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"AppUsagePollingInterval"];
  integerValue = 0.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v2 integerValue];
    }
  }

  return integerValue;
}

- (unsigned)systemAppTimeoutInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"SystemAppTimeoutInterval"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unsigned)systemAppPollingInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"SystemAppPollingInterval"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (int64_t)deviceActivationFlag
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"DeviceActivationFlag"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (BOOL)mockForBetterTogetherDemo
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"MockForBetterTogetherDemo"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)mockAccountSettingsFile
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"MockAccountSettingsFile"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mockOSUpdateRequestFile
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"MockOSUpdateRequestFile"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)screenSaverIdleDelay
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ScreenSaverIdleDelay"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mockPeerProtocolVersion
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"MockPeerProtocolVersion"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)enableAIModelAutoUpdate
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"EnableAIModelAutoUpdate"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)contentSyncTimeoutInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ContentSyncTimeoutInterval"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)storePickerUIMode
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"StorePickerUIMode"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  return integerValue;
}

- (BOOL)skipMarkAsNotDemo
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipMarkAsNotDemo"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)enablePeerDemoService
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"EnablePeerDemoService"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)pressDemoXCTestProductsPath
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"PressDemoXCTestProductsPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pressDemoTestTarget
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"PressDemoTestTarget"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)LSMeasurementsFilePath
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"LSMeasurementsFilePath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)disassociateWiFiBeforeCheckIn
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"DisassociateWiFiBeforeCheckIn"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)skipVerifyHashBeforeStaging
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipVerifyHashBeforeStaging"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)getValueFromTestPreferencesForKey:(id)key
{
  keyCopy = key;
  v4 = *MEMORY[0x277CBF020];
  v5 = *MEMORY[0x277CBF030];
  if (!CFPreferencesSynchronize(@"com.apple.MobileStoreDemo.test", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]))
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MSDTestPreferences getValueFromTestPreferencesForKey:v6];
    }
  }

  v7 = CFPreferencesCopyValue(keyCopy, @"com.apple.MobileStoreDemo.test", v4, v5);

  return v7;
}

@end