@interface SGSqliteDatabase
+ (BOOL)isInMemoryPath:(id)path;
+ (SGSqliteDatabase)sqliteDatabaseWithFilename:(id)filename error:(id *)error;
+ (id)randomlyNamedInMemoryPathWithBaseName:(id)name;
+ (id)sqliteDatabaseInMemoryWithError:(id *)error;
+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name double:(double)double;
+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name int64:(int64_t)int64;
+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name int:(int)int;
+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name nsdata:(id)nsdata;
+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name nsstring:(id)nsstring;
+ (int)bindParamToNull:(sqlite3_stmt *)null name:(const char *)name;
- (BOOL)_prepQuery:(id)query onPrep:(id)prep onError:(id)error;
- (BOOL)frailWriteTransaction:(id)transaction;
- (BOOL)prepAndRunNonDataQueries:(id)queries onError:(id)error;
- (BOOL)prepAndRunQuery:(id)query onPrep:(id)prep onRow:(id)row onError:(id)error;
- (BOOL)prepAndRunSQL:(id)l onPrep:(id)prep onRow:(id)row onError:(id)error;
- (BOOL)runQuery:(id)query onRow:(id)row onError:(id)error;
- (SGSqliteDatabase)initWithFilename:(id)filename withProtection:(BOOL)protection sharedLock:(id)lock error:(id *)error;
- (id)description;
- (int64_t)maxIdForTable:(id)table;
- (sqlite3)handle;
- (unint64_t)_pagesToVacuum;
- (unint64_t)freelistCount;
- (unint64_t)pageCount;
- (unint64_t)vacuumMode;
- (void)_prepAndRunQuery:(id)query columns:(id)columns dictionary:(id)dictionary onError:(id)error;
- (void)insertOrReplaceIntoTable:(id)table dictionary:(id)dictionary onError:(id)error;
- (void)optimize:(unint64_t)optimize;
- (void)performIntegrityCheck;
- (void)runWithWriteLockAcquired:(id)acquired;
- (void)updateTable:(id)table dictionary:(id)dictionary whereClause:(id)clause onError:(id)error;
- (void)vacuum;
- (void)writeTransaction:(id)transaction;
@end

@implementation SGSqliteDatabase

- (sqlite3)handle
{
  handle = [(SGSqliteDatabaseImpl *)self->_impl handle];
  if (!handle)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqliteDatabase.m" lineNumber:619 description:@"sqlite handle unexpected nil"];
  }

  return handle;
}

- (void)optimize:(unint64_t)optimize
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__SGSqliteDatabase_optimize___block_invoke;
  v3[3] = &unk_278955468;
  v3[4] = self;
  v3[5] = optimize;
  [(SGSqliteDatabase *)self runWithWriteLockAcquired:v3];
}

void __29__SGSqliteDatabase_optimize___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PRAGMA optimize(%llX)", *(a1 + 40)];
  [*(a1 + 32) prepAndRunSQL:v3 onPrep:0 onRow:0 onError:0];

  objc_autoreleasePoolPop(v2);
}

