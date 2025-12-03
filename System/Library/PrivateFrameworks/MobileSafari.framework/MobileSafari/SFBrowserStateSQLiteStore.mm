@interface SFBrowserStateSQLiteStore
- (BOOL)_checkDatabaseIntegrity;
- (BOOL)_isTabStateCached:(id)cached;
- (BOOL)_updateTabStateWithData:(id)data;
- (BOOL)updateSceneID:(id)d;
- (NSArray)browserWindows;
- (NSArray)recentlyClosedWindows;
- (SFBrowserStateSQLiteStore)initWithDatabaseURL:(id)l;
- (id)_readSavedSessionStateDataForTabWithUUIDString:(id)string;
- (id)_sqliteStatementForTabDeleting;
- (id)_tabStateDataForUUID:(id)d;
- (id)_tabUUIDsInWindow:(id)window;
- (id)readSavedSessionStateDataForTabWithUUIDString:(id)string;
- (id)tabStateDataForUUID:(id)d;
- (id)tabStatesWithBrowserWindowUUID:(id)d;
- (int)_createFreshDatabaseSchema;
- (int)_createTableForTabSession;
- (int)_createTableForTabs;
- (int)_mergeAllWindowsIfNeeded;
- (int)_migrateToCurrentSchemaVersionIfNeeded;
- (int)_migrateToSchemaVersion:(int)version;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (int)_migrateToSchemaVersion_4;
- (int)_migrateToSchemaVersion_5;
- (int)_migrateToSchemaVersion_6;
- (int)_migrateToSchemaVersion_7;
- (int)_migrateToSchemaVersion_8;
- (int)_recoverFromDatabaseInconsistencyFromSchemaVersion3Migration;
- (int)_schemaVersion;
- (int)_setDatabaseSchemaVersion:(int)version;
- (int64_t)_databaseIDForBrowserWindow:(id)window;
- (int64_t)_saveBrowserWindowStateWithData:(id)data;
- (int64_t)_saveBrowserWindowStateWithDictionary:(id)dictionary;
- (void)_cacheUUIDForTabStateData:(id)data;
- (void)_closeDatabase;
- (void)_createFreshDatabaseSchema;
- (void)_createTableForTabSession;
- (void)_createTableForTabs;
- (void)_insertTabStateWithData:(id)data;
- (void)_mergeAllWindowsIfNeeded;
- (void)_migrateFromLegacyPlistIfNeeded;
- (void)_migrateFromLegacyPlistWithPath:(id)path;
- (void)_migrateToSchemaVersion_2;
- (void)_migrateToSchemaVersion_3;
- (void)_migrateToSchemaVersion_4;
- (void)_migrateToSchemaVersion_5;
- (void)_migrateToSchemaVersion_6;
- (void)_migrateToSchemaVersion_7;
- (void)_migrateToSchemaVersion_8;
- (void)_openDatabaseAndCheckIntegrity:(BOOL)integrity;
- (void)_readTabStatesWithBrowserWindowUUID:(id)d completion:(id)completion;
- (void)_recoverFromDatabaseInconsistencyFromSchemaVersion3Migration;
- (void)_regenerateTabUUIDsForDeviceRestoration;
- (void)_removeSavedSessionStateDataForTabsWithUUIDStrings:(id)strings;
- (void)_setDatabaseID:(int64_t)d browserWindow:(id)window;
- (void)_updateBrowserWindowStateWithDictionary:(id)dictionary;
- (void)_updateBrowserWindowWithData:(id)data tabs:(id)tabs;
- (void)_updateOrInsertTabStateWithData:(id)data;
- (void)_vacuum;
- (void)closeDatabase;
- (void)dealloc;
- (void)deleteActiveProfileReferencesOnWindowsWithProfileIdentifier:(id)identifier;
- (void)deleteRecentlyClosedWindowsWithProfileIdentifier:(id)identifier;
- (void)deleteSavedTabsForProfileWithIdentifier:(id)identifier;
- (void)deleteTabStateWithBrowserWindowUUID:(id)d andRemoveWindow:(BOOL)window;
- (void)mergeAllWindows;
- (void)readTabStatesWithBrowserWindowUUID:(id)d completion:(id)completion;
- (void)regenerateTabUUIDsForDeviceRestoration;
- (void)saveTabStateWithDictionary:(id)dictionary;
- (void)setSecureDeleteEnabled:(BOOL)enabled;
- (void)updateBrowserWindowStateWithDictionary:(id)dictionary completion:(id)completion;
- (void)updateBrowserWindowWithData:(id)data tabs:(id)tabs;
- (void)updateTabWithTabStateData:(id)data;
@end

@implementation SFBrowserStateSQLiteStore

- (int)_migrateToCurrentSchemaVersionIfNeeded
{
  _schemaVersion = [(SFBrowserStateSQLiteStore *)self _schemaVersion];
  v4 = _schemaVersion;
  if (_schemaVersion <= 7)
  {
    if (_schemaVersion)
    {
      v5 = _schemaVersion + 1;
      while (v5 != 9)
      {
        v6 = [(SFBrowserStateSQLiteStore *)self _migrateToSchemaVersion:v5];
        v5 = (v5 + 1);
        if (v6 != 101)
        {
          return v4;
        }
      }
    }

    else
    {
      if ([(SFBrowserStateSQLiteStore *)self _createFreshDatabaseSchema]!= 101)
      {
        return 0;
      }

      [(SFBrowserStateSQLiteStore *)self _migrateFromLegacyPlistIfNeeded];
    }

    v4 = 8;
    [(SFBrowserStateSQLiteStore *)self _setDatabaseSchemaVersion:8];
  }

  return v4;
}

- (int)_schemaVersion
{
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  nextObject = [v2 nextObject];
  v4 = [nextObject intAtIndex:0];

  statement = [v2 statement];
  [statement invalidate];

  return v4;
}

- (void)mergeAllWindows
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFBrowserStateSQLiteStore_mergeAllWindows__block_invoke;
  block[3] = &unk_1E721D568;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

void __44__SFBrowserStateSQLiteStore_mergeAllWindows__block_invoke(uint64_t a1)
{
  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 16), 0, @"BEGIN") != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 16) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __44__SFBrowserStateSQLiteStore_mergeAllWindows__block_invoke_cold_1();
    }

    goto LABEL_12;
  }

  if ([*(a1 + 32) _mergeAllWindowsIfNeeded] != 101 && SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 16), 0, @"ROLLBACK") != 101)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 16) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __44__SFBrowserStateSQLiteStore_mergeAllWindows__block_invoke_cold_2();
    }
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 16), 0, @"COMMIT") != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 16) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __44__SFBrowserStateSQLiteStore_mergeAllWindows__block_invoke_cold_3();
    }

LABEL_12:
  }
}

