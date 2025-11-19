@interface EFSQLConnection
+ (BOOL)isSuccessResultCode:(int)a3 forStep:(BOOL)a4 error:(id *)a5;
+ (BOOL)setFileProtection:(id)a3 forDatabaseAtURL:(id)a4 error:(id *)a5;
+ (OS_os_log)log;
- (BOOL)beginTransaction:(int64_t)a3 error:(id *)a4;
- (BOOL)executeStatementString:(id)a3 error:(id *)a4;
- (BOOL)finalizeStatementsWithError:(id *)a3;
- (BOOL)openWithFlags:(int)a3 error:(id *)a4;
- (EFSQLConnection)initWithInMemoryDatabase;
- (EFSQLConnection)initWithSQLDB:(sqlite3 *)a3;
- (EFSQLConnection)initWithURL:(id)a3;
- (NSString)description;
- (id)preparedStatementForQueryString:(id)a3 transactionLabel:(id)a4 queryLogger:(id)a5;
- (id)test_resultsForQueryString:(id)a3;
- (void)close;
@end

@implementation EFSQLConnection

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = EFSQLConnection;
  v4 = [(EFSQLConnection *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ sqlite handle: %p", v4, -[EFSQLConnection sqlDB](self, "sqlDB")];

  return v5;
}

- (void)close
{
  v3 = [(EFSQLConnection *)self sqlDB];
  if (v3)
  {
    sqlite3_close(v3);
    self->_sqlDB = 0;
  }
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__EFSQLConnection_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_5 != -1)
  {
    dispatch_once(&log_onceToken_5, block);
  }

  v2 = log_log_5;

  return v2;
}

void __22__EFSQLConnection_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_5;
  log_log_5 = v1;
}

+ (BOOL)setFileProtection:(id)a3 forDatabaseAtURL:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = +[EFSQLConnection log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EFSQLConnection setFileProtection:v10 forDatabaseAtURL:v9 error:v11];
  }

  v12 = 1048582;
  if (([v9 isEqualToString:*MEMORY[0x1E695DAD8]] & 1) == 0)
  {
    if ([v9 isEqualToString:*MEMORY[0x1E695DAE0]])
    {
      v12 = 2097158;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E695DAE8]])
    {
      v12 = 3145734;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E695DAF8]])
    {
      v12 = 4194310;
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:a1 file:@"EFSQLConnection.m" lineNumber:212 description:@"Unknown protection class"];

      v12 = 6;
    }
  }

  v14 = [[a1 alloc] initWithURL:v10];
  if ([v14 openWithFlags:v12 error:a5])
  {
    v15 = [v14 executeStatementString:@"SELECT 1 FROM sqlite_master" error:a5];
    [v14 close];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (EFSQLConnection)initWithInMemoryDatabase
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@":memory:"];
  v4 = [(EFSQLConnection *)self initWithURL:v3];

  return v4;
}

- (EFSQLConnection)initWithURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EFSQLConnection;
  v6 = [(EFSQLConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    preparedStatements = v7->_preparedStatements;
    v7->_preparedStatements = v8;
  }

  return v7;
}

- (EFSQLConnection)initWithSQLDB:(sqlite3 *)a3
{
  v9.receiver = self;
  v9.super_class = EFSQLConnection;
  v4 = [(EFSQLConnection *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_sqlDB = a3;
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    preparedStatements = v5->_preparedStatements;
    v5->_preparedStatements = v6;
  }

  return v5;
}

- (BOOL)openWithFlags:(int)a3 error:(id *)a4
{
  if (self->_sqlDB)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"EFSQLConnection.m" lineNumber:263 description:{@"%s called when already open", "-[EFSQLConnection openWithFlags:error:]"}];
  }

  v7 = [(EFSQLConnection *)self url];
  v8 = [v7 absoluteString];
  v9 = [v8 fileSystemRepresentation];

  ppDb = 0;
  v10 = sqlite3_open_v2(v9, &ppDb, a3, 0);
  v11 = [(EFSQLConnection *)self _isSuccessResultCode:v10 sqlDB:ppDb error:a4];
  if (v11)
  {
    self->_sqlDB = ppDb;
  }

  else if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  return v11;
}

