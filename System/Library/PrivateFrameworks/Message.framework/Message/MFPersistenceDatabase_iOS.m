@interface MFPersistenceDatabase_iOS
+ (OS_os_log)log;
- (BOOL)_migrateWithDatabaseConnection:(id)a3 migrator:(id)a4;
- (BOOL)mailMessageLibraryMigrator:(id)a3 attachProtectedDatabaseWithName:(id)a4 connection:(id)a5 error:(id *)a6;
- (MFPersistenceDatabase_iOS)initWithBasePath:(id)a3 databaseName:(id)a4 minimumCachedReaderConnections:(unint64_t)a5 schema:(id)a6 protectedSchema:(id)a7 propertyMapper:(id)a8 protectedDatabasePersistence:(id)a9;
- (id)journalManagerForMailMessageLibraryMigrator:(id)a3;
- (void)addPostMigrationStep:(Class)a3;
- (void)checkInConnection:(id)a3;
- (void)handleExceptionDuringDatabaseBlock:(id)a3;
- (void)mailMessageLibraryMigrator:(id)a3 detachProtectedDatabaseWithConnection:(id)a4;
- (void)mailMessageLibraryMigrator:(id)a3 isInitializingDatabaseWithConnection:(id)a4;
- (void)mailMessageLibraryMigratorScheduleSpotlightReindex:(id)a3;
@end

@implementation MFPersistenceDatabase_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MFPersistenceDatabase_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_28 != -1)
  {
    dispatch_once(&log_onceToken_28, block);
  }

  v2 = log_log_28;

  return v2;
}

- (MFPersistenceDatabase_iOS)initWithBasePath:(id)a3 databaseName:(id)a4 minimumCachedReaderConnections:(unint64_t)a5 schema:(id)a6 protectedSchema:(id)a7 propertyMapper:(id)a8 protectedDatabasePersistence:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v27.receiver = self;
  v27.super_class = MFPersistenceDatabase_iOS;
  v21 = [(EDPersistenceDatabase *)&v27 initWithBasePath:v15 databaseName:v16 minimumCachedReaderConnections:a5 schema:v17 protectedSchema:v18 propertyMapper:v19 protectedDatabasePersistence:v20];
  if (v21)
  {
    v22 = objc_opt_new();
    migrationLock = v21->_migrationLock;
    v21->_migrationLock = v22;

    v24 = objc_opt_new();
    postMigrationSteps = v21->_postMigrationSteps;
    v21->_postMigrationSteps = v24;
  }

  return v21;
}

- (void)checkInConnection:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFPersistenceDatabase_iOS.m" lineNumber:60 description:@"Got wrong type of connection"];
  }

  ECEndDisallowingNetworkActivity();
  v7.receiver = self;
  v7.super_class = MFPersistenceDatabase_iOS;
  [(EDPersistenceDatabase *)&v7 checkInConnection:v5];
}

- (BOOL)_migrateWithDatabaseConnection:(id)a3 migrator:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDPersistenceDatabase *)self schema];
  v9 = [v7 migrateWithDatabaseConnection:v6 schema:v8];

  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(MFPersistenceDatabase_iOS *)self postMigrationSteps];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) runWithConnection:v6];
        }

        v15 = v14;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
      LOBYTE(v9) = v15 == 0;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)addPostMigrationStep:(Class)a3
{
  v4 = [(MFPersistenceDatabase_iOS *)self postMigrationSteps];
  [v4 addObject:a3];
}

- (void)handleExceptionDuringDatabaseBlock:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFPersistenceDatabase_iOS;
  [(EDPersistenceDatabase *)&v5 handleExceptionDuringDatabaseBlock:v4];
  objc_exception_throw(v4);
}

- (BOOL)mailMessageLibraryMigrator:(id)a3 attachProtectedDatabaseWithName:(id)a4 connection:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [(EDPersistenceDatabase *)self urlFileProtectionTypeForDatabaseType:1];
  if ([v11 isEqualToString:*MEMORY[0x1E695DAD8]])
  {
    v12 = *MEMORY[0x1E695DAE0];

    v11 = v12;
  }

  v13 = [(EDPersistenceDatabase *)self protectedDatabasePath];
  v14 = [(EDPersistenceDatabase *)self urlForDatabasePath:v13 type:1 fileProtection:v11];

  v15 = [v10 attachProtectedDatabaseWithName:v9 url:v14 error:a6];
  return v15;
}

- (void)mailMessageLibraryMigrator:(id)a3 detachProtectedDatabaseWithConnection:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  [a4 detachProtectedDatabase];
  v5 = [(EDPersistenceDatabase *)self urlFileProtectionTypeForDatabaseType:1];
  if (v5)
  {
    v6 = [(EDPersistenceDatabase *)self protectedDatabasePath];
    v7 = [(EDPersistenceDatabase *)self urlForDatabasePath:v6 type:1];

    v17 = 0;
    v8 = [MEMORY[0x1E699B8E0] setFileProtection:v5 forDatabaseAtURL:v7 error:&v17];
    v9 = v17;
    v10 = v9;
    if (v8)
    {
LABEL_11:

      goto LABEL_12;
    }

    v11 = [v9 domain];
    if ([v11 isEqualToString:*MEMORY[0x1E699B770]])
    {
      v12 = [v10 code] == 23;

      if (v12)
      {
        v13 = +[MFPersistenceDatabase_iOS log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v10 ef_publicDescription];
          *buf = 138543362;
          v19 = v14;
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_INFO, "Couldn't reset file protection of protected database. The device is probably locked. %{public}@", buf, 0xCu);
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = +[MFPersistenceDatabase_iOS log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = [v10 ef_publicDescription];
      [(MFPersistenceDatabase_iOS *)v15 mailMessageLibraryMigrator:buf detachProtectedDatabaseWithConnection:v13];
    }

    goto LABEL_10;
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)mailMessageLibraryMigrator:(id)a3 isInitializingDatabaseWithConnection:(id)a4
{
  v6 = a4;
  v4 = +[MFMailMessageLibrary defaultInstance];
  v5 = [v4 hookRegistry];
  [v5 persistenceIsInitializingDatabaseWithConnection:v6];
}

- (void)mailMessageLibraryMigratorScheduleSpotlightReindex:(id)a3
{
  v5 = +[MFMailMessageLibrary defaultInstance];
  v3 = [v5 persistence];
  v4 = [v3 searchableIndexManager];
  [v4 setNeedsToRedonate];
}

- (id)journalManagerForMailMessageLibraryMigrator:(id)a3
{
  v3 = [(EDPersistenceDatabase *)self protectedDatabasePersistence];
  v4 = [v3 journalManager];

  return v4;
}

- (void)mailMessageLibraryMigrator:(os_log_t)log detachProtectedDatabaseWithConnection:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Failed to reset file protection of protected database: %{public}@", buf, 0xCu);
}

@end