- (void)vacuum
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->_usesDataProtection && [MEMORY[0x277D42598] lockState] - 1 <= 1)
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "Will not vacuum db %@ due to device lock state", &buf, 0xCu);
    }

    goto LABEL_35;
  }

  _pagesToVacuum = [(SGSqliteDatabase *)self _pagesToVacuum];
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = _pagesToVacuum;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "Called to vacuum %tu pages", &buf, 0xCu);
  }

  if (_pagesToVacuum)
  {
    vacuumMode = [(SGSqliteDatabase *)self vacuumMode];
    v7 = vacuumMode;
    if (vacuumMode != 0x7FFFFFFFFFFFFFFFLL)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__15822;
      v41 = __Block_byref_object_dispose__15823;
      v42 = 0;
      if (vacuumMode == 2)
      {
        goto LABEL_11;
      }

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __26__SGSqliteDatabase_vacuum__block_invoke;
      v33[3] = &unk_2789561D0;
      v33[4] = self;
      v33[5] = &buf;
      [(SGSqliteDatabase *)self runWithWriteLockAcquired:v33];
      if (!*(*(&buf + 1) + 40))
      {
        if (v7)
        {
LABEL_11:
          v8 = sgLogHandle();
          v29 = (_pagesToVacuum + 499) / 0x1F4;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
            *v34 = 134218498;
            selfCopy = _pagesToVacuum;
            v36 = 2112;
            *v37 = v9;
            *&v37[8] = 2112;
            *&v37[10] = self;
            _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "performing INCREMENTAL VACUUM to free %lu pages with %@ iterations for db: %@", v34, 0x20u);
          }

          if (_pagesToVacuum + 499 >= 0x1F4)
          {
            v10 = 0;
            v11 = _pagesToVacuum;
            while (1)
            {
              if (v11 >= 0x1F4)
              {
                v12 = 500;
              }

              else
              {
                v12 = v11;
              }

              v13 = sgLogHandle();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *v34 = 134218496;
                selfCopy = v12;
                v36 = 1024;
                *v37 = v10;
                *&v37[4] = 2048;
                *&v37[6] = _pagesToVacuum;
                _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_INFO, "Performing incremental vacuum for %tu pages on iteration %d for total pages to free %tu", v34, 0x1Cu);
              }

              v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PRAGMA incremental_vacuum(%lu)", v12];
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __26__SGSqliteDatabase_vacuum__block_invoke_206;
              v30[3] = &unk_278955830;
              v30[4] = self;
              v15 = v14;
              v31 = v15;
              [(SGSqliteDatabase *)self runWithWriteLockAcquired:v30];
              v16 = +[SGXPCActivityManager sharedInstance];
              v17 = [v16 activityForActivityId:1];

              v11 -= v12;
              if (v17)
              {
                state = xpc_activity_get_state(v17);
                v19 = sgLogHandle();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  v20 = [MEMORY[0x277CCABB0] numberWithLong:state];
                  v21 = [MEMORY[0x277CCABB0] numberWithInt:v10];
                  *v34 = 138412802;
                  selfCopy = v17;
                  v36 = 2112;
                  *v37 = v20;
                  *&v37[8] = 2112;
                  *&v37[10] = v21;
                  _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_INFO, "We have a vacuum activity %@ with activity state %@ after %@ batches", v34, 0x20u);
                }

                if (xpc_activity_should_defer(v17))
                {
                  break;
                }
              }

              if (v29 == ++v10)
              {
                goto LABEL_34;
              }
            }

            v23 = xpc_activity_set_state(v17, 3);
            v24 = sgLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [MEMORY[0x277CCABB0] numberWithInt:v10];
              v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_pagesToVacuum - v11];
              v27 = [MEMORY[0x277CCABB0] numberWithBool:v23];
              *v34 = 138412802;
              selfCopy = v25;
              v36 = 2112;
              *v37 = v26;
              *&v37[8] = 2112;
              *&v37[10] = v27;
              _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEFAULT, "We got back that we should defer the vacuuming activity after %@ iterations and having vacuumed %@ pages with deferral success %@", v34, 0x20u);
            }
          }

          goto LABEL_34;
        }

        v22 = sgLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v34 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_INFO, "performing FULL VACUUM to make INCREMENTAL effected for db: %@", v34, 0xCu);
        }

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __26__SGSqliteDatabase_vacuum__block_invoke_198;
        v32[3] = &unk_278954A30;
        v32[4] = self;
        [(SGSqliteDatabase *)self runWithWriteLockAcquired:v32];
      }

LABEL_34:
      _Block_object_dispose(&buf, 8);
    }
  }

LABEL_35:
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __26__SGSqliteDatabase_vacuum__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __26__SGSqliteDatabase_vacuum__block_invoke_2;
  v2[3] = &unk_2789560B8;
  return [*(a1 + 32) prepAndRunSQL:@"PRAGMA auto_vacuum=2" onPrep:0 onRow:0 onError:v2];
}

uint64_t __26__SGSqliteDatabase_vacuum__block_invoke_198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __26__SGSqliteDatabase_vacuum__block_invoke_2_202;
  v3[3] = &unk_278956108;
  v3[4] = v1;
  return [v1 prepAndRunSQL:@"VACUUM" onPrep:0 onRow:0 onError:v3];
}

