@interface NMSWindowData
- (BOOL)_openDBForceRecreate:(BOOL)a3;
- (BOOL)_syncTransaction:(BOOL)a3 block:(id)a4;
- (NMSWindowData)init;
- (NMSWindowData)initWithPath:(id)a3 logFacility:(__CFString *)a4;
- (NMSWindowData)initWithSharedDBForServiceName:(id)a3;
- (NSArray)expiredMessageIDs;
- (NSDate)dateOfNextMessageExpiry;
- (int)_getSchemaVersion;
- (unint64_t)countOfAllMessagesInFlight;
- (unint64_t)lengthOfAllMessagesInFlight;
- (unint64_t)removeAndReturnLengthOfMessageWithID:(id)a3;
- (unint64_t)removeAndReturnLengthOfMessagesWithIDs:(id)a3;
- (void)_ensureSchema;
- (void)_prepareStatements;
- (void)_withDB:(id)a3;
- (void)addMessageWithID:(id)a3 ofLength:(unint64_t)a4 timeoutTime:(double)a5;
- (void)dealloc;
@end

@implementation NMSWindowData

- (NSArray)expiredMessageIDs
{
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__NMSWindowData_expiredMessageIDs__block_invoke;
  v8[3] = &unk_1E86CABC0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(NMSWindowData *)self _withDB:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __34__NMSWindowData_expiredMessageIDs__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSince1970];
  sqlite3_bind_double(v2, 1, v4);

  while (1)
  {
    v5 = sqlite3_step(*(*(a1 + 32) + 80));
    if (v5 != 100)
    {
      break;
    }

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(*(*(a1 + 32) + 80), 0)}];
    [*(a1 + 40) addObject:v6];
  }

  if (v5 != 101)
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

- (NSDate)dateOfNextMessageExpiry
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__6;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__NMSWindowData_dateOfNextMessageExpiry__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(NMSWindowData *)self _withDB:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __40__NMSWindowData_dateOfNextMessageExpiry__block_invoke(uint64_t a1)
{
  if (sqlite3_step(*(*(a1 + 32) + 72)) == 100)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:{sqlite3_column_double(*(*(a1 + 32) + 72), 0)}];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(*(a1 + 32) + 72);

  return sqlite3_reset(v5);
}

- (NMSWindowData)init
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSTemporaryDirectory();
  v13[0] = v4;
  v5 = objc_opt_new();
  v6 = [v5 UUIDString];
  v13[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v3 pathWithComponents:v7];
  v9 = [v8 stringByAppendingPathExtension:@"sqlitedb"];

  v10 = [(NMSWindowData *)self initWithPath:v9 logFacility:@"com.apple.private.NanoMessagingService"];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NMSWindowData)initWithPath:(id)a3 logFacility:(__CFString *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = NMSWindowData;
  v7 = [(NMSWindowData *)&v17 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NMSWindow<%p> sync queue", v7];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    syncQ = v7->_syncQ;
    v7->_syncQ = v11;

    v13 = [v6 copy];
    path = v7->_path;
    v7->_path = v13;

    if (a4)
    {
      v7->_loggingFacility = CFStringCreateCopy(*MEMORY[0x1E695E480], a4);
    }

    if ([(NMSWindowData *)v7 _openDBForceRecreate:0])
    {
      v15 = v7;
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_FAULT))
      {
        [NMSWindowData initWithPath:logFacility:];
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NMSWindowData)initWithSharedDBForServiceName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NMSWindowData;
  v5 = [(NMSWindowData *)&v10 init];
  if (!v5)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v6 = [_SYSharedServiceDB sharedInstanceForServiceName:v4];
  sharedDB = v5->_sharedDB;
  v5->_sharedDB = v6;

  if (!v5->_sharedDB)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_FAULT))
    {
      [NMSWindowData initWithSharedDBForServiceName:];
    }

    goto LABEL_8;
  }

  [(NMSWindowData *)v5 _ensureSchema];
  [(NMSWindowData *)v5 _prepareStatements];
  v8 = v5;
LABEL_9:

  return v8;
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
    v6[2] = __24__NMSWindowData_dealloc__block_invoke;
    v6[3] = &unk_1E86C9ED8;
    v6[4] = self;
    [(NMSWindowData *)self _withDB:v6];
    db = self->_db;
    if (db)
    {
      sqlite3_close(db);
    }
  }

  v5.receiver = self;
  v5.super_class = NMSWindowData;
  [(NMSWindowData *)&v5 dealloc];
}

