@interface EDPersistenceDatabase
+ (OS_os_log)log;
- (BOOL)__performReadWithCaller:(id)a3 usingBlock:(id)a4;
- (BOOL)__performWriteWithCaller:(id)a3 usingBlock:(id)a4;
- (BOOL)_isIOError:(uint64_t)a1;
- (BOOL)databaseIsCorrupt;
- (BOOL)isNestedDatabaseCall;
- (BOOL)performDatabaseSetupUsingTransaction:(BOOL)a3 block:(id)a4;
- (BOOL)performWithOptions:(unint64_t)a3 caller:(id)a4 block:(id)a5;
- (BOOL)protectedDatabaseIsAvailable;
- (BOOL)writersAreWaiting;
- (EDPersistenceDatabase)initWithBasePath:(id)a3 databaseName:(id)a4 minimumCachedReaderConnections:(unint64_t)a5 schema:(id)a6 protectedSchema:(id)a7 propertyMapper:(id)a8 protectedDatabasePersistence:(id)a9;
- (id)_fileProtectionTypeForDatabaseType:(id)a1;
- (id)_propertyEqualToKey:(uint64_t)a1;
- (id)checkOutConnectionIsWriter:(BOOL)a3;
- (id)requestProtectedDatabaseBackgroundProcessingForDuration:(double)a3 error:(id *)a4;
- (id)urlFileProtectionTypeForDatabaseType:(int64_t)a3;
- (id)urlForDatabasePath:(id)a3 type:(int64_t)a4;
- (id)urlForDatabasePath:(id)a3 type:(int64_t)a4 fileProtection:(id)a5;
- (id)valueForProperty:(id)a3;
- (void)_removeValueForProperty:(void *)a1;
- (void)_scheduleProcessSQLQueryPerformanceData;
- (void)_setValue:(void *)a3 forProperty:;
- (void)checkInConnection:(id)a3;
- (void)closeAllConnections;
- (void)handleExceptionDuringDatabaseBlock:(id)a3;
- (void)performBlockAfterTransaction:(id)a3;
- (void)reconcileJournalWithCompletionBlock:(id)a3;
- (void)scheduleRecurringActivity;
- (void)setValue:(id)a3 forProperty:(id)a4;
- (void)test_tearDown;
@end

@implementation EDPersistenceDatabase

- (BOOL)protectedDatabaseIsAvailable
{
  if (_os_feature_enabled_impl() & 1) != 0 || (EFProtectedDataAvailable())
  {
    return 1;
  }

  if (self)
  {
    protectedDatabaseFile = self->_protectedDatabaseFile;
  }

  else
  {
    protectedDatabaseFile = 0;
  }

  return [(EFProtectedFile *)protectedDatabaseFile backgroundProcessingIsAllowed];
}

- (BOOL)isNestedDatabaseCall
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"_EDPersistenceActiveDatabaseConnection"];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EDPersistenceDatabase_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_74 != -1)
  {
    dispatch_once(&log_onceToken_74, block);
  }

  v2 = log_log_74;

  return v2;
}

void __28__EDPersistenceDatabase_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_74;
  log_log_74 = v1;
}

