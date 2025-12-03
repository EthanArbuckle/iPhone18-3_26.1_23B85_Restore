@interface BLJaliscoServerSource
+ (id)sharedSource;
+ (void)preWarmSync;
- (BLJaliscoServerSource)init;
- (BLJaliscoServerSource)initWithIdentifier:(id)identifier databaseContainerPath:(id)path;
- (BOOL)_setupCoreDataStack;
- (BOOL)p_createPersistentDirectoryIfNeeded;
- (BOOL)p_databaseExistsAtPrivateiBooksContainerLocation;
- (BOOL)p_databaseExistsAtSharediBooksContainerLocation;
- (BOOL)truncateDatabaseError:(id *)error;
- (BOOL)workaround_18397698;
- (NSPersistentHistoryToken)currentJaliscoHistoryToken;
- (id)_persistentStoreOptions;
- (id)existingEntitiesWithName:(id)name matchingPredicate:(id)predicate fromManagedObjectContext:(id)context limit:(unint64_t)limit error:(id *)error;
- (id)existingServerDatabaseWithPredicate:(id)predicate fromManagedObjectContext:(id)context error:(id *)error;
- (id)existingServerInfoWithPredicate:(id)predicate fromManagedObjectContext:(id)context error:(id *)error;
- (id)existingServerItemWithPredicate:(id)predicate fromManagedObjectContext:(id)context error:(id *)error;
- (id)fetchRequestForAllBookletsIDsWithParentStoreIDs:(id)ds;
- (id)fetchRequestForAllCloudIDs:(id)ds dsids:(id)dsids;
- (id)fetchRequestForAllStoreIDs:(id)ds;
- (id)fetchRequestForAllStoreIDs:(id)ds dsids:(id)dsids;
- (id)fetchRequestForAllStoreIDs:(id)ds dsids:(id)dsids isImported:(BOOL)imported includeHidden:(BOOL)hidden;
- (id)fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:(id)token dsids:(id)dsids;
- (id)fetchRequestForBookletItemsForStoreIDs:(id)ds;
- (id)fetchRequestForBuyParameters:(id)parameters;
- (id)fetchRequestForHiddenItemsWithAccountIDs:(id)ds;
- (id)fetchRequestForNotInStoreAccountIDs:(id)ds;
- (id)fetchRequestForStoreIDs:(id)ds dsids:(id)dsids;
- (id)managedObjectModel;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithPrivateQueueConcurrency;
- (id)p_oldPersistentStoreDirectory;
- (id)p_persistentStoreDirectory;
- (id)p_persistentStoreFullPathAtPrivateiBooksLocation;
- (id)p_persistentStoreFullPathAtSharediBooksLocation;
- (id)persistentStoreCoordinatorWithError:(id *)error;
- (id)platformPredicatesForItemsWithActiveUserID:(id)d;
- (id)predicateForBookletItems:(BOOL)items dsids:(id)dsids;
- (id)predicateForItems:(BOOL)items dsids:(id)dsids;
- (id)predicateForNeedsImport:(BOOL)import;
- (id)predicateForStoreAccountID:(id)d storeIDs:(id)ds;
- (id)serverDatabaseForDSID:(id)d fromManagedObjectContext:(id)context error:(id *)error;
- (id)serverDatabaseForDSID:(id)d withIdentifier:(id)identifier fromManagedObjectContext:(id)context error:(id *)error;
- (id)serverInfoForDSID:(id)d fromManagedObjectContext:(id)context error:(id *)error;
- (id)serverItemWithStoreID:(id)d inDatabaseWithIdentifier:(id)identifier forDSID:(id)iD fromManagedObjectContext:(id)context error:(id *)error;
- (void)dealloc;
- (void)refreshStoreWithCompletion:(id)completion;
@end

@implementation BLJaliscoServerSource

