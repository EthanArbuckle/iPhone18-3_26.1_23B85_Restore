@interface NMSPersistentDictionary
- (NMSPersistentDictionary)init;
- (NMSPersistentDictionary)initWithPath:(id)a3 objectClass:(Class)a4 loggingFacility:(__CFString *)a5;
- (NMSPersistentDictionary)initWithSharedDBForService:(id)a3 objectClass:(Class)a4;
- (id)_dataFromObject:(id)a3;
- (id)_objectFromData:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectWithOldestExpirationDate:(id *)a3;
- (unint64_t)_checkSchemaVersion;
- (void)_ensureDBSchema;
- (void)_openDBForceRecreate:(BOOL)a3;
- (void)_prepareStatements;
- (void)_withDB:(id)a3;
- (void)dealloc;
- (void)enumerateObjectsSortedByEnqueueDate:(id)a3;
- (void)enumerateObjectsSortedByExpirationDate:(id)a3;
- (void)lock;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)resetObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 expires:(id)a5;
- (void)unlock;
@end

@implementation NMSPersistentDictionary

- (NMSPersistentDictionary)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"You must use the -initWithPath:objectClass: initializer for NMSPersistentDictionary"];

  return 0;
}

- (NMSPersistentDictionary)initWithPath:(id)a3 objectClass:(Class)a4 loggingFacility:(__CFString *)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = NMSPersistentDictionary;
  v9 = [(NMSPersistentDictionary *)&v16 init];
  if (v9)
  {
    v10 = dispatch_semaphore_create(1);
    lock = v9->_lock;
    v9->_lock = v10;

    v12 = [v8 copy];
    path = v9->_path;
    v9->_path = v12;

    v9->_objectClass = a4;
    if (a5)
    {
      v9->_loggingFacility = CFStringCreateCopy(*MEMORY[0x1E695E480], a5);
    }

    [(NMSPersistentDictionary *)v9 _openDBForceRecreate:0];
    v14 = v9;
  }

  return v9;
}

- (NMSPersistentDictionary)initWithSharedDBForService:(id)a3 objectClass:(Class)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = NMSPersistentDictionary;
  v7 = [(NMSPersistentDictionary *)&v14 init];
  if (v7)
  {
    v8 = [_SYSharedServiceDB sharedInstanceForServiceName:v6];
    sharedDB = v7->_sharedDB;
    v7->_sharedDB = v8;

    if (!v7->_sharedDB)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [NMSPersistentDictionary initWithSharedDBForService:objectClass:];
      }
    }

    v7->_objectClass = a4;
    v10 = dispatch_semaphore_create(1);
    lock = v7->_lock;
    v7->_lock = v10;

    [(NMSPersistentDictionary *)v7 _ensureDBSchema];
    [(NMSPersistentDictionary *)v7 _prepareStatements];
    v12 = v7;
  }

  return v7;
}

- (void)dealloc
{
  loggingFacility = self->_loggingFacility;
  if (loggingFacility)
  {
    CFRelease(loggingFacility);
  }

  if (self->_db || self->_sharedDB)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__NMSPersistentDictionary_dealloc__block_invoke;
    v6[3] = &unk_1E86C9ED8;
    v6[4] = self;
    [(NMSPersistentDictionary *)self _withDB:v6];
    db = self->_db;
    if (db)
    {
      sqlite3_close(db);
    }
  }

  v5.receiver = self;
  v5.super_class = NMSPersistentDictionary;
  [(NMSPersistentDictionary *)&v5 dealloc];
}

uint64_t __34__NMSPersistentDictionary_dealloc__block_invoke(uint64_t a1)
{
  sqlite3_finalize(*(*(a1 + 32) + 56));
  sqlite3_finalize(*(*(a1 + 32) + 64));
  sqlite3_finalize(*(*(a1 + 32) + 72));
  sqlite3_finalize(*(*(a1 + 32) + 80));
  sqlite3_finalize(*(*(a1 + 32) + 88));
  sqlite3_finalize(*(*(a1 + 32) + 96));
  v2 = *(*(a1 + 32) + 104);

  return sqlite3_finalize(v2);
}

