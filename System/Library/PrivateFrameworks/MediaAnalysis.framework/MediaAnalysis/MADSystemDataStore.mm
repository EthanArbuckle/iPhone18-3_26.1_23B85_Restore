@interface MADSystemDataStore
+ (id)defaultDatabasePath;
+ (id)modelDefinitionPath;
+ (id)systemDataStore;
+ (id)systemDataStoreAtPath:(id)path;
- (BOOL)commitChangesOrRollback:(id *)rollback;
- (BOOL)commitChangesOrRollbackAndResetContext:(id *)context;
- (MADSystemDataStore)initWithManagedObjectModel:(id)model;
- (MADSystemDataStore)initWithManagedObjectModel:(id)model path:(id)path;
- (id)newManagedObjectContext;
- (void)rollbackAndResetContext;
@end

@implementation MADSystemDataStore

+ (id)modelDefinitionPath
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaAnalysis"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pathForResource:@"SystemDataStore" ofType:@"momd"];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to load bundle", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)defaultDatabasePath
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library/MediaAnalysis/MediaAnalysis.sqlite"];

  return v2;
}

- (MADSystemDataStore)initWithManagedObjectModel:(id)model path:(id)path
{
  v44[4] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  pathCopy = path;
  v38.receiver = self;
  v38.super_class = MADSystemDataStore;
  v8 = [(MADSystemDataStore *)&v38 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:modelCopy];
    persistentStoreCoordinator = v8->_persistentStoreCoordinator;
    v8->_persistentStoreCoordinator = v9;

    v11 = *MEMORY[0x1E695D318];
    v43[0] = *MEMORY[0x1E695D380];
    v43[1] = v11;
    v44[0] = MEMORY[0x1E695E118];
    v44[1] = MEMORY[0x1E695E118];
    v12 = *MEMORY[0x1E695D3F8];
    v43[2] = *MEMORY[0x1E695D4A0];
    v43[3] = v12;
    v13 = *MEMORY[0x1E696A388];
    v44[2] = &unk_1F49BF2E8;
    v44[3] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:4];
    if (pathCopy)
    {
      defaultDatabasePath = pathCopy;
    }

    else
    {
      defaultDatabasePath = [objc_opt_class() defaultDatabasePath];
      if (!defaultDatabasePath)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to determine database path", buf, 2u);
        }

        goto LABEL_36;
      }
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v17 = defaultManager;
    if (pathCopy)
    {
      if (([defaultManager fileExistsAtPath:pathCopy] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = pathCopy;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Provided path does not exist: %@", buf, 0xCu);
        }

LABEL_35:

LABEL_36:
        v33 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      stringByDeletingLastPathComponent = [defaultDatabasePath stringByDeletingLastPathComponent];
      if (([v17 fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = stringByDeletingLastPathComponent;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Creating %@", buf, 0xCu);
        }

        v39 = *MEMORY[0x1E696A370];
        v40 = &unk_1F49BC178;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v37 = 0;
        v20 = [v17 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v19 error:&v37];
        v21 = v37;

        if ((v20 & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v21;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create MediaAnalysis directory for database (%@)", buf, 0xCu);
          }

          goto LABEL_35;
        }
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = defaultDatabasePath;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Opening %@", buf, 0xCu);
    }

    v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:defaultDatabasePath isDirectory:0];
    storeURL = v8->_storeURL;
    v8->_storeURL = v22;

    v24 = v8->_persistentStoreCoordinator;
    v25 = *MEMORY[0x1E695D4A8];
    v26 = v8->_storeURL;
    v36 = 0;
    v27 = [(NSPersistentStoreCoordinator *)v24 addPersistentStoreWithType:v25 configuration:0 URL:v26 options:v14 error:&v36];
    v28 = v36;
    v29 = v28;
    if (v28)
    {
      code = [v28 code];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v29;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create database (%@)", buf, 0xCu);
      }
    }

    else
    {
      v31 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
      managedObjectContext = v8->_managedObjectContext;
      v8->_managedObjectContext = v31;

      [(NSManagedObjectContext *)v8->_managedObjectContext setPersistentStoreCoordinator:v8->_persistentStoreCoordinator];
      [(NSManagedObjectContext *)v8->_managedObjectContext setMergePolicy:*MEMORY[0x1E695D378]];
      code = 0;
    }

    if (code)
    {
      goto LABEL_36;
    }
  }

  v33 = v8;
LABEL_37:
  v34 = v33;

  return v34;
}

- (MADSystemDataStore)initWithManagedObjectModel:(id)model
{
  modelCopy = model;
  v5 = [[MADSystemDataStore alloc] initWithManagedObjectModel:modelCopy path:0];

  return v5;
}

