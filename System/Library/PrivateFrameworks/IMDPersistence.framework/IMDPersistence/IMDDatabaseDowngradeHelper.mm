@interface IMDDatabaseDowngradeHelper
- (BOOL)_readIntegerFromQuery:(id)a3 resultBlock:(id)a4;
- (BOOL)beginTransaction:(id)a3;
- (BOOL)cloneTableContents:(id)a3 withOperation:(IMDSqlOperation *)a4 resultBlock:(id)a5;
- (BOOL)close:(id)a3;
- (BOOL)commitTransaction:(id)a3;
- (BOOL)createIndexes:(id)a3;
- (BOOL)createTables:(id)a3;
- (BOOL)createTriggers:(id)a3;
- (BOOL)importDataFromWhitetailDatabaseWithSqlOperation:(IMDSqlOperation *)a3 resultBlock:(id)a4;
- (BOOL)open:(id)a3;
- (BOOL)readDatabaseVersion:(id)a3;
- (BOOL)readRowCountForTable:(id)a3 resultBlock:(id)a4;
- (BOOL)revertTransaction:(id)a3;
- (BOOL)runArrayOfQueries:(id)a3 resultBlock:(id)a4;
- (BOOL)runSimpleQuery:(id)a3 resultBlock:(id)a4;
- (BOOL)writeDatabaseVersion:(int64_t)a3 resultBlock:(id)a4;
- (IMDDatabaseDowngradeHelper)initWithPath:(id)a3 tableNames:(id)a4 createTablesSQL:(id)a5 createIndexesSQL:(id)a6 createTriggersSQL:(id)a7 downgradesToVersion:(int64_t)a8;
- (id)errorFromResult:(int)a3 query:(id)a4;
- (void)dealloc;
@end

@implementation IMDDatabaseDowngradeHelper

- (IMDDatabaseDowngradeHelper)initWithPath:(id)a3 tableNames:(id)a4 createTablesSQL:(id)a5 createIndexesSQL:(id)a6 createTriggersSQL:(id)a7 downgradesToVersion:(int64_t)a8
{
  v26.receiver = self;
  v26.super_class = IMDDatabaseDowngradeHelper;
  v16 = [(IMDDatabaseDowngradeHelper *)&v26 init];
  if (v16)
  {
    v16->_path = objc_msgSend_copy(a3, v14, v15);
    v16->_tableNames = objc_msgSend_copy(a4, v17, v18);
    v16->_createTablesSQL = objc_msgSend_copy(a5, v19, v20);
    v16->_createIndexesSQL = objc_msgSend_copy(a6, v21, v22);
    v16->_createTriggersSQL = objc_msgSend_copy(a7, v23, v24);
    v16->_downgradesToVersion = a8;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDDatabaseDowngradeHelper;
  [(IMDDatabaseDowngradeHelper *)&v3 dealloc];
}

- (BOOL)runSimpleQuery:(id)a3 resultBlock:(id)a4
{
  ppStmt = 0;
  database = self->_database;
  v8 = objc_msgSend_UTF8String(a3, a2, a3);
  v9 = sqlite3_prepare_v2(database, v8, -1, &ppStmt, 0);
  v11 = objc_msgSend_errorFromResult_query_(self, v10, v9, a3);
  if (!v11)
  {
    do
    {
      v12 = sqlite3_step(ppStmt);
    }

    while (v12 == 100);
    v11 = objc_msgSend_errorFromResult_query_(self, v13, v12, a3);
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  if (a4)
  {
    (*(a4 + 2))(a4, v11 == 0, v11);
  }

  return v11 == 0;
}

- (BOOL)runArrayOfQueries:(id)a3 resultBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, a2, &v15, v19, 16);
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
        objc_enumerationMutation(a3);
      }

      resultBlock = objc_msgSend_runSimpleQuery_resultBlock_(self, v8, *(*(&v15 + 1) + 8 * v11), a4);
      if (!resultBlock)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v8, &v15, v19, 16);
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

- (BOOL)createTables:(id)a3
{
  TablesSQL = objc_msgSend_createTablesSQL(self, a2, a3);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, TablesSQL);
}

- (BOOL)createIndexes:(id)a3
{
  IndexesSQL = objc_msgSend_createIndexesSQL(self, a2, a3);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, IndexesSQL);
}

- (BOOL)createTriggers:(id)a3
{
  TriggersSQL = objc_msgSend_createTriggersSQL(self, a2, a3);

  return MEMORY[0x1EEE66B58](self, sel_runArrayOfQueries_resultBlock_, TriggersSQL);
}

- (BOOL)beginTransaction:(id)a3
{
  result = objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"BEGIN EXCLUSIVE;", a3);
  self->_inTransaction = result;
  return result;
}