+ (void)preWarmSync
{
  kdebug_trace();
  v3 = +[BLJaliscoServerSource sharedSource];
  persistentStoreCoordinator = [v3 persistentStoreCoordinator];
  kdebug_trace();
}

+ (id)sharedSource
{
  os_unfair_lock_lock(&unk_280BC5810);
  if (!qword_280BC5860)
  {
    v3 = [self alloc];
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
  managedObjectModel = [(BLJaliscoServerSource *)self managedObjectModel];
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
  p_persistentStoreDirectory = [(BLJaliscoServerSource *)self p_persistentStoreDirectory];
  v3 = +[BLJaliscoVersion persistentStoreFileName];
  v4 = [p_persistentStoreDirectory stringByAppendingPathComponent:v3];

  return v4;
}

- (id)p_persistentStoreDirectory
{
  databaseContainerPath = [(BLJaliscoServerSource *)self databaseContainerPath];

  if (databaseContainerPath)
  {
    databaseContainerPath2 = [(BLJaliscoServerSource *)self databaseContainerPath];
  }

  else
  {
    bu_booksGroupContainerDocumentsURL = [MEMORY[0x277CBEBC0] bu_booksGroupContainerDocumentsURL];
    path = [bu_booksGroupContainerDocumentsURL path];

    databaseContainerPath2 = [path stringByAppendingPathComponent:@"BKJaliscoServerSource"];
  }

  return databaseContainerPath2;
}

- (BOOL)p_databaseExistsAtPrivateiBooksContainerLocation
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  p_persistentStoreFullPathAtPrivateiBooksLocation = [(BLJaliscoServerSource *)self p_persistentStoreFullPathAtPrivateiBooksLocation];
  v5 = [defaultManager fileExistsAtPath:p_persistentStoreFullPathAtPrivateiBooksLocation];

  return v5;
}

- (id)p_persistentStoreFullPathAtPrivateiBooksLocation
{
  p_oldPersistentStoreDirectory = [(BLJaliscoServerSource *)self p_oldPersistentStoreDirectory];
  v3 = +[BLJaliscoVersion persistentStoreFileName];
  v4 = [p_oldPersistentStoreDirectory stringByAppendingPathComponent:v3];

  return v4;
}

- (id)p_oldPersistentStoreDirectory
{
  databaseContainerPath = [(BLJaliscoServerSource *)self databaseContainerPath];

  if (databaseContainerPath)
  {
    databaseContainerPath2 = [(BLJaliscoServerSource *)self databaseContainerPath];
  }

  else
  {
    v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    lastObject = [v5 lastObject];
    databaseContainerPath2 = [lastObject stringByAppendingPathComponent:@"BKJaliscoServerSource"];
  }

  return databaseContainerPath2;
}

- (BOOL)p_createPersistentDirectoryIfNeeded
{
  p_persistentStoreDirectory = [(BLJaliscoServerSource *)self p_persistentStoreDirectory];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:p_persistentStoreDirectory isDirectory:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  relativePath = [v3 relativePath];
  v8 = 0;
  v6 = [defaultManager createDirectoryAtPath:relativePath withIntermediateDirectories:1 attributes:0 error:&v8];

  return v6;
}

- (BOOL)p_databaseExistsAtSharediBooksContainerLocation
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  p_persistentStoreFullPathAtSharediBooksLocation = [(BLJaliscoServerSource *)self p_persistentStoreFullPathAtSharediBooksLocation];
  v5 = [defaultManager fileExistsAtPath:p_persistentStoreFullPathAtSharediBooksLocation];

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

