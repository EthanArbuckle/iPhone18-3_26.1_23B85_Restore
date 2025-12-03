@interface FSModuleHost
+ (id)defaultHost;
+ (id)installedExtensionPropertiesSync;
+ (id)installedExtensionsSync;
- (FSModuleHost)init;
- (FSModuleHost)initWithProbeList:(BOOL)list;
- (NSDictionary)currentExtensionsByIdentifier;
- (id)configurationForInstance:(id)instance ofBundle:(id)bundle;
- (id)currentExtensions;
- (id)extensionPointRecords;
- (id)extensionTypes;
- (id)loadEnabledList;
- (id)loadProbeOrderList;
- (id)moduleForBundleID:(id)d;
- (unsigned)isValidModuleIdentifier:(id)identifier withError:(id *)error;
- (void)_updateProviderListForFilteredFSModuleInstances:(id)instances;
- (void)_updateProviderListForMatchingExtensionRecords:(id)records;
- (void)addBundleToEnableModules:(id)modules;
- (void)forceSynchronousProviderUpdate;
- (void)loadModulesAndMonitor;
- (void)loadModulesFromEKit;
- (void)loadModulesFromLSAndMonitor;
- (void)observerDidObserveDatabaseChange:(id)change;
- (void)removeBundleFromEnabledModules:(id)modules;
- (void)saveEnabledList;
- (void)saveProbeOrderList;
- (void)setExtensions:(id)extensions;
- (void)setExtensionsByIdentifierLocked:(id)locked;
- (void)setExtensionsLocked:(id)locked;
@end

@implementation FSModuleHost

- (FSModuleHost)init
{
  v9.receiver = self;
  v9.super_class = FSModuleHost;
  v2 = [(FSModuleHost *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("FPDExtensionManager callback queue", v3);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v4;

    moduleOrder = v2->_moduleOrder;
    v2->_moduleOrder = 0;

    enabledModules = v2->_enabledModules;
    v2->_enabledModules = 0;
  }

  return v2;
}

- (void)setExtensionsLocked:(id)locked
{
  v4 = MEMORY[0x277CBEB38];
  lockedCopy = locked;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(lockedCopy, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__FSModuleHost_setExtensionsLocked___block_invoke;
  v12[3] = &unk_278FED338;
  v7 = v6;
  v13 = v7;
  [lockedCopy enumerateObjectsUsingBlock:v12];
  v8 = [lockedCopy copy];

  modules = self->_modules;
  self->_modules = v8;

  modulesByIdentifier = self->_modulesByIdentifier;
  self->_modulesByIdentifier = v7;
  v11 = v7;

  [(NSCondition *)self->_queryLock signal];
}

void __36__FSModuleHost_setExtensionsLocked___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [v3 bundleIdentifier];

    v3 = v7;
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [v7 bundleIdentifier];
      [v5 setObject:v7 forKey:v6];

      v3 = v7;
    }
  }
}

