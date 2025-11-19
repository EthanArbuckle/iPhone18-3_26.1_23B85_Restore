@interface EFSQLTableSchema
- (EFSQLColumnSchema)rowIDColumn;
- (EFSQLTableSchema)initWithName:(id)a3 rowIDType:(unint64_t)a4 columns:(id)a5;
- (EFSQLTableSchema)initWithName:(id)a3 rowIDType:(unint64_t)a4 rowIDAlias:(id)a5 columns:(id)a6;
- (EFSQLTableSchema)initWithName:(id)a3 rowIDType:(unint64_t)a4 rowIDAlias:(id)a5 columns:(id)a6 primaryKeyColumns:(id)a7 conflictResolution:(unint64_t)a8;
- (NSArray)columns;
- (NSArray)uniqueColumns;
- (NSSet)associatedColumns;
- (NSSet)foreignKeyReferences;
- (id)_columnsForColumnNames:(id)a3;
- (id)columnForName:(id)a3;
- (id)definitionWithDatabaseName:(id)a3;
- (id)definitionWithDatabaseName:(id)a3 includeIndexes:(BOOL)a4;
- (id)description;
- (id)fullNameWithDatabaseName:(id)a3;
- (id)indexDefinitionsWithDatabaseName:(id)a3;
- (void)addColumn:(id)a3;
- (void)addIndex:(id)a3;
- (void)addIndexForColumns:(id)a3;
- (void)addUniquenessConstraintForColumns:(id)a3 conflictResolution:(unint64_t)a4;
- (void)removeColumn:(id)a3;
@end

@implementation EFSQLTableSchema

- (EFSQLTableSchema)initWithName:(id)a3 rowIDType:(unint64_t)a4 columns:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!a4)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EFSQLTableSchema.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"rowIDType != EFSQLRowIDTypeNone"}];
  }

  v11 = [(EFSQLTableSchema *)self initWithName:v9 rowIDType:a4 rowIDAlias:0 columns:v10 primaryKeyColumns:0 conflictResolution:0];

  return v11;
}

- (EFSQLTableSchema)initWithName:(id)a3 rowIDType:(unint64_t)a4 rowIDAlias:(id)a5 columns:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!a4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EFSQLTableSchema.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"rowIDType != EFSQLRowIDTypeNone"}];
  }

  v14 = [(EFSQLTableSchema *)self initWithName:v11 rowIDType:a4 rowIDAlias:v12 columns:v13 primaryKeyColumns:0 conflictResolution:0];

  return v14;
}

- (EFSQLTableSchema)initWithName:(id)a3 rowIDType:(unint64_t)a4 rowIDAlias:(id)a5 columns:(id)a6 primaryKeyColumns:(id)a7 conflictResolution:(unint64_t)a8
{
  v57 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v49 = a5;
  v14 = a6;
  v50 = a7;
  v55.receiver = self;
  v55.super_class = EFSQLTableSchema;
  v15 = [(EFSQLTableSchema *)&v55 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    v17 = [v14 mutableCopy];
    columns = v16->_columns;
    v16->_columns = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    columnsByName = v16->_columnsByName;
    v16->_columnsByName = v19;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = v14;
    v22 = [v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v22)
    {
      v23 = *v52;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          [v25 setTable:v16];
          v26 = v16->_columnsByName;
          v27 = [v25 name];
          [(NSMutableDictionary *)v26 setObject:v25 forKeyedSubscript:v27];
        }

        v22 = [v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v22);
    }

    if (a4 - 1 >= 2)
    {
      if (!a4)
      {
        if (![v50 count])
        {
          v45 = [MEMORY[0x1E696AAA8] currentHandler];
          [v45 handleFailureInMethod:a2 object:v16 file:@"EFSQLTableSchema.m" lineNumber:72 description:@"No primary key columns specified"];
        }

        v31 = [(EFSQLTableSchema *)v16 _columnsForColumnNames:v50];
        primaryKeyColumns = v16->_primaryKeyColumns;
        v16->_primaryKeyColumns = v31;

        v16->_primaryKeyConflictResolution = a8;
      }
    }

    else
    {
      v28 = [[EFSQLColumnSchema alloc] initRowIDWithAlias:v49 isAutoincrementing:a4 == 2];
      [v28 setTable:v16];
      [(NSMutableArray *)v16->_columns insertObject:v28 atIndex:0];
      v29 = [v28 name];
      rowIDColumnName = v16->_rowIDColumnName;
      v16->_rowIDColumnName = v29;

      [(NSMutableDictionary *)v16->_columnsByName setObject:v28 forKeyedSubscript:v16->_rowIDColumnName];
    }

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    uniquenessConstraints = v16->_uniquenessConstraints;
    v16->_uniquenessConstraints = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    checkConstraints = v16->_checkConstraints;
    v16->_checkConstraints = v35;

    v37 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    foreignKeyReferences = v16->_foreignKeyReferences;
    v16->_foreignKeyReferences = v37;

    v39 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    associatedColumns = v16->_associatedColumns;
    v16->_associatedColumns = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    indexes = v16->_indexes;
    v16->_indexes = v41;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = EFSQLTableSchema;
  v4 = [(EFSQLTableSchema *)&v8 description];
  v5 = [(EFSQLTableSchema *)self name];
  v6 = [v3 initWithFormat:@"%@ %@ [%@]", v4, v5, self->_columns];

  return v6;
}