- (BOOL)commitTransaction:(id)a3
{
  if (self->_inTransaction)
  {
    if (objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"COMMIT;", a3))
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

- (BOOL)revertTransaction:(id)a3
{
  if (self->_inTransaction)
  {
    if (objc_msgSend_runSimpleQuery_resultBlock_(self, a2, @"REVERT;", a3))
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

- (BOOL)writeDatabaseVersion:(int64_t)a3 resultBlock:(id)a4
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"UPDATE _SqliteDatabaseProperties SET value = %ld WHERE key = '_ClientVersion';", a3);

  return objc_msgSend_runSimpleQuery_resultBlock_(self, v6, v7, a4);
}

- (BOOL)cloneTableContents:(id)a3 withOperation:(IMDSqlOperation *)a4 resultBlock:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = a3;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Cloning and downgrading table '%@' into Downgraded Database", buf, 0xCu);
  }

  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"PRAGMA dest.table_info(%@);", a3);
  Rows = _IMDSqlOperationGetRows(a4, v10);
  *buf = 0;
  IMDSqlOperationGetError(a4, buf);
  v14 = *buf;
  if (!*buf)
  {
    v31 = a3;
    v32 = a5;
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

    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"INSERT INTO dest.%@ SELECT %@ FROM main.%@", v31, v15, v31);
    _IMDSqlOperationRunQuery(a4, v28, 0, 0);
    *buf = 0;
    IMDSqlOperationGetError(a4, buf);
    v14 = *buf;
    a5 = v32;
  }

  if (a5)
  {
    (*(a5 + 2))(a5, v14 == 0, v14);
  }

  result = v14 == 0;
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)importDataFromWhitetailDatabaseWithSqlOperation:(IMDSqlOperation *)a3 resultBlock:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Downgrade: turning off foreign keys", buf, 2u);
  }

  _IMDSqlOperationRunQuery(a3, @"PRAGMA foreign_keys = OFF;", 0, 0);
  *buf = 0;
  v39 = buf;
  v40 = 0x3052000000;
  v41 = sub_1B7AE18A4;
  v42 = sub_1B7AE2440;
  *v44 = 0;
  IMDSqlOperationGetError(a3, v44);
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
    _IMDSqlOperationRunQuery(a3, v14, 0, 0);
    *v44 = 0;
    IMDSqlOperationGetError(a3, v44);
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

      IMDSqlOperationBeginTransaction(a3);
      v32 = a4;
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
          objc_msgSend_cloneTableContents_withOperation_resultBlock_(self, v26, v24, a3, v33);
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

      IMDSqlOperationCommitOrRevertTransaction(a3);
      a4 = v32;
    }
  }

  v28 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v44 = 0;
    _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Downgrade: Detaching database", v44, 2u);
  }

  _IMDSqlOperationRunQuery(a3, @"DETACH DATABASE 'dest';", 0, 0);
  if (a4)
  {
    (*(a4 + 2))(a4, *(v39 + 5) == 0);
  }

  v29 = *(v39 + 5) == 0;
  _Block_object_dispose(buf, 8);
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)errorFromResult:(int)a3 query:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = (a3 - 100) < 2 || a3 == 0;
  if (v5 || (v10 = IMDCreateCFErrorWithQueryErrorCode(a3, self->_database, a4)) == 0)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = a4;
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
      sub_1B7CEB1FC(a4, v7, v11);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)open:(id)a3
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

  if (a3)
  {
    (*(a3 + 2))(a3, *(v13 + 40) == 0);
    v13 = *(&buf + 1);
  }

  v17 = *(v13 + 40) == 0;
  _Block_object_dispose(&buf, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)close:(id)a3
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

  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_readIntegerFromQuery:(id)a3 resultBlock:(id)a4
{
  ppStmt = 0;
  database = self->_database;
  v8 = objc_msgSend_UTF8String(a3, a2, a3);
  v9 = sqlite3_prepare_v2(database, v8, -1, &ppStmt, 0);
  v11 = objc_msgSend_errorFromResult_query_(self, v10, v9, a3);
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
      v18 = objc_msgSend_errorFromResult_query_(self, v17, v16, a3);
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = objc_msgSend_errorFromResult_query_(self, v15, v14, a3);
    }

    v12 = v18;
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  if (a4)
  {
    (*(a4 + 2))(a4, v12 == 0, v12, v13);
  }

  return v12 == 0;
}

- (BOOL)readDatabaseVersion:(id)a3
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = '_ClientVersion';");

  return MEMORY[0x1EEE66B58](self, sel__readIntegerFromQuery_resultBlock_, v4);
}

- (BOOL)readRowCountForTable:(id)a3 resultBlock:(id)a4
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SELECT count(*) FROM %@;", a3);

  return MEMORY[0x1EEE66B58](self, sel__readIntegerFromQuery_resultBlock_, v5);
}

@end