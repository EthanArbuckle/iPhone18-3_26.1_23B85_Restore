@interface CCDatabaseConnection
+ (id)readOnlyConnectionToDatabaseAtURL:(id)a3 accessAssertion:(id)a4;
- (BOOL)_createTableWithRecordClass:(Class)a3 error:(id *)a4;
- (BOOL)beginTransactionWithError:(id *)a3;
- (BOOL)cleanup:(id *)a3;
- (BOOL)commitTransactionWithError:(id *)a3;
- (BOOL)enumerateRecordResultsOfSelect:(id)a3 recordClass:(Class)a4 error:(id *)a5 usingBlock:(id)a6;
- (BOOL)enumerateRowResultsOfSelect:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)firstResultOfSelect:(id)a3 outNumberValue:(id *)a4 error:(id *)a5;
- (BOOL)openWithError:(id *)a3;
- (BOOL)prepareWithError:(id *)a3;
- (BOOL)rollbackTransactionWithError:(id *)a3;
- (CCDatabaseConnection)init;
- (CCDatabaseConnection)initWithDatabase:(id)a3 accessAssertion:(id)a4;
- (id)enumeratorForRowResultsOfSelect:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation CCDatabaseConnection

- (void)dealloc
{
  [(CCDatabaseConnection *)self closeWithError:0];
  v3.receiver = self;
  v3.super_class = CCDatabaseConnection;
  [(CCDatabaseConnection *)&v3 dealloc];
}

- (CCDatabaseConnection)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)readOnlyConnectionToDatabaseAtURL:(id)a3 accessAssertion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() connectionToDatabaseAtURL:v6 dataProtectionClass:0 openMode:1 accessAssertion:v5];

  return v7;
}

- (CCDatabaseConnection)initWithDatabase:(id)a3 accessAssertion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CCDatabaseConnection;
  v9 = [(CCDatabaseConnection *)&v14 init];
  v10 = v9;
  if (v9 && (v9->_inTransaction = 0, objc_storeStrong(&v9->_db, a3), objc_storeStrong(&v10->_accessAssertion, a4), !v10->_db))
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseConnection initWithDatabase:accessAssertion:];
    }

    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)openWithError:(id *)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA busy_timeout = %d", 500];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA cache_spill = %d", 800];
  if ([(CCDatabase *)self->_db openWithError:a3]&& [(CCDatabase *)self->_db executeCommandString:v5 error:a3]&& [(CCDatabase *)self->_db executeCommandString:@"PRAGMA foreign_keys = ON;" error:a3])
  {
    v7 = [(CCDatabase *)self->_db executeCommandString:v6 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)prepareWithError:(id *)a3
{
  if ([(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:a3]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:a3]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:a3]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:a3]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:a3]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:a3])
  {
    return 1;
  }

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseConnection prepareWithError:];
  }

  return 0;
}

