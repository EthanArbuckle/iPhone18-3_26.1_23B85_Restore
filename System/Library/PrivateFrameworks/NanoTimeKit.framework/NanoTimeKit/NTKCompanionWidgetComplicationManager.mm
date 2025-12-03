@interface NTKCompanionWidgetComplicationManager
+ (id)instanceForDevice:(id)device;
- (BOOL)isComplicationAvailable:(id)available forFamilies:(id)families;
- (BOOL)vendorExistsForContainerBundleIdentifier:(id)identifier;
- (BOOL)vendorExistsWithDescriptor:(id)descriptor;
- (NTKCompanionWidgetComplicationManager)initWithDevice:(id)device;
- (id)_lock_sampleTemplateForWidget:(id)widget family:(int64_t)family;
- (id)infoForDescriptor:(id)descriptor;
- (id)sampleTemplateForWidget:(id)widget family:(int64_t)family;
- (void)_fetchInstalledApps;
- (void)_lock_updateAppNames;
- (void)_lock_updateAppNamesForClientIdentifer:(id)identifer;
- (void)_lock_updateRecordsForAllClients;
- (void)_lock_updateRecordsForClientIdentifier:(id)identifier;
- (void)_setAppLookup:(id)lookup;
- (void)_setup;
- (void)_updateInstalledApps;
- (void)_updateLoaded;
- (void)complicationCollection:(id)collection didUpdateComplicationDescriptorsForClient:(id)client;
- (void)complicationCollection:(id)collection didUpdateSampleTemplateForClient:(id)client descriptor:(id)descriptor;
- (void)complicationCollectionDidLoad:(id)load;
- (void)complicationCollectionDidReload:(id)reload;
- (void)enumerateDescriptorsCompatibleWithFamilies:(id)families locationStyle:(unint64_t)style withBlock:(id)block;
- (void)performAfterLoad:(id)load;
@end

@implementation NTKCompanionWidgetComplicationManager

+ (id)instanceForDevice:(id)device
{
  deviceCopy = device;
  v4 = deviceCopy;
  if (deviceCopy)
  {
    pairingID = [deviceCopy pairingID];
    if (pairingID)
    {
      os_unfair_lock_lock(&instanceForDevice__lock);
      v6 = instanceForDevice__uuidToProvider;
      if (!instanceForDevice__uuidToProvider)
      {
        v7 = objc_opt_new();
        v8 = instanceForDevice__uuidToProvider;
        instanceForDevice__uuidToProvider = v7;

        v6 = instanceForDevice__uuidToProvider;
      }

      v9 = [v6 objectForKeyedSubscript:pairingID];
      if (!v9)
      {
        v9 = [[NTKCompanionWidgetComplicationManager alloc] initWithDevice:v4];
        [instanceForDevice__uuidToProvider setObject:v9 forKeyedSubscript:pairingID];
      }

      os_unfair_lock_unlock(&instanceForDevice__lock);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NTKCompanionWidgetComplicationManager)initWithDevice:(id)device
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = NTKCompanionWidgetComplicationManager;
  v6 = [(NTKCompanionWidgetComplicationManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_opt_new();
    lock_clientToRecords = v7->_lock_clientToRecords;
    v7->_lock_clientToRecords = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0x10000 valueOptions:517 capacity:0];
    lock_descriptorToRecord = v7->_lock_descriptorToRecord;
    v7->_lock_descriptorToRecord = v10;

    v12 = objc_opt_new();
    lock_appLookup = v7->_lock_appLookup;
    v7->_lock_appLookup = v12;

    array = [MEMORY[0x277CBEB18] array];
    lock_loadCompletionBlocks = v7->_lock_loadCompletionBlocks;
    v7->_lock_loadCompletionBlocks = array;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__fetchInstalledApps name:@"NTKCompanion3rdPartyAppInstallStartedNotification" object:0];
    [defaultCenter addObserver:v7 selector:sel__fetchInstalledApps name:@"NTKSystemAppStateChangedNotification" object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _handleAppConduitApplicationsChangedNotification_1, *MEMORY[0x277CEAF60], v7, 0);
    [(NTKCompanionWidgetComplicationManager *)v7 _setup];
  }

  return v7;
}

