@interface HDSQLiteEntity
+ (BOOL)deleteEntitiesInDatabase:(id)a3 predicate:(id)a4 error:(id *)a5;
+ (BOOL)enumerateEntitiesInDatabase:(id)a3 predicate:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)enumerateQueryResultsFromColumns:(id)a3 properties:(id)a4 predicate:(id)a5 groupBy:(id)a6 orderingTerms:(id)a7 limit:(int64_t)a8 database:(id)a9 error:(id *)a10 enumerationHandler:(id)a11;
+ (BOOL)updateProperties:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6 bindingHandler:(id)a7;
+ (id)aggregateSingleValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 database:(id)a6 error:(id *)a7;
+ (id)aggregateSingleValueForProperty:(id)a3 function:(id)a4 queryDescriptor:(id)a5 database:(id)a6 error:(id *)a7;
+ (id)aggregateValuesForProperty:(id)a3 functions:(id)a4 predicate:(id)a5 groupBy:(id)a6 database:(id)a7 error:(id *)a8;
+ (id)aggregateValuesForProperty:(id)a3 functions:(id)a4 queryDescriptor:(id)a5 database:(id)a6 error:(id *)a7;
+ (id)anyInDatabase:(id)a3 predicate:(id)a4 error:(id *)a5;
+ (id)countDistinctForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)countValueForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)distinctProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)entityWithPersistentID:(id)a3;
+ (id)firstInDatabase:(id)a3 predicate:(id)a4 orderingTerms:(id)a5 error:(id *)a6;
+ (id)maxPersistentIDWithPredicate:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)maxValueForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)propertyValueForAnyInDatabase:(id)a3 property:(id)a4 predicate:(id)a5 error:(id *)a6;
+ (id)queryWithDatabase:(id)a3 predicate:(id)a4;
+ (id)queryWithDatabase:(id)a3 predicate:(id)a4 limit:(unint64_t)a5 orderingTerms:(id)a6 groupBy:(id)a7;
+ (id)sumValueForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6;
+ (int64_t)sizeOfEntityTableInDatabase:(id)a3;
- (BOOL)BOOLeanForProperty:(id)a3 database:(id)a4;
- (BOOL)deleteFromDatabase:(id)a3 error:(id *)a4;
- (BOOL)existsInDatabase:(id)a3;
- (BOOL)getValuesForProperties:(id)a3 database:(id)a4 error:(id *)a5 handler:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateProperties:(id)a3 database:(id)a4 error:(id *)a5 bindingHandler:(id)a6;
- (HDSQLiteEntity)initWithPersistentID:(int64_t)a3;
- (NSString)description;
- (id)UUIDForProperty:(id)a3 database:(id)a4;
- (id)_updateSQLForProperties:(uint64_t)a1;
- (id)dateForProperty:(id)a3 database:(id)a4;
- (id)numberForProperty:(id)a3 database:(id)a4;
- (id)stringForProperty:(id)a3 database:(id)a4;
- (id)valueForProperty:(id)a3 database:(id)a4;
- (uint64_t)_deleteRowFromTable:(void *)a3 usingColumn:(void *)a4 database:(uint64_t)a5 error:;
@end

@implementation HDSQLiteEntity

- (HDSQLiteEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HDSQLiteEntity;
  result = [(HDSQLiteEntity *)&v5 init];
  if (result)
  {
    result->_persistentID = a3;
  }

  return result;
}

+ (id)entityWithPersistentID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[a1 alloc] initWithPersistentID:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_updateSQLForProperties:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v5 = objc_opt_class();
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v5 entityForProperty:v6];

    v8 = [v4 hk_map:&__block_literal_global_434];
    v9 = MEMORY[0x277CCACA8];
    v10 = [v7 disambiguatedDatabaseTable];
    v11 = [v8 componentsJoinedByString:{@", "}];
    v12 = [v9 stringWithFormat:@"UPDATE %@ SET %@ WHERE %@ = ?", v10, v11, @"ROWID"];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __42__HDSQLiteEntity__updateSQLForProperties___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ?", a2];

  return v2;
}

