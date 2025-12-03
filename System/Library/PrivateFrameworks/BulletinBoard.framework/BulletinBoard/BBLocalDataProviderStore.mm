@interface BBLocalDataProviderStore
+ (id)localDataProviderStoreWithDelegate:(id)delegate dataProviderQueue:(id)queue;
- (BBLocalDataProviderStore)initWithDelegate:(id)delegate dataProviderQueue:(id)queue;
- (id)dataProviderForSectionID:(id)d;
- (id)dataProvidersForUniversalSectionID:(id)d;
- (id)debugDescriptionWithChildren:(unint64_t)children;
- (void)_addDataProviderClass:(Class)class performMigration:(BOOL)migration;
- (void)_addLocalDataProviderFactoryOfClass:(Class)class;
- (void)_queue_removeDataProvider:(id)provider;
- (void)addDataProvider:(id)provider performMigration:(BOOL)migration;
- (void)addParentSectionInfo:(id)info displayName:(id)name icon:(id)icon universalSectionID:(id)d;
- (void)loadAllDataProvidersAndPerformMigration:(BOOL)migration;
- (void)performBlockOnDataProviders:(id)providers;
- (void)removeDataProvider:(id)provider;
- (void)removeDataProviderWithSectionID:(id)d;
@end

@implementation BBLocalDataProviderStore

+ (id)localDataProviderStoreWithDelegate:(id)delegate dataProviderQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v7 = [[BBLocalDataProviderStore alloc] initWithDelegate:delegateCopy dataProviderQueue:queueCopy];

  return v7;
}

- (BBLocalDataProviderStore)initWithDelegate:(id)delegate dataProviderQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = BBLocalDataProviderStore;
  v9 = [(BBLocalDataProviderStore *)&v20 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.bulletinboard.BBDataProviderStore", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_serverQueue, queue);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProvidersBySectionID = v9->_dataProvidersBySectionID;
    v9->_dataProvidersBySectionID = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProvidersByUniversalSectionID = v9->_dataProvidersByUniversalSectionID;
    v9->_dataProvidersByUniversalSectionID = v15;

    objc_storeStrong(&v9->_delegate, delegate);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    localFactories = v9->_localFactories;
    v9->_localFactories = v17;
  }

  return v9;
}

- (id)debugDescriptionWithChildren:(unint64_t)children
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  if (children)
  {
    childrenCopy = children;
    do
    {
      [v5 appendString:@"    "];
      --childrenCopy;
    }

    while (childrenCopy);
  }

  v7 = MEMORY[0x277CCAB68];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@<%@: %p>", v5, v9, self];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BBLocalDataProviderStore_debugDescriptionWithChildren___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v12 = v10;
  v17 = v12;
  childrenCopy2 = children;
  dispatch_sync(queue, block);
  v13 = v17;
  v14 = v12;

  return v12;
}

void __57__BBLocalDataProviderStore_debugDescriptionWithChildren___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1[4] + 32) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v6)];
        v8 = a1[5];
        v9 = [v7 debugDescriptionWithChildren:a1[6] + 1];
        [v8 appendFormat:@"\n%@", v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)loadAllDataProvidersAndPerformMigration:(BOOL)migration
{
  migrationCopy = migration;
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = BBLibraryDirectoriesForFolderNamed(@"BulletinBoardPlugins");
  v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v20 = *v30;
    do
    {
      v3 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v3;
        v4 = *(*(&v29 + 1) + 8 * v3);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v6 = [defaultManager contentsOfDirectoryAtPath:v4 error:0];

        v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v26;
          do
          {
            v10 = 0;
            do
            {
              if (*v26 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v25 + 1) + 8 * v10);
              v12 = objc_autoreleasePoolPush();
              pathExtension = [v11 pathExtension];
              v14 = [pathExtension caseInsensitiveCompare:@"bundle"];

              if (!v14)
              {
                v15 = MEMORY[0x277CCA8D8];
                v16 = [v4 stringByAppendingPathComponent:v11];
                v17 = [v15 bundleWithPath:v16];

                if (v17 && BBHasRequiredCapabilitiesForBundle(v17))
                {
                  [(BBLocalDataProviderStore *)self _loadDataProviderPluginBundle:v17 performMigration:migrationCopy];
                }
              }

              objc_autoreleasePoolPop(v12);
              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v8);
        }

        v3 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addDataProviderClass:(Class)class performMigration:(BOOL)migration
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BBLocalDataProviderStore__addDataProviderClass_performMigration___block_invoke;
  block[3] = &unk_278D2B688;
  block[4] = self;
  block[5] = class;
  migrationCopy = migration;
  dispatch_async(queue, block);
}

void __67__BBLocalDataProviderStore__addDataProviderClass_performMigration___block_invoke(uint64_t a1)
{
  v2 = [BBLocalDataProvider dataProviderWithPrincipalClass:*(a1 + 40) serverQueue:*(*(a1 + 32) + 16) initializationCompletion:0];
  [*(a1 + 32) _queue_addDataProvider:v2 performMigration:*(a1 + 48)];
}