- (int)_mergeAllWindowsIfNeeded
{
  v69 = *MEMORY[0x1E69E9840];
  MEMORY[0x18CFFE120](v61, @"com.apple.SafariServices.SavingBrowserState");
  v48 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"SELECT COUNT(*) FROM browser_windows");
  nextObject = [v48 nextObject];
  v3 = [nextObject intAtIndex:0];

  statement = [v48 statement];
  [statement invalidate];

  if (v3 >= 2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v7 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"SELECT id, uuid, type FROM browser_windows ORDER BY id ASC");
    nextObject2 = [v7 nextObject];
    do
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(nextObject2, "intAtIndex:", 0)}];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(nextObject2, "intAtIndex:", 2)}];
      [dictionary2 setObject:v10 forKeyedSubscript:v9];
      v11 = [dictionary objectForKeyedSubscript:v10];
      v12 = v11 == 0;

      if (v12)
      {
        v13 = objc_alloc_init(_SFBrowserWindowStateData);
        -[_SFBrowserWindowStateData setDatabaseID:](v13, "setDatabaseID:", [v9 intValue]);
        v14 = [nextObject2 stringAtIndex:1];
        [(_SFBrowserWindowStateData *)v13 setUUIDString:v14];

        [dictionary setObject:v13 forKeyedSubscript:v10];
      }

      nextObject3 = [v7 nextObject];

      nextObject2 = nextObject3;
    }

    while (nextObject3);
    statement2 = [v7 statement];
    [statement2 invalidate];

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v17 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"SELECT id, browser_window_id FROM tabs ORDER BY order_index ASC");
    while (1)
    {
      nextObject4 = [v17 nextObject];
      v19 = nextObject4;
      if (!nextObject4)
      {
        break;
      }

      v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(nextObject4, "intAtIndex:", 0)}];
      v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "intAtIndex:", 1)}];
      v22 = [dictionary2 objectForKeyedSubscript:v21];
      if (v22)
      {
        v23 = [dictionary3 objectForKeyedSubscript:v22];
        v24 = v23;
        if (v23)
        {
          [v23 addObject:v20];
        }

        else
        {
          v26 = [MEMORY[0x1E695DF70] arrayWithObject:v20];
          [dictionary3 setObject:v26 forKeyedSubscript:v22];
        }
      }

      else
      {
        v25 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v20;
          *&buf[12] = 2114;
          *&buf[14] = v21;
          _os_log_error_impl(&dword_18B7AC000, v25, OS_LOG_TYPE_ERROR, "Unknown window type for tab id %{public}@ in window id %{public}@", buf, 0x16u);
        }
      }
    }

    statement3 = [v17 statement];
    [statement3 invalidate];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v68 = 1;
    v28 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:{@"UPDATE tabs SET order_index = ?, browser_window_id = ?, browser_window_uuid = ? WHERE id = ?"}];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __53__SFBrowserStateSQLiteStore__mergeAllWindowsIfNeeded__block_invoke;
    v56[3] = &unk_1E721F430;
    v47 = dictionary;
    v57 = v47;
    v29 = v28;
    v58 = v29;
    selfCopy = self;
    v60 = buf;
    v46 = v29;
    [dictionary3 enumerateKeysAndObjectsUsingBlock:v56];
    [v29 invalidate];
    v30 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"DELETE FROM browser_windows WHERE id = ?"];
    v31 = MEMORY[0x1E695DFD8];
    allValues = [v47 allValues];
    v33 = [allValues safari_mapObjectsUsingBlock:&__block_literal_global_64];
    v34 = [v31 setWithArray:v33];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    allKeys = [dictionary2 allKeys];
    v36 = [allKeys countByEnumeratingWithState:&v52 objects:v66 count:16];
    if (v36)
    {
      v37 = *v53;
      v38 = 1;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(allKeys);
          }

          v40 = *(*(&v52 + 1) + 8 * i);
          if (([v34 containsObject:v40] & 1) == 0)
          {
            [v30 bindInt:objc_msgSend(v40 atParameterIndex:{"intValue"), 1}];
            execute = [v30 execute];
            if (execute != 101)
            {
              v42 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
                *v62 = 138543618;
                v63 = lastErrorMessage;
                v64 = 1024;
                v65 = execute;
                _os_log_error_impl(&dword_18B7AC000, v42, OS_LOG_TYPE_ERROR, "Failed to delete empty windows while merging: %{public}@ (%d)", v62, 0x12u);
              }

              v38 = 0;
            }

            [v30 reset];
          }
        }

        v36 = [allKeys countByEnumeratingWithState:&v52 objects:v66 count:16];
      }

      while (v36);
    }

    else
    {
      v38 = 1;
    }

    [v30 invalidate];
    v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"UPDATE browser_windows SET scene_id = NULL");
    if (v5 == 101)
    {
      if (*(*&buf[8] + 24) & v38)
      {
        v5 = 101;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v44 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [SFBrowserStateSQLiteStore _mergeAllWindowsIfNeeded];
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = 101;
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v61);
  return v5;
}

- (NSArray)browserWindows
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  databaseQueue = self->_databaseQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43__SFBrowserStateSQLiteStore_browserWindows__block_invoke;
  v11 = &unk_1E721F368;
  selfCopy = self;
  v5 = v3;
  v13 = v5;
  dispatch_sync(databaseQueue, &v8);
  v6 = [v5 copy];

  return v6;
}

void __43__SFBrowserStateSQLiteStore_browserWindows__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v12 = 0;
  v3 = SafariShared::WBSSQLiteDatabaseFetch<SFBrowserWindowType>(v2, @"SELECT id, uuid, scene_id, active_profile_identifier FROM browser_windows WHERE type = ?", &v12);
  while (1)
  {
    v4 = [v3 nextObject];
    v5 = v4;
    if (!v4)
    {
      break;
    }

    v6 = [v4 stringAtIndex:1];
    v7 = [_SFBrowserWindowStateData alloc];
    v8 = [v5 stringAtIndex:2];
    v9 = [v5 stringAtIndex:3];
    v10 = [(_SFBrowserWindowStateData *)v7 initWithUUIDString:v6 sceneID:v8 profileIdentifier:v9];

    [*(a1 + 32) _setDatabaseID:objc_msgSend(v5 browserWindow:{"intAtIndex:", 0), v6}];
    [*(a1 + 40) addObject:v10];
  }

  v11 = [v3 statement];
  [v11 invalidate];
}

- (NSArray)recentlyClosedWindows
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  databaseQueue = self->_databaseQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__SFBrowserStateSQLiteStore_recentlyClosedWindows__block_invoke;
  v11 = &unk_1E721F368;
  selfCopy = self;
  v5 = v3;
  v13 = v5;
  dispatch_sync(databaseQueue, &v8);
  v6 = [v5 copy];

  return v6;
}

void __50__SFBrowserStateSQLiteStore_recentlyClosedWindows__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v10 = 2;
  v3 = SafariShared::WBSSQLiteDatabaseFetch<SFBrowserWindowType>(v2, @"SELECT id, uuid, active_profile_identifier FROM browser_windows WHERE type = ? ORDER BY id DESC", &v10);
  while (1)
  {
    v4 = [v3 nextObject];
    v5 = v4;
    if (!v4)
    {
      break;
    }

    v6 = [v4 stringAtIndex:1];
    v7 = [v5 stringAtIndex:2];
    v8 = [[_SFBrowserWindowStateData alloc] initWithUUIDString:v6 sceneID:0 profileIdentifier:v7];
    [*(a1 + 32) _setDatabaseID:objc_msgSend(v5 browserWindow:{"intAtIndex:", 0), v6}];
    [*(a1 + 40) addObject:v8];
  }

  v9 = [v3 statement];
  [v9 invalidate];
}

- (SFBrowserStateSQLiteStore)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v22.receiver = self;
  v22.super_class = SFBrowserStateSQLiteStore;
  v5 = [(SFBrowserStateSQLiteStore *)&v22 init];
  if (v5)
  {
    if (lCopy)
    {
      inMemoryDatabaseURL = lCopy;
    }

    else
    {
      inMemoryDatabaseURL = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
    }

    databaseURL = v5->_databaseURL;
    v5->_databaseURL = inMemoryDatabaseURL;

    v9 = dispatch_queue_create("com.apple.MobileSafari.TabStateSQLiteStore", 0);
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v9;

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v11 = v5->_databaseQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__SFBrowserStateSQLiteStore_initWithDatabaseURL___block_invoke;
    v15[3] = &unk_1E721F3E0;
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

uint64_t __49__SFBrowserStateSQLiteStore_initWithDatabaseURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseAndCheckIntegrity:0];
  result = [*(a1 + 32) _isDatabaseOpen];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFBrowserStateSQLiteStore;
  [(SFBrowserStateSQLiteStore *)&v2 dealloc];
}

- (BOOL)_checkDatabaseIntegrity
{
  v2 = [(WBSSQLiteDatabase *)self->_database fetchQuery:@"PRAGMA integrity_check(1)"];
  nextObject = [v2 nextObject];
  v4 = [nextObject stringAtIndex:0];
  statement = [v2 statement];
  [statement invalidate];

  if (!nextObject)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _checkDatabaseIntegrity];
    }

    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"ok"] & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _checkDatabaseIntegrity];
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (void)_openDatabaseAndCheckIntegrity:(BOOL)integrity
{
  integrityCopy = integrity;
  v5 = [objc_alloc(MEMORY[0x1E69C89E8]) initWithURL:self->_databaseURL queue:self->_databaseQueue];
  database = self->_database;
  self->_database = v5;

  if (([(WBSSQLiteDatabase *)self->_database openWithAccessType:3 error:0]& 1) != 0)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    tabUUIDStrings = self->_tabUUIDStrings;
    self->_tabUUIDStrings = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    browserWindowDatabaseIDs = self->_browserWindowDatabaseIDs;
    self->_browserWindowDatabaseIDs = dictionary2;

    if (integrityCopy && ![(SFBrowserStateSQLiteStore *)self _checkDatabaseIntegrity])
    {

      goto LABEL_20;
    }

    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA journal_mode = WAL") != 100)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SFBrowserStateSQLiteStore _openDatabaseAndCheckIntegrity:];
      }
    }

    SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = ON");
    _migrateToCurrentSchemaVersionIfNeeded = [(SFBrowserStateSQLiteStore *)self _migrateToCurrentSchemaVersionIfNeeded];
    if (_migrateToCurrentSchemaVersionIfNeeded != 8)
    {
      v13 = _migrateToCurrentSchemaVersionIfNeeded;
      if (_migrateToCurrentSchemaVersionIfNeeded == 9)
      {
        v14 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_18B7AC000, v14, OS_LOG_TYPE_DEFAULT, "BrowserState Database's current version is 9 but target version is 8. It is likely you are upgrading from a main line build to a seed build. Don't fail the database creation.", v18, 2u);
        }

        return;
      }

      v17 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(SFBrowserStateSQLiteStore *)&self->_databaseURL _openDatabaseAndCheckIntegrity:v13, v17];
      }

LABEL_20:
      [(SFBrowserStateSQLiteStore *)self _closeDatabase];
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _openDatabaseAndCheckIntegrity:];
    }

    v16 = self->_database;
    self->_database = 0;
  }
}

- (void)_closeDatabase
{
  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;

  self->_generateUUIDFunctionAttached = 0;
}

- (int)_setDatabaseSchemaVersion:(int)version
{
  v17 = *MEMORY[0x1E69E9840];
  database = self->_database;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", *&version];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 67109634;
      versionCopy = version;
      v13 = 2114;
      v14 = lastErrorMessage;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_18B7AC000, v8, OS_LOG_TYPE_ERROR, "Failed to set the database schema version to %d: %{public}@ (%d)", buf, 0x18u);
    }
  }

  return v7;
}