+ (id)installedExtensionPropertiesSync
{
  v2 = +[FSModuleHost installedExtensionsSync];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__FSModuleHost_installedExtensionPropertiesSync__block_invoke;
    v9[3] = &unk_278FED360;
    v5 = v4;
    v10 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
    v6 = v10;
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

void __48__FSModuleHost_installedExtensionPropertiesSync__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 attributes];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 objectForKeyedSubscript:@"FSShortName"];
  v8 = [v6 stringWithFormat:@"%@_fskit", v7];

  v9 = [v4 objectForKeyedSubscript:@"FSSupportsBlockResources"];
  v10 = v9;
  if (v8)
  {
    v11 = v5 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && [v9 BOOLValue])
  {
    [v5 setValue:v8 forKey:*MEMORY[0x277CBED50]];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v5 setValue:v12 forKey:@"FSIsFSModule"];

    [v5 setValue:&unk_285DF9C88 forKey:@"FSImplementation"];
    v13 = [v4 objectForKeyedSubscript:@"FSMediaTypes"];
    v14 = [v4 objectForKeyedSubscript:@"FSPersonalities"];
    v15 = v14;
    if (v13 && v14)
    {
      [v5 setValue:v13 forKey:@"FSMediaTypes"];
      [v5 setValue:v15 forKey:@"FSPersonalities"];
      [*(a1 + 32) addObject:v5];
      v16 = fskit_std_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEFAULT, "Found FSModule: %@", buf, 0xCu);
      }
    }

    else
    {
      v16 = fskit_std_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __48__FSModuleHost_installedExtensionPropertiesSync__block_invoke_cold_1();
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (FSModuleHost)initWithProbeList:(BOOL)list
{
  listCopy = list;
  v4 = [(FSModuleHost *)self init];
  v5 = v4;
  if (v4 && listCopy)
  {
    loadProbeOrderList = [(FSModuleHost *)v4 loadProbeOrderList];
    moduleOrder = v5->_moduleOrder;
    v5->_moduleOrder = loadProbeOrderList;

    loadEnabledList = [(FSModuleHost *)v5 loadEnabledList];
    enabledModules = v5->_enabledModules;
    v5->_enabledModules = loadEnabledList;
  }

  return v5;
}

+ (id)defaultHost
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__FSModuleHost_Project__defaultHost__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultHost_onceToken != -1)
  {
    dispatch_once(&defaultHost_onceToken, block);
  }

  v2 = defaultHost_defaultHost;

  return v2;
}

uint64_t __36__FSModuleHost_Project__defaultHost__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultHost_defaultHost;
  defaultHost_defaultHost = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)installedExtensionsSync
{
  defaultHost = [self defaultHost];
  if (_os_feature_enabled_impl())
  {
    [defaultHost forceSynchronousProviderUpdate];
  }

  else
  {
    [defaultHost loadModulesFromEKit];
  }

  modulesByIdentifier = [defaultHost modulesByIdentifier];

  return modulesByIdentifier;
}

- (void)loadModulesFromEKit
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CC5DF8] extensionPointIdentifierQuery:@"com.apple.fskit.fsmodule"];
  if (v3)
  {
    v4 = [MEMORY[0x277CC5E00] executeQuery:v3];
    v5 = fskit_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_24A929000, v5, OS_LOG_TYPE_DEFAULT, "Found Extensions %@", &v8, 0xCu);
    }

    v6 = [v4 fs_map:&__block_literal_global_8];
    [(FSModuleHost *)self setExtensions:v6];
  }

  else
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadModulesFromEKit];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadModulesAndMonitor
{
  v3 = fskit_std_log();
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v5 = fskit_std_log();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24A929000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "InitialEnumeration", "Initial enumeration of file system modules", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    [(FSModuleHost *)self loadModulesFromLSAndMonitor];
  }

  else
  {
    [(FSModuleHost *)self loadModulesFromEKit];
  }

  callbackQueue = self->_callbackQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__FSModuleHost_Project__loadModulesAndMonitor__block_invoke;
  v8[3] = &unk_278FED1C8;
  v8[4] = self;
  v8[5] = v4;
  dispatch_async(callbackQueue, v8);
}

void __46__FSModuleHost_Project__loadModulesAndMonitor__block_invoke(uint64_t a1)
{
  [*(a1 + 32) afterFirstDiscovery];
  v2 = fskit_std_log();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_24A929000, v3, OS_SIGNPOST_INTERVAL_END, v4, "InitialEnumeration", &unk_24A972C93, v5, 2u);
  }
}

