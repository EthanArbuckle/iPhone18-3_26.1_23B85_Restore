@interface CCSQLCommandJoinCriterion
+ (CCSQLCommandJoinCriterion)criterionWithANDSubCriteria:(id)criteria;
+ (CCSQLCommandJoinCriterion)criterionWithColumnName:(id)name onTable:(id)table EQUALSColumnName:(id)columnName comparingTableName:(id)tableName;
- (CCSQLCommandJoinCriterion)initWithColumnName:(id)name onTable:(id)table comparingColumnName:(id)columnName comparingTableName:(id)tableName sqlOperator:(int64_t)operator;
- (CCSQLCommandJoinCriterion)initWithSubCriteria:(id)criteria sqlOperator:(int64_t)operator;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CCSQLCommandJoinCriterion

- (CCSQLCommandJoinCriterion)initWithColumnName:(id)name onTable:(id)table comparingColumnName:(id)columnName comparingTableName:(id)tableName sqlOperator:(int64_t)operator
{
  nameCopy = name;
  tableCopy = table;
  columnNameCopy = columnName;
  tableNameCopy = tableName;
  v20.receiver = self;
  v20.super_class = CCSQLCommandJoinCriterion;
  v17 = [(CCSQLCommandJoinCriterion *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_columnName, name);
    objc_storeStrong(&v18->_tableName, table);
    objc_storeStrong(&v18->_comparingColumnName, columnName);
    objc_storeStrong(&v18->_comparingTableName, tableName);
    v18->_sqlOperator = operator;
  }

  return v18;
}

- (CCSQLCommandJoinCriterion)initWithSubCriteria:(id)criteria sqlOperator:(int64_t)operator
{
  criteriaCopy = criteria;
  v16.receiver = self;
  v16.super_class = CCSQLCommandJoinCriterion;
  v7 = [(CCSQLCommandJoinCriterion *)&v16 init];
  v8 = v7;
  if (v7)
  {
    columnName = v7->_columnName;
    v7->_columnName = 0;

    comparingColumnName = v8->_comparingColumnName;
    v8->_comparingColumnName = 0;

    v11 = v8->_comparingColumnName;
    v8->_comparingColumnName = 0;

    comparingTableName = v8->_comparingTableName;
    v8->_comparingTableName = 0;

    v8->_sqlOperator = operator;
    v13 = [criteriaCopy copy];
    subCriteria = v8->_subCriteria;
    v8->_subCriteria = v13;
  }

  return v8;
}

+ (CCSQLCommandJoinCriterion)criterionWithColumnName:(id)name onTable:(id)table EQUALSColumnName:(id)columnName comparingTableName:(id)tableName
{
  tableNameCopy = tableName;
  columnNameCopy = columnName;
  tableCopy = table;
  nameCopy = name;
  v13 = [[CCSQLCommandJoinCriterion alloc] initWithColumnName:nameCopy onTable:tableCopy comparingColumnName:columnNameCopy comparingTableName:tableNameCopy sqlOperator:1];

  return v13;
}

+ (CCSQLCommandJoinCriterion)criterionWithANDSubCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v4 = [[CCSQLCommandJoinCriterion alloc] initWithSubCriteria:criteriaCopy sqlOperator:10];

  return v4;
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

  v10 = [(NSString *)self->_comparingColumnName copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_comparingTableName copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v5[5] = self->_sqlOperator;
  v14 = [(NSArray *)self->_subCriteria copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  return v5;
}

@end