- (void)_migrateFromLegacyPlistIfNeeded
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = _SFSafariContainerPath();
  v5 = [v4 stringByAppendingPathComponent:@"/Library/Safari/SuspendState.plist"];
  stringByResolvingSymlinksInPath = [v5 stringByResolvingSymlinksInPath];
  v7 = [v3 fileURLWithPath:stringByResolvingSymlinksInPath isDirectory:0];

  [(SFBrowserStateSQLiteStore *)self _migrateFromLegacyPlistWithPath:v7];
}

- (void)_migrateFromLegacyPlistWithPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v16 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:pathCopy options:0 error:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 mutableCopy];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [v10 setObject:uUIDString forKeyedSubscript:@"SafariStateBrowserWindowUUID"];

      [(SFBrowserStateSQLiteStore *)self _updateBrowserWindowStateWithDictionary:v10];
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SFBrowserStateSQLiteStore _migrateFromLegacyPlistWithPath:];
      }
    }
  }

  else if ([v6 safari_matchesErrorDomain:*MEMORY[0x1E696A250] andCode:260])
  {
    v13 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = pathCopy;
      _os_log_impl(&dword_18B7AC000, v13, OS_LOG_TYPE_DEFAULT, "Legacy SuspendState.plist does not exist at %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _migrateFromLegacyPlistWithPath:];
    }
  }
}

- (int)_migrateToSchemaVersion:(int)version
{
  v3 = *&version;
  MEMORY[0x18CFFE120](v17, @"com.apple.SafariServices.SavingBrowserState");
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__SFBrowserStateSQLiteStore__migrateToSchemaVersion___block_invoke;
  aBlock[3] = &unk_1E721D568;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  _migrateToSchemaVersion = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"BEGIN TRANSACTION");
  if (_migrateToSchemaVersion != 101)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion:];
    }

    goto LABEL_33;
  }

  if (v3 > 4)
  {
    if (v3 < 8 || v3 == 8)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
      safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
      if ([safari_browserDefaults BOOLForKey:@"TabStateMigrationInProgress"])
      {
        v9 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [SFBrowserStateSQLiteStore _migrateToSchemaVersion:];
        }

        [(SFBrowserStateSQLiteStore *)self _recoverFromDatabaseInconsistencyFromSchemaVersion3Migration];
        _migrateToSchemaVersion = 101;
      }

      else
      {
        [safari_browserDefaults setBool:1 forKey:@"TabStateMigrationInProgress"];
        v14 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_18B7AC000, v14, OS_LOG_TYPE_DEFAULT, "Start migrating from tab state database from V2 to V3", v15, 2u);
        }

        _migrateToSchemaVersion = [(SFBrowserStateSQLiteStore *)self _migrateToSchemaVersion];
      }

      [safari_browserDefaults removeObjectForKey:@"TabStateMigrationInProgress"];

LABEL_20:
      if (_migrateToSchemaVersion == 101)
      {
        goto LABEL_21;
      }

LABEL_30:
      v12 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SFBrowserStateSQLiteStore _migrateToSchemaVersion:];
      }

      goto LABEL_32;
    }

LABEL_19:
    _migrateToSchemaVersion = [(SFBrowserStateSQLiteStore *)self _migrateToSchemaVersion];
    goto LABEL_20;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      goto LABEL_19;
    }

LABEL_27:
    v11 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion:];
    }

    _migrateToSchemaVersion = 1;
    goto LABEL_30;
  }

LABEL_21:
  _migrateToSchemaVersion = [(SFBrowserStateSQLiteStore *)self _setDatabaseSchemaVersion:v3];
  if (_migrateToSchemaVersion != 101)
  {
LABEL_32:
    v5[2](v5);
    goto LABEL_33;
  }

  _migrateToSchemaVersion = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"COMMIT TRANSACTION");
  if (_migrateToSchemaVersion != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion:];
    }

    goto LABEL_32;
  }

LABEL_33:

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v17);
  return _migrateToSchemaVersion;
}

void __53__SFBrowserStateSQLiteStore__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 16), 0, @"ROLLBACK TRANSACTION") != 101)
  {
    v1 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __53__SFBrowserStateSQLiteStore__migrateToSchemaVersion___block_invoke_cold_1();
    }
  }
}

- (int)_migrateToSchemaVersion_2
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE tabs ADD COLUMN uncompressed_session_data_size INTEGER NOT NULL DEFAULT 0");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_2];
    }
  }

  return v3;
}

- (int)_migrateToSchemaVersion_3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"SELECT COUNT(*) FROM sqlite_master WHERE type = 'table' AND (name = 'tabs_old' OR name = 'tab_sessions')");
  nextObject = [v3 nextObject];
  v5 = nextObject;
  if (!nextObject)
  {
    lastResultCode = [v3 lastResultCode];
    v11 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_3];
    }

    statement = [v3 statement];
    [statement invalidate];

    goto LABEL_33;
  }

  v6 = [nextObject intAtIndex:0];
  statement2 = [v3 statement];
  [statement2 invalidate];

  if (v6 >= 1)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B7AC000, v8, OS_LOG_TYPE_DEFAULT, "Database is in an inconsistent state on schema version 3. Atempting to recover", buf, 2u);
    }

    lastResultCode = [(SFBrowserStateSQLiteStore *)self _recoverFromDatabaseInconsistencyFromSchemaVersion3Migration];
    if (lastResultCode == 101)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_18B7AC000, v10, OS_LOG_TYPE_INFO, "Successfully recovered from database inconsistency of schema version 3.", buf, 2u);
      }

LABEL_8:
      lastResultCode = 101;
      goto LABEL_33;
    }

    v15 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_3];
    }

    goto LABEL_33;
  }

  lastResultCode = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP INDEX IF EXISTS tabs__uuid");
  if (lastResultCode != 101)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_3];
    }

    goto LABEL_32;
  }

  lastResultCode = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE tabs RENAME TO tabs_old");
  if (lastResultCode != 101)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_3];
    }

    goto LABEL_32;
  }

  lastResultCode = [(SFBrowserStateSQLiteStore *)self _createTableForTabs];
  if (lastResultCode != 101)
  {
    goto LABEL_33;
  }

  lastResultCode = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"INSERT INTO tabs (id, uuid, title, url, user_visible_url, order_index, last_viewed_time, readinglist_bookmark_id, opened_from_link, showing_reader, reader_view_top_scroll_offset, private_browsing, displaying_standalone_image, browser_window_uuid, browser_window_id)SELECT tabs_old.id, tabs_old.uuid, tabs_old.title, tabs_old.url, tabs_old.user_visible_url, tabs_old.order_index, tabs_old.last_viewed_time, tabs_old.readinglist_bookmark_id, tabs_old.opened_from_link, tabs_old.showing_reader, tabs_old.reader_view_top_scroll_offset, tabs_old.private_browsing, tabs_old.displaying_standalone_image, tabs_old.browser_window_uuid, tabs_old.browser_window_id FROM tabs_old");
  if (lastResultCode != 101)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_3];
    }

LABEL_32:

    goto LABEL_33;
  }

  lastResultCode = [(SFBrowserStateSQLiteStore *)self _createTableForTabSession];
  if (lastResultCode == 101)
  {
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"INSERT INTO tab_sessions (tab_uuid, session_data, uncompressed_session_data_size)SELECT tabs_old.uuid, tabs_old.session_data, tabs_old.uncompressed_session_data_size FROM tabs_old") != 101)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [SFBrowserStateSQLiteStore _migrateToSchemaVersion_3];
      }
    }

    lastResultCode = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE tabs_old");
    if (lastResultCode != 101)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [SFBrowserStateSQLiteStore _migrateToSchemaVersion_3];
      }

      goto LABEL_8;
    }
  }

LABEL_33:

  return lastResultCode;
}

- (int)_migrateToSchemaVersion_5
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP INDEX IF EXISTS tab_sessions__uuid");
  if (v3 != 101)
  {
    v7 = v3;
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_5];
    }

    goto LABEL_17;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE tab_sessions RENAME TO tab_sessions_old");
  if (v4 != 101)
  {
    v7 = v4;
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_5];
    }

    goto LABEL_17;
  }

  _createTableForTabSession = [(SFBrowserStateSQLiteStore *)self _createTableForTabSession];
  if (_createTableForTabSession != 101)
  {
    v7 = _createTableForTabSession;
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_5];
    }

    goto LABEL_17;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"INSERT INTO tab_sessions (tab_uuid, session_data, uncompressed_session_data_size)SELECT tab_sessions_old.tab_uuid, tab_sessions_old.session_data, tab_sessions_old.uncompressed_session_data_size FROM tab_sessions_old") != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_5];
    }
  }

  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE tab_sessions_old");
  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_5];
    }

LABEL_17:
  }

  return v7;
}

- (int)_migrateToSchemaVersion_6
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE tabs ADD COLUMN tab_group_uuid TEXT NOT NULL DEFAULT ''");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_6];
    }
  }

  return v3;
}

