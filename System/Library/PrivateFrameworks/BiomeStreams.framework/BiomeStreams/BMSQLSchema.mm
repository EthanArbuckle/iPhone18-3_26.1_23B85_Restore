@interface BMSQLSchema
- (BMSQLSchema)initWithTableName:(id)name columns:(id)columns;
- (BOOL)isEqual:(id)equal;
- (id)createTableSQL;
- (id)description;
- (id)insertSQL;
- (unint64_t)hash;
@end

@implementation BMSQLSchema

- (id)createTableSQL
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v3, "appendFormat:", @"CREATE TABLE IF NOT EXISTS %@(\n"), self->_tableName;
  columns = [(BMSQLSchema *)self columns];
  v5 = [columns count];

  if (v5)
  {
    v6 = 0;
    do
    {
      columns2 = [(BMSQLSchema *)self columns];
      v8 = [columns2 objectAtIndexedSubscript:v6];

      [v3 appendString:@"\t"];
      name = [v8 name];
      [v3 appendFormat:@"%@", name];

      v10 = BMSQLDataTypeToString([v8 dataType]);
      [v3 appendFormat:@" %@", v10];

      if ([v8 requestOnly])
      {
        [v3 appendString:@" HIDDEN"];
      }

      columns3 = [(BMSQLSchema *)self columns];
      v12 = [columns3 count] - 1;

      if (v6 != v12)
      {
        [v3 appendString:{@", "}];
      }

      [v3 appendString:@"\n"];

      ++v6;
      columns4 = [(BMSQLSchema *)self columns];
      v14 = [columns4 count];
    }

    while (v6 < v14);
  }

  [v3 appendString:@""]);
  v15 = [v3 copy];

  return v15;
}

- (BMSQLSchema)initWithTableName:(id)name columns:(id)columns
{
  nameCopy = name;
  columnsCopy = columns;
  v12.receiver = self;
  v12.super_class = BMSQLSchema;
  v8 = [(BMSQLSchema *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    tableName = v8->_tableName;
    v8->_tableName = v9;

    objc_storeStrong(&v8->_columns, columns);
  }

  return v8;
}

- (id)insertSQL
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  v5 = self->_columns;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        name = [v10 name];
        v13 = [v11 initWithFormat:@"%@", name];
        [v3 addObject:v13];

        [v4 addObject:@"?"];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  tableName = selfCopy->_tableName;
  v16 = [v3 componentsJoinedByString:{@", "}];
  v17 = [v4 componentsJoinedByString:{@", "}];
  v18 = [v14 initWithFormat:@"INSERT INTO %@ (%@) VALUES (%@)", tableName, v16, v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  createTableSQL = [(BMSQLSchema *)self createTableSQL];
  v6 = [v3 initWithFormat:@"<%@ %p> sql: '%@'", v4, self, createTableSQL];

  return v6;
}

- (unint64_t)hash
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_tableName hash];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_columns;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 ^= [*(*(&v11 + 1) + 8 * v8++) hash];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    tableName = self->_tableName;
    tableName = [v5 tableName];
    if ([(NSString *)tableName isEqual:tableName])
    {
      columns = self->_columns;
      columns = [v5 columns];
      v10 = [(NSArray *)columns isEqual:columns];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end