- (void)performAfterLoad:(id)load
{
  loadCopy = load;
  v5 = loadCopy;
  if (loadCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__NTKCompanionWidgetComplicationManager_performAfterLoad___block_invoke;
    aBlock[3] = &unk_27877E960;
    v6 = loadCopy;
    v11 = v6;
    v7 = _Block_copy(aBlock);
    os_unfair_lock_lock(&self->_lock);
    if (self->_loaded)
    {
      os_unfair_lock_unlock(&self->_lock);
      v7[2](v7);
    }

    else
    {
      lock_loadCompletionBlocks = self->_lock_loadCompletionBlocks;
      v9 = _Block_copy(v6);
      [(NSMutableArray *)lock_loadCompletionBlocks addObject:v9];

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

void __58__NTKCompanionWidgetComplicationManager_performAfterLoad___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = *(*(a1 + 32) + 16);

    v2();
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__NTKCompanionWidgetComplicationManager_performAfterLoad___block_invoke_2;
    block[3] = &unk_27877E960;
    v4 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_setup
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [NTKCompanionComplicationCollectionManager sharedWidgetComplicationCollectionForDevice:self->_device];
  lock_complicationCollection = self->_lock_complicationCollection;
  self->_lock_complicationCollection = v3;
  v5 = v3;

  [(NTKComplicationCollection *)self->_lock_complicationCollection addObserver:self];
  os_unfair_lock_unlock(&self->_lock);

  [(NTKCompanionWidgetComplicationManager *)self _fetchInstalledApps];
}

- (void)enumerateDescriptorsCompatibleWithFamilies:(id)families locationStyle:(unint64_t)style withBlock:(id)block
{
  blockCopy = block;
  familiesCopy = families;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_lock_clientToRecords copy];
  os_unfair_lock_unlock(&self->_lock);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __108__NTKCompanionWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke;
  v12[3] = &unk_278783BE0;
  v13 = v9;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = v9;
  [familiesCopy enumerateObjectsUsingBlock:v12];
}

void __108__NTKCompanionWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __108__NTKCompanionWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke_2;
  v5[3] = &unk_278787350;
  v7 = v3;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __108__NTKCompanionWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __108__NTKCompanionWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke_3;
  v5[3] = &unk_278787328;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = v4;
  [a3 enumerateObjectsUsingBlock:v5];
}

void __108__NTKCompanionWidgetComplicationManager_enumerateDescriptorsCompatibleWithFamilies_locationStyle_withBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v6 = [v15 widgetDescriptor];
  v7 = [v6 containerBundleIdentifier];

  v8 = _NTKHiddenWidgetVendingBundleIdentifiers();
  v9 = [v15 appName];
  if (v9)
  {
  }

  else if (([v8 containsObject:v7] & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = [v15 supportedClockKitFamilies];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v12 = [v10 containsObject:v11];

  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = [v15 widgetDescriptor];
    (*(v13 + 16))(v13, v14, a4);
  }

LABEL_6:
}

- (id)infoForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_lock_descriptorToRecord objectForKey:descriptorCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    goto LABEL_7;
  }

  appName = [v5 appName];
  displayName = [v5 displayName];
  if (!appName)
  {
    v8 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NTKCompanionWidgetComplicationManager *)descriptorCopy infoForDescriptor:v5, v8];
    }

    appName = [descriptorCopy containerBundleIdentifier];
  }

  v9 = [[NTKWidgetComplicationInfo alloc] initWithAppName:appName displayName:displayName];

  if (!v9)
  {
LABEL_7:
    v10 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NTKCompanionWidgetComplicationManager infoForDescriptor:];
    }

    v11 = +[NTKCompanionWidgetFallbackPreviewProvider sharedInstance];
    v9 = [v11 fallbackInfoForDescriptor:descriptorCopy];

    if (!v9)
    {
      v12 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NTKCompanionWidgetComplicationManager infoForDescriptor:];
      }

      os_unfair_lock_lock(&self->_lock);
      lock_appLookup = self->_lock_appLookup;
      containerBundleIdentifier = [descriptorCopy containerBundleIdentifier];
      v15 = [(NSDictionary *)lock_appLookup objectForKeyedSubscript:containerBundleIdentifier];
      applicationName = [v15 applicationName];

      os_unfair_lock_unlock(&self->_lock);
      v17 = applicationName;
      v9 = [[NTKWidgetComplicationInfo alloc] initWithAppName:v17 displayName:v17];
    }
  }

  return v9;
}