uint64_t __81__HDSQLiteEntity_insertOrReplaceEntity_database_properties_error_bindingHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  HDSQLiteStatementBinder::HDSQLiteStatementBinder(v4, a2, *(a1 + 32));
  (*(*(a1 + 40) + 16))();
  HDSQLiteStatementBinder::assertAllPropertiesBound(v4);
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(&v6);
  return std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(&v5);
}

+ (int64_t)sizeOfEntityTableInDatabase:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = [objc_opt_class() disambiguatedDatabaseTable];
  v6 = [v4 stringWithFormat:@"SELECT SUM(\"pgsize\"", v5];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[4] = &v12;
  v11 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HDSQLiteEntity_sizeOfEntityTableInDatabase___block_invoke;
  v10[3] = &unk_2796BE2D0;
  [v3 executeSQL:v6 error:&v11 bindingHandler:0 enumerationHandler:v10];
  v7 = v11;
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (BOOL)updateProperties:(id)a3 database:(id)a4 error:(id *)a5 bindingHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HDSQLiteEntity *)self _updateSQLForProperties:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__HDSQLiteEntity_updateProperties_database_error_bindingHandler___block_invoke;
  v17[3] = &unk_2796BE2F8;
  v14 = v10;
  v18 = v14;
  v15 = v12;
  v19 = self;
  v20 = v15;
  LOBYTE(a5) = [v11 executeSQL:v13 error:a5 bindingHandler:v17 enumerationHandler:0];

  return a5;
}

uint64_t __65__HDSQLiteEntity_updateProperties_database_error_bindingHandler___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteStatementBinder::HDSQLiteStatementBinder(v5, a2, *(a1 + 32));
  (*(*(a1 + 48) + 16))();
  HDSQLiteStatementBinder::assertAllPropertiesBound(v5);
  sqlite3_bind_int64(a2, [*(a1 + 32) count] + 1, objc_msgSend(*(a1 + 40), "persistentID"));
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(&v7);
  return std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(&v6);
}

+ (BOOL)updateProperties:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6 bindingHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [a1 updateSQLForProperties:v12 predicate:v13];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__HDSQLiteEntity_updateProperties_predicate_database_error_bindingHandler___block_invoke;
  v21[3] = &unk_2796BE2F8;
  v17 = v12;
  v22 = v17;
  v18 = v15;
  v24 = v18;
  v19 = v13;
  v23 = v19;
  LOBYTE(a6) = [v14 executeSQL:v16 error:a6 bindingHandler:v21 enumerationHandler:0];

  return a6;
}

uint64_t __75__HDSQLiteEntity_updateProperties_predicate_database_error_bindingHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  HDSQLiteStatementBinder::HDSQLiteStatementBinder(v6, a2, *(a1 + 32));
  (*(*(a1 + 48) + 16))();
  HDSQLiteStatementBinder::assertAllPropertiesBound(v6);
  v5 = [*(a1 + 32) count] + 1;
  [*(a1 + 40) bindToStatement:a2 bindingIndex:&v5];
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(&v8);
  return std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(&v7);
}

- (BOOL)deleteFromDatabase:(id)a3 error:(id *)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HDSQLiteEntity_deleteFromDatabase_error___block_invoke;
  v5[3] = &unk_2796BE320;
  v5[4] = self;
  return [a3 performTransactionWithType:1 error:a4 usingBlock:v5];
}

uint64_t __43__HDSQLiteEntity_deleteFromDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() disambiguatedDatabaseTable];
  v8 = [(HDSQLiteEntity *)v6 _deleteRowFromTable:v7 usingColumn:@"ROWID" database:v5 error:a3];

  return v8;
}

