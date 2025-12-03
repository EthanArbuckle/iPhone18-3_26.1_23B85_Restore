@interface NNMKSQLiteConnection
- (BOOL)_openDatabaseWithPath:(id)path errorCode:(int *)code;
- (BOOL)beginTransaction;
- (BOOL)commitTransaction;
- (BOOL)rollbackTransaction;
- (BOOL)tableExists:(id)exists inDatabase:(id)database;
- (NNMKSQLiteConnection)initWithPath:(id)path errorCode:(int *)code;
- (id)_lastErrorMessage;
- (id)lastErrorMessage;
- (int)_executeSQL:(id)l;
- (int)_lastErrorCode;
- (int)_runRetryingIfNeeded:(id)needed;
- (int)_stepPreparedStatement:(sqlite3_stmt *)statement;
- (int)executeSQL:(id)l;
- (int)lastErrorCode;
- (int)stepPreparedStatement:(sqlite3_stmt *)statement;
- (sqlite3_stmt)_preparedStatementForPattern:(id)pattern cacheStatement:(BOOL)statement;
- (sqlite3_stmt)preparedStatementForPattern:(id)pattern cacheStatement:(BOOL)statement;
- (void)_closeDatabase;
- (void)dealloc;
@end

@implementation NNMKSQLiteConnection

- (NNMKSQLiteConnection)initWithPath:(id)path errorCode:(int *)code
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = NNMKSQLiteConnection;
  v8 = [(NNMKSQLiteConnection *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_isInTransaction = 0;
    v10 = dispatch_queue_create("com.apple.nanomail.dbQueue", 0);
    dbQueue = v9->_dbQueue;
    v9->_dbQueue = v10;

    objc_storeStrong(&v9->_databasePath, path);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cachedPreparedStatementsBySQLPattern = v9->_cachedPreparedStatementsBySQLPattern;
    v9->_cachedPreparedStatementsBySQLPattern = dictionary;

    v14 = v9->_dbQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__NNMKSQLiteConnection_initWithPath_errorCode___block_invoke;
    block[3] = &unk_279936218;
    v17 = v9;
    v18 = pathCopy;
    codeCopy = code;
    dispatch_sync(v14, block);
  }

  return v9;
}

- (void)dealloc
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__NNMKSQLiteConnection_dealloc__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_sync(dbQueue, block);
  v4.receiver = self;
  v4.super_class = NNMKSQLiteConnection;
  [(NNMKSQLiteConnection *)&v4 dealloc];
}

- (sqlite3_stmt)preparedStatementForPattern:(id)pattern cacheStatement:(BOOL)statement
{
  patternCopy = pattern;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__NNMKSQLiteConnection_preparedStatementForPattern_cacheStatement___block_invoke;
  v11[3] = &unk_279936240;
  v12 = patternCopy;
  v13 = &v15;
  v11[4] = self;
  statementCopy = statement;
  v8 = patternCopy;
  dispatch_sync(dbQueue, v11);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __67__NNMKSQLiteConnection_preparedStatementForPattern_cacheStatement___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _preparedStatementForPattern:*(a1 + 40) cacheStatement:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)stepPreparedStatement:(sqlite3_stmt *)statement
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NNMKSQLiteConnection_stepPreparedStatement___block_invoke;
  block[3] = &unk_279936268;
  block[4] = self;
  block[5] = &v7;
  block[6] = statement;
  dispatch_sync(dbQueue, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __46__NNMKSQLiteConnection_stepPreparedStatement___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _stepPreparedStatement:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)executeSQL:(id)l
{
  lCopy = l;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NNMKSQLiteConnection_executeSQL___block_invoke;
  block[3] = &unk_279936290;
  v9 = lCopy;
  v10 = &v11;
  block[4] = self;
  v6 = lCopy;
  dispatch_sync(dbQueue, block);
  LODWORD(dbQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return dbQueue;
}

uint64_t __35__NNMKSQLiteConnection_executeSQL___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _executeSQL:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)beginTransaction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NNMKSQLiteConnection_beginTransaction__block_invoke;
  v5[3] = &unk_2799362B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __40__NNMKSQLiteConnection_beginTransaction__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(a1 + 32) _preparedStatementForPattern:@"begin exclusive transaction" cacheStatement:1];
  v3 = [*v1 _stepPreparedStatement:v2];
  sqlite3_reset(v2);
  *(*(*(v1 + 8) + 8) + 24) = v3 == 101;
  if (*(*(*(v1 + 8) + 8) + 24) == 1)
  {
    *(*v1 + 8) = 1;
  }

  else
  {
    v4 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __40__NNMKSQLiteConnection_beginTransaction__block_invoke_cold_1(v1, v4);
    }
  }
}

