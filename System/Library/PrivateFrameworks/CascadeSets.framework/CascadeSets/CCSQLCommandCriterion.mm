@interface CCSQLCommandCriterion
+ (CCSQLCommandCriterion)criterionWithANDSubCriteria:(id)a3;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 BETWEENLowerColumnValue:(id)a4 ANDUpperColumnValue:(id)a5;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 EQUALSColumnValue:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 GREATERTHANOrEqualColumnValue:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 INColumnValues:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 INSubQuery:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 ISColumnValue:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 ISNOTColumnValue:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 LESSTHANColumnValue:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 LESSTHANOrEqualColumnValue:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 LIKEWildcardPattern:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 MATCHSearchPhrase:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 NOTEQUALSColumnValue:(id)a4;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 onTable:(id)a4 EQUALSColumnName:(id)a5 onTable:(id)a6;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 onTable:(id)a4 EQUALSColumnValue:(id)a5;
+ (CCSQLCommandCriterion)criterionWithEXISTSSubQuery:(id)a3;
+ (CCSQLCommandCriterion)criterionWithNOTEXISTSSubQuery:(id)a3;
+ (CCSQLCommandCriterion)criterionWithNOTSubCriteria:(id)a3;
+ (CCSQLCommandCriterion)criterionWithORSubCriteria:(id)a3;
- (CCSQLCommandCriterion)init;
- (CCSQLCommandCriterion)initWithColumnName:(id)a3 columnValues:(id)a4 sqlOperator:(int64_t)a5;
- (CCSQLCommandCriterion)initWithColumnName:(id)a3 subQuery:(id)a4 sqlOperator:(int64_t)a5;
- (CCSQLCommandCriterion)initWithColumnName:(id)a3 tableName:(id)a4 columnValue:(id)a5 sqlOperator:(int64_t)a6;
- (CCSQLCommandCriterion)initWithColumnName:(id)a3 tableName:(id)a4 otherColumnName:(id)a5 otherTableName:(id)a6 sqlOperator:(int64_t)a7;
- (CCSQLCommandCriterion)initWithSubCriteria:(id)a3 sqlOperator:(int64_t)a4;
- (CCSQLCommandCriterion)initWithSubQuery:(id)a3 sqlOperator:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CCSQLCommandCriterion

- (CCSQLCommandCriterion)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLCommandCriterion)initWithColumnName:(id)a3 columnValues:(id)a4 sqlOperator:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = CCSQLCommandCriterion;
  v10 = [(CCSQLCommandCriterion *)&v21 init];
  if (v10)
  {
    v11 = [v8 copy];
    columnName = v10->_columnName;
    v10->_columnName = v11;

    tableName = v10->_tableName;
    v10->_tableName = 0;

    comparingColumnName = v10->_comparingColumnName;
    v10->_comparingColumnName = 0;

    comparingTableName = v10->_comparingTableName;
    v10->_comparingTableName = 0;

    v16 = [v9 copy];
    columnValues = v10->_columnValues;
    v10->_columnValues = v16;

    subCriteria = v10->_subCriteria;
    v10->_sqlOperator = a5;
    v10->_subCriteria = 0;

    subQuery = v10->_subQuery;
    v10->_subQuery = 0;
  }

  return v10;
}

- (CCSQLCommandCriterion)initWithColumnName:(id)a3 tableName:(id)a4 columnValue:(id)a5 sqlOperator:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25.receiver = self;
  v25.super_class = CCSQLCommandCriterion;
  v13 = [(CCSQLCommandCriterion *)&v25 init];
  if (v13)
  {
    v14 = [v10 copy];
    columnName = v13->_columnName;
    v13->_columnName = v14;

    v16 = [v11 copy];
    tableName = v13->_tableName;
    v13->_tableName = v16;

    comparingColumnName = v13->_comparingColumnName;
    v13->_comparingColumnName = 0;

    comparingTableName = v13->_comparingTableName;
    v13->_comparingTableName = 0;

    v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
    columnValues = v13->_columnValues;
    v13->_columnValues = v20;

    subCriteria = v13->_subCriteria;
    v13->_sqlOperator = a6;
    v13->_subCriteria = 0;

    subQuery = v13->_subQuery;
    v13->_subQuery = 0;
  }

  return v13;
}

- (CCSQLCommandCriterion)initWithColumnName:(id)a3 tableName:(id)a4 otherColumnName:(id)a5 otherTableName:(id)a6 sqlOperator:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v29.receiver = self;
  v29.super_class = CCSQLCommandCriterion;
  v16 = [(CCSQLCommandCriterion *)&v29 init];
  if (v16)
  {
    v17 = [v12 copy];
    columnName = v16->_columnName;
    v16->_columnName = v17;

    v19 = [v13 copy];
    tableName = v16->_tableName;
    v16->_tableName = v19;

    v21 = [v14 copy];
    comparingColumnName = v16->_comparingColumnName;
    v16->_comparingColumnName = v21;

    v23 = [v15 copy];
    comparingTableName = v16->_comparingTableName;
    v16->_comparingTableName = v23;

    columnValues = v16->_columnValues;
    v16->_columnValues = 0;

    subCriteria = v16->_subCriteria;
    v16->_sqlOperator = a7;
    v16->_subCriteria = 0;

    subQuery = v16->_subQuery;
    v16->_subQuery = 0;
  }

  return v16;
}

