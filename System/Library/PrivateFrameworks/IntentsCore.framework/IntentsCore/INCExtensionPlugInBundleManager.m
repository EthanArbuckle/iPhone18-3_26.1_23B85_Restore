@interface INCExtensionPlugInBundleManager
+ (id)sharedManager;
- (BOOL)_registerBundle:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)loadBundleForBundleIdentifier:(id)a3 wasPrewarmed:(BOOL *)a4;
- (INCExtensionPlugInBundleManager)init;
- (id)_extensionPlugInBundleForIntent:(id)a3 bundleIdentifier:(id)a4;
- (id)extensionForIntent:(id)a3;
- (void)_setExtensionPlugInBundle:(id)a3 forIntent:(id)a4 bundleIdentifier:(id)a5;
@end

@implementation INCExtensionPlugInBundleManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__INCExtensionPlugInBundleManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_226 != -1)
  {
    dispatch_once(&sharedManager_onceToken_226, block);
  }

  v2 = sharedManager_sharedManager_227;

  return v2;
}

- (BOOL)_registerBundle:(id)a3 bundleIdentifier:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v32 = *MEMORY[0x277CD38C8];
    if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
LABEL_21:
      v31 = 0;
      goto LABEL_22;
    }

    *buf = 136315650;
    v46 = "[INCExtensionPlugInBundleManager _registerBundle:bundleIdentifier:]";
    v47 = 2112;
    v48 = v6;
    v49 = 2112;
    v50 = v8;
    v33 = "%s Unable to register '%@' bundle for '%@' bundleIdentifier";
    v34 = v32;
    v35 = 32;
LABEL_24:
    _os_log_error_impl(&dword_255503000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
    goto LABEL_21;
  }

  v9 = [v6 principalClass];
  if (!v9)
  {
    v36 = *MEMORY[0x277CD38C8];
    if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    v46 = "[INCExtensionPlugInBundleManager _registerBundle:bundleIdentifier:]";
    v47 = 2112;
    v48 = v6;
    v33 = "%s SiriKit extension plugin does not specify an NSPrincipalClass, unable to load: %@";
    v34 = v36;
    v35 = 22;
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [v6 infoDictionary];
  v12 = [v11 objectForKey:@"NSExtension"];

  v39 = v12;
  v13 = [v12 objectForKey:@"NSExtensionAttributes"];
  v14 = MEMORY[0x277CBEB98];
  v15 = [v13 objectForKeyedSubscript:@"IntentsSupported"];
  v16 = v15;
  v17 = MEMORY[0x277CBEBF8];
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v19 = [v14 setWithArray:v18];

  v20 = MEMORY[0x277CBEB98];
  v21 = [v13 objectForKeyedSubscript:@"IntentsRestrictedWhileLocked"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v17;
  }

  v24 = [v20 setWithArray:v23];

  v25 = [[INCExtensionPlugInBundle alloc] initWithPrincipalClass:v10 intentsSupported:v19 intentsRestrictedWhileLocked:v24];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = v19;
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(INCExtensionPlugInBundleManager *)self _setExtensionPlugInBundle:v25 forIntent:*(*(&v40 + 1) + 8 * i) bundleIdentifier:v8];
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v28);
  }

  v31 = 1;
