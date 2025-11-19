@interface BLJaliscoReadOnlyDAAPClient
+ (id)sharedClient;
- (BLJaliscoReadOnlyDAAPClient)initWithIdentifier:(id)a3 databaseContainerPath:(id)a4 accountDSID:(id)a5;
- (BOOL)_setupCoreDataStack;
- (BOOL)p_createPersistentDirectoryIfNeeded;
- (id)_itemsFetchRequestForDSIDs:(id)a3 excludeStoreIDs:(id)a4 isExplicitRestricted:(BOOL)a5;
- (id)fetchAllServerItemsForDSIDs:(id)a3;
- (id)fetchAllServerItemsWithPredicate:(id)a3 sortDescriptor:(id)a4;
- (id)fetchItemsForDSIDs:(id)a3 excludeStoreIDs:(id)a4 isExplicitRestricted:(BOOL)a5;
- (id)fetchItemsForStoreIDs:(id)a3;
- (id)fetchServerItemsForStoreIDs:(id)a3 andDSIDS:(id)a4;
- (id)p_allItemsFetchRequestForDSIDs:(id)a3 matchingSearchString:(id)a4 isExplicitRestricted:(BOOL)a5;
- (id)p_fetchRequestForStoreIDs:(id)a3 dsids:(id)a4;
- (id)p_persistentStoreDirectory;
- (id)p_persistentStoreFullPathAtSharediBooksLocation;
- (id)predicateForItems:(BOOL)a3 dsids:(id)a4;
- (id)predicateToExcludeStoreIDs:(id)a3;
- (id)searchAllServerItemsForDSIDs:(id)a3 matchingSearchString:(id)a4 isExplicitRestricted:(BOOL)a5;
- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4;
- (void)dealloc;
@end

@implementation BLJaliscoReadOnlyDAAPClient

+ (id)sharedClient
{
  os_unfair_lock_lock(&unk_280BC5830);
  if (!qword_280BC5858)
  {
    v2 = [BLJaliscoReadOnlyDAAPClient alloc];
    v3 = +[BLJaliscoVersion defaultIdentifier];
    v4 = [MEMORY[0x277CF32F0] sharedProvider];
    v5 = [v4 activeStoreAccount];
    v6 = [v5 ams_DSID];
    v7 = [(BLJaliscoReadOnlyDAAPClient *)v2 initWithIdentifier:v3 databaseContainerPath:0 accountDSID:v6];
    v8 = qword_280BC5858;
    qword_280BC5858 = v7;
  }

  os_unfair_lock_unlock(&unk_280BC5830);
  v9 = qword_280BC5858;

  return v9;
}

- (BLJaliscoReadOnlyDAAPClient)initWithIdentifier:(id)a3 databaseContainerPath:(id)a4 accountDSID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = BLJaliscoReadOnlyDAAPClient;
  v11 = [(BLJaliscoReadOnlyDAAPClient *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    databaseContainerPath = v11->_databaseContainerPath;
    v11->_databaseContainerPath = v14;

    objc_storeStrong(&v11->_currentAccountDSID, a5);
    if (![(BLJaliscoReadOnlyDAAPClient *)v11 _setupCoreDataStack])
    {
      v17 = 0;
      goto LABEL_6;
    }

    v16 = [MEMORY[0x277CF32F0] sharedProvider];
    [v16 addObserver:v11 accountTypes:1];
  }

  v17 = v11;
LABEL_6:

  return v17;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CF32F0] sharedProvider];
  [v3 removeObserver:self accountTypes:1];

  model = self->_model;
  self->_model = 0;

  psc = self->_psc;
  self->_psc = 0;

  moc = self->_moc;
  self->_moc = 0;

  v7.receiver = self;
  v7.super_class = BLJaliscoReadOnlyDAAPClient;
  [(BLJaliscoReadOnlyDAAPClient *)&v7 dealloc];
}

- (id)fetchAllServerItemsForDSIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  moc = self->_moc;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D707E8;
  v12[3] = &unk_278D17C88;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(NSManagedObjectContext *)moc performBlockAndWait:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)searchAllServerItemsForDSIDs:(id)a3 matchingSearchString:(id)a4 isExplicitRestricted:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_241D70AA8;
  v24 = sub_241D70AB8;
  v25 = objc_opt_new();
  moc = self->_moc;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D70AC0;
  v15[3] = &unk_278D18A40;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v19 = a5;
  v17 = v12;
  v18 = &v20;
  [(NSManagedObjectContext *)moc performBlockAndWait:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)fetchAllServerItemsWithPredicate:(id)a3 sortDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  moc = self->_moc;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D70D00;
  v16[3] = &unk_278D16A30;
  v17 = v6;
  v18 = v7;
  v19 = self;
  v10 = v8;
  v20 = v10;
  v11 = v7;
  v12 = v6;
  [(NSManagedObjectContext *)moc performBlockAndWait:v16];
  v13 = v20;
  v14 = v10;

  return v10;
}

