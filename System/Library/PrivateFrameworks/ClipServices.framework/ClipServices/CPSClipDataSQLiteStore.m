@interface CPSClipDataSQLiteStore
+ (CPSClipDataSQLiteStore)defaultStore;
- (BOOL)_checkDatabaseIntegrity;
- (BOOL)_insertAppClipRecord:(id)a3;
- (BOOL)_insertOrReplaceEntryPointRecord:(id)a3;
- (BOOL)_updateAppClipRecord:(id)a3;
- (CPSClipDataSQLiteStore)initWithDatabaseURL:(id)a3;
- (int)_createClipEntryPointsTable;
- (int)_createFreshDatabaseSchema;
- (int)_migrateToCurrentSchemaVersionIfNeeded;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (int)_migrateToSchemaVersion_4;
- (int)_migrateToSchemaVersion_5;
- (int)_migrateToSchemaVersion_6;
- (int)_migrateToSchemaVersion_7;
- (int)_migrateToSchemeVersion_8;
- (int)_schemaVersion;
- (void)_checkDatabaseIntegrity;
- (void)_closeDatabase;
- (void)_createClipEntryPointsTable;
- (void)_createFreshDatabaseSchema;
- (void)_migrateToSchemaVersion_2;
- (void)_migrateToSchemaVersion_4;
- (void)_migrateToSchemaVersion_5;
- (void)_migrateToSchemaVersion_6;
- (void)_migrateToSchemaVersion_7;
- (void)_migrateToSchemeVersion_8;
- (void)_openDatabaseAndCheckIntegrity:(BOOL)a3;
- (void)getAppClipRecordWithBundleID:(id)a3 completion:(id)a4;
- (void)getEntryPointRecordWithWebClipIdentifier:(id)a3 completion:(id)a4;
- (void)removeRecordWithBundleID:(id)a3;
- (void)saveAppClipRecord:(id)a3 completion:(id)a4;
- (void)saveClipEntryPointRecord:(id)a3 completion:(id)a4;
@end

@implementation CPSClipDataSQLiteStore

+ (CPSClipDataSQLiteStore)defaultStore
{
  if (+[CPSClipDataSQLiteStore defaultStore]::onceToken != -1)
  {
    +[CPSClipDataSQLiteStore defaultStore];
  }

  v3 = +[CPSClipDataSQLiteStore defaultStore]::store;

  return v3;
}

void __38__CPSClipDataSQLiteStore_defaultStore__block_invoke()
{
  v0 = [CPSClipDataSQLiteStore alloc];
  v1 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/com.apple.ClipServices.clipserviced/"];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v2 fileExistsAtPath:v1] & 1) == 0)
  {
    [v2 _web_createDirectoryAtPathWithIntermediateDirectories:v1 attributes:0];
  }

  v3 = MEMORY[0x277CBEBC0];
  v4 = [v1 stringByAppendingPathComponent:@"ClipData.db"];
  v5 = [v4 stringByResolvingSymlinksInPath];
  v8 = [v3 fileURLWithPath:v5 isDirectory:0];

  v6 = [(CPSClipDataSQLiteStore *)v0 initWithDatabaseURL:v8];
  v7 = +[CPSClipDataSQLiteStore defaultStore]::store;
  +[CPSClipDataSQLiteStore defaultStore]::store = v6;
}

- (CPSClipDataSQLiteStore)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CPSClipDataSQLiteStore;
  v5 = [(CPSClipDataSQLiteStore *)&v22 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277D49B00] inMemoryDatabaseURL];
    }

    databaseURL = v5->_databaseURL;
    v5->_databaseURL = v6;

    v9 = dispatch_queue_create("com.apple.ClipService.CPSClipDataSQLiteStore", 0);
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v9;

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v11 = v5->_databaseQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__CPSClipDataSQLiteStore_initWithDatabaseURL___block_invoke;
    v15[3] = &unk_278DCF1E8;
    v12 = v5;
    v16 = v12;
    v17 = &v18;
    dispatch_sync(v11, v15);
    if (*(v19 + 24))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v7 = v13;

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __46__CPSClipDataSQLiteStore_initWithDatabaseURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseAndCheckIntegrity:0];
  result = [*(a1 + 32) _isDatabaseOpen];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_checkDatabaseIntegrity
{
  v2 = [(WBSSQLiteDatabase *)self->_database fetchQuery:@"PRAGMA integrity_check(1)"];
  v3 = [v2 nextObject];
  v4 = [v3 stringAtIndex:0];
  v5 = [v2 statement];
  [v5 invalidate];

  if (!v3)
  {
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CPSClipDataSQLiteStore _checkDatabaseIntegrity];
    }

    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"ok"] & 1) == 0)
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CPSClipDataSQLiteStore _checkDatabaseIntegrity];
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (void)_openDatabaseAndCheckIntegrity:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x277D49B00]) initWithURL:self->_databaseURL queue:self->_databaseQueue];
  database = self->_database;
  self->_database = v5;

  if (([(WBSSQLiteDatabase *)self->_database openWithAccessType:3 error:0]& 1) != 0)
  {
    if (v3 && ![(CPSClipDataSQLiteStore *)self _checkDatabaseIntegrity])
    {

      goto LABEL_17;
    }

    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA journal_mode = WAL") != 100)
    {
      v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CPSClipDataSQLiteStore _openDatabaseAndCheckIntegrity:?];
      }
    }

    SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = ON");
    v8 = [(CPSClipDataSQLiteStore *)self _migrateToCurrentSchemaVersionIfNeeded];
    if (v8 != 8)
    {
      v9 = v8;
      v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CPSClipDataSQLiteStore *)&self->_databaseURL _openDatabaseAndCheckIntegrity:v9, v10];
      }

