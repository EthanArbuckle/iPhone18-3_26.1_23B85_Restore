@interface FPDAppMonitor
- (FPDAppMonitor)initWithServer:(id)server;
- (FPDServer)server;
- (id)_appMetadataIfMonitoringIsNeeded:(id)needed;
- (id)_updateDefaultProviderDomainID;
- (id)listOfPlaceholderApps;
- (int)_registerForNotification:(id)notification handler:(id)handler;
- (void)_didChangeDefaultSaveLocationInUserDefaults;
- (void)_didChangeListOfProviders;
- (void)_didChangeLocale:(id)locale;
- (void)_didRegisterApps:(id)apps;
- (void)_didUnregisterApps:(id)apps;
- (void)_populateListOfMonitoredApps;
- (void)_updateDefaultProviderByAppBundleID;
- (void)dumpStateTo:(id)to;
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

- (FPDAppMonitor)initWithServer:(id)server
{
  serverCopy = server;
  if (serverCopy)
  {
    v15.receiver = self;
    v15.super_class = FPDAppMonitor;
    v5 = [(FPDAppMonitor *)&v15 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_server, serverCopy);
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] %@ stop monitoring app updates", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dumpStateTo:(id)to
{
  v24[1] = *MEMORY[0x1E69E9840];
  toCopy = to;
  [toCopy write:@"apps monitor "];
  isMonitoring = [(FPDAppMonitor *)self isMonitoring];
  if (isMonitoring)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (isMonitoring)
  {
    v7 = @"active";
  }

  else
  {
    v7 = @"not-active";
  }

  [toCopy startFgColor:v6 attr:2];
  [toCopy write:v7];
  [toCopy reset];
  [toCopy write:@"\n"];
  [toCopy write:@"-----------------------------------------------------\n"];
  appRegistry = [(FPDAppMonitor *)self appRegistry];
  listOfMonitoredApps = [appRegistry listOfMonitoredApps];

  [toCopy startFgColor:7 attr:2];
  [toCopy write:{@"%lu", objc_msgSend(listOfMonitoredApps, "count")}];
  [toCopy reset];
  [toCopy write:@" apps monitored"];
  if ([listOfMonitoredApps count])
  {
    [toCopy write:@":\n"];
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"bundleID" ascending:1];
    v24[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v12 = [listOfMonitoredApps sortedArrayUsingDescriptors:v11];

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

          [toCopy write:{@" - %@:\n", *(*(&v19 + 1) + 8 * v17++)}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [toCopy write:@"\n"];
  }

  else
  {
    [toCopy write:@".\n\n"];
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
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__FPDAppMonitor_listOfPlaceholderApps__block_invoke;
  v6[3] = &unk_1E83BF738;
  v6[4] = &v7;
  [defaultWorkspace enumerateBundlesOfType:3 block:v6];
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

- (id)_appMetadataIfMonitoringIsNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (neededCopy && ([neededCopy supportsOpenInPlace] && (objc_msgSend(v5, "fileSharingEnabled") & 1) != 0 || (objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", @"UISupportsDocumentBrowser"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForInfoDictionaryKey:ofClass:", @"UISupportsDocumentBrowser", objc_opt_class()), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6, v8)))
  {
    defaultProviderByAppBundleID = self->_defaultProviderByAppBundleID;
    bundleIdentifier = [v5 bundleIdentifier];
    v11 = [(NSDictionary *)defaultProviderByAppBundleID objectForKeyedSubscript:bundleIdentifier];

    v12 = [objc_alloc(MEMORY[0x1E69672B0]) initWithAppProxy:v5 providerDomainID:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)_registerForNotification:(id)notification handler:(id)handler
{
  notificationCopy = notification;
  out_token = -1;
  notificationCopy2 = notification;
  handlerCopy = handler;
  LODWORD(notificationCopy) = notify_register_dispatch([notificationCopy UTF8String], &out_token, self->_notificationQueue, handlerCopy);

  if (notificationCopy)
  {
    return -1;
  }

  else
  {
    return out_token;
  }
}

- (void)_didRegisterApps:(id)apps
{
  v23 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  if ([(FPDAppMonitor *)self isMonitoring])
  {
    section = __fp_create_section();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDAppMonitor _didRegisterApps:?];
    }

    userInfo = [appsCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"bundleIDs"];

    array = [MEMORY[0x1E695DF70] array];
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
            [array addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(FPAppRegistry *)selfCopy->_appRegistry addApps:array];
    objc_sync_exit(selfCopy);

    __fp_leave_section_Debug();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_didUnregisterApps:(id)apps
{
  appsCopy = apps;
  if ([(FPDAppMonitor *)self isMonitoring])
  {
    __fp_create_section();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDAppMonitor _didUnregisterApps:];
    }

    userInfo = [appsCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"bundleIDs"];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(FPAppRegistry *)selfCopy->_appRegistry removeAppsWithBundleIDs:v7];
    objc_sync_exit(selfCopy);

    __fp_leave_section_Debug();
  }
}

- (void)_didChangeLocale:(id)locale
{
  v28 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  if ([(FPDAppMonitor *)self isMonitoring])
  {
    v19 = localeCopy;
    section = __fp_create_section();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDAppMonitor _didChangeLocale:?];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    obj = &selfCopy->super.isa;
    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    listOfMonitoredApps = [(FPAppRegistry *)selfCopy->_appRegistry listOfMonitoredApps];
    v8 = [listOfMonitoredApps countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(listOfMonitoredApps);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          bundleID = [v11 bundleID];
          v13 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:bundleID];
          localizedName = [v13 localizedName];
          if (localizedName)
          {
            displayName = [v11 displayName];
            v16 = [displayName isEqualToString:localizedName];

            if ((v16 & 1) == 0)
            {
              v17 = [v11 copy];
              [v17 setDisplayName:localizedName];
              [array addObject:v17];
            }
          }
        }

        v8 = [listOfMonitoredApps countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    [obj[5] addApps:array];
    objc_sync_exit(obj);

    __fp_leave_section_Debug();
    localeCopy = v19;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_didChangeListOfProviders
{
  OUTLINED_FUNCTION_3(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] ┏%llx did change list of providers", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didChangeDefaultSaveLocationInUserDefaults
{
  OUTLINED_FUNCTION_3(self, *MEMORY[0x1E69E9840]);
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
  extensionManager = [WeakRetained extensionManager];
  providerDomainsByID = [extensionManager providerDomainsByID];

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
          v11 = [providerDomainsByID objectForKeyedSubscript:v10];
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_defaultProviderByAppBundleID, v3);
    objc_sync_exit(selfCopy);
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