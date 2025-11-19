@interface _SYSharedServiceDB
+ (id)sharedInstanceForServiceName:(id)a3;
+ (void)_releaseSharedInstanceForServiceName:(id)a3;
+ (void)initialize;
+ (void)pairingStorePathWasReset;
- (BOOL)_LOCKED_createOrOpenDBForServiceName:(id)a3 error:(id *)a4;
- (BOOL)_LOCKED_ensureDBExists;
- (BOOL)_LOCKED_hasSchemaVersionForClient:(id)a3;
- (BOOL)_addSkipBackupAttributeToItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)_ensureParentExists:(id)a3 error:(id *)a4;
- (BOOL)_runTransactionBlock:(id)a3 exclusive:(BOOL)a4;
- (NSString)_dbPath;
- (_SYSharedServiceDB)initWithServiceName:(id)a3;
- (int64_t)_LOCKED_getClientVersion:(id)a3;
- (int64_t)schemaVersionForClient:(id)a3;
- (void)_LOCKED_ensureDBExists;
- (void)_LOCKED_ensureSchemaVersionsTableInDB:(sqlite3 *)a3;
- (void)_LOCKED_runSchemaUpdate:(id)a3 forClientNamed:(id)a4;
- (void)_LOCKED_setVersion:(int64_t)a3 forClient:(id)a4;
- (void)_ensureSchemaVersionsTable;
- (void)dealloc;
- (void)setSchemaVersion:(int64_t)a3 forClient:(id)a4;
- (void)updateSchemaForClient:(id)a3 usingBlock:(id)a4;
- (void)withDBRef:(id)a3;
@end

@implementation _SYSharedServiceDB

- (BOOL)_LOCKED_ensureDBExists
{
  if (self->_db)
  {
    return 1;
  }

  p_name = &self->_name;
  name = self->_name;
  v10 = 0;
  v2 = [(_SYSharedServiceDB *)self _LOCKED_createOrOpenDBForServiceName:name error:&v10];
  v6 = v10;
  if (v2)
  {
    schemaSetupCallbacks = self->_schemaSetupCallbacks;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44___SYSharedServiceDB__LOCKED_ensureDBExists__block_invoke;
    v9[3] = &unk_1E86C9F00;
    v9[4] = self;
    [(NSMutableDictionary *)schemaSetupCallbacks enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [(_SYSharedServiceDB *)p_name _LOCKED_ensureDBExists];
    }
  }

  return v2;
}

- (void)_LOCKED_ensureDBExists
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v2 = [v3 addObserverForName:@"SYDeviceTargetedNewDeviceNotification" object:0 queue:0 usingBlock:&__block_literal_global_0];
  }
}

+ (void)pairingStorePathWasReset
{
  v3 = GetServiceInstanceTable();
  os_unfair_lock_lock(&__tableLock);
  v2 = objc_autoreleasePoolPush();
  [v3 removeAllObjects];
  objc_autoreleasePoolPop(v2);
  os_unfair_lock_unlock(&__tableLock);
}

+ (id)sharedInstanceForServiceName:(id)a3
{
  v3 = a3;
  v4 = GetServiceInstanceTable();
  os_unfair_lock_lock(&__tableLock);
  v5 = [v4 objectForKey:v3];
  if (!v5)
  {
    v5 = [[_SYWeakServiceDBRef alloc] initWithServiceName:v3];
    if (v5)
    {
      [v4 setObject:v5 forKey:v3];
    }
  }

  os_unfair_lock_unlock(&__tableLock);
  v6 = [(_SYWeakServiceDBRef *)v5 db];

  return v6;
}

- (_SYSharedServiceDB)initWithServiceName:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _SYSharedServiceDB;
  v6 = [(_SYSharedServiceDB *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_name, a3);
    v8 = objc_opt_new();
    schemaSetupCallbacks = v7->_schemaSetupCallbacks;
    v7->_schemaSetupCallbacks = v8;

    v10 = v7;
  }

  return v7;
}

- (void)dealloc
{
  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
    self->_db = 0;
  }

  v4.receiver = self;
  v4.super_class = _SYSharedServiceDB;
  [(_SYSharedServiceDB *)&v4 dealloc];
}