- (BOOL)_createTableWithRecordClass:(Class)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(objc_class *)a3 genSQLCreateStatements];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        if (![(CCDatabase *)self->_db executeCommandString:*(*(&v14 + 1) + 8 * i) error:a4])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)beginTransactionWithError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_inTransaction)
  {
    v4 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v13[0] = @"Attempted to begin transaction when one is already active";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:11 userInfo:v5];
    CCSetError(a3, v6);

    LOBYTE(v7) = 0;
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseConnection beginTransactionWithError:];
    }

    v7 = [(CCDatabase *)self->_db beginTransactionWithError:a3];
    if (v7)
    {
      LOBYTE(v7) = 1;
      self->_inTransaction = 1;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)commitTransactionWithError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_inTransaction)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseConnection commitTransactionWithError:];
    }

    v6 = [(CCDatabase *)self->_db commitTransactionWithError:a3];
    if (v6)
    {
      self->_inTransaction = 0;
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v13[0] = @"Attempted to commit transaction when none are active";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:12 userInfo:v8];
    CCSetError(a3, v9);

    LOBYTE(v6) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)rollbackTransactionWithError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_inTransaction)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseConnection rollbackTransactionWithError:];
    }

    v6 = [(CCDatabase *)self->_db rollbackTransactionWithError:a3];
    if (v6)
    {
      self->_inTransaction = 0;
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v13[0] = @"Attempted to rollback transaction when none are active";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:13 userInfo:v8];
    CCSetError(a3, v9);

    LOBYTE(v6) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)cleanup:(id *)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_inTransaction)
  {
    v4 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A278];
    v12[0] = @"Attempted to cleanup while transaction is active";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:16 userInfo:v5];
    CCSetError(a3, v6);

    result = 0;
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseConnection cleanup:];
    }

    result = [(CCDatabase *)self->_db cleanup:a3];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)enumeratorForRowResultsOfSelect:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    v26[0] = @"Could not execute non-select command on read-only database connection";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v8 = [v10 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:14 userInfo:v7];
    CCSetError(a4, v8);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v7 = [(CCDatabase *)self->_db enumerateCommand:v6 options:2];
  v8 = [v7 error];
  if (v8)
  {
    CCSetError(a4, v8);
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 commandString];
      v15 = [v6 parameters];
      v16 = [(CCDatabase *)self->_db path];
      v17 = 138413058;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v8;
      _os_log_error_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_ERROR, "Could not execute command=%@ with parameters=%@ in database file at %@, err=%@", &v17, 0x2Au);
    }

    goto LABEL_7;
  }

  v7 = v7;
  v11 = v7;
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)firstResultOfSelect:(id)a3 outNumberValue:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CCDatabaseConnection_firstResultOfSelect_outNumberValue_error___block_invoke;
  v13[3] = &unk_1E7C8B668;
  v13[4] = &v14;
  v9 = [(CCDatabaseConnection *)self enumerateRowResultsOfSelect:v8 error:a5 usingBlock:v13];
  v10 = v9;
  if (a4)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a4 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v10;
}

BOOL __65__CCDatabaseConnection_firstResultOfSelect_outNumberValue_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  *a4 = 1;
  v6 = a2;
  v7 = [v6 columnCount];
  if (v7 >= 2)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Database result has more than a single value: %@", v6, *MEMORY[0x1E696A278]];

    v18[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v11 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:15 userInfo:v13];
    CCSetError(a3, v14);
  }

  else
  {
    v8 = [v6 numberValueAtColumnIndex:0];

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  result = v7 < 2;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)enumerateRowResultsOfSelect:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CCDatabaseConnection *)self enumeratorForRowResultsOfSelect:v8 error:a4];
  v11 = v10;
  if (v10)
  {
    v24 = 0;
    v12 = [v10 nextRow];
    if (v12)
    {
      v13 = v12;
      while (1)
      {
        v14 = objc_autoreleasePoolPush();
        v23 = 0;
        v15 = v9[2](v9, v13, &v23, &v24);
        v16 = v23;
        v17 = v16;
        if (!v15 || v24 == 1)
        {
          break;
        }

        objc_autoreleasePoolPop(v14);
        v18 = [v11 nextRow];

        v13 = v18;
        if (!v18)
        {
          goto LABEL_7;
        }
      }

      objc_autoreleasePoolPop(v14);
    }

    else
    {
LABEL_7:
      v17 = 0;
      LOBYTE(v15) = 1;
    }

    v19 = [v11 error];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v17;
    }

    CCSetError(a4, v21);
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)enumerateRecordResultsOfSelect:(id)a3 recordClass:(Class)a4 error:(id *)a5 usingBlock:(id)a6
{
  v10 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__CCDatabaseConnection_enumerateRecordResultsOfSelect_recordClass_error_usingBlock___block_invoke;
  v13[3] = &unk_1E7C8B690;
  v14 = v10;
  v15 = a4;
  v11 = v10;
  LOBYTE(a5) = [(CCDatabaseConnection *)self enumerateRowResultsOfSelect:a3 error:a5 usingBlock:v13];

  return a5;
}

uint64_t __84__CCDatabaseConnection_enumerateRecordResultsOfSelect_recordClass_error_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 40) recordFromDatabaseValueRow:a2];
  if (!v7)
  {
    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A278];
    v15[0] = @"Unrecognized database record converted from SQLite value row";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:15 userInfo:v10];
    CCSetError(a3, v11);

    goto LABEL_5;
  }

  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    *a4 = 1;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

@end