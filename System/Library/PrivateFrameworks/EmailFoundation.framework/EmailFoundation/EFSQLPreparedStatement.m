@interface EFSQLPreparedStatement
+ (id)log;
- (BOOL)clearBindingsWithError:(id *)a3;
- (BOOL)executeUsingBlock:(id)a3 error:(id *)a4;
- (BOOL)executeWithIndexedBindings:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)executeWithNamedBindings:(id)a3 rowsChanged:(unint64_t *)a4 error:(id *)a5;
- (BOOL)executeWithNamedBindings:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)finalizeWithError:(id *)a3;
- (BOOL)resetWithError:(id *)a3;
- (EFSQLPreparedStatement)initWithString:(id)a3 connection:(id)a4 transactionLabel:(id)a5 queryLogger:(id)a6;
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
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 handleFailureInMethod:a2 object:self file:@"EFSQLPreparedStatement.m" lineNumber:66 description:{@"%@ has already been finalized", v7}];
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
  block[4] = a1;
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

- (EFSQLPreparedStatement)initWithString:(id)a3 connection:(id)a4 transactionLabel:(id)a5 queryLogger:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = EFSQLPreparedStatement;
  v14 = [(EFSQLPreparedStatement *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_allowedExecutionTime = 2.0;
    objc_storeStrong(&v14->_queryLogger, a6);
    objc_storeStrong(&v15->_transactionLabel, a5);
    v16 = [v11 sqlDB];
    v17 = v10;
    if (sqlite3_prepare_v2(v16, [v10 UTF8String], -1, &v15->_compiled, 0))
    {
      v18 = +[EFSQLPreparedStatement log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sqlite3_errmsg([v11 sqlDB]);
        [EFSQLPreparedStatement initWithString:v19 connection:buf transactionLabel:v10 queryLogger:v18];
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
  v5 = [(EFSQLPreparedStatement *)self originalString];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (BOOL)executeWithNamedBindings:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__EFSQLPreparedStatement_executeWithNamedBindings_usingBlock_error___block_invoke;
  v10[3] = &unk_1E8249DA8;
  v10[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v10];
  LOBYTE(a5) = [(EFSQLPreparedStatement *)self executeUsingBlock:v8 error:a5];

  return a5;
}

void __68__EFSQLPreparedStatement_executeWithNamedBindings_usingBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingName:v6];
}

- (BOOL)executeWithNamedBindings:(id)a3 rowsChanged:(unint64_t *)a4 error:(id *)a5
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__EFSQLPreparedStatement_executeWithNamedBindings_rowsChanged_error___block_invoke;
  v12[3] = &unk_1E8249DA8;
  v12[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v12];
  v8 = [(EFSQLPreparedStatement *)self executeUsingBlock:&__block_literal_global_35 error:a5];
  v9 = !v8;
  if (!a4)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v10 = sqlite3_db_handle([(EFSQLPreparedStatement *)self compiled]);
    *a4 = sqlite3_changes(v10);
  }

  return v8;
}

void __69__EFSQLPreparedStatement_executeWithNamedBindings_rowsChanged_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingName:v6];
}

- (BOOL)executeWithIndexedBindings:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__EFSQLPreparedStatement_executeWithIndexedBindings_usingBlock_error___block_invoke;
  v10[3] = &unk_1E8249DF0;
  v10[4] = self;
  [a3 enumerateObjectsUsingBlock:v10];
  LOBYTE(a5) = [(EFSQLPreparedStatement *)self executeUsingBlock:v8 error:a5];

  return a5;
}

void __70__EFSQLPreparedStatement_executeWithIndexedBindings_usingBlock_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingIndex:a3];
}

