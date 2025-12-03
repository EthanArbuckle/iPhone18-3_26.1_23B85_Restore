@interface DNDSCoreDataBackingStore
- (id)_initWithURL:(id)l;
- (id)newManagedObjectContext;
- (void)setupPersistentStoreIfNeeded;
@end

@implementation DNDSCoreDataBackingStore

- (id)_initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = DNDSCoreDataBackingStore;
  v6 = [(DNDSCoreDataBackingStore *)&v9 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    v6->_setupLock._os_unfair_lock_opaque = 0;
    if (lCopy)
    {
      if (os_variant_has_internal_content())
      {
        objc_storeStrong(p_isa + 3, l);
      }
    }
  }

  return p_isa;
}

- (void)setupPersistentStoreIfNeeded
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (self->_persistentContainer)
  {
    goto LABEL_2;
  }

  v4 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v4 hasUnlockedSinceBoot];

  if ((hasUnlockedSinceBoot & 1) == 0)
  {
    v7 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Attempt to load persistent store before first unlock.", buf, 2u);
    }

    goto LABEL_2;
  }

  os_unfair_lock_lock(&self->_setupLock);
  if (!self->_persistentContainer)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 URLForResource:@"DNDSettingsModel" withExtension:@"momd"];

    v10 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v9];
    dnds_backingStoreRootDirectoryURL = [MEMORY[0x277CBEBC0] dnds_backingStoreRootDirectoryURL];
    v12 = [dnds_backingStoreRootDirectoryURL URLByAppendingPathComponent:@"Settings.sqlite"];

    if (os_variant_has_internal_content())
    {
      testDatabaseURL = self->_testDatabaseURL;
      if (testDatabaseURL)
      {
        lastPathComponent = [v12 lastPathComponent];
        v15 = [(NSURL *)testDatabaseURL URLByAppendingPathComponent:lastPathComponent];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
        v29 = 0;
        [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v29];
        v18 = v29;

        if (v18)
        {
          v19 = DNDSLogSettings;
          if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
          {
            [(DNDSCoreDataBackingStore *)v19 setupPersistentStoreIfNeeded];
          }

          os_unfair_lock_unlock(&self->_setupLock);
          goto LABEL_18;
        }

        v12 = v15;
      }
    }

    v20 = MEMORY[0x277CBE4E0];
    filePathURL = [v12 filePathURL];
    v18 = [v20 persistentStoreDescriptionWithURL:filePathURL];

    [v18 setType:*MEMORY[0x277CBE2E8]];
    [v18 setShouldInferMappingModelAutomatically:1];
    [v18 setShouldMigrateStoreAutomatically:1];
    [v18 setShouldAddStoreAsynchronously:0];
    [v18 setOption:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CBE270]];
    [v18 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE210]];
    v22 = [MEMORY[0x277CBE4A0] persistentContainerWithName:@"donotdisturbd" managedObjectModel:v10];
    v31[0] = v18;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [v22 setPersistentStoreDescriptions:v23];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke;
    v25[3] = &unk_278F8AA78;
    v26 = v22;
    v15 = v12;
    v27 = v15;
    selfCopy = self;
    v24 = v22;
    [v24 loadPersistentStoresWithCompletionHandler:v25];
    os_unfair_lock_unlock(&self->_setupLock);

LABEL_18:
LABEL_2:
    v2 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(&self->_setupLock);
}

void __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = DNDSLogSettings;
  if (v6)
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_FAULT))
    {
      __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke_cold_1(v6, v7);
    }

    v8 = [*(a1 + 32) persistentStoreCoordinator];
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x277CBE2E8];
    v18 = 0;
    [v8 destroyPersistentStoreAtURL:v9 withType:v10 options:0 error:&v18];
    v11 = v18;

    v12 = DNDSLogSettings;
    if (v11)
    {
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_FAULT))
      {
        __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke_cold_2(v11, v12);
      }
    }

    else if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Destroyed persistent store to retry load. url=%@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Loaded persistent store with description: %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = v13;
    v11 = *(v14 + 16);
    *(v14 + 16) = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)newManagedObjectContext
{
  [(DNDSCoreDataBackingStore *)self setupPersistentStoreIfNeeded];
  newBackgroundContext = [(NSPersistentContainer *)self->_persistentContainer newBackgroundContext];
  [(NSManagedObjectContext *)newBackgroundContext setMergePolicy:*MEMORY[0x277CBE1C8]];
  return newBackgroundContext;
}

void __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_24912E000, a2, OS_LOG_TYPE_FAULT, "Error adding persistent store: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_24912E000, a2, OS_LOG_TYPE_FAULT, "Failed to destroy persistent store: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end