+ (id)systemDataStoreAtPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  modelDefinitionPath = [objc_opt_class() modelDefinitionPath];
  if (modelDefinitionPath)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:modelDefinitionPath];
    v6 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v5];
    if (v6)
    {
      v7 = [[MADSystemDataStore alloc] initWithManagedObjectModel:v6 path:pathCopy];
      v8 = +[MADSystemDataStore systemDataStoreAtPath:]::database;
      +[MADSystemDataStore systemDataStoreAtPath:]::database = v7;

      if (+[MADSystemDataStore systemDataStoreAtPath:]::database)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = pathCopy;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADSystemDataStore] Successfully opened MediaAnalysis CoreData at path %@", &v14, 0xCu);
        }

        v9 = +[MADSystemDataStore systemDataStoreAtPath:]::database;
        goto LABEL_20;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        v9 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v14 = 138412290;
      v15 = pathCopy;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "[MADSystemDataStore] Failed to open MediaAnalysis CoreData at path %@";
      v12 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      LOWORD(v14) = 0;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "[MADSystemDataStore] Failed to load embedding model";
      v12 = 2;
    }

    _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_ERROR, v11, &v14, v12);
    goto LABEL_19;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Missing model definition (%@)", &v14, 0xCu);
  }

  v9 = 0;
LABEL_21:

  return v9;
}

+ (id)systemDataStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MADSystemDataStore_systemDataStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MADSystemDataStore systemDataStore]::once != -1)
  {
    dispatch_once(&+[MADSystemDataStore systemDataStore]::once, block);
  }

  v2 = +[MADSystemDataStore systemDataStore]::database;

  return v2;
}

void __37__MADSystemDataStore_systemDataStore__block_invoke()
{
  v59 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() modelDefinitionPath];
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0];
    v2 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v1];
    if (v2)
    {
      v3 = [[MADSystemDataStore alloc] initWithManagedObjectModel:v2];
      v4 = +[MADSystemDataStore systemDataStore]::database;
      +[MADSystemDataStore systemDataStore]::database = v3;

      if (+[MADSystemDataStore systemDataStore]::database)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADSystemDataStore] Successfully opened MediaAnalysis CoreData", &buf, 2u);
        }

        v5 = objc_autoreleasePoolPush();
        v6 = [+[MADSystemDataStore systemDataStore]::database _persistentStoreCoordinator];
        v7 = v6;
        if (!v6)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = @"[MADSystemDataStore][Migration]";
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to fetch store coordinator", &buf, 0xCu);
          }

          goto LABEL_48;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v55 = 0x3032000000;
        v56 = __Block_byref_object_copy__31;
        v57 = __Block_byref_object_dispose__31;
        v58 = 0;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_224;
        v42[3] = &unk_1E834C4B0;
        p_buf = &buf;
        v8 = v6;
        v43 = v8;
        [v8 performBlockAndWait:v42];
        if (!*(*(&buf + 1) + 40))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v49) = 138412290;
            *(&v49 + 4) = @"[MADSystemDataStore][Migration]";
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to fetch store with coordinator", &v49, 0xCu);
          }

          goto LABEL_47;
        }

        *&v49 = 0;
        *(&v49 + 1) = &v49;
        v50 = 0x3032000000;
        v51 = __Block_byref_object_copy__31;
        v52 = __Block_byref_object_dispose__31;
        v53 = 0;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_226;
        v38[3] = &unk_1E834E3C8;
        v40 = &v49;
        v9 = v8;
        v39 = v9;
        v41 = &buf;
        [v9 performBlockAndWait:v38];
        v27 = [*(*(&v49 + 1) + 40) objectForKeyedSubscript:@"ActivityScheduleMigrationDate"];
        v26 = [*(*(&v49 + 1) + 40) objectForKeyedSubscript:@"ActivityScheduleMigrationAttempts"];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v10 = +[VCPLogManager dateFormatter];
          v11 = [v10 stringFromDate:v27];
          *v45 = 138412546;
          v46 = @"[MADSystemDataStore][Migration]";
          v47 = 2112;
          v48 = v11;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Migration date %@", v45, 0x16u);
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *v45 = 138412546;
          v46 = @"[MADSystemDataStore][Migration]";
          v47 = 2112;
          v48 = v26;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Migration attempts %@", v45, 0x16u);
        }

        if (v26)
        {
          v12 = [v26 intValue];
        }

        else
        {
          v12 = 0;
        }

        if (v27 || v12 > 4)
        {
          if (!v27 || !v12)
          {
            goto LABEL_46;
          }

          v24 = [*(*(&v49 + 1) + 40) mutableCopy];
          [v24 removeObjectForKey:@"ActivityScheduleMigrationAttempts"];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_238;
          v28[3] = &unk_1E834CE28;
          v29 = v9;
          v17 = v24;
          v30[0] = v17;
          v30[1] = &buf;
          [v29 performBlockAndWait:v28];
          v22 = &v29;
          v23 = v30;
        }

        else
        {
          v25 = [*(*(&v49 + 1) + 40) mutableCopy];
          v15 = [MEMORY[0x1E696AD98] numberWithInt:(v12 + 1)];
          [v25 setValue:v15 forKey:@"ActivityScheduleMigrationAttempts"];

          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_235;
          v35[3] = &unk_1E834CE28;
          v16 = v9;
          v36 = v16;
          v17 = v25;
          v37[0] = v17;
          v37[1] = &buf;
          [v16 performBlockAndWait:v35];
          v18 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
          [v18 setPersistentStoreCoordinator:v16];
          [v18 setMergePolicy:*MEMORY[0x1E695D378]];
          if ([MADManagedBackgroundActivitySchedule migrateDataWithManagedObjectContext:v18])
          {
            v19 = [MEMORY[0x1E695DF00] now];
            [v17 setValue:v19 forKey:@"ActivityScheduleMigrationDate"];

            [v17 removeObjectForKey:@"ActivityScheduleMigrationAttempts"];
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_2;
            v31[3] = &unk_1E834CE28;
            v32 = v16;
            v20 = v17;
            v33 = v20;
            v34 = &buf;
            [v32 performBlockAndWait:v31];
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v20 objectForKeyedSubscript:@"ActivityScheduleMigrationDate"];
              *v45 = 138412546;
              v46 = @"[MADSystemDataStore][Migration]";
              v47 = 2112;
              v48 = v21;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Migrated Scheduling History (%@)", v45, 0x16u);
            }
          }

          v22 = &v36;
          v23 = v37;
        }

