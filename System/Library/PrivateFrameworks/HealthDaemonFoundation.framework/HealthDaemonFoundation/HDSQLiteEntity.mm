@interface HDSQLiteEntity
+ (BOOL)deleteEntitiesInDatabase:(id)database predicate:(id)predicate error:(id *)error;
+ (BOOL)enumerateEntitiesInDatabase:(id)database predicate:(id)predicate error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateQueryResultsFromColumns:(id)columns properties:(id)properties predicate:(id)predicate groupBy:(id)by orderingTerms:(id)terms limit:(int64_t)limit database:(id)database error:(id *)self0 enumerationHandler:(id)self1;
+ (BOOL)updateProperties:(id)properties predicate:(id)predicate database:(id)database error:(id *)error bindingHandler:(id)handler;
+ (id)aggregateSingleValueForProperty:(id)property function:(id)function predicate:(id)predicate database:(id)database error:(id *)error;
+ (id)aggregateSingleValueForProperty:(id)property function:(id)function queryDescriptor:(id)descriptor database:(id)database error:(id *)error;
+ (id)aggregateValuesForProperty:(id)property functions:(id)functions predicate:(id)predicate groupBy:(id)by database:(id)database error:(id *)error;
+ (id)aggregateValuesForProperty:(id)property functions:(id)functions queryDescriptor:(id)descriptor database:(id)database error:(id *)error;
+ (id)anyInDatabase:(id)database predicate:(id)predicate error:(id *)error;
+ (id)countDistinctForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error;
+ (id)countValueForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error;
+ (id)distinctProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error;
+ (id)entityWithPersistentID:(id)d;
+ (id)firstInDatabase:(id)database predicate:(id)predicate orderingTerms:(id)terms error:(id *)error;
+ (id)maxPersistentIDWithPredicate:(id)predicate database:(id)database error:(id *)error;
+ (id)maxValueForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error;
+ (id)propertyValueForAnyInDatabase:(id)database property:(id)property predicate:(id)predicate error:(id *)error;
+ (id)queryWithDatabase:(id)database predicate:(id)predicate;
+ (id)queryWithDatabase:(id)database predicate:(id)predicate limit:(unint64_t)limit orderingTerms:(id)terms groupBy:(id)by;
+ (id)sumValueForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error;
+ (int64_t)sizeOfEntityTableInDatabase:(id)database;
- (BOOL)BOOLeanForProperty:(id)property database:(id)database;
- (BOOL)deleteFromDatabase:(id)database error:(id *)error;
- (BOOL)existsInDatabase:(id)database;
- (BOOL)getValuesForProperties:(id)properties database:(id)database error:(id *)error handler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateProperties:(id)properties database:(id)database error:(id *)error bindingHandler:(id)handler;
- (HDSQLiteEntity)initWithPersistentID:(int64_t)d;
- (NSString)description;
- (id)UUIDForProperty:(id)property database:(id)database;
- (id)_updateSQLForProperties:(uint64_t)properties;
- (id)dateForProperty:(id)property database:(id)database;
- (id)numberForProperty:(id)property database:(id)database;
- (id)stringForProperty:(id)property database:(id)database;
- (id)valueForProperty:(id)property database:(id)database;
- (uint64_t)_deleteRowFromTable:(void *)table usingColumn:(void *)column database:(uint64_t)database error:;
@end

@implementation HDSQLiteEntity

- (HDSQLiteEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = HDSQLiteEntity;
  result = [(HDSQLiteEntity *)&v5 init];
  if (result)
  {
    result->_persistentID = d;
  }

  return result;
}