- (id)dataProviderForSectionID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__BBLocalDataProviderStore_dataProviderForSectionID___block_invoke;
  block[3] = &unk_278D2A8D8;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __53__BBLocalDataProviderStore_dataProviderForSectionID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)dataProvidersForUniversalSectionID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BBLocalDataProviderStore_dataProvidersForUniversalSectionID___block_invoke;
  block[3] = &unk_278D2A8D8;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __63__BBLocalDataProviderStore_dataProvidersForUniversalSectionID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_removeDataProvider:(id)provider
{
  providerCopy = provider;
  sectionIdentifier = [providerCopy sectionIdentifier];
  if (sectionIdentifier)
  {
    [(NSMutableDictionary *)self->_dataProvidersBySectionID removeObjectForKey:sectionIdentifier];
    universalSectionIdentifier = [providerCopy universalSectionIdentifier];
    if (universalSectionIdentifier)
    {
      v7 = [(NSMutableDictionary *)self->_dataProvidersByUniversalSectionID objectForKey:universalSectionIdentifier];
      [v7 removeObject:providerCopy];
      if (![v7 count])
      {
        [(NSMutableDictionary *)self->_dataProvidersByUniversalSectionID removeObjectForKey:universalSectionIdentifier];
      }
    }

    [(BBDataProviderStoreDelegate *)self->_delegate dataProviderStore:self didRemoveDataProvider:providerCopy];
  }

  else
  {
    v8 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
    {
      [BBLocalDataProviderStore _queue_removeDataProvider:v8];
    }
  }
}

- (void)removeDataProvider:(id)provider
{
  providerCopy = provider;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__BBLocalDataProviderStore_removeDataProvider___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

- (void)performBlockOnDataProviders:(id)providers
{
  providersCopy = providers;
  if (!providersCopy)
  {
    [(BBLocalDataProviderStore *)a2 performBlockOnDataProviders:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__BBLocalDataProviderStore_performBlockOnDataProviders___block_invoke;
  v8[3] = &unk_278D2AC38;
  v8[4] = self;
  v9 = providersCopy;
  v7 = providersCopy;
  dispatch_async(queue, v8);
}

void __56__BBLocalDataProviderStore_performBlockOnDataProviders___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(*(a1 + 32) + 32);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v7)];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v2;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addLocalDataProviderFactoryOfClass:(Class)class
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__BBLocalDataProviderStore__addLocalDataProviderFactoryOfClass___block_invoke;
  v4[3] = &unk_278D2B6B0;
  v4[4] = self;
  v4[5] = class;
  dispatch_async(queue, v4);
}

void __64__BBLocalDataProviderStore__addLocalDataProviderFactoryOfClass___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(*(a1 + 40));
  [v2 setFactoryStore:*(a1 + 32)];
  [*(*(a1 + 32) + 48) addObject:v2];
}

- (void)addDataProvider:(id)provider performMigration:(BOOL)migration
{
  providerCopy = provider;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BBLocalDataProviderStore_addDataProvider_performMigration___block_invoke;
  block[3] = &unk_278D2AA18;
  v10 = providerCopy;
  selfCopy = self;
  migrationCopy = migration;
  v8 = providerCopy;
  dispatch_async(queue, block);
}

void __61__BBLocalDataProviderStore_addDataProvider_performMigration___block_invoke(uint64_t a1)
{
  v2 = [BBLocalDataProvider dataProviderWithDataProvider:*(a1 + 32) serverQueue:*(*(a1 + 40) + 16)];
  [*(a1 + 40) _queue_addDataProvider:v2 performMigration:*(a1 + 48)];
}

- (void)removeDataProviderWithSectionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BBLocalDataProviderStore_removeDataProviderWithSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __60__BBLocalDataProviderStore_removeDataProviderWithSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  [*(a1 + 32) _queue_removeDataProvider:v2];
}

- (void)addParentSectionInfo:(id)info displayName:(id)name icon:(id)icon universalSectionID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iconCopy = icon;
  nameCopy = name;
  v13 = [info copy];
  [v13 setDisplayName:nameCopy];

  [v13 setIcon:iconCopy];
  v14 = [BBParentSectionDataProviderFactory factoryFromSectionInfo:v13];
  [v14 setUniversalSectionIdentifier:dCopy];

  v15 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    sectionIdentifier = [v14 sectionIdentifier];
    v22 = 138543618;
    v23 = v18;
    v24 = 2114;
    v25 = sectionIdentifier;
    _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ adding parent section factory for section %{public}@", &v22, 0x16u);
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(BBDataProviderStoreDelegate *)self->_delegate dataProviderStore:self didAddParentSectionFactory:v14];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addDataProvider:(void *)a1 performMigration:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  OUTLINED_FUNCTION_1_0(&dword_241EFF000, v4, v5, "%{public}@: Data provider %{public}@ specified no sectionID. Ignoring.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeDataProvider:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  OUTLINED_FUNCTION_1_0(&dword_241EFF000, v4, v5, "%{public}@ Asked to remove a data provider (%{public}@) without a sectionID. Ignoring.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performBlockOnDataProviders:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBDataProviderStore.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end