- (EDPersistenceDatabase)initWithBasePath:(id)a3 databaseName:(id)a4 minimumCachedReaderConnections:(unint64_t)a5 schema:(id)a6 protectedSchema:(id)a7 propertyMapper:(id)a8 protectedDatabasePersistence:(id)a9
{
  v49[2] = *MEMORY[0x1E69E9840];
  v47 = a3;
  v46 = a4;
  v42 = a6;
  v43 = a7;
  v44 = a8;
  v45 = a9;
  v48.receiver = self;
  v48.super_class = EDPersistenceDatabase;
  v14 = [(EDPersistenceDatabase *)&v48 init];
  if (v14)
  {
    v15 = [v47 copy];
    basePath = v14->_basePath;
    v14->_basePath = v15;

    v17 = [v46 copy];
    databaseName = v14->_databaseName;
    v14->_databaseName = v17;

    if (v47)
    {
      v19 = [v47 stringByAppendingPathComponent:@"Protected Index"];
      protectedDatabasePath = v14->_protectedDatabasePath;
      v14->_protectedDatabasePath = v19;

      v21 = [@"Protected Index" stringByAppendingString:@"-wal"];
      v22 = [v47 stringByAppendingPathComponent:v21];
      v23 = objc_alloc(MEMORY[0x1E699B878]);
      v49[0] = v14->_protectedDatabasePath;
      v49[1] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
      v25 = [(EDPersistenceDatabase *)v14 _fileProtectionTypeForDatabaseType:?];
      v26 = [v23 initWithFilePaths:v24 protectionType:v25];
      protectedDatabaseFile = v14->_protectedDatabaseFile;
      v14->_protectedDatabaseFile = v26;
    }

    else
    {
      v28 = v14->_protectedDatabasePath;
      v14->_protectedDatabasePath = @"Protected Index";

      v29 = objc_alloc(MEMORY[0x1E699B870]);
      v30 = v14->_protectedDatabasePath;
      v21 = [(EDPersistenceDatabase *)v14 _fileProtectionTypeForDatabaseType:?];
      v31 = [v29 initWithFilePath:v30 protectionType:v21];
      v22 = v14->_protectedDatabaseFile;
      v14->_protectedDatabaseFile = v31;
    }

    v32 = [v47 stringByAppendingPathComponent:v46];
    fullPath = v14->_fullPath;
    v14->_fullPath = v32;

    objc_storeStrong(&v14->_schema, a6);
    objc_storeStrong(&v14->_protectedSchema, a7);
    objc_storeStrong(&v14->_propertyMapper, a8);
    v34 = [[EDPersistenceDatabaseConnectionPool alloc] initWithDelegate:v14 minimumCachedReaderConnections:a5];
    connectionPool = v14->_connectionPool;
    v14->_connectionPool = v34;

    queryLogger = v14->_queryLogger;
    v14->_queryLogger = 0;

    if ((_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      v37 = objc_alloc_init(EDSQLQueryLogger);
      v38 = v14->_queryLogger;
      v14->_queryLogger = v37;
    }

    objc_storeStrong(&v14->_protectedDatabasePersistence, a9);
    [v45 setDatabase:v14];
    if ([(EDPersistenceDatabase *)v14 enforceDataProtection]&& registerVFSModulesIfNeeded_onceToken != -1)
    {
      [EDPersistenceDatabase initWithBasePath:databaseName:minimumCachedReaderConnections:schema:protectedSchema:propertyMapper:protectedDatabasePersistence:];
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:140 description:{@"%s can only be called from unit tests", "-[EDPersistenceDatabase test_tearDown]"}];
  }

  v4 = [(EDPersistenceDatabase *)self protectedDatabasePersistence];
  [v4 test_tearDown];
}

- (BOOL)__performReadWithCaller:(id)a3 usingBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![(EDPersistenceDatabase *)self setupIsComplete]&& ![(EDPersistenceDatabase *)self isNestedDatabaseCall])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:157 description:@"performReadBlockInDatabase called before database setup is complete"];
  }

  v9 = [(EDPersistenceDatabase *)self performWithOptions:1 caller:v7 block:v8];

  return v9;
}

- (BOOL)__performWriteWithCaller:(id)a3 usingBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![(EDPersistenceDatabase *)self setupIsComplete]&& ![(EDPersistenceDatabase *)self isNestedDatabaseCall])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:162 description:@"performWriteBlockInDatabase called before database setup is complete"];
  }

  v9 = [(EDPersistenceDatabase *)self performWithOptions:3 caller:v7 block:v8];

  return v9;
}

- (BOOL)performDatabaseSetupUsingTransaction:(BOOL)a3 block:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDPersistenceDatabase performDatabaseSetupUsingTransaction:block:]"];
  if (v4)
  {
    v8 = 7;
  }

  else
  {
    v8 = 2;
  }

  v9 = [(EDPersistenceDatabase *)self performWithOptions:v8 caller:v7 block:v6];

  return v9;
}