uint64_t __24__NMSWindowData_dealloc__block_invoke(uint64_t a1)
{
  sqlite3_finalize(*(*(a1 + 32) + 48));
  sqlite3_finalize(*(*(a1 + 32) + 56));
  sqlite3_finalize(*(*(a1 + 32) + 64));
  sqlite3_finalize(*(*(a1 + 32) + 72));
  sqlite3_finalize(*(*(a1 + 32) + 80));
  sqlite3_finalize(*(*(a1 + 32) + 88));
  sqlite3_finalize(*(*(a1 + 32) + 96));
  sqlite3_finalize(*(*(a1 + 32) + 104));
  sqlite3_finalize(*(*(a1 + 32) + 112));
  sqlite3_finalize(*(*(a1 + 32) + 120));
  v2 = *(*(a1 + 32) + 128);

  return sqlite3_finalize(v2);
}

- (void)_withDB:(id)a3
{
  v4 = a3;
  sharedDB = self->_sharedDB;
  if (sharedDB)
  {
    [(_SYSharedServiceDB *)sharedDB withDBRef:v4];
  }

  else
  {
    syncQ = self->_syncQ;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __25__NMSWindowData__withDB___block_invoke;
    v7[3] = &unk_1E86CAAB8;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(syncQ, v7);
  }
}