- (int)_migrateToSchemaVersion_7
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE tabs ADD COLUMN profile_uuid TEXT NOT NULL DEFAULT ''");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_7];
    }
  }

  return v3;
}

- (int)_migrateToSchemaVersion_8
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE browser_windows ADD COLUMN active_profile_identifier TEXT NOT NULL DEFAULT ''");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_8];
    }
  }

  return v3;
}

- (int)_recoverFromDatabaseInconsistencyFromSchemaVersion3Migration
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE IF EXISTS tab_sessions");
  if (v3 != 101)
  {
    _createTableForTabs = v3;
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _recoverFromDatabaseInconsistencyFromSchemaVersion3Migration];
    }

    goto LABEL_16;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE IF EXISTS tabs_old");
  if (v4 != 101)
  {
    _createTableForTabs = v4;
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_3];
    }

    goto LABEL_16;
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE IF EXISTS tabs");
  if (v5 != 101)
  {
    _createTableForTabs = v5;
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _recoverFromDatabaseInconsistencyFromSchemaVersion3Migration];
    }

LABEL_16:

    return _createTableForTabs;
  }

  _createTableForTabs = [(SFBrowserStateSQLiteStore *)self _createTableForTabs];
  if (_createTableForTabs != 101)
  {
    return _createTableForTabs;
  }

  return [(SFBrowserStateSQLiteStore *)self _createTableForTabSession];
}

- (int)_createTableForTabSession
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE tab_sessions (id INTEGER PRIMARY KEY AUTOINCREMENT,tab_uuid TEXT NOT NULL UNIQUE,session_data BLOB DEFAULT NULL,uncompressed_session_data_size INTEGER NOT NULL DEFAULT 0,FOREIGN KEY(tab_uuid) REFERENCES tabs(uuid) ON DELETE CASCADE ON UPDATE CASCADE)");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _createTableForTabSession];
    }

    goto LABEL_7;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX tab_sessions__uuid ON tab_sessions (tab_uuid)");
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _createTableForTabSession];
    }

LABEL_7:
  }

  return v4;
}

- (int)_createTableForTabs
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE tabs (id INTEGER PRIMARY KEY AUTOINCREMENT,uuid TEXT NOT NULL UNIQUE,title TEXT,url TEXT COLLATE NOCASE,user_visible_url TEXT COLLATE NOCASE,order_index INTEGER NOT NULL,last_viewed_time REAL DEFAULT NULL,readinglist_bookmark_id INTEGER DEFAULT 0,opened_from_link BOOL DEFAULT 0,showing_reader BOOL DEFAULT 0,reader_view_top_scroll_offset INTEGER DEFAULT 0,private_browsing BOOL DEFAULT 0,displaying_standalone_image BOOL DEFAULT 0,browser_window_uuid TEXT NOT NULL,browser_window_id INTEGER NOT NULL,tab_group_uuid TEXT NOT NULL DEFAULT '',profile_uuid TEXT NOT NULL DEFAULT '',FOREIGN KEY(browser_window_id) REFERENCES browser_windows(id) ON DELETE CASCADE)");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _createTableForTabs];
    }

    goto LABEL_7;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX tabs__uuid ON tabs (uuid)");
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _createTableForTabSession];
    }

LABEL_7:
  }

  return v4;
}

- (int)_createFreshDatabaseSchema
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE browser_windows (id INTEGER PRIMARY KEY AUTOINCREMENT,uuid TEXT NOT NULL,type INTEGER DEFAULT 0,active_document_index INTEGER DEFAULT 0,active_private_document_index INTEGER DEFAULT 0,active_document_is_valid BOOL DEFAULT 1,tab_state_successfully_loaded BOOL DEFAULT 0,legacy_plist_file_version INTEGER DEFAULT 0,scene_ID TEXT,active_profile_identifier TEXT NOT NULL DEFAULT '',CONSTRAINT uuid_type_index UNIQUE(uuid, type))");
  if (v3 != 101)
  {
    _createTableForTabs = v3;
    v6 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _createFreshDatabaseSchema];
    }

    return _createTableForTabs;
  }

  _createTableForTabs = [(SFBrowserStateSQLiteStore *)self _createTableForTabs];
  if (_createTableForTabs != 101)
  {
    return _createTableForTabs;
  }

  return [(SFBrowserStateSQLiteStore *)self _createTableForTabSession];
}

- (int)_migrateToSchemaVersion_4
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE browser_windows ADD COLUMN scene_id TEXT");
  if (v3 == 101)
  {

    return [(SFBrowserStateSQLiteStore *)self _mergeAllWindowsIfNeeded];
  }

  else
  {
    v5 = v3;
    v6 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _migrateToSchemaVersion_4];
    }

    return v5;
  }
}

void __53__SFBrowserStateSQLiteStore__mergeAllWindowsIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__SFBrowserStateSQLiteStore__mergeAllWindowsIfNeeded__block_invoke_2;
  v9[3] = &unk_1E721F408;
  v10 = *(a1 + 40);
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v7;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __53__SFBrowserStateSQLiteStore__mergeAllWindowsIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v13 = a3;
  v6 = *(a1 + 32);
  *buf = [*(a1 + 40) databaseID];
  v12 = [*(a1 + 40) UUIDString];
  v11 = [v5 intValue];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,unsigned long &,long,NSString * {__strong},int>(v6, &v13, buf, &v12, &v11);

  v7 = [*(a1 + 32) execute];
  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 intValue];
      v10 = [*(*(a1 + 48) + 16) lastErrorMessage];
      *buf = 67109634;
      *&buf[4] = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 1024;
      v18 = v7;
      _os_log_error_impl(&dword_18B7AC000, v8, OS_LOG_TYPE_ERROR, "Failed to update tab id %d: %{public}@ (%d)", buf, 0x18u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  [*(a1 + 32) reset];
}

id __53__SFBrowserStateSQLiteStore__mergeAllWindowsIfNeeded__block_invoke_132(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "databaseID")}];

  return v3;
}

- (BOOL)updateSceneID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  MEMORY[0x18CFFE120](v11, @"com.apple.SafariServices.SavingBrowserState");
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SFBrowserStateSQLiteStore_updateSceneID___block_invoke;
  v8[3] = &unk_1E721F478;
  v8[4] = self;
  v9 = dCopy;
  v10 = &v12;
  v6 = dCopy;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v13 + 24);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v11);
  _Block_object_dispose(&v12, 8);
  return self;
}

void __43__SFBrowserStateSQLiteStore_updateSceneID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v9 = [*(a1 + 40) sceneID];
  v8 = [*v2 UUIDString];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong}>(v3, 0, @"UPDATE browser_windows SET scene_id = ? WHERE uuid = ?", &v9, &v8);

  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 40) UUID];
      v7 = [*(*(a1 + 32) + 16) lastErrorMessage];
      *buf = 138412802;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 1024;
      v15 = v4;
      _os_log_error_impl(&dword_18B7AC000, v5, OS_LOG_TYPE_ERROR, "Failed to update scene_id for window with UUID = %@: %{public}@ (%d)", buf, 0x1Cu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (void)closeDatabase
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SFBrowserStateSQLiteStore_closeDatabase__block_invoke;
  block[3] = &unk_1E721D568;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

- (void)deleteRecentlyClosedWindowsWithProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__SFBrowserStateSQLiteStore_deleteRecentlyClosedWindowsWithProfileIdentifier___block_invoke;
  v7[3] = &unk_1E721F368;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(databaseQueue, v7);
}

void __78__SFBrowserStateSQLiteStore_deleteRecentlyClosedWindowsWithProfileIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x18CFFE120](v7, @"com.apple.SafariServices.SavingBrowserState");
  v2 = *(*(a1 + 32) + 16);
  *buf = 2;
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<SFBrowserWindowType,NSString * const {__strong}&>(v2, 0, @"DELETE FROM browser_windows WHERE type = ? AND active_profile_identifier = ?", buf, (a1 + 40));
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = [*(*(a1 + 32) + 16) lastErrorMessage];
      *buf = 138543874;
      *&buf[4] = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 1024;
      v12 = v3;
      _os_log_error_impl(&dword_18B7AC000, v4, OS_LOG_TYPE_ERROR, "Failed to remove recently closed windows (Profile: %{public}@) from BrowserState.db: %{public}@ (%d)", buf, 0x1Cu);
    }
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v7);
}

- (void)_removeSavedSessionStateDataForTabsWithUUIDStrings:(id)strings
{
  v10[6] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  MEMORY[0x18CFFE120](v10, @"com.apple.SafariServices.SavingBrowserState");
  database = self->_database;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [stringsCopy componentsJoinedByString:{@"', '"}];
  v8 = [v6 stringWithFormat:@"DELETE FROM tab_sessions WHERE tab_uuid IN ('%@')", v7];
  LODWORD(database) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v8);

  if (database != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _removeSavedSessionStateDataForTabsWithUUIDStrings:];
    }
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
}

id *__79__SFBrowserStateSQLiteStore_removeSavedSessionStateDataForTabsWithUUIDStrings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeSavedSessionStateDataForTabsWithUUIDStrings:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(result);

    JUMPOUT(0x18CFFE140);
  }

  return result;
}

