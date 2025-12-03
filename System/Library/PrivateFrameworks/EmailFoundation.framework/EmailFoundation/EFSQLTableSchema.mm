@interface EFSQLTableSchema
- (EFSQLColumnSchema)rowIDColumn;
- (EFSQLTableSchema)initWithName:(id)name rowIDType:(unint64_t)type columns:(id)columns;
- (EFSQLTableSchema)initWithName:(id)name rowIDType:(unint64_t)type rowIDAlias:(id)alias columns:(id)columns;
- (EFSQLTableSchema)initWithName:(id)name rowIDType:(unint64_t)type rowIDAlias:(id)alias columns:(id)columns primaryKeyColumns:(id)keyColumns conflictResolution:(unint64_t)resolution;
- (NSArray)columns;
- (NSArray)uniqueColumns;
- (NSSet)associatedColumns;
- (NSSet)foreignKeyReferences;
- (id)_columnsForColumnNames:(id)names;
- (id)columnForName:(id)name;
- (id)definitionWithDatabaseName:(id)name;
- (id)definitionWithDatabaseName:(id)name includeIndexes:(BOOL)indexes;
- (id)description;
- (id)fullNameWithDatabaseName:(id)name;
- (id)indexDefinitionsWithDatabaseName:(id)name;
- (void)addColumn:(id)column;
- (void)addIndex:(id)index;
- (void)addIndexForColumns:(id)columns;
- (void)addUniquenessConstraintForColumns:(id)columns conflictResolution:(unint64_t)resolution;
- (void)removeColumn:(id)column;
@end

@implementation EFSQLTableSchema

- (EFSQLTableSchema)initWithName:(id)name rowIDType:(unint64_t)type columns:(id)columns
{
  nameCopy = name;
  columnsCopy = columns;
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLTableSchema.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"rowIDType != EFSQLRowIDTypeNone"}];
  }

  v11 = [(EFSQLTableSchema *)self initWithName:nameCopy rowIDType:type rowIDAlias:0 columns:columnsCopy primaryKeyColumns:0 conflictResolution:0];

  return v11;
}

- (EFSQLTableSchema)initWithName:(id)name rowIDType:(unint64_t)type rowIDAlias:(id)alias columns:(id)columns
{
  nameCopy = name;
  aliasCopy = alias;
  columnsCopy = columns;
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLTableSchema.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"rowIDType != EFSQLRowIDTypeNone"}];
  }

  v14 = [(EFSQLTableSchema *)self initWithName:nameCopy rowIDType:type rowIDAlias:aliasCopy columns:columnsCopy primaryKeyColumns:0 conflictResolution:0];

  return v14;
}

- (EFSQLTableSchema)initWithName:(id)name rowIDType:(unint64_t)type rowIDAlias:(id)alias columns:(id)columns primaryKeyColumns:(id)keyColumns conflictResolution:(unint64_t)resolution
{
  v57 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  aliasCopy = alias;
  columnsCopy = columns;
  keyColumnsCopy = keyColumns;
  v55.receiver = self;
  v55.super_class = EFSQLTableSchema;
  v15 = [(EFSQLTableSchema *)&v55 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    v17 = [columnsCopy mutableCopy];
    columns = v16->_columns;
    v16->_columns = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    columnsByName = v16->_columnsByName;
    v16->_columnsByName = v19;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = columnsCopy;
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
          name = [v25 name];
          [(NSMutableDictionary *)v26 setObject:v25 forKeyedSubscript:name];
        }

        v22 = [v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v22);
    }

    if (type - 1 >= 2)
    {
      if (!type)
      {
        if (![keyColumnsCopy count])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:v16 file:@"EFSQLTableSchema.m" lineNumber:72 description:@"No primary key columns specified"];
        }

        v31 = [(EFSQLTableSchema *)v16 _columnsForColumnNames:keyColumnsCopy];
        primaryKeyColumns = v16->_primaryKeyColumns;
        v16->_primaryKeyColumns = v31;

        v16->_primaryKeyConflictResolution = resolution;
      }
    }

    else
    {
      v28 = [[EFSQLColumnSchema alloc] initRowIDWithAlias:aliasCopy isAutoincrementing:type == 2];
      [v28 setTable:v16];
      [(NSMutableArray *)v16->_columns insertObject:v28 atIndex:0];
      name2 = [v28 name];
      rowIDColumnName = v16->_rowIDColumnName;
      v16->_rowIDColumnName = name2;

      [(NSMutableDictionary *)v16->_columnsByName setObject:v28 forKeyedSubscript:v16->_rowIDColumnName];
    }

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    uniquenessConstraints = v16->_uniquenessConstraints;
    v16->_uniquenessConstraints = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    checkConstraints = v16->_checkConstraints;
    v16->_checkConstraints = v35;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    foreignKeyReferences = v16->_foreignKeyReferences;
    v16->_foreignKeyReferences = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    associatedColumns = v16->_associatedColumns;
    v16->_associatedColumns = weakObjectsHashTable2;

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
  name = [(EFSQLTableSchema *)self name];
  v6 = [v3 initWithFormat:@"%@ %@ [%@]", v4, name, self->_columns];

  return v6;
}

- (id)definitionWithDatabaseName:(id)name
{
  v3 = [(EFSQLTableSchema *)self definitionWithDatabaseName:name includeIndexes:1];

  return v3;
}

