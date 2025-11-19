@interface BLJaliscoServerSource
+ (id)sharedSource;
+ (void)preWarmSync;
- (BLJaliscoServerSource)init;
- (BLJaliscoServerSource)initWithIdentifier:(id)a3 databaseContainerPath:(id)a4;
- (BOOL)_setupCoreDataStack;
- (BOOL)p_createPersistentDirectoryIfNeeded;
- (BOOL)p_databaseExistsAtPrivateiBooksContainerLocation;
- (BOOL)p_databaseExistsAtSharediBooksContainerLocation;
- (BOOL)truncateDatabaseError:(id *)a3;
- (BOOL)workaround_18397698;
- (NSPersistentHistoryToken)currentJaliscoHistoryToken;
- (id)_persistentStoreOptions;
- (id)existingEntitiesWithName:(id)a3 matchingPredicate:(id)a4 fromManagedObjectContext:(id)a5 limit:(unint64_t)a6 error:(id *)a7;
- (id)existingServerDatabaseWithPredicate:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5;
- (id)existingServerInfoWithPredicate:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5;
- (id)existingServerItemWithPredicate:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5;
- (id)fetchRequestForAllBookletsIDsWithParentStoreIDs:(id)a3;
- (id)fetchRequestForAllCloudIDs:(id)a3 dsids:(id)a4;
- (id)fetchRequestForAllStoreIDs:(id)a3;
- (id)fetchRequestForAllStoreIDs:(id)a3 dsids:(id)a4;
- (id)fetchRequestForAllStoreIDs:(id)a3 dsids:(id)a4 isImported:(BOOL)a5 includeHidden:(BOOL)a6;
- (id)fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:(id)a3 dsids:(id)a4;
- (id)fetchRequestForBookletItemsForStoreIDs:(id)a3;
- (id)fetchRequestForBuyParameters:(id)a3;
- (id)fetchRequestForHiddenItemsWithAccountIDs:(id)a3;
- (id)fetchRequestForNotInStoreAccountIDs:(id)a3;
- (id)fetchRequestForStoreIDs:(id)a3 dsids:(id)a4;
- (id)managedObjectModel;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithPrivateQueueConcurrency;
- (id)p_oldPersistentStoreDirectory;
- (id)p_persistentStoreDirectory;
- (id)p_persistentStoreFullPathAtPrivateiBooksLocation;
- (id)p_persistentStoreFullPathAtSharediBooksLocation;
- (id)persistentStoreCoordinatorWithError:(id *)a3;
- (id)platformPredicatesForItemsWithActiveUserID:(id)a3;
- (id)predicateForBookletItems:(BOOL)a3 dsids:(id)a4;
- (id)predicateForItems:(BOOL)a3 dsids:(id)a4;
- (id)predicateForNeedsImport:(BOOL)a3;
- (id)predicateForStoreAccountID:(id)a3 storeIDs:(id)a4;
- (id)serverDatabaseForDSID:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5;
- (id)serverDatabaseForDSID:(id)a3 withIdentifier:(id)a4 fromManagedObjectContext:(id)a5 error:(id *)a6;
- (id)serverInfoForDSID:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5;
- (id)serverItemWithStoreID:(id)a3 inDatabaseWithIdentifier:(id)a4 forDSID:(id)a5 fromManagedObjectContext:(id)a6 error:(id *)a7;
- (void)dealloc;
- (void)refreshStoreWithCompletion:(id)a3;
@end

@implementation BLJaliscoServerSource

+ (void)preWarmSync
{
  kdebug_trace();
  v3 = +[BLJaliscoServerSource sharedSource];
  v2 = [v3 persistentStoreCoordinator];
  kdebug_trace();
}

+ (id)sharedSource
{
  os_unfair_lock_lock(&unk_280BC5810);
  if (!qword_280BC5860)
  {
    v3 = [a1 alloc];
    v4 = +[BLJaliscoVersion defaultIdentifier];
    v5 = [v3 initWithIdentifier:v4 databaseContainerPath:0];
    v6 = qword_280BC5860;
    qword_280BC5860 = v5;
  }

  os_unfair_lock_unlock(&unk_280BC5810);
  v7 = qword_280BC5860;

  return v7;
}