- (BOOL)_syncTransaction:(BOOL)a3 block:(id)a4
{
  v4 = a3;
  v6 = a4;
  sharedDB = self->_sharedDB;
  if (sharedDB)
  {
    if (v4)
    {
      v8 = [(_SYSharedServiceDB *)sharedDB inExclusiveTransaction:v6];
    }

    else
    {
      v8 = [(_SYSharedServiceDB *)sharedDB inTransaction:v6];
    }

    v10 = v8;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    syncQ = self->_syncQ;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__NMSWindowData__syncTransaction_block___block_invoke;
    v12[3] = &unk_1E86CAAE0;
    v15 = v4;
    v12[4] = self;
    v14 = &v16;
    v13 = v6;
    dispatch_sync(syncQ, v12);
    v10 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  return v10 & 1;
}

void __40__NMSWindowData__syncTransaction_block___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v3 = ExecuteSQL(v2, "BEGIN EXCLUSIVE TRANSACTION");
  }

  else
  {
    v3 = ExecuteSQL(v2, "BEGIN TRANSACTION");
  }

  if (v3)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (!os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = *(*(a1 + 32) + 32);
  v5 = (*(*(a1 + 40) + 16))();
  v6 = *(*(a1 + 32) + 32);
  if (v5)
  {
    v7 = ExecuteSQL(v6, "COMMIT TRANSACTION");
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = ExecuteSQL(v6, "ROLLBACK TRANSACTION");
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (!v7)
    {
      return;
    }
  }

  if (v7 != 101)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (!os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

LABEL_8:
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
LABEL_9:
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (int)_getSchemaVersion
{
  if (sqlite3_table_column_metadata(self->_db, 0, "meta", "tstamp", 0, 0, 0, 0, 0))
  {
    return 0;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_db, "SELECT COUNT(*) FROM meta", -1, &ppStmt, 0))
  {
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

  v5 = sqlite3_step(ppStmt);
  v3 = 0;
  if (v5 && v5 != 101)
  {
    if (v5 == 100)
    {
      v3 = sqlite3_column_int(ppStmt, 0);
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

      v3 = 0;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

- (BOOL)_openDBForceRecreate:(BOOL)a3
{
  v3 = a3;
  v35[3] = *MEMORY[0x1E69E9840];
  v33 = 1;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  p_path = &self->_path;
  v7 = [v5 fileExistsAtPath:self->_path isDirectory:&v33];

  if (v7)
  {
    v8 = v33 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = *p_path;
    v32 = 0;
    v11 = [v9 removeItemAtPath:v10 error:&v32];
    v12 = v32;

    if (!v11)
    {
      _LogInfoForPath(*p_path);
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v24 = qword_1EDE73430;
      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [(NMSWindowData *)p_path _openDBForceRecreate:v24, v12];
      }

      goto LABEL_44;
    }
  }

  else if (v7)
  {
    goto LABEL_15;
  }

  v13 = *MEMORY[0x1E696A328];
  v34[0] = *MEMORY[0x1E696A360];
  v34[1] = v13;
  v35[0] = @"mobile";
  v35[1] = @"mobile";
  v34[2] = *MEMORY[0x1E696A370];
  v35[2] = &unk_1F5AE2698;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = *p_path;
  v31 = 0;
  v17 = [v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:v14 error:&v31];
  v18 = v31;

  if ((v17 & 1) == 0)
  {
    _LogInfoForPath(*p_path);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73430;
    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [(NMSWindowData *)&self->_path _openDBForceRecreate:v19, v18];
    }
  }

LABEL_15:
  v12 = [*p_path stringByAppendingPathComponent:@"meta.db"];
  if (v3)
  {
    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v30 = 0;
    v21 = [v20 removeItemAtPath:v12 error:&v30];
    v22 = v30;

    if ((v21 & 1) == 0)
    {
      _LogInfoForPath(v12);
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v27 = qword_1EDE73430;
      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        [(NMSWindowData *)v12 _openDBForceRecreate:v27, v22];
      }

      goto LABEL_44;
    }
  }

  if (sqlite3_open_v2([v12 fileSystemRepresentation], &self->_db, 4194310, 0) || (v26 = self->_db) == 0)
  {
    _LogInfoForPath(v12);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [NMSWindowData _openDBForceRecreate:];
    }

    db = self->_db;
    if (db)
    {
      sqlite3_close(db);
      self->_db = 0;
    }

    if (!v3)
    {
      v25 = [(NMSWindowData *)self _openDBForceRecreate:1];
      goto LABEL_45;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
    {
      [NMSWindowData _openDBForceRecreate:];
    }

LABEL_44:
    v25 = 0;
    goto LABEL_45;
  }

  ExecuteSQL(v26, "PRAGMA journal_mode=WAL;");
  sqlite3_busy_timeout(self->_db, 60000);
  sqlite3_extended_result_codes(self->_db, 1);
  if (![(NMSWindowData *)self _getSchemaVersion])
  {
    ExecuteSQL(self->_db, "CREATE TABLE IF NOT EXISTS meta (version INTEGER PRIMARY KEY AUTOINCREMENT, tstamp TEXT)");
    ExecuteSQL(self->_db, "CREATE TABLE IF NOT EXISTS in_window (expires REAL, msg_id TEXT, num_bytes INTEGER)");
    ExecuteSQL(self->_db, "CREATE TABLE IF NOT EXISTS msg_queue (pk INTEGER PRIMARY KEY AUTOINCREMENT, uuid TEXT, tstamp REAL)");
    ExecuteSQL(self->_db, "CREATE UNIQUE INDEX sent_by_uuid ON in_window (msg_id ASC)");
    ExecuteSQL(self->_db, "CREATE INDEX expiry ON in_window (expires ASC, msg_id)");
    ExecuteSQL(self->_db, "INSERT INTO meta (tstamp) VALUES (datetime('now'))");
  }

  [(NMSWindowData *)self _prepareStatements];
  v25 = 1;
LABEL_45:

  v28 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)_ensureSchema
{
  sharedDB = self->_sharedDB;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(_SYSharedServiceDB *)sharedDB updateSchemaForClient:v4 usingBlock:&__block_literal_global_5];
}

uint64_t __30__NMSWindowData__ensureSchema__block_invoke(int a1, sqlite3 *a2, uint64_t a3)
{
  result = a3;
  if (!a3)
  {
    ExecuteSQL(a2, "CREATE TABLE IF NOT EXISTS in_window (expires REAL, msg_id TEXT, num_bytes INTEGER)");
    ExecuteSQL(a2, "CREATE TABLE IF NOT EXISTS msg_queue (pk INTEGER PRIMARY KEY AUTOINCREMENT, uuid TEXT, tstamp REAL)");
    ExecuteSQL(a2, "CREATE UNIQUE INDEX sent_by_uuid ON in_window (msg_id ASC)");
    ExecuteSQL(a2, "CREATE INDEX expiry ON in_window (expires ASC, msg_id)");
    return 1;
  }

  return result;
}

- (void)_prepareStatements
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__NMSWindowData__prepareStatements__block_invoke;
  v2[3] = &unk_1E86C9ED8;
  v2[4] = self;
  [(NMSWindowData *)self _withDB:v2];
}

