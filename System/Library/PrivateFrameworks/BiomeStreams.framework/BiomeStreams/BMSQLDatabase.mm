@interface BMSQLDatabase
- (BMSQLDatabase)initWithAdditionalVirtualTables:(id)tables privileges:(id)privileges isColumnAccessLoggingEnabled:(BOOL)enabled useCase:(id)case;
- (BMSQLDatabase)initWithVirtualTables:(id)tables privileges:(id)privileges isColumnAccessLoggingEnabled:(BOOL)enabled enableAuthorizer:(BOOL)authorizer error:(id *)error;
- (BOOL)_attachDatabase:(id)database name:(id)name error:(id *)error;
- (BOOL)attachDatabase:(id)database name:(id)name error:(id *)error;
- (BOOL)attachDatabaseWithResourceIdentifier:(id)identifier useCase:(id)case error:(id *)error;
- (BOOL)executeStatement:(id)statement error:(id *)error;
- (BOOL)registerFunctionWithName:(id)name numArgs:(int)args function:(id)function userData:(id)data error:(id *)error;
- (id)SQLSchemaString;
- (id)_executeQuery:(id)query;
- (id)description;
- (id)executeQuery:(id)query;
- (id)virtualTableForName:(id)name;
- (void)dealloc;
- (void)logColumnAccess:(id)access tableName:(id)name;
- (void)resetColumnAccessLog;
@end

@implementation BMSQLDatabase

- (void)dealloc
{
  db = self->_db;
  if (db)
  {
    sqlite3_set_authorizer(db, 0, 0);
    sqlite3_close(self->_db);
  }

  v4.receiver = self;
  v4.super_class = BMSQLDatabase;
  [(BMSQLDatabase *)&v4 dealloc];
}

- (BMSQLDatabase)initWithAdditionalVirtualTables:(id)tables privileges:(id)privileges isColumnAccessLoggingEnabled:(BOOL)enabled useCase:(id)case
{
  enabledCopy = enabled;
  tablesCopy = tables;
  privilegesCopy = privileges;
  caseCopy = case;
  v12 = objc_autoreleasePoolPush();
  v13 = MEMORY[0x1E698E970];
  current = [MEMORY[0x1E698E9D8] current];
  v15 = [v13 policyForProcess:current connectionFlags:0 useCase:caseCopy];

  v16 = [v15 explicitlyAuthorizedResourcesOfType:1 withAccessMode:1];
  if (os_variant_has_internal_content() && ![v16 count] && objc_msgSend(MEMORY[0x1E698E9C8], "isTestPathOverridden"))
  {
    v17 = BiomeLibraryAndInternalLibraryNode();
    allStreamIdentifiers = [v17 allStreamIdentifiers];

    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BMSQLDatabase initWithAdditionalVirtualTables:v19 privileges:? isColumnAccessLoggingEnabled:? useCase:?];
    }

    v16 = allStreamIdentifiers;
  }

  v20 = BiomeLibraryAndInternalLibraryNode();
  v30 = 0;
  v21 = BMSQLVirtualTables(v20, v16, caseCopy, &v30);
  v22 = v30;

  if (v22 || (tablesCopy ? (v23 = tablesCopy) : (v23 = MEMORY[0x1E695E0F0]), [v21 arrayByAddingObjectsFromArray:v23], v24 = objc_claimAutoreleasedReturnValue(), v29 = 0, self = -[BMSQLDatabase initWithVirtualTables:privileges:isColumnAccessLoggingEnabled:enableAuthorizer:error:](self, "initWithVirtualTables:privileges:isColumnAccessLoggingEnabled:enableAuthorizer:error:", v24, privilegesCopy, enabledCopy, 1, &v29), v22 = v29, v24, v22))
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [BMSQLDatabase initWithAdditionalVirtualTables:privileges:isColumnAccessLoggingEnabled:useCase:];
    }

    selfCopy = 0;
  }

  else
  {
    self = self;
    selfCopy = self;
  }

  objc_autoreleasePoolPop(v12);
  return selfCopy;
}