- (BOOL)_setupCoreDataStack
{
  v8[6] = *MEMORY[0x277D85DE8];
  v3 = [(BLJaliscoServerSource *)self managedObjectModel];
  v8[0] = 0;
  v4 = [(BLJaliscoServerSource *)self persistentStoreCoordinatorWithError:v8];
  v5 = v8[0];

  result = v5 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)managedObjectModel
{
  modelSentinel = self->_modelSentinel;
  p_modelSentinel = &self->_modelSentinel;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D213C8;
  block[3] = &unk_278D173A8;
  block[4] = self;
  if (modelSentinel != -1)
  {
    dispatch_once(p_modelSentinel, block);
  }

  return self->_model;
}

- (id)_persistentStoreOptions
{
  v8[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE1D8];
  v7[0] = *MEMORY[0x277CBE178];
  v7[1] = v2;
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277CBE210];
  v7[2] = *MEMORY[0x277CBE270];
  v7[3] = v3;
  v8[2] = MEMORY[0x277CBEC38];
  v8[3] = MEMORY[0x277CBEC38];
  v7[4] = *MEMORY[0x277CBE240];
  v8[4] = *MEMORY[0x277CCA1B8];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)p_persistentStoreFullPathAtSharediBooksLocation
{
  v2 = [(BLJaliscoServerSource *)self p_persistentStoreDirectory];
  v3 = +[BLJaliscoVersion persistentStoreFileName];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)p_persistentStoreDirectory
{
  v3 = [(BLJaliscoServerSource *)self databaseContainerPath];

  if (v3)
  {
    v4 = [(BLJaliscoServerSource *)self databaseContainerPath];
  }

  else
  {
    v5 = [MEMORY[0x277CBEBC0] bu_booksGroupContainerDocumentsURL];
    v6 = [v5 path];

    v4 = [v6 stringByAppendingPathComponent:@"BKJaliscoServerSource"];
  }

  return v4;
}

- (BOOL)p_databaseExistsAtPrivateiBooksContainerLocation
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(BLJaliscoServerSource *)self p_persistentStoreFullPathAtPrivateiBooksLocation];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (id)p_persistentStoreFullPathAtPrivateiBooksLocation
{
  v2 = [(BLJaliscoServerSource *)self p_oldPersistentStoreDirectory];
  v3 = +[BLJaliscoVersion persistentStoreFileName];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)p_oldPersistentStoreDirectory
{
  v3 = [(BLJaliscoServerSource *)self databaseContainerPath];

  if (v3)
  {
    v4 = [(BLJaliscoServerSource *)self databaseContainerPath];
  }

  else
  {
    v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    v6 = [v5 lastObject];
    v4 = [v6 stringByAppendingPathComponent:@"BKJaliscoServerSource"];
  }

  return v4;
}

- (BOOL)p_createPersistentDirectoryIfNeeded
{
  v2 = [(BLJaliscoServerSource *)self p_persistentStoreDirectory];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 relativePath];
  v8 = 0;
  v6 = [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v8];

  return v6;
}

- (BOOL)p_databaseExistsAtSharediBooksContainerLocation
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(BLJaliscoServerSource *)self p_persistentStoreFullPathAtSharediBooksLocation];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (id)newManagedObjectContextWithPrivateQueueConcurrency
{
  v6 = 0;
  v2 = [(BLJaliscoServerSource *)self persistentStoreCoordinatorWithError:&v6];
  v3 = v6;
  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    [v4 setPersistentStoreCoordinator:v2];
    [v4 setUndoManager:0];
    [v4 setMergePolicy:*MEMORY[0x277CBE1C8]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BLJaliscoServerSource)initWithIdentifier:(id)a3 databaseContainerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = BLJaliscoServerSource;
  v8 = [(BLJaliscoServerSource *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    databaseContainerPath = v8->_databaseContainerPath;
    v8->_databaseContainerPath = v11;

    if (![(BLJaliscoServerSource *)v8 _setupCoreDataStack])
    {
      v13 = BLJaliscoLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_ERROR, "Unable to initialize BLJaliscoServerSource", v15, 2u);
      }

      v8 = 0;
    }
  }

  __dmb(0xBu);

  return v8;
}

- (BLJaliscoServerSource)init
{
  v3 = +[BLJaliscoVersion defaultIdentifier];
  v4 = [(BLJaliscoServerSource *)self initWithIdentifier:v3 databaseContainerPath:0];

  return v4;
}