uint64_t __26__SGSqliteDatabase_vacuum__block_invoke_206(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__SGSqliteDatabase_vacuum__block_invoke_2_207;
  v4[3] = &unk_278956108;
  v4[4] = v2;
  return [v2 prepAndRunSQL:v1 onPrep:0 onRow:0 onError:v4];
}

uint64_t __26__SGSqliteDatabase_vacuum__block_invoke_2_207(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "failed to incremental vacuum db: %@. error: %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

uint64_t __26__SGSqliteDatabase_vacuum__block_invoke_2_202(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "failed to vacuum db: %@. error: %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

uint64_t __26__SGSqliteDatabase_vacuum__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "failed to set auto_vacuum to INCREMENTAL for db: %@. error: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (unint64_t)vacuumMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__SGSqliteDatabase_vacuumMode__block_invoke;
  v5[3] = &unk_278955EA0;
  v5[4] = &v6;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SGSqliteDatabase_vacuumMode__block_invoke_2;
  v4[3] = &unk_2789560B8;
  v4[4] = self;
  v4[5] = &v6;
  [(SGSqliteDatabase *)self prepAndRunSQL:@"PRAGMA auto_vacuum" onPrep:0 onRow:v5 onError:v4];
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __30__SGSqliteDatabase_vacuumMode__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "failed to get auto-vacuum mode from db: %@. error: %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (unint64_t)_pagesToVacuum
{
  v13 = *MEMORY[0x277D85DE8];
  pageCount = [(SGSqliteDatabase *)self pageCount];
  freelistCount = [(SGSqliteDatabase *)self freelistCount];
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134218240;
    v10 = pageCount;
    v11 = 2048;
    v12 = freelistCount;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "Calculating pages to vacuum -- pageCount %tu freeCount %tu", &v9, 0x16u);
  }

  result = 0;
  if (freelistCount)
  {
    if (freelistCount != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = 0;
      if (pageCount)
      {
        if (pageCount != 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((pageCount - freelistCount) / pageCount <= 0.85 || freelistCount > 0x3FF)
          {
            result = (freelistCount * 0.8);
          }

          else
          {
            v7 = sgLogHandle();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              v9 = 134218240;
              v10 = pageCount;
              v11 = 2048;
              v12 = freelistCount;
              _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "not enough pages to vacuum: pageCount: %lu; freeCount: %lu", &v9, 0x16u);
            }

            result = 0;
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)freelistCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__SGSqliteDatabase_freelistCount__block_invoke;
  v5[3] = &unk_278955EA0;
  v5[4] = &v6;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SGSqliteDatabase_freelistCount__block_invoke_2;
  v4[3] = &unk_2789560B8;
  v4[4] = self;
  v4[5] = &v6;
  [(SGSqliteDatabase *)self prepAndRunSQL:@"PRAGMA freelist_count" onPrep:0 onRow:v5 onError:v4];
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __33__SGSqliteDatabase_freelistCount__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "failed to get freelist_count from db: %@. error: %@", &v8, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  v6 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (unint64_t)pageCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SGSqliteDatabase_pageCount__block_invoke;
  v5[3] = &unk_278955EA0;
  v5[4] = &v6;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__SGSqliteDatabase_pageCount__block_invoke_2;
  v4[3] = &unk_2789560B8;
  v4[4] = self;
  v4[5] = &v6;
  [(SGSqliteDatabase *)self prepAndRunSQL:@"PRAGMA page_count" onPrep:0 onRow:v5 onError:v4];
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __29__SGSqliteDatabase_pageCount__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "failed to get page_count from db: %@. error: %@", &v8, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  v6 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)performIntegrityCheck
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__SGSqliteDatabase_performIntegrityCheck__block_invoke_2;
  v2[3] = &unk_278956108;
  v2[4] = self;
  [(SGSqliteDatabase *)self prepAndRunSQL:@"PRAGMA integrity_check" onPrep:0 onRow:&__block_literal_global_174 onError:v2];
}

uint64_t __41__SGSqliteDatabase_performIntegrityCheck__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"Error: failed to run integrity_check on %@: %@", *(a1 + 32), v4];

  puts([v5 UTF8String]);
  return *MEMORY[0x277D42698];
}

uint64_t __41__SGSqliteDatabase_performIntegrityCheck__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 getNSStringForColumn:0];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v2];
  puts([v3 UTF8String]);

  v4 = MEMORY[0x277D42690];
  return *v4;
}

