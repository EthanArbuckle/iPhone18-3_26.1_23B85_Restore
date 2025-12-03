@interface ENSQLiteConnection
- (BOOL)_prepareStatementForSQL:(id)l cache:(BOOL)cache error:(id *)error statementHandler:(id)handler;
- (BOOL)_stepStatement:(sqlite3_stmt *)statement hasRow:(BOOL *)row error:(id *)error;
- (BOOL)executeUncachedSQLStatements:(id)statements error:(id *)error;
- (BOOL)getIntegerValue:(int64_t *)value forPragma:(id)pragma error:(id *)error;
- (BOOL)performTransactionWithType:(int64_t)type error:(id *)error usingBlock:(id)block;
- (BOOL)setIntegerValue:(int64_t)value forPragma:(id)pragma error:(id *)error;
- (BOOL)truncateWithError:(id *)error;
- (ENSQLiteConnection)initWithDatabaseURL:(id)l;
- (id)_initWithDatabaseURL:(id)l;
- (int)openWithError:(id *)error;
- (int64_t)lastInsertedRowID;
- (void)close;
- (void)dealloc;
- (void)lastInsertedRowID;
@end

@implementation ENSQLiteConnection

- (ENSQLiteConnection)initWithDatabaseURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [ENSQLiteConnection initWithDatabaseURL:];
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    [ENSQLiteConnection initWithDatabaseURL:];
  }

  v5 = [(ENSQLiteConnection *)self _initWithDatabaseURL:lCopy];

  return v5;
}

- (id)_initWithDatabaseURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ENSQLiteConnection;
  v5 = [(ENSQLiteConnection *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;

    v5->_statementCache = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF140], &kSQLite3StatementDictionaryValueCallbacks);
  }

  return v5;
}

- (void)dealloc
{
  [(ENSQLiteConnection *)self close];
  v3.receiver = self;
  v3.super_class = ENSQLiteConnection;
  [(ENSQLiteConnection *)&v3 dealloc];
}

- (int)openWithError:(id *)error
{
  p_db = &self->_db;
  if (!self->_db)
  {
    fileURL = self->_fileURL;
    if (fileURL)
    {
      fileSystemRepresentation = [(NSURL *)fileURL fileSystemRepresentation];
    }

    else
    {
      fileSystemRepresentation = ":memory:";
    }

    v9 = sqlite3_open_v2(fileSystemRepresentation, p_db, self->_additionalOpenFlags | 6, 0);
    if (v9)
    {
      v4 = v9;
    }

    else
    {
      v10 = sqlite3_exec(*p_db, "PRAGMA auto_vacuum = 2;", 0, 0, 0);
      if (v10)
      {
        v4 = v10;
      }

      else
      {
        v11 = sqlite3_exec(*p_db, "PRAGMA cache_size = 512;", 0, 0, 0);
        if (v11)
        {
          v4 = v11;
        }

        else
        {
          v12 = sqlite3_exec(*p_db, "PRAGMA journal_mode = WAL;", 0, 0, 0);
          if (v12)
          {
            v4 = v12;
          }

          else
          {
            v4 = sqlite3_exec(*p_db, "PRAGMA foreign_keys = ON;", 0, 0, 0);
            if (!v4)
            {
              return v4;
            }
          }
        }
      }
    }

    if (gLogCategory__ENSQLiteConnection <= 90 && (gLogCategory__ENSQLiteConnection != -1 || _LogCategory_Initialize()))
    {
      [(ENSQLiteConnection *)p_db openWithError:v4];
      if (!error)
      {
        return v4;
      }
    }

    else if (!error)
    {
      return v4;
    }

    *error = [(ENSQLiteConnection *)self _lastErrorWithResultCode:v4];
    return v4;
  }

  LODWORD(v4) = 0;
  return v4;
}

- (void)close
{
  statementCache = self->_statementCache;
  if (statementCache)
  {
    CFRelease(statementCache);
    self->_statementCache = 0;
  }

  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
    self->_db = 0;
  }
}

- (int64_t)lastInsertedRowID
{
  db = self->_db;
  if (db)
  {
  }

  else
  {
    [ENSQLiteConnection lastInsertedRowID];
    db = v5;
  }

  return sqlite3_last_insert_rowid(db);
}