- (BMSQLDatabase)initWithVirtualTables:(id)tables privileges:(id)privileges isColumnAccessLoggingEnabled:(BOOL)enabled enableAuthorizer:(BOOL)authorizer error:(id *)error
{
  authorizerCopy = authorizer;
  v90 = *MEMORY[0x1E69E9840];
  tablesCopy = tables;
  privilegesCopy = privileges;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__5;
  v78 = __Block_byref_object_dispose__5;
  v79 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__BMSQLDatabase_initWithVirtualTables_privileges_isColumnAccessLoggingEnabled_enableAuthorizer_error___block_invoke;
  aBlock[3] = &unk_1E6E52958;
  aBlock[4] = &v74;
  aBlock[5] = error;
  v73 = _Block_copy(aBlock);
  context = objc_autoreleasePoolPush();
  v71.receiver = self;
  v71.super_class = BMSQLDatabase;
  v11 = [(BMSQLDatabase *)&v71 init];
  if (!v11)
  {
    goto LABEL_42;
  }

  ppDb = 0;
  v12 = sqlite3_open_v2(":memory:", &ppDb, 65538, 0);
  if (!v12)
  {
    v15 = sqlite3_malloc(8);
    v16 = v15;
    if (!v15)
    {
      v18 = "Unable to alloc memory for bmstream_vtab_metadata";
      module_v2 = 7;
      goto LABEL_8;
    }

    *v15 = 0;
    objc_storeWeak(v15, v11);
    module_v2 = sqlite3_create_module_v2(ppDb, "bmstream_vtab", &bmstream_vtab_module, v16, bmstream_vtab_destroy);
    if (module_v2)
    {
      v18 = "Unable to load bmstream_vtab module";
LABEL_8:
      v19 = BMSQLDatabaseError(module_v2, ppDb, v18);
      v20 = v75[5];
      v75[5] = v19;

      sqlite3_close(ppDb);
      goto LABEL_9;
    }

    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_db = ppDb;
    v22 = [tablesCopy copy];
    virtualTables = v11->_virtualTables;
    v11->_virtualTables = v22;

    v24 = [privilegesCopy copy];
    privileges = v11->_privileges;
    v11->_privileges = v24;

    v11->_isColumnAccessLoggingEnabled = enabled;
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    accessedColumns = v11->_accessedColumns;
    v11->_accessedColumns = v26;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v28 = v11->_virtualTables;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v66 objects:v89 count:16];
    if (v29)
    {
      v30 = *v67;
      v55 = *MEMORY[0x1E696A578];
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v67 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v66 + 1) + 8 * i);
          v33 = objc_autoreleasePoolPush();
          schema = [v32 schema];
          tableName = [schema tableName];

          if (tableName)
          {
            v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CREATE VIRTUAL TABLE IF NOT EXISTS %@ USING bmstream_vtab", tableName];
            v65 = 0;
            [(BMSQLDatabase *)v11 executeStatement:v36 error:&v65];
            v37 = v65;
          }

          else
          {
            v38 = objc_alloc(MEMORY[0x1E696ABC0]);
            v87 = v55;
            v88 = @"virtual table is missing a schema/tableName";
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            v37 = [v38 initWithDomain:@"BMSQLDatabaseErrorDomain" code:1 userInfo:v36];
          }

          v39 = v37;

          if (v39)
          {
            v40 = __biome_log_for_category();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v82 = v11;
              v83 = 2112;
              v84 = tableName;
              v85 = 2112;
              v86 = v39;
              _os_log_error_impl(&dword_1848EE000, v40, OS_LOG_TYPE_ERROR, "BMSQLDatabase failed to add virtual table to %@ with name %@. %@", buf, 0x20u);
            }
          }

          else
          {
            v40 = __biome_log_for_category();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v82 = tableName;
              _os_log_debug_impl(&dword_1848EE000, v40, OS_LOG_TYPE_DEBUG, "BMSQLDatabase finished adding virtual table with name %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v33);
          if (v39)
          {

            objc_storeStrong(v75 + 5, v39);
            sqlite3_close(ppDb);
            v11->_db = 0;

            goto LABEL_9;
          }
        }

        v29 = [(NSArray *)v28 countByEnumeratingWithState:&v66 objects:v89 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v41 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v42 = tablesCopy;
    v43 = [v42 countByEnumeratingWithState:&v61 objects:v80 count:16];
    if (v43)
    {
      v44 = *v62;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v62 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v61 + 1) + 8 * j);
          stream = [v46 stream];

          if (stream)
          {
            stream2 = [v46 stream];
            configuration = [stream2 configuration];
            eventClass = [configuration eventClass];

            if ([eventClass isSubclassOfClass:objc_opt_class()])
            {
              [v41 addObject:eventClass];
            }
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v61 objects:v80 count:16];
      }

      while (v43);
    }

    v60 = 0;
    [BMSQLProtoUDFs registerProtoUDFsWithDatabase:v11 eventClasses:v41 error:&v60];
    v51 = v60;
    if (v51)
    {
      v52 = v75[5];
      v75[5] = v51;

      goto LABEL_9;
    }

    if (authorizerCopy)
    {
      sqlite3_set_authorizer(ppDb, bmstream_authorizer, v11);
    }

