@interface ULPersistenceMigrator
- (BOOL)_databaseMigrationTransaction;
- (BOOL)migrateToLatestVersion;
- (ULPersistenceMigrator)initWithDbStore:(ULDatabaseStoreInterface *)store andDbManagement:(ULDatabaseManagementInterface *)management;
@end

@implementation ULPersistenceMigrator

- (ULPersistenceMigrator)initWithDbStore:(ULDatabaseStoreInterface *)store andDbManagement:(ULDatabaseManagementInterface *)management
{
  v9.receiver = self;
  v9.super_class = ULPersistenceMigrator;
  v6 = [(ULPersistenceMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ULPersistenceMigrator *)v6 setDbStore:store];
    [(ULPersistenceMigrator *)v7 setDbManagement:management];
  }

  return v7;
}

- (BOOL)migrateToLatestVersion
{
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPersistenceMigrator migrateToLatestVersion];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Migrating store to latest version", buf, 2u);
  }

  dbManagement = [(ULPersistenceMigrator *)self dbManagement];
  if ((*(dbManagement->var0 + 8))(dbManagement))
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = +[ULTransactionManager shared];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__ULPersistenceMigrator_migrateToLatestVersion__block_invoke;
    v9[3] = &unk_2798D44D8;
    v9[4] = self;
    v9[5] = buf;
    [v5 performUnderTransaction:@"com.apple.milod.versionMigration" block:v9];

    v6 = v11[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceMigrator migrateToLatestVersion];
    }

    v7 = logObject_MicroLocation_Default;
    v6 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "local milo database is not connected", buf, 2u);
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t __47__ULPersistenceMigrator_migrateToLatestVersion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _databaseMigrationTransaction];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_databaseMigrationTransaction
{
  v38 = *MEMORY[0x277D85DE8];
  dbStore = [(ULPersistenceMigrator *)self dbStore];
  v4 = (*(dbStore->var0 + 2))(dbStore);
  persistenceStore = [v4 persistenceStore];
  isMigrationToLatestModelRequired = [persistenceStore isMigrationToLatestModelRequired];

  if (isMigrationToLatestModelRequired)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [[ULVersionMigrationStore alloc] initWithDbStore:[(ULPersistenceMigrator *)self dbStore]];
    dbStore2 = [(ULPersistenceMigrator *)self dbStore];
    v10 = (*(dbStore2->var0 + 2))(dbStore2);
    persistenceStore2 = [v10 persistenceStore];
    storeModelVersionBeforeMigration = [persistenceStore2 storeModelVersionBeforeMigration];

    v13 = [(ULVersionMigrationStore *)v8 performVersionMigrationForModelVersion:storeModelVersionBeforeMigration];
    if (storeModelVersionBeforeMigration && [storeModelVersionBeforeMigration unsignedIntValue] <= 1)
    {
      dbManagement = [(ULPersistenceMigrator *)self dbManagement];
      v13 &= (*(dbManagement->var0 + 4))(dbManagement);
    }

    dbStore3 = [(ULPersistenceMigrator *)self dbStore];
    v16 = (*(dbStore3->var0 + 2))(dbStore3);
    persistenceStore3 = [v16 persistenceStore];
    [persistenceStore3 setMigrationComplete];

    [date timeIntervalSinceNow];
    v19 = v18;
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceMigrator migrateToLatestVersion];
    }

    v20 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (v13)
      {
        v21 = "success";
      }

      else
      {
        v21 = "fail";
      }

      dbStore4 = [(ULPersistenceMigrator *)self dbStore];
      v23 = (*(dbStore4->var0 + 2))(dbStore4);
      getLocalStoreURL = [v23 getLocalStoreURL];
      path = [getLocalStoreURL path];
      v29[0] = 68289795;
      v29[1] = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2082;
      v33 = v21;
      v34 = 2049;
      v35 = -v19;
      v36 = 2113;
      v37 = path;
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Version Migration complete, result:%{public, location:escape_only}s, duration [s]:%{private}f, store path:%{private, location:escape_only}@}", v29, 0x30u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceMigrator migrateToLatestVersion];
    }

    v26 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29[0]) = 0;
      _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "Store already using latest model version", v29, 2u);
    }

    LOBYTE(v13) = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

@end