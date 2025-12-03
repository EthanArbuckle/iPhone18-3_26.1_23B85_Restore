@interface ULPersistenceStore
- (BOOL)_isMigrationRequired:(id)required;
- (BOOL)loadWithCoordinator:(id)coordinator error:(id *)error;
- (ULPersistenceStore)initWithURL:(id)l useWal:(BOOL)wal;
- (id)_getLoadedModelVersionNumber:(id)number;
- (id)_getStoreMetaData:(id *)data;
- (id)_getStoreModelVersionNumber;
- (id)_getVersionNumberFromModelVersion:(id)version;
@end

@implementation ULPersistenceStore

- (ULPersistenceStore)initWithURL:(id)l useWal:(BOOL)wal
{
  walCopy = wal;
  lCopy = l;
  v21.receiver = self;
  v21.super_class = ULPersistenceStore;
  v7 = [(ULPersistenceStore *)&v21 init];
  if (v7)
  {
    v8 = objc_opt_new();
    [(ULPersistenceStore *)v7 setStoreDescription:v8];

    storeDescription = [(ULPersistenceStore *)v7 storeDescription];
    [storeDescription setShouldAddStoreAsynchronously:0];

    storeDescription2 = [(ULPersistenceStore *)v7 storeDescription];
    [storeDescription2 setShouldMigrateStoreAutomatically:1];

    storeDescription3 = [(ULPersistenceStore *)v7 storeDescription];
    [storeDescription3 setShouldInferMappingModelAutomatically:1];

    storeDescription4 = [(ULPersistenceStore *)v7 storeDescription];
    [storeDescription4 setURL:lCopy];

    v13 = *MEMORY[0x277CBE2E8];
    storeDescription5 = [(ULPersistenceStore *)v7 storeDescription];
    [storeDescription5 setType:v13];

    storeDescription6 = [(ULPersistenceStore *)v7 storeDescription];
    [storeDescription6 setOption:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CBE240]];

    v16 = @"DELETE";
    if (walCopy)
    {
      v16 = @"WAL";
    }

    v17 = v16;
    storeDescription7 = [(ULPersistenceStore *)v7 storeDescription];
    [storeDescription7 setValue:v17 forPragmaNamed:@"journal_mode"];

    storeDescription8 = [(ULPersistenceStore *)v7 storeDescription];
    [storeDescription8 setValue:&unk_286A71CE8 forPragmaNamed:@"cache_spill"];
  }

  return v7;
}

- (BOOL)loadWithCoordinator:(id)coordinator error:(id *)error
{
  coordinatorCopy = coordinator;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__30;
  v16 = __Block_byref_object_dispose__30;
  v17 = 0;
  managedObjectModel = [coordinatorCopy managedObjectModel];
  [(ULPersistenceStore *)self setIsMigrationToLatestModelRequired:[(ULPersistenceStore *)self _isMigrationRequired:managedObjectModel]];

  storeDescription = [(ULPersistenceStore *)self storeDescription];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ULPersistenceStore_loadWithCoordinator_error___block_invoke;
  v11[3] = &unk_2798D4BD8;
  v11[4] = &v12;
  v11[5] = &v18;
  [coordinatorCopy addPersistentStoreWithDescription:storeDescription completionHandler:v11];

  if (error)
  {
    *error = v13[5];
  }

  v9 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v9;
}