- (BOOL)vendorExistsWithDescriptor:(id)descriptor
{
  v36 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_lock);
  lock_clientToRecords = self->_lock_clientToRecords;
  containerBundleIdentifier = [descriptorCopy containerBundleIdentifier];
  v7 = [(NSMutableDictionary *)lock_clientToRecords objectForKeyedSubscript:containerBundleIdentifier];

  os_unfair_lock_unlock(&self->_lock);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      widgetDescriptor = [v12 widgetDescriptor];
      extensionBundleIdentifier = [widgetDescriptor extensionBundleIdentifier];
      extensionBundleIdentifier2 = [descriptorCopy extensionBundleIdentifier];
      if ([extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2])
      {
        v28 = v12;
        widgetDescriptor2 = [v12 widgetDescriptor];
        kind = [widgetDescriptor2 kind];
        [descriptorCopy kind];
        v18 = v9;
        v19 = v10;
        v21 = v20 = descriptorCopy;
        v30 = [kind isEqualToString:v21];

        descriptorCopy = v20;
        v10 = v19;
        v9 = v18;

        if (v30)
        {
          widgetDescriptor3 = [v28 widgetDescriptor];
          containerBundleIdentifier2 = [widgetDescriptor3 containerBundleIdentifier];

          v25 = _NTKHiddenWidgetVendingBundleIdentifiers();
          appName = [v28 appName];
          if (appName)
          {

            goto LABEL_16;
          }

          if ([v25 containsObject:containerBundleIdentifier2])
          {
LABEL_16:
            v22 = 1;
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_18;
        }
      }

      else
      {
      }

      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = 0;
LABEL_18:

  return v22;
}

- (BOOL)vendorExistsForContainerBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_clientToRecords objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = [v5 count] != 0;

  return self;
}

- (BOOL)isComplicationAvailable:(id)available forFamilies:(id)families
{
  v41 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  familiesCopy = families;
  os_unfair_lock_lock(&self->_lock);
  lock_clientToRecords = self->_lock_clientToRecords;
  v27 = availableCopy;
  containerBundleIdentifier = [availableCopy containerBundleIdentifier];
  v9 = [(NSMutableDictionary *)lock_clientToRecords objectForKeyedSubscript:containerBundleIdentifier];

  os_unfair_lock_unlock(&self->_lock);
  v24 = [MEMORY[0x277CBEB98] setWithArray:familiesCopy];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v26 = *v37;
    v23 = v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        widgetDescriptor = [v12 widgetDescriptor];
        extensionBundleIdentifier = [widgetDescriptor extensionBundleIdentifier];
        extensionBundleIdentifier2 = [v27 extensionBundleIdentifier];
        if ([extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2])
        {
          widgetDescriptor2 = [v12 widgetDescriptor];
          kind = [widgetDescriptor2 kind];
          kind2 = [v27 kind];
          v19 = [kind isEqualToString:kind2];

          if (v19)
          {
            v32 = 0;
            v33 = &v32;
            v34 = 0x2020000000;
            v35 = 0;
            supportedClockKitFamilies = [v12 supportedClockKitFamilies];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v29[0] = __77__NTKCompanionWidgetComplicationManager_isComplicationAvailable_forFamilies___block_invoke;
            v29[1] = &unk_27877F780;
            v30 = v24;
            v31 = &v32;
            [supportedClockKitFamilies enumerateObjectsUsingBlock:v28];

            LOBYTE(supportedClockKitFamilies) = *(v33 + 24);
            _Block_object_dispose(&v32, 8);
            if (supportedClockKitFamilies)
            {
              LOBYTE(v10) = 1;
              goto LABEL_13;
            }
          }
        }

        else
        {
        }
      }

      v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