- (void)observerDidObserveDatabaseChange:(id)change
{
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A929000, v4, OS_LOG_TYPE_DEFAULT, "Got LS database change", buf, 2u);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__FSModuleHost_Project__observerDidObserveDatabaseChange___block_invoke;
  block[3] = &unk_278FED278;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)loadModulesFromLSAndMonitor
{
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A929000, v3, OS_LOG_TYPE_DEFAULT, "Loading modules from LS", v8, 2u);
  }

  if (!self->_observer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CC1ED0]);
    observer = self->_observer;
    self->_observer = v4;

    [(LSObserver *)self->_observer setDelegate:self];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(LSObserver *)self->_observer setName:v7];

    [(LSObserver *)self->_observer startObserving];
    [(FSModuleHost *)self forceSynchronousProviderUpdate];
  }
}

- (id)extensionTypes
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = @"com.apple.fskit.fsmodule";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_24A929000, v3, OS_LOG_TYPE_DEFAULT, "Returning extension types %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)extensionPointRecords
{
  v8 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__FSModuleHost_Project__extensionPointRecords__block_invoke;
  block[3] = &unk_278FED278;
  block[4] = self;
  if (extensionPointRecords_onceToken != -1)
  {
    dispatch_once(&extensionPointRecords_onceToken, block);
  }

  v2 = fskit_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = extensionPointRecords_ret;
    _os_log_impl(&dword_24A929000, v2, OS_LOG_TYPE_DEFAULT, "returning ep records %@", buf, 0xCu);
  }

  result = extensionPointRecords_ret;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __46__FSModuleHost_Project__extensionPointRecords__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [*(a1 + 32) extensionTypes];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * v8);
        v11 = objc_alloc(MEMORY[0x277CC1EC8]);
        v19 = v9;
        v12 = [v11 initWithIdentifier:v10 platform:2 error:&v19];
        v6 = v19;

        v13 = fskit_std_log();
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 debugDescription];
            *buf = 138412290;
            v25 = v15;
            _os_log_impl(&dword_24A929000, v14, OS_LOG_TYPE_DEFAULT, "Adding LS record %@", buf, 0xCu);
          }

          [v2 addObject:v12];
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v25 = v10;
            v26 = 1024;
            v27 = 2;
            v28 = 2112;
            v29 = v6;
            _os_log_error_impl(&dword_24A929000, v14, OS_LOG_TYPE_ERROR, "Extension record %@ for platform %d missing: %@", buf, 0x1Cu);
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v16 = [v2 copy];
  v17 = extensionPointRecords_ret;
  extensionPointRecords_ret = v16;

  v18 = *MEMORY[0x277D85DE8];
}

- (void)forceSynchronousProviderUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  extensionPointRecords = [(FSModuleHost *)selfCopy extensionPointRecords];
  v5 = [extensionPointRecords countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(extensionPointRecords);
        }

        v8 = [MEMORY[0x277CC1E50] enumeratorWithExtensionPointRecord:*(*(&v14 + 1) + 8 * v7) options:0];
        allObjects = [v8 allObjects];
        [v3 addObjectsFromArray:allObjects];

        ++v7;
      }

      while (v5 != v7);
      v5 = [extensionPointRecords countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = [v3 fs_map:&__block_literal_global_151];
  moduleUUIDs = selfCopy->_moduleUUIDs;
  v12 = [MEMORY[0x277CBEB98] setWithArray:v10];
  LOBYTE(moduleUUIDs) = [(NSSet *)moduleUUIDs isEqualToSet:v12];

  if ((moduleUUIDs & 1) == 0)
  {
    [(FSModuleHost *)selfCopy _updateProviderListForMatchingExtensionRecords:v3];
  }

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x277D85DE8];
}

- (unsigned)isValidModuleIdentifier:(id)identifier withError:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/:"];
  v7 = [identifierCopy rangeOfCharacterFromSet:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = identifierCopy;
      v16 = 2112;
      v17 = @"/:";
      _os_log_impl(&dword_24A929000, v9, OS_LOG_TYPE_DEFAULT, "Provider identifier '%@' may not contain any of the characters '%@'", buf, 0x16u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] fskit_errorWithPOSIXCode:22 description:{@"Provider identifier '%@' may not contain any of the characters '%@'", identifierCopy, @"/:"}];
      goto LABEL_12;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_15;
  }

  if (([identifierCopy isEqualToString:@"."] & 1) == 0 && !objc_msgSend(identifierCopy, "isEqualToString:", @".."))
  {
    v10 = 1;
    goto LABEL_15;
  }

  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
  }

  if (!error)
  {
    goto LABEL_13;
  }

