@interface BLJaliscoReadOnlyDAAPClient
+ (id)sharedClient;
- (BLJaliscoReadOnlyDAAPClient)initWithIdentifier:(id)identifier databaseContainerPath:(id)path accountDSID:(id)d;
- (BOOL)_setupCoreDataStack;
- (BOOL)p_createPersistentDirectoryIfNeeded;
- (id)_itemsFetchRequestForDSIDs:(id)ds excludeStoreIDs:(id)iDs isExplicitRestricted:(BOOL)restricted;
- (id)fetchAllServerItemsForDSIDs:(id)ds;
- (id)fetchAllServerItemsWithPredicate:(id)predicate sortDescriptor:(id)descriptor;
- (id)fetchItemsForDSIDs:(id)ds excludeStoreIDs:(id)iDs isExplicitRestricted:(BOOL)restricted;
- (id)fetchItemsForStoreIDs:(id)ds;
- (id)fetchServerItemsForStoreIDs:(id)ds andDSIDS:(id)s;
- (id)p_allItemsFetchRequestForDSIDs:(id)ds matchingSearchString:(id)string isExplicitRestricted:(BOOL)restricted;
- (id)p_fetchRequestForStoreIDs:(id)ds dsids:(id)dsids;
- (id)p_persistentStoreDirectory;
- (id)p_persistentStoreFullPathAtSharediBooksLocation;
- (id)predicateForItems:(BOOL)items dsids:(id)dsids;
- (id)predicateToExcludeStoreIDs:(id)ds;
- (id)searchAllServerItemsForDSIDs:(id)ds matchingSearchString:(id)string isExplicitRestricted:(BOOL)restricted;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
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
    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
    ams_DSID = [activeStoreAccount ams_DSID];
    v7 = [(BLJaliscoReadOnlyDAAPClient *)v2 initWithIdentifier:v3 databaseContainerPath:0 accountDSID:ams_DSID];
    v8 = qword_280BC5858;
    qword_280BC5858 = v7;
  }

  os_unfair_lock_unlock(&unk_280BC5830);
  v9 = qword_280BC5858;

  return v9;
}