LABEL_13:

  return v10;
}

uint64_t __77__NTKCompanionWidgetComplicationManager_isComplicationAvailable_forFamilies___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_updateLoaded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_loadCompletionBlocks copy];
  if (!self->_lock_appsLoaded)
  {
    self->_loaded = 0;
LABEL_10:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_11;
  }

  loaded = self->_loaded;
  lock_collectionLoaded = self->_lock_collectionLoaded;
  self->_loaded = lock_collectionLoaded;
  if (loaded == lock_collectionLoaded || lock_collectionLoaded == 0)
  {
    goto LABEL_10;
  }

  [(NSMutableArray *)self->_lock_loadCompletionBlocks removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v7 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKCompanionWidgetComplicationManager loaded", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NTKCompanionWidgetComplicationManager__updateLoaded__block_invoke;
  v8[3] = &unk_27877E438;
  v8[4] = self;
  v9 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v8);

LABEL_11:
}

void __54__NTKCompanionWidgetComplicationManager__updateLoaded__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKCompanionWidgetComplicationManagerDidLoadNotification" object:*(a1 + 32)];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NTKWidgetComplicationProviderComplicationsDidChange" object:*(a1 + 32)];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_lock_updateAppNames
{
  os_unfair_lock_assert_owner(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_lock_clientToRecords allKeys];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__NTKCompanionWidgetComplicationManager__lock_updateAppNames__block_invoke;
  v4[3] = &unk_27877DED0;
  v4[4] = self;
  [allKeys enumerateObjectsUsingBlock:v4];
}

- (void)_lock_updateAppNamesForClientIdentifer:(id)identifer
{
  v18 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
  os_unfair_lock_assert_owner(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableDictionary *)self->_lock_clientToRecords objectForKeyedSubscript:identiferCopy, 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(NSDictionary *)self->_lock_appLookup objectForKeyedSubscript:identiferCopy];
        applicationName = [v11 applicationName];
        [v10 setAppName:applicationName];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_fetchInstalledApps
{
  v6 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_fetchingApps)
  {
    v3 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      lock_wantsAppFetch = self->_lock_wantsAppFetch;
      v5[0] = 67109120;
      v5[1] = lock_wantsAppFetch;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Attempted to fetch installed apps while already fetching installed apps! Deferring until after the first operation completes... (previously defered=%d)", v5, 8u);
    }

    self->_lock_wantsAppFetch = 1;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);

    [(NTKCompanionWidgetComplicationManager *)self _updateInstalledApps];
  }
}

- (void)_updateInstalledApps
{
  os_unfair_lock_lock(&self->_lock);
  *&self->_lock_fetchingApps = 1;
  os_unfair_lock_unlock(&self->_lock);
  pairingID = [(CLKDevice *)self->_device pairingID];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__53;
  v13[4] = __Block_byref_object_dispose__53;
  v14 = objc_opt_new();
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NTKCompanionWidgetComplicationManager__updateInstalledApps__block_invoke;
  block[3] = &unk_278780D18;
  block[4] = self;
  block[5] = v13;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__NTKCompanionWidgetComplicationManager__updateInstalledApps__block_invoke_2;
  v8[3] = &unk_278787378;
  v6 = pairingID;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  v11 = v13;
  [mEMORY[0x277CEAF80] enumerateInstalledApplicationsOnDeviceWithPairingID:v6 withBlock:v8];

  _Block_object_dispose(v13, 8);
}

