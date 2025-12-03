@interface CCSQLCommandCriterion
+ (CCSQLCommandCriterion)criterionWithANDSubCriteria:(id)criteria;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name BETWEENLowerColumnValue:(id)value ANDUpperColumnValue:(id)columnValue;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name EQUALSColumnValue:(id)value;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name GREATERTHANOrEqualColumnValue:(id)value;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name INColumnValues:(id)values;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name INSubQuery:(id)query;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name ISColumnValue:(id)value;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name ISNOTColumnValue:(id)value;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name LESSTHANColumnValue:(id)value;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name LESSTHANOrEqualColumnValue:(id)value;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name LIKEWildcardPattern:(id)pattern;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name MATCHSearchPhrase:(id)phrase;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name NOTEQUALSColumnValue:(id)value;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name onTable:(id)table EQUALSColumnName:(id)columnName onTable:(id)onTable;
+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name onTable:(id)table EQUALSColumnValue:(id)value;
+ (CCSQLCommandCriterion)criterionWithEXISTSSubQuery:(id)query;
+ (CCSQLCommandCriterion)criterionWithNOTEXISTSSubQuery:(id)query;
+ (CCSQLCommandCriterion)criterionWithNOTSubCriteria:(id)criteria;
+ (CCSQLCommandCriterion)criterionWithORSubCriteria:(id)criteria;
- (CCSQLCommandCriterion)init;
- (CCSQLCommandCriterion)initWithColumnName:(id)name columnValues:(id)values sqlOperator:(int64_t)operator;
- (CCSQLCommandCriterion)initWithColumnName:(id)name subQuery:(id)query sqlOperator:(int64_t)operator;
- (CCSQLCommandCriterion)initWithColumnName:(id)name tableName:(id)tableName columnValue:(id)value sqlOperator:(int64_t)operator;
- (CCSQLCommandCriterion)initWithColumnName:(id)name tableName:(id)tableName otherColumnName:(id)columnName otherTableName:(id)otherTableName sqlOperator:(int64_t)operator;
- (CCSQLCommandCriterion)initWithSubCriteria:(id)criteria sqlOperator:(int64_t)operator;
- (CCSQLCommandCriterion)initWithSubQuery:(id)query sqlOperator:(int64_t)operator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CCSQLCommandCriterion

- (CCSQLCommandCriterion)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLCommandCriterion)initWithColumnName:(id)name columnValues:(id)values sqlOperator:(int64_t)operator
{
  nameCopy = name;
  valuesCopy = values;
  v21.receiver = self;
  v21.super_class = CCSQLCommandCriterion;
  v10 = [(CCSQLCommandCriterion *)&v21 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    columnName = v10->_columnName;
    v10->_columnName = v11;

    tableName = v10->_tableName;
    v10->_tableName = 0;

    comparingColumnName = v10->_comparingColumnName;
    v10->_comparingColumnName = 0;

    comparingTableName = v10->_comparingTableName;
    v10->_comparingTableName = 0;

    v16 = [valuesCopy copy];
    columnValues = v10->_columnValues;
    v10->_columnValues = v16;

    subCriteria = v10->_subCriteria;
    v10->_sqlOperator = operator;
    v10->_subCriteria = 0;

    subQuery = v10->_subQuery;
    v10->_subQuery = 0;
  }

  return v10;
}

- (CCSQLCommandCriterion)initWithColumnName:(id)name tableName:(id)tableName columnValue:(id)value sqlOperator:(int64_t)operator
{
  nameCopy = name;
  tableNameCopy = tableName;
  valueCopy = value;
  v25.receiver = self;
  v25.super_class = CCSQLCommandCriterion;
  v13 = [(CCSQLCommandCriterion *)&v25 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    columnName = v13->_columnName;
    v13->_columnName = v14;

    v16 = [tableNameCopy copy];
    tableName = v13->_tableName;
    v13->_tableName = v16;

    comparingColumnName = v13->_comparingColumnName;
    v13->_comparingColumnName = 0;

    comparingTableName = v13->_comparingTableName;
    v13->_comparingTableName = 0;

    v20 = [MEMORY[0x1E695DEC8] arrayWithObject:valueCopy];
    columnValues = v13->_columnValues;
    v13->_columnValues = v20;

    subCriteria = v13->_subCriteria;
    v13->_sqlOperator = operator;
    v13->_subCriteria = 0;

    subQuery = v13->_subQuery;
    v13->_subQuery = 0;
  }

  return v13;
}

- (CCSQLCommandCriterion)initWithColumnName:(id)name tableName:(id)tableName otherColumnName:(id)columnName otherTableName:(id)otherTableName sqlOperator:(int64_t)operator
{
  nameCopy = name;
  tableNameCopy = tableName;
  columnNameCopy = columnName;
  otherTableNameCopy = otherTableName;
  v29.receiver = self;
  v29.super_class = CCSQLCommandCriterion;
  v16 = [(CCSQLCommandCriterion *)&v29 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    columnName = v16->_columnName;
    v16->_columnName = v17;

    v19 = [tableNameCopy copy];
    tableName = v16->_tableName;
    v16->_tableName = v19;

    v21 = [columnNameCopy copy];
    comparingColumnName = v16->_comparingColumnName;
    v16->_comparingColumnName = v21;

    v23 = [otherTableNameCopy copy];
    comparingTableName = v16->_comparingTableName;
    v16->_comparingTableName = v23;

    columnValues = v16->_columnValues;
    v16->_columnValues = 0;

    subCriteria = v16->_subCriteria;
    v16->_sqlOperator = operator;
    v16->_subCriteria = 0;

    subQuery = v16->_subQuery;
    v16->_subQuery = 0;
  }

  return v16;
}

