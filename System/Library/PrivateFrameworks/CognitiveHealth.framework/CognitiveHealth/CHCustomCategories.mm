@interface CHCustomCategories
+ (void)databaseAssetAvailableStatusWithCompletion:(id)a3;
+ (void)downloadDatabaseAssetIfNeededWithCompletion:(id)a3;
- (CHCustomCategories)init;
- (id)categoryForBundleId:(id)a3;
- (id)customCategoryVersion;
- (id)extractDataFromCoreDataResult:(id)a3;
- (id)fetchCategoriesForBundleId:(id)a3;
- (id)loadMappingFromFile;
- (id)lockAssetAndReturnAssetPathForFile:(id)a3 withLockReason:(id)a4;
- (id)resetTimer;
- (void)categoriesForBundleId:(id)a3 completion:(id)a4;
- (void)categoriesForBundleIdSet:(id)a3 completion:(id)a4;
@end

@implementation CHCustomCategories

- (id)resetTimer
{
  v2 = objc_alloc_init(CHMobileAssetBridge);
  v3 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__CHCustomCategories_resetTimer__block_invoke;
  v7[3] = &unk_278DE4FB8;
  v8 = v2;
  v4 = v2;
  v5 = [v3 scheduledTimerWithTimeInterval:0 repeats:v7 block:10.0];

  return v5;
}

void __32__CHCustomCategories_resetTimer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) autoAssetEndAllLocksForAssetType:@"com.apple.MobileAsset.CognitiveHealth" assetSpecifier:@"SupplementalCategoryDatabase" completion:&__block_literal_global_128];
  [lockTimer invalidate];
  v1 = lockTimer;
  lockTimer = 0;
}

- (id)lockAssetAndReturnAssetPathForFile:(id)a3 withLockReason:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(CHMobileAssetBridge);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v8 = dispatch_semaphore_create(0);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __72__CHCustomCategories_lockAssetAndReturnAssetPathForFile_withLockReason___block_invoke;
  v17 = &unk_278DE5050;
  v19 = &v20;
  v9 = v8;
  v18 = v9;
  [(CHMobileAssetBridge *)v7 autoAssetLockContentForAssetType:@"com.apple.MobileAsset.CognitiveHealth" assetSpecifier:@"SupplementalCategoryDatabase" lockReason:v6 completion:&v14];
  v10 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = v21[5];
  if (v11)
  {
    v12 = [v11 stringByAppendingPathComponent:v5];
    NSLog(&cfstr_AssetPathForRe.isa, v6, v12, v14, v15, v16, v17);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __72__CHCustomCategories_lockAssetAndReturnAssetPathForFile_withLockReason___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  NSLog(&cfstr_AssetDirectory.isa, v7, [a3 count], v8);

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)loadMappingFromFile
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(CHCustomCategories *)self lockAssetAndReturnAssetPathForFile:@"uuid-int-mapping.csv" withLockReason:@"Locking to load uuid to int mapping file"];
  NSLog(&cfstr_CustomCategory.isa, v4);
  v24 = 0;
  v5 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v4 encoding:4 error:&v24];
  v6 = v24;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_ErrorWhileRead_0.isa, v6);
  }

  else
  {
    v18 = v5;
    v19 = v4;
    v8 = [v5 componentsSeparatedByString:@"\n"];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v20 + 1) + 8 * i) componentsSeparatedByString:{@", "}];
          if ([v13 count] == 2)
          {
            v14 = [v13 objectAtIndex:0];
            v15 = [v13 objectAtIndex:1];
            [v3 setValue:v14 forKey:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v5 = v18;
    v4 = v19;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)extractDataFromCoreDataResult:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        intToUUIDMapping = self->_intToUUIDMapping;
        v12 = [*(*(&v16 + 1) + 8 * i) category];
        v13 = [(NSDictionary *)intToUUIDMapping objectForKey:v12];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchCategoriesForBundleId:(id)a3
{
  v4 = a3;
  [(CHCustomCategories *)self lockAssetWithLockReason:@"Locking to fetch from CoreData"];
  v5 = objc_alloc_init(MEMORY[0x277CBE428]);
  v6 = MEMORY[0x277CBE408];
  v7 = [(NSPersistentContainer *)self->_persistentContainer viewContext];
  v8 = [v6 entityForName:@"CustomCategory" inManagedObjectContext:v7];
  [v5 setEntity:v8];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"bundleId == %@", v4];

  [v5 setPredicate:v9];
  v10 = [(NSPersistentContainer *)self->_persistentContainer viewContext];
  v18 = 0;
  v11 = [v10 executeFetchRequest:v5 error:&v18];
  v12 = v18;

  fetchError = self->_fetchError;
  self->_fetchError = v12;
  v14 = v12;

  v15 = [(CHCustomCategories *)self resetTimer];
  v16 = lockTimer;
  lockTimer = v15;

  return v11;
}

