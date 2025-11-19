@interface EFSQLIndexSchema
- (EFSQLIndexSchema)initWithName:(id)a3 tableName:(id)a4 indexedColumns:(id)a5 where:(id)a6 unique:(BOOL)a7;
- (id)definitionWithDatabaseName:(id)a3;
@end

@implementation EFSQLIndexSchema

- (EFSQLIndexSchema)initWithName:(id)a3 tableName:(id)a4 indexedColumns:(id)a5 where:(id)a6 unique:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24.receiver = self;
  v24.super_class = EFSQLIndexSchema;
  v16 = [(EFSQLIndexSchema *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [v13 copy];
    tableName = v16->_tableName;
    v16->_tableName = v19;

    v21 = [v14 copy];
    indexedColumns = v16->_indexedColumns;
    v16->_indexedColumns = v21;

    objc_storeStrong(&v16->_where, a6);
    v16->_unique = a7;
  }

  return v16;
}

EFSQLIndexedColumnSchema *__63__EFSQLIndexSchema_initWithTableName_columnNames_where_unique___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[EFSQLIndexedColumnSchema alloc] initWithColumnName:v2];

  return v3;
}

- (id)definitionWithDatabaseName:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(EFSQLIndexSchema *)self name];
    v7 = [v5 initWithFormat:@"%@.%@", v4, v6];
  }

  else
  {
    v7 = [(EFSQLIndexSchema *)self name];
  }

  v8 = [(EFSQLIndexSchema *)self indexedColumns];
  v9 = [v8 ef_mapSelector:sel_definition];
  v10 = [v9 componentsJoinedByString:{@", "}];

  v11 = [(EFSQLIndexSchema *)self where];
  v12 = [v11 ef_SQLIsolatedExpression];
  v13 = [v12 ef_SQLExpression];

  if (v13)
  {
    v14 = [@" WHERE " stringByAppendingString:v13];

    v13 = v14;
  }

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [(EFSQLIndexSchema *)self unique];
  v17 = [(EFSQLIndexSchema *)self tableName];
  v18 = v17;
  v19 = &stru_1F459BF68;
  v20 = @"UNIQUE ";
  if (!v16)
  {
    v20 = &stru_1F459BF68;
  }

  if (v13)
  {
    v19 = v13;
  }

  v21 = [v15 initWithFormat:@"CREATE %@INDEX IF NOT EXISTS %@ ON %@(%@)%@;", v20, v7, v17, v10, v19];

  return v21;
}

@end