+ (id)entityWithPersistentID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [[self alloc] initWithPersistentID:{objc_msgSend(dCopy, "longLongValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_updateSQLForProperties:(uint64_t)properties
{
  v3 = a2;
  v4 = v3;
  if (properties && [v3 count])
  {
    v5 = objc_opt_class();
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v5 entityForProperty:v6];

    v8 = [v4 hk_map:&__block_literal_global_434];
    v9 = MEMORY[0x277CCACA8];
    disambiguatedDatabaseTable = [v7 disambiguatedDatabaseTable];
    v11 = [v8 componentsJoinedByString:{@", "}];
    v12 = [v9 stringWithFormat:@"UPDATE %@ SET %@ WHERE %@ = ?", disambiguatedDatabaseTable, v11, @"ROWID"];
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

+ (int64_t)sizeOfEntityTableInDatabase:(id)database
{
  databaseCopy = database;
  v4 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [objc_opt_class() disambiguatedDatabaseTable];
  v6 = [v4 stringWithFormat:@"SELECT SUM(\"pgsize\"", disambiguatedDatabaseTable];

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
  [databaseCopy executeSQL:v6 error:&v11 bindingHandler:0 enumerationHandler:v10];
  v7 = v11;
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (BOOL)updateProperties:(id)properties database:(id)database error:(id *)error bindingHandler:(id)handler
{
  propertiesCopy = properties;
  databaseCopy = database;
  handlerCopy = handler;
  v13 = [(HDSQLiteEntity *)self _updateSQLForProperties:propertiesCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__HDSQLiteEntity_updateProperties_database_error_bindingHandler___block_invoke;
  v17[3] = &unk_2796BE2F8;
  v14 = propertiesCopy;
  v18 = v14;
  v15 = handlerCopy;
  selfCopy = self;
  v20 = v15;
  LOBYTE(error) = [databaseCopy executeSQL:v13 error:error bindingHandler:v17 enumerationHandler:0];

  return error;
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

+ (BOOL)updateProperties:(id)properties predicate:(id)predicate database:(id)database error:(id *)error bindingHandler:(id)handler
{
  propertiesCopy = properties;
  predicateCopy = predicate;
  databaseCopy = database;
  handlerCopy = handler;
  v16 = [self updateSQLForProperties:propertiesCopy predicate:predicateCopy];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__HDSQLiteEntity_updateProperties_predicate_database_error_bindingHandler___block_invoke;
  v21[3] = &unk_2796BE2F8;
  v17 = propertiesCopy;
  v22 = v17;
  v18 = handlerCopy;
  v24 = v18;
  v19 = predicateCopy;
  v23 = v19;
  LOBYTE(error) = [databaseCopy executeSQL:v16 error:error bindingHandler:v21 enumerationHandler:0];

  return error;
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

- (BOOL)deleteFromDatabase:(id)database error:(id *)error
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HDSQLiteEntity_deleteFromDatabase_error___block_invoke;
  v5[3] = &unk_2796BE320;
  v5[4] = self;
  return [database performTransactionWithType:1 error:error usingBlock:v5];
}

uint64_t __43__HDSQLiteEntity_deleteFromDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() disambiguatedDatabaseTable];
  v8 = [(HDSQLiteEntity *)v6 _deleteRowFromTable:v7 usingColumn:@"ROWID" database:v5 error:a3];

  return v8;
}

- (uint64_t)_deleteRowFromTable:(void *)table usingColumn:(void *)column database:(uint64_t)database error:
{
  v9 = a2;
  tableCopy = table;
  columnCopy = column;
  if (self)
  {
    v12 = [(HDSQLiteSchemaEntity *)HDSQLiteEntity _copyDeleteSQLWithTableName:v9 columnName:tableCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__HDSQLiteEntity__deleteRowFromTable_usingColumn_database_error___block_invoke;
    v15[3] = &unk_2796BDFF0;
    v15[4] = self;
    v13 = [columnCopy executeSQL:v12 error:database bindingHandler:v15 enumerationHandler:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)existsInDatabase:(id)database
{
  databaseCopy = database;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  disambiguatedDatabaseTable = [objc_opt_class() disambiguatedDatabaseTable];
  v7 = [v5 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", disambiguatedDatabaseTable, @"ROWID"];

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
  [databaseCopy executeSQL:v7 error:0 bindingHandler:v10 enumerationHandler:v9];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

- (BOOL)getValuesForProperties:(id)properties database:(id)database error:(id *)error handler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  databaseCopy = database;
  handlerCopy = handler;
  v11 = objc_opt_class();
  v47 = [objc_msgSend(v11 "entityClassForEnumeration")];
  v12 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"SELECT "];
  errorCopy = error;
  selfCopy = self;
  v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v13 = propertiesCopy;
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
        sQLJoinClause = [v24 SQLJoinClause];
        [v12 appendString:sQLJoinClause];
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

        uTF8String = [*(*(&v58 + 1) + 8 * k) UTF8String];
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

          *(8 * v33) = uTF8String;
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
          *v63 = uTF8String;
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
  v57[4] = selfCopy;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3321888768;
  v50[2] = __64__HDSQLiteEntity_getValuesForProperties_database_error_handler___block_invoke_2;
  v50[3] = &unk_286379C30;
  v53 = v65;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const**,char const**>(&v54, __p, v63, (v63 - __p) >> 3);
  v38 = handlerCopy;
  v52 = v38;
  v39 = v26;
  v51 = v39;
  v40 = [databaseCopy executeSQL:v12 error:errorCopy bindingHandler:v57 enumerationHandler:v50];

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

- (id)valueForProperty:(id)property database:(id)database
{
  v19[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = propertyCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HDSQLiteEntity_valueForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:databaseCopy handler:v12];

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

- (BOOL)BOOLeanForProperty:(id)property database:(id)database
{
  v16[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  databaseCopy = database;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16[0] = propertyCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__HDSQLiteEntity_BOOLeanForProperty_database___block_invoke;
  v11[3] = &unk_2796BE348;
  v11[4] = &v12;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:databaseCopy handler:v11];

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

- (id)dateForProperty:(id)property database:(id)database
{
  v19[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = propertyCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HDSQLiteEntity_dateForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:databaseCopy handler:v12];

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

- (id)numberForProperty:(id)property database:(id)database
{
  v19[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = propertyCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HDSQLiteEntity_numberForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:databaseCopy handler:v12];

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

- (id)stringForProperty:(id)property database:(id)database
{
  v19[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = propertyCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HDSQLiteEntity_stringForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:databaseCopy handler:v12];

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

- (id)UUIDForProperty:(id)property database:(id)database
{
  v19[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v19[0] = propertyCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HDSQLiteEntity_UUIDForProperty_database___block_invoke;
  v12[3] = &unk_2796BE348;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:databaseCopy handler:v12];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_persistentID == self->_persistentID;
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

+ (id)anyInDatabase:(id)database predicate:(id)predicate error:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v7 = [self queryWithDatabase:database predicate:predicate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HDSQLiteEntity_SQLiteQueryAdditions__anyInDatabase_predicate_error___block_invoke;
  v10[3] = &unk_2796BE500;
  v10[4] = &v11;
  v10[5] = self;
  [v7 enumeratePersistentIDsAndProperties:0 error:error enumerationHandler:v10];
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

+ (id)firstInDatabase:(id)database predicate:(id)predicate orderingTerms:(id)terms error:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v8 = [self queryWithDatabase:database predicate:predicate limit:1 orderingTerms:terms groupBy:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HDSQLiteEntity_SQLiteQueryAdditions__firstInDatabase_predicate_orderingTerms_error___block_invoke;
  v11[3] = &unk_2796BE500;
  v11[4] = &v12;
  v11[5] = self;
  [v8 enumeratePersistentIDsAndProperties:0 error:error enumerationHandler:v11];
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

+ (BOOL)enumerateEntitiesInDatabase:(id)database predicate:(id)predicate error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  v11 = [self queryWithDatabase:database predicate:predicate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__HDSQLiteEntity_SQLiteQueryAdditions__enumerateEntitiesInDatabase_predicate_error_enumerationHandler___block_invoke;
  v14[3] = &unk_2796BE528;
  selfCopy = self;
  v12 = handlerCopy;
  v15 = v12;
  LOBYTE(error) = [v11 enumeratePersistentIDsAndProperties:0 error:error enumerationHandler:v14];

  return error;
}

uint64_t __103__HDSQLiteEntity_SQLiteQueryAdditions__enumerateEntitiesInDatabase_predicate_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [objc_alloc(objc_opt_class()) initWithPersistentID:a2];
  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

+ (BOOL)enumerateQueryResultsFromColumns:(id)columns properties:(id)properties predicate:(id)predicate groupBy:(id)by orderingTerms:(id)terms limit:(int64_t)limit database:(id)database error:(id *)self0 enumerationHandler:(id)self1
{
  columnsCopy = columns;
  handlerCopy = handler;
  v18 = [self queryWithDatabase:database predicate:predicate limit:limit orderingTerms:terms groupBy:by];
  LOBYTE(terms) = [v18 enumerateProperties:columnsCopy error:error enumerationHandler:handlerCopy];

  return terms;
}

+ (BOOL)deleteEntitiesInDatabase:(id)database predicate:(id)predicate error:(id *)error
{
  v6 = [self queryWithDatabase:database predicate:predicate];
  LOBYTE(error) = [v6 deleteAllEntitiesWithError:error];

  return error;
}

+ (id)propertyValueForAnyInDatabase:(id)database property:(id)property predicate:(id)predicate error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v11 = [self queryWithDatabase:database predicate:predicate limit:0 orderingTerms:0 groupBy:0];
  v23[0] = propertyCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__HDSQLiteEntity_SQLiteQueryAdditions__propertyValueForAnyInDatabase_property_predicate_error___block_invoke;
  v16[3] = &unk_2796BE550;
  v16[4] = &v17;
  [v11 enumeratePersistentIDsAndProperties:v12 error:error enumerationHandler:v16];

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

+ (id)aggregateValuesForProperty:(id)property functions:(id)functions predicate:(id)predicate groupBy:(id)by database:(id)database error:(id *)error
{
  propertyCopy = property;
  functionsCopy = functions;
  predicateCopy = predicate;
  byCopy = by;
  databaseCopy = database;
  v19 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [(HDSQLiteQueryDescriptor *)v19 setEntityClass:self];
  [(HDSQLiteQueryDescriptor *)v19 setPredicate:predicateCopy];
  [(HDSQLiteQueryDescriptor *)v19 setGroupBy:byCopy];
  v20 = [self aggregateValuesForProperty:propertyCopy functions:functionsCopy queryDescriptor:v19 database:databaseCopy error:error];

  return v20;
}

+ (id)aggregateValuesForProperty:(id)property functions:(id)functions queryDescriptor:(id)descriptor database:(id)database error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  functionsCopy = functions;
  descriptorCopy = descriptor;
  databaseCopy = database;
  v44 = propertyCopy;
  v45 = descriptorCopy;
  groupBy = [descriptorCopy groupBy];
  v46 = groupBy;
  v15 = [self disambiguatedSQLForProperty:propertyCopy];
  if (groupBy)
  {
    v41 = [self disambiguatedSQLForProperty:groupBy];
  }

  else
  {
    v41 = 0;
  }

  errorCopy = error;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = functionsCopy;
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

  if (groupBy)
  {
    [v16 addObject:v41];
    v64[0] = v44;
    v64[1] = groupBy;
    [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
  }

  else
  {
    v65 = v44;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  }
  v37 = ;
  v38 = [descriptorCopy _SQLForSelectWithProperties:v37 columns:v16];
  v42 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v38];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v36 = [obj count];
  if (groupBy)
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
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKeyedSubscript:v26];
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
  v30 = dictionary;
  v50 = v30;
  v31 = obj;
  v51 = v31;
  if ([databaseCopy executeSQL:v42 error:errorCopy bindingHandler:v53 enumerationHandler:v48])
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

+ (id)aggregateSingleValueForProperty:(id)property function:(id)function predicate:(id)predicate database:(id)database error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  functionCopy = function;
  predicateCopy = predicate;
  databaseCopy = database;
  v21[0] = functionCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v17 = [self aggregateValuesForProperty:propertyCopy functions:v16 predicate:predicateCopy groupBy:0 database:databaseCopy error:error];

  v18 = [v17 objectForKeyedSubscript:functionCopy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)aggregateSingleValueForProperty:(id)property function:(id)function queryDescriptor:(id)descriptor database:(id)database error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  functionCopy = function;
  descriptorCopy = descriptor;
  databaseCopy = database;
  v21[0] = functionCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v17 = [self aggregateValuesForProperty:propertyCopy functions:v16 queryDescriptor:descriptorCopy database:databaseCopy error:error];

  v18 = [v17 objectForKeyedSubscript:functionCopy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)maxValueForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error
{
  v6 = [self aggregateSingleValueForProperty:property function:@"MAX" predicate:predicate database:database error:error];

  return v6;
}

+ (id)sumValueForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error
{
  v6 = [self aggregateSingleValueForProperty:property function:@"SUM" predicate:predicate database:database error:error];

  return v6;
}

+ (id)countValueForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error
{
  v6 = [self aggregateSingleValueForProperty:property function:@"COUNT" predicate:predicate database:database error:error];

  return v6;
}

+ (id)maxPersistentIDWithPredicate:(id)predicate database:(id)database error:(id *)error
{
  v5 = [self aggregateSingleValueForProperty:@"ROWID" function:@"MAX" predicate:predicate database:database error:error];

  return v5;
}

+ (id)countDistinctForProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  predicateCopy = predicate;
  databaseCopy = database;
  v13 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [(HDSQLiteQueryDescriptor *)v13 setEntityClass:self];
  [(HDSQLiteQueryDescriptor *)v13 setPredicate:predicateCopy];
  v14 = objc_alloc(MEMORY[0x277CCAB68]);
  v15 = [self disambiguatedSQLForProperty:propertyCopy];
  v16 = [v14 initWithFormat:@"%@(DISTINCT %@)", @"COUNT", v15];

  v34[0] = propertyCopy;
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
  [databaseCopy executeSQL:v19 error:error bindingHandler:v25 enumerationHandler:v24];
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

+ (id)distinctProperty:(id)property predicate:(id)predicate database:(id)database error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  predicateCopy = predicate;
  databaseCopy = database;
  v13 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [(HDSQLiteQueryDescriptor *)v13 setEntityClass:self];
  [(HDSQLiteQueryDescriptor *)v13 setPredicate:predicateCopy];
  [(HDSQLiteQueryDescriptor *)v13 setReturnsDistinctEntities:1];
  v14 = [self disambiguatedSQLForProperty:propertyCopy];
  v30[0] = propertyCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v29 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v17 = [(HDSQLiteQueryDescriptor *)v13 _SQLForSelectWithProperties:v15 columns:v16];

  array = [MEMORY[0x277CBEB18] array];
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
  v26 = array;
  v20 = array;
  if ([databaseCopy executeSQL:v17 error:error bindingHandler:v27 enumerationHandler:v25])
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

+ (id)queryWithDatabase:(id)database predicate:(id)predicate
{
  v4 = [self queryWithDatabase:database predicate:predicate limit:0 orderingTerms:0 groupBy:0];

  return v4;
}

+ (id)queryWithDatabase:(id)database predicate:(id)predicate limit:(unint64_t)limit orderingTerms:(id)terms groupBy:(id)by
{
  databaseCopy = database;
  predicateCopy = predicate;
  termsCopy = terms;
  byCopy = by;
  v16 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [(HDSQLiteQueryDescriptor *)v16 setEntityClass:self];
  [(HDSQLiteQueryDescriptor *)v16 setLimitCount:limit];
  [(HDSQLiteQueryDescriptor *)v16 setOrderingTerms:termsCopy];
  [(HDSQLiteQueryDescriptor *)v16 setPredicate:predicateCopy];
  [(HDSQLiteQueryDescriptor *)v16 setGroupBy:byCopy];
  v17 = [[HDSQLiteQuery alloc] initWithDatabase:databaseCopy descriptor:v16];

  return v17;
}

@end