- (void)lock
{
  if (!self->_sharedDB)
  {
    dispatch_semaphore_wait(self->_lock, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)unlock
{
  if (!self->_sharedDB)
  {
    dispatch_semaphore_signal(self->_lock);
  }
}

- (void)_withDB:(id)a3
{
  sharedDB = self->_sharedDB;
  if (sharedDB)
  {
    [(_SYSharedServiceDB *)sharedDB withDBRef:a3];
  }

  else
  {
    (*(a3 + 2))(a3, self->_db);
  }
}

- (unint64_t)_checkSchemaVersion
{
  ppStmt = 0;
  if (!sqlite3_prepare_v2(self->_db, "SELECT COUNT(*) FROM meta", -1, &ppStmt, 0))
  {
    v3 = sqlite3_step(ppStmt);
    if (v3 != 101)
    {
      if (v3 == 100)
      {
        v2 = sqlite3_column_int(ppStmt, 0);
LABEL_15:
        sqlite3_reset(ppStmt);
        sqlite3_finalize(ppStmt);
        return v2;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }

    v2 = 0;
    goto LABEL_15;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }

  return 0;
}

- (void)_openDBForceRecreate:(BOOL)a3
{
  v3 = a3;
  v29[3] = *MEMORY[0x1E69E9840];
  p_path = &self->_path;
  v6 = self->_path;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if ((v8 & 1) == 0)
  {
    v12 = [(NSString *)v6 stringByDeletingLastPathComponent];
    v14 = *MEMORY[0x1E696A328];
    v28[0] = *MEMORY[0x1E696A360];
    v28[1] = v14;
    v29[0] = @"mobile";
    v29[1] = @"mobile";
    v28[2] = *MEMORY[0x1E696A370];
    v29[2] = &unk_1F5AE26C8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v27 = 0;
    v17 = [v16 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:v15 error:&v27];
    v18 = v27;

    if ((v17 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v19 = qword_1EDE73430;
      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [(NMSPersistentDictionary *)v19 _openDBForceRecreate:v18];
      }
    }

    goto LABEL_18;
  }

  if (v3)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73430;
    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [NMSPersistentDictionary _openDBForceRecreate:v9];
    }

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = 0;
    v11 = [v10 removeItemAtPath:v6 error:&v26];
    v12 = v26;

    if ((v11 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73430;
      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [(NMSPersistentDictionary *)v13 _openDBForceRecreate:v12];
      }
    }

LABEL_18:
  }

  v20 = sqlite3_open_v2([(NSString *)v6 fileSystemRepresentation], &self->_db, 4194310, 0);
  if (!v20)
  {
    db = self->_db;
    if (db)
    {
      ExecuteSQL_1(db, "PRAGMA journal_mode=WAL;");
      sqlite3_busy_timeout(self->_db, 60000);
      sqlite3_extended_result_codes(self->_db, 1);
      ExecuteSQL_1(self->_db, "CREATE TABLE IF NOT EXISTS meta (v INTEGER PRIMARY KEY AUTOINCREMENT, t TEXT)");
      v24 = [(NMSPersistentDictionary *)self _checkSchemaVersion];
      if (v24 != 1)
      {
        if (v24)
        {
LABEL_38:
          [(NMSPersistentDictionary *)self _prepareStatements];
          goto LABEL_39;
        }

        ExecuteSQL_1(self->_db, "CREATE TABLE kvs (k0 TEXT, d0 REAL, v0 BLOB)");
        ExecuteSQL_1(self->_db, "CREATE UNIQUE INDEX k0 ON kvs (k0)");
        ExecuteSQL_1(self->_db, "CREATE INDEX d0 ON kvs (d0)");
        ExecuteSQL_1(self->_db, "INSERT INTO meta (t) VALUES (datetime('now'))");
      }

      ExecuteSQL_1(self->_db, "ALTER TABLE kvs ADD COLUMN d1 REAL DEFAULT 0");
      ExecuteSQL_1(self->_db, "CREATE INDEX d1 ON kvs (d1)");
      ExecuteSQL_1(self->_db, "INSERT INTO meta (t) VALUES (datetime('now'))");
      goto LABEL_38;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v21 = qword_1EDE73430;
  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    [(NMSPersistentDictionary *)p_path _openDBForceRecreate:v20, v21];
  }

  v22 = self->_db;
  if (v22)
  {
    sqlite3_close(v22);
    self->_db = 0;
  }

  if (v3)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [NMSPersistentDictionary _openDBForceRecreate:];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Could not open DB"];
  }

  else
  {
    [(NMSPersistentDictionary *)self _openDBForceRecreate:1];
  }

LABEL_39:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_ensureDBSchema
{
  sharedDB = self->_sharedDB;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(_SYSharedServiceDB *)sharedDB updateSchemaForClient:v4 usingBlock:&__block_literal_global_9];
}

uint64_t __42__NMSPersistentDictionary__ensureDBSchema__block_invoke(int a1, sqlite3 *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    result = a3;
    if (a3)
    {
      return result;
    }

    ExecuteSQL_1(a2, "CREATE TABLE kvs (k0 TEXT, d0 REAL, v0 BLOB)");
    ExecuteSQL_1(a2, "CREATE UNIQUE INDEX k0 ON kvs (k0)");
    ExecuteSQL_1(a2, "CREATE INDEX d0 ON kvs (d0)");
  }

  ExecuteSQL_1(a2, "ALTER TABLE kvs ADD COLUMN d1 REAL DEFAULT 0");
  ExecuteSQL_1(a2, "CREATE INDEX d1 ON kvs (d1)");
  return 2;
}