- (id)definitionWithDatabaseName:(id)a3
{
  v3 = [(EFSQLTableSchema *)self definitionWithDatabaseName:a3 includeIndexes:1];

  return v3;
}

- (id)definitionWithDatabaseName:(id)a3 includeIndexes:(BOOL)a4
{
  v4 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v41 = [(NSMutableArray *)self->_columns ef_map:&__block_literal_global_38];
  v44 = self;
  v6 = [(EFSQLTableSchema *)self primaryKeyColumns];
  v40 = v6;
  if (v6)
  {
    v7 = [v6 ef_map:&__block_literal_global_25_0];
    v8 = &stru_1F459BF68;
    v9 = [(EFSQLTableSchema *)v44 primaryKeyConflictResolution];
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = EFSQLStringForConflictResolution(v9);
      v8 = [v10 initWithFormat:@" ON CONFLICT %@", v11];
    }

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v7 componentsJoinedByString:{@", "}];
    v42 = [v12 initWithFormat:@", \nPRIMARY KEY(%@)%@", v13, v8];

    v39 = @" WITHOUT ROWID";
  }

  else
  {
    v39 = &stru_1F459BF68;
    v42 = &stru_1F459BF68;
  }

  v38 = v4;
  if ([(NSMutableArray *)v44->_uniquenessConstraints count])
  {
    v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](v44->_uniquenessConstraints, "count")}];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v44->_uniquenessConstraints;
    v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v14)
    {
      v15 = *v50;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          v18 = [v17 first];
          v19 = [v18 ef_map:&__block_literal_global_39];
          v20 = [v19 componentsJoinedByString:{@", "}];

          v21 = objc_alloc(MEMORY[0x1E696AEC0]);
          v22 = [v17 second];
          v23 = EFSQLStringForConflictResolution([v22 unsignedIntegerValue]);
          v24 = [v21 initWithFormat:@"UNIQUE(%@) ON CONFLICT %@", v20, v23];

          [v46 addObject:v24];
        }

        v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v14);
    }

    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    v26 = [v46 componentsJoinedByString:{@", \n"}];
    v27 = [v25 initWithFormat:@", \n%@", v26];
  }

  else
  {
    v27 = &stru_1F459BF68;
  }

  v28 = [(EFSQLTableSchema *)v44 checkConstraints];
  v29 = [MEMORY[0x1E696AD60] string];
  if ([v28 count])
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __62__EFSQLTableSchema_definitionWithDatabaseName_includeIndexes___block_invoke_4;
    v47[3] = &unk_1E824A040;
    v48 = v29;
    [v28 enumerateObjectsUsingBlock:v47];
  }

  v30 = [(EFSQLTableSchema *)v44 fullNameWithDatabaseName:v43];
  v31 = objc_alloc(MEMORY[0x1E696AEC0]);
  v32 = [v41 componentsJoinedByString:{@", \n"}];
  v33 = [v31 initWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@%@%@%@)%@;", v30, v32, v42, v27, v29, v39];

  if (v38)
  {
    v34 = [(EFSQLTableSchema *)v44 indexDefinitionsWithDatabaseName:v43];
    if ([v34 length])
    {
      v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\n%@", v33, v34];

      v33 = v35;
    }
  }

  v36 = *MEMORY[0x1E69E9840];

  return v33;
}

id __62__EFSQLTableSchema_definitionWithDatabaseName_includeIndexes___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 definition];

  return v2;
}

id __62__EFSQLTableSchema_definitionWithDatabaseName_includeIndexes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];

  return v2;
}

id __62__EFSQLTableSchema_definitionWithDatabaseName_includeIndexes___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 name];

  return v2;
}