- (BOOL)_addSkipBackupAttributeToItemAtPath:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];
  LOBYTE(a4) = [v5 setResourceValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695DB80] error:a4];

  return a4;
}

- (BOOL)_ensureParentExists:(id)a3 error:(id *)a4
{
  v24[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *MEMORY[0x1E696A328];
  v23[0] = *MEMORY[0x1E696A360];
  v23[1] = v7;
  v24[0] = @"mobile";
  v24[1] = @"mobile";
  v23[2] = *MEMORY[0x1E696A370];
  v24[2] = &unk_1F5AE2650;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v9 = 0;
  v10 = *MEMORY[0x1E696A250];
  while (1)
  {

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [v6 stringByDeletingLastPathComponent];
    v22 = 0;
    v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:v8 error:&v22];
    v9 = v22;

    if (v13)
    {
LABEL_5:
      if (!v9)
      {
        goto LABEL_9;
      }

LABEL_6:
      if (a4)
      {
        v16 = v9;
        *a4 = v9;
      }

      goto LABEL_14;
    }

    v14 = [v9 domain];
    if (![v14 isEqualToString:v10])
    {
      break;
    }

    v15 = [v9 code];

    if (v15 != 516)
    {
      goto LABEL_5;
    }
  }

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_9:
  v17 = [v6 stringByDeletingLastPathComponent];
  v18 = [(_SYSharedServiceDB *)self _addSkipBackupAttributeToItemAtPath:v17 error:a4];

  if (!v18)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73430;
    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [_SYSharedServiceDB _ensureParentExists:a4 error:v19];
    }
  }

LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

- (BOOL)_LOCKED_hasSchemaVersionForClient:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(self->_db, "SELECT count(*) FROM _clients WHERE name=?", -1, &ppStmt, 0);
  if (v5)
  {
    if (v5 != 1)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [_SYSharedServiceDB _LOCKED_hasSchemaVersionForClient:];
      }
    }

    v6 = 0;
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [v4 UTF8String], -1, 0);
    v7 = sqlite3_step(ppStmt);
    v6 = 0;
    if (v7 && v7 != 101)
    {
      if (v7 == 100)
      {
        v6 = sqlite3_column_int(ppStmt, 0) != 0;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          [_SYSharedServiceDB _LOCKED_hasSchemaVersionForClient:];
        }

        v6 = 0;
      }
    }

    sqlite3_finalize(ppStmt);
  }

  return v6;
}

- (int64_t)_LOCKED_getClientVersion:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(self->_db, "SELECT schema_version FROM _clients WHERE name=?", -1, &ppStmt, 0);
  if (v5)
  {
    if (v5 != 1)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [_SYSharedServiceDB _LOCKED_getClientVersion:];
      }
    }

    v6 = 0;
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [v4 UTF8String], -1, 0);
    v7 = sqlite3_step(ppStmt);
    v6 = 0;
    if (v7 && v7 != 101)
    {
      if (v7 == 100)
      {
        v6 = sqlite3_column_int(ppStmt, 0);
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          [_SYSharedServiceDB _LOCKED_getClientVersion:];
        }

        v6 = 0;
      }
    }

    sqlite3_finalize(ppStmt);
  }

  return v6;
}