- (BLJaliscoServerSource)initWithIdentifier:(id)identifier databaseContainerPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = BLJaliscoServerSource;
  v8 = [(BLJaliscoServerSource *)&v16 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [pathCopy copy];
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
  newManagedObjectContext = [(BLJaliscoServerSource *)self newManagedObjectContext];
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"BLJaliscoServerItem"];
  [v5 setResultType:4];
  v45 = 0;
  v6 = [newManagedObjectContext executeFetchRequest:v5 error:&v45];
  v7 = v45;
  firstObject = [v6 firstObject];

  if (firstObject)
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
    v12 = [newManagedObjectContext executeFetchRequest:v9 error:&v44];
    v13 = v44;

    if (v9)
    {
      integerValue = [firstObject integerValue];
      v15 = [v12 count];
      v16 = 0;
      if (integerValue < 2001 || integerValue <= 3 * v15)
      {
        goto LABEL_29;
      }

      v32 = v12;
      v33 = v9;
      v34 = firstObject;
      v35 = v5;
      v36 = newManagedObjectContext;
      v37 = v3;
      persistentStoreCoordinator = [newManagedObjectContext persistentStoreCoordinator];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      persistentStores = [persistentStoreCoordinator persistentStores];
      v19 = [persistentStores copy];

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
            type = [v24 type];
            if (v25)
            {
              v39 = v13;
              v27 = [persistentStoreCoordinator destroyPersistentStoreAtURL:v25 withType:type options:0 error:&v39];
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

      newManagedObjectContext = v36;
      v3 = v37;
      firstObject = v34;
      v5 = v35;
      v12 = v32;
      v9 = v33;
      v16 = v38;
    }

    else
    {
      persistentStoreCoordinator = BLJaliscoLog();
      if (os_log_type_enabled(persistentStoreCoordinator, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v13;
        _os_log_impl(&dword_241D1F000, persistentStoreCoordinator, OS_LOG_TYPE_ERROR, "Failed to fetch distinct items count:  %@", buf, 0xCu);
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

- (id)persistentStoreCoordinatorWithError:(id *)error
{
  pscSentinel = self->_pscSentinel;
  p_pscSentinel = &self->_pscSentinel;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D50E00;
  v7[3] = &unk_278D17A40;
  v7[4] = self;
  v7[5] = error;
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

- (id)serverInfoForDSID:(id)d fromManagedObjectContext:(id)context error:(id *)error
{
  v8 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v10 = [v8 predicateWithFormat:@"userUID = %@", d];
  v15 = 0;
  v11 = [(BLJaliscoServerSource *)self existingServerInfoWithPredicate:v10 fromManagedObjectContext:contextCopy error:&v15];

  v12 = v15;
  if (error && !v11)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)truncateDatabaseError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  newManagedObjectContext = [(BLJaliscoServerSource *)self newManagedObjectContext];
  _persistentStoreOptions = [(BLJaliscoServerSource *)self _persistentStoreOptions];
  v7 = [(BLJaliscoServerSource *)self persistentStoreCoordinatorWithError:error];
  persistentStores = [v7 persistentStores];
  lastObject = [persistentStores lastObject];

  v10 = MEMORY[0x277CBEBC0];
  p_persistentStoreFullPathAtSharediBooksLocation = [(BLJaliscoServerSource *)self p_persistentStoreFullPathAtSharediBooksLocation];
  v12 = [v10 fileURLWithPath:p_persistentStoreFullPathAtSharediBooksLocation isDirectory:0];

  if (lastObject)
  {
    v13 = [v7 URLForPersistentStore:lastObject];

    [v7 removePersistentStore:lastObject error:0];
    [newManagedObjectContext reset];
    v14 = *MEMORY[0x277CBE2E8];
    v15 = [v7 destroyPersistentStoreAtURL:v13 withType:*MEMORY[0x277CBE2E8] options:_persistentStoreOptions error:error];
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

  v18 = [(NSPersistentStoreCoordinator *)self->_psc addPersistentStoreWithType:v14 configuration:0 URL:v12 options:_persistentStoreOptions error:error];
  if (v18)
  {
    v19 = v18;
    v20 = BLJaliscoLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v19 identifier];
      currentJaliscoHistoryToken = [(BLJaliscoServerSource *)self currentJaliscoHistoryToken];
      v28 = 138413058;
      v29 = v12;
      v30 = 2112;
      v31 = identifier;
      v32 = 2112;
      v33 = _persistentStoreOptions;
      v34 = 2112;
      v35 = currentJaliscoHistoryToken;
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
  resetPoliteTimers = [v24 resetPoliteTimers];

  v26 = *MEMORY[0x277D85DE8];
  return v23 & resetPoliteTimers;
}

- (void)refreshStoreWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  v28 = 0;
  completionCopy = completion;
  v5 = [(BLJaliscoServerSource *)self persistentStoreCoordinatorWithError:&v28];
  v6 = v28;
  persistentStores = [v5 persistentStores];
  lastObject = [persistentStores lastObject];

  v9 = MEMORY[0x277CBEBC0];
  p_persistentStoreFullPathAtSharediBooksLocation = [(BLJaliscoServerSource *)self p_persistentStoreFullPathAtSharediBooksLocation];
  v11 = [v9 fileURLWithPath:p_persistentStoreFullPathAtSharediBooksLocation isDirectory:0];

  _persistentStoreOptions = [(BLJaliscoServerSource *)self _persistentStoreOptions];
  v13 = BLJaliscoLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [lastObject identifier];
    *buf = 138412546;
    v30 = v11;
    v31 = 2112;
    v32 = identifier;
    _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEFAULT, "Trying to refresh store at storeURL:(%@), persistentstoreID:(%@)", buf, 0x16u);
  }

  if (lastObject)
  {
    v15 = [v5 URLForPersistentStore:lastObject];

    [v5 removePersistentStore:lastObject error:0];
    psc = self->_psc;
    v17 = *MEMORY[0x277CBE2E8];
    v27 = v6;
    v18 = [(NSPersistentStoreCoordinator *)psc addPersistentStoreWithType:v17 configuration:0 URL:v15 options:_persistentStoreOptions error:&v27];
    v19 = v27;

    v20 = BLJaliscoLog();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [v18 identifier];
        currentJaliscoHistoryToken = [(BLJaliscoServerSource *)self currentJaliscoHistoryToken];
        *buf = 138413058;
        v30 = v15;
        v31 = 2112;
        v32 = identifier2;
        v33 = 2112;
        v34 = _persistentStoreOptions;
        v35 = 2112;
        v36 = currentJaliscoHistoryToken;
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

  v25 = MEMORY[0x245CFF560](completionCopy);
  if (v25)
  {
    v25[2](v25, v24);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)serverDatabaseForDSID:(id)d fromManagedObjectContext:(id)context error:(id *)error
{
  v8 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v10 = [v8 predicateWithFormat:@"server.userUID = %@", d];
  v15 = 0;
  v11 = [(BLJaliscoServerSource *)self existingServerDatabaseWithPredicate:v10 fromManagedObjectContext:contextCopy error:&v15];

  v12 = v15;
  if (error && !v11)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (id)serverDatabaseForDSID:(id)d withIdentifier:(id)identifier fromManagedObjectContext:(id)context error:(id *)error
{
  v10 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v12 = [v10 predicateWithFormat:@"identifier = %@ AND server.userUID = %@", identifier, d];
  v17 = 0;
  v13 = [(BLJaliscoServerSource *)self existingServerDatabaseWithPredicate:v12 fromManagedObjectContext:contextCopy error:&v17];

  v14 = v17;
  if (error && !v13)
  {
    v15 = v14;
    *error = v14;
  }

  return v13;
}

- (id)existingEntitiesWithName:(id)name matchingPredicate:(id)predicate fromManagedObjectContext:(id)context limit:(unint64_t)limit error:(id *)error
{
  nameCopy = name;
  predicateCopy = predicate;
  contextCopy = context;
  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc_init(MEMORY[0x277CBE428]);
  v16 = [MEMORY[0x277CBE408] entityForName:nameCopy inManagedObjectContext:contextCopy];
  [v15 setEntity:v16];

  [v15 setPredicate:predicateCopy];
  [v15 setResultType:1];
  if (limit)
  {
    [v15 setFetchLimit:limit];
  }

  v22 = 0;
  v17 = [contextCopy executeFetchRequest:v15 error:&v22];
  v18 = v22;
  v19 = v18;
  if (v18)
  {
    if (error)
    {
      v20 = v18;
      *error = v19;
    }

    [v19 logRecursively];
  }

  objc_autoreleasePoolPop(v14);

  return v17;
}

- (id)existingServerInfoWithPredicate:(id)predicate fromManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v16 = 0;
  v9 = [(BLJaliscoServerSource *)self existingEntitiesWithName:@"BLJaliscoServerInfo" matchingPredicate:predicate fromManagedObjectContext:contextCopy limit:1 error:&v16];
  v10 = v16;
  lastObject = [v9 lastObject];

  if (lastObject)
  {
    lastObject2 = [v9 lastObject];
    v13 = [contextCopy existingObjectWithID:lastObject2 error:0];
  }

  else if (error)
  {
    v14 = v10;
    v13 = 0;
    *error = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)existingServerDatabaseWithPredicate:(id)predicate fromManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v16 = 0;
  v9 = [(BLJaliscoServerSource *)self existingEntitiesWithName:@"BLJaliscoServerDatabase" matchingPredicate:predicate fromManagedObjectContext:contextCopy limit:1 error:&v16];
  v10 = v16;
  lastObject = [v9 lastObject];

  if (lastObject)
  {
    lastObject2 = [v9 lastObject];
    v13 = [contextCopy existingObjectWithID:lastObject2 error:0];
  }

  else if (error)
  {
    v14 = v10;
    v13 = 0;
    *error = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)existingServerItemWithPredicate:(id)predicate fromManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v16 = 0;
  v9 = [(BLJaliscoServerSource *)self existingEntitiesWithName:@"BLJaliscoServerItem" matchingPredicate:predicate fromManagedObjectContext:contextCopy limit:1 error:&v16];
  v10 = v16;
  lastObject = [v9 lastObject];

  if (lastObject)
  {
    lastObject2 = [v9 lastObject];
    v13 = [contextCopy existingObjectWithID:lastObject2 error:0];
  }

  else if (error)
  {
    v14 = v10;
    v13 = 0;
    *error = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serverItemWithStoreID:(id)d inDatabaseWithIdentifier:(id)identifier forDSID:(id)iD fromManagedObjectContext:(id)context error:(id *)error
{
  v12 = MEMORY[0x277CCAC30];
  contextCopy = context;
  iDCopy = iD;
  identifierCopy = identifier;
  stringValue = [d stringValue];
  iDCopy = [v12 predicateWithFormat:@"storeID = %@ AND database.identifier = %@ and database.server.userUID = %@", stringValue, identifierCopy, iDCopy];

  v22 = 0;
  v18 = [(BLJaliscoServerSource *)self existingServerItemWithPredicate:iDCopy fromManagedObjectContext:contextCopy error:&v22];

  v19 = v22;
  if (error && !v18)
  {
    v20 = v19;
    *error = v19;
  }

  return v18;
}

- (id)platformPredicatesForItemsWithActiveUserID:(id)d
{
  dCopy = d;
  v4 = objc_opt_new();
  v5 = MEMORY[0x277CCAC30];
  stringValue = [dCopy stringValue];
  stringValue2 = [dCopy stringValue];

  v8 = [v5 predicateWithFormat:@"(((database.server.userUID == %@) AND (%K == NO OR %K == NULL)) OR ((database.server.userUID != %@) AND (%K == YES)))", stringValue, @"isAudiobook", @"isAudiobook", stringValue2, @"isAudiobook"];
  [v4 addObject:v8];

  return v4;
}

- (id)predicateForItems:(BOOL)items dsids:(id)dsids
{
  dsidsCopy = dsids;
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];

  if (ams_DSID)
  {
    v10 = [dsidsCopy valueForKey:@"stringValue"];
    v11 = v10;
    v12 = MEMORY[0x277CBEBF8];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"database.server.userUID IN %@", v13];

    v15 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
    v16 = [(BLJaliscoServerSource *)self platformPredicatesForItemsWithActiveUserID:ams_DSID];
    [v15 addObjectsFromArray:v16];

    if (!items)
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

- (id)predicateForBookletItems:(BOOL)items dsids:(id)dsids
{
  dsidsCopy = dsids;
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];

  if (ams_DSID)
  {
    v9 = [dsidsCopy valueForKey:@"stringValue"];
    v10 = v9;
    v11 = MEMORY[0x277CBEBF8];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"parentItem.database.server.userUID IN %@", v12];

    v14 = [MEMORY[0x277CBEB18] arrayWithObject:v13];
    if (!items)
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

- (id)fetchRequestForAllCloudIDs:(id)ds dsids:(id)dsids
{
  dsidsCopy = dsids;
  dsCopy = ds;
  v8 = [(BLJaliscoServerSource *)self itemsFetchRequestForDSIDs:dsidsCopy];
  v9 = [dsCopy count];
  v10 = [dsidsCopy count];

  [v8 setFetchLimit:v10 * v9];
  v11 = MEMORY[0x277CBEB18];
  predicate = [v8 predicate];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudID IN %@", dsCopy];

  v14 = [v11 arrayWithObjects:{predicate, dsCopy, 0}];

  v15 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v14];
  [v8 setPredicate:v15];

  return v8;
}

- (id)fetchRequestForStoreIDs:(id)ds dsids:(id)dsids
{
  dsidsCopy = dsids;
  dsCopy = ds;
  v8 = [(BLJaliscoServerSource *)self itemsFetchRequestForDSIDs:dsidsCopy];
  v9 = [dsCopy count];
  v10 = [dsidsCopy count];

  [v8 setFetchLimit:v10 * v9];
  v11 = MEMORY[0x277CBEB18];
  predicate = [v8 predicate];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", dsCopy];

  v14 = [v11 arrayWithObjects:{predicate, dsCopy, 0}];

  v15 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v14];
  [v8 setPredicate:v15];

  return v8;
}

- (id)fetchRequestForAllStoreIDs:(id)ds dsids:(id)dsids
{
  dsidsCopy = dsids;
  dsCopy = ds;
  v8 = [(BLJaliscoServerSource *)self allItemsFetchRequestForDSIDs:dsidsCopy];
  v9 = [dsCopy count];
  v10 = [dsidsCopy count];

  [v8 setFetchLimit:v10 * v9];
  v11 = MEMORY[0x277CBEB18];
  predicate = [v8 predicate];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", dsCopy];

  v14 = [v11 arrayWithObjects:{predicate, dsCopy, 0}];

  v15 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v14];
  [v8 setPredicate:v15];

  return v8;
}

- (id)fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:(id)token dsids:(id)dsids
{
  dsidsCopy = dsids;
  tokenCopy = token;
  v8 = [(BLJaliscoServerSource *)self allItemsFetchRequestForDSIDs:dsidsCopy];
  v9 = [tokenCopy count];
  v10 = [dsidsCopy count];

  [v8 setFetchLimit:v10 * v9];
  v11 = MEMORY[0x277CBEB18];
  predicate = [v8 predicate];
  tokenCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", tokenCopy];
  tokenCopy2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"purchasedTokenCode != NULL and purchasedTokenCode != 0", tokenCopy];

  v15 = [v11 arrayWithObjects:{predicate, tokenCopy, tokenCopy2, 0}];

  v16 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v15];
  [v8 setPredicate:v16];

  return v8;
}

- (id)fetchRequestForAllStoreIDs:(id)ds
{
  dsCopy = ds;
  v4 = MEMORY[0x277CBE428];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 fetchRequestWithEntityName:v6];

  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];

  if (ams_DSID)
  {
    v11 = MEMORY[0x277CBEA60];
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"artist" ascending:1];
    v13 = [v11 arrayWithObject:v12];
    [v7 setSortDescriptors:v13];
  }

  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", dsCopy];
  [v7 setPredicate:dsCopy];

  return v7;
}