LABEL_42:
    v21 = v11;
    goto LABEL_43;
  }

  v13 = BMSQLDatabaseError(v12, ppDb, "Failed to open in memory database");
  v14 = v75[5];
  v75[5] = v13;

  sqlite3_close(ppDb);
LABEL_9:
  v21 = 0;
LABEL_43:
  objc_autoreleasePoolPop(context);
  bm_invoke();

  _Block_object_dispose(&v74, 8);
  v53 = *MEMORY[0x1E69E9840];
  return v21;
}

void *__102__BMSQLDatabase_initWithVirtualTables_privileges_isColumnAccessLoggingEnabled_enableAuthorizer_error___block_invoke(void *result)
{
  if (result[5])
  {
    v1 = result;
    result = *(*(result[4] + 8) + 40);
    if (result)
    {
      result = result;
      *v1[5] = result;
    }
  }

  return result;
}

- (id)virtualTableForName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_virtualTables;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        schema = [v9 schema];
        tableName = [schema tableName];
        v12 = [tableName isEqualToString:nameCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)attachDatabase:(id)database name:(id)name error:(id *)error
{
  databaseCopy = database;
  nameCopy = name;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(error) = [(BMSQLDatabase *)self _attachDatabase:databaseCopy name:nameCopy error:error];
  os_unfair_lock_unlock(&self->_lock);

  return error;
}

- (BOOL)_attachDatabase:(id)database name:(id)name error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  nameCopy = name;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = databaseCopy;
    v22 = 2112;
    v23 = nameCopy;
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_DEFAULT, "BMSQLDatabase attaching to %@ as %@", buf, 0x16u);
  }

  if ([databaseCopy isFileURL])
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    path = [databaseCopy path];
    nameCopy = [v11 initWithFormat:@"ATTACH DATABASE %@ AS %@", path, nameCopy];

    LOBYTE(error) = [(BMSQLDatabase *)self executeStatement:nameCopy error:error];
LABEL_7:

    goto LABEL_8;
  }

  if (error)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A578];
    nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"cannot open non file database"];
    v19 = nameCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *error = [v14 initWithDomain:@"BMSQLDatabaseErrorDomain" code:14 userInfo:v15];

    LOBYTE(error) = 0;
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)attachDatabaseWithResourceIdentifier:(id)identifier useCase:(id)case error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  caseCopy = case;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v9 = [objc_alloc(MEMORY[0x1E698E9F8]) initWithType:3 name:identifierCopy];
  if (v9)
  {
    identifierCopy = [objc_alloc(MEMORY[0x1E698E968]) initWithUseCase:caseCopy];
    v11 = [identifierCopy requestAccessToResource:v9 mode:1 error:error];
    v12 = v11;
    if (v11)
    {
      path = [v11 path];

      if (path)
      {
        v14 = [identifierCopy stringByAppendingPathExtension:@"sqlite3"];
        path2 = [v12 path];
        v16 = [path2 stringByAppendingPathComponent:v14];

        v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v16];
        LODWORD(v18) = [(BMSQLDatabase *)self _attachDatabase:v17 name:identifierCopy error:error];
        if (v18)
        {
          [(NSMutableDictionary *)self->_resourceAccessAssertions setObject:v12 forKeyedSubscript:identifierCopy];
        }

        goto LABEL_12;
      }

      if (error)
      {
        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Access assertion %@ has a nil path", v12];
        v27 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        *error = [v20 initWithDomain:@"BMSQLDatabaseErrorDomain" code:14 userInfo:v22];
      }
    }

    LOBYTE(v18) = 0;
  }

  else
  {
    if (!error)
    {
      LOBYTE(v18) = 0;
      goto LABEL_13;
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E696A578];
    identifierCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid identifier %@", identifierCopy];
    v29[0] = identifierCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v19 = [v18 initWithDomain:@"BMSQLDatabaseErrorDomain" code:14 userInfo:v12];
    LOBYTE(v18) = 0;
    *error = v19;
  }

LABEL_12:

LABEL_13:
  os_unfair_lock_unlock(&self->_lock);

  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)executeStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__BMSQLDatabase_executeStatement_error___block_invoke;
  aBlock[3] = &unk_1E6E52958;
  aBlock[4] = &v16;
  aBlock[5] = error;
  v15 = _Block_copy(aBlock);
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = sqlite3_exec(self->_db, [statementCopy UTF8String], 0, 0, &v13);
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = BMSQLDatabaseError(v8, self->_db, v13);
      v11 = v17[5];
      v17[5] = v10;
    }

    sqlite3_free(v13);
  }

  objc_autoreleasePoolPop(v7);
  bm_invoke();

  _Block_object_dispose(&v16, 8);
  return v9 == 0;
}