- (BOOL)performWithOptions:(unint64_t)a3 caller:(id)a4 block:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v46 = a4;
  v48 = a5;
  if ([(EDPersistenceDatabase *)self isNestedDatabaseCall])
  {
    v9 = [MEMORY[0x1E696AF00] currentThread];
    v10 = [v9 threadDictionary];

    v47 = [v10 objectForKeyedSubscript:@"_EDPersistenceActiveDatabaseConnection"];
    v11 = [v47 transactionLabel];
    [v47 setTransactionLabel:v46];
    if ((a3 & 2) != 0)
    {
      v12 = [v10 objectForKeyedSubscript:@"_EDPersistenceReadOnlyDatabaseConnection"];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:179 description:@"Database write block nested inside a readblock."];
      }
    }

    v56 = 0;
    v15 = [v47 performWithOptions:a3 transactionError:&v56 block:v48];
    v16 = v56;
    [v47 setTransactionLabel:v11];
    if ((v15 & 1) == 0)
    {
      [v47 handleError:v16 message:@"Committing transaction in nested block"];
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AF00] currentThread];
    v18 = [v17 threadDictionary];

    v47 = v18;
    v19 = objc_opt_new();
    [v18 setObject:v19 forKeyedSubscript:@"_EDPersistencePostTransactionBlocks"];

    v20 = [(EDPersistenceDatabase *)self checkOutConnectionIsWriter:(a3 >> 1) & 1];
    [v20 setTransactionLabel:v46];
    if (!v20)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      [v41 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:194 description:@"Couldn't get database connection in performBlock"];
    }

    Current = CFAbsoluteTimeGetCurrent();
    v22 = 2;
    *&v23 = 67109376;
    v45 = v23;
    while (1)
    {
      v24 = [(EDPersistenceDatabase *)self protectedDatabasePersistence];
      v25 = [(EDPersistenceDatabase *)self protectedSchema];
      [v24 attachProtectedOrJournalDatabaseToConnectionIfNecessary:v20 withSchema:v25];

      v55 = 0;
      v26 = [v20 performWithOptions:a3 transactionError:&v55 block:v48];
      v27 = v55;
      [v20 setTransactionLabel:0];
      if (v26)
      {
        break;
      }

      if (![v20 protectedDatabaseAttached] || !-[EDPersistenceDatabase _isIOError:](self, v27) && !objc_msgSend(v20, "hadIOError"))
      {
        [v20 handleError:v27 message:@"Committing transaction"];
        goto LABEL_30;
      }

      if (!v22 || (_os_feature_enabled_impl() & 1) != 0)
      {
        v42 = +[EDPersistenceDatabase log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          v43 = EFProtectedDataAvailable();
          if (self)
          {
            protectedDatabaseFile = self->_protectedDatabaseFile;
          }

          else
          {
            protectedDatabaseFile = 0;
          }

          [(EDPersistenceDatabase *)[(EFProtectedFile *)protectedDatabaseFile backgroundProcessingIsAllowed] performWithOptions:buf caller:v43 block:v42];
        }

        abort();
      }

      v28 = +[EDPersistenceDatabase log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = EFProtectedDataAvailable();
        if (self)
        {
          v31 = self->_protectedDatabaseFile;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;
        v33 = [(EFProtectedFile *)v32 backgroundProcessingIsAllowed];
        *buf = v45;
        v59 = v30;
        v60 = 1024;
        v61 = v33;
        _os_log_error_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_ERROR, "Got IOError for transaction, retrying again, EFProtectedData = %d, backgroud processing = %d", buf, 0xEu);
      }

      [v20 setHadIOError:0];
      [v20 close];
      [v20 open];
      if ([(EDPersistenceDatabase *)self protectedDatabaseIsAvailable])
      {
        v29 = +[EDPersistenceDatabase log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [EDPersistenceDatabase performWithOptions:v54 caller:v29 block:?];
        }
      }

      --v22;
    }

    if ([MEMORY[0x1E699ACB0] shouldBlockSQLQueries])
    {
      [MEMORY[0x1E699ACB0] blockForRandomDurationWithMessage:@"Block SQL Query"];
    }

