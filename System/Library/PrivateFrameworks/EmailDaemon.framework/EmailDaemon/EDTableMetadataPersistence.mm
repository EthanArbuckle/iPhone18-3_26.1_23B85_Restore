@interface EDTableMetadataPersistence
+ (BOOL)updateLargestDeletedRowID:(int64_t)a3 forTableName:(id)a4 withConnection:(id)a5;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
+ (int64_t)largestDeletedRowIDForTableName:(id)a3 withConnection:(id)a4;
@end

@implementation EDTableMetadataPersistence

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E699B958]);
  v7 = [MEMORY[0x1E699B8D0] textColumnWithName:@"table_name" collation:1 nullable:0];
  v18[0] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"largest_deleted_rowid" nullable:0 defaultValue:&unk_1F45E6BE0];
  v18[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17 = @"table_name";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v11 = [v6 initWithName:@"table_metadata" columns:v9 primaryKeyColumns:v10];

  v12 = MEMORY[0x1E695E0F0];
  *a3 = MEMORY[0x1E695E0F0];
  *a4 = v12;
  v16 = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)updateLargestDeletedRowID:(int64_t)a3 forTableName:(id)a4 withConnection:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x1E699B968]);
  v22[0] = @"table_name";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v11 = [v9 initWithTable:@"table_metadata" conflictTarget:v10];

  [v11 setObject:v7 forKeyedSubscript:@"table_name"];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [v11 setObject:v12 forKeyedSubscript:@"largest_deleted_rowid"];

  v13 = [v11 excludedColumnExpressionForColumnName:@"largest_deleted_rowid"];
  v14 = [MEMORY[0x1E699B8C8] column:@"largest_deleted_rowid"];
  v15 = [v13 greaterThan:v14];
  [v11 setWhereClause:v15];

  v21 = 0;
  v16 = [v8 executeUpsertStatement:v11 error:&v21];
  v17 = v21;
  if ((v16 & 1) == 0)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Updating largest_deleted_rowid for %@", v7];
    [v8 handleError:v17 message:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (int64_t)largestDeletedRowIDForTableName:(id)a3 withConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"largest_deleted_rowid" table:@"table_metadata"];
  v8 = [MEMORY[0x1E699B8C8] column:@"table_name"];
  v9 = [v8 equalTo:v5];
  [v7 setWhere:v9];

  [v7 setLimit:1];
  v14 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__EDTableMetadataPersistence_largestDeletedRowIDForTableName_withConnection___block_invoke;
  v15[3] = &unk_1E8250418;
  v15[4] = &v16;
  LOBYTE(v8) = [v6 executeSelectStatement:v7 withBlock:v15 error:&v14];
  v10 = v14;
  if ((v8 & 1) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Getting largest_deleted_rowid for %@", v5];
    [v6 handleError:v10 message:v11];
  }

  v12 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v12;
}

void __77__EDTableMetadataPersistence_largestDeletedRowIDForTableName_withConnection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

@end