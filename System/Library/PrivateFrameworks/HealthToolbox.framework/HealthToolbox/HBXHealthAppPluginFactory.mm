@interface HBXHealthAppPluginFactory
+ (id)_createPluginAddDataViewControllerProvidingFromPluginBundle:(id)bundle;
+ (id)_createPluginAppDelegateFromPluginBundle:(id)bundle;
+ (id)_createPluginDataListDataProviderProvidingFromPluginBundle:(id)bundle;
+ (id)_loadBundleForPluginPath:(id)path;
+ (id)_loadPluginBundleForDisplayType:(id)type;
+ (id)_makeDataListViewControllerProvidingForDisplayType:(id)type;
+ (id)_pluginPathForDisplayType:(id)type;
+ (id)_pluginsDirectoryPath;
+ (id)makeDataListViewControllerForHealthStore:(id)store displayType:(id)type predicate:(id)predicate;
@end

@implementation HBXHealthAppPluginFactory

+ (id)makeDataListViewControllerForHealthStore:(id)store displayType:(id)type predicate:(id)predicate
{
  storeCopy = store;
  typeCopy = type;
  predicateCopy = predicate;
  v10 = [HBXHealthAppPluginFactory _makeDataListViewControllerProvidingForDisplayType:typeCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 makeDataListViewControllerForHealthStore:storeCopy displayType:typeCopy predicate:predicateCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_makeDataListViewControllerProvidingForDisplayType:(id)type
{
  v3 = [self _loadPluginBundleForDisplayType:type];
  if (v3)
  {
    v4 = [HBXHealthAppPluginFactory _createPluginAddDataViewControllerProvidingFromPluginBundle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_loadPluginBundleForDisplayType:(id)type
{
  v3 = [self _pluginPathForDisplayType:type];
  if (v3)
  {
    v4 = [HBXHealthAppPluginFactory _loadBundleForPluginPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_pluginPathForDisplayType:(id)type
{
  displayTypeIdentifier = [type displayTypeIdentifier];
  if (displayTypeIdentifier == 257)
  {
    v5 = @"VisionHealthAppPlugin.healthplugin";
    goto LABEL_5;
  }

  if (displayTypeIdentifier == 273)
  {
    v5 = @"MedicationsHealthAppPlugin.healthplugin";
LABEL_5:
    _pluginsDirectoryPath = [self _pluginsDirectoryPath];
    v7 = [_pluginsDirectoryPath stringByAppendingPathComponent:v5];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)_pluginsDirectoryPath
{
  v2 = +[HBXHealthAppPluginUtilities defaultUtilities];
  feedItemPluginsPath = [v2 feedItemPluginsPath];

  return feedItemPluginsPath;
}

+ (id)_loadBundleForPluginPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:pathCopy];
  v5 = v4;
  if (v4)
  {
    v14 = 0;
    v6 = [v4 loadAndReturnError:&v14];
    v7 = v14;
    if (v6)
    {
      v8 = v5;
      goto LABEL_10;
    }

    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = pathCopy;
      v19 = 2114;
      v20 = v7;
      v13 = v12;
      _os_log_error_impl(&dword_251E85000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load plugin bundle at path %{public}@ with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[HBXHealthAppPluginFactory _loadBundleForPluginPath:];
    }
  }

  v8 = 0;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_createPluginAddDataViewControllerProvidingFromPluginBundle:(id)bundle
{
  v20 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v4 = [HBXHealthAppPluginFactory _createPluginAppDelegateFromPluginBundle:bundleCopy];
  v5 = &unk_28646C340;
  if ([v4 conformsToProtocol:v5])
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = NSStringFromProtocol(v5);
      bundleIdentifier = [bundleCopy bundleIdentifier];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = bundleIdentifier;
      _os_log_error_impl(&dword_251E85000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Plugin app delegate does not conform to %{public}@: %{public}@", &v14, 0x20u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_createPluginAppDelegateFromPluginBundle:(id)bundle
{
  bundleCopy = bundle;
  infoDictionary = [bundleCopy infoDictionary];
  v6 = [infoDictionary objectForKeyedSubscript:@"PluginAppDelegateClass"];

  if (v6)
  {
    v7 = objc_alloc_init(NSClassFromString(v6));
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HBXHealthAppPluginFactory *)self _createPluginAppDelegateFromPluginBundle:bundleCopy];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)_createPluginDataListDataProviderProvidingFromPluginBundle:(id)bundle
{
  v20 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v4 = [HBXHealthAppPluginFactory _createPluginAppDelegateFromPluginBundle:bundleCopy];
  v5 = &unk_28646C3F0;
  if ([v4 conformsToProtocol:v5])
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = NSStringFromProtocol(v5);
      bundleIdentifier = [bundleCopy bundleIdentifier];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = bundleIdentifier;
      _os_log_error_impl(&dword_251E85000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Plugin app delegate does not conform to %{public}@: %{public}@", &v14, 0x20u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)_loadBundleForPluginPath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_251E85000, v1, v2, "%{public}@: Failed to create plugin bundle at path: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_createPluginAppDelegateFromPluginBundle:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v11 = [a2 bundleIdentifier];
  OUTLINED_FUNCTION_0(&dword_251E85000, v4, v5, "%{public}@: Plugin does not declare an app delegate in its Info.plist: %{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end