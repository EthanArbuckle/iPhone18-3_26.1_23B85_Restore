@interface MIBUTestPreferences
+ (id)sharedInstance;
- (BOOL)disableNarrativeAuthentication;
- (BOOL)enablePipelineMode;
- (BOOL)enterLPMAfterUpdateComplete;
- (BOOL)factorySUCertExist;
- (BOOL)inBoxUpdateMode;
- (BOOL)skipCertDeletion;
- (BOOL)skipDaemonDisable;
- (BOOL)skipDeviceIdentityVerification;
- (BOOL)skipWiFiAssociation;
- (BOOL)useAppleConnect;
- (BOOL)useLiveTatsu;
- (BOOL)usePandoraNonProdCerts;
- (BOOL)usePythonLoopbackServer;
- (BOOL)useSrNmForDeviceKey;
- (id)assetPath;
- (id)factorySUCertPath;
- (id)factorySUKeyIsSEP;
- (id)factorySUKeyPath;
- (id)fakeTatsuPayloadPath;
- (id)getValueFromTestPreferencesForKey:(id)key;
- (id)initialBuddySetupComplete;
- (id)isActivated;
- (id)isOnLockScreen;
- (id)iseTrustCertName;
- (id)iseTrustCertPaths;
- (id)nfcIdleTime;
- (id)pandoraKeyServerURL;
- (id)softwareUpdateAssetPath;
- (id)softwareUpdateBrainAssetPath;
- (id)softwareUpdateBrainXMLPath;
- (id)softwareUpdateXMLPath;
- (id)statusServerHostAddress;
- (id)statusServerPortNumber;
- (id)tcpUnicastAddress;
- (id)tcpUnicastPort;
- (id)usePlistForDeviceIKM;
- (id)useScriptForDeviceKey;
- (id)wifiPassword;
- (id)wifiSSID;
- (unint64_t)standbyIdleTimeout;
@end

@implementation MIBUTestPreferences

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MIBUTestPreferences sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __37__MIBUTestPreferences_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(MIBUTestPreferences);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)useLiveTatsu
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UseLiveTatsu"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)fakeTatsuPayloadPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FakeTatsuPayloadPath"];
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

- (BOOL)useAppleConnect
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UseAppleConnect"];
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

- (BOOL)useSrNmForDeviceKey
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UseSrNmForDeviceKey"];
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

- (id)useScriptForDeviceKey
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UseScriptForDeviceKey"];
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

- (id)usePlistForDeviceIKM
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UsePlistForDeviceIKM"];
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

- (id)pandoraKeyServerURL
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"PandoraKeyServerURL"];
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

- (id)assetPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"AssetPath"];
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

- (id)tcpUnicastAddress
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"TCPUnicastAddress"];
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

- (id)tcpUnicastPort
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"TCPUnicastPort"];
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

- (BOOL)enablePipelineMode
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"EnablePipelineMode"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)skipDeviceIdentityVerification
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipDeviceIdentityVerification"];
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

- (BOOL)disableNarrativeAuthentication
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"DisableNarrativeAuthentication"];
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

- (id)nfcIdleTime
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"NFCIdleTime"];
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

- (id)isActivated
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"IsActivated"];
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

- (BOOL)factorySUCertExist
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FactorySUCertExist"];
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

- (BOOL)inBoxUpdateMode
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"InBoxUpdateMode"];
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

- (id)initialBuddySetupComplete
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"InitialBuddySetupComplete"];
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

- (id)isOnLockScreen
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"IsOnLockScreen"];
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

- (id)factorySUCertPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FactorySUCertPath"];
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

- (id)factorySUKeyPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FactorySUKeyPath"];
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

- (id)softwareUpdateBrainXMLPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SoftwareUpdateBrainXMLPath"];
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

- (id)softwareUpdateBrainAssetPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SoftwareUpdateBrainAssetPath"];
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

- (id)softwareUpdateXMLPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SoftwareUpdateXMLPath"];
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

- (id)softwareUpdateAssetPath
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SoftwareUpdateAssetPath"];
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

- (id)factorySUKeyIsSEP
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"FactorySUKeyIsSEP"];
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

- (id)iseTrustCertPaths
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"ISETrustCertPaths"];
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

- (id)iseTrustCertName
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"ISETrustCertName"];
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

- (BOOL)usePandoraNonProdCerts
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UsePandoraNonProdCerts"];
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

- (id)wifiSSID
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"WiFiSSID"];
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

- (id)wifiPassword
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"WiFiPassword"];
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

- (BOOL)skipWiFiAssociation
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipWiFiAssociation"];
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

- (BOOL)skipDaemonDisable
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipDaemonDisable"];
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

- (BOOL)skipCertDeletion
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipCertDeletion"];
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

- (id)statusServerHostAddress
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"StatusServerHostAddress"];
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

- (id)statusServerPortNumber
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"StatusServerPortNumber"];
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

- (BOOL)usePythonLoopbackServer
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"UsePythonLoopbackServer"];
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

- (BOOL)enterLPMAfterUpdateComplete
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"EnterLPMAfterUpdateComplete"];
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

- (unint64_t)standbyIdleTimeout
{
  v2 = [(MIBUTestPreferences *)self getValueFromTestPreferencesForKey:@"StandbyIdleTimeout"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)getValueFromTestPreferencesForKey:(id)key
{
  keyCopy = key;
  v4 = *MEMORY[0x277CBF020];
  v5 = *MEMORY[0x277CBF030];
  if (!CFPreferencesSynchronize(@"com.apple.MobileInBoxUpdater.test", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]))
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUTestPreferences getValueFromTestPreferencesForKey:];
    }

    v6 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUTestPreferences getValueFromTestPreferencesForKey:v6];
    }
  }

  v7 = CFPreferencesCopyValue(keyCopy, @"com.apple.MobileInBoxUpdater.test", v4, v5);

  return v7;
}

void __57__MIBUTestPreferences_getValueFromTestPreferencesForKey___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __43__MIBUDefaultPreferences_setObject_forKey___block_invoke_cold_1();
  }
}

- (void)getValueFromTestPreferencesForKey:(void *)a1 .cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_error_impl(&dword_259ABF000, v1, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to synchronize with CFPreferences.", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

@end