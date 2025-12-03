@interface EFSQLPreparedStatement
+ (id)log;
- (BOOL)clearBindingsWithError:(id *)error;
- (BOOL)executeUsingBlock:(id)block error:(id *)error;
- (BOOL)executeWithIndexedBindings:(id)bindings usingBlock:(id)block error:(id *)error;
- (BOOL)executeWithNamedBindings:(id)bindings rowsChanged:(unint64_t *)changed error:(id *)error;
- (BOOL)executeWithNamedBindings:(id)bindings usingBlock:(id)block error:(id *)error;
- (BOOL)finalizeWithError:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (EFSQLPreparedStatement)initWithString:(id)string connection:(id)connection transactionLabel:(id)label queryLogger:(id)logger;
- (NSString)originalString;
- (id)debugDescription;
- (sqlite3_stmt)compiled;
- (void)dealloc;
@end

@implementation EFSQLPreparedStatement

- (sqlite3_stmt)compiled
{
  if ([(EFSQLPreparedStatement *)self isFinalized])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPreparedStatement.m" lineNumber:66 description:{@"%@ has already been finalized", v7}];
  }

  return self->_compiled;
}

- (NSString)originalString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = sqlite3_sql([(EFSQLPreparedStatement *)self compiled]);

  return [v2 stringWithUTF8String:v3];
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EFSQLPreparedStatement_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_7 != -1)
  {
    dispatch_once(&log_onceToken_7, block);
  }

  v2 = log_log_7;

  return v2;
}

- (void)dealloc
{
  [(EFSQLPreparedStatement *)self finalizeWithError:0];
  v3.receiver = self;
  v3.super_class = EFSQLPreparedStatement;
  [(EFSQLPreparedStatement *)&v3 dealloc];
}

void __29__EFSQLPreparedStatement_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_7;
  log_log_7 = v1;
}

- (EFSQLPreparedStatement)initWithString:(id)string connection:(id)connection transactionLabel:(id)label queryLogger:(id)logger
{
  v29 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  connectionCopy = connection;
  labelCopy = label;
  loggerCopy = logger;
  v22.receiver = self;
  v22.super_class = EFSQLPreparedStatement;
  v14 = [(EFSQLPreparedStatement *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_allowedExecutionTime = 2.0;
    objc_storeStrong(&v14->_queryLogger, logger);
    objc_storeStrong(&v15->_transactionLabel, label);
    sqlDB = [connectionCopy sqlDB];
    v17 = stringCopy;
    if (sqlite3_prepare_v2(sqlDB, [stringCopy UTF8String], -1, &v15->_compiled, 0))
    {
      v18 = +[EFSQLPreparedStatement log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sqlite3_errmsg([connectionCopy sqlDB]);
        [EFSQLPreparedStatement initWithString:v19 connection:buf transactionLabel:stringCopy queryLogger:v18];
      }

      memset(__b, 170, sizeof(__b));
      __b[8] = 0;
      *v26 = 0xE00000001;
      v27 = 1;
      v28 = getpid();
      v23 = 648;
      if (!sysctl(v26, 4u, __b, &v23, 0, 0) && (__b[8] & 0x800) != 0)
      {
        __debugbreak();
      }

      v15 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = EFSQLPreparedStatement;
  v4 = [(EFSQLPreparedStatement *)&v8 debugDescription];
  originalString = [(EFSQLPreparedStatement *)self originalString];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, originalString];

  return v6;
}

- (BOOL)executeWithNamedBindings:(id)bindings usingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__EFSQLPreparedStatement_executeWithNamedBindings_usingBlock_error___block_invoke;
  v10[3] = &unk_1E8249DA8;
  v10[4] = self;
  [bindings enumerateKeysAndObjectsUsingBlock:v10];
  LOBYTE(error) = [(EFSQLPreparedStatement *)self executeUsingBlock:blockCopy error:error];

  return error;
}

void __68__EFSQLPreparedStatement_executeWithNamedBindings_usingBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingName:v6];
}

- (BOOL)executeWithNamedBindings:(id)bindings rowsChanged:(unint64_t *)changed error:(id *)error
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__EFSQLPreparedStatement_executeWithNamedBindings_rowsChanged_error___block_invoke;
  v12[3] = &unk_1E8249DA8;
  v12[4] = self;
  [bindings enumerateKeysAndObjectsUsingBlock:v12];
  v8 = [(EFSQLPreparedStatement *)self executeUsingBlock:&__block_literal_global_35 error:error];
  v9 = !v8;
  if (!changed)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v10 = sqlite3_db_handle([(EFSQLPreparedStatement *)self compiled]);
    *changed = sqlite3_changes(v10);
  }

  return v8;
}