- (BOOL)workaround_18397698
{
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [(BLJaliscoServerSource *)self newManagedObjectContext];
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"BLJaliscoServerItem"];
  [v5 setResultType:4];
  v45 = 0;
  v6 = [v4 executeFetchRequest:v5 error:&v45];
  v7 = v45;
  v8 = [v6 firstObject];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"BLJaliscoServerItem"];
    [v9 setReturnsDistinctResults:1];
    [v9 setResultType:2];
    v50[0] = @"storeID";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    [v9 setPropertiesToGroupBy:v10];

    v49 = @"storeID";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [v9 setPropertiesToFetch:v11];

    v44 = v7;
    v12 = [v4 executeFetchRequest:v9 error:&v44];
    v13 = v44;

    if (v9)
    {
      v14 = [v8 integerValue];
      v15 = [v12 count];
      v16 = 0;
      if (v14 < 2001 || v14 <= 3 * v15)
      {
        goto LABEL_29;
      }

      v32 = v12;
      v33 = v9;
      v34 = v8;
      v35 = v5;
      v36 = v4;
      v37 = v3;
      v17 = [v4 persistentStoreCoordinator];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v18 = [v17 persistentStores];
      v19 = [v18 copy];

      v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v20)
      {
        v21 = v20;
        v38 = 0;
        v22 = *v41;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v41 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v40 + 1) + 8 * i);
            v25 = [v24 URL];
            v26 = [v24 type];
            if (v25)
            {
              v39 = v13;
              v27 = [v17 destroyPersistentStoreAtURL:v25 withType:v26 options:0 error:&v39];
              v28 = v39;

              if (v27)
              {
                v38 = 1;
              }

              else
              {
                v29 = BLJaliscoLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v47 = v28;
                  _os_log_impl(&dword_241D1F000, v29, OS_LOG_TYPE_ERROR, "Failed to delete database:  %@", buf, 0xCu);
                }
              }

              v13 = v28;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v21);
      }

      else
      {
        v38 = 0;
      }

      v4 = v36;
      v3 = v37;
      v8 = v34;
      v5 = v35;
      v12 = v32;
      v9 = v33;
      v16 = v38;
    }

    else
    {
      v17 = BLJaliscoLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v13;
        _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "Failed to fetch distinct items count:  %@", buf, 0xCu);
      }

      v16 = 0;
    }

LABEL_29:
    v7 = v13;
    goto LABEL_30;
  }

  v9 = BLJaliscoLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v47 = v7;
    _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch all items count:  %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_30:

  objc_autoreleasePoolPop(v3);
  v30 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (void)dealloc
{
  model = self->_model;
  self->_model = 0;

  psc = self->_psc;
  self->_psc = 0;

  v5.receiver = self;
  v5.super_class = BLJaliscoServerSource;
  [(BLJaliscoServerSource *)&v5 dealloc];
}

- (id)persistentStoreCoordinatorWithError:(id *)a3
{
  pscSentinel = self->_pscSentinel;
  p_pscSentinel = &self->_pscSentinel;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D50E00;
  v7[3] = &unk_278D17A40;
  v7[4] = self;
  v7[5] = a3;
  if (pscSentinel != -1)
  {
    dispatch_once(p_pscSentinel, v7);
  }

  return self->_psc;
}

- (NSPersistentHistoryToken)currentJaliscoHistoryToken
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [(BLJaliscoServerSource *)self persistentStoreCoordinatorWithError:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = [v2 currentPersistentHistoryTokenFromStores:0];
    v5 = BLJaliscoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v2;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[BLJaliscoServerSource currentJaliscoHistoryToken] token:(%@) from psc:(%@)", buf, 0x16u);
    }
  }

  else
  {
    v5 = BLJaliscoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "[BLJaliscoServerSource currentJaliscoHistoryToken] Failed to get currentJaliscoHistoryToken %@", buf, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)newManagedObjectContext
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [(BLJaliscoServerSource *)self persistentStoreCoordinatorWithError:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:0];
    [v4 setPersistentStoreCoordinator:v2];
    [v4 setUndoManager:0];
    [v4 setMergePolicy:*MEMORY[0x277CBE1C8]];
  }

  else
  {
    v5 = BLJaliscoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "[BLJaliscoServerSource newManagedObjectContext] Failed to create newManagedObjectContext %@", buf, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)serverInfoForDSID:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CCAC30];
  v9 = a4;
  v10 = [v8 predicateWithFormat:@"userUID = %@", a3];
  v15 = 0;
  v11 = [(BLJaliscoServerSource *)self existingServerInfoWithPredicate:v10 fromManagedObjectContext:v9 error:&v15];

  v12 = v15;
  if (a5 && !v11)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v11;
}

