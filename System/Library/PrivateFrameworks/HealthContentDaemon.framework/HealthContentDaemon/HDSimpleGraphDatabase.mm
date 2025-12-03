@interface HDSimpleGraphDatabase
+ (id)_createIndexStatementsForEntityClasses:(uint64_t)classes;
+ (id)_createSchemaStatementsWithBehavior:(uint64_t)behavior;
+ (id)_createTableStatementsForEntityClasses:(uint64_t)classes;
+ (id)_entityClasses;
+ (id)unitTesting_didInitGraphDatabaseHandler;
+ (uint64_t)_createSchemaForDatabase:(void *)database behavior:(uint64_t)behavior error:;
+ (uint64_t)_migrateDatabase:(uint64_t *)database fromVersion:(void *)version behavior:(uint64_t)behavior error:;
+ (uint64_t)_migrateDatabase:(uint64_t)database toVersion:(uint64_t)version function:(uint64_t)function error:;
+ (uint64_t)_openDatabase:(uint64_t)database error:;
+ (uint64_t)_readSchemaVersionForDatabase:(uint64_t)database error:;
+ (uint64_t)_removeExistingAndCreateDatabase:(uint64_t)database error:;
+ (uint64_t)_removeExistingDatabaseAtURL:(uint64_t)l error:;
+ (uint64_t)_validateOrCreateSchemaForDatabase:(uint64_t)database error:;
+ (void)_graphDatabaseWithURL:(uint64_t)l error:;
+ (void)setUnitTesting_didInitGraphDatabaseHandler:(id)handler;
- (BOOL)deleteWithError:(id *)error;
- (BOOL)enumerateAttributesForNodeWithID:(int64_t)d includeDeleted:(BOOL)deleted error:(id *)error enumerationHandler:(id)handler;
- (BOOL)foreignKeysEnable:(BOOL)enable error:(id *)error;
- (HDSimpleGraphDatabase)init;
- (id)description;
- (id)schemaVersionWithError:(id *)error;
- (id)unitTesting_countOfNodesWithRelationshipType:(int64_t)type error:(id *)error;
- (id)unitTesting_insertNodeWithID:(int64_t)d error:(id *)error;
- (uint64_t)_openAndCreateDatabaseIfNeededWithError:(uint64_t)result;
- (void)_createDatabaseConnectionWithURL:(uint64_t)l;
- (void)_initWithURL:(void *)l;
- (void)close;
- (void)dealloc;
@end

@implementation HDSimpleGraphDatabase

- (HDSimpleGraphDatabase)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (void)_graphDatabaseWithURL:(uint64_t)l error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [[HDSimpleGraphDatabase alloc] _initWithURL:v4];

  v6 = MEMORY[0x253078050](unitTesting_didInitGraphDatabaseHandler);
  if (v6)
  {
    (*(unitTesting_didInitGraphDatabaseHandler + 16))(unitTesting_didInitGraphDatabaseHandler, v5);
  }

  if ([(HDSimpleGraphDatabase *)v5 _openAndCreateDatabaseIfNeededWithError:l])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(HDSimpleGraphDatabase *)self close];
  v3.receiver = self;
  v3.super_class = HDSimpleGraphDatabase;
  [(HDSimpleGraphDatabase *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  URL = self->_URL;
  if (URL)
  {
    path = [(NSURL *)URL path];
    v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, path];
  }

  else
  {
    v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, @"in-memory"];
  }

  return v7;
}

- (id)schemaVersionWithError:(id *)error
{
  v3 = [HDSimpleGraphDatabase _readSchemaVersionForDatabase:error error:?];
  if (v3 < 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  }

  return v4;
}

+ (uint64_t)_readSchemaVersionForDatabase:(uint64_t)database error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 userVersionWithDatabaseName:0 error:database];

  return v5;
}

+ (uint64_t)_openDatabase:(uint64_t)database error:
{
  v4 = a2;
  v5 = objc_opt_self();
  if ([v4 openWithError:database])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(HDSimpleGraphDatabase *)v5 _validateOrCreateSchemaForDatabase:v4 error:database];
  }

  return v6;
}