- (CCSQLCommandCriterion)initWithSubCriteria:(id)a3 sqlOperator:(int64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = CCSQLCommandCriterion;
  v7 = [(CCSQLCommandCriterion *)&v18 init];
  v8 = v7;
  if (v7)
  {
    columnName = v7->_columnName;
    v7->_columnName = 0;

    tableName = v8->_tableName;
    v8->_tableName = 0;

    comparingColumnName = v8->_comparingColumnName;
    v8->_comparingColumnName = 0;

    comparingTableName = v8->_comparingTableName;
    v8->_comparingTableName = 0;

    columnValues = v8->_columnValues;
    v8->_columnValues = 0;

    v8->_sqlOperator = a4;
    v14 = [v6 copy];
    subCriteria = v8->_subCriteria;
    v8->_subCriteria = v14;

    subQuery = v8->_subQuery;
    v8->_subQuery = 0;
  }

  return v8;
}

- (CCSQLCommandCriterion)initWithColumnName:(id)a3 subQuery:(id)a4 sqlOperator:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = CCSQLCommandCriterion;
  v11 = [(CCSQLCommandCriterion *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_columnName, a3);
    tableName = v12->_tableName;
    v12->_tableName = 0;

    comparingTableName = v12->_comparingTableName;
    v12->_comparingTableName = 0;

    comparingColumnName = v12->_comparingColumnName;
    v12->_comparingColumnName = 0;

    columnValues = v12->_columnValues;
    v12->_columnValues = 0;

    subCriteria = v12->_subCriteria;
    v12->_sqlOperator = a5;
    v12->_subCriteria = 0;

    v18 = [v10 copy];
    subQuery = v12->_subQuery;
    v12->_subQuery = v18;
  }

  return v12;
}

- (CCSQLCommandCriterion)initWithSubQuery:(id)a3 sqlOperator:(int64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = CCSQLCommandCriterion;
  v7 = [(CCSQLCommandCriterion *)&v18 init];
  v8 = v7;
  if (v7)
  {
    columnName = v7->_columnName;
    v7->_columnName = 0;

    tableName = v8->_tableName;
    v8->_tableName = 0;

    comparingTableName = v8->_comparingTableName;
    v8->_comparingTableName = 0;

    comparingColumnName = v8->_comparingColumnName;
    v8->_comparingColumnName = 0;

    columnValues = v8->_columnValues;
    v8->_columnValues = 0;

    subCriteria = v8->_subCriteria;
    v8->_sqlOperator = a4;
    v8->_subCriteria = 0;

    v15 = [v6 copy];
    subQuery = v8->_subQuery;
    v8->_subQuery = v15;
  }

  return v8;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 EQUALSColumnValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:1];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 onTable:(id)a4 EQUALSColumnValue:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CCSQLCommandCriterion alloc] initWithColumnName:v9 tableName:v8 columnValue:v7 sqlOperator:1];

  return v10;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 onTable:(id)a4 EQUALSColumnName:(id)a5 onTable:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[CCSQLCommandCriterion alloc] initWithColumnName:v12 tableName:v11 otherColumnName:v10 otherTableName:v9 sqlOperator:1];

  return v13;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 ISColumnValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:12];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 ISNOTColumnValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:13];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 NOTEQUALSColumnValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:6];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 LESSTHANColumnValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:2];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 LESSTHANOrEqualColumnValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:3];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 GREATERTHANOrEqualColumnValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:4];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 MATCHSearchPhrase:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:5];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 LIKEWildcardPattern:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValue:v5 sqlOperator:9];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 INColumnValues:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 columnValues:v5 sqlOperator:8];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 INSubQuery:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:v6 subQuery:v5 sqlOperator:8];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithEXISTSSubQuery:(id)a3
{
  v3 = a3;
  v4 = [[CCSQLCommandCriterion alloc] initWithSubQuery:v3 sqlOperator:15];

  return v4;
}

+ (CCSQLCommandCriterion)criterionWithNOTEXISTSSubQuery:(id)a3
{
  v3 = a3;
  v4 = [[CCSQLCommandCriterion alloc] initWithSubQuery:v3 sqlOperator:16];

  return v4;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)a3 BETWEENLowerColumnValue:(id)a4 ANDUpperColumnValue:(id)a5
{
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [CCSQLCommandCriterion alloc];
  v15[0] = v8;
  v15[1] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  v12 = [(CCSQLCommandCriterion *)v10 initWithColumnName:v9 columnValues:v11 sqlOperator:7];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (CCSQLCommandCriterion)criterionWithANDSubCriteria:(id)a3
{
  v3 = a3;
  v4 = [[CCSQLCommandCriterion alloc] initWithSubCriteria:v3 sqlOperator:10];

  return v4;
}

+ (CCSQLCommandCriterion)criterionWithORSubCriteria:(id)a3
{
  v3 = a3;
  v4 = [[CCSQLCommandCriterion alloc] initWithSubCriteria:v3 sqlOperator:11];

  return v4;
}

+ (CCSQLCommandCriterion)criterionWithNOTSubCriteria:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [CCSQLCommandCriterion alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v6 = [(CCSQLCommandCriterion *)v4 initWithSubCriteria:v5 sqlOperator:14];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CCSQLCommandCriterion;
  v3 = [(CCSQLCommandCriterion *)&v9 description];
  columnName = self->_columnName;
  columnValues = self->_columnValues;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sqlOperator];
  v7 = [v3 stringByAppendingFormat:@" columnName: %@, columnValues: %@, sqlOperator: %@, subCriteria: %@", columnName, columnValues, v6, self->_subCriteria];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_columnName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_tableName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_comparingTableName copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_comparingColumnName copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSArray *)self->_columnValues copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v5[6] = self->_sqlOperator;
  v16 = [(NSArray *)self->_subCriteria copyWithZone:a3];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(CCDatabaseCommand *)self->_subQuery copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  return v5;
}

@end