- (BLJaliscoReadOnlyDAAPClient)initWithIdentifier:(id)identifier databaseContainerPath:(id)path accountDSID:(id)d
{
  identifierCopy = identifier;
  pathCopy = path;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = BLJaliscoReadOnlyDAAPClient;
  v11 = [(BLJaliscoReadOnlyDAAPClient *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [pathCopy copy];
    databaseContainerPath = v11->_databaseContainerPath;
    v11->_databaseContainerPath = v14;

    objc_storeStrong(&v11->_currentAccountDSID, d);
    if (![(BLJaliscoReadOnlyDAAPClient *)v11 _setupCoreDataStack])
    {
      v17 = 0;
      goto LABEL_6;
    }

    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    [mEMORY[0x277CF32F0] addObserver:v11 accountTypes:1];
  }

  v17 = v11;
LABEL_6:

  return v17;
}

- (void)dealloc
{
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  [mEMORY[0x277CF32F0] removeObserver:self accountTypes:1];

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

- (id)fetchAllServerItemsForDSIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  moc = self->_moc;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D707E8;
  v12[3] = &unk_278D17C88;
  v12[4] = self;
  v13 = dsCopy;
  v7 = v5;
  v14 = v7;
  v8 = dsCopy;
  [(NSManagedObjectContext *)moc performBlockAndWait:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)searchAllServerItemsForDSIDs:(id)ds matchingSearchString:(id)string isExplicitRestricted:(BOOL)restricted
{
  dsCopy = ds;
  stringCopy = string;
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
  v11 = dsCopy;
  v16 = v11;
  v12 = stringCopy;
  restrictedCopy = restricted;
  v17 = v12;
  v18 = &v20;
  [(NSManagedObjectContext *)moc performBlockAndWait:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)fetchAllServerItemsWithPredicate:(id)predicate sortDescriptor:(id)descriptor
{
  predicateCopy = predicate;
  descriptorCopy = descriptor;
  v8 = objc_opt_new();
  moc = self->_moc;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D70D00;
  v16[3] = &unk_278D16A30;
  v17 = predicateCopy;
  v18 = descriptorCopy;
  selfCopy = self;
  v10 = v8;
  v20 = v10;
  v11 = descriptorCopy;
  v12 = predicateCopy;
  [(NSManagedObjectContext *)moc performBlockAndWait:v16];
  v13 = v20;
  v14 = v10;

  return v10;
}

- (id)fetchServerItemsForStoreIDs:(id)ds andDSIDS:(id)s
{
  dsCopy = ds;
  sCopy = s;
  v8 = objc_opt_new();
  moc = self->_moc;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D70F7C;
  v16[3] = &unk_278D16A30;
  v16[4] = self;
  v17 = dsCopy;
  v18 = sCopy;
  v10 = v8;
  v19 = v10;
  v11 = sCopy;
  v12 = dsCopy;
  [(NSManagedObjectContext *)moc performBlockAndWait:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (id)fetchItemsForStoreIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  moc = self->_moc;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D71198;
  v12[3] = &unk_278D17C88;
  v12[4] = self;
  v13 = dsCopy;
  v7 = v5;
  v14 = v7;
  v8 = dsCopy;
  [(NSManagedObjectContext *)moc performBlockAndWait:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)fetchItemsForDSIDs:(id)ds excludeStoreIDs:(id)iDs isExplicitRestricted:(BOOL)restricted
{
  dsCopy = ds;
  iDsCopy = iDs;
  v10 = objc_opt_new();
  moc = self->_moc;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_241D713F0;
  v18[3] = &unk_278D18A68;
  v18[4] = self;
  v19 = dsCopy;
  v20 = iDsCopy;
  restrictedCopy = restricted;
  v12 = v10;
  v21 = v12;
  v13 = iDsCopy;
  v14 = dsCopy;
  [(NSManagedObjectContext *)moc performBlockAndWait:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

- (id)predicateToExcludeStoreIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (storeID IN %@)", dsCopy];
  }

  else
  {
    dsCopy = 0;
  }

  return dsCopy;
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
  p_persistentStoreFullPathAtSharediBooksLocation = [(BLJaliscoReadOnlyDAAPClient *)self p_persistentStoreFullPathAtSharediBooksLocation];
  v13 = [v11 fileURLWithPath:p_persistentStoreFullPathAtSharediBooksLocation isDirectory:0];

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
    null = v19;
    if (!v19)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v38 = null;
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

- (id)p_allItemsFetchRequestForDSIDs:(id)ds matchingSearchString:(id)string isExplicitRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  dsCopy = ds;
  stringCopy = string;
  v10 = MEMORY[0x277CBE428];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 fetchRequestWithEntityName:v12];

  currentAccountDSID = [(BLJaliscoReadOnlyDAAPClient *)self currentAccountDSID];
  if (currentAccountDSID && (v15 = currentAccountDSID, v16 = [stringCopy length], v15, v16))
  {
    v32 = dsCopy;
    v17 = [dsCopy valueForKey:@"stringValue"];
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCAC68] escapedPatternForString:stringCopy];
    v20 = [v18 stringWithFormat:@".*\\b%@.*", v19];

    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"database.server.userUID IN %@", v17];
    [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == NO OR %K == NULL)", @"isHidden", @"isHidden"];
    v23 = v22 = restrictedCopy;
    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K MATCHES[cd] %@ OR %K MATCHES[cd] %@)", @"title", v20, @"artist", v20];
    v33 = v23;
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v21, v23, v24, 0}];
    if (v22)
    {
      predicateForNonExplicitItems = [objc_opt_class() predicateForNonExplicitItems];
      [v25 addObject:predicateForNonExplicitItems];
    }

    v27 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v25];
    [v13 setPredicate:v27];

    v28 = MEMORY[0x277CBEA60];
    v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"sortedTitle" ascending:1];
    v30 = [v28 arrayWithObject:v29];
    [v13 setSortDescriptors:v30];

    dsCopy = v32;
  }

  else
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithValue:0];
    [v13 setPredicate:v17];
  }

  return v13;
}

