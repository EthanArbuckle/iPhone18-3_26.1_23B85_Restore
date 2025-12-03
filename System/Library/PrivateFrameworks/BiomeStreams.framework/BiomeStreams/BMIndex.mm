@interface BMIndex
+ (id)_indexTableSchemaWithName:(id)name fields:(id)fields;
+ (id)_viewNameWithStreamIdentifier:(id)identifier indexName:(id)name;
- (BMIndex)initWithName:(id)name fields:(id)fields streamIdentifier:(id)identifier;
- (id)createTableSQL;
- (id)createViewSQL;
- (id)description;
@end

@implementation BMIndex

- (BMIndex)initWithName:(id)name fields:(id)fields streamIdentifier:(id)identifier
{
  nameCopy = name;
  fieldsCopy = fields;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = BMIndex;
  v12 = [(BMIndex *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_streamIdentifier, identifier);
    v14 = [objc_opt_class() _viewNameWithStreamIdentifier:identifierCopy indexName:nameCopy];
    viewName = v13->_viewName;
    v13->_viewName = v14;

    objc_storeStrong(&v13->_fields, fields);
    v16 = [objc_opt_class() _indexTableSchemaWithName:v13->_viewName fields:fieldsCopy];
    schema = v13->_schema;
    v13->_schema = v16;
  }

  return v13;
}

+ (id)_viewNameWithStreamIdentifier:(id)identifier indexName:(id)name
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  context = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [identifierCopy componentsSeparatedByString:@"."];
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        if ([v13 length])
        {
          v14 = [v13 substringToIndex:1];
          [v7 appendString:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [nameCopy componentsSeparatedByString:@"_"];
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        v21 = [v20 substringToIndex:1];
        uppercaseString = [v21 uppercaseString];
        [v7 appendString:uppercaseString];

        v23 = [v20 substringFromIndex:1];
        [v7 appendString:v23];
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v17);
  }

  [v7 appendString:@"IndexView"];
  v24 = [v7 copy];

  objc_autoreleasePoolPop(context);
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)_indexTableSchemaWithName:(id)name fields:(id)fields
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  fieldsCopy = fields;
  context = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = fieldsCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        name = [v12 name];
        v14 = BMEventTimestampSQLColumn();
        name2 = [v14 name];
        v16 = [name isEqualToString:name2];

        if ((v16 & 1) == 0)
        {
          v17 = [BMSQLColumn alloc];
          name3 = [v12 name];
          v19 = -[BMSQLColumn initWithName:dataType:](v17, "initWithName:dataType:", name3, [v12 dataType]);
          [v6 addObject:v19];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v20 = BMEventBookmarkSQLColumns();
  [v6 addObjectsFromArray:v20];

  v21 = BMEventTimestampSQLColumn();
  [v6 addObject:v21];

  v22 = [[BMSQLSchema alloc] initWithTableName:nameCopy columns:v6];
  objc_autoreleasePoolPop(context);

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)createViewSQL
{
  v47 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  v4 = self->_fields;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        name = [v9 name];
        v11 = BMEventTimestampSQLColumn();
        name2 = [v11 name];
        v13 = [name isEqualToString:name2];

        if ((v13 & 1) == 0)
        {
          expression = [v9 expression];
          lowercaseString = [expression lowercaseString];
          [v3 addObject:lowercaseString];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v6);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = BMEventBookmarkSQLColumns();
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v37 + 1) + 8 * j);
        v22 = objc_alloc(MEMORY[0x1E696AEC0]);
        name3 = [v21 name];
        lowercaseString2 = [name3 lowercaseString];
        v25 = [v22 initWithFormat:@"%@", lowercaseString2];
        [v3 addObject:v25];
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v18);
  }

  v26 = BMEventTimestampSQLColumn();
  name4 = [v26 name];
  lowercaseString3 = [name4 lowercaseString];
  [v3 addObject:lowercaseString3];

  v29 = MEMORY[0x1E696AEC0];
  lowercaseString4 = [(NSString *)selfCopy->_viewName lowercaseString];
  v31 = [v3 componentsJoinedByString:{@", "}];
  v32 = [v29 stringWithFormat:@"CREATE MATERIALIZED VIEW %@ AS SELECT %@ FROM %@", lowercaseString4, v31, selfCopy->_streamIdentifier];

  objc_autoreleasePoolPop(context);
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)createTableSQL
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_fields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        name = [*(*(&v21 + 1) + 8 * i) name];
        [v4 addObject:name];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x1E696AEC0];
  name = self->_name;
  viewName = self->_viewName;
  v14 = [v4 componentsJoinedByString:{@", "}];
  v15 = [v11 stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@_Index ON %@(%@)", name, viewName, v14];

  v16 = MEMORY[0x1E696AEC0];
  createTableSQL = [(BMSQLSchema *)self->_schema createTableSQL];
  v18 = [v16 stringWithFormat:@"%@\n%@;", createTableSQL, v15];;

  objc_autoreleasePoolPop(v3);
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  name = self->_name;
  v7 = [v4 initWithFormat:@"<%@ %p> name: %@; fields: %@", v5, self, name, self->_fields];
  objc_autoreleasePoolPop(v3);

  return v7;
}

@end