@interface EFSQLSchema
- (EFSQLSchema)initWithTables:(id)a3;
- (id)definitionWithDatabaseName:(id)a3;
- (id)definitionWithDatabaseName:(id)a3 includeIndexes:(BOOL)a4;
- (id)description;
- (id)indexDefinitionsWithDatabaseName:(id)a3;
- (id)tableForName:(id)a3;
@end

@implementation EFSQLSchema

- (EFSQLSchema)initWithTables:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = EFSQLSchema;
  v5 = [(EFSQLSchema *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 name];
          [v6 setObject:v11 forKeyedSubscript:v12];
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    v13 = [v6 copy];
    tablesByName = v5->_tablesByName;
    v5->_tablesByName = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = EFSQLSchema;
  v4 = [(EFSQLSchema *)&v8 description];
  v5 = [(NSDictionary *)self->_tablesByName allValues];
  v6 = [v3 initWithFormat:@"%@ [%@]", v4, v5];

  return v6;
}

- (id)definitionWithDatabaseName:(id)a3
{
  v3 = [(EFSQLSchema *)self definitionWithDatabaseName:a3 includeIndexes:1];

  return v3;
}

- (id)definitionWithDatabaseName:(id)a3 includeIndexes:(BOOL)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_tablesByName allValues];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __57__EFSQLSchema_definitionWithDatabaseName_includeIndexes___block_invoke;
  v15 = &unk_1E8249FA8;
  v8 = v6;
  v16 = v8;
  v17 = a4;
  v9 = [v7 ef_map:&v12];

  v10 = [v9 componentsJoinedByString:{@"\n\n", v12, v13, v14, v15}];

  return v10;
}

id __57__EFSQLSchema_definitionWithDatabaseName_includeIndexes___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 definitionWithDatabaseName:*(a1 + 32) includeIndexes:*(a1 + 40)];

  return v2;
}

- (id)indexDefinitionsWithDatabaseName:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_tablesByName allValues];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__EFSQLSchema_indexDefinitionsWithDatabaseName___block_invoke;
  v10[3] = &unk_1E8249FD0;
  v6 = v4;
  v11 = v6;
  v7 = [v5 ef_compactMap:v10];

  if ([v7 count])
  {
    v8 = [v7 componentsJoinedByString:@"\n\n"];
  }

  else
  {
    v8 = &stru_1F459BF68;
  }

  return v8;
}

void *__48__EFSQLSchema_indexDefinitionsWithDatabaseName___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 indexDefinitionsWithDatabaseName:*(a1 + 32)];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)tableForName:(id)a3
{
  v3 = [(NSDictionary *)self->_tablesByName objectForKeyedSubscript:a3];

  return v3;
}

@end