void *__40__BMSQLDatabase_executeStatement_error___block_invoke(void *result)
{
  if (result[5])
  {
    v1 = result;
    result = *(*(result[4] + 8) + 40);
    if (result)
    {
      result = result;
      *v1[5] = result;
    }
  }

  return result;
}

- (id)SQLSchemaString
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_virtualTables, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_virtualTables;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        schema = [*(*(&v13 + 1) + 8 * i) schema];
        createTableSQL = [schema createTableSQL];
        [v3 addObject:createTableSQL];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v3 componentsJoinedByString:@"\n"];

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)logColumnAccess:(id)access tableName:(id)name
{
  v28 = *MEMORY[0x1E69E9840];
  accessCopy = access;
  nameCopy = name;
  obj = self->_accessedColumns;
  objc_sync_enter(obj);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_accessedColumns;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {

LABEL_13:
    v16 = [BMSQLColumnAccessSet alloc];
    v17 = objc_opt_new();
    v9 = [(BMSQLColumnAccessSet *)v16 initWithTable:nameCopy columns:v17];

    [(NSMutableArray *)self->_accessedColumns addObject:v9];
    goto LABEL_14;
  }

  v9 = 0;
  v10 = *v24;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      table = [v12 table];
      v14 = [table isEqual:nameCopy];

      if (v14)
      {
        v15 = v12;

        v9 = v15;
      }
    }

    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v8);

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_14:
  columns = [(BMSQLColumnAccessSet *)v9 columns];
  [columns addObject:accessCopy];

  objc_sync_exit(obja);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)resetColumnAccessLog
{
  obj = self->_accessedColumns;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_accessedColumns removeAllObjects];
  objc_sync_exit(obj);
}

- (BOOL)registerFunctionWithName:(id)name numArgs:(int)args function:(id)function userData:(id)data error:(id *)error
{
  nameCopy = name;
  functionCopy = function;
  dataCopy = data;
  v15 = __biome_log_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BMSQLDatabase registerFunctionWithName:numArgs:function:userData:error:];
  }

  v16 = sqlite3_malloc(16);
  if (v16)
  {
    v17 = v16;
    *v16 = 0;
    v16[1] = 0;
    v18 = v16 + 1;
    v19 = _Block_copy(functionCopy);
    v20 = *v17;
    *v17 = v19;

    objc_storeStrong(v18, data);
    v21 = 1;
    function_v2 = sqlite3_create_function_v2(self->_db, [nameCopy UTF8String], args, 1, v17, bmstream_udf_callback, 0, 0, bmstream_udf_destructor_callback);
    if (!function_v2)
    {
      goto LABEL_10;
    }

    db = self->_db;
    v24 = "BMSQLDatabase failed to register user-defined function";
  }

  else
  {
    db = self->_db;
    v24 = "Unable to alloc memory for udf_user_data";
    function_v2 = 7;
  }

  v25 = BMSQLDatabaseError(function_v2, db, v24);
  if (error)
  {
    v25 = v25;
    *error = v25;
  }

  v21 = 0;
LABEL_10:

  return v21;
}

- (id)executeQuery:(id)query
{
  queryCopy = query;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:queryCopy arguments:&v10];
  v7 = [(BMSQLDatabase *)self _executeQuery:v6];

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)_executeQuery:(id)query
{
  queryCopy = query;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BMSQLDatabase _executeQuery:];
  }

  ppStmt = 0;
  v6 = sqlite3_prepare_v2(self->_db, [queryCopy UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    v7 = BMSQLDatabaseError(v6, self->_db, 0);
    v8 = [[BMSQLResultSet alloc] initWithQuery:queryCopy error:v7 database:self];
  }

  else
  {
    v9 = [BMSQLResultSet alloc];
    v8 = [(BMSQLResultSet *)v9 initWithStatement:ppStmt database:self];
  }

  return v8;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_virtualTables, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_virtualTables;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        schema = [*(*(&v19 + 1) + 8 * i) schema];
        tableName = [schema tableName];

        if (tableName)
        {
          v11 = tableName;
        }

        else
        {
          v11 = @"<unknown>";
        }

        [v3 addObject:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = objc_opt_class();
  v14 = [v3 componentsJoinedByString:{@", "}];
  v15 = [v12 initWithFormat:@"<%@ %p> tables: %@", v13, self, v14];

  if (self->_privileges)
  {
    v16 = [v15 stringByAppendingFormat:@", privileges: %@", self->_privileges];

    v15 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

@end