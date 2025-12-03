@interface IMDDatabaseDowngradeHelper
- (BOOL)_readIntegerFromQuery:(id)query resultBlock:(id)block;
- (BOOL)beginTransaction:(id)transaction;
- (BOOL)cloneTableContents:(id)contents withOperation:(IMDSqlOperation *)operation resultBlock:(id)block;
- (BOOL)close:(id)close;
- (BOOL)commitTransaction:(id)transaction;
- (BOOL)createIndexes:(id)indexes;
- (BOOL)createTables:(id)tables;
- (BOOL)createTriggers:(id)triggers;
- (BOOL)importDataFromWhitetailDatabaseWithSqlOperation:(IMDSqlOperation *)operation resultBlock:(id)block;
- (BOOL)open:(id)open;
- (BOOL)readDatabaseVersion:(id)version;
- (BOOL)readRowCountForTable:(id)table resultBlock:(id)block;
- (BOOL)revertTransaction:(id)transaction;
- (BOOL)runArrayOfQueries:(id)queries resultBlock:(id)block;
- (BOOL)runSimpleQuery:(id)query resultBlock:(id)block;
- (BOOL)writeDatabaseVersion:(int64_t)version resultBlock:(id)block;
- (IMDDatabaseDowngradeHelper)initWithPath:(id)path tableNames:(id)names createTablesSQL:(id)l createIndexesSQL:(id)qL createTriggersSQL:(id)sQL downgradesToVersion:(int64_t)version;
- (id)errorFromResult:(int)result query:(id)query;
- (void)dealloc;
@end

@implementation IMDDatabaseDowngradeHelper

- (IMDDatabaseDowngradeHelper)initWithPath:(id)path tableNames:(id)names createTablesSQL:(id)l createIndexesSQL:(id)qL createTriggersSQL:(id)sQL downgradesToVersion:(int64_t)version
{
  v26.receiver = self;
  v26.super_class = IMDDatabaseDowngradeHelper;
  v16 = [(IMDDatabaseDowngradeHelper *)&v26 init];
  if (v16)
  {
    v16->_path = objc_msgSend_copy(path, v14, v15);
    v16->_tableNames = objc_msgSend_copy(names, v17, v18);
    v16->_createTablesSQL = objc_msgSend_copy(l, v19, v20);
    v16->_createIndexesSQL = objc_msgSend_copy(qL, v21, v22);
    v16->_createTriggersSQL = objc_msgSend_copy(sQL, v23, v24);
    v16->_downgradesToVersion = version;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDDatabaseDowngradeHelper;
  [(IMDDatabaseDowngradeHelper *)&v3 dealloc];
}

- (BOOL)runSimpleQuery:(id)query resultBlock:(id)block
{
  ppStmt = 0;
  database = self->_database;
  v8 = objc_msgSend_UTF8String(query, a2, query);
  v9 = sqlite3_prepare_v2(database, v8, -1, &ppStmt, 0);
  v11 = objc_msgSend_errorFromResult_query_(self, v10, v9, query);
  if (!v11)
  {
    do
    {
      v12 = sqlite3_step(ppStmt);
    }

    while (v12 == 100);
    v11 = objc_msgSend_errorFromResult_query_(self, v13, v12, query);
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  if (block)
  {
    (*(block + 2))(block, v11 == 0, v11);
  }

  return v11 == 0;
}

- (BOOL)runArrayOfQueries:(id)queries resultBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(queries, a2, &v15, v19, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(queries);
      }

      resultBlock = objc_msgSend_runSimpleQuery_resultBlock_(self, v8, *(*(&v15 + 1) + 8 * v11), block);
      if (!resultBlock)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(queries, v8, &v15, v19, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(resultBlock) = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return resultBlock;
}

- (BOOL)createTables:(id)tables
{
  TablesSQL = objc_msgSend_createTablesSQL(self, a2, tables);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, TablesSQL);
}

- (BOOL)createIndexes:(id)indexes
{
  IndexesSQL = objc_msgSend_createIndexesSQL(self, a2, indexes);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, IndexesSQL);
}

- (BOOL)createTriggers:(id)triggers
{
  TriggersSQL = objc_msgSend_createTriggersSQL(self, a2, triggers);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, TriggersSQL);
}

- (BOOL)beginTransaction:(id)transaction
{
  result = objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"BEGIN EXCLUSIVE;", transaction);
  self->_inTransaction = result;
  return result;
}

