@interface BMSQLSchema
- (BMSQLSchema)initWithTableName:(id)a3 columns:(id)a4;
- (BOOL)isEqual:(id)a3;
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
  v4 = [(BMSQLSchema *)self columns];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(BMSQLSchema *)self columns];
      v8 = [v7 objectAtIndexedSubscript:v6];

      [v3 appendString:@"\t"];
      v9 = [v8 name];
      [v3 appendFormat:@"%@", v9];

      v10 = BMSQLDataTypeToString([v8 dataType]);
      [v3 appendFormat:@" %@", v10];

      if ([v8 requestOnly])
      {
        [v3 appendString:@" HIDDEN"];
      }

      v11 = [(BMSQLSchema *)self columns];
      v12 = [v11 count] - 1;

      if (v6 != v12)
      {
        [v3 appendString:{@", "}];
      }

      [v3 appendString:@"\n"];

      ++v6;
      v13 = [(BMSQLSchema *)self columns];
      v14 = [v13 count];
    }

    while (v6 < v14);
  }

  [v3 appendString:@""]);
  v15 = [v3 copy];

  return v15;
}

- (BMSQLSchema)initWithTableName:(id)a3 columns:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BMSQLSchema;
  v8 = [(BMSQLSchema *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    tableName = v8->_tableName;
    v8->_tableName = v9;

    objc_storeStrong(&v8->_columns, a4);
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
  v21 = self;
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
        v12 = [v10 name];
        v13 = [v11 initWithFormat:@"%@", v12];
        [v3 addObject:v13];

        [v4 addObject:@"?"];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  tableName = v21->_tableName;
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
  v5 = [(BMSQLSchema *)self createTableSQL];
  v6 = [v3 initWithFormat:@"<%@ %p> sql: '%@'", v4, self, v5];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    tableName = self->_tableName;
    v7 = [v5 tableName];
    if ([(NSString *)tableName isEqual:v7])
    {
      columns = self->_columns;
      v9 = [v5 columns];
      v10 = [(NSArray *)columns isEqual:v9];
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