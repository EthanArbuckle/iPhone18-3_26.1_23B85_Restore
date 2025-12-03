@interface SGDPluginManager
+ (id)sharedInstance;
+ (void)_processHistoricalDataRequestsForPluginIdentifier:(id)identifier result:(id)result;
- (SGDPluginManager)init;
- (id)_processSearchableItem:(id)item harvestMetrics:(id)metrics userAction:(id)action;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier domainIdentifiers:(id)identifiers completion:(id)completion;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)processInteraction:(id)interaction bundleIdentifier:(id)identifier protectionClass:(id)class completion:(id)completion;
- (void)purgeSpotlightReferencesWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation SGDPluginManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SGDPluginManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_6418 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_6418, block);
  }

  v2 = sharedInstance__pasExprOnceResult_6419;

  return v2;
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__SGDPluginManager_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke;
  v10[3] = &unk_278955A98;
  v10[4] = self;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  SGNotUserInitiated(@"plugin-deleteSpotlightReferences", 2, v10);
}

uint64_t __77__SGDPluginManager_deleteSpotlightReferencesWithBundleIdentifier_completion___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1[4] + 8) allKeys];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(a1[4] + 8) objectForKeyedSubscript:v6];
        if (objc_opt_respondsToSelector())
        {
          v9 = sgLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v12 = a1[5];
            *buf = 138412546;
            v21 = v12;
            v22 = 2112;
            v23 = v6;
            _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "sending deletion of bundle %@ to plugin %@", buf, 0x16u);
          }

          v10 = [v8 identifier];
          [SGDPowerLog pluginStartDeletion:v10];

          [v8 deleteSpotlightReferencesWithBundleIdentifier:a1[5]];
          v11 = [v8 identifier];
          [SGDPowerLog pluginEndDeletion:v11];
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v3);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier domainIdentifiers:(id)identifiers completion:(id)completion
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__SGDPluginManager_deleteSpotlightReferencesWithBundleIdentifier_domainIdentifiers_completion___block_invoke;
  v14[3] = &unk_27894E090;
  v14[4] = self;
  v15 = identifiersCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = identifiersCopy;
  SGNotUserInitiated(@"plugin-deleteSpotlightReferences", 2, v14);
}

uint64_t __95__SGDPluginManager_deleteSpotlightReferencesWithBundleIdentifier_domainIdentifiers_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(*(a1 + 32) + 8) allKeys];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
        if (objc_opt_respondsToSelector())
        {
          v9 = sgLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v12 = [*(a1 + 40) count];
            v13 = *(a1 + 48);
            *buf = 134218498;
            v22 = v12;
            v23 = 2112;
            v24 = v13;
            v25 = 2112;
            v26 = v6;
            _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "sending deletion of %lu domains from %@ to plugin %@", buf, 0x20u);
          }

          v10 = [v8 identifier];
          [SGDPowerLog pluginStartDeletion:v10];

          [v8 deleteSpotlightReferencesWithBundleIdentifier:*(a1 + 48) domainIdentifiers:*(a1 + 40)];
          v11 = [v8 identifier];
          [SGDPowerLog pluginEndDeletion:v11];
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v3);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__SGDPluginManager_deleteSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke;
  v14[3] = &unk_27894E090;
  v14[4] = self;
  v15 = identifiersCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = identifiersCopy;
  SGNotUserInitiated(@"plugin-deleteSpotlightReferences", 2, v14);
}

uint64_t __95__SGDPluginManager_deleteSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(*(a1 + 32) + 8) allKeys];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
        if (objc_opt_respondsToSelector())
        {
          v9 = sgLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v12 = [*(a1 + 40) count];
            v13 = *(a1 + 48);
            *buf = 134218498;
            v22 = v12;
            v23 = 2112;
            v24 = v13;
            v25 = 2112;
            v26 = v6;
            _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "sending deletion of %lu items from %@ to plugin %@", buf, 0x20u);
          }

          v10 = [v8 identifier];
          [SGDPowerLog pluginStartDeletion:v10];

          [v8 deleteSpotlightReferencesWithBundleIdentifier:*(a1 + 48) uniqueIdentifiers:*(a1 + 40)];
          v11 = [v8 identifier];
          [SGDPowerLog pluginEndDeletion:v11];
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v3);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)purgeSpotlightReferencesWithBundleIdentifier:(id)identifier uniqueIdentifiers:(id)identifiers completion:(id)completion
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__SGDPluginManager_purgeSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke;
  v14[3] = &unk_27894E090;
  v14[4] = self;
  v15 = identifiersCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = identifiersCopy;
  SGNotUserInitiated(@"plugin-purgeSpotlightReferences", 2, v14);
}

