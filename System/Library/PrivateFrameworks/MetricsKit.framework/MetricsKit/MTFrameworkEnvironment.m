@interface MTFrameworkEnvironment
+ (void)initialize;
+ (void)withEnvironment:(id)a3 execute:(id)a4;
- (BOOL)useCloudKitSandbox;
- (NSString)localDataPath;
- (id)dateOfBirthComponents;
- (id)hostProcessBundleIdentifier;
- (id)idCache;
- (id)metricsKitBundleIdentifier;
- (id)secretStore;
- (id)valueForEntitlement:(id)a3;
- (void)setLocalDataPath:(id)a3;
@end

@implementation MTFrameworkEnvironment

- (id)hostProcessBundleIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x277CCAC38] processInfo];
    v5 = [v6 processName];
  }

  return v5;
}

- (id)idCache
{
  v2 = self;
  objc_sync_enter(v2);
  idCache = v2->_idCache;
  if (!idCache)
  {
    v4 = objc_alloc_init(MTIDCache);
    v5 = v2->_idCache;
    v2->_idCache = v4;

    idCache = v2->_idCache;
  }

  v6 = idCache;
  objc_sync_exit(v2);

  return v6;
}

- (id)secretStore
{
  v2 = self;
  objc_sync_enter(v2);
  secretStore = v2->_secretStore;
  if (!secretStore)
  {
    v4 = NSClassFromString(&cfstr_Mtidcomposites.isa);
    v5 = NSClassFromString(&cfstr_Mtidxpcsecrets.isa);
    v6 = [(MTFrameworkEnvironment *)v2 valueForEntitlement:@"com.apple.security.exception.mach-lookup.global-name"];
    if (([v6 containsObject:@"com.apple.AMPIDService"] & (v5 != 0)) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = objc_alloc_init(v7);
    v9 = v2->_secretStore;
    v2->_secretStore = v8;

    secretStore = v2->_secretStore;
  }

  v10 = secretStore;
  objc_sync_exit(v2);

  return v10;
}

+ (void)withEnvironment:(id)a3 execute:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedEnvironment];
  [a1 setSharedEnvironment:v7];

  v6[2](v6);
  [a1 setSharedEnvironment:v8];
}

+ (void)initialize
{
  v2 = objc_opt_new();
  v3 = _sharedEnvironment;
  _sharedEnvironment = v2;

  _isInternalBuild = MGGetBoolAnswer();
}

- (void)setLocalDataPath:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasPrefix:@"file://"])
  {
    v5 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_258F4B000, v5, OS_LOG_TYPE_ERROR, "MetricsKit: Expected a path but got a full url for MTFrameworkEnvironment.setLocalDataPath. Please remove file:// from %@", &v11, 0xCu);
    }

    v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    v7 = [v6 path];

    v4 = v7;
  }

  v8 = [v4 stringByReplacingOccurrencesOfString:@"//" withString:@"/"];

  localDataPath = self->_localDataPath;
  self->_localDataPath = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)localDataPath
{
  localDataPath = self->_localDataPath;
  if (!localDataPath)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__MTFrameworkEnvironment_localDataPath__block_invoke;
    block[3] = &unk_2798CD868;
    block[4] = self;
    if (localDataPath_onceToken != -1)
    {
      dispatch_once(&localDataPath_onceToken, block);
    }

    localDataPath = localDataPath_defaultDataFolder;
  }

  v3 = localDataPath;

  return v3;
}

void __39__MTFrameworkEnvironment_localDataPath__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v3 = [v2 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v9];
  v4 = v9;
  v5 = [*(a1 + 32) metricsKitBundleIdentifier];
  v6 = [v3 URLByAppendingPathComponent:v5];

  v7 = [v6 path];
  v8 = localDataPath_defaultDataFolder;
  localDataPath_defaultDataFolder = v7;
}

- (id)valueForEntitlement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
    if (error)
    {
      v7 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = v3;
        v13 = 2112;
        v14 = error;
        _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to read entitlement %@ error: %@", buf, 0x16u);
      }

      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)useCloudKitSandbox
{
  v3 = [(MTFrameworkEnvironment *)self isInternalBuild];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 valueForKey:@"MTMetricsKitContainerEnvironment"];

    if (!v5)
    {
      v5 = [(MTFrameworkEnvironment *)self valueForEntitlement:@"com.apple.developer.icloud-container-environment"];
    }

    v6 = [v5 isEqualToString:@"Development"];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (id)metricsKitBundleIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Mtmetricskit.isa)];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)dateOfBirthComponents
{
  v15 = *MEMORY[0x277D85DE8];
  if (HealthKitFramework_sOnce != -1)
  {
    [MTFrameworkEnvironment(HealthKit) dateOfBirthComponents];
  }

  if (!HealthKitFramework_sHandle || (NSClassFromString(&cfstr_Hkhealthstore.isa), v2 = objc_claimAutoreleasedReturnValue(), !v2))
  {
    v3 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "MetricsKit: HKHealthStore class is not found.";
      v8 = v3;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_15:
      _os_log_impl(&dword_258F4B000, v8, v9, v7, buf, 2u);
    }

LABEL_16:
    v4 = 0;
    goto LABEL_17;
  }

  if (([v2 isHealthDataAvailable] & 1) == 0)
  {
    v3 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "MetricsKit: HealthKit health data is not available.";
      v8 = v3;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v3 = objc_alloc_init(v2);
  v12 = 0;
  v4 = [v3 dateOfBirthComponentsWithError:&v12];
  v5 = v12;
  if (v5)
  {
    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_ERROR, "MetricsKit: Date of birth retrieval from HealthKit failed with error: %@", buf, 0xCu);
    }
  }

LABEL_17:
  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

@end