LABEL_17:
      [(CPSClipDataSQLiteStore *)self _closeDatabase];
    }
  }

  else
  {
    v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CPSClipDataSQLiteStore _openDatabaseAndCheckIntegrity:?];
    }

    v12 = self->_database;
    self->_database = 0;
  }
}

- (void)_closeDatabase
{
  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (int)_schemaVersion
{
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  v3 = [v2 nextObject];
  v4 = [v3 intAtIndex:0];

  v5 = [v2 statement];
  [v5 invalidate];

  return v4;
}

- (int)_migrateToCurrentSchemaVersionIfNeeded
{
  v3 = [(CPSClipDataSQLiteStore *)self _schemaVersion];
  v4 = v3;
  if (v3 <= 7)
  {
    if (v3)
    {
      v5 = v3 + 1;
      while (v5 != 9)
      {
        v6 = [(CPSClipDataSQLiteStore *)self _migrateToSchemaVersion:v5];
        v5 = (v5 + 1);
        if (v6 != 101)
        {
          return v4;
        }
      }
    }

    else if ([(CPSClipDataSQLiteStore *)self _createFreshDatabaseSchema]!= 101)
    {
      return 0;
    }

    v4 = 8;
    [(CPSClipDataSQLiteStore *)self _setDatabaseSchemaVersion:8];
  }

  return v4;
}

- (int)_createFreshDatabaseSchema
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE app_clips (id INTEGER PRIMARY KEY AUTOINCREMENT,bundle_id TEXT NOT NULL UNIQUE,user_notification_consent INTEGER DEFAULT NULL,location_confirmation_consent INTEGER DEFAULT NULL,allows_location_confirmation_after_launch BOOL DEFAULT 0,last_user_notification_request_time REAL DEFAULT NULL,last_version_check_time REAL DEFAULT NULL,last_install_time REAL DEFAULT NULL,parent_app_name TEXT DEFAULT NULL,parent_app_caption TEXT DEFAULT NULL,parent_app_store_url TEXT DEFAULT NULL)");
  if (v3 == 101)
  {
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX app_clips__bundle_id ON app_clips (bundle_id)") != 101)
    {
      v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [CPSClipDataSQLiteStore _createFreshDatabaseSchema];
      }
    }

    v5 = [(CPSClipDataSQLiteStore *)self _createClipEntryPointsTable];
  }

  else
  {
    v5 = v3;
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _createFreshDatabaseSchema];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)_createClipEntryPointsTable
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE clip_entry_points (id INTEGER PRIMARY KEY AUTOINCREMENT,app_clip_bundle_id TEXT DEFAULT NULL,web_clip_id TEXT NOT NULL UNIQUE,last_abr_fetch_time REAL DEFAULT 0,FOREIGN KEY(app_clip_bundle_id) REFERENCES app_clips(bundle_id) ON DELETE CASCADE ON UPDATE CASCADE)");
  if (v3 != 101)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _createClipEntryPointsTable];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

void __50__CPSClipDataSQLiteStore__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 16), 0, @"ROLLBACK TRANSACTION") != 101)
  {
    v1 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __50__CPSClipDataSQLiteStore__migrateToSchemaVersion___block_invoke_cold_1();
    }
  }
}

- (int)_migrateToSchemaVersion_2
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN parent_app_name TEXT DEFAULT NULL");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_2];
    }

    goto LABEL_7;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN parent_app_caption TEXT DEFAULT NULL");
  if (v4 != 101)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_2];
    }