uint64_t __94__SGDPluginManager_purgeSpotlightReferencesWithBundleIdentifier_uniqueIdentifiers_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(*(a1 + 32) + 8) allKeys];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
        if (objc_opt_respondsToSelector())
        {
          v9 = sgLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v12 = [*(a1 + 40) count];
            v13 = *(a1 + 48);
            *buf = 134218498;
            v22 = v12;
            v23 = 2112;
            v24 = v13;
            v25 = 2112;
            v26 = v6;
            _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "sending purge of %lu items from %@ to plugin %@", buf, 0x20u);
          }

          v10 = [v8 identifier];
          [SGDPowerLog pluginStartDeletion:v10];

          [v8 purgeSpotlightReferencesWithBundleIdentifier:*(a1 + 48) uniqueIdentifiers:*(a1 + 40)];
          v11 = [v8 identifier];
          [SGDPowerLog pluginEndDeletion:v11];
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v3);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)processInteraction:(id)interaction bundleIdentifier:(id)identifier protectionClass:(id)class completion:(id)completion
{
  interactionCopy = interaction;
  identifierCopy = identifier;
  classCopy = class;
  completionCopy = completion;
  v14 = [SGXpcTransaction transactionWithName:"SGDPluginManager.processInteraction"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__SGDPluginManager_processInteraction_bundleIdentifier_protectionClass_completion___block_invoke;
  v20[3] = &unk_27894C480;
  v20[4] = self;
  v21 = interactionCopy;
  v22 = identifierCopy;
  v23 = classCopy;
  v24 = v14;
  v25 = completionCopy;
  v15 = v14;
  v16 = completionCopy;
  v17 = classCopy;
  v18 = identifierCopy;
  v19 = interactionCopy;
  SGNotUserInitiated(@"plugin-processInteraction", 2, v20);
}

void __83__SGDPluginManager_processInteraction_bundleIdentifier_protectionClass_completion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [*(*(a1 + 32) + 8) allKeys];
  v2 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v2)
  {
    v4 = v2;
    v30 = 0;
    v5 = sel_processInteraction_bundleIdentifier_protectionClass_;
    v6 = *v32;
    *&v3 = 138412546;
    v27 = v3;
    do
    {
      v7 = 0;
      v28 = v4;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v8];
        if (objc_opt_respondsToSelector())
        {
          v11 = v5;
          v12 = sgLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v22 = [*(a1 + 40) identifier];
            v23 = *(a1 + 48);
            *buf = 138412802;
            v36 = v22;
            v37 = 2112;
            v38 = v23;
            v39 = 2112;
            v40 = v8;
            _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "Sending processing of interaction %@ from %@ to %@", buf, 0x20u);
          }

          v13 = [v10 identifier];
          [SGDPowerLog pluginStartProcessingSearchableItem:v13];

          v14 = [v10 processInteraction:*(a1 + 40) bundleIdentifier:*(a1 + 48) protectionClass:*(a1 + 56)];
          v15 = [v10 identifier];
          [SGDPowerLog pluginEndProcessingSearchableItem:v15];

          v16 = [v14 error];

          if (v16)
          {
            v17 = sgLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v24 = [v14 error];
              *buf = v27;
              v36 = v8;
              v37 = 2112;
              v38 = v24;
              _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "Plugin reported error: %@: %@", buf, 0x16u);
            }

            v18 = v30;
            if (!v30)
            {
              v18 = objc_opt_new();
            }

            v19 = [v14 error];
            v30 = v18;
            [v18 setObject:v19 forKeyedSubscript:v8];
          }

          v20 = [v14 historicalDataRequests];
          v21 = [v20 count];

          if (v21)
          {
            [SGDPluginManager _processHistoricalDataRequestsForPluginIdentifier:v8 result:v14];
          }

          v5 = v11;
          v4 = v28;
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v4);
  }

  else
  {
    v30 = 0;
  }

  v25 = *(a1 + 72);
  if (v25)
  {
    (*(v25 + 16))(v25, v30);
  }

  [*(a1 + 64) done];

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_processSearchableItem:(id)item harvestMetrics:(id)metrics userAction:(id)action
{
  v61 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  metricsCopy = metrics;
  actionCopy = action;
  v10 = &selRef_processUserAction_searchableItem_;
  if (!actionCopy)
  {
    v10 = &selRef_processSearchableItem_;
  }

  v11 = *v10;
  v47 = metricsCopy;
  [metricsCopy startTimer:kHarvestMetricsPluginsTimer];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(NSDictionary *)self->_plugins allKeys];
  v12 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  v42 = actionCopy;
  if (v12)
  {
    v14 = v12;
    v46 = 0;
    v15 = *v49;
    v16 = @"NSUA";
    if (!actionCopy)
    {
      v16 = @"CSSI";
    }

    v40 = v16;
    *&v13 = 138412546;
    v39 = v13;
    do
    {
      v17 = 0;
      v43 = v14;
      do
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v48 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v20 = [(NSDictionary *)self->_plugins objectForKeyedSubscript:v18];
        if (objc_opt_respondsToSelector())
        {
          v21 = v11;
          selfCopy = self;
          v23 = sgLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            uniqueIdentifier = [itemCopy uniqueIdentifier];
            bundleID = [itemCopy bundleID];
            *buf = 138413058;
            v53 = v40;
            v54 = 2112;
            v55 = uniqueIdentifier;
            v56 = 2112;
            v57 = bundleID;
            v58 = 2112;
            v59 = v18;
            _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, "Sending processing of %@ %@ from %@ to plugin %@", buf, 0x2Au);
          }

          identifier = [v20 identifier];
          [v47 startTimer:identifier];

          identifier2 = [v20 identifier];
          [SGDPowerLog pluginStartProcessingSearchableItem:identifier2];

          if (v42)
          {
            [v20 processUserAction:v42 searchableItem:itemCopy];
          }

          else
          {
            [v20 processSearchableItem:itemCopy];
          }
          v26 = ;
          identifier3 = [v20 identifier];
          [SGDPowerLog pluginEndProcessingSearchableItem:identifier3];

          identifier4 = [v20 identifier];
          [v47 endTimer:identifier4 significantWork:1];

          error = [v26 error];

          if (error)
          {
            v30 = sgLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              error2 = [v26 error];
              *buf = v39;
              v53 = v18;
              v54 = 2112;
              v55 = error2;
              _os_log_error_impl(&dword_231E60000, v30, OS_LOG_TYPE_ERROR, "Plugin reported error: %@: %@", buf, 0x16u);
            }

            v31 = v46;
            if (!v46)
            {
              v31 = objc_opt_new();
            }

            error3 = [v26 error];
            v46 = v31;
            [v31 setObject:error3 forKeyedSubscript:v18];
          }

          historicalDataRequests = [v26 historicalDataRequests];
          v34 = [historicalDataRequests count];

          if (v34)
          {
            [SGDPluginManager _processHistoricalDataRequestsForPluginIdentifier:v18 result:v26];
          }

          self = selfCopy;
          v11 = v21;
          v14 = v43;
        }

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v14 != v17);
      v14 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v14);
  }

  else
  {
    v46 = 0;
  }

  [v47 endTimer:kHarvestMetricsPluginsTimer significantWork:1];
  v37 = *MEMORY[0x277D85DE8];

  return v46;
}