LABEL_22:

  v37 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)loadBundleForBundleIdentifier:(id)a3 wasPrewarmed:(BOOL *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSDictionary *)self->_pluginsPlistDictionary objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = INCExtensionPlugInBundleManagerPath();
    v9 = [v8 stringByAppendingPathComponent:v7];

    v10 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v9];
    *a4 = [v10 isLoaded];
    v11 = *MEMORY[0x277CD38C8];
    v12 = *MEMORY[0x277CD38C8];
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "[INCExtensionPlugInBundleManager loadBundleForBundleIdentifier:wasPrewarmed:]";
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_255503000, v11, OS_LOG_TYPE_INFO, "%s Successfully loaded bundle at path %@", &v16, 0x16u);
      }

      v13 = [(INCExtensionPlugInBundleManager *)self _registerBundle:v10 bundleIdentifier:v6];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[INCExtensionPlugInBundleManager loadBundleForBundleIdentifier:wasPrewarmed:]";
        v18 = 2112;
        v19 = v9;
        _os_log_error_impl(&dword_255503000, v11, OS_LOG_TYPE_ERROR, "%s Error loading bundle at path %@", &v16, 0x16u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_setExtensionPlugInBundle:(id)a3 forIntent:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  intentsSupportedQueue = self->_intentsSupportedQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__INCExtensionPlugInBundleManager__setExtensionPlugInBundle_forIntent_bundleIdentifier___block_invoke;
  v15[3] = &unk_2797E76B8;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_sync(intentsSupportedQueue, v15);
}

void __88__INCExtensionPlugInBundleManager__setExtensionPlugInBundle_forIntent_bundleIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = a1[5];
    v6 = v4;
    [*(a1[4] + 8) setObject:? forKeyedSubscript:?];
  }

  [v6 setObject:a1[7] forKeyedSubscript:a1[6]];
}

- (id)_extensionPlugInBundleForIntent:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__216;
  v21 = __Block_byref_object_dispose__217;
  v22 = 0;
  intentsSupportedQueue = self->_intentsSupportedQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__INCExtensionPlugInBundleManager__extensionPlugInBundleForIntent_bundleIdentifier___block_invoke;
  v13[3] = &unk_2797E7690;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(intentsSupportedQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __84__INCExtensionPlugInBundleManager__extensionPlugInBundleForIntent_bundleIdentifier___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v2 = [v5 objectForKeyedSubscript:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)extensionForIntent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 extensionBundleId];
  v6 = [v4 _className];
  if (v5 || ([v4 _intents_launchIdForCurrentPlatform], v7 = objc_claimAutoreleasedReturnValue(), INExtractAppInfoFromSiriLaunchId(), v5 = 0, v7, v5))
  {
    buf[0] = 0;
    v8 = [(INCExtensionPlugInBundleManager *)self _extensionPlugInBundleForIntent:v6 bundleIdentifier:v5];
    if (v8)
    {
    }

    else if (![(INCExtensionPlugInBundleManager *)self loadBundleForBundleIdentifier:v5 wasPrewarmed:buf])
    {
      v10 = 0;
LABEL_9:

      goto LABEL_10;
    }

    v9 = [(INCExtensionPlugInBundleManager *)self _extensionPlugInBundleForIntent:v6 bundleIdentifier:v5];
    v10 = objc_alloc_init([v9 principalClass]);
    if ((_INExtensionValidateClass() & 1) == 0)
    {

      v10 = 0;
    }

    goto LABEL_9;
  }

  v13 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "[INCExtensionPlugInBundleManager extensionForIntent:]";
    v16 = 2112;
    v17 = v4;
    _os_log_error_impl(&dword_255503000, v13, OS_LOG_TYPE_ERROR, "%s Unable to get bundleIdentifier from %@", buf, 0x16u);
  }

  v10 = 0;
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (INCExtensionPlugInBundleManager)init
{
  v13.receiver = self;
  v13.super_class = INCExtensionPlugInBundleManager;
  v2 = [(INCExtensionPlugInBundleManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    intentsSupported = v2->_intentsSupported;
    v2->_intentsSupported = v3;

    v5 = dispatch_queue_create("INCIntentsSupportedQueue", 0);
    intentsSupportedQueue = v2->_intentsSupportedQueue;
    v2->_intentsSupportedQueue = v5;

    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 pathForResource:@"SiriKitPlugins" ofType:@"plist"];
    v10 = [v7 dictionaryWithContentsOfFile:v9];
    pluginsPlistDictionary = v2->_pluginsPlistDictionary;
    v2->_pluginsPlistDictionary = v10;
  }

  return v2;
}

uint64_t __48__INCExtensionPlugInBundleManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_sharedManager_227 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

@end