LABEL_7:
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int)_migrateToSchemaVersion_3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE clip_entry_points (id INTEGER PRIMARY KEY AUTOINCREMENT,app_clip_bundle_id TEXT DEFAULT NULL REFERENCES app_clips(bundle_id) ON DELETE SET NULL,web_clip_id TEXT NOT NULL UNIQUE,last_abr_fetch_time REAL DEFAULT 0)");
  if (v3 != 101)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _createClipEntryPointsTable];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)_migrateToSchemaVersion_4
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN location_confirmation_consent BOOL DEFAULT 0");
  if (v3 != 101)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_4];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)_migrateToSchemaVersion_5
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN parent_app_store_url TEXT DEFAULT NULL");
  if (v3 != 101)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_5];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)_migrateToSchemaVersion_6
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN allows_location_confirmation_after_launch BOOL DEFAULT 0");
  if (v3 != 101)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_6];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)_migrateToSchemaVersion_7
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"UPDATE app_clips SET user_notification_consent = NULL, location_confirmation_consent = NULL");
  if (v3 != 101)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_7];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)_migrateToSchemeVersion_8
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE clip_entry_points RENAME TO clip_entry_points_old");
  if (v3 != 101)
  {
    v4 = v3;
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemeVersion_8];
    }

    goto LABEL_12;
  }

  v4 = [(CPSClipDataSQLiteStore *)self _createClipEntryPointsTable];
  if (v4 == 101)
  {
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"INSERT INTO clip_entry_points (id, app_clip_bundle_id, web_clip_id, last_abr_fetch_time)SELECT clip_entry_points_old.id, clip_entry_points_old.app_clip_bundle_id, clip_entry_points_old.web_clip_id, clip_entry_points_old.last_abr_fetch_time FROM clip_entry_points_old") != 101)
    {
      v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [CPSClipDataSQLiteStore _migrateToSchemeVersion_8];
      }
    }

    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE clip_entry_points_old");
    if (v4 != 101)
    {
      v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [CPSClipDataSQLiteStore _migrateToSchemeVersion_8];
      }

LABEL_12:
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)saveAppClipRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleID];
  v9 = [v8 length];

  if (v9)
  {
    databaseQueue = self->_databaseQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CPSClipDataSQLiteStore_saveAppClipRecord_completion___block_invoke;
    block[3] = &unk_278DCF238;
    block[4] = self;
    v13 = v6;
    v14 = v7;
    dispatch_async(databaseQueue, block);
  }

  else
  {
    v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2436ED000, v11, OS_LOG_TYPE_DEFAULT, "Not saving app clip record because bundle ID is nil", buf, 2u);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