void __62__EFSQLTableSchema_definitionWithDatabaseName_includeIndexes___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) appendString:{@", \n"}];
  objc_msgSend(*(a1 + 32), "appendString:", @"CHECK(");
  v3 = [v4 ef_SQLIsolatedExpression];
  [v3 ef_renderSQLExpressionInto:*(a1 + 32)];

  [*(a1 + 32) appendString:@""]);
}

- (id)indexDefinitionsWithDatabaseName:(id)a3
{
  v4 = a3;
  v5 = [(EFSQLTableSchema *)self indexes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__EFSQLTableSchema_indexDefinitionsWithDatabaseName___block_invoke;
  v10[3] = &unk_1E824A068;
  v6 = v4;
  v11 = v6;
  v7 = [v5 ef_map:v10];

  if ([v7 count])
  {
    v8 = [v7 componentsJoinedByString:@"\n"];
  }

  else
  {
    v8 = &stru_1F459BF68;
  }

  return v8;
}

id __53__EFSQLTableSchema_indexDefinitionsWithDatabaseName___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 definitionWithDatabaseName:*(a1 + 32)];

  return v2;
}

- (id)fullNameWithDatabaseName:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(EFSQLTableSchema *)self name];
    v7 = [v5 initWithFormat:@"%@.%@", v4, v6];
  }

  else
  {
    v7 = [(EFSQLTableSchema *)self name];
  }

  return v7;
}

- (EFSQLColumnSchema)rowIDColumn
{
  columnsByName = self->_columnsByName;
  v3 = [(EFSQLTableSchema *)self rowIDColumnName];
  v4 = [(NSMutableDictionary *)columnsByName objectForKeyedSubscript:v3];

  return v4;
}

- (NSArray)columns
{
  v2 = [(NSMutableArray *)self->_columns copy];

  return v2;
}

- (NSArray)uniqueColumns
{
  v2 = [(NSMutableArray *)self->_uniquenessConstraints ef_map:&__block_literal_global_72];
  v3 = [v2 ef_notEmpty];

  return v3;
}

id __33__EFSQLTableSchema_uniqueColumns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 first];

  return v2;
}

- (id)columnForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_columnsByName objectForKeyedSubscript:a3];

  return v3;
}

- (void)addColumn:(id)a3
{
  v6 = a3;
  [v6 setTable:self];
  [(NSMutableArray *)self->_columns addObject:v6];
  columnsByName = self->_columnsByName;
  v5 = [v6 name];
  [(NSMutableDictionary *)columnsByName setObject:v6 forKeyedSubscript:v5];
}

- (void)removeColumn:(id)a3
{
  v6 = a3;
  [v6 setTable:0];
  [(NSMutableArray *)self->_columns removeObject:v6];
  columnsByName = self->_columnsByName;
  v5 = [v6 name];
  [(NSMutableDictionary *)columnsByName setObject:0 forKeyedSubscript:v5];
}

- (void)addUniquenessConstraintForColumns:(id)a3 conflictResolution:(unint64_t)a4
{
  v9 = [(EFSQLTableSchema *)self _columnsForColumnNames:a3];
  uniquenessConstraints = self->_uniquenessConstraints;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v8 = [EFPair pairWithFirst:v9 second:v7];
  [(NSMutableArray *)uniquenessConstraints addObject:v8];
}

- (id)_columnsForColumnNames:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__EFSQLTableSchema__columnsForColumnNames___block_invoke;
  v5[3] = &unk_1E824A0B0;
  v5[4] = self;
  v5[5] = a2;
  v3 = [a3 ef_map:v5];

  return v3;
}

id __43__EFSQLTableSchema__columnsForColumnNames___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) columnForName:v3];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"EFSQLTableSchema.m" lineNumber:218 description:{@"No matching column for column name: %@", v3}];
  }

  return v4;
}

- (NSSet)foreignKeyReferences
{
  v2 = [(NSHashTable *)self->_foreignKeyReferences setRepresentation];
  v3 = [v2 ef_notEmpty];

  return v3;
}

- (NSSet)associatedColumns
{
  v2 = [(NSHashTable *)self->_associatedColumns setRepresentation];
  v3 = [v2 ef_notEmpty];

  return v3;
}

- (void)addIndex:(id)a3
{
  v7 = a3;
  v4 = [v7 tableName];
  v5 = [(EFSQLTableSchema *)self name];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [(NSMutableArray *)self->_indexes addObject:v7];
  }
}

- (void)addIndexForColumns:(id)a3
{
  v7 = a3;
  v4 = [EFSQLIndexSchema alloc];
  v5 = [(EFSQLTableSchema *)self name];
  v6 = [(EFSQLIndexSchema *)v4 initWithTableName:v5 columnNames:v7];

  [(NSMutableArray *)self->_indexes addObject:v6];
}

@end