- (void)_prepareStatements
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__NMSPersistentDictionary__prepareStatements__block_invoke;
  v2[3] = &unk_1E86C9ED8;
  v2[4] = self;
  [(NMSPersistentDictionary *)self _withDB:v2];
}

void __45__NMSPersistentDictionary__prepareStatements__block_invoke(uint64_t a1, sqlite3 *db)
{
  if (sqlite3_prepare_v2(db, "INSERT OR REPLACE INTO kvs (k0, d0, v0, d1) VALUES (?, ?, ?, ?)", -1, (*(a1 + 32) + 64), 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  if (sqlite3_prepare_v2(db, "UPDATE kvs SET v0 = ? WHERE k0 = ?", -1, (*(a1 + 32) + 72), 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  if (sqlite3_prepare_v2(db, "SELECT v0 FROM kvs WHERE k0 = ?", -1, (*(a1 + 32) + 56), 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  if (sqlite3_prepare_v2(db, "DELETE FROM kvs WHERE k0 = ?", -1, (*(a1 + 32) + 80), 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  if (sqlite3_prepare_v2(db, "DELETE FROM kvs", -1, (*(a1 + 32) + 88), 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  if (sqlite3_prepare_v2(db, "SELECT k0, d0, v0 FROM kvs ORDER BY d0 ASC", -1, (*(a1 + 32) + 96), 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  if (sqlite3_prepare_v2(db, "SELECT k0, d0, v0, d1 FROM kvs ORDER BY d1 ASC", -1, (*(a1 + 32) + 104), 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }
}

- (id)_objectFromData:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = a3;
    v6 = [[v4 alloc] initForReadingFromData:v5 error:0];

    v7 = [objc_alloc(self->_objectClass) initWithCoder:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_dataFromObject:(id)a3
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v4 encodeWithCoder:v5];

  v6 = [v5 encodedData];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4 expires:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__NMSPersistentDictionary_setObject_forKey_expires___block_invoke;
  v16[3] = &unk_1E86CB298;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v20 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [(NMSPersistentDictionary *)self _withDB:v16];
}

void __52__NMSPersistentDictionary_setObject_forKey_expires___block_invoke(uint64_t a1)
{
  BindString_0(*(*(a1 + 32) + 64), 1, *(a1 + 40));
  v2 = *(*(a1 + 32) + 64);
  [*(a1 + 48) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(v2, 2, v3);
  v4 = [*(a1 + 32) _dataFromObject:*(a1 + 56)];
  BindData_0(*(*(a1 + 32) + 64), 3, v4);
  v5 = *(*(a1 + 32) + 64);
  [*(a1 + 64) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(v5, 4, v6);
  v7 = sqlite3_step(*(*(a1 + 32) + 64));
  if (v7 && v7 != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 64));
  sqlite3_clear_bindings(*(*(a1 + 32) + 64));
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__NMSPersistentDictionary_objectForKey___block_invoke;
  v8[3] = &unk_1E86CAE58;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NMSPersistentDictionary *)self _withDB:v8];
  v6 = [(NMSPersistentDictionary *)self _objectFromData:v12[5]];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __40__NMSPersistentDictionary_objectForKey___block_invoke(uint64_t a1)
{
  BindString_0(*(*(a1 + 32) + 56), 1, *(a1 + 40));
  v2 = sqlite3_step(*(*(a1 + 32) + 56));
  if (v2 != 101)
  {
    if (v2 == 100)
    {
      v3 = ReadData_0(*(*(a1 + 32) + 56), 0);
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
      }
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 56));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 56));
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__NMSPersistentDictionary_removeObjectForKey___block_invoke;
  v6[3] = &unk_1E86CABC0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NMSPersistentDictionary *)self _withDB:v6];
}

uint64_t __46__NMSPersistentDictionary_removeObjectForKey___block_invoke(uint64_t a1)
{
  BindString_0(*(*(a1 + 32) + 80), 1, *(a1 + 40));
  if (sqlite3_step(*(*(a1 + 32) + 80)) != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 80));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 80));
}

- (void)resetObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(NMSPersistentDictionary *)self _dataFromObject:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__NMSPersistentDictionary_resetObject_forKey___block_invoke;
  v10[3] = &unk_1E86CACB0;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(NMSPersistentDictionary *)self _withDB:v10];
}

uint64_t __46__NMSPersistentDictionary_resetObject_forKey___block_invoke(uint64_t a1)
{
  BindData_0(*(*(a1 + 32) + 72), 1, *(a1 + 40));
  BindString_0(*(*(a1 + 32) + 72), 2, *(a1 + 48));
  if (sqlite3_step(*(*(a1 + 32) + 72)) != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  sqlite3_reset(*(*(a1 + 32) + 72));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 72));
}

- (void)removeAllObjects
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__NMSPersistentDictionary_removeAllObjects__block_invoke;
  v2[3] = &unk_1E86C9ED8;
  v2[4] = self;
  [(NMSPersistentDictionary *)self _withDB:v2];
}

