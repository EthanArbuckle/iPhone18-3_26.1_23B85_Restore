@interface FLSQLiteExecutor
+ (id)_databaseQueue;
+ (void)performBlock:(id)block;
+ (void)performBlockAndWait:(id)wait;
- (BOOL)_finalizeStatement:(sqlite3_stmt *)statement error:(id *)error;
- (BOOL)_handleDatabaseFailureError:(id *)error;
- (BOOL)_unsafe_openDatabase:(id *)database;
- (BOOL)openDatabase:(id *)database;
- (BOOL)performQuery:(id)query error:(id *)error;
- (BOOL)performQuery:(id)query rowHandler:(id)handler;
- (FLSQLiteExecutor)initWithDatabasePath:(id)path;
- (id)_currentDataBaseError;
- (int)_executeQuery:(id)query;
- (int)_unsafe_createDataBase;
- (int64_t)performInsertQuery:(id)query;
- (int64_t)performInsertQuery:(id)query error:(id *)error;
- (sqlite3_stmt)_prepareStatementForQuery:(id)query error:(id *)error;
- (void)_printStatement:(sqlite3_stmt *)statement;
- (void)_stepThroughRowsWithQuery:(id)query statement:(sqlite3_stmt *)statement;
- (void)_unsafe_closeDatabase;
- (void)_unsafe_wipeDatabase;
- (void)closeDatabase;
- (void)commitTransaction;
- (void)performTransactionBlockAndWait:(id)wait;
- (void)wipeDatabase;
@end

@implementation FLSQLiteExecutor

+ (id)_databaseQueue
{
  if (qword_100026B88 != -1)
  {
    sub_100001A48();
  }

  v3 = qword_100026B80;

  return v3;
}

- (int)_unsafe_createDataBase
{
  _databaseQueue = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(_databaseQueue);

  v4 = _FLLogSystemQuery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    databasePath = self->_databasePath;
    v20 = 138412290;
    selfCopy = databasePath;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to open database at path: %@", &v20, 0xCu);
  }

  stringByDeletingLastPathComponent = [(NSString *)self->_databasePath stringByDeletingLastPathComponent];
  if (stringByDeletingLastPathComponent)
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 fileExistsAtPath:stringByDeletingLastPathComponent];

    if ((v8 & 1) == 0)
    {
      v9 = _FLLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100010758(v9);
      }

      v10 = +[NSFileManager defaultManager];
      [v10 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
    }
  }

  v11 = sqlite3_open_v2([(NSString *)self->_databasePath UTF8String], &self->_database, 4194310, 0);
  v12 = _FLLogSystemQuery();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = self->_databasePath;
      v20 = 138412546;
      selfCopy = self;
      v22 = 2112;
      v23 = v14;
      v15 = "%@: Failed to open file at path %@";
      v16 = v12;
      v17 = 22;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
    }
  }

  else if (v13)
  {
    v18 = self->_databasePath;
    v20 = 138412290;
    selfCopy = v18;
    v15 = "Database opened at path: %@";
    v16 = v12;
    v17 = 12;
    goto LABEL_13;
  }

  return v11;
}

- (FLSQLiteExecutor)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v6 = [(FLSQLiteExecutor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databasePath, path);
    v7->_shouldAutomaticallyMigrate = 1;
  }

  return v7;
}

+ (void)performBlock:(id)block
{
  blockCopy = block;
  v4 = os_transaction_create();
  _databaseQueue = [objc_opt_class() _databaseQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008BB4;
  v8[3] = &unk_100020B28;
  v9 = v4;
  v10 = blockCopy;
  v6 = v4;
  v7 = blockCopy;
  dispatch_async(_databaseQueue, v8);
}

+ (void)performBlockAndWait:(id)wait
{
  waitCopy = wait;
  v4 = os_transaction_create();
  _databaseQueue = [objc_opt_class() _databaseQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008CA8;
  v8[3] = &unk_100020B28;
  v9 = v4;
  v10 = waitCopy;
  v6 = v4;
  v7 = waitCopy;
  dispatch_sync(_databaseQueue, v8);
}

- (void)performTransactionBlockAndWait:(id)wait
{
  waitCopy = wait;
  [(FLSQLiteExecutor *)self openTransaction];
  waitCopy[2](waitCopy);

  [(FLSQLiteExecutor *)self commitTransaction];
}

- (void)commitTransaction
{
  if ([(FLSQLiteExecutor *)self _executeQuery:@"COMMIT TRANSACTION"])
  {

    [(FLSQLiteExecutor *)self rollbackTransaction];
  }
}

- (int)_executeQuery:(id)query
{
  queryCopy = query;
  v5 = _FLLogSystemQuery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = queryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Executing query: %@", buf, 0xCu);
  }

  errmsg = 0;
  v6 = sqlite3_exec(self->_database, [queryCopy UTF8String], 0, 0, &errmsg);
  if (errmsg)
  {
    v7 = _FLLogSystemQuery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = queryCopy;
      v12 = 2080;
      v13 = errmsg;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SQL Exec %@ failed with error %s.", buf, 0x16u);
    }

    sqlite3_free(errmsg);
  }

  return v6;
}