- (CCSQLCommandCriterion)initWithSubCriteria:(id)criteria sqlOperator:(int64_t)operator
{
  criteriaCopy = criteria;
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

    v8->_sqlOperator = operator;
    v14 = [criteriaCopy copy];
    subCriteria = v8->_subCriteria;
    v8->_subCriteria = v14;

    subQuery = v8->_subQuery;
    v8->_subQuery = 0;
  }

  return v8;
}

- (CCSQLCommandCriterion)initWithColumnName:(id)name subQuery:(id)query sqlOperator:(int64_t)operator
{
  nameCopy = name;
  queryCopy = query;
  v21.receiver = self;
  v21.super_class = CCSQLCommandCriterion;
  v11 = [(CCSQLCommandCriterion *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_columnName, name);
    tableName = v12->_tableName;
    v12->_tableName = 0;

    comparingTableName = v12->_comparingTableName;
    v12->_comparingTableName = 0;

    comparingColumnName = v12->_comparingColumnName;
    v12->_comparingColumnName = 0;

    columnValues = v12->_columnValues;
    v12->_columnValues = 0;

    subCriteria = v12->_subCriteria;
    v12->_sqlOperator = operator;
    v12->_subCriteria = 0;

    v18 = [queryCopy copy];
    subQuery = v12->_subQuery;
    v12->_subQuery = v18;
  }

  return v12;
}

- (CCSQLCommandCriterion)initWithSubQuery:(id)query sqlOperator:(int64_t)operator
{
  queryCopy = query;
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
    v8->_sqlOperator = operator;
    v8->_subCriteria = 0;

    v15 = [queryCopy copy];
    subQuery = v8->_subQuery;
    v8->_subQuery = v15;
  }

  return v8;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name EQUALSColumnValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:valueCopy sqlOperator:1];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name onTable:(id)table EQUALSColumnValue:(id)value
{
  valueCopy = value;
  tableCopy = table;
  nameCopy = name;
  v10 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy tableName:tableCopy columnValue:valueCopy sqlOperator:1];

  return v10;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name onTable:(id)table EQUALSColumnName:(id)columnName onTable:(id)onTable
{
  onTableCopy = onTable;
  columnNameCopy = columnName;
  tableCopy = table;
  nameCopy = name;
  v13 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy tableName:tableCopy otherColumnName:columnNameCopy otherTableName:onTableCopy sqlOperator:1];

  return v13;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name ISColumnValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:valueCopy sqlOperator:12];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name ISNOTColumnValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:valueCopy sqlOperator:13];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name NOTEQUALSColumnValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:valueCopy sqlOperator:6];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name LESSTHANColumnValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:valueCopy sqlOperator:2];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name LESSTHANOrEqualColumnValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:valueCopy sqlOperator:3];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name GREATERTHANOrEqualColumnValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:valueCopy sqlOperator:4];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name MATCHSearchPhrase:(id)phrase
{
  phraseCopy = phrase;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:phraseCopy sqlOperator:5];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name LIKEWildcardPattern:(id)pattern
{
  patternCopy = pattern;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValue:patternCopy sqlOperator:9];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name INColumnValues:(id)values
{
  valuesCopy = values;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy columnValues:valuesCopy sqlOperator:8];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name INSubQuery:(id)query
{
  queryCopy = query;
  nameCopy = name;
  v7 = [[CCSQLCommandCriterion alloc] initWithColumnName:nameCopy subQuery:queryCopy sqlOperator:8];

  return v7;
}

+ (CCSQLCommandCriterion)criterionWithEXISTSSubQuery:(id)query
{
  queryCopy = query;
  v4 = [[CCSQLCommandCriterion alloc] initWithSubQuery:queryCopy sqlOperator:15];

  return v4;
}

+ (CCSQLCommandCriterion)criterionWithNOTEXISTSSubQuery:(id)query
{
  queryCopy = query;
  v4 = [[CCSQLCommandCriterion alloc] initWithSubQuery:queryCopy sqlOperator:16];

  return v4;
}

+ (CCSQLCommandCriterion)criterionWithColumnName:(id)name BETWEENLowerColumnValue:(id)value ANDUpperColumnValue:(id)columnValue
{
  v15[2] = *MEMORY[0x1E69E9840];
  columnValueCopy = columnValue;
  valueCopy = value;
  nameCopy = name;
  v10 = [CCSQLCommandCriterion alloc];
  v15[0] = valueCopy;
  v15[1] = columnValueCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  v12 = [(CCSQLCommandCriterion *)v10 initWithColumnName:nameCopy columnValues:v11 sqlOperator:7];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (CCSQLCommandCriterion)criterionWithANDSubCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v4 = [[CCSQLCommandCriterion alloc] initWithSubCriteria:criteriaCopy sqlOperator:10];

  return v4;
}

+ (CCSQLCommandCriterion)criterionWithORSubCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v4 = [[CCSQLCommandCriterion alloc] initWithSubCriteria:criteriaCopy sqlOperator:11];

  return v4;
}

+ (CCSQLCommandCriterion)criterionWithNOTSubCriteria:(id)criteria
{
  v9[1] = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  v4 = [CCSQLCommandCriterion alloc];
  v9[0] = criteriaCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_columnName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_tableName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_comparingTableName copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_comparingColumnName copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSArray *)self->_columnValues copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v5[6] = self->_sqlOperator;
  v16 = [(NSArray *)self->_subCriteria copyWithZone:zone];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(CCDatabaseCommand *)self->_subQuery copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  return v5;
}

@end