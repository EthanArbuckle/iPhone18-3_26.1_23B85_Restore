@interface CDMFeatureFlags
+ (BOOL)isLogNluEnabled;
+ (BOOL)isSSUCacheUpdateOnEveryRequestEnabled;
+ (BOOL)isSSUEnableIndexingEnabled;
+ (BOOL)isSSUEnabled;
@end

@implementation CDMFeatureFlags

+ (BOOL)isSSUEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    if ([a1 isCDMClientXPCEnabled])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315138;
        v8 = "+[CDMFeatureFlags isSSUEnabled]";
        _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: Mismatched feature flags: SiriNL/SiriMiniSSU cannot be enabled while SiriNL/isCDMClientXPCEnabled is disabled. Forcing SiriNL/SiriMiniSSU=off.", &v7, 0xCu);
      }

      LOBYTE(v3) = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (BOOL)isSSUCacheUpdateOnEveryRequestEnabled
{
  v2 = [a1 isSSUEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

+ (BOOL)isSSUEnableIndexingEnabled
{
  v2 = [a1 isSSUEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

+ (BOOL)isLogNluEnabled
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return +[CDMUserDefaultsUtils isWriteDebugToDiskEnabled];
}

@end