void __48__ULPersistenceStore_loadWithCoordinator_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 32) + 8) + 40) == 0;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __48__ULPersistenceStore_loadWithCoordinator_error___block_invoke_cold_1();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_FAULT, "Could not add store with error = %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isMigrationRequired:(id)required
{
  v28 = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  storeDescription = [(ULPersistenceStore *)self storeDescription];
  v7 = [storeDescription URL];
  path = [v7 path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    v10 = [(ULPersistenceStore *)self _getLoadedModelVersionNumber:requiredCopy];
    _getStoreModelVersionNumber = [(ULPersistenceStore *)self _getStoreModelVersionNumber];
    [(ULPersistenceStore *)self setStoreModelVersionBeforeMigration:_getStoreModelVersionNumber];

    if (v10)
    {
      storeModelVersionBeforeMigration = [(ULPersistenceStore *)self storeModelVersionBeforeMigration];

      if (storeModelVersionBeforeMigration)
      {
        storeModelVersionBeforeMigration2 = [(ULPersistenceStore *)self storeModelVersionBeforeMigration];
        LODWORD(storeModelVersionBeforeMigration) = storeModelVersionBeforeMigration2 < v10;
      }
    }

    else
    {
      LODWORD(storeModelVersionBeforeMigration) = 0;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      __48__ULPersistenceStore_loadWithCoordinator_error___block_invoke_cold_1();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      storeModelVersionBeforeMigration3 = [(ULPersistenceStore *)self storeModelVersionBeforeMigration];
      v19[0] = 68289794;
      v19[1] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = storeModelVersionBeforeMigration3;
      v26 = 1026;
      v27 = storeModelVersionBeforeMigration;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Checking if migration to latest model is required, loaded model version:%{public, location:escape_only}@, store model version:%{public, location:escape_only}@, isMigrationRequired:%{public}hhd}", v19, 0x2Cu);
    }
  }

  else
  {
    LOBYTE(storeModelVersionBeforeMigration) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return storeModelVersionBeforeMigration;
}

- (id)_getVersionNumberFromModelVersion:(id)version
{
  versionCopy = version;
  if (!versionCopy)
  {
    goto LABEL_9;
  }

  if (_getVersionNumberFromModelVersion__onceToken != -1)
  {
    [ULPersistenceStore _getVersionNumberFromModelVersion:];
  }

  if (_getVersionNumberFromModelVersion__versionRegex)
  {
    v4 = [_getVersionNumberFromModelVersion__versionRegex firstMatchInString:versionCopy options:0 range:{0, objc_msgSend(versionCopy, "length")}];
    v5 = v4;
    if (v4)
    {
      if ([v4 numberOfRanges] < 2)
      {
        if ([v5 numberOfRanges] == 1)
        {
          v8 = &unk_286A71D00;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v6 = [v5 rangeAtIndex:1];
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = &unk_286A71D00;
        }

        else
        {
          v10 = [versionCopy substringWithRange:{v6, v7}];
          v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

void __56__ULPersistenceStore__getVersionNumberFromModelVersion___block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"^[\\s]*%@$|^%@[\\s]+(\\d+)[\\s]*$", @"milo", @"milo"];
  v9 = 0;
  v1 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v0 options:0 error:&v9];
  v2 = v9;
  v3 = _getVersionNumberFromModelVersion__versionRegex;
  _getVersionNumberFromModelVersion__versionRegex = v1;

  if (v2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __56__ULPersistenceStore__getVersionNumberFromModelVersion___block_invoke_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v2 domain];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "code")}];
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2113;
      v15 = v6;
      v16 = 2113;
      v17 = v7;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:error creating regex, error domain:%{private, location:escape_only}@, error code:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_getLoadedModelVersionNumber:(id)number
{
  versionIdentifiers = [number versionIdentifiers];
  allObjects = [versionIdentifiers allObjects];

  if ([allObjects count])
  {
    firstObject = [allObjects firstObject];
    v7 = [(ULPersistenceStore *)self _getVersionNumberFromModelVersion:firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_getStoreMetaData:(id *)data
{
  v5 = MEMORY[0x277CBE4D8];
  v6 = *MEMORY[0x277CBE2E8];
  storeDescription = [(ULPersistenceStore *)self storeDescription];
  v8 = [storeDescription URL];
  storeDescription2 = [(ULPersistenceStore *)self storeDescription];
  options = [storeDescription2 options];
  v11 = [v5 metadataForPersistentStoreOfType:v6 URL:v8 options:options error:data];

  return v11;
}

- (id)_getStoreModelVersionNumber
{
  v31 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v3 = [(ULPersistenceStore *)self _getStoreMetaData:&v21];
  v4 = v21;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"NSStoreModelVersionIdentifiers"];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(ULPersistenceStore *)self _getVersionNumberFromModelVersion:*(*(&v17 + 1) + 8 * i), v17];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v30 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v13 = [v6 valueForKeyPath:@"@max.self"];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    __56__ULPersistenceStore__getVersionNumberFromModelVersion___block_invoke_cold_1();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2114;
    v27 = v13;
    v28 = 2113;
    v29 = v4;
    _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Checking model version used by store, latest supported model version:%{public, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x26u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

@end