void __61__NTKCompanionWidgetComplicationManager__updateInstalledApps__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    *buf = 134217984;
    v10 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Updated app records: %lu", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [*(*(*(a1 + 40) + 8) + 40) copy];
  [v4 _setAppLookup:v5];

  os_unfair_lock_lock((*(a1 + 32) + 60));
  v6 = *(a1 + 32);
  LODWORD(v4) = *(v6 + 59);
  *(v6 + 58) = 0;
  *(*(a1 + 32) + 59) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 60));
  if (v4 == 1)
  {
    v7 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Finished fetching apps, but beginning a backlogged refresh", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__NTKCompanionWidgetComplicationManager__updateInstalledApps__block_invoke_62;
    block[3] = &unk_27877DB10;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __61__NTKCompanionWidgetComplicationManager__updateInstalledApps__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 watchKitAppExtensionBundleID];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v5 bundleIdentifier];
    }

    v12 = v10;

    [*(*(*(a1 + 48) + 8) + 40) setObject:v5 forKeyedSubscript:v12];
  }

  else
  {
    if (v6)
    {
      v11 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __61__NTKCompanionWidgetComplicationManager__updateInstalledApps__block_invoke_2_cold_1(a1, v7, v11);
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  return 1;
}

- (void)_setAppLookup:(id)lookup
{
  lookupCopy = lookup;
  os_unfair_lock_lock(&self->_lock);
  lock_appLookup = self->_lock_appLookup;
  self->_lock_appLookup = lookupCopy;
  v6 = lookupCopy;

  [(NTKCompanionWidgetComplicationManager *)self _lock_updateAppNames];
  self->_lock_appsLoaded = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(NTKCompanionWidgetComplicationManager *)self _updateLoaded];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NTKCompanionWidgetComplicationManager__setAppLookup___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__NTKCompanionWidgetComplicationManager__setAppLookup___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKWidgetComplicationProviderComplicationsDidChange" object:*(a1 + 32)];
}

- (void)_lock_updateRecordsForClientIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NTKComplicationCollection *)self->_lock_complicationCollection complicationDescriptorsForClientIdentifier:identifierCopy];
  v6 = [v5 copy];

  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = objc_opt_new();
        [v13 setComplicationDescriptor:v12];
        widgetDescriptor = [v12 widgetDescriptor];
        [v13 setWidgetDescriptor:widgetDescriptor];

        supportedFamilies = [v12 supportedFamilies];
        v16 = [supportedFamilies copy];
        [v13 setSupportedClockKitFamilies:v16];

        displayName = [v12 displayName];
        [v13 setDisplayName:displayName];

        v18 = [(NSDictionary *)self->_lock_appLookup objectForKeyedSubscript:identifierCopy];
        applicationName = [v18 applicationName];
        [v13 setAppName:applicationName];

        [v7 addObject:v13];
        lock_descriptorToRecord = self->_lock_descriptorToRecord;
        widgetDescriptor2 = [v13 widgetDescriptor];
        [(NSMapTable *)lock_descriptorToRecord setObject:v13 forKey:widgetDescriptor2];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v22 = [v7 copy];
    [(NSMutableDictionary *)self->_lock_clientToRecords setObject:v22 forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_lock_clientToRecords removeObjectForKey:identifierCopy];
  }
}

- (void)_lock_updateRecordsForAllClients
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  clients = [(NTKComplicationCollection *)self->_lock_complicationCollection clients];
  v4 = [clients countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(clients);
        }

        [(NTKCompanionWidgetComplicationManager *)self _lock_updateRecordsForClientIdentifier:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [clients countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)complicationCollectionDidLoad:(id)load
{
  v4 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Complication collection did load", v6, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NTKCompanionWidgetComplicationManager *)self _lock_updateRecordsForAllClients];
  self->_lock_collectionLoaded = 1;
  os_unfair_lock_unlock(&self->_lock);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NTKCompanionWidgetComplicationManagerComplicationTemplatesDidChange" object:self];

  [(NTKCompanionWidgetComplicationManager *)self _updateLoaded];
}

- (void)complicationCollectionDidReload:(id)reload
{
  v4 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Complication collection did reload", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NTKCompanionWidgetComplicationManager *)self _lock_updateRecordsForAllClients];
  self->_lock_collectionLoaded = 1;
  os_unfair_lock_unlock(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NTKCompanionWidgetComplicationManager_complicationCollectionDidReload___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__NTKCompanionWidgetComplicationManager_complicationCollectionDidReload___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKWidgetComplicationProviderComplicationsDidChange" object:*(a1 + 32)];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NTKCompanionWidgetComplicationManagerComplicationTemplatesDidChange" object:*(a1 + 32)];
}

- (void)complicationCollection:(id)collection didUpdateSampleTemplateForClient:(id)client descriptor:(id)descriptor
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NTKCompanionWidgetComplicationManagerComplicationTemplatesDidChange" object:self];
}

