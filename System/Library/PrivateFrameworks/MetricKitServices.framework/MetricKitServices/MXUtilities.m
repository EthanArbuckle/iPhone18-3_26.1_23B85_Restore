@interface MXUtilities
+ (BOOL)isAppAnalyticsEnabled;
+ (BOOL)isAppInstalledForBundleID:(id)a3;
+ (id)containerPath;
+ (id)getServicesAllowlist;
+ (id)getServicesDateFormatter;
+ (id)modelIdentifier;
+ (id)osVersion;
+ (id)platformArchitecture;
+ (id)regionFormat;
@end

@implementation MXUtilities

+ (id)containerPath
{
  if (containerPath_onceToken != -1)
  {
    +[MXUtilities containerPath];
  }

  v3 = containerPath_systemContainerUrl;

  return [v3 path];
}

void __28__MXUtilities_containerPath__block_invoke()
{
  v0 = container_system_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    NSLog(&cfstr_SystemContaine.isa, v0);
    v2 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
    v3 = containerPath_systemContainerUrl;
    containerPath_systemContainerUrl = v2;

    free(v1);
  }

  else
  {
    NSLog(&cfstr_ErrorGettingSy.isa, 1);
  }
}

+ (id)getServicesAllowlist
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MXUtilities_getServicesAllowlist__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (getServicesAllowlist_once_token != -1)
  {
    dispatch_once(&getServicesAllowlist_once_token, block);
  }

  v2 = getServicesAllowlist_d;

  return v2;
}

void __35__MXUtilities_getServicesAllowlist__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 pathForResource:@"services-privacy-allowdeny" ofType:@"plist"];

  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  v4 = getServicesAllowlist_d;
  getServicesAllowlist_d = v3;
}

+ (BOOL)isAppAnalyticsEnabled
{
  if (isAppAnalyticsEnabled_onceToken != -1)
  {
    +[MXUtilities isAppAnalyticsEnabled];
  }

  return isAppAnalyticsEnabled_appAnalyticsEnabled;
}

uint64_t __36__MXUtilities_isAppAnalyticsEnabled__block_invoke()
{
  result = AppAnalyticsEnabled();
  isAppAnalyticsEnabled_appAnalyticsEnabled = result;
  return result;
}

+ (BOOL)isAppInstalledForBundleID:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v9];

  v6 = 0;
  if (!v9)
  {
    v7 = [v5 applicationState];
    v6 = [v7 isInstalled];
  }

  return v6;
}

+ (id)osVersion
{
  v2 = _CFCopySupplementalVersionDictionary();
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [v2 objectForKeyedSubscript:@"ProductName"];
    v5 = [v2 objectForKeyedSubscript:@"ProductVersion"];
    v6 = [v2 objectForKeyedSubscript:@"ProductBuildVersion"];
    v7 = [v3 initWithFormat:@"%@ %@ (%@)", v4, v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)regionFormat
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:*MEMORY[0x277CBE690]];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXUtilities regionFormat];
      }

      v6 = @"N/A";
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[MXUtilities regionFormat];
    }

    v6 = @"N/A";
  }

  return v6;
}

+ (id)modelIdentifier
{
  if (modelIdentifier_onceToken != -1)
  {
    +[MXUtilities modelIdentifier];
  }

  v3 = modelIdentifier_modelIdentifier;

  return v3;
}

void __30__MXUtilities_modelIdentifier__block_invoke()
{
  v2 = MobileGestalt_get_current_device();
  v0 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
  v1 = modelIdentifier_modelIdentifier;
  modelIdentifier_modelIdentifier = v0;
}

+ (id)platformArchitecture
{
  if (platformArchitecture_onceToken != -1)
  {
    +[MXUtilities platformArchitecture];
  }

  v3 = platformArchitecture_architecture;

  return v3;
}

void __35__MXUtilities_platformArchitecture__block_invoke()
{
  if (!platformArchitecture_architecture)
  {
    MEMORY[0x259C9C1C0]();
    FamilyName = CSArchitectureGetFamilyName();
    if (FamilyName)
    {
      platformArchitecture_architecture = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:FamilyName];

      MEMORY[0x2821F96F8]();
    }
  }
}

+ (id)getServicesDateFormatter
{
  if (getServicesDateFormatter_once_token != -1)
  {
    +[MXUtilities getServicesDateFormatter];
  }

  v3 = getServicesDateFormatter_servicesDateFormatter;

  return v3;
}

void __39__MXUtilities_getServicesDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v0 setLocale:v2];
  [v0 setDateFormat:@"yyyy-MM-dd"];
  v1 = getServicesDateFormatter_servicesDateFormatter;
  getServicesDateFormatter_servicesDateFormatter = v0;
}

@end