LABEL_30:

    if ((a3 >> 1))
    {
      v34 = CFAbsoluteTimeGetCurrent() - Current;
      if (v34 > 5.0)
      {
        v35 = +[EDPersistenceDatabase log];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [EDPersistenceDatabase performWithOptions:v46 caller:v35 block:v34];
        }
      }
    }

    v10 = v20;
    v15 = v26;
    if (v20)
    {
      [(EDPersistenceDatabase *)self checkInConnection:v20];
    }

    [v18 objectForKeyedSubscript:@"_EDPersistencePostTransactionBlocks"];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v11 = v50 = 0u;
    v36 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v36)
    {
      v37 = *v50;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v50 != v37)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v49 + 1) + 8 * i) + 16))();
        }

        v36 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v36);
    }

    [v47 setObject:0 forKeyedSubscript:@"_EDPersistencePostTransactionBlocks"];
  }

  v39 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (BOOL)_isIOError:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E699B770]])
    {
      v6 = [v4 code] == 10;
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

- (id)checkOutConnectionIsWriter:(BOOL)a3
{
  v3 = a3;
  if ([(EDPersistenceDatabase *)self isNestedDatabaseCall])
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:282 description:@"We should not be checking out a connection on a nested call"];
  }

  v6 = [MEMORY[0x1E696AF00] currentThread];
  v7 = [v6 threadDictionary];

  v8 = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = [v8 serviceName];
  v10 = [v9 isEqual:*MEMORY[0x1E699A720]];

  if (v3)
  {
    if (v10)
    {
      v11 = +[EDPersistenceDatabase log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [EDPersistenceDatabase checkOutConnectionIsWriter:v11];
      }

      v12 = [MEMORY[0x1E699B7B0] currentDevice];
      v13 = [v12 isInternal];

      if (v13)
      {
        triedToCheckoutWriterWhileOnXPCQueue();
      }
    }

    if (self)
    {
      connectionPool = self->_connectionPool;
    }

    else
    {
      connectionPool = 0;
    }

    v15 = [(EDPersistenceDatabaseConnectionPool *)connectionPool writerConnection];
    [v15 setIsWriter:1];
  }

  else
  {
    if (self)
    {
      v16 = self->_connectionPool;
    }

    else
    {
      v16 = 0;
    }

    v15 = [(EDPersistenceDatabaseConnectionPool *)v16 readerConnection];
    [v15 setIsWriter:0];
  }

  if (v15)
  {
    [v7 setObject:v15 forKeyedSubscript:@"_EDPersistenceActiveDatabaseConnection"];
    if (!v3)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_EDPersistenceReadOnlyDatabaseConnection"];
    }

    [v15 setHadIOError:0];
  }

  return v15;
}

- (void)checkInConnection:(id)a3
{
  v9 = a3;
  v4 = [(EDPersistenceDatabase *)self protectedDatabasePersistence];
  [v4 detachProtectedOrJournalDatabaseFromConnectionIfNecessary:v9];

  v5 = [v9 sqlConnection];
  [v5 finalizeStatementsWithError:0];

  v6 = [MEMORY[0x1E696AF00] currentThread];
  v7 = [v6 threadDictionary];

  [v7 removeObjectForKey:@"_EDPersistenceActiveDatabaseConnection"];
  [v7 removeObjectForKey:@"_EDPersistenceReadOnlyDatabaseConnection"];
  [v9 setHadIOError:0];

  if (self)
  {
    connectionPool = self->_connectionPool;
  }

  else
  {
    connectionPool = 0;
  }

  [(EDPersistenceDatabaseConnectionPool *)connectionPool checkInConnection:v9];
}