- (id)categoryForBundleId:(id)a3
{
  v4 = [(CHCustomCategories *)self fetchCategoriesForBundleId:a3];
  v5 = [(CHCustomCategories *)self extractDataFromCoreDataResult:v4];
  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_2856CC080;
  }

  v7 = v6;

  return v6;
}

- (void)categoriesForBundleIdSet:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [(CHCustomCategories *)self categoryForBundleId:v14, v17];
        [v8 setValue:v15 forKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v7[2](v7, v8, self->_fetchError);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)categoriesForBundleId:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(CHCustomCategories *)self categoryForBundleId:a3];
  v6[2](v6, v7, self->_fetchError);
}

- (id)customCategoryVersion
{
  v3 = [(CHCustomCategories *)self lockAssetAndReturnAssetPathForFile:@"version.txt" withLockReason:@"Locking to load version"];
  NSLog(&cfstr_CustomCategory.isa, v3);
  v10 = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v3 encoding:4 error:&v10];
  v5 = v10;
  v6 = [(CHCustomCategories *)self resetTimer];
  v7 = lockTimer;
  lockTimer = v6;

  if (v5)
  {
    NSLog(&cfstr_ErrorWhileRead.isa, v5);
    v8 = @"1.0.0";
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (CHCustomCategories)init
{
  v12.receiver = self;
  v12.super_class = CHCustomCategories;
  v2 = [(CHCustomCategories *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(CHCoreDataController);
    coreDataController = v2->_coreDataController;
    v2->_coreDataController = v3;

    v5 = [(CHCoreDataController *)v2->_coreDataController persistentContainer];
    persistentContainer = v2->_persistentContainer;
    v2->_persistentContainer = v5;

    v7 = [(CHCustomCategories *)v2 loadMappingFromFile];
    intToUUIDMapping = v2->_intToUUIDMapping;
    v2->_intToUUIDMapping = v7;

    v9 = [(CHCustomCategories *)v2 resetTimer];
    v10 = lockTimer;
    lockTimer = v9;
  }

  return v2;
}

+ (void)downloadDatabaseAssetIfNeededWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CHMobileAssetBridge);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CHCustomCategories_downloadDatabaseAssetIfNeededWithCompletion___block_invoke;
  v6[3] = &unk_278DE5008;
  v7 = v3;
  v5 = v3;
  [(CHMobileAssetBridge *)v4 autoAssetInterestInContentForAssetType:@"com.apple.MobileAsset.CognitiveHealth" assetSpecifier:@"SupplementalCategoryDatabase" completion:v6];
}

void __66__CHCustomCategories_downloadDatabaseAssetIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_DownloadError.isa, v3);
  (*(*(a1 + 32) + 16))();
}

+ (void)databaseAssetAvailableStatusWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CHMobileAssetBridge);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CHCustomCategories_databaseAssetAvailableStatusWithCompletion___block_invoke;
  v6[3] = &unk_278DE4FE0;
  v7 = v3;
  v5 = v3;
  [(CHMobileAssetBridge *)v4 autoAssetAvailableForUseForAssetType:@"com.apple.MobileAsset.CognitiveHealth" assetSpecifier:@"SupplementalCategoryDatabase" completion:v6];
}

void __65__CHCustomCategories_databaseAssetAvailableStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  NSLog(&cfstr_StatusOfAutoAs.isa, a2, v5);
  (*(*(a1 + 32) + 16))();
}

@end