- (SGDPluginManager)init
{
  v38[1] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = SGDPluginManager;
  v2 = [(SGDPluginManager *)&v32 init];
  v3 = v2;
  if (v2)
  {
    v27 = v2;
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v38[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = *v29;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          identifier = [v12 identifier];
          [v4 setObject:v12 forKeyedSubscript:identifier];
          goto LABEL_15;
        }

        identifier2 = [v12 identifier];
        [SGDPowerLog pluginStartSetup:identifier2];

        identifier = [v12 setup];
        identifier3 = [v12 identifier];
        [SGDPowerLog pluginEndSetup:identifier3];

        error = [identifier error];

        if (error)
        {
          identifier6 = sgLogHandle();
          if (os_log_type_enabled(identifier6, OS_LOG_TYPE_ERROR))
          {
            identifier4 = [v12 identifier];
            error2 = [identifier error];
            *buf = 138412546;
            v34 = identifier4;
            v35 = 2112;
            v36 = error2;
            _os_log_error_impl(&dword_231E60000, identifier6, OS_LOG_TYPE_ERROR, "Error during %@ setup: %@", buf, 0x16u);
          }
        }

        else
        {
          identifier5 = [v12 identifier];
          [v4 setObject:v12 forKeyedSubscript:identifier5];

          historicalDataRequests = [identifier historicalDataRequests];
          v22 = [historicalDataRequests count];

          if (!v22)
          {
            goto LABEL_15;
          }

          identifier6 = [v12 identifier];
          [SGDPluginManager _processHistoricalDataRequestsForPluginIdentifier:identifier6 result:identifier];
        }

LABEL_15:
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (!v9)
      {
LABEL_17:

        v23 = [v4 copy];
        v3 = v27;
        plugins = v27->_plugins;
        v27->_plugins = v23;

        break;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (void)_processHistoricalDataRequestsForPluginIdentifier:(id)identifier result:(id)result
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  resultCopy = result;
  v7 = +[SGDSpotlightCommander sharedInstance];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = resultCopy;
  historicalDataRequests = [resultCopy historicalDataRequests];
  v9 = [historicalDataRequests countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(historicalDataRequests);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = sgLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v22 = identifierCopy;
          v23 = 2112;
          v24 = v13;
          _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, "Plugin %@ requesting historical data: %@", buf, 0x16u);
        }

        [v7 requestReimportForHistoricalDataRequest:v13];
        ++v12;
      }

      while (v10 != v12);
      v10 = [historicalDataRequests countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __34__SGDPluginManager_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_6419;
  sharedInstance__pasExprOnceResult_6419 = v4;

  objc_autoreleasePoolPop(v2);
}

@end