- (BOOL)commitTransaction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__NNMKSQLiteConnection_commitTransaction__block_invoke;
  v5[3] = &unk_2799362B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__NNMKSQLiteConnection_commitTransaction__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(a1 + 32) _preparedStatementForPattern:@"commit transaction" cacheStatement:1];
  v3 = [*v1 _stepPreparedStatement:v2];
  sqlite3_reset(v2);
  *(*(*(v1 + 8) + 8) + 24) = v3 == 101;
  if (*(*(*(v1 + 8) + 8) + 24) == 1)
  {
    *(*v1 + 8) = 0;
  }

  else
  {
    v4 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __41__NNMKSQLiteConnection_commitTransaction__block_invoke_cold_1(v1, v4);
    }
  }
}

- (BOOL)rollbackTransaction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NNMKSQLiteConnection_rollbackTransaction__block_invoke;
  v5[3] = &unk_2799362B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__NNMKSQLiteConnection_rollbackTransaction__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(a1 + 32) _preparedStatementForPattern:@"rollback transaction" cacheStatement:1];
  v3 = [*v1 _stepPreparedStatement:v2];
  sqlite3_reset(v2);
  *(*(*(v1 + 8) + 8) + 24) = v3 == 101;
  if (*(*(*(v1 + 8) + 8) + 24) == 1)
  {
    *(*v1 + 8) = 0;
  }

  else
  {
    v4 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __43__NNMKSQLiteConnection_rollbackTransaction__block_invoke_cold_1(v1, v4);
    }
  }
}

- (int)lastErrorCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__NNMKSQLiteConnection_lastErrorCode__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__NNMKSQLiteConnection_lastErrorCode__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lastErrorCode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)lastErrorMessage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NNMKSQLiteConnection_lastErrorMessage__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__NNMKSQLiteConnection_lastErrorMessage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lastErrorMessage];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)tableExists:(id)exists inDatabase:(id)database
{
  existsCopy = exists;
  databaseCopy = database;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  dbQueue = self->_dbQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__NNMKSQLiteConnection_tableExists_inDatabase___block_invoke;
  v12[3] = &unk_279936308;
  v13 = databaseCopy;
  selfCopy = self;
  v15 = existsCopy;
  v16 = &v17;
  v9 = existsCopy;
  v10 = databaseCopy;
  dispatch_sync(dbQueue, v12);
  LOBYTE(existsCopy) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return existsCopy;
}

void __47__NNMKSQLiteConnection_tableExists_inDatabase___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 stringByAppendingString:@"."];
    v7 = [v2 stringWithFormat:@"select [sql] from %@sqlite_master where [type] = 'table' and lower(name) = ?", v4];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"select [sql] from %@sqlite_master where [type] = 'table' and lower(name) = ?", &stru_286C69F68];
  }

  v5 = [*(a1 + 40) _preparedStatementForPattern:v7 cacheStatement:1];
  v6 = [*(a1 + 48) lowercaseString];
  sqlite3_bind_text(v5, 1, [v6 UTF8String], -1, 0);

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) _stepPreparedStatement:v5] == 100;
  sqlite3_reset(v5);
}

- (BOOL)_openDatabaseWithPath:(id)path errorCode:(int *)code
{
  *&v29[13] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

  if ((v9 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = 0;
    v11 = [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
    pathCopy = v25;

    if ((v11 & 1) == 0)
    {
      v18 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [(NNMKSQLiteConnection *)stringByDeletingLastPathComponent _openDatabaseWithPath:pathCopy errorCode:v18];
      }

      v17 = 0;
      goto LABEL_20;
    }
  }

  pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"file:%@", pathCopy];
  v13 = sqlite3_open_v2([pathCopy UTF8String], &self->_db, 4194310, 0);
  if (v13)
  {
    goto LABEL_10;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __56__NNMKSQLiteConnection__openDatabaseWithPath_errorCode___block_invoke;
  v24[3] = &unk_279936330;
  v24[4] = self;
  v13 = [(NNMKSQLiteConnection *)self _runRetryingIfNeeded:v24];
  if (v13 || (v13 = [(NNMKSQLiteConnection *)self _executeSQL:@"PRAGMA page_size = 4096;"]) != 0 || (v13 = [(NNMKSQLiteConnection *)self _executeSQL:@"PRAGMA auto_vacuum = 1;"]) != 0 || (v13 = [(NNMKSQLiteConnection *)self _executeSQL:@"PRAGMA cache_size = 100;"]) != 0 || (v13 = [(NNMKSQLiteConnection *)self _executeSQL:@"PRAGMA journal_mode = WAL;"]) != 0)
  {
LABEL_10:
    v14 = v13;
    v15 = qword_28144D620;
    v16 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_FAULT);
    if (v14 == 14)
    {
      if (v16)
      {
        [(NNMKSQLiteConnection *)pathCopy _openDatabaseWithPath:v15 errorCode:self];
      }
    }

    else if (v16)
    {
      v21 = v15;
      _lastErrorMessage = [(NNMKSQLiteConnection *)self _lastErrorMessage];
      *buf = 138543874;
      v27 = pathCopy;
      v28 = 1024;
      *v29 = v14;
      v29[2] = 2114;
      *&v29[3] = _lastErrorMessage;
      _os_log_fault_impl(&dword_25B19F000, v21, OS_LOG_TYPE_FAULT, "Error opening database (Path: %{public}@, Error Code: %d, Error Message: %{public}@). Closing... and retrying", buf, 0x1Cu);
    }

    [(NNMKSQLiteConnection *)self _closeDatabase];
    v17 = 0;
    if (code)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v23 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = pathCopy;
      v28 = 2114;
      *v29 = self;
      _os_log_impl(&dword_25B19F000, v23, OS_LOG_TYPE_DEFAULT, "Database opened (%{public}@, %{public}@).", buf, 0x16u);
    }

    v17 = 1;
    if (code)
    {
      v14 = 0;
LABEL_16:
      *code = v14;
    }
  }

LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __56__NNMKSQLiteConnection__openDatabaseWithPath_errorCode___block_invoke(uint64_t a1, _DWORD *a2)
{
  result = sqlite3_busy_timeout(*(*(a1 + 32) + 16), 0x7FFFFFFF);
  *a2 = result;
  return result;
}

- (void)_closeDatabase
{
  v11 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  }

  OUTLINED_FUNCTION_0_0(&dword_25B19F000, a2, a3, "Error closing database. File no longer exists. (Path: %{public}@).", a5, a6, a7, a8, 2u);
  if ((self & 1) == 0)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __38__NNMKSQLiteConnection__closeDatabase__block_invoke(uint64_t a1, _DWORD *a2)
{
  result = sqlite3_close_v2(*(*(a1 + 32) + 16));
  *a2 = result;
  return result;
}

- (sqlite3_stmt)_preparedStatementForPattern:(id)pattern cacheStatement:(BOOL)statement
{
  statementCopy = statement;
  v24 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  if (self->_db)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v7 = [(NSMutableDictionary *)self->_cachedPreparedStatementsBySQLPattern objectForKey:patternCopy];
    pointerValue = [v7 pointerValue];

    v22 = pointerValue;
    v9 = v20[3];
    if (v9)
    {
LABEL_13:
      _Block_object_dispose(&v19, 8);
      goto LABEL_14;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__NNMKSQLiteConnection__preparedStatementForPattern_cacheStatement___block_invoke;
    v16[3] = &unk_279936358;
    v16[4] = self;
    v10 = patternCopy;
    v17 = v10;
    v18 = &v19;
    if ([(NNMKSQLiteConnection *)self _runRetryingIfNeeded:v16])
    {
      sqlite3_finalize(v20[3]);
      v20[3] = 0;
      v11 = qword_28144D620;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _lastErrorMessage = [(NNMKSQLiteConnection *)self _lastErrorMessage];
        [(NNMKSQLiteConnection *)v10 _preparedStatementForPattern:_lastErrorMessage cacheStatement:buf, v11];
      }
    }

    else
    {
      if (!statementCopy)
      {
LABEL_12:

        v9 = v20[3];
        goto LABEL_13;
      }

      cachedPreparedStatementsBySQLPattern = self->_cachedPreparedStatementsBySQLPattern;
      v11 = [MEMORY[0x277CCAE60] valueWithPointer:v20[3]];
      [(NSMutableDictionary *)cachedPreparedStatementsBySQLPattern setObject:v11 forKey:v10];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSQLiteConnection _preparedStatementForPattern:cacheStatement:];
  }

  v9 = 0;
LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __68__NNMKSQLiteConnection__preparedStatementForPattern_cacheStatement___block_invoke(uint64_t a1, _DWORD *a2)
{
  result = sqlite3_prepare_v2(*(*(a1 + 32) + 16), [*(a1 + 40) UTF8String], -1, (*(*(a1 + 48) + 8) + 24), 0);
  *a2 = result;
  return result;
}

- (int)_stepPreparedStatement:(sqlite3_stmt *)statement
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NNMKSQLiteConnection__stepPreparedStatement___block_invoke;
  v4[3] = &__block_descriptor_40_e9_v16__0_i8l;
  v4[4] = statement;
  return [(NNMKSQLiteConnection *)self _runRetryingIfNeeded:v4];
}