- (int64_t)maxIdForTable:(id)table
{
  tableCopy = table;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__SGSqliteDatabase_maxIdForTable___block_invoke;
  v9[3] = &unk_278955E30;
  v5 = tableCopy;
  v10 = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SGSqliteDatabase_maxIdForTable___block_invoke_2;
  v8[3] = &unk_278955EA0;
  v8[4] = &v11;
  [(SGSqliteDatabase *)self prepAndRunSQL:@"SELECT seq FROM sqlite_sequence WHERE name = :tableName" onPrep:v9 onRow:v8 onError:0];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  filename = [(SGSqliteDatabaseImpl *)self->_impl filename];
  v7 = [v3 initWithFormat:@"[%@: %@ <%p>]", v5, filename, -[SGSqliteDatabaseImpl handle](self->_impl, "handle")];

  return v7;
}

- (BOOL)frailWriteTransaction:(id)transaction
{
  transactionCopy = transaction;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SGSqliteDatabase_frailWriteTransaction___block_invoke;
  v7[3] = &unk_27894E898;
  v9 = &v10;
  v7[4] = self;
  v5 = transactionCopy;
  v8 = v5;
  [(SGSqliteDatabase *)self runWithWriteLockAcquired:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __42__SGSqliteDatabase_frailWriteTransaction___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) frailWriteTransaction:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)writeTransaction:(id)transaction
{
  transactionCopy = transaction;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SGSqliteDatabase_writeTransaction___block_invoke;
  v6[3] = &unk_278955EE8;
  v6[4] = self;
  v7 = transactionCopy;
  v5 = transactionCopy;
  [(SGSqliteDatabase *)self runWithWriteLockAcquired:v6];
}