void __55__CPSClipDataSQLiteStore_saveAppClipRecord_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _updateAppClipRecord:*(a1 + 40)];
  v3 = [*(a1 + 40) fullApplicationName];
  v4 = [v3 cps_privacyPreservingDescription];

  if (v2)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated existing app clip record with full app named %{public}@", &v11, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) _insertAppClipRecord:*(a1 + 40)];
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"Failed to insert";
      if (v6)
      {
        v8 = @"Successfully inserted";
      }

      v11 = 138412546;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "%@ new app clip record with full app named %{public}@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateAppClipRecord:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:self->_database query:{@"UPDATE app_clips SET user_notification_consent = ?, location_confirmation_consent = ?, allows_location_confirmation_after_launch = ?, last_user_notification_request_time = ?, last_version_check_time = ?, last_install_time = ?, parent_app_name = ?, parent_app_caption = ?, parent_app_store_url = ? WHERE bundle_id = ?"}];
    v6 = [v4 userNotificationGranted];

    if (v6)
    {
      v7 = [v4 userNotificationGranted];
      [v5 bindInt64:objc_msgSend(v7 atParameterIndex:{"BOOLValue"), 1}];
    }

    else
    {
      [v5 bindNullAtParameterIndex:1];
    }

    v9 = [v4 locationConfirmationGranted];

    if (v9)
    {
      v10 = [v4 locationConfirmationGranted];
      [v5 bindInt64:objc_msgSend(v10 atParameterIndex:{"BOOLValue"), 2}];
    }

    else
    {
      [v5 bindNullAtParameterIndex:2];
    }

    [v5 bindInt64:objc_msgSend(v4 atParameterIndex:{"locationConfirmationState"), 3}];
    [v4 lastProxCardLaunchTime];
    [v5 bindDouble:4 atParameterIndex:?];
    [v4 lastVersionCheckTime];
    [v5 bindDouble:5 atParameterIndex:?];
    [v4 lastInstallTime];
    [v5 bindDouble:6 atParameterIndex:?];
    v11 = [v4 fullApplicationName];
    [v5 bindString:v11 atParameterIndex:7];

    v12 = [v4 fullApplicationCaption];
    [v5 bindString:v12 atParameterIndex:8];

    v13 = [v4 fullApplicationStoreURL];
    v14 = [v13 absoluteString];
    [v5 bindString:v14 atParameterIndex:9];

    v15 = [v4 bundleID];
    [v5 bindString:v15 atParameterIndex:10];

    v16 = [v5 execute];
    if (v16 != 101)
    {
      v17 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [CPSClipDataSQLiteStore _updateAppClipRecord:];
      }
    }

    [v5 invalidate];
    v8 = v16 == 101 && [(WBSSQLiteDatabase *)self->_database changedRowCount]!= 0;
  }

  else
  {
    v8 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_insertAppClipRecord:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:self->_database query:{@"INSERT INTO app_clips (bundle_id, user_notification_consent, location_confirmation_consent, allows_location_confirmation_after_launch, last_user_notification_request_time, last_version_check_time, last_install_time, parent_app_name, parent_app_caption, parent_app_store_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"}];
  v6 = [v4 bundleID];
  [v5 bindString:v6 atParameterIndex:1];

  v7 = [v4 userNotificationGranted];

  if (v7)
  {
    v8 = [v4 userNotificationGranted];
    [v5 bindInt64:objc_msgSend(v8 atParameterIndex:{"BOOLValue"), 2}];
  }

  else
  {
    [v5 bindNullAtParameterIndex:2];
  }

  v9 = [v4 locationConfirmationGranted];

  if (v9)
  {
    v10 = [v4 locationConfirmationGranted];
    [v5 bindInt64:objc_msgSend(v10 atParameterIndex:{"BOOLValue"), 3}];
  }

  else
  {
    [v5 bindNullAtParameterIndex:3];
  }

  [v5 bindInt64:objc_msgSend(v4 atParameterIndex:{"locationConfirmationState"), 4}];
  [v4 lastProxCardLaunchTime];
  [v5 bindDouble:5 atParameterIndex:?];
  [v4 lastVersionCheckTime];
  [v5 bindDouble:6 atParameterIndex:?];
  [v4 lastInstallTime];
  [v5 bindDouble:7 atParameterIndex:?];
  v11 = [v4 fullApplicationName];
  [v5 bindString:v11 atParameterIndex:8];

  v12 = [v4 fullApplicationCaption];
  [v5 bindString:v12 atParameterIndex:9];

  v13 = [v4 fullApplicationStoreURL];
  v14 = [v13 absoluteString];
  [v5 bindString:v14 atParameterIndex:10];

  v15 = [v5 execute];
  if (v15 != 101)
  {
    v16 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _insertAppClipRecord:];
    }
  }

  [v5 invalidate];
  v17 = v15 == 101 && [(WBSSQLiteDatabase *)self->_database changedRowCount]!= 0;

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)getAppClipRecordWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CPSClipDataSQLiteStore_getAppClipRecordWithBundleID_completion___block_invoke;
  block[3] = &unk_278DCF238;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, block);
}

void __66__CPSClipDataSQLiteStore_getAppClipRecordWithBundleID_completion___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(a1[4] + 16), @"SELECT user_notification_consent, location_confirmation_consent, allows_location_confirmation_after_launch, last_user_notification_request_time, last_version_check_time, last_install_time, parent_app_name, parent_app_caption, parent_app_store_url FROM app_clips WHERE bundle_id = ?", a1 + 5);
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v15 = 138739971;
    v16 = v4;
    _os_log_impl(&dword_2436ED000, v3, OS_LOG_TYPE_DEFAULT, "Getting app clip record with bundle ID %{sensitive}@", &v15, 0xCu);
  }

  v5 = [v2 nextObject];
  if (v5)
  {
    v6 = [[CPSAppClipRecord alloc] initWithSQLiteRow:v5 bundleID:a1[5]];
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CPSAppClipRecord *)v6 fullApplicationName];
      v9 = [v8 cps_privacyPreservingDescription];
      v10 = [(CPSAppClipRecord *)v6 fullApplicationCaption];
      v11 = [v10 cps_privacyPreservingDescription];
      v15 = 138740483;
      v16 = v6;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "Retrieved app clip record %{sensitive}@, name is %{public}@, caption is %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __66__CPSClipDataSQLiteStore_getAppClipRecordWithBundleID_completion___block_invoke_cold_1();
    }

    v6 = 0;
  }

  v13 = [v2 statement];
  [v13 invalidate];

  (*(a1[6] + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)saveClipEntryPointRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CPSClipDataSQLiteStore_saveClipEntryPointRecord_completion___block_invoke;
  block[3] = &unk_278DCF238;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, block);
}