- (void)_LOCKED_setVersion:(int64_t)a3 forClient:(id)a4
{
  v4 = a3;
  v6 = a4;
  ppStmt = 0;
  v7 = [(_SYSharedServiceDB *)self _LOCKED_hasSchemaVersionForClient:v6];
  db = self->_db;
  if (v7)
  {
    v9 = "UPDATE _clients SET schema_version=?, tstamp=datetime('now') WHERE name=?";
  }

  else
  {
    v9 = "INSERT INTO _clients (schema_version, name, tstamp) VALUES (?, ?, datetime('now'))";
  }

  if (sqlite3_prepare_v2(self->_db, v9, -1, &ppStmt, 0))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [_SYSharedServiceDB _LOCKED_setVersion:forClient:];
    }
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, v4);
    sqlite3_bind_text(ppStmt, 2, [v6 UTF8String], -1, 0);
    v10 = sqlite3_step(ppStmt);
    if (v10 && v10 != 101)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [_SYSharedServiceDB _LOCKED_setVersion:forClient:];
      }
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)_LOCKED_ensureSchemaVersionsTableInDB:(sqlite3 *)a3
{
  v5 = [(_SYSharedServiceDB *)self _LOCKED_getClientVersion:@"self"];
  if (!v5)
  {
    sqlite3_exec(a3, "CREATE TABLE IF NOT EXISTS _clients (name TEXT, schema_version TEXT, tstamp TEXT)", 0, 0, 0);
    v5 = 1;
  }

  [(_SYSharedServiceDB *)self _LOCKED_setVersion:v5 forClient:@"self"];
}

- (void)_ensureSchemaVersionsTable
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48___SYSharedServiceDB__ensureSchemaVersionsTable__block_invoke;
  v2[3] = &unk_1E86C9ED8;
  v2[4] = self;
  [(_SYSharedServiceDB *)self withDBRef:v2];
}