void __35__NMSWindowData__prepareStatements__block_invoke(uint64_t a1, sqlite3 *db)
{
  if (sqlite3_prepare_v2(db, "INSERT INTO in_window (expires, msg_id, num_bytes) VALUES (?, ?, ?)", -1, (*(a1 + 32) + 48), 0))
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

  if (sqlite3_prepare_v2(db, "SELECT num_bytes FROM in_window WHERE msg_id=?", -1, (*(a1 + 32) + 56), 0))
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

  if (sqlite3_prepare_v2(db, "DELETE FROM in_window WHERE msg_id=?", -1, (*(a1 + 32) + 64), 0))
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

  if (sqlite3_prepare_v2(db, "SELECT expires FROM in_window ORDER BY expires LIMIT 1", -1, (*(a1 + 32) + 72), 0))
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

  if (sqlite3_prepare_v2(db, "SELECT msg_id FROM in_window WHERE expires < ?", -1, (*(a1 + 32) + 80), 0))
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

  if (sqlite3_prepare_v2(db, "SELECT SUM(num_bytes) FROM in_window", -1, (*(a1 + 32) + 88), 0))
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

  if (sqlite3_prepare_v2(db, "SELECT COUNT(*) FROM in_window", -1, (*(a1 + 32) + 96), 0))
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

  if (sqlite3_prepare_v2(db, "INSERT INTO msg_queue (uuid, tstamp) VALUES (?, ?)", -1, (*(a1 + 32) + 104), 0))
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

  if (sqlite3_prepare_v2(db, "SELECT uuid FROM msg_queue ORDER BY pk ASC LIMIT 1", -1, (*(a1 + 32) + 112), 0))
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

  if (sqlite3_prepare_v2(db, "DELETE FROM msg_queue WHERE pk=(SELECT min(pk) FROM msg_queue)", -1, (*(a1 + 32) + 120), 0))
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

  if (sqlite3_prepare_v2(db, "SELECT COUNT(*) FROM msg_queue", -1, (*(a1 + 32) + 128), 0))
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

uint64_t __34__NMSWindowData_removeAllMessages__block_invoke(int a1, sqlite3 *a2)
{
  v3 = ExecuteSQL(a2, "DELETE FROM in_window");
  if (v3 && v3 != 101)
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

  v4 = ExecuteSQL(a2, "DELETE FROM msg_queue");
  if (v4 && v4 != 101)
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

  return 1;
}

- (void)addMessageWithID:(id)a3 ofLength:(unint64_t)a4 timeoutTime:(double)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__NMSWindowData_addMessageWithID_ofLength_timeoutTime___block_invoke;
  v10[3] = &unk_1E86CAB48;
  v12 = a5;
  v10[4] = self;
  v11 = v8;
  v13 = a4;
  v9 = v8;
  [(NMSWindowData *)self _withDB:v10];
}

uint64_t __55__NMSWindowData_addMessageWithID_ofLength_timeoutTime___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*(a1 + 48)];
  [v3 timeIntervalSince1970];
  sqlite3_bind_double(v2, 1, v4);

  BindString(*(*(a1 + 32) + 48), 2, *(a1 + 40));
  sqlite3_bind_int64(*(*(a1 + 32) + 48), 3, *(a1 + 56));
  if (sqlite3_step(*(*(a1 + 32) + 48)) != 101)
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

  sqlite3_reset(*(*(a1 + 32) + 48));
  return sqlite3_clear_bindings(*(*(a1 + 32) + 48));
}