- (id)p_fetchRequestForStoreIDs:(id)ds dsids:(id)dsids
{
  dsCopy = ds;
  dsidsCopy = dsids;
  v8 = [(BLJaliscoReadOnlyDAAPClient *)self p_allItemsFetchRequestForDSIDs:dsidsCopy];
  if ([dsidsCopy count])
  {
    [v8 setFetchLimit:{objc_msgSend(dsidsCopy, "count") * objc_msgSend(dsCopy, "count")}];
  }

  v9 = MEMORY[0x277CBEB18];
  predicate = [v8 predicate];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID IN %@", dsCopy];
  v12 = [v9 arrayWithObjects:{predicate, dsCopy, 0}];

  v13 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v12];
  [v8 setPredicate:v13];

  return v8;
}

- (id)predicateForItems:(BOOL)items dsids:(id)dsids
{
  dsidsCopy = dsids;
  currentAccountDSID = [(BLJaliscoReadOnlyDAAPClient *)self currentAccountDSID];

  if (currentAccountDSID)
  {
    v8 = objc_opt_new();
    if ([dsidsCopy count])
    {
      v9 = [dsidsCopy valueForKey:@"stringValue"];
      v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"database.server.userUID IN %@", v9];
      [v8 addObject:v10];
    }

    if (!items)
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

- (id)_itemsFetchRequestForDSIDs:(id)ds excludeStoreIDs:(id)iDs isExplicitRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  iDsCopy = iDs;
  dsCopy = ds;
  v10 = [(BLJaliscoReadOnlyDAAPClient *)self p_itemsFetchRequestIncludingHiddenItems:0 dsids:dsCopy];
  v11 = [dsCopy count];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB18];
    predicate = [v10 predicate];
    v14 = [v12 arrayWithObject:predicate];

    v15 = [(BLJaliscoReadOnlyDAAPClient *)self predicateToExcludeStoreIDs:iDsCopy];
    if (v15)
    {
      [v14 addObject:v15];
    }

    if (restrictedCopy)
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
  databaseContainerPath = [(BLJaliscoReadOnlyDAAPClient *)self databaseContainerPath];
  if (![databaseContainerPath length])
  {
    bu_booksGroupContainerDocumentsURL = [MEMORY[0x277CBEBC0] bu_booksGroupContainerDocumentsURL];
    path = [bu_booksGroupContainerDocumentsURL path];

    v5 = [path stringByAppendingPathComponent:@"BKJaliscoServerSource"];

    databaseContainerPath = v5;
  }

  return databaseContainerPath;
}

- (BOOL)p_createPersistentDirectoryIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  p_persistentStoreDirectory = [(BLJaliscoReadOnlyDAAPClient *)self p_persistentStoreDirectory];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:p_persistentStoreDirectory isDirectory:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  relativePath = [v3 relativePath];
  v11 = 0;
  v6 = [defaultManager createDirectoryAtPath:relativePath withIntermediateDirectories:1 attributes:0 error:&v11];
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
  p_persistentStoreDirectory = [(BLJaliscoReadOnlyDAAPClient *)self p_persistentStoreDirectory];
  v3 = +[BLJaliscoVersion persistentStoreFileName];
  v4 = [p_persistentStoreDirectory stringByAppendingPathComponent:v3];

  return v4;
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  if (reason)
  {
    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
    ams_DSID = [activeStoreAccount ams_DSID];
    currentAccountDSID = self->_currentAccountDSID;
    self->_currentAccountDSID = ams_DSID;
  }
}

@end