- (BOOL)_LOCKED_createOrOpenDBForServiceName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = SYServiceDataPath();
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [v8 stringByAppendingPathExtension:@"db"];

  if (![(_SYSharedServiceDB *)self _ensureParentExists:v9 error:a4])
  {
    goto LABEL_11;
  }

  v10 = sqlite3_open_v2([v9 fileSystemRepresentation], &self->_db, 4194310, 0);
  if (!v10)
  {
    db = self->_db;
    if (db)
    {
      sqlite3_exec(db, "PRAGMA journal_mode=WAL;", 0, 0, 0);
      sqlite3_busy_timeout(self->_db, 10000);
      v13 = 1;
      sqlite3_extended_result_codes(self->_db, 1);
      sqlite3_wal_checkpoint_v2(self->_db, 0, 3, 0, 0);
      sqlite3_wal_hook(self->_db, _SYAutoTruncateHook, 0);
      [(_SYSharedServiceDB *)self _LOCKED_ensureSchemaVersionsTableInDB:self->_db];
      goto LABEL_12;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73430;
  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    [_SYSharedServiceDB _LOCKED_createOrOpenDBForServiceName:v10 error:v11];
  }

  v12 = self->_db;
  if (v12)
  {
    sqlite3_close(v12);
    self->_db = 0;
  }

  if (a4)
  {
    NSErrorFromSQLiteError(v10);
    *a4 = v13 = 0;
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (int64_t)schemaVersionForClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = os_transaction_create();
  if ([(_SYSharedServiceDB *)self _LOCKED_ensureDBExists])
  {
    v6 = [(_SYSharedServiceDB *)self _LOCKED_getClientVersion:v4];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)setSchemaVersion:(int64_t)a3 forClient:(id)a4
{
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = os_transaction_create();
  if ([(_SYSharedServiceDB *)self _LOCKED_ensureDBExists])
  {
    [(_SYSharedServiceDB *)self _LOCKED_setVersion:a3 forClient:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_LOCKED_runSchemaUpdate:(id)a3 forClientNamed:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = os_transaction_create();
  v8 = [(_SYSharedServiceDB *)self _LOCKED_getClientVersion:v6];
  v9 = v10[2](v10, self->_db, v8);
  if (v9 != v8)
  {
    [(_SYSharedServiceDB *)self _LOCKED_setVersion:v9 forClient:v6];
  }
}

- (void)updateSchemaForClient:(id)a3 usingBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = os_transaction_create();
  if (self->_db)
  {
    [(_SYSharedServiceDB *)self _LOCKED_runSchemaUpdate:v6 forClientNamed:v9];
  }

  else
  {
    v8 = MEMORY[0x1E12E11B0](v6);
    [(NSMutableDictionary *)self->_schemaSetupCallbacks setObject:v8 forKeyedSubscript:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)withDBRef:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = os_transaction_create();
  if ([(_SYSharedServiceDB *)self _LOCKED_ensureDBExists])
  {
    v5[2](v5, self->_db);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_runTransactionBlock:(id)a3 exclusive:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = os_transaction_create();
  if (![(_SYSharedServiceDB *)self _LOCKED_ensureDBExists])
  {
    os_unfair_lock_unlock(&self->_lock);

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  errmsg = 0;
  if (v4)
  {
    v8 = "BEGIN EXCLUSIVE TRANSACTION";
  }

  else
  {
    v8 = "BEGIN TRANSACTION";
  }

  v9 = sqlite3_exec(self->_db, v8, 0, 0, &errmsg);
  v10 = v9 == 0;
  if (v9)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [_SYSharedServiceDB _runTransactionBlock:? exclusive:?];
    }

    if (errmsg)
    {
      sqlite3_free(errmsg);
      errmsg = 0;
    }

    goto LABEL_12;
  }

  if (!v6[2](v6, self->_db))
  {
LABEL_23:
    v15 = sqlite3_exec(self->_db, "ROLLBACK TRANSACTION", 0, 0, &errmsg);
    if (!v15)
    {
      goto LABEL_29;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v16 = qword_1EDE73430;
    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      v17 = "non-exclusive";
      if (v4)
      {
        v17 = "exclusive";
      }

      *buf = 136315650;
      v23 = v17;
      if (errmsg)
      {
        v18 = errmsg;
      }

      else
      {
        v18 = "[nil]";
      }

      v24 = 1024;
      v25 = v15;
      v26 = 2082;
      v27 = v18;
      _os_log_error_impl(&dword_1DF835000, v16, OS_LOG_TYPE_ERROR, "Failed to rollback %s transaction: %{companionsync:sqlite3err}d (%{public}s)", buf, 0x1Cu);
    }

    if (errmsg)
    {
      sqlite3_free(errmsg);
      errmsg = 0;
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
LABEL_29:
      os_unfair_lock_unlock(&self->_lock);
    }

    goto LABEL_14;
  }

  v13 = sqlite3_exec(self->_db, "COMMIT TRANSACTION", 0, 0, &errmsg);
  if (v13)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = qword_1EDE73430;
    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      v19 = "non-exclusive";
      if (v4)
      {
        v19 = "exclusive";
      }

      *buf = 136315650;
      v23 = v19;
      if (errmsg)
      {
        v20 = errmsg;
      }

      else
      {
        v20 = "[nil]";
      }

      v24 = 1024;
      v25 = v13;
      v26 = 2082;
      v27 = v20;
      _os_log_error_impl(&dword_1DF835000, v14, OS_LOG_TYPE_ERROR, "Failed to commit %s transaction: %{companionsync:sqlite3err}d (%{public}s)", buf, 0x1Cu);
    }

    if (errmsg)
    {
      sqlite3_free(errmsg);
      errmsg = 0;
    }

    goto LABEL_23;
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_lock);

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (void)_releaseSharedInstanceForServiceName:(id)a3
{
  v5 = a3;
  v3 = GetServiceInstanceTable();
  os_unfair_lock_lock(&__tableLock);
  v4 = objc_autoreleasePoolPush();
  [v3 removeObjectForKey:v5];
  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&__tableLock);
}

- (NSString)_dbPath
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46___SYSharedServiceDB_UnitTestHelpers___dbPath__block_invoke;
  v4[3] = &unk_1E86C9F28;
  v4[4] = &v5;
  [(_SYSharedServiceDB *)self withDBRef:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_ensureParentExists:(void *)a1 error:(void *)a2 .cold.2(void **a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v4 = _SYObfuscate(v2);
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1DF835000, v3, OS_LOG_TYPE_ERROR, "Failed to set do-not-backup property on persistent data folder: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_LOCKED_hasSchemaVersionForClient:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_LOCKED_getClientVersion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_LOCKED_setVersion:forClient:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_LOCKED_createOrOpenDBForServiceName:(int)a1 error:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1DF835000, a2, OS_LOG_TYPE_ERROR, "Failed to open SQLite DB: %{companionsync:sqlite3err}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_runTransactionBlock:(void *)a1 exclusive:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

@end