- (unint64_t)removeAndReturnLengthOfMessageWithID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__NMSWindowData_removeAndReturnLengthOfMessageWithID___block_invoke;
  v8[3] = &unk_1E86CAB70;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NMSWindowData *)self _syncTransaction:1 block:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __54__NMSWindowData_removeAndReturnLengthOfMessageWithID___block_invoke(uint64_t a1)
{
  BindString(*(*(a1 + 32) + 56), 1, *(a1 + 40));
  v2 = sqlite3_step(*(*(a1 + 32) + 56));
  if ((v2 - 102) > 0xFFFFFFFD)
  {
    if (v2 == 100)
    {
      *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int(*(*(a1 + 32) + 56), 0);
    }
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

  sqlite3_reset(*(*(a1 + 32) + 56));
  sqlite3_clear_bindings(*(*(a1 + 32) + 56));
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    BindString(*(*(a1 + 32) + 64), 1, *(a1 + 40));
    if (sqlite3_step(*(*(a1 + 32) + 64)) != 101)
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

  return 1;
}

- (unint64_t)removeAndReturnLengthOfMessagesWithIDs:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NMSWindowData_removeAndReturnLengthOfMessagesWithIDs___block_invoke;
  v8[3] = &unk_1E86CAB98;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(NMSWindowData *)self _syncTransaction:1 block:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __56__NMSWindowData_removeAndReturnLengthOfMessagesWithIDs___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v4 = [*(a1 + 32) componentsJoinedByString:{@"', '"}];
  ppStmt = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT SUM(num_bytes) FROM in_window WHERE msg_id IN ('%@')", v4];
  if (!sqlite3_prepare_v2(a2, [v5 UTF8String], -1, &ppStmt, 0))
  {
    v6 = sqlite3_step(ppStmt);
    if ((v6 - 102) <= 0xFFFFFFFD)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    if (v6 == 100)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(ppStmt, 0);
    }

    sqlite3_reset(ppStmt);
    sqlite3_clear_bindings(ppStmt);
    sqlite3_finalize(ppStmt);
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM in_window WHERE msg_id IN ('%@')", v4];

    v5 = v7;
    if (sqlite3_prepare_v2(a2, [v7 UTF8String], -1, &ppStmt, 0))
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (!os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (sqlite3_step(ppStmt) == 101)
      {
        sqlite3_reset(ppStmt);
        sqlite3_clear_bindings(ppStmt);
        sqlite3_finalize(ppStmt);
        goto LABEL_25;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (!os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        *(*(*(a1 + 40) + 8) + 24) = 0;
        goto LABEL_25;
      }
    }

    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
    goto LABEL_24;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
LABEL_5:
    __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2();
  }

LABEL_25:

  return 1;
}

- (unint64_t)lengthOfAllMessagesInFlight
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__NMSWindowData_lengthOfAllMessagesInFlight__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(NMSWindowData *)self _withDB:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__NMSWindowData_lengthOfAllMessagesInFlight__block_invoke(uint64_t a1)
{
  if (sqlite3_step(*(*(a1 + 32) + 88)) == 100)
  {
    v2 = sqlite3_column_int64(*(*(a1 + 32) + 88), 0);
    *(*(*(a1 + 40) + 8) + 24) = v2 & ~(v2 >> 63);
  }

  v3 = *(*(a1 + 32) + 88);

  return sqlite3_reset(v3);
}

- (unint64_t)countOfAllMessagesInFlight
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__NMSWindowData_countOfAllMessagesInFlight__block_invoke;
  v4[3] = &unk_1E86CABE8;
  v4[4] = self;
  v4[5] = &v5;
  [(NMSWindowData *)self _withDB:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __43__NMSWindowData_countOfAllMessagesInFlight__block_invoke(uint64_t a1)
{
  if (sqlite3_step(*(*(a1 + 32) + 96)) == 100)
  {
    *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(*(*(a1 + 32) + 96), 0);
  }

  v2 = *(*(a1 + 32) + 96);

  return sqlite3_reset(v2);
}

- (void)initWithPath:logFacility:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_fault_impl(&dword_1DF835000, v0, OS_LOG_TYPE_FAULT, "NMSWindowData: unable to create db file via path '%@', returning nil from -init, message windowing will FAIL.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithSharedDBForServiceName:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_fault_impl(&dword_1DF835000, v0, OS_LOG_TYPE_FAULT, "NMSWindowData: unable to connect to shared DB for service %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __40__NMSWindowData__syncTransaction_block___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF835000, v0, v1, "SQL Error: %{companionsync:sqlite3err}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:(void *)a3 .cold.2(uint64_t *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = _SYObfuscate(a3);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_2(&dword_1DF835000, v7, v8, "Unable to remove obstructing file at path '%@'. Error = %{public}@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:(void *)a3 .cold.4(uint64_t *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = _SYObfuscate(a3);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_2(&dword_1DF835000, v7, v8, "Failed to create parent folder for messaging transmission window data at '%@'. Error = %{public}@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:(void *)a3 .cold.6(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _SYObfuscate(a3);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(&dword_1DF835000, v6, v7, "NMSWindowData: Failed to remove un-openable DB file at '%@': %{public}@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:.cold.8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_1DF835000, v1, OS_LOG_TYPE_ERROR, "Could not open database: (%@): %{companionsync:sqlite3err}d", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_openDBForceRecreate:.cold.10()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v0, OS_LOG_TYPE_ERROR, "Database '%@' failed to open after second try.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end