- (void)insertOrReplaceIntoTable:(id)table dictionary:(id)dictionary onError:(id)error
{
  tableCopy = table;
  dictionaryCopy = dictionary;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  allKeys = [dictionaryCopy allKeys];
  objc_autoreleasePoolPop(v11);
  if (![allKeys count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqliteDatabase.m" lineNumber:785 description:@"insertOrReplaceIntoTable:dictionary: requires nonempty dictionary"];
  }

  v13 = objc_autoreleasePoolPush();
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = [allKeys _pas_componentsJoinedByString:{@", "}];
  v16 = qmarksSeparatedByCommas([allKeys count]);
  v17 = [v14 initWithFormat:@"INSERT OR REPLACE INTO %@ (%@) VALUES (%@)", tableCopy, v15, v16];

  objc_autoreleasePoolPop(v13);
  [(SGSqliteDatabase *)self _prepAndRunQuery:v17 columns:allKeys dictionary:dictionaryCopy onError:errorCopy];
}

- (void)updateTable:(id)table dictionary:(id)dictionary whereClause:(id)clause onError:(id)error
{
  tableCopy = table;
  dictionaryCopy = dictionary;
  clauseCopy = clause;
  errorCopy = error;
  v14 = objc_autoreleasePoolPush();
  allKeys = [dictionaryCopy allKeys];
  objc_autoreleasePoolPop(v14);
  if (![allKeys count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqliteDatabase.m" lineNumber:772 description:@"updateTable:dictionary:whereClause: requires nonempty dictionary"];
  }

  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [allKeys _pas_componentsJoinedByString:{@"=?, "}];
  v19 = [v18 stringByAppendingString:@"=?"];
  v20 = v19;
  if (clauseCopy)
  {
    v21 = [@" WHERE " stringByAppendingString:clauseCopy];
    v22 = [v17 initWithFormat:@"UPDATE %@ SET %@%@", tableCopy, v20, v21];
  }

  else
  {
    v22 = [v17 initWithFormat:@"UPDATE %@ SET %@%@", tableCopy, v19, &stru_284703F00];
  }

  objc_autoreleasePoolPop(v16);
  [(SGSqliteDatabase *)self _prepAndRunQuery:v22 columns:allKeys dictionary:dictionaryCopy onError:errorCopy];
}

- (BOOL)prepAndRunNonDataQueries:(id)queries onError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  queriesCopy = queries;
  errorCopy = error;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = queriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![(SGSqliteDatabase *)self prepAndRunSQL:*(*(&v16 + 1) + 8 * i) onPrep:0 onRow:0 onError:errorCopy, v16])
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_prepAndRunQuery:(id)query columns:(id)columns dictionary:(id)dictionary onError:(id)error
{
  columnsCopy = columns;
  dictionaryCopy = dictionary;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SGSqliteDatabase__prepAndRunQuery_columns_dictionary_onError___block_invoke;
  v14[3] = &unk_2789559D0;
  v15 = columnsCopy;
  v16 = dictionaryCopy;
  v12 = dictionaryCopy;
  v13 = columnsCopy;
  [(SGSqliteDatabase *)self prepAndRunSQL:query onPrep:v14 onRow:0 onError:error];
}

void __64__SGSqliteDatabase__prepAndRunQuery_columns_dictionary_onError___block_invoke(uint64_t a1, void *a2)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = 0;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [*(a1 + 32) objectAtIndexedSubscript:v4];
      v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
      v8 = [MEMORY[0x277CBEB68] null];
      v9 = [v7 isEqual:v8];

      if (v9)
      {
        [v3 bindParamToNull:++v4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 bindParam:++v4 toNSString:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v3 bindParam:++v4 toNSData:v7];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v7 objCType];
              v11 = *v10;
              if ((v11 == 102 || v11 == 100) && !v10[1])
              {
                [v3 bindParam:++v4 toDoubleAsNSNumber:v7];
              }

              else
              {
                [v3 bindParam:++v4 toInt64AsNSNumber:v7];
              }
            }

            else
            {
              if (![v7 conformsToProtocol:&unk_28474D248])
              {
                v15 = MEMORY[0x277CBEAD8];
                v23 = @"type";
                v16 = [objc_opt_class() description];
                v24 = v16;
                v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
                v18 = @"Could not insert this type into sqlite";
                goto LABEL_22;
              }

              v22 = 0;
              v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v22];
              v13 = v22;
              if (v13)
              {
                v15 = MEMORY[0x277CBEAD8];
                v25[0] = @"type";
                v19 = v13;
                v16 = [objc_opt_class() description];
                v25[1] = @"error";
                v26[0] = v16;
                v26[1] = v19;
                v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
                v18 = @"Could not securely code this type into SQLite";
LABEL_22:
                v20 = [v15 exceptionWithName:@"TypeError" reason:v18 userInfo:v17];
                v21 = v20;

                objc_exception_throw(v20);
              }

              [v3 bindParam:++v4 toNSData:v12];
            }
          }
        }
      }

      objc_autoreleasePoolPop(v5);
    }

    while ([*(a1 + 32) count] > v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)prepAndRunSQL:(id)l onPrep:(id)prep onRow:(id)row onError:(id)error
{
  lCopy = l;
  prepCopy = prep;
  rowCopy = row;
  errorCopy = error;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v14 = objc_autoreleasePoolPush();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__SGSqliteDatabase_prepAndRunSQL_onPrep_onRow_onError___block_invoke;
  v19[3] = &unk_27894E268;
  v15 = prepCopy;
  v23 = &v24;
  v19[4] = self;
  v20 = v15;
  v16 = rowCopy;
  v21 = v16;
  v17 = errorCopy;
  v22 = v17;
  [(SGSqliteDatabase *)self _prepQuery:lCopy onPrep:v19 onError:v17];

  objc_autoreleasePoolPop(v14);
  LOBYTE(self) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return self;
}

void __55__SGSqliteDatabase_prepAndRunSQL_onPrep_onRow_onError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))();
    v3 = v5;
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) runQuery:v3 onRow:*(a1 + 48) onError:*(a1 + 56)];
}

- (BOOL)prepAndRunQuery:(id)query onPrep:(id)prep onRow:(id)row onError:(id)error
{
  prepCopy = prep;
  rowCopy = row;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__SGSqliteDatabase_prepAndRunQuery_onPrep_onRow_onError___block_invoke;
  v17[3] = &unk_2789503B0;
  v18 = prepCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SGSqliteDatabase_prepAndRunQuery_onPrep_onRow_onError___block_invoke_2;
  v15[3] = &unk_27894E240;
  v16 = rowCopy;
  v12 = rowCopy;
  v13 = prepCopy;
  LOBYTE(error) = [(SGSqliteDatabase *)self prepAndRunSQL:query onPrep:v17 onRow:v15 onError:error];

  return error;
}