LABEL_12:
  *error = v10 = 0;
LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_updateProviderListForMatchingExtensionRecords:(id)records
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__FSModuleHost_Project___updateProviderListForMatchingExtensionRecords___block_invoke;
  v5[3] = &unk_278FED3C8;
  v5[4] = self;
  v4 = [records fs_map:v5];
  [(FSModuleHost *)self _updateProviderListForFilteredFSModuleInstances:v4];
}

FSModuleInstance *__72__FSModuleHost_Project___updateProviderListForMatchingExtensionRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = [*(*(a1 + 32) + 40) containsObject:v4];
  if ([*(a1 + 32) isValidModuleIdentifier:v4 withError:0])
  {
    v6 = [[FSModuleInstance alloc] initWithExtensionRecord:v3 enabled:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateProviderListForFilteredFSModuleInstances:(id)instances
{
  v100 = *MEMORY[0x277D85DE8];
  instancesCopy = instances;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_opt_new();
  allValues = [(NSDictionary *)self->_modulesByIdentifier allValues];
  v75 = [allValues mutableCopy];

  v9 = [instancesCopy mutableCopy];
  v10 = MEMORY[0x277CBEB98];
  v11 = [v9 fs_map:&__block_literal_global_173];
  v12 = [v10 setWithArray:v11];
  moduleUUIDs = self->_moduleUUIDs;
  selfCopy = self;
  self->_moduleUUIDs = v12;

  v73 = [instancesCopy fs_map:&__block_literal_global_175];
  v14 = fskit_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v99 = v73;
    _os_log_impl(&dword_24A929000, v14, OS_LOG_TYPE_DEFAULT, "New module list %@", buf, 0xCu);
  }

  v76 = v7;

  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    modulesByIdentifier = self->_modulesByIdentifier;
    *buf = 138412290;
    v99 = modulesByIdentifier;
    _os_log_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEFAULT, "Old modules %@", buf, 0xCu);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v9;
  v17 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v92;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v92 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v91 + 1) + 8 * i);
        bundleIdentifier = [(NSDictionary *)v21 bundleIdentifier];
        if (bundleIdentifier)
        {
          v23 = [(NSDictionary *)selfCopy->_modulesByIdentifier objectForKeyedSubscript:bundleIdentifier];
          v24 = v23;
          if (v23 && [v23 isEqual:v21])
          {
            [v6 setObject:v24 forKeyedSubscript:bundleIdentifier];
            [v75 removeObject:v24];
          }

          else
          {
            [v6 setObject:v21 forKeyedSubscript:bundleIdentifier];
            [v76 addObject:bundleIdentifier];
          }
        }

        else
        {
          v24 = fskit_std_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v99 = v21;
            _os_log_impl(&dword_24A929000, v24, OS_LOG_TYPE_DEFAULT, "%@: module has no bundle identifier", buf, 0xCu);
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
    }

    while (v18);
  }

  v25 = selfCopy;
  [(FSModuleHost *)selfCopy setExtensionsByIdentifierLocked:v6];
  v26 = &off_24A970000;
  v27 = 0x277CBE000uLL;
  if (selfCopy->_moduleOrder)
  {
    v28 = v76;
    if ([v76 count] || objc_msgSend(v75, "count"))
    {
      v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:selfCopy->_moduleOrder];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_179;
      v89[3] = &unk_278FED338;
      v30 = v29;
      v90 = v30;
      [v75 enumerateObjectsUsingBlock:v89];
      v31 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v76];
      v32 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:selfCopy->_moduleOrder];
      [v31 minusSet:v32];

      v33 = [v31 count];
      v71 = v33 != 0;
      if (v33)
      {
        v67 = v5;
        v69 = instancesCopy;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v74 = v31;
        v34 = [v74 countByEnumeratingWithState:&v85 objects:v96 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v86;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              v38 = v31;
              if (*v86 != v36)
              {
                objc_enumerationMutation(v74);
              }

              v39 = *(*(&v85 + 1) + 8 * j);
              v40 = [v6 objectForKeyedSubscript:v39];
              identity = [v40 identity];
              isSystem = [identity isSystem];

              if (isSystem)
              {
                [v30 addObject:v39];
              }

              else
              {
                [v30 insertObject:v39 atIndex:0];
              }

              v31 = v38;
            }

            v35 = [v74 countByEnumeratingWithState:&v85 objects:v96 count:16];
          }

          while (v35);
        }

        v5 = v67;
        instancesCopy = v69;
        v25 = selfCopy;
        v27 = 0x277CBE000;
      }

      v43 = [v30 copy];
      moduleOrder = v25->_moduleOrder;
      v25->_moduleOrder = v43;

      v28 = v76;
      v45 = v71;
      v26 = &off_24A970000;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
    v28 = v76;
  }

  if (v25->_enabledModules && ([v28 count] || objc_msgSend(v75, "count")))
  {
    v72 = v45;
    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v25->_enabledModules];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = *(v26 + 479);
    v83[2] = __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_2_181;
    v83[3] = &unk_278FED338;
    v47 = v46;
    v84 = v47;
    [v75 enumerateObjectsUsingBlock:v83];
    v48 = [objc_alloc(*(v27 + 2904)) initWithArray:v28];
    v49 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v25->_enabledModules];
    [v48 minusSet:v49];

    v50 = [v48 count];
    v51 = v50 != 0;
    if (v50)
    {
      v68 = v5;
      v70 = instancesCopy;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v66 = v48;
      v52 = v48;
      v53 = [v52 countByEnumeratingWithState:&v79 objects:v95 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v80;
        do
        {
          for (k = 0; k != v54; ++k)
          {
            if (*v80 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v79 + 1) + 8 * k);
            v58 = [v6 objectForKeyedSubscript:v57];
            identity2 = [v58 identity];
            isEnabled = [identity2 isEnabled];

            if (isEnabled)
            {
              [v47 addObject:v57];
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v79 objects:v95 count:16];
        }

        while (v54);
      }

      v5 = v68;
      instancesCopy = v70;
      v25 = selfCopy;
      v51 = 1;
      v48 = v66;
    }

    v61 = [v47 copy];
    enabledModules = v25->_enabledModules;
    v25->_enabledModules = v61;

    v28 = v76;
    v45 = v72;
  }

  else
  {
    v51 = 0;
  }

  if (v25->_modulesUnloaded && [v75 count])
  {
    v63 = v25->_moduleOrder;
    (*(v25->_modulesUnloaded + 2))();
  }

  if (v25->_modulesLoaded && (([v28 count] == 0) & ~v45) == 0)
  {
    v64 = v25->_moduleOrder;
    (*(v25->_modulesLoaded + 2))();
  }

  if (v45)
  {
    [(FSModuleHost *)v25 saveProbeOrderList];
  }

  if (v51)
  {
    [(FSModuleHost *)v25 saveEnabledList];
  }

  objc_autoreleasePoolPop(v5);
  v65 = *MEMORY[0x277D85DE8];
}

