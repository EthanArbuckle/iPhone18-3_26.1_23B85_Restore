@interface HBXHealthAppPluginFactory
+ (id)_createPluginAddDataViewControllerProvidingFromPluginBundle:(id)a3;
+ (id)_createPluginAppDelegateFromPluginBundle:(id)a3;
+ (id)_createPluginDataListDataProviderProvidingFromPluginBundle:(id)a3;
+ (id)_loadBundleForPluginPath:(id)a3;
+ (id)_loadPluginBundleForDisplayType:(id)a3;
+ (id)_makeDataListViewControllerProvidingForDisplayType:(id)a3;
+ (id)_pluginPathForDisplayType:(id)a3;
+ (id)_pluginsDirectoryPath;
+ (id)makeDataListViewControllerForHealthStore:(id)a3 displayType:(id)a4 predicate:(id)a5;
@end

@implementation HBXHealthAppPluginFactory

+ (id)makeDataListViewControllerForHealthStore:(id)a3 displayType:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [HBXHealthAppPluginFactory _makeDataListViewControllerProvidingForDisplayType:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 makeDataListViewControllerForHealthStore:v7 displayType:v8 predicate:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_makeDataListViewControllerProvidingForDisplayType:(id)a3
{
  v3 = [a1 _loadPluginBundleForDisplayType:a3];
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

+ (id)_loadPluginBundleForDisplayType:(id)a3
{
  v3 = [a1 _pluginPathForDisplayType:a3];
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

+ (id)_pluginPathForDisplayType:(id)a3
{
  v4 = [a3 displayTypeIdentifier];
  if (v4 == 257)
  {
    v5 = @"VisionHealthAppPlugin.healthplugin";
    goto LABEL_5;
  }

  if (v4 == 273)
  {
    v5 = @"MedicationsHealthAppPlugin.healthplugin";
LABEL_5:
    v6 = [a1 _pluginsDirectoryPath];
    v7 = [v6 stringByAppendingPathComponent:v5];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)_pluginsDirectoryPath
{
  v2 = +[HBXHealthAppPluginUtilities defaultUtilities];
  v3 = [v2 feedItemPluginsPath];

  return v3;
}

+ (id)_loadBundleForPluginPath:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];
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
      v18 = v3;
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

+ (id)_createPluginAddDataViewControllerProvidingFromPluginBundle:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [HBXHealthAppPluginFactory _createPluginAppDelegateFromPluginBundle:v3];
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
      v13 = [v3 bundleIdentifier];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_error_impl(&dword_251E85000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Plugin app delegate does not conform to %{public}@: %{public}@", &v14, 0x20u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_createPluginAppDelegateFromPluginBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 infoDictionary];
  v6 = [v5 objectForKeyedSubscript:@"PluginAppDelegateClass"];

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
      [(HBXHealthAppPluginFactory *)a1 _createPluginAppDelegateFromPluginBundle:v4];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)_createPluginDataListDataProviderProvidingFromPluginBundle:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [HBXHealthAppPluginFactory _createPluginAppDelegateFromPluginBundle:v3];
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
      v13 = [v3 bundleIdentifier];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
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