uint64_t __57__SGSqliteDatabase_prepAndRunQuery_onPrep_onRow_onError___block_invoke(uint64_t result, id a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 stmt];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

uint64_t __57__SGSqliteDatabase_prepAndRunQuery_onPrep_onRow_onError___block_invoke_2(uint64_t a1, id a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return *MEMORY[0x277D42690];
  }

  v3 = [a2 stmt];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (BOOL)_prepQuery:(id)query onPrep:(id)prep onError:(id)error
{
  queryCopy = query;
  prepCopy = prep;
  errorCopy = error;
  if (!queryCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqliteDatabase.m" lineNumber:668 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (prepCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSqliteDatabase.m" lineNumber:669 description:{@"Invalid parameter not satisfying: %@", @"onPrep"}];

    goto LABEL_3;
  }

  if (!prepCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [(SGSqliteDatabaseImpl *)self->_impl prepQuery:queryCopy onPrep:prepCopy onError:errorCopy];

  return v12;
}

- (BOOL)runQuery:(id)query onRow:(id)row onError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  rowCopy = row;
  errorCopy = error;
  v11 = mach_absolute_time();
  sharedWriterLock = self->_sharedWriterLock;
  if (sharedWriterLock && !-[SGSqliteDatabaseSharedLock writeTransactionDepth](sharedWriterLock, "writeTransactionDepth") && !sqlite3_stmt_readonly([queryCopy stmt]))
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v26 = 136315138;
      v27 = COERCE_DOUBLE(sqlite3_sql([queryCopy stmt]));
      _os_log_fault_impl(&dword_231E60000, v13, OS_LOG_TYPE_FAULT, "Write statement should be run in a write transaction: %s", &v26, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  v14 = [(SGSqliteDatabaseImpl *)self->_impl runQuery:queryCopy onRow:rowCopy onError:errorCopy];
  lastBusyWaitEnded = self->_lastBusyWaitEnded;
  if (runQuery_onRow_onError__onceToken != -1)
  {
    dispatch_once(&runQuery_onRow_onError__onceToken, &__block_literal_global_107_15941);
  }

  v16 = lastBusyWaitEnded - v11;
  if (lastBusyWaitEnded < v11)
  {
    v16 = 0;
  }

  v17 = (v16 * runQuery_onRow_onError__machTimebaseInfo / *algn_280D9D8A4) / 1000000000.0;
  if (v17 > 0.5 && os_variant_has_internal_diagnostics())
  {
    v18 = sqlite3_sql([queryCopy stmt]);
    v19 = sgLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v20)
      {
        v26 = 134218242;
        v27 = v17 * 1000.0;
        v28 = 2080;
        v29 = v18;
        v21 = "This query was delayed %0.2f ms waiting for db file locked by another sqlite connection: %s";
        v22 = v19;
        v23 = 22;
LABEL_18:
        _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_INFO, v21, &v26, v23);
      }
    }

    else if (v20)
    {
      v26 = 134217984;
      v27 = v17 * 1000.0;
      v21 = "This query was delayed %0.2f ms waiting for db file locked by another sqlite connection -- unknown SQL";
      v22 = v19;
      v23 = 12;
      goto LABEL_18;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)runWithWriteLockAcquired:(id)acquired
{
  sharedWriterLock = self->_sharedWriterLock;
  if (sharedWriterLock)
  {
    [(SGSqliteDatabaseSharedLock *)sharedWriterLock runWithLockAcquired:acquired];
  }

  else
  {
    (*(acquired + 2))(acquired);
  }
}