id __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identity];
  v5 = [v3 UUID];
  v6 = [v2 stringWithFormat:@"Mod %p ID '%@' UUID %@", v3, v4, v5];

  return v6;
}

void __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_179(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  [v2 removeObject:v3];
}

void __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_2_181(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  [v2 removeObject:v3];
}

- (id)loadProbeOrderList
{
  v2 = +[FSSettings defaultSettings];
  probeOrderArray = [v2 probeOrderArray];

  if (probeOrderArray)
  {
    v19 = 0;
    defaultProbeOrderList = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfURL:probeOrderArray error:&v19];
    v5 = v19;
    if (defaultProbeOrderList)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = fskit_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v6 loadProbeOrderList:v7];
    }

    v5 = 0;
  }

  v14 = fskit_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleHost(Project) loadProbeOrderList];
  }

  defaultProbeOrderList = [objc_opt_class() defaultProbeOrderList];
  if (!v5)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadProbeOrderList];
    }

    v5 = 0;
    goto LABEL_19;
  }

  domain = [v5 domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

LABEL_17:
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadProbeOrderList];
    }

LABEL_19:

    goto LABEL_20;
  }

  code = [v5 code];

  if (code != 260)
  {
    goto LABEL_17;
  }

LABEL_20:

  return defaultProbeOrderList;
}

