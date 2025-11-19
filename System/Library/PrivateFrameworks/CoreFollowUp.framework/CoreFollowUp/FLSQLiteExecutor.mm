@interface FLSQLiteExecutor
+ (id)_databaseQueue;
+ (void)performBlock:(id)a3;
+ (void)performBlockAndWait:(id)a3;
- (BOOL)_finalizeStatement:(sqlite3_stmt *)a3 error:(id *)a4;
- (BOOL)_handleDatabaseFailureError:(id *)a3;
- (BOOL)_unsafe_openDatabase:(id *)a3;
- (BOOL)openDatabase:(id *)a3;
- (BOOL)performQuery:(id)a3 error:(id *)a4;
- (BOOL)performQuery:(id)a3 rowHandler:(id)a4;
- (FLSQLiteExecutor)initWithDatabasePath:(id)a3;
- (id)_currentDataBaseError;
- (int)_executeQuery:(id)a3;
- (int)_unsafe_createDataBase;
- (int64_t)performInsertQuery:(id)a3;
- (int64_t)performInsertQuery:(id)a3 error:(id *)a4;
- (sqlite3_stmt)_prepareStatementForQuery:(id)a3 error:(id *)a4;
- (void)_printStatement:(sqlite3_stmt *)a3;
- (void)_stepThroughRowsWithQuery:(id)a3 statement:(sqlite3_stmt *)a4;
- (void)_unsafe_closeDatabase;
- (void)_unsafe_wipeDatabase;
- (void)closeDatabase;
- (void)commitTransaction;
- (void)performTransactionBlockAndWait:(id)a3;
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
  v3 = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(v3);

  v4 = _FLLogSystemQuery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    databasePath = self->_databasePath;
    v20 = 138412290;
    v21 = databasePath;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to open database at path: %@", &v20, 0xCu);
  }

  v6 = [(NSString *)self->_databasePath stringByDeletingLastPathComponent];
  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    if ((v8 & 1) == 0)
    {
      v9 = _FLLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100010758(v9);
      }

      v10 = +[NSFileManager defaultManager];
      [v10 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
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
      v21 = self;
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
    v21 = v18;
    v15 = "Database opened at path: %@";
    v16 = v12;
    v17 = 12;
    goto LABEL_13;
  }

  return v11;
}

- (FLSQLiteExecutor)initWithDatabasePath:(id)a3
{
  v5 = a3;
  v6 = [(FLSQLiteExecutor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databasePath, a3);
    v7->_shouldAutomaticallyMigrate = 1;
  }

  return v7;
}

+ (void)performBlock:(id)a3
{
  v3 = a3;
  v4 = os_transaction_create();
  v5 = [objc_opt_class() _databaseQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008BB4;
  v8[3] = &unk_100020B28;
  v9 = v4;
  v10 = v3;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

+ (void)performBlockAndWait:(id)a3
{
  v3 = a3;
  v4 = os_transaction_create();
  v5 = [objc_opt_class() _databaseQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008CA8;
  v8[3] = &unk_100020B28;
  v9 = v4;
  v10 = v3;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, v8);
}

- (void)performTransactionBlockAndWait:(id)a3
{
  v4 = a3;
  [(FLSQLiteExecutor *)self openTransaction];
  v4[2](v4);

  [(FLSQLiteExecutor *)self commitTransaction];
}

- (void)commitTransaction
{
  if ([(FLSQLiteExecutor *)self _executeQuery:@"COMMIT TRANSACTION"])
  {

    [(FLSQLiteExecutor *)self rollbackTransaction];
  }
}

- (int)_executeQuery:(id)a3
{
  v4 = a3;
  v5 = _FLLogSystemQuery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Executing query: %@", buf, 0xCu);
  }

  errmsg = 0;
  v6 = sqlite3_exec(self->_database, [v4 UTF8String], 0, 0, &errmsg);
  if (errmsg)
  {
    v7 = _FLLogSystemQuery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2080;
      v13 = errmsg;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SQL Exec %@ failed with error %s.", buf, 0x16u);
    }

    sqlite3_free(errmsg);
  }

  return v6;
}

- (int64_t)performInsertQuery:(id)a3
{
  v4 = [FLSQLiteQuery queryWithString:a3];
  v5 = [(FLSQLiteExecutor *)self performInsertQuery:v4 error:0];

  return v5;
}

- (BOOL)performQuery:(id)a3 rowHandler:(id)a4
{
  v6 = a4;
  v7 = [FLSQLiteQuery queryWithString:a3];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000900C;
  v10[3] = &unk_100020B70;
  v11 = v6;
  v8 = v6;
  [v7 setRowHandler:v10];
  LOBYTE(self) = [(FLSQLiteExecutor *)self performQuery:v7 error:0];

  return self;
}

