@interface DEExtensionManager
+ (id)sharedInstance;
- (DEExtensionManager)init;
- (id)extensionForIdentifier:(id)a3;
- (id)extensionsWithFilter:(id)a3;
- (void)loadExtensions;
@end

@implementation DEExtensionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DEExtensionManager sharedInstance];
  }

  v3 = sharedInstance__manager;

  return v3;
}

uint64_t __36__DEExtensionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(DEExtensionManager);
  v1 = sharedInstance__manager;
  sharedInstance__manager = v0;

  v2 = dispatch_queue_create("initialLoadQueue", 0);
  [sharedInstance__manager setInitialLoadQueue:v2];

  v3 = dispatch_queue_create("extendedQueue", MEMORY[0x277D85CD8]);
  v4 = extendedQueue;
  extendedQueue = v3;

  [sharedInstance__manager setAfterExtendedBlock:0];
  v5 = sharedInstance__manager;

  return [v5 setExtendedLoaded:0];
}

- (id)extensionForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(DEExtensionManager *)self extensions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (DEExtensionManager)init
{
  v3.receiver = self;
  v3.super_class = DEExtensionManager;
  return [(DEExtensionManager *)&v3 init];
}

- (void)loadExtensions
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = +[DELogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AB3000, v3, OS_LOG_TYPE_DEFAULT, "Start loading extension initial info", buf, 2u);
  }

  v4 = dispatch_semaphore_create(0);
  v12 = *MEMORY[0x277CCA0F8];
  v13[0] = @"com.apple.diagnosticextensions-service";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = MEMORY[0x277CCA9C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__DEExtensionManager_loadExtensions__block_invoke;
  v9[3] = &unk_278F63AF8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 extensionsWithMatchingAttributes:v5 completion:v9];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  v8 = *MEMORY[0x277D85DE8];
}

void __36__DEExtensionManager_loadExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[DELogging fwHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_DEFAULT, "Error discovering extensions: %@", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [DEExtension alloc];
        v16 = [(DEExtension *)v15 initWithNSExtension:v14, v20];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [v8 sortedArrayUsingComparator:&__block_literal_global_21];
  v18 = +[DELogging fwHandle];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_INFO, "Finished loading extension initial info", buf, 2u);
  }

  [*(a1 + 32) setExtensions:v8];
  dispatch_semaphore_signal(*(a1 + 40));

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __36__DEExtensionManager_loadExtensions__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attachmentsName];
  v6 = [v4 attachmentsName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (id)extensionsWithFilter:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = [(DEExtensionManager *)self initialLoadQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DEExtensionManager_extensionsWithFilter___block_invoke;
  block[3] = &unk_278F63B20;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __43__DEExtensionManager_extensionsWithFilter___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [*(a1 + 40) extensions];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = *(a1 + 32);
          v12 = [v10 identifier];
          LODWORD(v11) = [v11 containsObject:v12];

          if (v11)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v18 = [*(a1 + 40) extensions];
    v14 = [v18 mutableCopy];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *MEMORY[0x277D85DE8];
  }
}

@end