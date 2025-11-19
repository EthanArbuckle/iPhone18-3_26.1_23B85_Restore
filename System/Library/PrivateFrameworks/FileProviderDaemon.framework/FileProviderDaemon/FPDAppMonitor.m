@interface FPDAppMonitor
- (FPDAppMonitor)initWithServer:(id)a3;
- (FPDServer)server;
- (id)_appMetadataIfMonitoringIsNeeded:(id)a3;
- (id)_updateDefaultProviderDomainID;
- (id)listOfPlaceholderApps;
- (int)_registerForNotification:(id)a3 handler:(id)a4;
- (void)_didChangeDefaultSaveLocationInUserDefaults;
- (void)_didChangeListOfProviders;
- (void)_didChangeLocale:(id)a3;
- (void)_didRegisterApps:(id)a3;
- (void)_didUnregisterApps:(id)a3;
- (void)_populateListOfMonitoredApps;
- (void)_updateDefaultProviderByAppBundleID;
- (void)dumpStateTo:(id)a3;
- (void)listOfPlaceholderApps;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation FPDAppMonitor

- (void)startMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] %@ start monitoring app updates", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (FPDAppMonitor)initWithServer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = FPDAppMonitor;
    v5 = [(FPDAppMonitor *)&v15 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_server, v4);
      v7 = objc_alloc_init(FPDAppRegistry);
      appRegistry = v6->_appRegistry;
      v6->_appRegistry = &v7->super;

      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
      v11 = dispatch_queue_create("com.apple.FileProvider.app-monitor", v10);
      notificationQueue = v6->_notificationQueue;
      v6->_notificationQueue = v11;

      *&v6->_didChangeProvidersToken = -1;
    }

    self = v6;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] %@ stop monitoring app updates", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dumpStateTo:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 write:@"apps monitor "];
  v5 = [(FPDAppMonitor *)self isMonitoring];
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = @"active";
  }

  else
  {
    v7 = @"not-active";
  }

  [v4 startFgColor:v6 attr:2];
  [v4 write:v7];
  [v4 reset];
  [v4 write:@"\n"];
  [v4 write:@"-----------------------------------------------------\n"];
  v8 = [(FPDAppMonitor *)self appRegistry];
  v9 = [v8 listOfMonitoredApps];

  [v4 startFgColor:7 attr:2];
  [v4 write:{@"%lu", objc_msgSend(v9, "count")}];
  [v4 reset];
  [v4 write:@" apps monitored"];
  if ([v9 count])
  {
    [v4 write:@":\n"];
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"bundleID" ascending:1];
    v24[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v12 = [v9 sortedArrayUsingDescriptors:v11];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v4 write:{@" - %@:\n", *(*(&v19 + 1) + 8 * v17++)}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [v4 write:@"\n"];
  }

  else
  {
    [v4 write:@".\n\n"];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)listOfPlaceholderApps
{
  section = __fp_create_section();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [FPDAppMonitor listOfPlaceholderApps];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = objc_opt_new();
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__FPDAppMonitor_listOfPlaceholderApps__block_invoke;
  v6[3] = &unk_1E83BF738;
  v6[4] = &v7;
  [v3 enumerateBundlesOfType:3 block:v6];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);
  __fp_leave_section_Debug();

  return v4;
}

void __38__FPDAppMonitor_listOfPlaceholderApps__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 bundleIdentifier];
  [v2 addObject:v3];
}