uint64_t __62__CPSClipDataSQLiteStore_saveClipEntryPointRecord_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _insertOrReplaceEntryPointRecord:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)_insertOrReplaceEntryPointRecord:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:self->_database query:{@"INSERT OR REPLACE INTO clip_entry_points (app_clip_bundle_id, web_clip_id, last_abr_fetch_time) VALUES (?, ?, ?)"}];
  v12 = [v4 appClipBundleID];
  v11 = [v4 webClipIdentifier];
  [v4 lastABRFetchTime];
  v13[0] = v6;
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},double>(v5, &v12, &v11, v13);

  v7 = [v5 execute];
  if (v7 != 101)
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _insertOrReplaceEntryPointRecord:];
    }
  }

  [v5 invalidate];

  v9 = *MEMORY[0x277D85DE8];
  return v7 == 101;
}

- (void)getEntryPointRecordWithWebClipIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CPSClipDataSQLiteStore_getEntryPointRecordWithWebClipIdentifier_completion___block_invoke;
  block[3] = &unk_278DCF238;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, block);
}

void __78__CPSClipDataSQLiteStore_getEntryPointRecordWithWebClipIdentifier_completion___block_invoke(void *a1)
{
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(a1[4] + 16), @"SELECT app_clip_bundle_id, web_clip_id, last_abr_fetch_time FROM clip_entry_points WHERE web_clip_id = ?", a1 + 5);
  v2 = [v5 nextObject];
  if (v2)
  {
    v3 = [[CPSClipEntryPointRecord alloc] initWithSQLiteRow:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v5 statement];
  [v4 invalidate];

  (*(a1[6] + 16))();
}

- (void)removeRecordWithBundleID:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CPSClipDataSQLiteStore_removeRecordWithBundleID___block_invoke;
  v7[3] = &unk_278DCF260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

void __51__CPSClipDataSQLiteStore_removeRecordWithBundleID___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:*(*(a1 + 32) + 16) query:@"DELETE FROM app_clips WHERE bundle_id = ?"];
  [v2 bindString:*(a1 + 40) atParameterIndex:1];
  if ([v2 execute] != 101)
  {
    v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 16) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __51__CPSClipDataSQLiteStore_removeRecordWithBundleID___block_invoke_cold_1();
    }
  }

  [v2 invalidate];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_checkDatabaseIntegrity
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_openDatabaseAndCheckIntegrity:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_openDatabaseAndCheckIntegrity:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_openDatabaseAndCheckIntegrity:(os_log_t)log .cold.3(uint64_t *a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5[0] = 67109634;
  v5[1] = a2;
  v6 = 1024;
  v7 = 8;
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&dword_2436ED000, log, OS_LOG_TYPE_ERROR, "CPSClip Data SQLite schema version (%d) does not match our supported schema version (%d) in store at %{public}@", v5, 0x18u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_createFreshDatabaseSchema
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to create the index for table: %{public}@ (%d)", v4, v5);
}

- (void)_createClipEntryPointsTable
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to create clip_entry_points table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_migrateToSchemaVersion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_migrateToSchemaVersion:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_migrateToSchemaVersion:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_migrateToSchemaVersion_2
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to add parent_app_caption column to app_clips table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_4
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to add location_confirmation_consent column to app_clips table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_5
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to add parent_app_store_url column to app_clips table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_6
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to add allows_location_confirmation_after_launch column to app_clips table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_7
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to set user_notification_consent and location_confirmation_consent to NULL: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemeVersion_8
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to drop clip_entry_points_old table: %{public}@ (%d)", v4, v5);
}

- (void)_updateAppClipRecord:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to update a clip record in the app_clips table: %@ (%d)", v4, v5);
}

- (void)_insertAppClipRecord:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to insert a clip data into the app_clips table: %@ (%d)", v4, v5);
}

- (void)_insertOrReplaceEntryPointRecord:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to save entry point into the clip_entry_points table: %@ (%d)", v4, v5);
}

void __51__CPSClipDataSQLiteStore_removeRecordWithBundleID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to remove a row from the app_clips table: %@ (%d)", v4, v5);
}

@end