- (void)saveTabStateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SFBrowserStateSQLiteStore_saveTabStateWithDictionary___block_invoke;
  v7[3] = &unk_1E721F368;
  v8 = dictionaryCopy;
  selfCopy = self;
  v6 = dictionaryCopy;
  dispatch_async(databaseQueue, v7);
}

void __56__SFBrowserStateSQLiteStore_saveTabStateWithDictionary___block_invoke(uint64_t a1)
{
  v2 = [[SFTabStateData alloc] initWithDictionaryRepresentation:*(a1 + 32)];
  if (([*(a1 + 40) _updateTabStateWithData:?] & 1) == 0)
  {
    [*(a1 + 40) _insertTabStateWithData:v2];
  }
}

- (id)tabStateDataForUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFBrowserStateSQLiteStore_tabStateDataForUUID___block_invoke;
  block[3] = &unk_1E721F4C8;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(databaseQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__SFBrowserStateSQLiteStore_tabStateDataForUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _tabStateDataForUUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_tabStateDataForUUID:(id)d
{
  dCopy = d;
  database = self->_database;
  uUIDString = [dCopy UUIDString];
  v6 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}>(database, @"SELECT tabs.id, tabs.uuid, tabs.title, tabs.url, tabs.user_visible_url, tabs.order_index, tabs.last_viewed_time, tabs.readinglist_bookmark_id, tabs.opened_from_link, tabs.showing_reader, tabs.reader_view_top_scroll_offset, tabs.private_browsing, tabs.displaying_standalone_image, tabs.browser_window_uuid, tabs.tab_group_uuid, tabs.profile_uuid FROM tabs WHERE uuid = ?", &uUIDString);

  nextObject = [v6 nextObject];
  if (nextObject)
  {
    v8 = [[SFTabStateData alloc] initWithSQLiteRow:nextObject];
  }

  else
  {
    v8 = 0;
  }

  statement = [v6 statement];
  [statement invalidate];

  return v8;
}

- (void)readTabStatesWithBrowserWindowUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SFBrowserStateSQLiteStore_readTabStatesWithBrowserWindowUUID_completion___block_invoke;
  block[3] = &unk_1E721CF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(databaseQueue, block);
}

- (void)_readTabStatesWithBrowserWindowUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(self->_database, @"SELECT * FROM browser_windows WHERE uuid = ?", &dCopy);
  nextObject = [v7 nextObject];
  if (nextObject)
  {
    statement3 = [[_SFBrowserWindowStateData alloc] initWithSQLiteRow:nextObject];
    dictionaryRepresentation = [(_SFBrowserWindowStateData *)statement3 dictionaryRepresentation];
    v28 = [dictionaryRepresentation mutableCopy];

    statement = [v7 statement];
    [statement invalidate];

    database = self->_database;
    databaseID = [(_SFBrowserWindowStateData *)statement3 databaseID];
    v13 = SafariShared::WBSSQLiteDatabaseFetch<long>(database, @"SELECT * FROM tabs WHERE browser_window_id = ? ORDER BY tabs.order_index ASC", &databaseID);
    v27 = nextObject;
    array = [MEMORY[0x1E695DF70] array];
    v26 = completionCopy;
    array2 = [MEMORY[0x1E695DF70] array];
    while (1)
    {
      nextObject2 = [v13 nextObject];
      if (!nextObject2)
      {
        break;
      }

      v17 = [[SFTabStateData alloc] initWithSQLiteRow:nextObject2];
      owningBrowserWindowUUIDString = [(SFTabStateData *)v17 owningBrowserWindowUUIDString];

      if (!owningBrowserWindowUUIDString)
      {
        uUIDString = [(_SFBrowserWindowStateData *)statement3 UUIDString];
        [(SFTabStateData *)v17 setOwningBrowserWindowUUIDString:uUIDString];
      }

      [(SFBrowserStateSQLiteStore *)self _cacheUUIDForTabStateData:v17];
      if ([(SFTabStateData *)v17 privateBrowsing])
      {
        v20 = array2;
      }

      else
      {
        v20 = array;
      }

      v21 = v20;
      dictionaryRepresentation2 = [(SFTabStateData *)v17 dictionaryRepresentation];
      [v21 addObject:dictionaryRepresentation2];
    }

    completionCopy = v26;
    [v28 setObject:array forKeyedSubscript:@"SafariStateDocuments"];
    [v28 setObject:array2 forKeyedSubscript:@"SafariStatePrivateDocuments"];
    statement2 = [v13 statement];
    [statement2 invalidate];

    databaseID2 = [(_SFBrowserWindowStateData *)statement3 databaseID];
    uUIDString2 = [(_SFBrowserWindowStateData *)statement3 UUIDString];
    [(SFBrowserStateSQLiteStore *)self _setDatabaseID:databaseID2 browserWindow:uUIDString2];

    completionCopy[2](completionCopy, v28);
    nextObject = v27;
  }

  else
  {
    completionCopy[2](completionCopy, 0);
    statement3 = [v7 statement];
    [(_SFBrowserWindowStateData *)statement3 invalidate];
  }
}

- (id)tabStatesWithBrowserWindowUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFBrowserStateSQLiteStore_tabStatesWithBrowserWindowUUID___block_invoke;
  block[3] = &unk_1E721F478;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(databaseQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __60__SFBrowserStateSQLiteStore_tabStatesWithBrowserWindowUUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__SFBrowserStateSQLiteStore_tabStatesWithBrowserWindowUUID___block_invoke_2;
  v4[3] = &unk_1E721F4F0;
  v4[4] = a1[6];
  return [v2 _readTabStatesWithBrowserWindowUUID:v1 completion:v4];
}

- (int64_t)_saveBrowserWindowStateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[_SFBrowserWindowStateData alloc] initWithDictionaryRepresentation:dictionaryCopy];
  v6 = [(SFBrowserStateSQLiteStore *)self _saveBrowserWindowStateWithData:v5];

  return v6;
}

- (int64_t)_saveBrowserWindowStateWithData:(id)data
{
  v22[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  MEMORY[0x18CFFE120](v21, @"com.apple.SafariServices.SavingBrowserState");
  uUIDString = [dataCopy UUIDString];
  v6 = [(SFBrowserStateSQLiteStore *)self _databaseIDForBrowserWindow:uUIDString];

  v20 = v6;
  database = self->_database;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    uUIDString2 = [dataCopy UUIDString];
    sceneID = [dataCopy sceneID];
    v22[0] = [dataCopy activeDocumentIndex];
    activePrivateDocumentIndex = [dataCopy activePrivateDocumentIndex];
    legacyPlistFileVersion = [dataCopy legacyPlistFileVersion];
    type = [dataCopy type];
    activeProfileIdentifier = [dataCopy activeProfileIdentifier];
    v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong},long,long,long,SFBrowserWindowType,NSString * {__strong}>(database, 0, @"INSERT INTO browser_windows (uuid, scene_id, active_document_index, active_private_document_index, legacy_plist_file_version, type, active_profile_identifier) VALUES (?, ?, ?, ?, ?, ?, ?)", &uUIDString2, &sceneID, v22, &activePrivateDocumentIndex, &legacyPlistFileVersion, &type, &activeProfileIdentifier);

    if (v8 == 101)
    {
      lastInsertRowID = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
      uUIDString3 = [dataCopy UUIDString];
      [(SFBrowserStateSQLiteStore *)self _setDatabaseID:lastInsertRowID browserWindow:uUIDString3];
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [SFBrowserStateSQLiteStore _saveBrowserWindowStateWithData:];
      }

      lastInsertRowID = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v22[0] = [dataCopy activeDocumentIndex];
    activePrivateDocumentIndex = [dataCopy activePrivateDocumentIndex];
    legacyPlistFileVersion = [dataCopy type];
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long,long,SFBrowserWindowType,long &>(database, 0, @"UPDATE browser_windows SET active_document_index = ?, active_private_document_index = ?, type = ? WHERE id = ?", v22, &activePrivateDocumentIndex, &legacyPlistFileVersion, &v20) != 101)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [SFBrowserStateSQLiteStore _saveBrowserWindowStateWithData:];
      }
    }

    lastInsertRowID = v20;
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v21);

  return lastInsertRowID;
}

- (void)_updateOrInsertTabStateWithData:(id)data
{
  dataCopy = data;
  if (([dataCopy skipUpdate] & 1) == 0 && (!-[SFBrowserStateSQLiteStore _isTabStateCached:](self, "_isTabStateCached:", dataCopy) || !-[SFBrowserStateSQLiteStore _updateTabStateWithData:](self, "_updateTabStateWithData:", dataCopy)))
  {
    [(SFBrowserStateSQLiteStore *)self _insertTabStateWithData:dataCopy];
  }
}

