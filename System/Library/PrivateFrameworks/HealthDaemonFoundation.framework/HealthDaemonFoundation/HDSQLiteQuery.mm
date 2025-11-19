@interface HDSQLiteQuery
- (BOOL)deleteAllEntitiesWithError:(id *)a3;
- (BOOL)enumeratePersistentIDsAndProperties:(id)a3 error:(id *)a4 enumerationHandler:(id)a5;
- (BOOL)enumerateProperties:(id)a3 error:(id *)a4 enumerationHandler:(id)a5;
- (HDSQLiteQuery)initWithDatabase:(id)a3 descriptor:(id)a4;
- (void)_expandLastSQLStatementIfNecessary:(uint64_t)a1;
@end

@implementation HDSQLiteQuery

- (HDSQLiteQuery)initWithDatabase:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HDSQLiteQuery;
  v9 = [(HDSQLiteQuery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    v11 = [v8 copy];
    descriptor = v10->_descriptor;
    v10->_descriptor = v11;
  }

  return v10;
}

- (BOOL)deleteAllEntitiesWithError:(id *)a3
{
  database = self->_database;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__HDSQLiteQuery_deleteAllEntitiesWithError___block_invoke;
  v5[3] = &unk_2796BE320;
  v5[4] = self;
  return [(HDSQLiteDatabase *)database performTransactionWithType:1 error:a3 usingBlock:v5];
}

uint64_t __44__HDSQLiteQuery_deleteAllEntitiesWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(a1 + 32) + 16) _SQLForDeleteWithError:a3];
  if (v6)
  {
    v7 = [*(*(a1 + 32) + 16) shouldExpandLastSQLStatement];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 copy];
    }

    objc_storeStrong((*(a1 + 32) + 24), v8);
    if ((v7 & 1) == 0)
    {
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__HDSQLiteQuery_deleteAllEntitiesWithError___block_invoke_2;
    v11[3] = &unk_2796BDFF0;
    v11[4] = *(a1 + 32);
    v9 = [v5 executeSQL:v6 error:a3 bindingHandler:v11 enumerationHandler:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __44__HDSQLiteQuery_deleteAllEntitiesWithError___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = 1;
  [*(*(a1 + 32) + 16) bindToDeleteStatement:a2 bindingIndex:&v4];
  [(HDSQLiteQuery *)*(a1 + 32) _expandLastSQLStatementIfNecessary:a2];
}

- (BOOL)enumeratePersistentIDsAndProperties:(id)a3 error:(id *)a4 enumerationHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    v11 = [v9 mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v12 = v11;
  [v11 insertObject:@"ROWID" atIndex:0];
  v13 = MEMORY[0x277CBEBF8];
  if (v9)
  {
    v13 = v9;
  }

  v14 = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__HDSQLiteQuery_enumeratePersistentIDsAndProperties_error_enumerationHandler___block_invoke;
  v19[3] = &unk_2796BE448;
  v22 = a2;
  v19[4] = self;
  v15 = v10;
  v20 = v14;
  v21 = v15;
  v16 = v14;
  v17 = [(HDSQLiteQuery *)self enumerateProperties:v12 error:a4 enumerationHandler:v19];

  return v17;
}

uint64_t __78__HDSQLiteQuery_enumeratePersistentIDsAndProperties_error_enumerationHandler___block_invoke(void *a1, uint64_t a2, _DWORD *a3)
{
  if ((*(*a3 + 16))(a3, 0) <= 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a1[7] object:a1[4] file:@"HDSQLiteQuery.mm" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"pID > 0"}];
  }

  a3[4] = 1;
  v5 = a1[5];
  result = (*(a1[6] + 16))();
  a3[4] = 0;
  return result;
}

- (BOOL)enumerateProperties:(id)a3 error:(id *)a4 enumerationHandler:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v34 = v8;
  if ([v8 count] >= 0x7FFFFFFF)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"HDSQLiteQuery.mm" lineNumber:94 description:{@"Insane number of properties for enumeration (%lu)", objc_msgSend(v8, "count")}];
  }

  v10 = v9;
  v35 = [(HDSQLiteQueryDescriptor *)self->_descriptor selectSQLForProperties:v34];
  v33 = a4;
  if ([(HDSQLiteQueryDescriptor *)self->_descriptor shouldExpandLastSQLStatement])
  {
    v11 = 0;
  }

  else
  {
    v11 = [v35 copy];
  }

  lastSQLStatement = self->_lastSQLStatement;
  self->_lastSQLStatement = v11;

  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 1;
  __p = 0;
  v50 = 0;
  v51 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = v34;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v14)
  {
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [*(*(&v45 + 1) + 8 * i) UTF8String];
        v18 = v50;
        if (v50 >= v51)
        {
          v20 = (v50 - __p) >> 3;
          if ((v20 + 1) >> 61)
          {
            std::vector<char const*>::__throw_length_error[abi:ne200100]();
          }

          v21 = (v51 - __p) >> 2;
          if (v21 <= v20 + 1)
          {
            v21 = v20 + 1;
          }

          if (v51 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v22 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v22);
          }

          v23 = (8 * v20);
          *v23 = v17;
          v19 = (8 * v20 + 8);
          v24 = v23 - (v50 - __p);
          memcpy(v24, __p, v50 - __p);
          v25 = __p;
          __p = v24;
          v50 = v19;
          v51 = 0;
          if (v25)
          {
            operator delete(v25);
          }

          v10 = v9;
        }

        else
        {
          *v50 = v17;
          v19 = v18 + 1;
        }

        v50 = v19;
      }

      v14 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v14);
  }

  database = self->_database;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __62__HDSQLiteQuery_enumerateProperties_error_enumerationHandler___block_invoke;
  v44[3] = &unk_2796BDFF0;
  v44[4] = self;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3321888768;
  v37[2] = __62__HDSQLiteQuery_enumerateProperties_error_enumerationHandler___block_invoke_2;
  v37[3] = &unk_286379C30;
  v40 = v52;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const**,char const**>(&v41, __p, v50, (v50 - __p) >> 3);
  v27 = v10;
  v39 = v27;
  v28 = v13;
  v38 = v28;
  v29 = [(HDSQLiteDatabase *)database executeSQL:v35 error:v33 bindingHandler:v44 enumerationHandler:v37];

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v52, 8);

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t __62__HDSQLiteQuery_enumerateProperties_error_enumerationHandler___block_invoke_2(void *a1, uint64_t **a2)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    std::vector<char const*>::__init_with_size[abi:ne200100]<char const**,char const**>(&__p, a1[7], a1[8], (a1[8] - a1[7]) >> 3);
    HDSQLiteRow::setColumnNames(a2, &__p);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  v4 = a1[4];
  return (*(a1[5] + 16))();
}

- (void)_expandLastSQLStatementIfNecessary:(uint64_t)a1
{
  if (a1)
  {
    if ([*(a1 + 16) shouldExpandLastSQLStatement])
    {
      v4 = sqlite3_expanded_sql(a2);
      if (v4)
      {
        v5 = v4;
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
        v7 = *(a1 + 24);
        *(a1 + 24) = v6;

        sqlite3_free(v5);
      }
    }
  }
}

void __62__HDSQLiteQuery_enumerateProperties_error_enumerationHandler___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = 1;
  [*(*(a1 + 32) + 16) bindToSelectStatement:a2 bindingIndex:&v4];
  [(HDSQLiteQuery *)*(a1 + 32) _expandLastSQLStatementIfNecessary:a2];
}

@end