- (int64_t)performInsertQuery:(id)query
{
  v4 = [FLSQLiteQuery queryWithString:query];
  v5 = [(FLSQLiteExecutor *)self performInsertQuery:v4 error:0];

  return v5;
}

- (BOOL)performQuery:(id)query rowHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [FLSQLiteQuery queryWithString:query];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000900C;
  v10[3] = &unk_100020B70;
  v11 = handlerCopy;
  v8 = handlerCopy;
  [v7 setRowHandler:v10];
  LOBYTE(self) = [(FLSQLiteExecutor *)self performQuery:v7 error:0];

  return self;
}

- (BOOL)performQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v13 = 0;
  if ([(FLSQLiteExecutor *)self _unsafe_openDatabase:&v13]&& (v7 = [(FLSQLiteExecutor *)self _prepareStatementForQuery:queryCopy error:error]) != 0)
  {
    v8 = v7;
    bindHandler = [queryCopy bindHandler];

    if (bindHandler)
    {
      bindHandler2 = [queryCopy bindHandler];
      (bindHandler2)[2](bindHandler2, v8);
    }

    [(FLSQLiteExecutor *)self _printStatement:v8];
    [(FLSQLiteExecutor *)self _stepThroughRowsWithQuery:queryCopy statement:v8];
    v11 = [(FLSQLiteExecutor *)self _finalizeStatement:v8 error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)performInsertQuery:(id)query error:(id *)error
{
  queryCopy = query;
  if (![(FLSQLiteExecutor *)self _unsafe_openDatabase:error])
  {
    goto LABEL_9;
  }

  v7 = [(FLSQLiteExecutor *)self _prepareStatementForQuery:queryCopy error:error];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  bindHandler = [queryCopy bindHandler];

  if (bindHandler)
  {
    bindHandler2 = [queryCopy bindHandler];
    (bindHandler2)[2](bindHandler2, v8);
  }

  [(FLSQLiteExecutor *)self _printStatement:v8];
  v11 = sqlite3_step(v8) == 101 ? sqlite3_last_insert_rowid(self->_database) : -1;
  if (![(FLSQLiteExecutor *)self _finalizeStatement:v8 error:error])
  {
LABEL_9:
    v11 = -1;
  }

  return v11;
}

- (void)_printStatement:(sqlite3_stmt *)statement
{
  v3 = sqlite3_expanded_sql(statement);
  if (v3)
  {
    v4 = v3;
    v5 = _FLLogSystemQuery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Executing query: %s", &v6, 0xCu);
    }

    sqlite3_free(v4);
  }
}

- (void)_stepThroughRowsWithQuery:(id)query statement:(sqlite3_stmt *)statement
{
  queryCopy = query;
  while (sqlite3_step(statement) == 100)
  {
    rowHandler = [queryCopy rowHandler];

    if (rowHandler)
    {
      v8 = 0;
      rowHandler2 = [queryCopy rowHandler];
      (rowHandler2)[2](rowHandler2, statement, &v8);

      if (v8)
      {
        break;
      }
    }
  }
}

- (sqlite3_stmt)_prepareStatementForQuery:(id)query error:(id *)error
{
  ppStmt = 0;
  database = self->_database;
  queryString = [query queryString];
  LODWORD(database) = sqlite3_prepare_v2(database, [queryString UTF8String], -1, &ppStmt, 0);

  if (!database)
  {
    return ppStmt;
  }

  [(FLSQLiteExecutor *)self _handleDatabaseFailureError:error];
  return 0;
}

- (BOOL)_finalizeStatement:(sqlite3_stmt *)statement error:(id *)error
{
  v6 = sqlite3_finalize(statement);
  if (v6)
  {
    [(FLSQLiteExecutor *)self _handleDatabaseFailureError:error];
  }

  else
  {
    v7 = sqlite3_changes(self->_database);
    v8 = _FLLogSystemQuery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rows changed: %d", v10, 8u);
    }
  }

  return v6 == 0;
}