- (BOOL)truncateDatabaseError:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [(BLJaliscoServerSource *)self newManagedObjectContext];
  v6 = [(BLJaliscoServerSource *)self _persistentStoreOptions];
  v7 = [(BLJaliscoServerSource *)self persistentStoreCoordinatorWithError:a3];
  v8 = [v7 persistentStores];
  v9 = [v8 lastObject];

  v10 = MEMORY[0x277CBEBC0];
  v11 = [(BLJaliscoServerSource *)self p_persistentStoreFullPathAtSharediBooksLocation];
  v12 = [v10 fileURLWithPath:v11 isDirectory:0];

  if (v9)
  {
    v13 = [v7 URLForPersistentStore:v9];

    [v7 removePersistentStore:v9 error:0];
    [v5 reset];
    v14 = *MEMORY[0x277CBE2E8];
    v15 = [v7 destroyPersistentStoreAtURL:v13 withType:*MEMORY[0x277CBE2E8] options:v6 error:a3];
    v16 = BLJaliscoLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412546;
      v29 = v13;
      v30 = 1024;
      LODWORD(v31) = v15;
      _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "[BLJaliscoServerSource truncateDatabaseError] Removing store:%@ destroyed:%{BOOL}d", &v28, 0x12u);
    }

    if (!v15)
    {
      v23 = 0;
      v12 = v13;
      goto LABEL_15;
    }

    v12 = v13;
  }

  else
  {
    v17 = BLJaliscoLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "[BLJaliscoServerSource truncateDatabaseError] There's nothing to truncate!", &v28, 2u);
    }

    v14 = *MEMORY[0x277CBE2E8];
  }

  v18 = [(NSPersistentStoreCoordinator *)self->_psc addPersistentStoreWithType:v14 configuration:0 URL:v12 options:v6 error:a3];
  if (v18)
  {
    v19 = v18;
    v20 = BLJaliscoLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 identifier];
      v22 = [(BLJaliscoServerSource *)self currentJaliscoHistoryToken];
      v28 = 138413058;
      v29 = v12;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEFAULT, "Added new store at storeURL:(%@), persistentstoreID:(%@), storeOptions:(%@) Setup jalisco stack with history token after truncate:(%@)", &v28, 0x2Au);
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

LABEL_15:
  v24 = +[BLJaliscoDAAPClient sharedClient];
  v25 = [v24 resetPoliteTimers];

  v26 = *MEMORY[0x277D85DE8];
  return v23 & v25;
}

- (void)refreshStoreWithCompletion:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v4 = a3;
  v5 = [(BLJaliscoServerSource *)self persistentStoreCoordinatorWithError:&v28];
  v6 = v28;
  v7 = [v5 persistentStores];
  v8 = [v7 lastObject];

  v9 = MEMORY[0x277CBEBC0];
  v10 = [(BLJaliscoServerSource *)self p_persistentStoreFullPathAtSharediBooksLocation];
  v11 = [v9 fileURLWithPath:v10 isDirectory:0];

  v12 = [(BLJaliscoServerSource *)self _persistentStoreOptions];
  v13 = BLJaliscoLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v8 identifier];
    *buf = 138412546;
    v30 = v11;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEFAULT, "Trying to refresh store at storeURL:(%@), persistentstoreID:(%@)", buf, 0x16u);
  }

  if (v8)
  {
    v15 = [v5 URLForPersistentStore:v8];

    [v5 removePersistentStore:v8 error:0];
    psc = self->_psc;
    v17 = *MEMORY[0x277CBE2E8];
    v27 = v6;
    v18 = [(NSPersistentStoreCoordinator *)psc addPersistentStoreWithType:v17 configuration:0 URL:v15 options:v12 error:&v27];
    v19 = v27;

    v20 = BLJaliscoLog();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v18 identifier];
        v23 = [(BLJaliscoServerSource *)self currentJaliscoHistoryToken];
        *buf = 138413058;
        v30 = v15;
        v31 = 2112;
        v32 = v22;
        v33 = 2112;
        v34 = v12;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_DEFAULT, "Refreshed store at storeURL:(%@), persistentstoreID:(%@) storeOptions:(%@) History token(%@)", buf, 0x2Au);
      }

      v24 = 1;
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_ERROR, "Refresh store Failed to re-add store %@", buf, 0xCu);
      }

      v24 = 0;
      v18 = v21;
    }
  }

  else
  {
    v18 = BLJaliscoLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "Refresh store failed - no store to refresh %@", buf, 0xCu);
    }

    v24 = 0;
    v15 = v11;
    v19 = v6;
  }

  v25 = MEMORY[0x245CFF560](v4);
  if (v25)
  {
    v25[2](v25, v24);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)serverDatabaseForDSID:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CCAC30];
  v9 = a4;
  v10 = [v8 predicateWithFormat:@"server.userUID = %@", a3];
  v15 = 0;
  v11 = [(BLJaliscoServerSource *)self existingServerDatabaseWithPredicate:v10 fromManagedObjectContext:v9 error:&v15];

  v12 = v15;
  if (a5 && !v11)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)serverDatabaseForDSID:(id)a3 withIdentifier:(id)a4 fromManagedObjectContext:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CCAC30];
  v11 = a5;
  v12 = [v10 predicateWithFormat:@"identifier = %@ AND server.userUID = %@", a4, a3];
  v17 = 0;
  v13 = [(BLJaliscoServerSource *)self existingServerDatabaseWithPredicate:v12 fromManagedObjectContext:v11 error:&v17];

  v14 = v17;
  if (a6 && !v13)
  {
    v15 = v14;
    *a6 = v14;
  }

  return v13;
}