- (BOOL)performQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  if ([(FLSQLiteExecutor *)self _unsafe_openDatabase:&v13]&& (v7 = [(FLSQLiteExecutor *)self _prepareStatementForQuery:v6 error:a4]) != 0)
  {
    v8 = v7;
    v9 = [v6 bindHandler];

    if (v9)
    {
      v10 = [v6 bindHandler];
      (v10)[2](v10, v8);
    }

    [(FLSQLiteExecutor *)self _printStatement:v8];
    [(FLSQLiteExecutor *)self _stepThroughRowsWithQuery:v6 statement:v8];
    v11 = [(FLSQLiteExecutor *)self _finalizeStatement:v8 error:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)performInsertQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(FLSQLiteExecutor *)self _unsafe_openDatabase:a4])
  {
    goto LABEL_9;
  }

  v7 = [(FLSQLiteExecutor *)self _prepareStatementForQuery:v6 error:a4];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v6 bindHandler];

  if (v9)
  {
    v10 = [v6 bindHandler];
    (v10)[2](v10, v8);
  }

  [(FLSQLiteExecutor *)self _printStatement:v8];
  v11 = sqlite3_step(v8) == 101 ? sqlite3_last_insert_rowid(self->_database) : -1;
  if (![(FLSQLiteExecutor *)self _finalizeStatement:v8 error:a4])
  {
LABEL_9:
    v11 = -1;
  }

  return v11;
}

- (void)_printStatement:(sqlite3_stmt *)a3
{
  v3 = sqlite3_expanded_sql(a3);
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

- (void)_stepThroughRowsWithQuery:(id)a3 statement:(sqlite3_stmt *)a4
{
  v5 = a3;
  while (sqlite3_step(a4) == 100)
  {
    v6 = [v5 rowHandler];

    if (v6)
    {
      v8 = 0;
      v7 = [v5 rowHandler];
      (v7)[2](v7, a4, &v8);

      if (v8)
      {
        break;
      }
    }
  }
}

- (sqlite3_stmt)_prepareStatementForQuery:(id)a3 error:(id *)a4
{
  ppStmt = 0;
  database = self->_database;
  v7 = [a3 queryString];
  LODWORD(database) = sqlite3_prepare_v2(database, [v7 UTF8String], -1, &ppStmt, 0);

  if (!database)
  {
    return ppStmt;
  }

  [(FLSQLiteExecutor *)self _handleDatabaseFailureError:a4];
  return 0;
}

- (BOOL)_finalizeStatement:(sqlite3_stmt *)a3 error:(id *)a4
{
  v6 = sqlite3_finalize(a3);
  if (v6)
  {
    [(FLSQLiteExecutor *)self _handleDatabaseFailureError:a4];
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

- (BOOL)_handleDatabaseFailureError:(id *)a3
{
  v5 = [(FLSQLiteExecutor *)self _currentDataBaseError];
  if (v5)
  {
    v6 = _FLLogSystemQuery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Database error detected: %@", &v13, 0xCu);
    }

    if (a3)
    {
      v7 = v5;
      *a3 = v5;
    }
  }

  v8 = [v5 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"FLSQLErrorCode"];
  v10 = [v9 integerValue];

  if (v10 <= 0x1A)
  {
    if (((1 << v10) & 0x5000800) != 0)
    {
      v11 = _FLLogSystemQuery();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Database corruption detected: %@", &v13, 0xCu);
      }

      [(FLSQLiteExecutor *)self _unsafe_closeDatabase];
      [(FLSQLiteExecutor *)self _unsafe_wipeDatabase];
    }

    else if (((1 << v10) & 0x4400) != 0)
    {
      [(FLSQLiteExecutor *)self _unsafe_closeDatabase];
    }
  }

  return v5 != 0;
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

- (BOOL)openDatabase:(id *)a3
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
  if (a3)
  {
    *a3 = v8[5];
  }

  v4 = *(v14 + 24);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4;
}

- (BOOL)_unsafe_openDatabase:(id *)a3
{
  v5 = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_database)
  {
    return 1;
  }

  v7 = [(FLSQLiteExecutor *)self _unsafe_createDataBase];
  if (!v7)
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

  if (a3)
  {
    v8 = FLErrorDomain;
    v13 = @"FLSQLErrorCode";
    v9 = [NSNumber numberWithInt:v7];
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    *a3 = [NSError errorWithDomain:v8 code:1664 userInfo:v10];
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
  v3 = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(v3);

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