- (BOOL)_handleDatabaseFailureError:(id *)error
{
  _currentDataBaseError = [(FLSQLiteExecutor *)self _currentDataBaseError];
  if (_currentDataBaseError)
  {
    v6 = _FLLogSystemQuery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = _currentDataBaseError;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Database error detected: %@", &v13, 0xCu);
    }

    if (error)
    {
      v7 = _currentDataBaseError;
      *error = _currentDataBaseError;
    }
  }

  userInfo = [_currentDataBaseError userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"FLSQLErrorCode"];
  integerValue = [v9 integerValue];

  if (integerValue <= 0x1A)
  {
    if (((1 << integerValue) & 0x5000800) != 0)
    {
      v11 = _FLLogSystemQuery();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = _currentDataBaseError;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Database corruption detected: %@", &v13, 0xCu);
      }

      [(FLSQLiteExecutor *)self _unsafe_closeDatabase];
      [(FLSQLiteExecutor *)self _unsafe_wipeDatabase];
    }

    else if (((1 << integerValue) & 0x4400) != 0)
    {
      [(FLSQLiteExecutor *)self _unsafe_closeDatabase];
    }
  }

  return _currentDataBaseError != 0;
}

- (id)_currentDataBaseError
{
  v3 = sqlite3_errcode(self->_database);
  if (v3 == 101 || v3 < 1)
  {
    v10 = 0;
  }

  else
  {
    v5 = v3;
    v6 = [NSString stringWithUTF8String:sqlite3_errmsg(self->_database)];
    v7 = FLErrorDomain;
    v12[0] = NSLocalizedFailureErrorKey;
    v12[1] = @"FLSQLErrorCode";
    v13[0] = v6;
    v8 = [NSNumber numberWithInt:v5];
    v13[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [NSError errorWithDomain:v7 code:1664 userInfo:v9];
  }

  return v10;
}

- (BOOL)openDatabase:(id *)database
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100001438;
  v11 = sub_1000015B8;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009910;
  v6[3] = &unk_100020B98;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [FLSQLiteExecutor performBlockAndWait:v6];
  if (database)
  {
    *database = v8[5];
  }

  v4 = *(v14 + 24);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4;
}

- (BOOL)_unsafe_openDatabase:(id *)database
{
  _databaseQueue = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(_databaseQueue);

  if (self->_database)
  {
    return 1;
  }

  _unsafe_createDataBase = [(FLSQLiteExecutor *)self _unsafe_createDataBase];
  if (!_unsafe_createDataBase)
  {
    [(FLSQLiteExecutor *)self performQuery:@"pragma foreign_keys=on" rowHandler:0];
    if ([(FLSQLiteExecutor *)self shouldAutomaticallyMigrate])
    {
      v11 = [[FLStoreMigrator alloc] initWithExecutor:self];
      [(FLStoreMigrator *)v11 migrateSchemeIfNecessary];
    }

    else
    {
      v11 = _FLLogSystemQuery();
      if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, &v11->super, OS_LOG_TYPE_DEFAULT, "Migration was suppressed...", v12, 2u);
      }
    }

    return 1;
  }

  if (database)
  {
    v8 = FLErrorDomain;
    v13 = @"FLSQLErrorCode";
    v9 = [NSNumber numberWithInt:_unsafe_createDataBase];
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    *database = [NSError errorWithDomain:v8 code:1664 userInfo:v10];
  }

  return 0;
}

- (void)wipeDatabase
{
  v3 = _FLLogSystemQuery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    databasePath = self->_databasePath;
    *buf = 138412290;
    v7 = databasePath;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to wipe database at path: %@", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009C28;
  v5[3] = &unk_100020BC0;
  v5[4] = self;
  [FLSQLiteExecutor performBlockAndWait:v5];
}

- (void)_unsafe_wipeDatabase
{
  [(FLSQLiteExecutor *)self _unsafe_closeDatabase];
  v3 = +[NSFileManager defaultManager];
  databasePath = self->_databasePath;
  p_databasePath = &self->_databasePath;
  v9 = 0;
  v6 = [v3 removeItemAtPath:databasePath error:&v9];
  v7 = v9;

  if (v6)
  {
    v8 = _FLLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001079C(p_databasePath, v8);
    }
  }

  else
  {
    v8 = _FLLogSystemQuery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to wipe database with error: %@", buf, 0xCu);
    }
  }
}

- (void)closeDatabase
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100009DC0;
  v2[3] = &unk_100020BC0;
  v2[4] = self;
  [FLSQLiteExecutor performBlockAndWait:v2];
}

- (void)_unsafe_closeDatabase
{
  _databaseQueue = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(_databaseQueue);

  if (self->_database)
  {
    v4 = _FLLogSystemQuery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      databasePath = self->_databasePath;
      v8 = 138412290;
      v9 = databasePath;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Closing database at path: %@", &v8, 0xCu);
    }

    v6 = sqlite3_close(self->_database);
    v7 = _FLLogSystemQuery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      LODWORD(v9) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Closed database with result: %d", &v8, 8u);
    }

    self->_database = 0;
  }
}

@end