- (SGSqliteDatabase)initWithFilename:(id)filename withProtection:(BOOL)protection sharedLock:(id)lock error:(id *)error
{
  protectionCopy = protection;
  v70 = *MEMORY[0x277D85DE8];
  filenameCopy = filename;
  lockCopy = lock;
  if (!filenameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSqliteDatabase.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"filename"}];
  }

  v55.receiver = self;
  v55.super_class = SGSqliteDatabase;
  v13 = [(SGSqliteDatabase *)&v55 init];
  p_isa = &v13->super.isa;
  if (!v13)
  {
    goto LABEL_46;
  }

  if (protectionCopy)
  {
    v15 = 1376262;
  }

  else
  {
    v15 = 3473414;
  }

  v13->_usesDataProtection = protectionCopy;
  v16 = [[SGSqliteDatabaseImpl alloc] initWithFilename:filenameCopy flags:v15 error:error sgDb:v13];
  v17 = p_isa[1];
  p_isa[1] = v16;

  if (!p_isa[1])
  {
    goto LABEL_34;
  }

  objc_storeStrong(p_isa + 3, lock);
  handle = [p_isa[1] handle];
  if (sqlite3_db_config(handle, 1001, 0, 96, 64) == 5)
  {
    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_231E60000, v19, OS_LOG_TYPE_FAULT, "Unable to change SQLite lookaside configuration.", buf, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  function_v2 = sqlite3_create_function_v2(handle, "hasInhumanTag", 1, 2049, 0, hasInhumanTag, 0, 0, 0);
  if (function_v2)
  {
    v21 = function_v2;
    v22 = sgLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v69 = v21;
      _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "Could not install hasInhumanTag() sqlite function (rc = %i)", buf, 8u);
    }

    if (error)
    {
      v23 = MEMORY[0x277CCA9B8];
      v66 = @"sqliteCode";
      v24 = [MEMORY[0x277CCABB0] numberWithInt:v21];
      v67 = v24;
      v25 = MEMORY[0x277CBEAC0];
      v26 = &v67;
      v27 = &v66;
LABEL_32:
      v37 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
      v38 = v23;
      v39 = 5;
LABEL_33:
      *error = [v38 errorWithDomain:@"SGSqliteDatabaseError" code:v39 userInfo:v37];

LABEL_34:
      error = 0;
      goto LABEL_47;
    }

    goto LABEL_47;
  }

  v28 = sqlite3_create_function_v2(handle, "tagsHaveEscapedTag", 2, 2049, 0, tagsHaveEscapedTag, 0, 0, 0);
  if (!v28)
  {
    v31 = sqlite3_create_function_v2(handle, "delimitedString", 2, 2049, 0, delimitedString, 0, 0, 0);
    if (v31)
    {
      v32 = v31;
      v33 = sgLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v69 = v32;
        _os_log_error_impl(&dword_231E60000, v33, OS_LOG_TYPE_ERROR, "Could not install delimitedString() sqlite function (rc = %i)", buf, 8u);
      }

      if (error)
      {
        v23 = MEMORY[0x277CCA9B8];
        v62 = @"sqliteCode";
        v24 = [MEMORY[0x277CCABB0] numberWithInt:v32];
        v63 = v24;
        v25 = MEMORY[0x277CBEAC0];
        v26 = &v63;
        v27 = &v62;
        goto LABEL_32;
      }

      goto LABEL_47;
    }

    v34 = sqlite3_create_function_v2(handle, "firstStringAfterPrefix", 1, 2049, 0, firstStringAfterPrefix, 0, 0, 0);
    if (v34)
    {
      v35 = v34;
      v36 = sgLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v69 = v35;
        _os_log_error_impl(&dword_231E60000, v36, OS_LOG_TYPE_ERROR, "Could not install firstStringAfterPrefix() sqlite function (rc = %i)", buf, 8u);
      }

      if (error)
      {
        v23 = MEMORY[0x277CCA9B8];
        v60 = @"sqliteCode";
        v24 = [MEMORY[0x277CCABB0] numberWithInt:v35];
        v61 = v24;
        v25 = MEMORY[0x277CBEAC0];
        v26 = &v61;
        v27 = &v60;
        goto LABEL_32;
      }

      goto LABEL_47;
    }

    busy = sqlite3_busy_timeout(handle, 300000);
    if (busy)
    {
      v41 = busy;
      v42 = sgLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v69 = v41;
        _os_log_error_impl(&dword_231E60000, v42, OS_LOG_TYPE_ERROR, "Sqlite could not install busy timeout. (rc = %i)", buf, 8u);
      }

      if (error)
      {
        v43 = MEMORY[0x277CCA9B8];
        v58 = @"sqliteCode";
        v24 = [MEMORY[0x277CCABB0] numberWithInt:v41];
        v59 = v24;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v38 = v43;
        v39 = 2;
        goto LABEL_33;
      }

      goto LABEL_47;
    }

    v44 = sqlite3_busy_handler(handle, wrappedBusyCallbackForTiming, p_isa);
    if (v44)
    {
      v45 = v44;
      v46 = sgLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v69 = v45;
        _os_log_error_impl(&dword_231E60000, v46, OS_LOG_TYPE_ERROR, "Sqlite could not install busy handler. (rc = %i)", buf, 8u);
      }

      if (error)
      {
        v47 = MEMORY[0x277CCA9B8];
        v56 = @"sqliteCode";
        v48 = [MEMORY[0x277CCABB0] numberWithInt:v45];
        v57 = v48;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        *error = [v47 errorWithDomain:@"SGSqliteDatabaseError" code:6 userInfo:v49];

        goto LABEL_34;
      }

      goto LABEL_47;
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __69__SGSqliteDatabase_initWithFilename_withProtection_sharedLock_error___block_invoke;
    v53[3] = &unk_278954A30;
    v54 = p_isa;
    [v54 runWithWriteLockAcquired:v53];