- (id)fetchServerItemsForStoreIDs:(id)a3 andDSIDS:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  moc = self->_moc;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D70F7C;
  v16[3] = &unk_278D16A30;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  [(NSManagedObjectContext *)moc performBlockAndWait:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (id)fetchItemsForStoreIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  moc = self->_moc;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D71198;
  v12[3] = &unk_278D17C88;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(NSManagedObjectContext *)moc performBlockAndWait:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)fetchItemsForDSIDs:(id)a3 excludeStoreIDs:(id)a4 isExplicitRestricted:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  moc = self->_moc;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_241D713F0;
  v18[3] = &unk_278D18A68;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v22 = a5;
  v12 = v10;
  v21 = v12;
  v13 = v9;
  v14 = v8;
  [(NSManagedObjectContext *)moc performBlockAndWait:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

- (id)predicateToExcludeStoreIDs:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (storeID IN %@)", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_setupCoreDataStack
{
  v40[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"BKPurchases" ofType:@"momd"];

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:@"[BLJaliscoServerSource managedObjectModel]" format:@"[[NSBundle bundleForClass:[self class]] pathForResource:@'BKPurchases' ofType:@'momd'] failed"];
  }

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  v6 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v5];
  model = self->_model;
  self->_model = v6;

  if (!self->_model)
  {
    v24 = objc_alloc(MEMORY[0x277CBEAD8]);
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load model %@", v5];
    v26 = [v24 initWithName:@"Nil jalisco model" reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v8 = *MEMORY[0x277CBE240];
  v39[0] = *MEMORY[0x277CBE2B0];
  v39[1] = v8;
  v9 = *MEMORY[0x277CCA1B8];
  v40[0] = MEMORY[0x277CBEC38];
  v40[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v11 = MEMORY[0x277CBEBC0];
  v12 = [(BLJaliscoReadOnlyDAAPClient *)self p_persistentStoreFullPathAtSharediBooksLocation];
  v13 = [v11 fileURLWithPath:v12 isDirectory:0];

  v14 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:self->_model];
  psc = self->_psc;
  self->_psc = v14;

  v16 = self->_psc;
  v17 = *MEMORY[0x277CBE2E8];
  v36[0] = 0;
  v18 = [(NSPersistentStoreCoordinator *)v16 addPersistentStoreWithType:v17 configuration:0 URL:v13 options:v10 error:v36];
  v19 = v36[0];
  if (!v18)
  {
    v28 = objc_alloc(MEMORY[0x277CBEAD8]);
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create a moc for the persistent store %@", v13];
    v37 = *MEMORY[0x277CCA7E8];
    v30 = v19;
    if (!v19)
    {
      v30 = [MEMORY[0x277CBEB68] null];
    }

    v38 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v32 = [v28 initWithName:@"Nil jalisco persistentStore" reason:v29 userInfo:v31];
    v33 = v32;

    if (!v19)
    {
    }

LABEL_13:

    objc_exception_throw(v32);
  }

  v20 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  moc = self->_moc;
  self->_moc = v20;

  [(NSManagedObjectContext *)self->_moc setPersistentStoreCoordinator:self->_psc];
  [(NSManagedObjectContext *)self->_moc setUndoManager:0];
  [(NSManagedObjectContext *)self->_moc setMergePolicy:*MEMORY[0x277CBE1D0]];
  if (!self->_moc)
  {
    v34 = objc_alloc(MEMORY[0x277CBEAD8]);
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create a moc for the persistent store %@", v13];
    v32 = [v34 initWithName:@"Nil jalisco moc" reason:v29 userInfo:0];
    v35 = v32;
    goto LABEL_13;
  }

  result = 1;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)p_allItemsFetchRequestForDSIDs:(id)a3 matchingSearchString:(id)a4 isExplicitRestricted:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBE428];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 fetchRequestWithEntityName:v12];

  v14 = [(BLJaliscoReadOnlyDAAPClient *)self currentAccountDSID];
  if (v14 && (v15 = v14, v16 = [v9 length], v15, v16))
  {
    v32 = v8;
    v17 = [v8 valueForKey:@"stringValue"];
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCAC68] escapedPatternForString:v9];
    v20 = [v18 stringWithFormat:@".*\\b%@.*", v19];

    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"database.server.userUID IN %@", v17];
    [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == NO OR %K == NULL)", @"isHidden", @"isHidden"];
    v23 = v22 = v5;
    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K MATCHES[cd] %@ OR %K MATCHES[cd] %@)", @"title", v20, @"artist", v20];
    v33 = v23;
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v21, v23, v24, 0}];
    if (v22)
    {
      v26 = [objc_opt_class() predicateForNonExplicitItems];
      [v25 addObject:v26];
    }

    v27 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v25];
    [v13 setPredicate:v27];

    v28 = MEMORY[0x277CBEA60];
    v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"sortedTitle" ascending:1];
    v30 = [v28 arrayWithObject:v29];
    [v13 setSortDescriptors:v30];

    v8 = v32;
  }

  else
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithValue:0];
    [v13 setPredicate:v17];
  }

  return v13;
}