uint64_t __43__NMSPersistentDictionary_removeAllObjects__block_invoke(uint64_t a1)
{
  if (sqlite3_step(*(*(a1 + 32) + 88)) != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  return sqlite3_reset(*(*(a1 + 32) + 88));
}

- (void)enumerateObjectsSortedByExpirationDate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__NMSPersistentDictionary_enumerateObjectsSortedByExpirationDate___block_invoke;
  v6[3] = &unk_1E86CB2C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NMSPersistentDictionary *)self _withDB:v6];
}

uint64_t __66__NMSPersistentDictionary_enumerateObjectsSortedByExpirationDate___block_invoke(uint64_t a1)
{
  while (1)
  {
    v2 = sqlite3_step(*(*(a1 + 32) + 96));
    if (v2 != 100)
    {
      break;
    }

    v3 = ReadString_0(*(*(a1 + 32) + 96));
    v4 = ReadDate_0(*(*(a1 + 32) + 96), 1);
    v5 = ReadData_0(*(*(a1 + 32) + 96), 2);
    v6 = [*(a1 + 32) _objectFromData:v5];
    (*(*(a1 + 40) + 16))();
  }

  if (v2 && v2 != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  return sqlite3_reset(*(*(a1 + 32) + 96));
}

- (id)objectWithOldestExpirationDate:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__12;
  v11 = __Block_byref_object_dispose__12;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__NMSPersistentDictionary_objectWithOldestExpirationDate___block_invoke;
  v6[3] = &unk_1E86CB2E8;
  v6[4] = &v13;
  v6[5] = &v7;
  [(NMSPersistentDictionary *)self enumerateObjectsSortedByExpirationDate:v6];
  if (a3)
  {
    *a3 = v8[5];
  }

  v4 = v14[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void __58__NMSPersistentDictionary_objectWithOldestExpirationDate___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v12 = v8;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;

  *a5 = 1;
}

- (void)enumerateObjectsSortedByEnqueueDate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__NMSPersistentDictionary_enumerateObjectsSortedByEnqueueDate___block_invoke;
  v6[3] = &unk_1E86CB2C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NMSPersistentDictionary *)self _withDB:v6];
}

uint64_t __63__NMSPersistentDictionary_enumerateObjectsSortedByEnqueueDate___block_invoke(uint64_t a1)
{
  while (1)
  {
    v2 = sqlite3_step(*(*(a1 + 32) + 104));
    if (v2 != 100)
    {
      break;
    }

    v3 = ReadString_0(*(*(a1 + 32) + 104));
    v4 = ReadDate_0(*(*(a1 + 32) + 104), 1);
    v5 = ReadData_0(*(*(a1 + 32) + 104), 2);
    v6 = ReadDate_0(*(*(a1 + 32) + 104), 3);
    v7 = [*(a1 + 32) _objectFromData:v5];
    (*(*(a1 + 40) + 16))();
  }

  if (v2 && v2 != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    }
  }

  return sqlite3_reset(*(*(a1 + 32) + 96));
}

- (void)initWithSharedDBForService:objectClass:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v0, OS_LOG_TYPE_ERROR, "Failed to get shared DB for service %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:(void *)a1 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = _SYObfuscate(a2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_2(&dword_1DF835000, v5, v6, "Error creating parent directory: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:(void *)a1 .cold.6(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = _SYObfuscate(a2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_2(&dword_1DF835000, v5, v6, "Error removing existing DB: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:(os_log_t)log .cold.8(uint64_t *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "Could not open database (%@): %{companionsync:sqlite3err}d", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:.cold.10()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v0, OS_LOG_TYPE_ERROR, "Database %@ open has failed after second try.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end