- (void)_populateListOfMonitoredApps
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] ┏%llx populate list of monitored apps", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__FPDAppMonitor__populateListOfMonitoredApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = [*(a1 + 32) _appMetadataIfMonitoringIsNeeded:v5];
    if (v6)
    {
      [*(a1 + 40) addObject:v6];
    }
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__FPDAppMonitor__populateListOfMonitoredApps__block_invoke_cold_1();
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_appMetadataIfMonitoringIsNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 supportsOpenInPlace] && (objc_msgSend(v5, "fileSharingEnabled") & 1) != 0 || (objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", @"UISupportsDocumentBrowser"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForInfoDictionaryKey:ofClass:", @"UISupportsDocumentBrowser", objc_opt_class()), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6, v8)))
  {
    defaultProviderByAppBundleID = self->_defaultProviderByAppBundleID;
    v10 = [v5 bundleIdentifier];
    v11 = [(NSDictionary *)defaultProviderByAppBundleID objectForKeyedSubscript:v10];

    v12 = [objc_alloc(MEMORY[0x1E69672B0]) initWithAppProxy:v5 providerDomainID:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)_registerForNotification:(id)a3 handler:(id)a4
{
  v5 = a3;
  out_token = -1;
  v7 = a3;
  v8 = a4;
  LODWORD(v5) = notify_register_dispatch([v5 UTF8String], &out_token, self->_notificationQueue, v8);

  if (v5)
  {
    return -1;
  }

  else
  {
    return out_token;
  }
}

- (void)_didRegisterApps:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(FPDAppMonitor *)self isMonitoring])
  {
    section = __fp_create_section();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDAppMonitor _didRegisterApps:?];
    }

    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"bundleIDs"];

    v8 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:{*(*(&v17 + 1) + 8 * v12), v17}];
          v14 = [(FPDAppMonitor *)self _appMetadataIfMonitoringIsNeeded:v13];
          if (v14)
          {
            [v8 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v15 = self;
    objc_sync_enter(v15);
    [(FPAppRegistry *)v15->_appRegistry addApps:v8];
    objc_sync_exit(v15);

    __fp_leave_section_Debug();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_didUnregisterApps:(id)a3
{
  v4 = a3;
  if ([(FPDAppMonitor *)self isMonitoring])
  {
    __fp_create_section();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDAppMonitor _didUnregisterApps:];
    }

    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"bundleIDs"];

    v8 = self;
    objc_sync_enter(v8);
    [(FPAppRegistry *)v8->_appRegistry removeAppsWithBundleIDs:v7];
    objc_sync_exit(v8);

    __fp_leave_section_Debug();
  }
}

- (void)_didChangeLocale:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(FPDAppMonitor *)self isMonitoring])
  {
    v19 = v4;
    section = __fp_create_section();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDAppMonitor _didChangeLocale:?];
    }

    v6 = self;
    objc_sync_enter(v6);
    obj = &v6->super.isa;
    v21 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(FPAppRegistry *)v6->_appRegistry listOfMonitoredApps];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 bundleID];
          v13 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v12];
          v14 = [v13 localizedName];
          if (v14)
          {
            v15 = [v11 displayName];
            v16 = [v15 isEqualToString:v14];

            if ((v16 & 1) == 0)
            {
              v17 = [v11 copy];
              [v17 setDisplayName:v14];
              [v21 addObject:v17];
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    [obj[5] addApps:v21];
    objc_sync_exit(obj);

    __fp_leave_section_Debug();
    v4 = v19;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_didChangeListOfProviders
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] ┏%llx did change list of providers", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didChangeDefaultSaveLocationInUserDefaults
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] ┏%llx did change default save location", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_updateDefaultProviderDomainID
{
  v21 = *MEMORY[0x1E69E9840];
  if (_updateDefaultProviderDomainID_onceToken[0] != -1)
  {
    [FPDAppMonitor _updateDefaultProviderDomainID];
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  v4 = [WeakRetained extensionManager];
  v5 = [v4 providerDomainsByID];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [0 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(0);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 hasPrefix:@"com.apple.CloudDocs.iCloudDriveFileProvider"])
        {
          v11 = [v5 objectForKeyedSubscript:v10];
          v12 = v11;
          if (v11 && ([v11 isEnabled] & 1) != 0)
          {
            [MEMORY[0x1E696AEC0] setFp_defaultProviderDomainID:v10];
            v13 = v10;

            goto LABEL_16;
          }
        }
      }

      v7 = [0 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [MEMORY[0x1E696AEC0] setFp_defaultProviderDomainID:_updateDefaultProviderDomainID_localStorageProviderID];
  v13 = _updateDefaultProviderDomainID_localStorageProviderID;
LABEL_16:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __47__FPDAppMonitor__updateDefaultProviderDomainID__block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] fp_providerDomainIDFromProviderID:@"com.apple.FileProvider.LocalStorage" domainIdentifier:*MEMORY[0x1E6967178]];
  v1 = _updateDefaultProviderDomainID_localStorageProviderID;
  _updateDefaultProviderDomainID_localStorageProviderID = v0;
}

- (void)_updateDefaultProviderByAppBundleID
{
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.DocumentManager.defaults"];
  v3 = [v5 dictionaryForKey:@"DOCDefaultFileProviderIdentifierKey"];
  if (v3)
  {
    v4 = self;
    objc_sync_enter(v4);
    objc_storeStrong(&v4->_defaultProviderByAppBundleID, v3);
    objc_sync_exit(v4);
  }
}

- (FPDServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (void)listOfPlaceholderApps
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] ┏%llx check for app placeholders", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__FPDAppMonitor__populateListOfMonitoredApps__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_ERROR, "[ERROR] LaunchService provided proxy %@ for an app enumeration", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_didRegisterApps:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] ┏%llx did register apps", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didUnregisterApps:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] ┏%llx did unregister apps", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_didChangeLocale:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] ┏%llx did change locale", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end