- (id)existingEntitiesWithName:(id)a3 matchingPredicate:(id)a4 fromManagedObjectContext:(id)a5 limit:(unint64_t)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc_init(MEMORY[0x277CBE428]);
  v16 = [MEMORY[0x277CBE408] entityForName:v11 inManagedObjectContext:v13];
  [v15 setEntity:v16];

  [v15 setPredicate:v12];
  [v15 setResultType:1];
  if (a6)
  {
    [v15 setFetchLimit:a6];
  }

  v22 = 0;
  v17 = [v13 executeFetchRequest:v15 error:&v22];
  v18 = v22;
  v19 = v18;
  if (v18)
  {
    if (a7)
    {
      v20 = v18;
      *a7 = v19;
    }

    [v19 logRecursively];
  }

  objc_autoreleasePoolPop(v14);

  return v17;
}

- (id)existingServerInfoWithPredicate:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v16 = 0;
  v9 = [(BLJaliscoServerSource *)self existingEntitiesWithName:@"BLJaliscoServerInfo" matchingPredicate:a3 fromManagedObjectContext:v8 limit:1 error:&v16];
  v10 = v16;
  v11 = [v9 lastObject];

  if (v11)
  {
    v12 = [v9 lastObject];
    v13 = [v8 existingObjectWithID:v12 error:0];
  }

  else if (a5)
  {
    v14 = v10;
    v13 = 0;
    *a5 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)existingServerDatabaseWithPredicate:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v16 = 0;
  v9 = [(BLJaliscoServerSource *)self existingEntitiesWithName:@"BLJaliscoServerDatabase" matchingPredicate:a3 fromManagedObjectContext:v8 limit:1 error:&v16];
  v10 = v16;
  v11 = [v9 lastObject];

  if (v11)
  {
    v12 = [v9 lastObject];
    v13 = [v8 existingObjectWithID:v12 error:0];
  }

  else if (a5)
  {
    v14 = v10;
    v13 = 0;
    *a5 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)existingServerItemWithPredicate:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v16 = 0;
  v9 = [(BLJaliscoServerSource *)self existingEntitiesWithName:@"BLJaliscoServerItem" matchingPredicate:a3 fromManagedObjectContext:v8 limit:1 error:&v16];
  v10 = v16;
  v11 = [v9 lastObject];

  if (v11)
  {
    v12 = [v9 lastObject];
    v13 = [v8 existingObjectWithID:v12 error:0];
  }

  else if (a5)
  {
    v14 = v10;
    v13 = 0;
    *a5 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serverItemWithStoreID:(id)a3 inDatabaseWithIdentifier:(id)a4 forDSID:(id)a5 fromManagedObjectContext:(id)a6 error:(id *)a7
{
  v12 = MEMORY[0x277CCAC30];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 stringValue];
  v17 = [v12 predicateWithFormat:@"storeID = %@ AND database.identifier = %@ and database.server.userUID = %@", v16, v15, v14];

  v22 = 0;
  v18 = [(BLJaliscoServerSource *)self existingServerItemWithPredicate:v17 fromManagedObjectContext:v13 error:&v22];

  v19 = v22;
  if (a7 && !v18)
  {
    v20 = v19;
    *a7 = v19;
  }

  return v18;
}