- (id)p_fetchRequestForStoreIDs:(id)a3 dsids:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLJaliscoReadOnlyDAAPClient *)self p_allItemsFetchRequestForDSIDs:v7];
  if ([v7 count])
  {
    [v8 setFetchLimit:{objc_msgSend(v7, "count") * objc_msgSend(v6, "count")}];
  }

  v9 = MEMORY[0x277CBEB18];
  v10 = [v8 predicate];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", v6];
  v12 = [v9 arrayWithObjects:{v10, v11, 0}];

  v13 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v12];
  [v8 setPredicate:v13];

  return v8;
}

- (id)predicateForItems:(BOOL)a3 dsids:(id)a4
{
  v6 = a4;
  v7 = [(BLJaliscoReadOnlyDAAPClient *)self currentAccountDSID];

  if (v7)
  {
    v8 = objc_opt_new();
    if ([v6 count])
    {
      v9 = [v6 valueForKey:@"stringValue"];
      v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"database.server.userUID IN %@", v9];
      [v8 addObject:v10];
    }

    if (!a3)
    {
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == NO OR %K == NULL)", @"isHidden", @"isHidden"];
      [v8 addObject:v11];
    }

    v12 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v8];
  }

  else
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  }

  return v12;
}

- (id)_itemsFetchRequestForDSIDs:(id)a3 excludeStoreIDs:(id)a4 isExplicitRestricted:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(BLJaliscoReadOnlyDAAPClient *)self p_itemsFetchRequestIncludingHiddenItems:0 dsids:v9];
  v11 = [v9 count];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB18];
    v13 = [v10 predicate];
    v14 = [v12 arrayWithObject:v13];

    v15 = [(BLJaliscoReadOnlyDAAPClient *)self predicateToExcludeStoreIDs:v8];
    if (v15)
    {
      [v14 addObject:v15];
    }

    if (v5)
    {
      v16 = +[BLJaliscoReadOnlyDAAPClient predicateForNonExplicitItems];
      [v14 addObject:v16];
    }

    v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v14];
    [v10 setPredicate:v17];

    v18 = MEMORY[0x277CBEA60];
    v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"sortedTitle" ascending:1];
    v20 = [v18 arrayWithObject:v19];
    [v10 setSortDescriptors:v20];
  }

  else
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithValue:0];
    [v10 setPredicate:v14];
  }

  return v10;
}

- (id)p_persistentStoreDirectory
{
  v2 = [(BLJaliscoReadOnlyDAAPClient *)self databaseContainerPath];
  if (![v2 length])
  {
    v3 = [MEMORY[0x277CBEBC0] bu_booksGroupContainerDocumentsURL];
    v4 = [v3 path];

    v5 = [v4 stringByAppendingPathComponent:@"BKJaliscoServerSource"];

    v2 = v5;
  }

  return v2;
}

- (BOOL)p_createPersistentDirectoryIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(BLJaliscoReadOnlyDAAPClient *)self p_persistentStoreDirectory];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 relativePath];
  v11 = 0;
  v6 = [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = BLJaliscoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "BLJaliscoReadOnlyDAAPClient: Failed to create a persistent store directory at URL %@. Error: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)p_persistentStoreFullPathAtSharediBooksLocation
{
  v2 = [(BLJaliscoReadOnlyDAAPClient *)self p_persistentStoreDirectory];
  v3 = +[BLJaliscoVersion persistentStoreFileName];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4
{
  if (a4)
  {
    v8 = [MEMORY[0x277CF32F0] sharedProvider];
    v5 = [v8 activeStoreAccount];
    v6 = [v5 ams_DSID];
    currentAccountDSID = self->_currentAccountDSID;
    self->_currentAccountDSID = v6;
  }
}

@end