void __69__EFSQLPreparedStatement_executeWithNamedBindings_rowsChanged_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingName:v6];
}

- (BOOL)executeWithIndexedBindings:(id)bindings usingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__EFSQLPreparedStatement_executeWithIndexedBindings_usingBlock_error___block_invoke;
  v10[3] = &unk_1E8249DF0;
  v10[4] = self;
  [bindings enumerateObjectsUsingBlock:v10];
  LOBYTE(error) = [(EFSQLPreparedStatement *)self executeUsingBlock:blockCopy error:error];

  return error;
}

void __70__EFSQLPreparedStatement_executeWithIndexedBindings_usingBlock_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingIndex:a3];
}

- (BOOL)executeUsingBlock:(id)block error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  compiled = [(EFSQLPreparedStatement *)self compiled];
  v55 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v51 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0.0;
  while (1)
  {
    v11 = sqlite3_step(compiled);
    v12 = v11;
    if (v11 != 100)
    {
      break;
    }

    v13 = CFAbsoluteTimeGetCurrent() - Current;
    if (!v8)
    {
      v10 = v13;
    }

    v9 = v9 + v13;
    if (blockCopy)
    {
      if (!v51)
      {
        v51 = [[EFSQLRow alloc] initWithPreparedStatement:self];
      }

      v14 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v51, v8, &v55);
      objc_autoreleasePoolPop(v14);
      if (v55)
      {
        v12 = 100;
        goto LABEL_13;
      }

      Current = CFAbsoluteTimeGetCurrent();
      ++v8;
    }
  }

  if (v11 && v11 != 101)
  {
    v15 = sqlite3_db_handle(compiled);
    v12 = sqlite3_extended_errcode(v15);
  }