- (id)fetchRequestForAllStoreIDs:(id)ds dsids:(id)dsids isImported:(BOOL)imported includeHidden:(BOOL)hidden
{
  importedCopy = imported;
  v9 = [(BLJaliscoServerSource *)self fetchRequestForAllStoreIDs:ds dsids:dsids];
  v10 = MEMORY[0x277CBEB18];
  predicate = [v9 predicate];
  v12 = [(BLJaliscoServerSource *)self predicateForNeedsImport:!importedCopy];
  v13 = [v10 arrayWithObjects:{predicate, v12, 0}];

  if (!hidden)
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == NO OR %K == NULL)", @"isHidden", @"isHidden"];
    [v13 addObject:v14];
  }

  v15 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v13];
  [v9 setPredicate:v15];

  return v9;
}

- (id)predicateForNeedsImport:(BOOL)import
{
  if (import)
  {
    v4 = @"(%K == YES)";
  }

  else
  {
    v4 = @"(%K == NO OR %K == NULL)";
  }

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:v4, @"needsImport", @"needsImport"];
  v6 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  v10 = ams_DSID;
  v11 = &unk_2853F21A0;
  if (ams_DSID)
  {
    v11 = ams_DSID;
  }

  v12 = v11;

  v13 = [(BLJaliscoServerSource *)self platformPredicatesForItemsWithActiveUserID:v12];

  [v6 addObjectsFromArray:v13];
  v14 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];

  return v14;
}

