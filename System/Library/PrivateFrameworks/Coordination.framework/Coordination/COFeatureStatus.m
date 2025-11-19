@interface COFeatureStatus
+ (BOOL)isDistributedTimersForHH1Enabled;
+ (BOOL)isFastFoldEnabled;
+ (BOOL)isIPDiscoveryDiffingEnabled;
@end

@implementation COFeatureStatus

+ (BOOL)isFastFoldEnabled
{
  if (isFastFoldEnabled_onceToken != -1)
  {
    +[COFeatureStatus isFastFoldEnabled];
  }

  return isFastFoldEnabled_enabled;
}

void __36__COFeatureStatus_isFastFoldEnabled__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  isFastFoldEnabled_enabled = _os_feature_enabled_impl();
  v0 = +[CODefaults coordinationBundleID];
  v1 = [CODefaults userDefaultsForIdentifer:v0];

  v2 = [v1 objectForKey:@"fastFold"];
  v3 = v2;
  if (v2)
  {
    if (isFastFoldEnabled_enabled == 1)
    {
      v4 = [v2 BOOLValue];
    }

    else
    {
      v4 = 0;
    }

    isFastFoldEnabled_enabled = v4;
    v5 = COLogForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109632;
      v11 = isFastFoldEnabled_enabled;
      v12 = 1024;
      v13 = _os_feature_enabled_impl();
      v14 = 1024;
      v15 = [v3 BOOLValue];
      v6 = "Fast fold feature status = %d. FF = %d, defaults = %d";
      v7 = v5;
      v8 = 20;
      goto LABEL_9;
    }
  }

  else
  {
    v5 = COLogForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109376;
      v11 = isFastFoldEnabled_enabled;
      v12 = 1024;
      v13 = _os_feature_enabled_impl();
      v6 = "Fast fold feature status = %d. FF = %d";
      v7 = v5;
      v8 = 14;
LABEL_9:
      _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isIPDiscoveryDiffingEnabled
{
  if (isIPDiscoveryDiffingEnabled_onceToken != -1)
  {
    +[COFeatureStatus isIPDiscoveryDiffingEnabled];
  }

  return isIPDiscoveryDiffingEnabled_enabled;
}

void __46__COFeatureStatus_isIPDiscoveryDiffingEnabled__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  isIPDiscoveryDiffingEnabled_enabled = _os_feature_enabled_impl();
  v0 = +[CODefaults coordinationBundleID];
  v1 = [CODefaults userDefaultsForIdentifer:v0];

  v2 = [v1 objectForKey:@"ipDiffing"];
  v3 = v2;
  if (v2)
  {
    if (isIPDiscoveryDiffingEnabled_enabled == 1)
    {
      v4 = [v2 BOOLValue];
    }

    else
    {
      v4 = 0;
    }

    isIPDiscoveryDiffingEnabled_enabled = v4;
    v5 = COLogForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109632;
      v11 = isIPDiscoveryDiffingEnabled_enabled;
      v12 = 1024;
      v13 = _os_feature_enabled_impl();
      v14 = 1024;
      v15 = [v3 BOOLValue];
      v6 = "IP Diffing feature status = %d. FF = %d, defaults = %d";
      v7 = v5;
      v8 = 20;
      goto LABEL_9;
    }
  }

  else
  {
    v5 = COLogForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109376;
      v11 = isIPDiscoveryDiffingEnabled_enabled;
      v12 = 1024;
      v13 = _os_feature_enabled_impl();
      v6 = "IP Diffing feature status = %d. FF = %d";
      v7 = v5;
      v8 = 14;
LABEL_9:
      _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isDistributedTimersForHH1Enabled
{
  v2 = +[COFeatureStatus isDistributedTimersEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

@end