LABEL_46:
        _Block_object_dispose(&v49, 8);

LABEL_47:
        _Block_object_dispose(&buf, 8);

LABEL_48:
        objc_autoreleasePoolPop(v5);
        goto LABEL_49;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      LOWORD(buf) = 0;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "[MADSystemDataStore] Failed to open MediaAnalysis CoreData";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      LOWORD(buf) = 0;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "[MADSystemDataStore] Failed to load embedding model";
    }

    _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_ERROR, v14, &buf, 2u);
LABEL_49:

    goto LABEL_50;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Missing model definition (%@)", &buf, 0xCu);
  }

LABEL_50:
}

void __37__MADSystemDataStore_systemDataStore__block_invoke_224(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [+[MADSystemDataStore systemDataStore]::database _storeURL];
  v3 = [v2 persistentStoreForURL:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __37__MADSystemDataStore_systemDataStore__block_invoke_226(uint64_t a1)
{
  v2 = [*(a1 + 32) metadataForPersistentStore:*(*(*(a1 + 48) + 8) + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)newManagedObjectContext
{
  v3 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  [v3 setPersistentStoreCoordinator:self->_persistentStoreCoordinator];
  [v3 setMergePolicy:*MEMORY[0x1E695D378]];
  return v3;
}

- (void)rollbackAndResetContext
{
  [(NSManagedObjectContext *)self->_managedObjectContext rollback];
  [(NSManagedObjectContext *)self->_managedObjectContext reset];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Roll back and reset context", v3, 2u);
  }
}

- (BOOL)commitChangesOrRollback:(id *)rollback
{
  v11 = *MEMORY[0x1E69E9840];
  managedObjectContext = self->_managedObjectContext;
  v8 = 0;
  v5 = [(NSManagedObjectContext *)managedObjectContext save:&v8];
  v6 = v8;
  if (v5)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Committed changes", buf, 2u);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to commit changes (%@)", buf, 0xCu);
    }

    if (rollback)
    {
      *rollback = [v6 copy];
    }
  }

  return v5;
}

- (BOOL)commitChangesOrRollbackAndResetContext:(id *)context
{
  v12 = *MEMORY[0x1E69E9840];
  managedObjectContext = self->_managedObjectContext;
  v9 = 0;
  v6 = [(NSManagedObjectContext *)managedObjectContext save:&v9];
  v7 = v9;
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Committed changes", buf, 2u);
    }

    [(NSManagedObjectContext *)self->_managedObjectContext reset];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to commit changes (%@)", buf, 0xCu);
    }

    [(MADSystemDataStore *)self rollbackAndResetContext];
    if (context)
    {
      *context = [v7 copy];
    }
  }

  return v6;
}

@end