@interface CCSQLCommandJoinCriterion
+ (CCSQLCommandJoinCriterion)criterionWithANDSubCriteria:(id)a3;
+ (CCSQLCommandJoinCriterion)criterionWithColumnName:(id)a3 onTable:(id)a4 EQUALSColumnName:(id)a5 comparingTableName:(id)a6;
- (CCSQLCommandJoinCriterion)initWithColumnName:(id)a3 onTable:(id)a4 comparingColumnName:(id)a5 comparingTableName:(id)a6 sqlOperator:(int64_t)a7;
- (CCSQLCommandJoinCriterion)initWithSubCriteria:(id)a3 sqlOperator:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CCSQLCommandJoinCriterion

- (CCSQLCommandJoinCriterion)initWithColumnName:(id)a3 onTable:(id)a4 comparingColumnName:(id)a5 comparingTableName:(id)a6 sqlOperator:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = CCSQLCommandJoinCriterion;
  v17 = [(CCSQLCommandJoinCriterion *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_columnName, a3);
    objc_storeStrong(&v18->_tableName, a4);
    objc_storeStrong(&v18->_comparingColumnName, a5);
    objc_storeStrong(&v18->_comparingTableName, a6);
    v18->_sqlOperator = a7;
  }

  return v18;
}

- (CCSQLCommandJoinCriterion)initWithSubCriteria:(id)a3 sqlOperator:(int64_t)a4
{
  v6 = a3;
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

    v8->_sqlOperator = a4;
    v13 = [v6 copy];
    subCriteria = v8->_subCriteria;
    v8->_subCriteria = v13;
  }

  return v8;
}

+ (CCSQLCommandJoinCriterion)criterionWithColumnName:(id)a3 onTable:(id)a4 EQUALSColumnName:(id)a5 comparingTableName:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[CCSQLCommandJoinCriterion alloc] initWithColumnName:v12 onTable:v11 comparingColumnName:v10 comparingTableName:v9 sqlOperator:1];

  return v13;
}

+ (CCSQLCommandJoinCriterion)criterionWithANDSubCriteria:(id)a3
{
  v3 = a3;
  v4 = [[CCSQLCommandJoinCriterion alloc] initWithSubCriteria:v3 sqlOperator:10];

  return v4;
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

  v10 = [(NSString *)self->_comparingColumnName copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_comparingTableName copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v5[5] = self->_sqlOperator;
  v14 = [(NSArray *)self->_subCriteria copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  return v5;
}

@end