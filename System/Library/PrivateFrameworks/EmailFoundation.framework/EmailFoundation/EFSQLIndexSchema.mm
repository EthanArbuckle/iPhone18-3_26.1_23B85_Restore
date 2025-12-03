@interface EFSQLIndexSchema
- (EFSQLIndexSchema)initWithName:(id)name tableName:(id)tableName indexedColumns:(id)columns where:(id)where unique:(BOOL)unique;
- (id)definitionWithDatabaseName:(id)name;
@end

@implementation EFSQLIndexSchema

- (EFSQLIndexSchema)initWithName:(id)name tableName:(id)tableName indexedColumns:(id)columns where:(id)where unique:(BOOL)unique
{
  nameCopy = name;
  tableNameCopy = tableName;
  columnsCopy = columns;
  whereCopy = where;
  v24.receiver = self;
  v24.super_class = EFSQLIndexSchema;
  v16 = [(EFSQLIndexSchema *)&v24 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [tableNameCopy copy];
    tableName = v16->_tableName;
    v16->_tableName = v19;

    v21 = [columnsCopy copy];
    indexedColumns = v16->_indexedColumns;
    v16->_indexedColumns = v21;

    objc_storeStrong(&v16->_where, where);
    v16->_unique = unique;
  }

  return v16;
}

EFSQLIndexedColumnSchema *__63__EFSQLIndexSchema_initWithTableName_columnNames_where_unique___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[EFSQLIndexedColumnSchema alloc] initWithColumnName:v2];

  return v3;
}

- (id)definitionWithDatabaseName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    name = [(EFSQLIndexSchema *)self name];
    name2 = [v5 initWithFormat:@"%@.%@", nameCopy, name];
  }

  else
  {
    name2 = [(EFSQLIndexSchema *)self name];
  }

  indexedColumns = [(EFSQLIndexSchema *)self indexedColumns];
  v9 = [indexedColumns ef_mapSelector:sel_definition];
  v10 = [v9 componentsJoinedByString:{@", "}];

  where = [(EFSQLIndexSchema *)self where];
  ef_SQLIsolatedExpression = [where ef_SQLIsolatedExpression];
  ef_SQLExpression = [ef_SQLIsolatedExpression ef_SQLExpression];

  if (ef_SQLExpression)
  {
    v14 = [@" WHERE " stringByAppendingString:ef_SQLExpression];

    ef_SQLExpression = v14;
  }

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  unique = [(EFSQLIndexSchema *)self unique];
  tableName = [(EFSQLIndexSchema *)self tableName];
  v18 = tableName;
  v19 = &stru_1F459BF68;
  v20 = @"UNIQUE ";
  if (!unique)
  {
    v20 = &stru_1F459BF68;
  }

  if (ef_SQLExpression)
  {
    v19 = ef_SQLExpression;
  }

  v21 = [v15 initWithFormat:@"CREATE %@INDEX IF NOT EXISTS %@ ON %@(%@)%@;", v20, name2, tableName, v10, v19];

  return v21;
}

@end