- (id)platformPredicatesForItemsWithActiveUserID:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = MEMORY[0x277CCAC30];
  v6 = [v3 stringValue];
  v7 = [v3 stringValue];

  v8 = [v5 predicateWithFormat:@"(((database.server.userUID == %@) AND (%K == NO OR %K == NULL)) OR ((database.server.userUID != %@) AND (%K == YES)))", v6, @"isAudiobook", @"isAudiobook", v7, @"isAudiobook"];
  [v4 addObject:v8];

  return v4;
}

- (id)predicateForItems:(BOOL)a3 dsids:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CF32F0] sharedProvider];
  v8 = [v7 activeStoreAccount];
  v9 = [v8 ams_DSID];

  if (v9)
  {
    v10 = [v6 valueForKey:@"stringValue"];
    v11 = v10;
    v12 = MEMORY[0x277CBEBF8];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"database.server.userUID IN %@", v13];

    v15 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
    v16 = [(BLJaliscoServerSource *)self platformPredicatesForItemsWithActiveUserID:v9];
    [v15 addObjectsFromArray:v16];

    if (!a3)
    {
      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == NO OR %K == NULL)", @"isHidden", @"isHidden"];
      [v15 addObject:v17];
    }

    v18 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v15];
  }

  else
  {
    v18 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  }

  return v18;
}

- (id)predicateForBookletItems:(BOOL)a3 dsids:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CF32F0] sharedProvider];
  v7 = [v6 activeStoreAccount];
  v8 = [v7 ams_DSID];

  if (v8)
  {
    v9 = [v5 valueForKey:@"stringValue"];
    v10 = v9;
    v11 = MEMORY[0x277CBEBF8];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"parentItem.database.server.userUID IN %@", v12];

    v14 = [MEMORY[0x277CBEB18] arrayWithObject:v13];
    if (!a3)
    {
      v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(parentItem.%K == NO OR parentItem.%K == NULL)", @"isHidden", @"isHidden"];
      [v14 addObject:v15];
    }

    v16 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v14];
  }

  else
  {
    v16 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  }

  return v16;
}

- (id)fetchRequestForAllCloudIDs:(id)a3 dsids:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLJaliscoServerSource *)self itemsFetchRequestForDSIDs:v6];
  v9 = [v7 count];
  v10 = [v6 count];

  [v8 setFetchLimit:v10 * v9];
  v11 = MEMORY[0x277CBEB18];
  v12 = [v8 predicate];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudID IN %@", v7];

  v14 = [v11 arrayWithObjects:{v12, v13, 0}];

  v15 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v14];
  [v8 setPredicate:v15];

  return v8;
}

- (id)fetchRequestForStoreIDs:(id)a3 dsids:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLJaliscoServerSource *)self itemsFetchRequestForDSIDs:v6];
  v9 = [v7 count];
  v10 = [v6 count];

  [v8 setFetchLimit:v10 * v9];
  v11 = MEMORY[0x277CBEB18];
  v12 = [v8 predicate];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", v7];

  v14 = [v11 arrayWithObjects:{v12, v13, 0}];

  v15 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v14];
  [v8 setPredicate:v15];

  return v8;
}

- (id)fetchRequestForAllStoreIDs:(id)a3 dsids:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLJaliscoServerSource *)self allItemsFetchRequestForDSIDs:v6];
  v9 = [v7 count];
  v10 = [v6 count];

  [v8 setFetchLimit:v10 * v9];
  v11 = MEMORY[0x277CBEB18];
  v12 = [v8 predicate];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", v7];

  v14 = [v11 arrayWithObjects:{v12, v13, 0}];

  v15 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v14];
  [v8 setPredicate:v15];

  return v8;
}