- (BOOL)_updateTabStateWithData:(id)data
{
  dataCopy = data;
  MEMORY[0x18CFFE120](v18, @"com.apple.SafariServices.SavingBrowserState");
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__SFBrowserStateSQLiteStore__updateTabStateWithData___block_invoke;
  aBlock[3] = &unk_1E721F518;
  aBlock[4] = self;
  v5 = dataCopy;
  v17 = v5;
  v6 = _Block_copy(aBlock);
  skipSavingSessionState = [v5 skipSavingSessionState];
  v8 = v6[2];
  if (skipSavingSessionState)
  {
    v9 = v8(v6);
  }

  else
  {
    if (v8(v6) != 101)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }

    database = self->_database;
    sessionStateData = [v5 sessionStateData];
    uncompressedSessionStateDataSize = [v5 uncompressedSessionStateDataSize];
    uUIDString = [v5 UUIDString];
    v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong},unsigned long,NSString * {__strong}>(database, 0, @"UPDATE tab_sessions SET session_data = ?, uncompressed_session_data_size = ?WHERE tab_uuid = ?", &sessionStateData, &uncompressedSessionStateDataSize, &uUIDString);
  }

  if (v9 != 101)
  {
    goto LABEL_7;
  }

  [(SFBrowserStateSQLiteStore *)self _cacheUUIDForTabStateData:v5];
  v11 = 1;
LABEL_8:

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);
  return v11;
}

uint64_t __53__SFBrowserStateSQLiteStore__updateTabStateWithData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v21 = [*(a1 + 40) title];
  v20 = [*(a1 + 40) url];
  v19 = [*(a1 + 40) userVisibleURL];
  v18 = [*(a1 + 40) orderIndex];
  [*(a1 + 40) lastViewedTime];
  v17 = v3;
  v16 = [*(a1 + 40) readingListBookmarkID];
  v15 = [*(a1 + 40) wasOpenedFromLink];
  v14 = [*(a1 + 40) showingReader];
  v13 = [*(a1 + 40) readerViewTopScrollOffset];
  v12 = [*(a1 + 40) privateBrowsing];
  v11 = [*(a1 + 40) displayingStandaloneImage];
  v10 = [*(a1 + 40) owningBrowserWindowUUIDString];
  v9 = [*(a1 + 40) owningBrowserWindowDatabaseID];
  v8 = [*(a1 + 40) tabGroupUUID];
  v7 = [*(a1 + 40) profileIdentifier];
  v6 = [*(a1 + 40) UUIDString];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},NSString * {__strong}>(v2, 0, @"UPDATE tabs SET title = ?, url = ?, user_visible_url = ?, order_index = ?, last_viewed_time = ?, readinglist_bookmark_id = ?, opened_from_link = ?, showing_reader = ?, reader_view_top_scroll_offset = ?, private_browsing = ?, displaying_standalone_image = ?, browser_window_uuid = ?, browser_window_id = ?, tab_group_uuid = ?, profile_uuid = ?WHERE uuid = ?", &v21, &v20, &v19, &v18, &v17, &v16, &v15, &v14, &v13, &v12, &v11, &v10, &v9, &v8, &v7, &v6);

  return v4;
}

- (void)_insertTabStateWithData:(id)data
{
  v28[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  MEMORY[0x18CFFE120](v26, @"com.apple.SafariServices.SavingBrowserState");
  v5 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:{@"INSERT INTO tabs (uuid, title, url, user_visible_url, order_index, last_viewed_time, readinglist_bookmark_id, opened_from_link, showing_reader, reader_view_top_scroll_offset, private_browsing, displaying_standalone_image, browser_window_uuid, browser_window_id, tab_group_uuid, profile_uuid)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"}];
  uUIDString = [dataCopy UUIDString];
  title = [dataCopy title];
  v23 = [dataCopy url];
  userVisibleURL = [dataCopy userVisibleURL];
  v28[0] = [dataCopy orderIndex];
  [dataCopy lastViewedTime];
  v27[0] = v6;
  readingListBookmarkID = [dataCopy readingListBookmarkID];
  wasOpenedFromLink = [dataCopy wasOpenedFromLink];
  showingReader = [dataCopy showingReader];
  readerViewTopScrollOffset = [dataCopy readerViewTopScrollOffset];
  privateBrowsing = [dataCopy privateBrowsing];
  displayingStandaloneImage = [dataCopy displayingStandaloneImage];
  owningBrowserWindowUUIDString = [dataCopy owningBrowserWindowUUIDString];
  owningBrowserWindowDatabaseID = [dataCopy owningBrowserWindowDatabaseID];
  tabGroupUUID = [dataCopy tabGroupUUID];
  profileIdentifier = [dataCopy profileIdentifier];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},NSString * {__strong},NSString * {__strong},long,double,int,BOOL,BOOL,long,BOOL,BOOL,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v5, &uUIDString, &title, &v23, &userVisibleURL, v28, v27, &readingListBookmarkID, &wasOpenedFromLink, &showingReader, &readerViewTopScrollOffset, &privateBrowsing, &displayingStandaloneImage, &owningBrowserWindowUUIDString, &owningBrowserWindowDatabaseID, &tabGroupUUID, &profileIdentifier);

  if ([v5 execute] == 101)
  {
    [(SFBrowserStateSQLiteStore *)self _cacheUUIDForTabStateData:dataCopy];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _insertTabStateWithData:];
    }
  }

  [v5 invalidate];
  v8 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:{@"INSERT INTO tab_sessions (tab_uuid, session_data, uncompressed_session_data_size)VALUES (?, ?, ?)"}];
  uUIDString2 = [dataCopy UUIDString];
  sessionStateData = [dataCopy sessionStateData];
  *&v27[0] = [dataCopy uncompressedSessionStateDataSize];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSData * {__strong},unsigned long>(v8, &uUIDString2, &sessionStateData, v27);

  if ([v8 execute] != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFBrowserStateSQLiteStore _insertTabStateWithData:];
    }
  }

  [v8 invalidate];

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v26);
}

- (id)_sqliteStatementForTabDeleting
{
  cachedTabDeleteStatement = self->_cachedTabDeleteStatement;
  if (!cachedTabDeleteStatement)
  {
    v4 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"DELETE FROM tabs WHERE uuid = ?"];
    v5 = self->_cachedTabDeleteStatement;
    self->_cachedTabDeleteStatement = v4;

    cachedTabDeleteStatement = self->_cachedTabDeleteStatement;
  }

  return cachedTabDeleteStatement;
}

- (void)_updateBrowserWindowStateWithDictionary:(id)dictionary
{
  v26[6] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  MEMORY[0x18CFFE120](v26, @"com.apple.SafariServices.SavingBrowserState");
  v5 = [(SFBrowserStateSQLiteStore *)self _saveBrowserWindowStateWithDictionary:dictionaryCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [dictionaryCopy safari_stringForKey:@"SafariStateBrowserWindowUUID"];
    v7 = [dictionaryCopy safari_arrayForKey:@"SafariStateDocuments"];
    v8 = [v7 mutableCopy];

    v9 = [dictionaryCopy safari_arrayForKey:@"SafariStatePrivateDocuments"];
    [v8 addObjectsFromArray:v9];

    if ([v8 count])
    {
      if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"BEGIN TRANSACTION") == 101)
      {
        firstObject = [v8 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v8 safari_mapObjectsUsingBlock:&__block_literal_global_200];
        }

        else
        {
          v12 = v8;
        }

        v13 = v12;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __69__SFBrowserStateSQLiteStore__updateBrowserWindowStateWithDictionary___block_invoke_2;
        v22[3] = &unk_1E721F560;
        v14 = v6;
        selfCopy = self;
        v25 = v5;
        v23 = v14;
        [v13 enumerateObjectsUsingBlock:v22];
        if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"COMMIT TRANSACTION") == 101)
        {
          v15 = [v13 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_205];
          v16 = [(SFBrowserStateSQLiteStore *)self _tabUUIDsInWindow:v14];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __69__SFBrowserStateSQLiteStore__updateBrowserWindowStateWithDictionary___block_invoke_2_206;
          v20[3] = &unk_1E721F5A8;
          v17 = v15;
          v21 = v17;
          v18 = [v16 objectsPassingTest:v20];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __69__SFBrowserStateSQLiteStore__updateBrowserWindowStateWithDictionary___block_invoke_3;
          v19[3] = &unk_1E721F5D0;
          v19[4] = self;
          [v18 enumerateObjectsUsingBlock:v19];
          [v16 minusSet:v18];
        }

        else
        {
          v17 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [SFBrowserStateSQLiteStore _updateBrowserWindowStateWithDictionary:];
          }
        }
      }

      else
      {
        v13 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          [SFBrowserStateSQLiteStore _updateBrowserWindowStateWithDictionary:];
        }
      }
    }
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v26);
}

SFTabStateData *__69__SFBrowserStateSQLiteStore__updateBrowserWindowStateWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFTabStateData alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

void __69__SFBrowserStateSQLiteStore__updateBrowserWindowStateWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 owningBrowserWindowUUIDString];

  if (!v3)
  {
    [v4 setOwningBrowserWindowUUIDString:*(a1 + 32)];
  }

  if ([v4 owningBrowserWindowDatabaseID] != *(a1 + 48))
  {
    [v4 setOwningBrowserWindowDatabaseID:?];
  }

  [*(a1 + 40) _updateOrInsertTabStateWithData:v4];
}

id __69__SFBrowserStateSQLiteStore__updateBrowserWindowStateWithDictionary___block_invoke_202(uint64_t a1, void *a2)
{
  v2 = [a2 UUIDString];

  return v2;
}

