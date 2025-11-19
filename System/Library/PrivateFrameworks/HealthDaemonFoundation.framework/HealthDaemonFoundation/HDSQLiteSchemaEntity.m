@interface HDSQLiteSchemaEntity
+ (BOOL)hasROWID;
+ (Class)entityForProperty:(id)a3;
+ (const)_cachedColumnDefinitionsWithCount:(unint64_t *)a3;
+ (id)_columnDefinitionObjects;
+ (id)createTableSQL;
+ (id)databaseTable;
+ (id)deleteStatementWithProperty:(id)a3 database:(id)a4;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)insertSQLForProperties:(id)a3 shouldReplace:(BOOL)a4;
+ (id)primaryKeyColumns;
+ (id)updateSQLForProperties:(id)a3 predicate:(id)a4;
+ (uint64_t)_copyDeleteSQLWithTableName:(void *)a3 columnName:;
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

+ (const)_cachedColumnDefinitionsWithCount:(unint64_t *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [a1 columnDefinitionsWithCount:?];
  if (!*a3)
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
      *a3 = [v9 count];
      v6 = [v9 columnDefinitions];
LABEL_19:

      goto LABEL_20;
    }

    v10 = [a1 _columnDefinitionObjects];
    if ([v10 count])
    {
      v11 = [[HDColumnCacheEntry alloc] initWithDefinitions:v10];
      v12 = v11;
      if (v11 && [(HDColumnCacheEntry *)v11 count])
      {
        [+[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::columnCache setObject:v12 forKey:v8];
        os_unfair_lock_unlock(&+[HDSQLiteSchemaEntity _cachedColumnDefinitionsWithCount:]::_columnCacheLock);
        *a3 = [(HDColumnCacheEntry *)v12 count];
        v6 = [(HDColumnCacheEntry *)v12 columnDefinitions];

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
    v14 = [MEMORY[0x277CCDD30] sharedBehavior];
    if (![v14 isAppleInternalInstall] || (objc_msgSend(v8, "isEqualToString:", @"HDHealthEntity") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"HDSQLiteEntity") & 1) != 0)
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

    v6 = 0;
    *a3 = 0;
    goto LABEL_18;
  }

  v6 = v5;
LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v3 = HDSQLiteEntityDisambiguatedSQLForProperty(a1, a3);

  return v3;
}

+ (id)createTableSQL
{
  v12 = 0;
  v3 = [a1 _cachedColumnDefinitionsWithCount:&v12];
  v4 = [a1 disambiguatedDatabaseTable];
  v5 = v12;
  v6 = [a1 foreignKeys];
  v7 = [a1 primaryKeyColumns];
  v8 = [a1 uniquedColumns];
  v9 = [a1 checkConstraints];
  v10 = HDSQLiteEntityCreateTableSQL(v4, v3, v5, v6, v7, v8, v9, [a1 hasROWID]);

  return v10;
}

+ (Class)entityForProperty:(id)a3
{
  v3 = HDSQLiteEntityForProperty(a1, a3);

  return v3;
}

+ (id)insertSQLForProperties:(id)a3 shouldReplace:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = MEMORY[0x277CCAB68];
  if (v4)
  {
    v8 = @" OR REPLACE";
  }

  else
  {
    v8 = &stru_28637B800;
  }

  v9 = [a1 disambiguatedDatabaseTable];
  v10 = [v6 componentsJoinedByString:{@", "}];
  v11 = objc_msgSend(v7, "stringWithFormat:", @"INSERT%@ INTO %@ (%@) VALUES ("), v8, v9, v10;

  v12 = [v6 count];
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

+ (id)updateSQLForProperties:(id)a3 predicate:(id)a4
{
  v6 = a4;
  v7 = [a3 hk_map:&__block_literal_global_7];
  v8 = MEMORY[0x277CCACA8];
  v9 = [a1 disambiguatedDatabaseTable];
  v10 = [v7 componentsJoinedByString:{@", "}];
  v11 = &stru_28637B800;
  if (v6)
  {
    v12 = @" WHERE ";
  }

  else
  {
    v12 = &stru_28637B800;
  }

  if (v6)
  {
    v11 = [v6 SQLForEntityClass:objc_opt_class()];
  }

  v13 = [v8 stringWithFormat:@"UPDATE %@ SET %@%@%@", v9, v10, v12, v11];
  if (v6)
  {
  }

  return v13;
}

id __57__HDSQLiteSchemaEntity_updateSQLForProperties_predicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ?", a2];

  return v2;
}

+ (uint64_t)_copyDeleteSQLWithTableName:(void *)a3 columnName:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v4, v5];

  return v6;
}

+ (id)deleteStatementWithProperty:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 disambiguatedDatabaseTable];
  v9 = [(HDSQLiteSchemaEntity *)a1 _copyDeleteSQLWithTableName:v8 columnName:v6];

  v10 = [[HDSQLiteStatement alloc] initWithSQL:v9 database:v7];

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