+ (uint64_t)_validateOrCreateSchemaForDatabase:(uint64_t)database error:
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_self();
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  v22 = 0;
  v7 = [(HDSimpleGraphDatabase *)v5 _readSchemaVersionForDatabase:v4 error:&v22];
  v8 = v22;
  if ([mEMORY[0x277CCDD30] supportsOntologyDatabaseFutureMigrations])
  {
    v9 = 10002;
  }

  else
  {
    v9 = 8;
  }

  if (v7 == v9)
  {
    goto LABEL_5;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:database code:100 description:@"Unable to read schema version" underlyingError:v8];
    goto LABEL_19;
  }

  if (v7 > v9)
  {
    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HDSimpleGraphDatabase *)v5 _validateOrCreateSchemaForDatabase:v7 error:v11];
    }

    if (![(HDSimpleGraphDatabase *)v5 _removeExistingAndCreateDatabase:v4 error:database])
    {
      goto LABEL_19;
    }
  }

  if (v7 < v9)
  {
    if (v7)
    {
      v20 = 0;
      v21 = v7;
      v12 = [(HDSimpleGraphDatabase *)v5 _migrateDatabase:v4 fromVersion:&v21 behavior:mEMORY[0x277CCDD30] error:&v20];
      v13 = v20;
      _HKInitializeLogging();
      v14 = HKLogHealthOntology();
      v15 = v14;
      if (v12 == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544130;
          v24 = v5;
          v25 = 2048;
          v26 = v21;
          v27 = 2048;
          v28 = 8;
          v29 = 2112;
          v30 = v13;
          _os_log_error_impl(&dword_2514A1000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Unable to migrate from schema version %ld (current for OS is %ld) %@", buf, 0x2Au);
        }

        if (([(HDSimpleGraphDatabase *)v5 _removeExistingAndCreateDatabase:v4 error:database]& 1) == 0)
        {

LABEL_19:
          v10 = 0;
          goto LABEL_20;
        }
      }

      else
      {
        v18 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

        if (v18)
        {
          v19 = HKLogHealthOntology();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138543874;
            v24 = v5;
            v25 = 2048;
            v26 = v7;
            v27 = 2048;
            v28 = v21;
            _os_log_impl(&dword_2514A1000, v19, OS_LOG_TYPE_INFO, "%{public}@: Migrated from schema version %ld -> %ld", buf, 0x20u);
          }
        }
      }
    }

    else if (([(HDSimpleGraphDatabase *)v5 _createSchemaForDatabase:v4 behavior:mEMORY[0x277CCDD30] error:database]& 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_5:
  v10 = 1;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (uint64_t)_removeExistingAndCreateDatabase:(uint64_t)database error:
{
  v4 = a2;
  v5 = objc_opt_self();
  [v4 close];
  fileURL = [v4 fileURL];
  v7 = [(HDSimpleGraphDatabase *)v5 _removeExistingDatabaseAtURL:fileURL error:database];

  if (v7)
  {
    v8 = [(HDSimpleGraphDatabase *)v5 _openDatabase:v4 error:database];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (uint64_t)_createSchemaForDatabase:(void *)database behavior:(uint64_t)behavior error:
{
  databaseCopy = database;
  v7 = a2;
  v8 = objc_opt_self();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HDSimpleGraphDatabase__createSchemaForDatabase_behavior_error___block_invoke;
  v12[3] = &unk_2796B8DE0;
  v13 = databaseCopy;
  v14 = v8;
  v9 = databaseCopy;
  v10 = [v7 performTransactionWithType:1 error:behavior usingBlock:v12];

  return v10;
}

+ (uint64_t)_migrateDatabase:(uint64_t *)database fromVersion:(void *)version behavior:(uint64_t)behavior error:
{
  v37 = *MEMORY[0x277D85DE8];
  v25 = a2;
  versionCopy = version;
  v9 = objc_opt_self();
  toVersion2 = *database;
  if (*database > 3)
  {
    v12 = v9;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = versionCopy;
    v13 = [HDSimpleGraphDatabaseMigrator migrationStepsWithBehavior:versionCopy];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          if (toVersion2 < [v18 toVersion])
          {
            _HKInitializeLogging();
            v19 = HKLogHealthOntology();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              toVersion = [v18 toVersion];
              *buf = 138543874;
              v31 = v12;
              v32 = 2048;
              v33 = toVersion2;
              v34 = 2048;
              v35 = toVersion;
              _os_log_impl(&dword_2514A1000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Migrate ontology database from schema %ld -> %ld", buf, 0x20u);
            }

            v21 = +[HDSimpleGraphDatabase _migrateDatabase:toVersion:function:error:](v12, v25, [v18 toVersion], objc_msgSend(v18, "function"), behavior);
            if (v21)
            {
              v11 = v21;

              goto LABEL_17;
            }

            toVersion2 = [v18 toVersion];
            *database = toVersion2;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_17:
    versionCopy = v24;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:behavior code:100 format:{@"No migrations were written for schema < %ld", 5}];
    v11 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (uint64_t)_removeExistingDatabaseAtURL:(uint64_t)l error:
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v6 = [v5 hd_removeSQLiteDatabaseAtURL:v4 preserveCopy:0];
  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277CCA9B8];
    path = [v4 path];
    [v7 hk_assignError:l code:102 format:{@"Unable to remove existing database '%@'", path}];
  }

  return v6;
}

uint64_t __65__HDSimpleGraphDatabase__createSchemaForDatabase_behavior_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [(HDSimpleGraphDatabase *)*(a1 + 40) _createSchemaStatementsWithBehavior:?];
  v7 = [v5 executeSQLStatements:v6 error:a3];

  if (v7)
  {
    if ([*(a1 + 32) supportsOntologyDatabaseFutureMigrations])
    {
      v8 = 10002;
    }

    else
    {
      v8 = 8;
    }

    v9 = [v5 setUserVersion:v8 withDatabaseName:0 error:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_createSchemaStatementsWithBehavior:(uint64_t)behavior
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = +[HDSimpleGraphDatabase _entityClasses];
  supportsOntologyDatabaseFutureMigrations = [v2 supportsOntologyDatabaseFutureMigrations];

  if (supportsOntologyDatabaseFutureMigrations)
  {
    objc_opt_self();
    v6 = [v4 arrayByAddingObjectsFromArray:MEMORY[0x277CBEBF8]];

    v4 = v6;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v7 addObject:@"PRAGMA encoding=UTF-8;"];
  v8 = [(HDSimpleGraphDatabase *)v3 _createTableStatementsForEntityClasses:v4];
  [v7 addObjectsFromArray:v8];

  v9 = [(HDSimpleGraphDatabase *)v3 _createIndexStatementsForEntityClasses:v4];
  [v7 addObjectsFromArray:v9];

  [v7 addObject:@"PRAGMA page_size = 2048;"];

  return v7;
}

+ (id)_entityClasses
{
  v3[5] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

+ (id)_createTableStatementsForEntityClasses:(uint64_t)classes
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        createTableSQL = [*(*(&v12 + 1) + 8 * i) createTableSQL];
        [v3 addObject:createTableSQL];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_createIndexStatementsForEntityClasses:(uint64_t)classes
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        indices = [v9 indices];
        v11 = [indices countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(indices);
              }

              creationSQL = [*(*(&v18 + 1) + 8 * j) creationSQL];
              [v3 addObject:creationSQL];
            }

            v12 = [indices countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (uint64_t)_migrateDatabase:(uint64_t)database toVersion:(uint64_t)version function:(uint64_t)function error:
{
  v8 = a2;
  objc_opt_self();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HDSimpleGraphDatabase__migrateDatabase_toVersion_function_error___block_invoke;
  v11[3] = &unk_2796B8E08;
  v11[4] = &v12;
  v11[5] = version;
  v11[6] = database;
  if ([v8 performTransactionWithType:1 error:function usingBlock:v11])
  {
    v9 = v13[3];
  }

  else
  {
    v9 = 1;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __67__HDSimpleGraphDatabase__migrateDatabase_toVersion_function_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(*(*(a1 + 32) + 8) + 24) = (*(a1 + 40))();
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 setUserVersion:*(a1 + 48) withDatabaseName:0 error:a3];
  }

  return v6;
}

- (void)close
{
  [(HDSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (BOOL)deleteWithError:(id *)error
{
  [(HDSimpleGraphDatabase *)self close];
  URL = self->_URL;

  return [HDSimpleGraphDatabase _removeExistingDatabaseAtURL:error error:?];
}

- (BOOL)enumerateAttributesForNodeWithID:(int64_t)d includeDeleted:(BOOL)deleted error:(id *)error enumerationHandler:(id)handler
{
  deletedCopy = deleted;
  handlerCopy = handler;
  if (!self->_database)
  {
    [HDSimpleGraphDatabase enumerateAttributesForNodeWithID:a2 includeDeleted:self error:&self->_database enumerationHandler:&v13];
  }

  v11 = [HDSimpleGraphDatabaseAttributeEntity enumerateAttributesForNodeWithID:"enumerateAttributesForNodeWithID:skipDeleted:database:error:enumerationHandler:" skipDeleted:d database:!deletedCopy error:? enumerationHandler:?];

  return v11;
}

- (BOOL)foreignKeysEnable:(BOOL)enable error:(id *)error
{
  if (enable)
  {
    v4 = @"PRAGMA foreign_keys = ON";
  }

  else
  {
    v4 = @"PRAGMA foreign_keys = OFF";
  }

  return [(HDSQLiteDatabase *)self->_database executeUncachedSQL:v4 error:error];
}

+ (void)setUnitTesting_didInitGraphDatabaseHandler:(id)handler
{
  unitTesting_didInitGraphDatabaseHandler = [handler copy];

  MEMORY[0x2821F96F8]();
}

+ (id)unitTesting_didInitGraphDatabaseHandler
{
  v2 = MEMORY[0x253078050](unitTesting_didInitGraphDatabaseHandler, a2);

  return v2;
}

- (id)unitTesting_insertNodeWithID:(int64_t)d error:(id *)error
{
  if ([(HDSimpleGraphDatabase *)self insertNodeWithID:d version:0 slots:0 deleted:0 error:error])
  {
    v5 = [HDSimpleGraphNode alloc];
    lastInsertRowID = [(HDSQLiteDatabase *)self->_database lastInsertRowID];
    v7 = -[HDSimpleGraphNode initWithRowID:attributes:relationships:](v5, "initWithRowID:attributes:relationships:", [lastInsertRowID longLongValue], 0, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)unitTesting_countOfNodesWithRelationshipType:(int64_t)type error:(id *)error
{
  v6 = HDSimpleGraphRelationshipEntityPredicateForRelationshipType(type);
  v7 = [(HDSQLiteEntity *)HDSimpleGraphDatabaseRelationshipEntity countDistinctForProperty:@"subject_id" predicate:v6 database:self->_database error:error];

  return v7;
}

- (void)_initWithURL:(void *)l
{
  v3 = a2;
  if (l)
  {
    v7.receiver = l;
    v7.super_class = HDSimpleGraphDatabase;
    l = objc_msgSendSuper2(&v7, sel_init);
    if (l)
    {
      v4 = [v3 copy];
      v5 = l[2];
      l[2] = v4;
    }
  }

  return l;
}

- (uint64_t)_openAndCreateDatabaseIfNeededWithError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (*(result + 16))
    {
      v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
      uRLByDeletingLastPathComponent = [v3[2] URLByDeletingLastPathComponent];
      v6 = [v4 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:a2];

      if (!v6)
      {
        return 0;
      }

      v7 = v3[2];
    }

    else
    {
      v7 = 0;
    }

    [(HDSimpleGraphDatabase *)v3 _createDatabaseConnectionWithURL:v7];
    if (([HDSimpleGraphDatabase _openDatabase:a2 error:?]& 1) != 0)
    {
      return 1;
    }

    [v3 close];
    return 0;
  }

  return result;
}

- (void)_createDatabaseConnectionWithURL:(uint64_t)l
{
  if (l)
  {
    v3 = MEMORY[0x277D10B30];
    v4 = a2;
    v5 = [[v3 alloc] initWithDatabaseURL:v4];

    v6 = *(l + 8);
    *(l + 8) = v5;

    if (v4)
    {
      [*(l + 8) setFileProtectionType:*MEMORY[0x277CCA198]];
    }

    v7 = MEMORY[0x253078050](*(l + 24));
    if (v7)
    {
      v8 = v7;
      v7[2](v7, l);
      v7 = v8;
    }
  }
}

+ (void)_validateOrCreateSchemaForDatabase:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138543874;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = 8;
  _os_log_error_impl(&dword_2514A1000, log, OS_LOG_TYPE_ERROR, "%{public}@: Graph database schema version '%ld' greater than current '%ld' (rollback detected)", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAttributesForNodeWithID:(uint64_t)a1 includeDeleted:(uint64_t)a2 error:(void *)a3 enumerationHandler:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"HDSimpleGraphDatabase.m" lineNumber:581 description:{@"Invalid parameter not satisfying: %@", @"_database"}];

  *a4 = *a3;
}

@end