- (id)definitionWithDatabaseName:(id)name includeIndexes:(BOOL)indexes
{
  indexesCopy = indexes;
  v54 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v41 = [(NSMutableArray *)self->_columns ef_map:&__block_literal_global_38];
  selfCopy = self;
  primaryKeyColumns = [(EFSQLTableSchema *)self primaryKeyColumns];
  v40 = primaryKeyColumns;
  if (primaryKeyColumns)
  {
    v7 = [primaryKeyColumns ef_map:&__block_literal_global_25_0];
    v8 = &stru_1F459BF68;
    primaryKeyConflictResolution = [(EFSQLTableSchema *)selfCopy primaryKeyConflictResolution];
    if (primaryKeyConflictResolution)
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = EFSQLStringForConflictResolution(primaryKeyConflictResolution);
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

  v38 = indexesCopy;
  if ([(NSMutableArray *)selfCopy->_uniquenessConstraints count])
  {
    v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](selfCopy->_uniquenessConstraints, "count")}];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = selfCopy->_uniquenessConstraints;
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
          first = [v17 first];
          v19 = [first ef_map:&__block_literal_global_39];
          v20 = [v19 componentsJoinedByString:{@", "}];

          v21 = objc_alloc(MEMORY[0x1E696AEC0]);
          second = [v17 second];
          v23 = EFSQLStringForConflictResolution([second unsignedIntegerValue]);
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

  checkConstraints = [(EFSQLTableSchema *)selfCopy checkConstraints];
  string = [MEMORY[0x1E696AD60] string];
  if ([checkConstraints count])
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __62__EFSQLTableSchema_definitionWithDatabaseName_includeIndexes___block_invoke_4;
    v47[3] = &unk_1E824A040;
    v48 = string;
    [checkConstraints enumerateObjectsUsingBlock:v47];
  }

  v30 = [(EFSQLTableSchema *)selfCopy fullNameWithDatabaseName:nameCopy];
  v31 = objc_alloc(MEMORY[0x1E696AEC0]);
  v32 = [v41 componentsJoinedByString:{@", \n"}];
  v33 = [v31 initWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@%@%@%@)%@;", v30, v32, v42, v27, string, v39];

  if (v38)
  {
    v34 = [(EFSQLTableSchema *)selfCopy indexDefinitionsWithDatabaseName:nameCopy];
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

- (id)indexDefinitionsWithDatabaseName:(id)name
{
  nameCopy = name;
  indexes = [(EFSQLTableSchema *)self indexes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__EFSQLTableSchema_indexDefinitionsWithDatabaseName___block_invoke;
  v10[3] = &unk_1E824A068;
  v6 = nameCopy;
  v11 = v6;
  v7 = [indexes ef_map:v10];

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

- (id)fullNameWithDatabaseName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    name = [(EFSQLTableSchema *)self name];
    name2 = [v5 initWithFormat:@"%@.%@", nameCopy, name];
  }

  else
  {
    name2 = [(EFSQLTableSchema *)self name];
  }

  return name2;
}

- (EFSQLColumnSchema)rowIDColumn
{
  columnsByName = self->_columnsByName;
  rowIDColumnName = [(EFSQLTableSchema *)self rowIDColumnName];
  v4 = [(NSMutableDictionary *)columnsByName objectForKeyedSubscript:rowIDColumnName];

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
  ef_notEmpty = [v2 ef_notEmpty];

  return ef_notEmpty;
}

id __33__EFSQLTableSchema_uniqueColumns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 first];

  return v2;
}

- (id)columnForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_columnsByName objectForKeyedSubscript:name];

  return v3;
}

- (void)addColumn:(id)column
{
  columnCopy = column;
  [columnCopy setTable:self];
  [(NSMutableArray *)self->_columns addObject:columnCopy];
  columnsByName = self->_columnsByName;
  name = [columnCopy name];
  [(NSMutableDictionary *)columnsByName setObject:columnCopy forKeyedSubscript:name];
}

- (void)removeColumn:(id)column
{
  columnCopy = column;
  [columnCopy setTable:0];
  [(NSMutableArray *)self->_columns removeObject:columnCopy];
  columnsByName = self->_columnsByName;
  name = [columnCopy name];
  [(NSMutableDictionary *)columnsByName setObject:0 forKeyedSubscript:name];
}

- (void)addUniquenessConstraintForColumns:(id)columns conflictResolution:(unint64_t)resolution
{
  v9 = [(EFSQLTableSchema *)self _columnsForColumnNames:columns];
  uniquenessConstraints = self->_uniquenessConstraints;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resolution];
  v8 = [EFPair pairWithFirst:v9 second:v7];
  [(NSMutableArray *)uniquenessConstraints addObject:v8];
}

- (id)_columnsForColumnNames:(id)names
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__EFSQLTableSchema__columnsForColumnNames___block_invoke;
  v5[3] = &unk_1E824A0B0;
  v5[4] = self;
  v5[5] = a2;
  v3 = [names ef_map:v5];

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
  setRepresentation = [(NSHashTable *)self->_foreignKeyReferences setRepresentation];
  ef_notEmpty = [setRepresentation ef_notEmpty];

  return ef_notEmpty;
}

- (NSSet)associatedColumns
{
  setRepresentation = [(NSHashTable *)self->_associatedColumns setRepresentation];
  ef_notEmpty = [setRepresentation ef_notEmpty];

  return ef_notEmpty;
}

- (void)addIndex:(id)index
{
  indexCopy = index;
  tableName = [indexCopy tableName];
  name = [(EFSQLTableSchema *)self name];
  v6 = [tableName isEqualToString:name];

  if (v6)
  {
    [(NSMutableArray *)self->_indexes addObject:indexCopy];
  }
}

- (void)addIndexForColumns:(id)columns
{
  columnsCopy = columns;
  v4 = [EFSQLIndexSchema alloc];
  name = [(EFSQLTableSchema *)self name];
  v6 = [(EFSQLIndexSchema *)v4 initWithTableName:name columnNames:columnsCopy];

  [(NSMutableArray *)self->_indexes addObject:v6];
}

@end