LABEL_13:
  originalString = [(EFSQLPreparedStatement *)self originalString];
  if (EFSQLVerboseDebugLoggingEnabled())
  {
    v16 = +[EFSQLPreparedStatement log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(EFSQLPreparedStatement *)originalString executeUsingBlock:v16 error:v9];
    }
  }

  if (v9 > self->_allowedExecutionTime)
  {
    v17 = +[EFSQLPreparedStatement log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      allowedExecutionTime = self->_allowedExecutionTime;
      *buf = 134218498;
      selfCopy3 = *&allowedExecutionTime;
      v58 = 2048;
      v59 = v9;
      v60 = 2112;
      v61 = originalString;
      _os_log_error_impl(&dword_1C6152000, v17, OS_LOG_TYPE_ERROR, "Query execution exceeded threshold of %.02f seconds - Took %0.05f seconds for query %@", buf, 0x20u);
    }

    if (v9 > 2.0 && v12 == 101)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:originalString];
      v19 = 0;
      while ([v18 scanUpToString:@"WHERE" intoString:0] && objc_msgSend(v18, "scanString:intoString:", @"WHERE", 0))
      {
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        [v18 scanCharactersFromSet:whitespaceCharacterSet intoString:0];

        v54 = 0;
        v21 = [v18 scanUpToString:@"UNION" intoString:&v54];
        v22 = v54;
        if (v21)
        {
          if (v19)
          {
            v23 = +[EFSQLPreparedStatement log];
            ++v19;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218498;
              selfCopy3 = self;
              v58 = 2048;
              v59 = *&v19;
              v60 = 2112;
              v61 = v22;
              _os_log_error_impl(&dword_1C6152000, v23, OS_LOG_TYPE_ERROR, "%p QUERY PLAN for clause(%llu): %@", buf, 0x20u);
            }
          }

          else
          {
            v23 = +[EFSQLPreparedStatement log];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              selfCopy3 = self;
              v58 = 2112;
              v59 = *&v22;
              _os_log_error_impl(&dword_1C6152000, v23, OS_LOG_TYPE_ERROR, "%p QUERY PLAN for clause: %@", buf, 0x16u);
            }

            v19 = 1;
          }
        }
      }

      if (!v19)
      {
        v24 = +[EFSQLPreparedStatement log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(EFSQLPreparedStatement *)originalString executeUsingBlock:v24 error:?];
        }
      }

      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EXPLAIN QUERY PLAN %@", originalString];
      v26 = sqlite3_db_handle(compiled);
      ppStmt = 0;
      v27 = v25;
      v28 = sqlite3_prepare_v2(v26, [v25 UTF8String], -1, &ppStmt, 0);
      if (v28)
      {
        v29 = +[EFSQLPreparedStatement log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:v28];
          [(EFSQLPreparedStatement *)v30 executeUsingBlock:buf error:v29];
        }
      }

      else
      {
        while (1)
        {
          v31 = sqlite3_step(ppStmt);
          v32 = v31;
          if (v31 != 100)
          {
            break;
          }

          v33 = sqlite3_column_text(ppStmt, 3);
          v34 = objc_alloc(MEMORY[0x1E696AEC0]);
          v35 = [v34 initWithBytes:v33 length:sqlite3_column_bytes(ppStmt encoding:{3), 4}];
          v36 = +[EFSQLPreparedStatement log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            selfCopy3 = self;
            v58 = 2112;
            v59 = *&v35;
            _os_log_error_impl(&dword_1C6152000, v36, OS_LOG_TYPE_ERROR, "%p: %@", buf, 0x16u);
          }
        }

        if (v31 && v31 != 101)
        {
          v37 = +[EFSQLPreparedStatement log];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:v32];
            [(EFSQLPreparedStatement *)v38 executeUsingBlock:buf error:v37];
          }
        }

        sqlite3_finalize(ppStmt);
      }

      queryLogger = [(EFSQLPreparedStatement *)self queryLogger];

      if (queryLogger)
      {
        queryLogger2 = [(EFSQLPreparedStatement *)self queryLogger];
        [queryLogger2 logQueryString:originalString executionTime:v8 + 1 firstRowExecutionTime:v9 numberOfRows:v10];
      }
    }
  }

  queryLogger3 = [(EFSQLPreparedStatement *)self queryLogger];

  if (queryLogger3)
  {
    queryLogger4 = [(EFSQLPreparedStatement *)self queryLogger];
    transactionLabel = [(EFSQLPreparedStatement *)self transactionLabel];
    [queryLogger4 logQueryString:originalString label:transactionLabel firstRowExecutionTimeInNanoseconds:(v10 * 1000000000.0) totalExecutionTimeInNanoseconds:(v9 * 1000000000.0) numberOfRows:v8 + 1];

    queryLogger5 = [(EFSQLPreparedStatement *)self queryLogger];
    [queryLogger5 logUniqueQueryString:originalString];

    queryLogger6 = [(EFSQLPreparedStatement *)self queryLogger];
    [queryLogger6 countQueryString:originalString executionTime:v9];
  }

  [(EFSQLPreparedStatement *)self clearBindingsWithError:0];
  [(EFSQLPreparedStatement *)self resetWithError:0];
  v46 = [EFSQLConnection isSuccessResultCode:v12 forStep:1 error:error];

  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

- (BOOL)resetWithError:(id *)error
{
  v4 = sqlite3_reset([(EFSQLPreparedStatement *)self compiled]);

  return [EFSQLConnection isSuccessResultCode:v4 forStep:0 error:error];
}

- (BOOL)clearBindingsWithError:(id *)error
{
  v4 = sqlite3_clear_bindings([(EFSQLPreparedStatement *)self compiled]);

  return [EFSQLConnection isSuccessResultCode:v4 forStep:0 error:error];
}

- (BOOL)finalizeWithError:(id *)error
{
  result = [EFSQLConnection isSuccessResultCode:sqlite3_finalize(self->_compiled) forStep:0 error:error];
  self->_compiled = 0;
  return result;
}

- (void)initWithString:(uint64_t)a1 connection:(uint8_t *)buf transactionLabel:(uint64_t)a3 queryLogger:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2082;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1C6152000, log, OS_LOG_TYPE_ERROR, "Unable to prepare statement '%@': %{public}s", buf, 0x16u);
}

- (void)executeUsingBlock:(double)a3 error:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a3;
  v6 = 2112;
  v7 = a1;
  _os_log_debug_impl(&dword_1C6152000, a2, OS_LOG_TYPE_DEBUG, "Execution took %0.05f seconds for query %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)executeUsingBlock:(os_log_t)log error:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_1C6152000, log, OS_LOG_TYPE_ERROR, "%p QUERY PLAN for statement: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)executeUsingBlock:(os_log_t)log error:.cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6152000, log, OS_LOG_TYPE_ERROR, "Got error %@ preparing EXPLAIN QUERY PLAN", buf, 0xCu);
}

@end