LABEL_46:
    error = p_isa;
    goto LABEL_47;
  }

  v29 = v28;
  v30 = sgLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v69 = v29;
    _os_log_error_impl(&dword_231E60000, v30, OS_LOG_TYPE_ERROR, "Could not install tagsHaveEscapedTag() sqlite function (rc = %i)", buf, 8u);
  }

  if (error)
  {
    v23 = MEMORY[0x277CCA9B8];
    v64 = @"sqliteCode";
    v24 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    v65 = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = &v65;
    v27 = &v64;
    goto LABEL_32;
  }

LABEL_47:

  v50 = *MEMORY[0x277D85DE8];
  return error;
}

uint64_t __69__SGSqliteDatabase_initWithFilename_withProtection_sharedLock_error___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "unable to set auto_vacuum to INCREMENTAL: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name nsdata:(id)nsdata
{
  nsdataCopy = nsdata;
  v8 = _indexForBindParam(param, name);
  LODWORD(name) = sqlite3_bind_nsdata(param, v8, nsdataCopy);

  return name;
}

+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name nsstring:(id)nsstring
{
  nsstringCopy = nsstring;
  v8 = _indexForBindParam(param, name);
  uTF8String = [nsstringCopy UTF8String];

  return sqlite3_bind_text(param, v8, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
}

+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name double:(double)double
{
  v7 = _indexForBindParam(param, name);

  return sqlite3_bind_double(param, v7, double);
}

+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name int64:(int64_t)int64
{
  v7 = _indexForBindParam(param, name);

  return sqlite3_bind_int64(param, v7, int64);
}

+ (int)bindParam:(sqlite3_stmt *)param name:(const char *)name int:(int)int
{
  v7 = _indexForBindParam(param, name);

  return sqlite3_bind_int(param, v7, int);
}

+ (int)bindParamToNull:(sqlite3_stmt *)null name:(const char *)name
{
  v5 = _indexForBindParam(null, name);

  return sqlite3_bind_null(null, v5);
}

+ (id)randomlyNamedInMemoryPathWithBaseName:(id)name
{
  nameCopy = name;
  v4 = objc_autoreleasePoolPush();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v7 = [@"file:" stringByAppendingString:nameCopy];
  v8 = [v7 stringByAppendingString:uUIDString];
  v9 = [v8 stringByAppendingString:@"?mode=memory&cache=shared"];

  objc_autoreleasePoolPop(v4);

  return v9;
}

+ (BOOL)isInMemoryPath:(id)path
{
  pathCopy = path;
  if ([pathCopy containsString:@":memory:"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy containsString:@"mode=memory"];
  }

  return v4;
}

+ (id)sqliteDatabaseInMemoryWithError:(id *)error
{
  v3 = [[SGSqliteDatabase alloc] initWithFilename:@":memory:" withProtection:0 sharedLock:0 error:error];

  return v3;
}

+ (SGSqliteDatabase)sqliteDatabaseWithFilename:(id)filename error:(id *)error
{
  filenameCopy = filename;
  v6 = [[SGSqliteDatabase alloc] initWithFilename:filenameCopy withProtection:0 sharedLock:0 error:error];

  return v6;
}

@end