- (uint64_t)_deleteRowFromTable:(void *)a3 usingColumn:(void *)a4 database:(uint64_t)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = [(HDSQLiteSchemaEntity *)HDSQLiteEntity _copyDeleteSQLWithTableName:v9 columnName:v10];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__HDSQLiteEntity__deleteRowFromTable_usingColumn_database_error___block_invoke;
    v15[3] = &unk_2796BDFF0;
    v15[4] = a1;
    v13 = [v11 executeSQL:v12 error:a5 bindingHandler:v15 enumerationHandler:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)existsInDatabase:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [objc_opt_class() disambiguatedDatabaseTable];
  v7 = [v5 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", v6, @"ROWID"];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HDSQLiteEntity_existsInDatabase___block_invoke;
  v10[3] = &unk_2796BDFF0;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__HDSQLiteEntity_existsInDatabase___block_invoke_2;
  v9[3] = &unk_2796BE2D0;
  v9[4] = &v11;
  [v4 executeSQL:v7 error:0 bindingHandler:v10 enumerationHandler:v9];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

- (BOOL)getValuesForProperties:(id)a3 database:(id)a4 error:(id *)a5 handler:(id)a6
{
  v78 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v46 = a4;
  v45 = a6;
  v11 = objc_opt_class();
  v47 = [objc_msgSend(v11 "entityClassForEnumeration")];
  v12 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"SELECT "];
  v43 = a5;
  v44 = self;
  v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v14)
  {
    v15 = *v72;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v71 + 1) + 8 * i);
        v19 = [v11 disambiguatedSQLForProperty:v18];
        if ((v16 & 1) == 0)
        {
          [v12 appendString:{@", "}];
        }

        [v12 appendString:v19];
        v20 = [v11 joinClausesForProperty:v18];
        if ([v20 count])
        {
          [v49 unionSet:v20];
        }

        v16 = 0;
      }

      v14 = [v13 countByEnumeratingWithState:&v71 objects:v77 count:16];
      v16 = 0;
    }

    while (v14);
  }

  [v12 appendString:@" FROM "];
  [v12 appendString:v47];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v49;
  v21 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v21)
  {
    v22 = *v68;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v68 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v67 + 1) + 8 * j);
        [v12 appendString:@" "];
        v25 = [v24 SQLJoinClause];
        [v12 appendString:v25];
      }

      v21 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v21);
  }

  [v12 appendString:@" WHERE "];
  [v12 appendString:v47];
  [v12 appendString:@".ROWID = ?;"];
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 1;
  __p = 0;
  v63 = 0;
  v64 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v26 = v13;
  v27 = [v26 countByEnumeratingWithState:&v58 objects:v75 count:16];
  if (v27)
  {
    v28 = *v59;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v59 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [*(*(&v58 + 1) + 8 * k) UTF8String];
        v31 = v63;
        if (v63 >= v64)
        {
          v33 = (v63 - __p) >> 3;
          if ((v33 + 1) >> 61)
          {
            std::vector<char const*>::__throw_length_error[abi:ne200100]();
          }

          v34 = (v64 - __p) >> 2;
          if (v34 <= v33 + 1)
          {
            v34 = v33 + 1;
          }

          if (v64 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v35 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v34;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v35);
          }

          *(8 * v33) = v30;
          v32 = (8 * v33 + 8);
          v36 = (8 * v33 - (v63 - __p));
          memcpy(v36, __p, v63 - __p);
          v37 = __p;
          __p = v36;
          v63 = v32;
          v64 = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v63 = v30;
          v32 = v31 + 1;
        }

        v63 = v32;
      }

      v27 = [v26 countByEnumeratingWithState:&v58 objects:v75 count:16];
    }

    while (v27);
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __64__HDSQLiteEntity_getValuesForProperties_database_error_handler___block_invoke;
  v57[3] = &unk_2796BDFF0;
  v57[4] = v44;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3321888768;
  v50[2] = __64__HDSQLiteEntity_getValuesForProperties_database_error_handler___block_invoke_2;
  v50[3] = &unk_286379C30;
  v53 = v65;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const**,char const**>(&v54, __p, v63, (v63 - __p) >> 3);
  v38 = v45;
  v52 = v38;
  v39 = v26;
  v51 = v39;
  v40 = [v46 executeSQL:v12 error:v43 bindingHandler:v57 enumerationHandler:v50];

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v65, 8);

  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