- (BOOL)databaseIsCorrupt
{
  v7 = *MEMORY[0x1E69E9840];
  [(NSString *)self->_fullPath fileSystemRepresentation];
  v2 = _sqlite3_integrity_check();
  v3 = +[EDPersistenceDatabase log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Integrity check result: %d", v6, 8u);
  }

  result = v2 == 11;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)reconcileJournalWithCompletionBlock:(id)a3
{
  v6 = a3;
  v4 = [(EDPersistenceDatabase *)self protectedDatabasePersistence];
  v5 = [(EDPersistenceDatabase *)self protectedSchema];
  [v4 reconcileJournalsWithSchema:v5 completionBlock:v6];
}

- (id)requestProtectedDatabaseBackgroundProcessingForDuration:(double)a3 error:(id *)a4
{
  if (_os_feature_enabled_impl())
  {
    if (a4)
    {
      *a4 = 0;
    }

    v7 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  }

  else
  {
    if (self)
    {
      protectedDatabaseFile = self->_protectedDatabaseFile;
    }

    else
    {
      protectedDatabaseFile = 0;
    }

    v7 = [(EFProtectedFile *)protectedDatabaseFile requestBackgroundProcessingForDuration:a4 error:a3];
  }

  return v7;
}

- (void)scheduleRecurringActivity
{
  v3 = [(EDPersistenceDatabase *)self protectedDatabasePersistence];
  [v3 scheduleRecurringActivity];

  [(EDPersistenceDatabase *)self _scheduleProcessSQLQueryPerformanceData];
}

- (void)_scheduleProcessSQLQueryPerformanceData
{
  if (a1)
  {
    v2 = [a1 queryLogger];

    if (v2)
    {
      if (_os_feature_enabled_impl())
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __64__EDPersistenceDatabase__scheduleProcessSQLQueryPerformanceData__block_invoke_2;
        aBlock[3] = &unk_1E8251BE0;
        aBlock[4] = a1;
        v3 = _Block_copy(aBlock);
        ef_xpc_activity_register();
      }
    }
  }
}

void __64__EDPersistenceDatabase__scheduleProcessSQLQueryPerformanceData__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9D88], 1);
}

void __64__EDPersistenceDatabase__scheduleProcessSQLQueryPerformanceData__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) queryLogger];
  [v1 submitQueryLogData];
}

- (id)urlFileProtectionTypeForDatabaseType:(int64_t)a3
{
  if ([(EDPersistenceDatabase *)self enforceDataProtection])
  {
    if (_os_feature_enabled_impl())
    {
      if (a3 != 3)
      {
        v4 = MEMORY[0x1E695DAE8];
LABEL_7:
        v5 = *v4;
        goto LABEL_9;
      }
    }

    else if (a3 <= 2)
    {
      v4 = qword_1E8255B98[a3];
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)urlForDatabasePath:(id)a3 type:(int64_t)a4 fileProtection:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v11 setScheme:@"file"];
  [v11 setPath:v9];
  if (a4 >= 3)
  {
    if (a4 == 3)
    {
      v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"cache" value:@"shared"];
      v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"mode" value:{@"memory", v14}];
      v25[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      [v11 setQueryItems:v16];

      goto LABEL_10;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:459 description:@"Invalid database type"];
    goto LABEL_9;
  }

  if (v10 && [(EDPersistenceDatabase *)self enforceDataProtection])
  {
    if ([v10 isEqualToString:*MEMORY[0x1E695DAD8]])
    {
      v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"vfs" value:@"MailClassAVFS"];
      v28[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v11 setQueryItems:v13];

      goto LABEL_10;
    }

    if ([v10 isEqualToString:*MEMORY[0x1E695DAE0]])
    {
      v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"vfs" value:@"MailClassBVFS"];
      v27 = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [v11 setQueryItems:v22];

      goto LABEL_10;
    }

    if ([v10 isEqualToString:*MEMORY[0x1E695DAE8]])
    {
      v23 = [MEMORY[0x1E696AF60] queryItemWithName:@"vfs" value:@"MailClassCVFS"];
      v26 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [v11 setQueryItems:v24];

      goto LABEL_10;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:448 description:@"Unsupported file protection"];