- (BOOL)performTransactionWithType:(int64_t)type error:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  if (!self->_db)
  {
    [ENSQLiteConnection performTransactionWithType:error:usingBlock:];
  }

  if (self->_isInTransaction)
  {
    [ENSQLiteConnection performTransactionWithType:error:usingBlock:];
  }

  if (type > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_278FD2A80[type];
  }

  v10 = [(ENSQLiteConnection *)self executeUncachedSQL:v9 error:error];
  self->_isInTransaction = v10;
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = objc_autoreleasePoolPush();
  v22 = 0;
  v12 = blockCopy[2](blockCopy, self, &v22);
  v13 = v22;
  objc_autoreleasePoolPop(v11);
  if (error)
  {
    v14 = v12;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    if (v13)
    {
      v15 = v13;
      *error = v13;
    }

    else
    {
      v16 = ENErrorF();
      *error = v16;
    }
  }

  self->_isInTransaction = 0;
  if ((v12 & 1) == 0)
  {
    v21 = 0;
    v18 = [(ENSQLiteConnection *)self executeUncachedSQL:@"ROLLBACK" error:&v21];
    v19 = v21;
    if (v18 && gLogCategory__ENSQLiteConnection <= 90 && (gLogCategory__ENSQLiteConnection != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

LABEL_24:
    v17 = 0;
    goto LABEL_25;
  }

  v17 = [(ENSQLiteConnection *)self executeUncachedSQL:@"COMMIT" error:error];
LABEL_25:

  return v17;
}

- (BOOL)executeUncachedSQLStatements:(id)statements error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  statementsCopy = statements;
  v7 = [statementsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(statementsCopy);
        }

        if (![(ENSQLiteConnection *)self executeUncachedSQL:*(*(&v14 + 1) + 8 * i) error:error, v14])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [statementsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __89__ENSQLiteConnection__executeSQL_cacheStatement_error_bindingHandler_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  if (*(a1 + 48))
  {
    v7 = 0;
    v15 = 0;
    while (1)
    {
      v8 = [*(a1 + 32) _stepStatement:a2 hasRow:&v15 error:a3];
      if (!v8 || v15 != 1)
      {
        break;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = (*(*(a1 + 48) + 16))();
      v11 = v7;

      objc_autoreleasePoolPop(v9);
      if (v10)
      {
        v7 = v11;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v11 = v7;
LABEL_14:
    if (v11)
    {
      if (a3)
      {
        v14 = v11;
        v8 = 0;
        *a3 = v11;
      }

      else
      {
        v8 = 0;
      }
    }

    return v8;
  }

  else
  {
    v12 = *(a1 + 32);

    return [v12 _stepStatement:a2 hasRow:0 error:a3];
  }
}

- (BOOL)_prepareStatementForSQL:(id)l cache:(BOOL)cache error:(id *)error statementHandler:(id)handler
{
  cacheCopy = cache;
  lCopy = l;
  handlerCopy = handler;
  Value = CFDictionaryGetValue(self->_statementCache, lCopy);
  ppStmt = Value;
  if (Value)
  {
    v13 = Value;
    v14 = 0;
    goto LABEL_20;
  }

  while (1)
  {
    v21 = 0;
    v16 = sqlite3_prepare_v2(self->_db, [lCopy UTF8String], objc_msgSend(lCopy, "length"), &ppStmt, &v21);
    if (!v16)
    {
      break;
    }

    v15 = v16;
    if ((v16 - 5) >= 2)
    {
      v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v17 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && gLogCategory_ENSQLiteConnection <= 90 && (gLogCategory_ENSQLiteConnection != -1 || _LogCategory_Initialize()))
      {
        [ENSQLiteConnection _prepareStatementForSQL:v15 cache:? error:? statementHandler:?];
        if (error)
        {
          goto LABEL_14;
        }
      }

      else if (error)
      {
LABEL_14:
        [(ENSQLiteConnection *)self _lastErrorWithResultCode:v15];
        *error = v14 = 0;
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  if (v21 && *v21)
  {
    [ENSQLiteConnection _prepareStatementForSQL:? cache:? error:? statementHandler:?];
    if (cacheCopy)
    {
      goto LABEL_8;
    }
  }

  else if (cacheCopy)
  {
LABEL_8:
    CFDictionarySetValue(self->_statementCache, lCopy, ppStmt);
LABEL_16:
    v14 = 0;
    goto LABEL_19;
  }

  v14 = 1;
LABEL_19:
  v13 = ppStmt;
  if (!ppStmt)
  {
    v19 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v19 = handlerCopy[2](handlerCopy, v13, error);
  if (v14)
  {
    sqlite3_finalize(ppStmt);
  }

  else
  {
    sqlite3_clear_bindings(ppStmt);
    sqlite3_reset(ppStmt);
  }

LABEL_23:

  return v19 & 1;
}

- (BOOL)_stepStatement:(sqlite3_stmt *)statement hasRow:(BOOL *)row error:(id *)error
{
  if (row)
  {
    *row = 0;
  }

  if (!statement)
  {
    return 1;
  }

  do
  {
    v9 = sqlite3_step(statement);
    if (v9 == 101)
    {
      return 1;
    }

    if (v9 == 100)
    {
      result = 1;
      if (row)
      {
        *row = 1;
      }

      return result;
    }

    v10 = v9;
    v11 = v9;
  }

  while (v9 - 5 < 2);
  if (v9 == 19)
  {
    v12 = 10;
  }

  else
  {
    v12 = 90;
  }

  v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v13 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && v12 >= gLogCategory_ENSQLiteConnection && (gLogCategory_ENSQLiteConnection != -1 || _LogCategory_Initialize()))
  {
    [ENSQLiteConnection _stepStatement:statement hasRow:self error:v11];
    if (error)
    {
      goto LABEL_15;
    }
  }

  else if (error)
  {
LABEL_15:
    v15 = [(ENSQLiteConnection *)self _lastErrorWithResultCode:v10];
    v16 = v15;
    result = 0;
    *error = v15;
    return result;
  }

  return 0;
}

- (BOOL)setIntegerValue:(int64_t)value forPragma:(id)pragma error:(id *)error
{
  value = [MEMORY[0x277CCACA0] stringWithFormat:@"PRAGMA %@=%lld", pragma, value];
  LOBYTE(error) = [(ENSQLiteConnection *)self executeUncachedSQL:value error:error];

  return error;
}

- (BOOL)getIntegerValue:(int64_t *)value forPragma:(id)pragma error:(id *)error
{
  pragma = [MEMORY[0x277CCACA0] stringWithFormat:@"PRAGMA %@", pragma];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ENSQLiteConnection_getIntegerValue_forPragma_error___block_invoke;
  v10[3] = &__block_descriptor_40_e27_B24__0__sqlite3_stmt__8__16l;
  v10[4] = value;
  LOBYTE(error) = [(ENSQLiteConnection *)self _executeSQL:pragma cacheStatement:0 error:error bindingHandler:0 enumerationHandler:v10];

  return error;
}

- (BOOL)truncateWithError:(id *)error
{
  if (!self->_db)
  {
    [ENSQLiteConnection truncateWithError:];
  }

  return _sqlite3_db_truncate() == 0;
}

- (void)initWithDatabaseURL:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"fileURL != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithDatabaseURL:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"fileURL.isFileURL" object:? file:? lineNumber:? description:?];
}

- (void)openWithError:(sqlite3 *)a1 .cold.1(sqlite3 **a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA0];
  v4 = sqlite3_errmsg(*a1);
  v5 = "<unavailable>";
  if (v4)
  {
    v5 = v4;
  }

  v6 = [v3 stringWithFormat:@"[%d, %s]", a2, v5];
  LogPrintF_safe();
}

- (void)lastInsertedRowID
{
  OUTLINED_FUNCTION_2_4();
  currentHandler = [MEMORY[0x277CCA888] currentHandler];
  [currentHandler handleFailureInMethod:v3 object:v2 file:@"ENSQLiteConnection.m" lineNumber:145 description:@"Database must be open"];

  *v0 = *v1;
}

- (void)performTransactionWithType:error:usingBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)performTransactionWithType:error:usingBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_executeSQL:cacheStatement:error:bindingHandler:enumerationHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_prepareStatementForSQL:(sqlite3 *)a1 cache:(uint64_t)a2 error:statementHandler:.cold.1(sqlite3 **a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA0];
  v4 = sqlite3_errmsg(*a1);
  v5 = "<unavailable>";
  if (v4)
  {
    v5 = v4;
  }

  v6 = [v3 stringWithFormat:@"[%d, %s]", a2, v5];
  LogPrintF_safe();
}

- (void)_prepareStatementForSQL:(uint64_t *)a1 cache:error:statementHandler:.cold.2(uint64_t *a1)
{
  v2 = [MEMORY[0x277CCA888] currentHandler];
  v4 = *a1;
  OUTLINED_FUNCTION_0_8();
  [v3 handleFailureInMethod:v4 object:? file:? lineNumber:? description:?];
}

- (void)_stepStatement:(sqlite3_stmt *)a1 hasRow:(uint64_t)a2 error:(uint64_t)a3 .cold.1(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  sqlite3_sql(a1);
  v5 = *(a2 + 8);
  v6 = MEMORY[0x277CCACA0];
  v7 = sqlite3_errmsg(v5);
  v8 = "<unavailable>";
  if (v7)
  {
    v8 = v7;
  }

  v9 = [v6 stringWithFormat:@"[%d, %s]", a3, v8];
  LogPrintF_safe();
}

- (void)truncateWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"ENSQLiteConnection.m" lineNumber:382 description:@"Database must be open"];

  *v0 = *v1;
}

- (void)_lastErrorWithResultCode:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end