uint64_t __64__HDSQLiteEntity_getValuesForProperties_database_error_handler___block_invoke_2(void *a1, uint64_t **a2)
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
  (*(a1[5] + 16))();
  return 0;
}

- (id)valueForProperty:(id)a3 database:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HDSQLiteEntity_valueForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:v7 handler:v12];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __44__HDSQLiteEntity_valueForProperty_database___block_invoke(uint64_t a1, int a2, HDSQLiteRow *this)
{
  v4 = HDSQLiteRow::columnAsNaturalType(this, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)BOOLeanForProperty:(id)a3 database:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__HDSQLiteEntity_BOOLeanForProperty_database___block_invoke;
  v11[3] = &unk_2796BE348;
  v11[4] = &v12;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:v7 handler:v11];

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  v9 = *MEMORY[0x277D85DE8];
  return self & 1;
}

BOOL __46__HDSQLiteEntity_BOOLeanForProperty_database___block_invoke(uint64_t a1, int a2, HDSQLiteRow *this)
{
  result = HDSQLiteRow::columnAsBoolean(this, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)dateForProperty:(id)a3 database:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HDSQLiteEntity_dateForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:v7 handler:v12];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __43__HDSQLiteEntity_dateForProperty_database___block_invoke(uint64_t a1, int a2, HDSQLiteRow *this)
{
  v4 = HDSQLiteRow::columnAsDate(this, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

- (id)numberForProperty:(id)a3 database:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HDSQLiteEntity_numberForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:v7 handler:v12];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __45__HDSQLiteEntity_numberForProperty_database___block_invoke(uint64_t a1, int a2, HDSQLiteRow *this)
{
  v4 = HDSQLiteRow::columnAsNumber(this, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

- (id)stringForProperty:(id)a3 database:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HDSQLiteEntity_stringForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:v7 handler:v12];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __45__HDSQLiteEntity_stringForProperty_database___block_invoke(uint64_t a1, int a2, HDSQLiteRow *this)
{
  v4 = HDSQLiteRow::columnAsString(this, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

- (id)UUIDForProperty:(id)a3 database:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HDSQLiteEntity_UUIDForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:v7 handler:v12];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __43__HDSQLiteEntity_UUIDForProperty_database___block_invoke(uint64_t a1, int a2, HDSQLiteRow *this)
{
  v4 = HDSQLiteRow::columnAsUUID(this, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->_persistentID == self->_persistentID;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = HDSQLiteEntity;
  v4 = [(HDSQLiteEntity *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@, id:%lld>", v4, -[HDSQLiteEntity persistentID](self, "persistentID")];

  return v5;
}

+ (id)anyInDatabase:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v7 = [a1 queryWithDatabase:a3 predicate:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HDSQLiteEntity_SQLiteQueryAdditions__anyInDatabase_predicate_error___block_invoke;
  v10[3] = &unk_2796BE500;
  v10[4] = &v11;
  v10[5] = a1;
  [v7 enumeratePersistentIDsAndProperties:0 error:a5 enumerationHandler:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __70__HDSQLiteEntity_SQLiteQueryAdditions__anyInDatabase_predicate_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 40)) initWithPersistentID:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (id)firstInDatabase:(id)a3 predicate:(id)a4 orderingTerms:(id)a5 error:(id *)a6
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v8 = [a1 queryWithDatabase:a3 predicate:a4 limit:1 orderingTerms:a5 groupBy:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HDSQLiteEntity_SQLiteQueryAdditions__firstInDatabase_predicate_orderingTerms_error___block_invoke;
  v11[3] = &unk_2796BE500;
  v11[4] = &v12;
  v11[5] = a1;
  [v8 enumeratePersistentIDsAndProperties:0 error:a6 enumerationHandler:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __86__HDSQLiteEntity_SQLiteQueryAdditions__firstInDatabase_predicate_orderingTerms_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 40)) initWithPersistentID:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (BOOL)enumerateEntitiesInDatabase:(id)a3 predicate:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = [a1 queryWithDatabase:a3 predicate:a4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__HDSQLiteEntity_SQLiteQueryAdditions__enumerateEntitiesInDatabase_predicate_error_enumerationHandler___block_invoke;
  v14[3] = &unk_2796BE528;
  v16 = a1;
  v12 = v10;
  v15 = v12;
  LOBYTE(a5) = [v11 enumeratePersistentIDsAndProperties:0 error:a5 enumerationHandler:v14];

  return a5;
}

uint64_t __103__HDSQLiteEntity_SQLiteQueryAdditions__enumerateEntitiesInDatabase_predicate_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [objc_alloc(objc_opt_class()) initWithPersistentID:a2];
  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

+ (BOOL)enumerateQueryResultsFromColumns:(id)a3 properties:(id)a4 predicate:(id)a5 groupBy:(id)a6 orderingTerms:(id)a7 limit:(int64_t)a8 database:(id)a9 error:(id *)a10 enumerationHandler:(id)a11
{
  v16 = a3;
  v17 = a11;
  v18 = [a1 queryWithDatabase:a9 predicate:a5 limit:a8 orderingTerms:a7 groupBy:a6];
  LOBYTE(a7) = [v18 enumerateProperties:v16 error:a10 enumerationHandler:v17];

  return a7;
}

+ (BOOL)deleteEntitiesInDatabase:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v6 = [a1 queryWithDatabase:a3 predicate:a4];
  LOBYTE(a5) = [v6 deleteAllEntitiesWithError:a5];

  return a5;
}

+ (id)propertyValueForAnyInDatabase:(id)a3 property:(id)a4 predicate:(id)a5 error:(id *)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v11 = [a1 queryWithDatabase:a3 predicate:a5 limit:0 orderingTerms:0 groupBy:0];
  v23[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__HDSQLiteEntity_SQLiteQueryAdditions__propertyValueForAnyInDatabase_property_predicate_error___block_invoke;
  v16[3] = &unk_2796BE550;
  v16[4] = &v17;
  [v11 enumeratePersistentIDsAndProperties:v12 error:a6 enumerationHandler:v16];

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __95__HDSQLiteEntity_SQLiteQueryAdditions__propertyValueForAnyInDatabase_property_predicate_error___block_invoke(uint64_t a1, int a2, int a3, HDSQLiteRow *this)
{
  v5 = HDSQLiteRow::columnAsNaturalType(this, 0);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 0;
}

+ (id)aggregateValuesForProperty:(id)a3 functions:(id)a4 predicate:(id)a5 groupBy:(id)a6 database:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [(HDSQLiteQueryDescriptor *)v19 setEntityClass:a1];
  [(HDSQLiteQueryDescriptor *)v19 setPredicate:v16];
  [(HDSQLiteQueryDescriptor *)v19 setGroupBy:v17];
  v20 = [a1 aggregateValuesForProperty:v14 functions:v15 queryDescriptor:v19 database:v18 error:a8];

  return v20;
}

+ (id)aggregateValuesForProperty:(id)a3 functions:(id)a4 queryDescriptor:(id)a5 database:(id)a6 error:(id *)a7
{
  v67 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v40 = a4;
  v13 = a5;
  v43 = a6;
  v44 = v12;
  v45 = v13;
  v14 = [v13 groupBy];
  v46 = v14;
  v15 = [a1 disambiguatedSQLForProperty:v12];
  if (v14)
  {
    v41 = [a1 disambiguatedSQLForProperty:v14];
  }

  else
  {
    v41 = 0;
  }

  v39 = a7;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v40;
  v17 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v17)
  {
    v18 = *v60;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@)", *(*(&v59 + 1) + 8 * i), v15];
        [v16 addObject:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v17);
  }

  if (v14)
  {
    [v16 addObject:v41];
    v64[0] = v44;
    v64[1] = v14;
    [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
  }

  else
  {
    v65 = v44;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  }
  v37 = ;
  v38 = [v13 _SQLForSelectWithProperties:v37 columns:v16];
  v42 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v38];
  v21 = [MEMORY[0x277CBEB38] dictionary];
  v36 = [obj count];
  if (v14)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v22 = obj;
    v23 = [v22 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v23)
    {
      v24 = *v56;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v55 + 1) + 8 * j);
          v27 = [MEMORY[0x277CBEB38] dictionary];
          [v21 setObject:v27 forKeyedSubscript:v26];
        }

        v23 = [v22 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v23);
    }
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __108__HDSQLiteEntity_SQLiteQueryAdditions__aggregateValuesForProperty_functions_queryDescriptor_database_error___block_invoke;
  v53[3] = &unk_2796BDFF0;
  v28 = v45;
  v54 = v28;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __108__HDSQLiteEntity_SQLiteQueryAdditions__aggregateValuesForProperty_functions_queryDescriptor_database_error___block_invoke_2;
  v48[3] = &unk_2796BE578;
  v29 = v46;
  v49 = v29;
  v52 = v36;
  v30 = v21;
  v50 = v30;
  v31 = obj;
  v51 = v31;
  if ([v43 executeSQL:v42 error:v39 bindingHandler:v53 enumerationHandler:v48])
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  v34 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t __108__HDSQLiteEntity_SQLiteQueryAdditions__aggregateValuesForProperty_functions_queryDescriptor_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v5 = HDSQLiteColumnAsNaturalType(a2, v4);
    if (*(a1 + 56))
    {
      v6 = 0;
      do
      {
        v7 = HDSQLiteColumnAsNaturalType(a2, v6);
        if (v7)
        {
          v8 = *(a1 + 40);
          v9 = [*(a1 + 48) objectAtIndexedSubscript:v6];
          v10 = [v8 objectForKeyedSubscript:v9];
          [v10 setObject:v7 forKeyedSubscript:v5];
        }

        ++v6;
      }

      while (v6 < *(a1 + 56));
    }
  }

  else if (v4)
  {
    v11 = 0;
    do
    {
      v12 = HDSQLiteColumnAsNaturalType(a2, v11);
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [*(a1 + 48) objectAtIndexedSubscript:v11];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      ++v11;
    }

    while (v11 < *(a1 + 56));
  }

  return 1;
}