LABEL_9:
  }

LABEL_10:
  v18 = [v11 URL];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)handleExceptionDuringDatabaseBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 callStackReturnAddresses];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v4 appendFormat:@"\t%p\n", objc_msgSend(*(*(&v13 + 1) + 8 * v8++), "unsignedIntegerValue")];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E699B7B0] currentDevice];
  if ([v9 isInternal])
  {
    [v3 reason];
  }

  else
  {
    [v3 name];
  }
  v10 = ;

  v11 = +[EDPersistenceDatabase log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [(EDPersistenceDatabase *)v10 handleExceptionDuringDatabaseBlock:v4, v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)performBlockAfterTransaction:(id)a3
{
  aBlock = a3;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];

  v7 = [v6 objectForKeyedSubscript:@"_EDPersistencePostTransactionBlocks"];
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabase.m" lineNumber:482 description:@"performBlockAfterTransaction called while not in a transaction"];
  }

  v8 = _Block_copy(aBlock);
  [v7 addObject:v8];
}

- (id)valueForProperty:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E699B948]);
  v6 = +[EDPersistenceDatabaseSchema propertiesValueColumnName];
  v7 = +[EDPersistenceDatabaseSchema propertiesTableName];
  v8 = [v5 initWithResultColumn:v6 table:v7];

  v9 = [(EDPersistenceDatabase *)self _propertyEqualToKey:v4];
  [v8 setWhere:v9];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__31;
  v23 = __Block_byref_object_dispose__31;
  v24 = 0;
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDPersistenceDatabase valueForProperty:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__EDPersistenceDatabase_valueForProperty___block_invoke;
  v15[3] = &unk_1E8255B60;
  v11 = v8;
  v16 = v11;
  v18 = &v19;
  v12 = v4;
  v17 = v12;
  [(EDPersistenceDatabase *)self __performReadWithCaller:v10 usingBlock:v15];

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)_propertyEqualToKey:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = MEMORY[0x1E699B8C8];
    v5 = +[EDPersistenceDatabaseSchema propertiesKeyColumnName];
    v6 = [v4 column:v5];
    v7 = [v6 equalTo:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __42__EDPersistenceDatabase_valueForProperty___block_invoke(void *a1, void *a2)
{
  v11[8] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__EDPersistenceDatabase_valueForProperty___block_invoke_2;
  v11[3] = &unk_1E8250418;
  v11[4] = a1[6];
  v4 = [a2 executeSelectStatement:v3 withBlock:v11 error:&v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = +[EDPersistenceDatabase log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      [v5 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __42__EDPersistenceDatabase_valueForProperty___block_invoke_cold_1();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void __42__EDPersistenceDatabase_valueForProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 objectValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setValue:(id)a3 forProperty:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(EDPersistenceDatabase *)self _setValue:v7 forProperty:v6];
  }

  else
  {
    [(EDPersistenceDatabase *)self _removeValueForProperty:v6];
  }
}

- (void)_setValue:(void *)a3 forProperty:
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_alloc(MEMORY[0x1E699B968]);
    v8 = +[EDPersistenceDatabaseSchema propertiesTableName];
    v9 = +[EDPersistenceDatabaseSchema propertiesKeyColumnName];
    v20[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v11 = [v7 initWithTable:v8 conflictTarget:v10];

    v12 = +[EDPersistenceDatabaseSchema propertiesKeyColumnName];
    [v11 setObject:v6 forKeyedSubscript:v12];

    v13 = +[EDPersistenceDatabaseSchema propertiesValueColumnName];
    [v11 setObject:v5 forKeyedSubscript:v13];

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDPersistenceDatabase _setValue:forProperty:]"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__EDPersistenceDatabase__setValue_forProperty___block_invoke;
    v17[3] = &unk_1E8250328;
    v15 = v11;
    v18 = v15;
    v19 = v6;
    [a1 __performWriteWithCaller:v14 usingBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removeValueForProperty:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc(MEMORY[0x1E699B8E8]);
    v5 = +[EDPersistenceDatabaseSchema propertiesTableName];
    v6 = [(EDPersistenceDatabase *)a1 _propertyEqualToKey:v3];
    v7 = [v4 initWithTable:v5 where:v6];

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDPersistenceDatabase _removeValueForProperty:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__EDPersistenceDatabase__removeValueForProperty___block_invoke;
    v10[3] = &unk_1E8250328;
    v9 = v7;
    v11 = v9;
    v12 = v3;
    [a1 __performWriteWithCaller:v8 usingBlock:v10];
  }
}

uint64_t __47__EDPersistenceDatabase__setValue_forProperty___block_invoke(uint64_t a1, void *a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v10[0] = 0;
  v4 = [a2 executeUpsertStatement:v3 error:v10];
  v5 = v10[0];
  if ((v4 & 1) == 0)
  {
    v6 = +[EDPersistenceDatabase log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      [v5 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __47__EDPersistenceDatabase__setValue_forProperty___block_invoke_cold_1();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __49__EDPersistenceDatabase__removeValueForProperty___block_invoke(uint64_t a1, void *a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v10[0] = 0;
  v4 = [a2 executeDeleteStatement:v3 error:v10];
  v5 = v10[0];
  if ((v4 & 1) == 0)
  {
    v6 = +[EDPersistenceDatabase log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      [v5 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __49__EDPersistenceDatabase__removeValueForProperty___block_invoke_cold_1();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)urlForDatabasePath:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [(EDPersistenceDatabase *)self urlFileProtectionTypeForDatabaseType:a4];
  v8 = [(EDPersistenceDatabase *)self urlForDatabasePath:v6 type:a4 fileProtection:v7];

  return v8;
}

- (id)_fileProtectionTypeForDatabaseType:(id)a1
{
  if (a1)
  {
    if ([a1 enforceDataProtection])
    {
      if (_os_feature_enabled_impl())
      {
        if (a2 != 3)
        {
          v4 = MEMORY[0x1E696A388];
LABEL_8:
          a1 = *v4;
LABEL_10:
          v2 = vars8;
          goto LABEL_11;
        }
      }

      else if (a2 <= 2)
      {
        v4 = qword_1E8255B80[a2];
        goto LABEL_8;
      }
    }

    a1 = 0;
    goto LABEL_10;
  }

LABEL_11:

  return a1;
}

- (BOOL)writersAreWaiting
{
  if (self)
  {
    self = self->_connectionPool;
  }

  return [(EDPersistenceDatabase *)self writersWaiting]!= 0;
}

- (void)closeAllConnections
{
  if (self)
  {
    self = self->_connectionPool;
  }

  [(EDPersistenceDatabase *)self flush];
}

- (void)performWithOptions:(uint8_t *)buf caller:(_BYTE *)a2 block:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Got IOError for transaction", buf, 2u);
}

- (void)performWithOptions:(int)a3 caller:(os_log_t)log block:.cold.2(char a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a3;
  *(buf + 4) = 1024;
  *(buf + 10) = a1 & 1;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Got IOError three times in a row, aborting, EFProtectedData = %d, backgroud processing = %d", buf, 0xEu);
}

- (void)performWithOptions:(uint64_t)a1 caller:(NSObject *)a2 block:(double)a3 .cold.3(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "%{public}@ held the database write connection for %0.05f seconds", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleExceptionDuringDatabaseBlock:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Exception raised during transaction, %{public}@\nStack:\n%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __42__EDPersistenceDatabase_valueForProperty___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error getting property %{public}@: %{public}@", v4, v5);
}

void __47__EDPersistenceDatabase__setValue_forProperty___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error setting property %{public}@: %{public}@", v4, v5);
}

void __49__EDPersistenceDatabase__removeValueForProperty___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error removing property %{public}@: %{public}@", v4, v5);
}

@end