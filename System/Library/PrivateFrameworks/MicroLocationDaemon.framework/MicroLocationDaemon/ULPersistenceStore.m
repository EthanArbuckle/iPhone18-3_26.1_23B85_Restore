@interface ULPersistenceStore
- (BOOL)_isMigrationRequired:(id)a3;
- (BOOL)loadWithCoordinator:(id)a3 error:(id *)a4;
- (ULPersistenceStore)initWithURL:(id)a3 useWal:(BOOL)a4;
- (id)_getLoadedModelVersionNumber:(id)a3;
- (id)_getStoreMetaData:(id *)a3;
- (id)_getStoreModelVersionNumber;
- (id)_getVersionNumberFromModelVersion:(id)a3;
@end

@implementation ULPersistenceStore

- (ULPersistenceStore)initWithURL:(id)a3 useWal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v21.receiver = self;
  v21.super_class = ULPersistenceStore;
  v7 = [(ULPersistenceStore *)&v21 init];
  if (v7)
  {
    v8 = objc_opt_new();
    [(ULPersistenceStore *)v7 setStoreDescription:v8];

    v9 = [(ULPersistenceStore *)v7 storeDescription];
    [v9 setShouldAddStoreAsynchronously:0];

    v10 = [(ULPersistenceStore *)v7 storeDescription];
    [v10 setShouldMigrateStoreAutomatically:1];

    v11 = [(ULPersistenceStore *)v7 storeDescription];
    [v11 setShouldInferMappingModelAutomatically:1];

    v12 = [(ULPersistenceStore *)v7 storeDescription];
    [v12 setURL:v6];

    v13 = *MEMORY[0x277CBE2E8];
    v14 = [(ULPersistenceStore *)v7 storeDescription];
    [v14 setType:v13];

    v15 = [(ULPersistenceStore *)v7 storeDescription];
    [v15 setOption:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CBE240]];

    v16 = @"DELETE";
    if (v4)
    {
      v16 = @"WAL";
    }

    v17 = v16;
    v18 = [(ULPersistenceStore *)v7 storeDescription];
    [v18 setValue:v17 forPragmaNamed:@"journal_mode"];

    v19 = [(ULPersistenceStore *)v7 storeDescription];
    [v19 setValue:&unk_286A71CE8 forPragmaNamed:@"cache_spill"];
  }

  return v7;
}

- (BOOL)loadWithCoordinator:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [v6 managedObjectModel];
  [(ULPersistenceStore *)self setIsMigrationToLatestModelRequired:[(ULPersistenceStore *)self _isMigrationRequired:v7]];

  v8 = [(ULPersistenceStore *)self storeDescription];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ULPersistenceStore_loadWithCoordinator_error___block_invoke;
  v11[3] = &unk_2798D4BD8;
  v11[4] = &v12;
  v11[5] = &v18;
  [v6 addPersistentStoreWithDescription:v8 completionHandler:v11];

  if (a4)
  {
    *a4 = v13[5];
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

- (BOOL)_isMigrationRequired:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(ULPersistenceStore *)self storeDescription];
  v7 = [v6 URL];
  v8 = [v7 path];
  v9 = [v5 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = [(ULPersistenceStore *)self _getLoadedModelVersionNumber:v4];
    v11 = [(ULPersistenceStore *)self _getStoreModelVersionNumber];
    [(ULPersistenceStore *)self setStoreModelVersionBeforeMigration:v11];

    if (v10)
    {
      v12 = [(ULPersistenceStore *)self storeModelVersionBeforeMigration];

      if (v12)
      {
        v13 = [(ULPersistenceStore *)self storeModelVersionBeforeMigration];
        LODWORD(v12) = v13 < v10;
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      __48__ULPersistenceStore_loadWithCoordinator_error___block_invoke_cold_1();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ULPersistenceStore *)self storeModelVersionBeforeMigration];
      v19[0] = 68289794;
      v19[1] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v16;
      v26 = 1026;
      v27 = v12;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Checking if migration to latest model is required, loaded model version:%{public, location:escape_only}@, store model version:%{public, location:escape_only}@, isMigrationRequired:%{public}hhd}", v19, 0x2Cu);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_getVersionNumberFromModelVersion:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (_getVersionNumberFromModelVersion__onceToken != -1)
  {
    [ULPersistenceStore _getVersionNumberFromModelVersion:];
  }

  if (_getVersionNumberFromModelVersion__versionRegex)
  {
    v4 = [_getVersionNumberFromModelVersion__versionRegex firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
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
          v10 = [v3 substringWithRange:{v6, v7}];
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

- (id)_getLoadedModelVersionNumber:(id)a3
{
  v4 = [a3 versionIdentifiers];
  v5 = [v4 allObjects];

  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [(ULPersistenceStore *)self _getVersionNumberFromModelVersion:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_getStoreMetaData:(id *)a3
{
  v5 = MEMORY[0x277CBE4D8];
  v6 = *MEMORY[0x277CBE2E8];
  v7 = [(ULPersistenceStore *)self storeDescription];
  v8 = [v7 URL];
  v9 = [(ULPersistenceStore *)self storeDescription];
  v10 = [v9 options];
  v11 = [v5 metadataForPersistentStoreOfType:v6 URL:v8 options:v10 error:a3];

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