- (BOOL)executeUsingBlock:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(EFSQLPreparedStatement *)self compiled];
  v55 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v51 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0.0;
  while (1)
  {
    v11 = sqlite3_step(v6);
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
    if (v5)
    {
      if (!v51)
      {
        v51 = [[EFSQLRow alloc] initWithPreparedStatement:self];
      }

      v14 = objc_autoreleasePoolPush();
      v5[2](v5, v51, v8, &v55);
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
    v15 = sqlite3_db_handle(v6);
    v12 = sqlite3_extended_errcode(v15);
  }

LABEL_13:
  v52 = [(EFSQLPreparedStatement *)self originalString];
  if (EFSQLVerboseDebugLoggingEnabled())
  {
    v16 = +[EFSQLPreparedStatement log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(EFSQLPreparedStatement *)v52 executeUsingBlock:v16 error:v9];
    }
  }

  if (v9 > self->_allowedExecutionTime)
  {
    v17 = +[EFSQLPreparedStatement log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      allowedExecutionTime = self->_allowedExecutionTime;
      *buf = 134218498;
      v57 = *&allowedExecutionTime;
      v58 = 2048;
      v59 = v9;
      v60 = 2112;
      v61 = v52;
      _os_log_error_impl(&dword_1C6152000, v17, OS_LOG_TYPE_ERROR, "Query execution exceeded threshold of %.02f seconds - Took %0.05f seconds for query %@", buf, 0x20u);
    }

    if (v9 > 2.0 && v12 == 101)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v52];
      v19 = 0;
      while ([v18 scanUpToString:@"WHERE" intoString:0] && objc_msgSend(v18, "scanString:intoString:", @"WHERE", 0))
      {
        v20 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        [v18 scanCharactersFromSet:v20 intoString:0];

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
              v57 = self;
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
              v57 = self;
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
          [(EFSQLPreparedStatement *)v52 executeUsingBlock:v24 error:?];
        }
      }

      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EXPLAIN QUERY PLAN %@", v52];
      v26 = sqlite3_db_handle(v6);
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
            v57 = self;
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

      v39 = [(EFSQLPreparedStatement *)self queryLogger];

      if (v39)
      {
        v40 = [(EFSQLPreparedStatement *)self queryLogger];
        [v40 logQueryString:v52 executionTime:v8 + 1 firstRowExecutionTime:v9 numberOfRows:v10];
      }
    }
  }

  v41 = [(EFSQLPreparedStatement *)self queryLogger];

  if (v41)
  {
    v42 = [(EFSQLPreparedStatement *)self queryLogger];
    v43 = [(EFSQLPreparedStatement *)self transactionLabel];
    [v42 logQueryString:v52 label:v43 firstRowExecutionTimeInNanoseconds:(v10 * 1000000000.0) totalExecutionTimeInNanoseconds:(v9 * 1000000000.0) numberOfRows:v8 + 1];

    v44 = [(EFSQLPreparedStatement *)self queryLogger];
    [v44 logUniqueQueryString:v52];

    v45 = [(EFSQLPreparedStatement *)self queryLogger];
    [v45 countQueryString:v52 executionTime:v9];
  }

  [(EFSQLPreparedStatement *)self clearBindingsWithError:0];
  [(EFSQLPreparedStatement *)self resetWithError:0];
  v46 = [EFSQLConnection isSuccessResultCode:v12 forStep:1 error:a4];

  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

- (BOOL)resetWithError:(id *)a3
{
  v4 = sqlite3_reset([(EFSQLPreparedStatement *)self compiled]);

  return [EFSQLConnection isSuccessResultCode:v4 forStep:0 error:a3];
}

- (BOOL)clearBindingsWithError:(id *)a3
{
  v4 = sqlite3_clear_bindings([(EFSQLPreparedStatement *)self compiled]);

  return [EFSQLConnection isSuccessResultCode:v4 forStep:0 error:a3];
}

- (BOOL)finalizeWithError:(id *)a3
{
  result = [EFSQLConnection isSuccessResultCode:sqlite3_finalize(self->_compiled) forStep:0 error:a3];
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