- (BOOL)commitTransaction:(id)transaction
{
  if (self->_inTransaction)
  {
    if (objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"COMMIT;", transaction))
    {
      self->_inTransaction = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    v4 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Skipping commit of a non-existent transaction in Downgraded database", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)revertTransaction:(id)transaction
{
  if (self->_inTransaction)
  {
    if (objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"REVERT;", transaction))
    {
      self->_inTransaction = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    v4 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Skipping revert of a non-existant transaction in Downgraded database.", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)writeDatabaseVersion:(int64_t)version resultBlock:(id)block
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"UPDATE _SqliteDatabaseProperties SET value = %ld WHERE key = '_ClientVersion';", version);

  return objc_msgSend_runSimpleQuery_resultBlock_(self, v6, v7, block);
}

- (BOOL)cloneTableContents:(id)contents withOperation:(IMDSqlOperation *)operation resultBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = contents;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Cloning and downgrading table '%@' into Downgraded Database", buf, 0xCu);
  }

  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"PRAGMA dest.table_info(%@);", contents);
  Rows = _IMDSqlOperationGetRows(operation, v10);
  *buf = 0;
  IMDSqlOperationGetError(operation, buf);
  v14 = *buf;
  if (!*buf)
  {
    contentsCopy = contents;
    blockCopy = block;
    v15 = objc_msgSend_string(MEMORY[0x1E696AD60], v12, v13);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(Rows, v16, &v33, v37, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(Rows);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          v24 = objc_msgSend_length(v15, v18, v19);
          v26 = objc_msgSend_objectForKeyedSubscript_(v23, v25, @"name");
          if (v24)
          {
            objc_msgSend_appendFormat_(v15, v27, @", %@", v26);
          }

          else
          {
            objc_msgSend_appendString_(v15, v27, v26);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(Rows, v18, &v33, v37, 16);
      }

      while (v20);
    }

    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"INSERT INTO dest.%@ SELECT %@ FROM main.%@", contentsCopy, v15, contentsCopy);
    _IMDSqlOperationRunQuery(operation, v28, 0, 0);
    *buf = 0;
    IMDSqlOperationGetError(operation, buf);
    v14 = *buf;
    block = blockCopy;
  }

  if (block)
  {
    (*(block + 2))(block, v14 == 0, v14);
  }

  result = v14 == 0;
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)importDataFromWhitetailDatabaseWithSqlOperation:(IMDSqlOperation *)operation resultBlock:(id)block
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Downgrade: turning off foreign keys", buf, 2u);
  }

  _IMDSqlOperationRunQuery(operation, @"PRAGMA foreign_keys = OFF;", 0, 0);
  *buf = 0;
  v39 = buf;
  v40 = 0x3052000000;
  v41 = sub_1B7AE18A4;
  v42 = sub_1B7AE2440;
  *v44 = 0;
  IMDSqlOperationGetError(operation, v44);
  v43 = *v44;
  if (!*(v39 + 5))
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Downgrade: attaching new (empty so far) downgraded database to the real database", v44, 2u);
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_msgSend_path(self, v9, v10);
    v14 = objc_msgSend_stringWithFormat_(v11, v13, @"ATTACH '%@' AS 'dest';", v12);
    _IMDSqlOperationRunQuery(operation, v14, 0, 0);
    *v44 = 0;
    IMDSqlOperationGetError(operation, v44);
    v15 = *v44;
    *(v39 + 5) = *v44;
    if (!v15)
    {
      v16 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v44 = 0;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Downgrade: Beginning transaction", v44, 2u);
      }

      IMDSqlOperationBeginTransaction(operation);
      blockCopy = block;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = objc_msgSend_tableNames(self, v17, v18);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v45, 16);
      if (v21)
      {
        v22 = *v35;
LABEL_11:
        v23 = 0;
        while (1)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v34 + 1) + 8 * v23);
          v25 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *v44 = 138412290;
            *&v44[4] = v24;
            _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Downgrade: Copying table: %@", v44, 0xCu);
          }

          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = sub_1B7B033B8;
          v33[3] = &unk_1E7CB66D8;
          v33[4] = buf;
          objc_msgSend_cloneTableContents_withOperation_resultBlock_(self, v26, v24, operation, v33);
          if (*(v39 + 5))
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v27, &v34, v45, 16);
            if (v21)
            {
              goto LABEL_11;
            }

            break;
          }
        }
      }

      IMDSqlOperationCommitOrRevertTransaction(operation);
      block = blockCopy;
    }
  }

  v28 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v44 = 0;
    _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Downgrade: Detaching database", v44, 2u);
  }

  _IMDSqlOperationRunQuery(operation, @"DETACH DATABASE 'dest';", 0, 0);
  if (block)
  {
    (*(block + 2))(block, *(v39 + 5) == 0);
  }

  v29 = *(v39 + 5) == 0;
  _Block_object_dispose(buf, 8);
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)errorFromResult:(int)result query:(id)query
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = (result - 100) < 2 || result == 0;
  if (v5 || (v10 = IMDCreateCFErrorWithQueryErrorCode(result, self->_database, query)) == 0)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      queryCopy = query;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Downgraded database SQL query ran ok: '%@'", &v12, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = v10;
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB1FC(query, v7, v11);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)open:(id)open
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = path;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Opening Downgraded database at: '%@'...", &buf, 0xCu);
  }

  v9 = objc_msgSend_UTF8String(self->_path, v6, v7);
  v10 = sqlite3_open_v2(v9, &self->_database, 6, 0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3052000000;
  v26 = sub_1B7AE18A4;
  v27 = sub_1B7AE2440;
  v28 = objc_msgSend_errorFromResult_query_(self, v11, v10, @"Open database");
  v13 = *(&buf + 1);
  if (!*(*(&buf + 1) + 40))
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1B7B037CC;
    v23[3] = &unk_1E7CB66D8;
    v23[4] = &buf;
    objc_msgSend_runSimpleQuery_resultBlock_(self, v12, @"PRAGMA page_size = 4096;", v23);
    v13 = *(&buf + 1);
    if (!*(*(&buf + 1) + 40))
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1B7B037DC;
      v22[3] = &unk_1E7CB66D8;
      v22[4] = &buf;
      objc_msgSend_runSimpleQuery_resultBlock_(self, v14, @"PRAGMA auto_vacuum = 2;", v22);
      v13 = *(&buf + 1);
      if (!*(*(&buf + 1) + 40))
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_1B7B037EC;
        v21[3] = &unk_1E7CB66D8;
        v21[4] = &buf;
        objc_msgSend_runSimpleQuery_resultBlock_(self, v15, @"PRAGMA journal_mode = wal;", v21);
        v13 = *(&buf + 1);
        if (!*(*(&buf + 1) + 40))
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = sub_1B7B037FC;
          v20[3] = &unk_1E7CB66D8;
          v20[4] = &buf;
          objc_msgSend_runSimpleQuery_resultBlock_(self, v16, @"PRAGMA foreign_keys = OFF;", v20);
          v13 = *(&buf + 1);
        }
      }
    }
  }

  if (open)
  {
    (*(open + 2))(open, *(v13 + 40) == 0);
    v13 = *(&buf + 1);
  }

  v17 = *(v13 + 40) == 0;
  _Block_object_dispose(&buf, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)close:(id)close
{
  v12 = *MEMORY[0x1E69E9840];
  database = self->_database;
  if (database)
  {
    sqlite3_close_v2(database);
    self->_database = 0;
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      path = self->_path;
      v10 = 138412290;
      v11 = path;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Closed Downgraded database at: '%@'...", &v10, 0xCu);
    }
  }

  if (close)
  {
    (*(close + 2))(close, 1, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_readIntegerFromQuery:(id)query resultBlock:(id)block
{
  ppStmt = 0;
  database = self->_database;
  v8 = objc_msgSend_UTF8String(query, a2, query);
  v9 = sqlite3_prepare_v2(database, v8, -1, &ppStmt, 0);
  v11 = objc_msgSend_errorFromResult_query_(self, v10, v9, query);
  if (v11)
  {
    v12 = v11;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = sqlite3_step(ppStmt);
    if (v14 == 100)
    {
      do
      {
        v13 = sqlite3_column_int64(ppStmt, 0);
        v16 = sqlite3_step(ppStmt);
      }

      while (v16 == 100);
      v18 = objc_msgSend_errorFromResult_query_(self, v17, v16, query);
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = objc_msgSend_errorFromResult_query_(self, v15, v14, query);
    }

    v12 = v18;
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  if (block)
  {
    (*(block + 2))(block, v12 == 0, v12, v13);
  }

  return v12 == 0;
}

- (BOOL)readDatabaseVersion:(id)version
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = '_ClientVersion';");

  return MEMORY[0x1EEE66B58](self, sel__readIntegerFromQuery_resultBlock_, v4);
}

- (BOOL)readRowCountForTable:(id)table resultBlock:(id)block
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SELECT count(*) FROM %@;", table);

  return MEMORY[0x1EEE66B58](self, sel__readIntegerFromQuery_resultBlock_, v5);
}

@end