uint64_t __47__NNMKSQLiteConnection__stepPreparedStatement___block_invoke(uint64_t a1, _DWORD *a2)
{
  result = sqlite3_step(*(a1 + 32));
  *a2 = result;
  return result;
}

- (int)_executeSQL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (self->_db)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__NNMKSQLiteConnection__executeSQL___block_invoke;
    v16[3] = &unk_2799363A0;
    v16[4] = self;
    v17 = lCopy;
    v6 = [(NNMKSQLiteConnection *)self _runRetryingIfNeeded:v16];
  }

  else
  {
    v7 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSQLiteConnection *)v7 _executeSQL:v8, v9, v10, v11, v12, v13, v14];
    }

    v6 = 1;
  }

  return v6;
}

uint64_t __36__NNMKSQLiteConnection__executeSQL___block_invoke(uint64_t a1, _DWORD *a2)
{
  result = sqlite3_exec(*(*(a1 + 32) + 16), [*(a1 + 40) UTF8String], 0, 0, 0);
  *a2 = result;
  return result;
}

- (int)_lastErrorCode
{
  db = self->_db;
  if (db)
  {

    return sqlite3_errcode(db);
  }

  else
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSQLiteConnection *)v5 _lastErrorCode:v6];
    }

    return 1;
  }
}

- (id)_lastErrorMessage
{
  db = self->_db;
  if (db)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_errmsg(db)];
  }

  else
  {
    v4 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSQLiteConnection *)v4 _lastErrorMessage:v5];
    }

    v3 = 0;
  }

  return v3;
}

- (int)_runRetryingIfNeeded:(id)needed
{
  neededCopy = needed;
  v14 = 0;
  neededCopy[2](neededCopy, &v14);
  v4 = v14;
  if ((v14 - 5) <= 2)
  {
    v5 = 0;
    v6 = 20;
    do
    {
      v7 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Database busy/locked for running statement or Low memory condition. Will re-try...", buf, 2u);
      }

      usleep(v6);
      if (v14 == 7 && v5 >= 8)
      {
        v9 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
        {
          [(NNMKSQLiteConnection *)&v11 _runRetryingIfNeeded:v12, v9];
        }
      }

      v6 *= 5;
      neededCopy[2](neededCopy, &v14);
      v4 = v14;
      ++v5;
    }

    while ((v14 - 5) < 3);
  }

  return v4;
}

void __40__NNMKSQLiteConnection_beginTransaction__block_invoke_cold_1(void **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 _lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(&dword_25B19F000, v5, v6, "Failed to begin transaction. (%{public}@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __41__NNMKSQLiteConnection_commitTransaction__block_invoke_cold_1(void **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 _lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(&dword_25B19F000, v5, v6, "Failed to commit transaction. (%{public}@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __43__NNMKSQLiteConnection_rollbackTransaction__block_invoke_cold_1(void **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 _lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(&dword_25B19F000, v5, v6, "Failed to rollback transaction. (%{public}@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_openDatabaseWithPath:(void *)a3 errorCode:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [a1 stringByDeletingLastPathComponent];
  v10 = 138543874;
  v11 = a1;
  v12 = 2114;
  v13 = a2;
  v14 = 1024;
  v15 = [v7 fileExistsAtPath:v8] ^ 1;
  _os_log_error_impl(&dword_25B19F000, v6, OS_LOG_TYPE_ERROR, "Error creating database directory. (Path: %{public}@, Error: %{public}@, Parent Exists: %d)", &v10, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_openDatabaseWithPath:(void *)a3 errorCode:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 _lastErrorMessage];
  v8 = 138543874;
  v9 = a1;
  v10 = 1024;
  v11 = 14;
  v12 = 2114;
  v13 = v6;
  _os_log_fault_impl(&dword_25B19F000, v5, OS_LOG_TYPE_FAULT, "Error opening database. Check sandbox permissions. Closing... (Path: %{public}@, Error Code: %d, Error Message: %{public}@).", &v8, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_preparedStatementForPattern:(uint8_t *)buf cacheStatement:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "Error preparing statement for pattern: %{public}@. (%{public}@)", buf, 0x16u);
}

- (void)_preparedStatementForPattern:cacheStatement:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_25B19F000, v0, OS_LOG_TYPE_ERROR, "Error preparing statement - db doesn't seem to be open (pattern: %{public}@).", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_runRetryingIfNeeded:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "Tried to execute database operation multiple times and received NOMEM. Crashing intentionally so we the process can restart and memory can be freed up...", buf, 2u);
}

@end