- (id)fetchRequestForBuyParameters:(id)parameters
{
  v3 = MEMORY[0x277CBE428];
  parametersCopy = parameters;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  parametersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeDownloadParameters == %@", parametersCopy];

  [v7 setPredicate:parametersCopy];

  return v7;
}

- (id)fetchRequestForNotInStoreAccountIDs:(id)ds
{
  v3 = MEMORY[0x277CBE428];
  dsCopy = ds;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  v8 = [dsCopy valueForKey:@"stringValue"];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (storeAccountID IN %@)", v8];
  [v7 setPredicate:v9];

  return v7;
}

- (id)predicateForStoreAccountID:(id)d storeIDs:(id)ds
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  dsCopy = ds;
  stringValue = [d stringValue];
  v9 = [v6 predicateWithFormat:@"storeAccountID = %@", stringValue];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", dsCopy, v9];

  v23[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v12 = [v11 mutableCopy];

  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  v16 = ams_DSID;
  v17 = &unk_2853F21A0;
  if (ams_DSID)
  {
    v17 = ams_DSID;
  }

  v18 = v17;

  v19 = [(BLJaliscoServerSource *)self platformPredicatesForItemsWithActiveUserID:v18];

  [v12 addObjectsFromArray:v19];
  v20 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v12];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)fetchRequestForBookletItemsForStoreIDs:(id)ds
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  dsCopy = ds;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x277CCA920];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", dsCopy];

  v14[0] = dsCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v8 andPredicateWithSubpredicates:v10];
  [v7 setPredicate:v11];

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchRequestForAllBookletsIDsWithParentStoreIDs:(id)ds
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  dsCopy = ds;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"parentItem.storeID IN %@", dsCopy];

  [v7 setPredicate:dsCopy];
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

- (id)fetchRequestForHiddenItemsWithAccountIDs:(id)ds
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  dsCopy = ds;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 fetchRequestWithEntityName:v6];

  v8 = [dsCopy valueForKey:@"stringValue"];

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