- (void)saveProbeOrderList
{
  v3 = +[FSSettings defaultSettings];
  probeOrderArray = [v3 probeOrderArray];

  if (!probeOrderArray)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v7 saveProbeOrderList:v9];
    }

    goto LABEL_8;
  }

  moduleOrder = self->_moduleOrder;
  v16 = 0;
  [(NSArray *)moduleOrder writeToURL:probeOrderArray error:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = v6;
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) saveProbeOrderList];
    }

LABEL_8:
  }
}

- (id)loadEnabledList
{
  v2 = +[FSSettings defaultSettings];
  enabledModulesArray = [v2 enabledModulesArray];

  if (enabledModulesArray)
  {
    v19 = 0;
    defaultProbeOrderList = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfURL:enabledModulesArray error:&v19];
    v5 = v19;
    if (defaultProbeOrderList)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = fskit_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v6 loadEnabledList:v7];
    }

    v5 = 0;
  }

  v14 = fskit_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleHost(Project) loadEnabledList];
  }

  defaultProbeOrderList = [objc_opt_class() defaultProbeOrderList];
  if (!v5)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadEnabledList];
    }

    v5 = 0;
    goto LABEL_19;
  }

  domain = [v5 domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

LABEL_17:
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadEnabledList];
    }

LABEL_19:

    goto LABEL_20;
  }

  code = [v5 code];

  if (code != 260)
  {
    goto LABEL_17;
  }

LABEL_20:

  return defaultProbeOrderList;
}

- (void)saveEnabledList
{
  v3 = +[FSSettings defaultSettings];
  enabledModulesArray = [v3 enabledModulesArray];

  if (!enabledModulesArray)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v7 saveEnabledList:v9];
    }

    goto LABEL_8;
  }

  enabledModules = self->_enabledModules;
  v16 = 0;
  [(NSArray *)enabledModules writeToURL:enabledModulesArray error:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = v6;
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) saveEnabledList];
    }

LABEL_8:
  }
}

- (void)setExtensions:(id)extensions
{
  queryLock = self->_queryLock;
  extensionsCopy = extensions;
  [(NSCondition *)queryLock lock];
  [(FSModuleHost *)self setExtensionsLocked:extensionsCopy];

  v6 = self->_queryLock;

  [(NSCondition *)v6 unlock];
}

- (void)setExtensionsByIdentifierLocked:(id)locked
{
  v4 = [locked copy];
  modulesByIdentifier = self->_modulesByIdentifier;
  self->_modulesByIdentifier = v4;

  allValues = [(NSDictionary *)self->_modulesByIdentifier allValues];
  modules = self->_modules;
  self->_modules = allValues;

  MEMORY[0x2821F96F8](allValues, modules);
}