- (id)fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:(id)a3 dsids:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLJaliscoServerSource *)self allItemsFetchRequestForDSIDs:v6];
  v9 = [v7 count];
  v10 = [v6 count];

  [v8 setFetchLimit:v10 * v9];
  v11 = MEMORY[0x277CBEB18];
  v12 = [v8 predicate];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", v7];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"purchasedTokenCode != NULL and purchasedTokenCode != 0", v7];

  v15 = [v11 arrayWithObjects:{v12, v13, v14, 0}];

  v16 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v15];
  [v8 setPredicate:v16];

  return v8;
}

- (id)fetchRequestForAllStoreIDs:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CBE428];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x277CF32F0] sharedProvider];
  v9 = [v8 activeStoreAccount];
  v10 = [v9 ams_DSID];

  if (v10)
  {
    v11 = MEMORY[0x277CBEA60];
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"artist" ascending:1];
    v13 = [v11 arrayWithObject:v12];
    [v7 setSortDescriptors:v13];
  }

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", v3];
  [v7 setPredicate:v14];

  return v7;
}

- (id)fetchRequestForAllStoreIDs:(id)a3 dsids:(id)a4 isImported:(BOOL)a5 includeHidden:(BOOL)a6
{
  v7 = a5;
  v9 = [(BLJaliscoServerSource *)self fetchRequestForAllStoreIDs:a3 dsids:a4];
  v10 = MEMORY[0x277CBEB18];
  v11 = [v9 predicate];
  v12 = [(BLJaliscoServerSource *)self predicateForNeedsImport:!v7];
  v13 = [v10 arrayWithObjects:{v11, v12, 0}];

  if (!a6)
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == NO OR %K == NULL)", @"isHidden", @"isHidden"];
    [v13 addObject:v14];
  }

  v15 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v13];
  [v9 setPredicate:v15];

  return v9;
}

- (id)predicateForNeedsImport:(BOOL)a3
{
  if (a3)
  {
    v4 = @"(%K == YES)";
  }

  else
  {
    v4 = @"(%K == NO OR %K == NULL)";
  }

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:v4, @"needsImport", @"needsImport"];
  v6 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  v7 = [MEMORY[0x277CF32F0] sharedProvider];
  v8 = [v7 activeStoreAccount];
  v9 = [v8 ams_DSID];
  v10 = v9;
  v11 = &unk_2853F21A0;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [(BLJaliscoServerSource *)self platformPredicatesForItemsWithActiveUserID:v12];

  [v6 addObjectsFromArray:v13];
  v14 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];

  return v14;
}

- (id)fetchRequestForBuyParameters:(id)a3
{
  v3 = MEMORY[0x277CBE428];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeDownloadParameters == %@", v4];

  [v7 setPredicate:v8];

  return v7;
}

- (id)fetchRequestForNotInStoreAccountIDs:(id)a3
{
  v3 = MEMORY[0x277CBE428];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  v8 = [v4 valueForKey:@"stringValue"];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (storeAccountID IN %@)", v8];
  [v7 setPredicate:v9];

  return v7;
}

- (id)predicateForStoreAccountID:(id)a3 storeIDs:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [a3 stringValue];
  v9 = [v6 predicateWithFormat:@"storeAccountID = %@", v8];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", v7, v9];

  v23[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v12 = [v11 mutableCopy];

  v13 = [MEMORY[0x277CF32F0] sharedProvider];
  v14 = [v13 activeStoreAccount];
  v15 = [v14 ams_DSID];
  v16 = v15;
  v17 = &unk_2853F21A0;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [(BLJaliscoServerSource *)self platformPredicatesForItemsWithActiveUserID:v18];

  [v12 addObjectsFromArray:v19];
  v20 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v12];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)fetchRequestForBookletItemsForStoreIDs:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x277CCA920];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", v4];

  v14[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v8 andPredicateWithSubpredicates:v10];
  [v7 setPredicate:v11];

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchRequestForAllBookletsIDsWithParentStoreIDs:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"parentItem.storeID IN %@", v4];

  [v7 setPredicate:v8];
  [v7 setReturnsDistinctResults:1];
  [v7 setResultType:2];
  v14[0] = @"storeID";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v7 setPropertiesToGroupBy:v9];

  v13 = @"storeID";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v7 setPropertiesToFetch:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchRequestForHiddenItemsWithAccountIDs:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  v8 = [v4 valueForKey:@"stringValue"];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"database.server.userUID IN %@", v8];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == YES)", @"isHidden"];
  v11 = MEMORY[0x277CCA920];
  v16[0] = v9;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];
  [v7 setPredicate:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

@end