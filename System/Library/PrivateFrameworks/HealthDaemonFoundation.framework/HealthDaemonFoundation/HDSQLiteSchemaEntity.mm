@interface HDSQLiteSchemaEntity
+ (BOOL)hasROWID;
+ (Class)entityForProperty:(id)property;
+ (const)_cachedColumnDefinitionsWithCount:(unint64_t *)count;
+ (id)_columnDefinitionObjects;
+ (id)createTableSQL;
+ (id)databaseTable;
+ (id)deleteStatementWithProperty:(id)property database:(id)database;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)insertSQLForProperties:(id)properties shouldReplace:(BOOL)replace;
+ (id)primaryKeyColumns;
+ (id)updateSQLForProperties:(id)properties predicate:(id)predicate;
+ (uint64_t)_copyDeleteSQLWithTableName:(void *)name columnName:;
@end

@implementation HDSQLiteSchemaEntity

+ (id)_columnDefinitionObjects
{
  swift_getObjCClassMetadata();
  sub_251570844();
  sub_2515709F8();
  v2 = sub_2515BB91C();

  return v2;
}

+ (const)_cachedColumnDefinitionsWithCount:(unint64_t *)count
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [self columnDefinitionsWithCount:?];
  if (!*count)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    os_unfair_lock_lock(&+[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::_columnCacheLock);
    {
      +[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::columnCache = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v9 = [+[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::columnCache objectForKey:v8];
    if (v9)
    {
      os_unfair_lock_unlock(&+[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::_columnCacheLock);
      *count = [v9 count];
      columnDefinitions = [v9 columnDefinitions];
LABEL_19:

      goto LABEL_20;
    }

    _columnDefinitionObjects = [self _columnDefinitionObjects];
    if ([_columnDefinitionObjects count])
    {
      v11 = [[HDColumnCacheEntry alloc] initWithDefinitions:_columnDefinitionObjects];
      v12 = v11;
      if (v11 && [(HDColumnCacheEntry *)v11 count])
      {
        [+[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::columnCache setObject:v12 forKey:v8];
        os_unfair_lock_unlock(&+[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::_columnCacheLock);
        *count = [(HDColumnCacheEntry *)v12 count];
        columnDefinitions = [(HDColumnCacheEntry *)v12 columnDefinitions];

LABEL_18:
        goto LABEL_19;
      }

      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        [(HDSQLiteSchemaEntity *)v8 _cachedColumnDefinitionsWithCount:v13];
      }
    }

    os_unfair_lock_unlock(&+[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::_columnCacheLock);
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    if (![mEMORY[0x277CCDD30] isAppleInternalInstall] || (objc_msgSend(v8, "isEqualToString:", @"HDHealthEntity") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"HDSQLiteEntity") & 1) != 0)
    {
    }

    else
    {
      v17 = [v8 isEqualToString:@"HDSQLiteSchemaEntity"];

      if ((v17 & 1) == 0)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v8;
          _os_log_impl(&dword_25156C000, v18, OS_LOG_TYPE_DEFAULT, "No column definitions for %@", &v19, 0xCu);
        }
      }
    }

    columnDefinitions = 0;
    *count = 0;
    goto LABEL_18;
  }

  columnDefinitions = v5;
LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
  return columnDefinitions;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  v3 = HDSQLiteEntityDisambiguatedSQLForProperty(self, property);

  return v3;
}

+ (id)createTableSQL
{
  v12 = 0;
  v3 = [self _cachedColumnDefinitionsWithCount:&v12];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v5 = v12;
  foreignKeys = [self foreignKeys];
  primaryKeyColumns = [self primaryKeyColumns];
  uniquedColumns = [self uniquedColumns];
  checkConstraints = [self checkConstraints];
  v10 = HDSQLiteEntityCreateTableSQL(disambiguatedDatabaseTable, v3, v5, foreignKeys, primaryKeyColumns, uniquedColumns, checkConstraints, [self hasROWID]);

  return v10;
}

+ (Class)entityForProperty:(id)property
{
  v3 = HDSQLiteEntityForProperty(self, property);

  return v3;
}

+ (id)insertSQLForProperties:(id)properties shouldReplace:(BOOL)replace
{
  replaceCopy = replace;
  propertiesCopy = properties;
  v7 = MEMORY[0x277CCAB68];
  if (replaceCopy)
  {
    v8 = @" OR REPLACE";
  }

  else
  {
    v8 = &stru_28637B800;
  }

  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v10 = [propertiesCopy componentsJoinedByString:{@", "}];
  v11 = objc_msgSend(v7, "stringWithFormat:", @"INSERT%@ INTO %@ (%@) VALUES ("), v8, disambiguatedDatabaseTable, v10;

  v12 = [propertiesCopy count];
  if (v12)
  {
    v13 = @"?";
    do
    {
      [v11 appendString:v13];
      v13 = @", ?";
      --v12;
    }

    while (v12);
  }

  [v11 appendString:@""]);

  return v11;
}

+ (id)updateSQLForProperties:(id)properties predicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = [properties hk_map:&__block_literal_global_7];
  v8 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v10 = [v7 componentsJoinedByString:{@", "}];
  v11 = &stru_28637B800;
  if (predicateCopy)
  {
    v12 = @" WHERE ";
  }

  else
  {
    v12 = &stru_28637B800;
  }

  if (predicateCopy)
  {
    v11 = [predicateCopy SQLForEntityClass:objc_opt_class()];
  }

  v13 = [v8 stringWithFormat:@"UPDATE %@ SET %@%@%@", disambiguatedDatabaseTable, v10, v12, v11];
  if (predicateCopy)
  {
  }

  return v13;
}

id __57__HDSQLiteSchemaEntity_updateSQLForProperties_predicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ?", a2];

  return v2;
}

+ (uint64_t)_copyDeleteSQLWithTableName:(void *)name columnName:
{
  v4 = a2;
  nameCopy = name;
  objc_opt_self();
  nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v4, nameCopy];

  return nameCopy;
}

+ (id)deleteStatementWithProperty:(id)property database:(id)database
{
  propertyCopy = property;
  databaseCopy = database;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v9 = [(HDSQLiteSchemaEntity *)self _copyDeleteSQLWithTableName:disambiguatedDatabaseTable columnName:propertyCopy];

  v10 = [[HDSQLiteStatement alloc] initWithSQL:v9 database:databaseCopy];

  return v10;
}

+ (id)databaseTable
{
  objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  return 0;
}

+ (BOOL)hasROWID
{
  objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  return 1;
}

+ (id)primaryKeyColumns
{
  objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  return 0;
}

+ (void)_cachedColumnDefinitionsWithCount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25156C000, a2, OS_LOG_TYPE_ERROR, "Error creating HDColumnCacheEntry for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end