- (void)complicationCollection:(id)collection didUpdateComplicationDescriptorsForClient:(id)client
{
  clientCopy = client;
  collectionCopy = collection;
  os_unfair_lock_lock(&self->_lock);
  lock_complicationCollection = self->_lock_complicationCollection;

  if (lock_complicationCollection == collectionCopy)
  {
    [(NTKCompanionWidgetComplicationManager *)self _lock_updateRecordsForClientIdentifier:clientCopy];
    os_unfair_lock_unlock(&self->_lock);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__NTKCompanionWidgetComplicationManager_complicationCollection_didUpdateComplicationDescriptorsForClient___block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __106__NTKCompanionWidgetComplicationManager_complicationCollection_didUpdateComplicationDescriptorsForClient___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKWidgetComplicationProviderComplicationsDidChange" object:*(a1 + 32)];
}

- (id)sampleTemplateForWidget:(id)widget family:(int64_t)family
{
  widgetCopy = widget;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NTKCompanionWidgetComplicationManager *)self _lock_sampleTemplateForWidget:widgetCopy family:family];
  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    v8 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NTKCompanionWidgetComplicationManager sampleTemplateForWidget:family:];
    }

    v9 = +[NTKCompanionWidgetFallbackPreviewProvider sharedInstance];
    v7 = [v9 fallbackSampleTemplateForDescriptor:widgetCopy family:family];
  }

  return v7;
}

- (id)_lock_sampleTemplateForWidget:(id)widget family:(int64_t)family
{
  widgetCopy = widget;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_collectionLoaded)
  {
    v7 = [(NSMapTable *)self->_lock_descriptorToRecord objectForKey:widgetCopy];
    if (v7)
    {
      lock_complicationCollection = self->_lock_complicationCollection;
      containerBundleIdentifier = [widgetCopy containerBundleIdentifier];
      complicationDescriptor = [v7 complicationDescriptor];
      containerBundleIdentifier2 = [widgetCopy containerBundleIdentifier];
      v12 = [(NTKComplicationCollection *)lock_complicationCollection sampleTemplateForClientIdentifier:containerBundleIdentifier descriptor:complicationDescriptor applicationID:containerBundleIdentifier2 family:family];

      if (v12)
      {
        goto LABEL_13;
      }

      v13 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NTKCompanionWidgetComplicationManager *)family _lock_sampleTemplateForWidget:widgetCopy family:v13];
      }
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NTKCompanionWidgetComplicationManager _lock_sampleTemplateForWidget:family:];
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NTKCompanionWidgetComplicationManager _lock_sampleTemplateForWidget:family:];
    }

    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (void)infoForDescriptor:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a2 appName];
  v7 = [a2 displayName];
  v8 = 138412802;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "Incomplete record for %@: %@ %@", &v8, 0x20u);
}

void __61__NTKCompanionWidgetComplicationManager__updateInstalledApps__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Couldn't fetch apps on device id %@: %@", &v4, 0x16u);
}

- (void)_lock_sampleTemplateForWidget:(NSObject *)a3 family:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = CLKComplicationFamilyDescription();
  OUTLINED_FUNCTION_0();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "NTKCompanionWidgetComplicationManager failed to find sample template for family=%@ descriptor=%@", v6, 0x16u);
}

@end