void __69__SFBrowserStateSQLiteStore__updateBrowserWindowStateWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _sqliteStatementForTabDeleting];
  [v3 bindString:v4 atParameterIndex:1];
  [v3 execute];
  [v3 reset];
}

- (void)_updateBrowserWindowWithData:(id)data tabs:(id)tabs
{
  v13[6] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  tabsCopy = tabs;
  MEMORY[0x18CFFE120](v13, @"com.apple.SafariServices.SavingBrowserState");
  v8 = [(SFBrowserStateSQLiteStore *)self _saveBrowserWindowStateWithData:dataCopy];
  if (tabsCopy)
  {
    v9 = v8;
    if ([dataCopy needsQuickUpdate])
    {
      if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"BEGIN TRANSACTION") == 101)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __63__SFBrowserStateSQLiteStore__updateBrowserWindowWithData_tabs___block_invoke;
        v12[3] = &unk_1E721F5F8;
        v12[4] = self;
        v12[5] = v9;
        [tabsCopy enumerateObjectsUsingBlock:v12];
        if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"COMMIT TRANSACTION") != 101)
        {
          v10 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [SFBrowserStateSQLiteStore _updateBrowserWindowStateWithDictionary:];
          }
        }
      }

      else
      {
        v11 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
          objc_claimAutoreleasedReturnValue();
          [SFBrowserStateSQLiteStore _updateBrowserWindowStateWithDictionary:];
        }
      }
    }
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);
}

void __63__SFBrowserStateSQLiteStore__updateBrowserWindowWithData_tabs___block_invoke(uint64_t a1, void *a2)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  v6 = [v3 UUIDString];
  v7 = [v5 initWithUUIDString:v6];
  v8 = [v4 _tabStateDataForUUID:v7];

  if (!v8)
  {
    [v3 setOwningBrowserWindowDatabaseID:*(a1 + 40)];
    [*(a1 + 32) _insertTabStateWithData:v3];
  }

  v9 = *(*(a1 + 32) + 16);
  v13[0] = [v3 orderIndex];
  v12 = [v3 owningBrowserWindowUUIDString];
  v11 = [v3 UUIDString];
  LODWORD(v9) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long,NSString * {__strong},long const&,NSString * {__strong}>(v9, 0, @"UPDATE tabs SET order_index = ?, browser_window_uuid = ?, browser_window_id = ?WHERE uuid = ?", v13, &v12, (a1 + 40), &v11);

  if (v9 == 101)
  {
    [*(a1 + 32) _cacheUUIDForTabStateData:v3];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 16) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __63__SFBrowserStateSQLiteStore__updateBrowserWindowWithData_tabs___block_invoke_cold_1();
    }
  }
}

- (void)updateBrowserWindowWithData:(id)data tabs:(id)tabs
{
  dataCopy = data;
  tabsCopy = tabs;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SFBrowserStateSQLiteStore_updateBrowserWindowWithData_tabs___block_invoke;
  block[3] = &unk_1E721F620;
  block[4] = self;
  v12 = dataCopy;
  v13 = tabsCopy;
  v9 = tabsCopy;
  v10 = dataCopy;
  dispatch_async(databaseQueue, block);
}

- (id)_tabUUIDsInWindow:(id)window
{
  windowCopy = window;
  v5 = [(NSMutableDictionary *)self->_tabUUIDStrings objectForKey:windowCopy];

  if (!v5)
  {
    tabUUIDStrings = self->_tabUUIDStrings;
    v7 = [MEMORY[0x1E695DFA8] set];
    [(NSMutableDictionary *)tabUUIDStrings setObject:v7 forKey:windowCopy];
  }

  v8 = [(NSMutableDictionary *)self->_tabUUIDStrings objectForKey:windowCopy];

  return v8;
}

- (void)_cacheUUIDForTabStateData:(id)data
{
  dataCopy = data;
  if (![(SFBrowserStateSQLiteStore *)self _isTabStateCached:dataCopy])
  {
    tabUUIDStrings = self->_tabUUIDStrings;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__SFBrowserStateSQLiteStore__cacheUUIDForTabStateData___block_invoke;
    v10[3] = &unk_1E721F648;
    v6 = dataCopy;
    v11 = v6;
    [(NSMutableDictionary *)tabUUIDStrings enumerateKeysAndObjectsUsingBlock:v10];
    owningBrowserWindowUUIDString = [v6 owningBrowserWindowUUIDString];
    v8 = [(SFBrowserStateSQLiteStore *)self _tabUUIDsInWindow:owningBrowserWindowUUIDString];
    uUIDString = [v6 UUIDString];
    [v8 addObject:uUIDString];
  }
}

void __55__SFBrowserStateSQLiteStore__cacheUUIDForTabStateData___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) owningBrowserWindowUUIDString];
  if ([v12 isEqualToString:v8])
  {
  }

  else
  {
    v9 = [*(a1 + 32) UUIDString];
    v10 = [v7 containsObject:v9];

    if (v10)
    {
      v11 = [*(a1 + 32) UUIDString];
      [v7 removeObject:v11];

      *a4 = 1;
    }
  }
}

- (BOOL)_isTabStateCached:(id)cached
{
  cachedCopy = cached;
  owningBrowserWindowUUIDString = [cachedCopy owningBrowserWindowUUIDString];
  v6 = [(SFBrowserStateSQLiteStore *)self _tabUUIDsInWindow:owningBrowserWindowUUIDString];
  uUIDString = [cachedCopy UUIDString];
  v8 = [v6 containsObject:uUIDString];

  return v8;
}

- (void)_setDatabaseID:(int64_t)d browserWindow:(id)window
{
  windowCopy = window;
  browserWindowDatabaseIDs = self->_browserWindowDatabaseIDs;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:d];
  [(NSMutableDictionary *)browserWindowDatabaseIDs setObject:v7 forKey:windowCopy];
}

- (int64_t)_databaseIDForBrowserWindow:(id)window
{
  v3 = [(NSMutableDictionary *)self->_browserWindowDatabaseIDs objectForKey:window];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (void)updateBrowserWindowStateWithDictionary:(id)dictionary completion:(id)completion
{
  dictionaryCopy = dictionary;
  completionCopy = completion;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__SFBrowserStateSQLiteStore_updateBrowserWindowStateWithDictionary_completion___block_invoke;
  block[3] = &unk_1E721CF88;
  block[4] = self;
  v12 = dictionaryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dictionaryCopy;
  dispatch_async(databaseQueue, block);
}

uint64_t __79__SFBrowserStateSQLiteStore_updateBrowserWindowStateWithDictionary_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateBrowserWindowStateWithDictionary:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_readSavedSessionStateDataForTabWithUUIDString:(id)string
{
  stringCopy = string;
  v4 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(self->_database, @"SELECT tab_sessions.uncompressed_session_data_size, tab_sessions.session_data FROM tab_sessions WHERE tab_sessions.tab_uuid = ?", &stringCopy);
  nextObject = [v4 nextObject];
  v6 = nextObject;
  if (nextObject)
  {
    v7 = [nextObject intAtIndex:0];
    statement = [v6 dataAtIndex:1];
    v9 = [SFTabStateData uncompressedDataWithRawData:statement uncompressedSize:v7];
  }

  else
  {
    statement = [v4 statement];
    [statement invalidate];
    v9 = 0;
  }

  return v9;
}

- (id)readSavedSessionStateDataForTabWithUUIDString:(id)string
{
  stringCopy = string;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SFBrowserStateSQLiteStore_readSavedSessionStateDataForTabWithUUIDString___block_invoke;
  block[3] = &unk_1E721F4C8;
  v10 = stringCopy;
  v11 = &v12;
  block[4] = self;
  v6 = stringCopy;
  dispatch_sync(databaseQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __75__SFBrowserStateSQLiteStore_readSavedSessionStateDataForTabWithUUIDString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _readSavedSessionStateDataForTabWithUUIDString:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)deleteTabStateWithBrowserWindowUUID:(id)d andRemoveWindow:(BOOL)window
{
  windowCopy = window;
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (windowCopy)
    {
      v7 = @"YES";
    }

    v8 = v7;
    *buf = 138543618;
    v10 = dCopy;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_18B7AC000, v6, OS_LOG_TYPE_DEFAULT, "Deleting tab state with Browser Window UUID:%{public}@ and removing window: %{public}@", buf, 0x16u);
  }

  operator new();
}

id *__81__SFBrowserStateSQLiteStore_deleteTabStateWithBrowserWindowUUID_andRemoveWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _databaseIDForBrowserWindow:*(a1 + 40)];
  v3 = *(a1 + 56);
  v4 = objc_alloc(MEMORY[0x1E69C89F0]);
  v5 = *(*(a1 + 32) + 16);
  if (v3 == 1)
  {
    v6 = [v4 initWithDatabase:v5 query:@"DELETE FROM browser_windows WHERE id = ?"];
    [v6 bindInt64:v2 atParameterIndex:1];
    [v6 execute];
    [v6 invalidate];
    [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  }

  else
  {
    v6 = [v4 initWithDatabase:v5 query:@"DELETE FROM tabs WHERE browser_window_id = ?"];
    [v6 bindInt64:v2 atParameterIndex:1];
    [v6 execute];
    [v6 invalidate];
  }

  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(result);

    JUMPOUT(0x18CFFE140);
  }

  return result;
}