- (BOOL)finalizeStatementsWithError:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(EFSQLConnection *)self sqlDB];
  if (!v5)
  {
LABEL_15:
    LOBYTE(v12) = 1;
    goto LABEL_17;
  }

  v6 = v5;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_preparedStatements;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (([*(*(&v15 + 1) + 8 * v10) finalizeWithError:{a3, v15}] & 1) == 0)
        {

          LOBYTE(v12) = 0;
          goto LABEL_17;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  stmt = sqlite3_next_stmt(v6, 0);
  if (!stmt)
  {
LABEL_13:
    if (a3)
    {
      *a3 = 0;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v12 = [(EFSQLConnection *)self _isSuccessResultCode:sqlite3_finalize(stmt) sqlDB:v6 error:a3];
    if (!v12)
    {
      break;
    }

    stmt = sqlite3_next_stmt(v6, 0);
    if (!stmt)
    {
      goto LABEL_13;
    }
  }

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)beginTransaction:(int64_t)a3 error:(id *)a4
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E8249C58[a3];
  }

  return [(EFSQLConnection *)self executeStatementString:v4 error:a4];
}

- (id)preparedStatementForQueryString:(id)a3 transactionLabel:(id)a4 queryLogger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v9 length])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"EFSQLConnection.m" lineNumber:345 description:@"preparedStatementForQueryString called without a query"];
  }

  if (![(EFSQLConnection *)self isOpen])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EFSQLConnection.m" lineNumber:346 description:{@"preparedStatementForQueryString called with NULL database and pattern %@", v9}];
  }

  v12 = [[EFSQLPreparedStatement alloc] initWithString:v9 connection:self transactionLabel:v10 queryLogger:v11];
  if (v12)
  {
    [(NSHashTable *)self->_preparedStatements addObject:v12];
  }

  return v12;
}

- (BOOL)executeStatementString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(EFSQLConnection *)self sqlDB];
  LOBYTE(a4) = -[EFSQLConnection _isSuccessResultCode:sqlDB:error:](self, "_isSuccessResultCode:sqlDB:error:", sqlite3_exec(v7, [v6 UTF8String], 0, 0, 0), v7, a4);

  return a4;
}

- (id)test_resultsForQueryString:(id)a3
{
  v3 = [(EFSQLConnection *)self preparedStatementForQueryString:a3 transactionLabel:0 queryLogger:0];
  if (v3)
  {
    v4 = objc_opt_new();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__EFSQLConnection_test_resultsForQueryString___block_invoke;
    v8[3] = &unk_1E8249C18;
    v5 = v4;
    v9 = v5;
    if ([v3 executeUsingBlock:v8 error:0])
    {
      v6 = [v5 copy];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __46__EFSQLConnection_test_resultsForQueryString___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 columnNames];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = [v10 objectValue];
        [v4 setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = *(a1 + 32);
  v13 = [v4 copy];
  [v12 addObject:v13];

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSuccessResultCode:(int)a3 forStep:(BOOL)a4 error:(id *)a5
{
  if ((a3 - 100) < 2)
  {
    result = a4;
    if (!a5)
    {
      return result;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!a3)
  {
    if (!a5)
    {
      return 1;
    }

LABEL_7:
    *a5 = 0;
    return 1;
  }

  if (a5)
  {
LABEL_10:
    v7 = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:?];
    *a5 = v7;
  }

  return 0;
}

+ (void)setFileProtection:(uint64_t)a1 forDatabaseAtURL:(uint64_t)a2 error:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_1C6152000, log, OS_LOG_TYPE_DEBUG, "Setting file protection for %{public}@ to %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end