- (id)configurationForInstance:(id)instance ofBundle:(id)bundle
{
  instanceCopy = instance;
  v7 = [(FSModuleHost *)self moduleForBundleID:bundle];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CC5DD8]);
    record = [v7 record];
    v10 = [v8 initWithApplicationExtensionRecord:record];

    v11 = [objc_alloc(MEMORY[0x277CC5DF0]) initWithExtensionIdentity:v10 instanceIdentifier:instanceCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)currentExtensions
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
  [(NSCondition *)self->_queryLock lock];
  modules = self->_modules;
  v5 = modules;
  if (!modules)
  {
    do
    {
      v6 = [(NSCondition *)self->_queryLock waitUntilDate:v3];
      modules = self->_modules;
    }

    while (!modules && v6);
    if (modules)
    {
      v5 = self->_modules;
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }
  }

  queryLock = self->_queryLock;
  v8 = modules;
  [(NSCondition *)queryLock unlock];
  v9 = v5;

  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_24A929000, v10, OS_LOG_TYPE_DEFAULT, "Returning module array %@", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)moduleForBundleID:(id)d
{
  dCopy = d;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
  [(NSCondition *)self->_queryLock lock];
  if (!self->_modules)
  {
    do
    {
      v6 = [(NSCondition *)self->_queryLock waitUntilDate:v5];
    }

    while (!self->_modules && v6);
  }

  modulesByIdentifier = self->_modulesByIdentifier;
  if (modulesByIdentifier)
  {
    v8 = [(NSDictionary *)modulesByIdentifier objectForKeyedSubscript:dCopy];
  }

  else
  {
    v8 = 0;
  }

  [(NSCondition *)self->_queryLock unlock];

  return v8;
}

- (NSDictionary)currentExtensionsByIdentifier
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
  [(NSCondition *)self->_queryLock lock];
  if (!self->_modules)
  {
    do
    {
      v4 = [(NSCondition *)self->_queryLock waitUntilDate:v3];
    }

    while (!self->_modules && v4);
  }

  v5 = self->_modulesByIdentifier;
  [(NSCondition *)self->_queryLock unlock];
  if (v5)
  {
    v6 = [(NSDictionary *)v5 copy];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

- (void)addBundleToEnableModules:(id)modules
{
  modulesCopy = modules;
  v5 = modulesCopy;
  if (modulesCopy)
  {
    identity = [modulesCopy identity];
    [identity setEnabled:1];

    enabledModules = self->_enabledModules;
    bundleIdentifier = [v5 bundleIdentifier];
    LOBYTE(enabledModules) = [(NSArray *)enabledModules containsObject:bundleIdentifier];

    if ((enabledModules & 1) == 0)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_enabledModules];
      bundleIdentifier2 = [v5 bundleIdentifier];
      [v9 addObject:bundleIdentifier2];

      v11 = [v9 copy];
      v12 = self->_enabledModules;
      self->_enabledModules = v11;

      [(FSModuleHost *)self saveEnabledList];
    }
  }

  else
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v13 addBundleToEnableModules:v14, v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)removeBundleFromEnabledModules:(id)modules
{
  modulesCopy = modules;
  v5 = modulesCopy;
  if (modulesCopy)
  {
    identity = [modulesCopy identity];
    [identity setEnabled:0];

    enabledModules = self->_enabledModules;
    bundleIdentifier = [v5 bundleIdentifier];
    LODWORD(enabledModules) = [(NSArray *)enabledModules containsObject:bundleIdentifier];

    if (enabledModules)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_enabledModules];
      bundleIdentifier2 = [v5 bundleIdentifier];
      [v9 removeObject:bundleIdentifier2];

      v11 = [v9 copy];
      v12 = self->_enabledModules;
      self->_enabledModules = v11;

      [(FSModuleHost *)self saveEnabledList];
    }
  }

  else
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v13 removeBundleFromEnabledModules:v14, v15, v16, v17, v18, v19, v20];
    }
  }
}

void __48__FSModuleHost_installedExtensionPropertiesSync__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end