- (void)updateTabWithTabStateData:(id)data
{
  dataCopy = data;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFBrowserStateSQLiteStore_updateTabWithTabStateData___block_invoke;
  v7[3] = &unk_1E721F368;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(databaseQueue, v7);
}

uint64_t __55__SFBrowserStateSQLiteStore_updateTabWithTabStateData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) owningBrowserWindowUUIDString];
  v4 = [v2 _databaseIDForBrowserWindow:v3];

  if (v4 != [*(a1 + 40) owningBrowserWindowDatabaseID])
  {
    [*(a1 + 40) setOwningBrowserWindowDatabaseID:v4];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _updateOrInsertTabStateWithData:v6];
}

void __50__SFBrowserStateSQLiteStore_removeTabWithTabData___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(*(a1 + 32) + 16) query:@"DELETE FROM tabs WHERE uuid = ?"];
  v3 = [*(a1 + 40) UUIDString];
  [v2 bindString:v3 atParameterIndex:1];

  if ([v2 execute] != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 16) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __50__SFBrowserStateSQLiteStore_removeTabWithTabData___block_invoke_cold_1();
    }
  }

  [v2 invalidate];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) owningBrowserWindowUUIDString];
  v7 = [v5 _tabUUIDsInWindow:v6];
  v8 = [*(a1 + 40) UUIDString];
  [v7 removeObject:v8];

  v9 = *(a1 + 48);
  if (v9)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v9);
    MEMORY[0x18CFFE140]();
  }
}

- (void)deleteActiveProfileReferencesOnWindowsWithProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__SFBrowserStateSQLiteStore_deleteActiveProfileReferencesOnWindowsWithProfileIdentifier___block_invoke;
  v7[3] = &unk_1E721F368;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(databaseQueue, v7);
}

void __89__SFBrowserStateSQLiteStore_deleteActiveProfileReferencesOnWindowsWithProfileIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x18CFFE120](v6, @"com.apple.SafariServices.SavingBrowserState");
  v2 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(*(*(a1 + 32) + 16), 0, @"UPDATE browser_windows SET active_profile_identifier = 'DefaultProfile' WHERE active_profile_identifier = ?", (a1 + 40));
  if (v2 != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = [*(*(a1 + 32) + 16) lastErrorMessage];
      *buf = 138543874;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      v11 = 1024;
      v12 = v2;
      _os_log_error_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_ERROR, "Failed to update references to profile %{public}@ on windows with error: %{public}@ (%d)", buf, 0x1Cu);
    }
  }

  [*(a1 + 32) _vacuum];
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v6);
}

- (void)deleteSavedTabsForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SFBrowserStateSQLiteStore_deleteSavedTabsForProfileWithIdentifier___block_invoke;
  v7[3] = &unk_1E721F368;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(databaseQueue, v7);
}

void __69__SFBrowserStateSQLiteStore_deleteSavedTabsForProfileWithIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x18CFFE120](v6, @"com.apple.SafariServices.SavingBrowserState");
  v2 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(*(*(a1 + 32) + 16), 0, @"DELETE FROM tabs WHERE profile_uuid = ?", (a1 + 40));
  if (v2 != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = [*(*(a1 + 32) + 16) lastErrorMessage];
      *buf = 138543874;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      v11 = 1024;
      v12 = v2;
      _os_log_error_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_ERROR, "Failed to delete tabs in profile %{public}@ with error: %{public}@ (%d)", buf, 0x1Cu);
    }
  }

  [*(a1 + 32) _vacuum];
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v6);
}

id *__52__SFBrowserStateSQLiteStore_checkPointWriteAheadLog__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [*(*(a1 + 32) + 16) checkpointWriteAheadLogWithLogFrameCount:&v7 + 4 checkpointedFrameCount:&v7] == 0;
  v3 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v9 = HIDWORD(v7);
      v10 = 1024;
      v11 = v7;
      _os_log_impl(&dword_18B7AC000, v4, OS_LOG_TYPE_INFO, "Checkpointed write ahead log. Log frame count: %d, checkpointed frame count: %d", buf, 0xEu);
    }
  }

  else
  {
    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 16) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __52__SFBrowserStateSQLiteStore_checkPointWriteAheadLog__block_invoke_cold_1();
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(result);
    return MEMORY[0x18CFFE140]();
  }

  return result;
}

- (void)setSecureDeleteEnabled:(BOOL)enabled
{
  databaseQueue = self->_databaseQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SFBrowserStateSQLiteStore_setSecureDeleteEnabled___block_invoke;
  v4[3] = &unk_1E721F698;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(databaseQueue, v4);
}

void __52__SFBrowserStateSQLiteStore_setSecureDeleteEnabled___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v4 = @"PRAGMA secure_delete = ON";
  }

  else
  {
    v4 = @"PRAGMA secure_delete = OFF";
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, v4);
  if (v5 != 100)
  {
    v6 = v5;
    v7 = WBS_LOG_CHANNEL_PREFIXStatePersistence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(*(a1 + 32) + 16) lastErrorMessage];
      v9 = *(a1 + 40);
      v10 = 138543874;
      v11 = v8;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v9;
      _os_log_error_impl(&dword_18B7AC000, v7, OS_LOG_TYPE_ERROR, "Failed to toggle secure_delete pragma: %{public}@ (%d) (%d)", &v10, 0x18u);
    }
  }
}

- (void)_vacuum
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to vacuum database: %{public}@ (%d)", v4, v5);
}

- (void)regenerateTabUUIDsForDeviceRestoration
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SFBrowserStateSQLiteStore_regenerateTabUUIDsForDeviceRestoration__block_invoke;
  block[3] = &unk_1E721D568;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

- (void)_regenerateTabUUIDsForDeviceRestoration
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to regenerate tab UUIDs: %{public}@ (%d)", v4, v5);
}

- (void)_openDatabaseAndCheckIntegrity:(os_log_t)log .cold.3(uint64_t *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4[0] = 67109634;
  v4[1] = a2;
  v5 = 1024;
  v6 = 8;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_18B7AC000, log, OS_LOG_TYPE_ERROR, "BrowserState SQLite schema version (%d) does not match our supported schema version (%d) in store at %{public}@", v4, 0x18u);
}

- (void)_migrateToSchemaVersion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion_2
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to add uncompressed_session_data_size column to tabs table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_3
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion_5
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to drop tab_sessions_old table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_6
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to add tab_group_uuid column: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_7
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to add profile_uuid column: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_8
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to add active_profile_identifier column: %{public}@ (%d)", v4, v5);
}

- (void)_recoverFromDatabaseInconsistencyFromSchemaVersion3Migration
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to drop tabs table: %{public}@ (%d)", v4, v5);
}

- (void)_createTableForTabSession
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to create the index for table: %{public}@ (%d)", v4, v5);
}

- (void)_createTableForTabs
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to create the tabs table when removing session column: %{public}@ (%d)", v4, v5);
}

- (void)_createFreshDatabaseSchema
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to create the browser_windows table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_4
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to add scene_id column to browser_windows table: %{public}@ (%d)", v4, v5);
}

- (void)_mergeAllWindowsIfNeeded
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to reset scene_id column: %{public}@ (%d)", v4, v5);
}

void __44__SFBrowserStateSQLiteStore_mergeAllWindows__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Merge all windows: failed to begin transaction: %{public}@ (%d)", v4, v5);
}

void __44__SFBrowserStateSQLiteStore_mergeAllWindows__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Merge all windows: failed to roll back transaction: %{public}@ (%d)", v4, v5);
}

void __44__SFBrowserStateSQLiteStore_mergeAllWindows__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Merge all windows: failed to commit transaction: %{public}@ (%d)", v4, v5);
}

- (void)_removeSavedSessionStateDataForTabsWithUUIDStrings:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to remove saved session state data for Recently Closed Tab from BrowserState.db: %{public}@ (%d)", v4, v5);
}

- (void)_saveBrowserWindowStateWithData:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to update browser window with ID: %{public}@ (%d)", v4, v5);
}

- (void)_saveBrowserWindowStateWithData:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to insert browser window with UUID: %{public}@ (%d)", v4, v5);
}

- (void)_insertTabStateWithData:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to insert a tab into the tabs table: %@ (%d)", v4, v5);
}

- (void)_insertTabStateWithData:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to insert a tab session data into the tab_sessions table: %{public}@ (%d)", v4, v5);
}

- (void)_updateBrowserWindowStateWithDictionary:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to start a transaction while updating tabs: %{public}@ (%d)", v4, v5);
}

- (void)_updateBrowserWindowStateWithDictionary:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to commit a transaction while updating tabs: %{public}@ (%d)", v4, v5);
}

void __63__SFBrowserStateSQLiteStore__updateBrowserWindowWithData_tabs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to update a tab: %{public}@ (%d)", v4, v5);
}

void __50__SFBrowserStateSQLiteStore_removeTabWithTabData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to delete a tab: %{public}@ (%d)", v4, v5);
}

void __52__SFBrowserStateSQLiteStore_checkPointWriteAheadLog__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_1(&dword_18B7AC000, "Failed to checkpoint write ahead log: %{public}@ (%d)", v4, v5);
}

@end