+ (id)aggregateSingleValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 database:(id)a6 error:(id *)a7
{
  v21[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v21[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v17 = [a1 aggregateValuesForProperty:v12 functions:v16 predicate:v14 groupBy:0 database:v15 error:a7];

  v18 = [v17 objectForKeyedSubscript:v13];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)aggregateSingleValueForProperty:(id)a3 function:(id)a4 queryDescriptor:(id)a5 database:(id)a6 error:(id *)a7
{
  v21[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v21[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v17 = [a1 aggregateValuesForProperty:v12 functions:v16 queryDescriptor:v14 database:v15 error:a7];

  v18 = [v17 objectForKeyedSubscript:v13];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)maxValueForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6
{
  v6 = [a1 aggregateSingleValueForProperty:a3 function:@"MAX" predicate:a4 database:a5 error:a6];

  return v6;
}

+ (id)sumValueForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6
{
  v6 = [a1 aggregateSingleValueForProperty:a3 function:@"SUM" predicate:a4 database:a5 error:a6];

  return v6;
}

+ (id)countValueForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6
{
  v6 = [a1 aggregateSingleValueForProperty:a3 function:@"COUNT" predicate:a4 database:a5 error:a6];

  return v6;
}

+ (id)maxPersistentIDWithPredicate:(id)a3 database:(id)a4 error:(id *)a5
{
  v5 = [a1 aggregateSingleValueForProperty:@"ROWID" function:@"MAX" predicate:a3 database:a4 error:a5];

  return v5;
}

+ (id)countDistinctForProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6
{
  v34[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [(HDSQLiteQueryDescriptor *)v13 setEntityClass:a1];
  [(HDSQLiteQueryDescriptor *)v13 setPredicate:v11];
  v14 = objc_alloc(MEMORY[0x277CCAB68]);
  v15 = [a1 disambiguatedSQLForProperty:v10];
  v16 = [v14 initWithFormat:@"%@(DISTINCT %@)", @"COUNT", v15];

  v34[0] = v10;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v33 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v19 = [(HDSQLiteQueryDescriptor *)v13 _SQLForSelectWithProperties:v17 columns:v18];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __90__HDSQLiteEntity_SQLiteQueryAdditions__countDistinctForProperty_predicate_database_error___block_invoke;
  v25[3] = &unk_2796BDFF0;
  v20 = v13;
  v26 = v20;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __90__HDSQLiteEntity_SQLiteQueryAdditions__countDistinctForProperty_predicate_database_error___block_invoke_2;
  v24[3] = &unk_2796BE2D0;
  v24[4] = &v27;
  [v12 executeSQL:v19 error:a6 bindingHandler:v25 enumerationHandler:v24];
  v21 = v28[5];

  _Block_object_dispose(&v27, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __90__HDSQLiteEntity_SQLiteQueryAdditions__countDistinctForProperty_predicate_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = 1;
  v3 = [*(a1 + 32) predicate];
  [v3 bindToStatement:a2 bindingIndex:&v4];
}

uint64_t __90__HDSQLiteEntity_SQLiteQueryAdditions__countDistinctForProperty_predicate_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = HDSQLiteColumnAsNaturalType(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (id)distinctProperty:(id)a3 predicate:(id)a4 database:(id)a5 error:(id *)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [(HDSQLiteQueryDescriptor *)v13 setEntityClass:a1];
  [(HDSQLiteQueryDescriptor *)v13 setPredicate:v11];
  [(HDSQLiteQueryDescriptor *)v13 setReturnsDistinctEntities:1];
  v14 = [a1 disambiguatedSQLForProperty:v10];
  v30[0] = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v29 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v17 = [(HDSQLiteQueryDescriptor *)v13 _SQLForSelectWithProperties:v15 columns:v16];

  v18 = [MEMORY[0x277CBEB18] array];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __82__HDSQLiteEntity_SQLiteQueryAdditions__distinctProperty_predicate_database_error___block_invoke;
  v27[3] = &unk_2796BDFF0;
  v19 = v13;
  v28 = v19;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__HDSQLiteEntity_SQLiteQueryAdditions__distinctProperty_predicate_database_error___block_invoke_2;
  v25[3] = &unk_2796BDFC8;
  v26 = v18;
  v20 = v18;
  if ([v12 executeSQL:v17 error:a6 bindingHandler:v27 enumerationHandler:v25])
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

void __82__HDSQLiteEntity_SQLiteQueryAdditions__distinctProperty_predicate_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = 1;
  v3 = [*(a1 + 32) predicate];
  [v3 bindToStatement:a2 bindingIndex:&v4];
}

uint64_t __82__HDSQLiteEntity_SQLiteQueryAdditions__distinctProperty_predicate_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = HDSQLiteColumnAsNaturalType(a2, 0);
  [v2 addObject:v3];

  return 1;
}

+ (id)queryWithDatabase:(id)a3 predicate:(id)a4
{
  v4 = [a1 queryWithDatabase:a3 predicate:a4 limit:0 orderingTerms:0 groupBy:0];

  return v4;
}

+ (id)queryWithDatabase:(id)a3 predicate:(id)a4 limit:(unint64_t)a5 orderingTerms:(id)a6 groupBy:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [(HDSQLiteQueryDescriptor *)v16 setEntityClass:a1];
  [(HDSQLiteQueryDescriptor *)v16 setLimitCount:a5];
  [(HDSQLiteQueryDescriptor *)v16 setOrderingTerms:v14];
  [(HDSQLiteQueryDescriptor *)v16 setPredicate:v13];
  [(HDSQLiteQueryDescriptor *)v16 setGroupBy:v15];
  v17 = [[HDSQLiteQuery alloc] initWithDatabase:v12 descriptor:v16];

  return v17;
}

@end