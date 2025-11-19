@interface HDWorkoutStatisticsPredicate
+ (id)_predicateForColumn:(id)a3 quantity:(id)a4 quantityType:(id)a5 operatorType:(unint64_t)a6;
- (id)SQLForEntityClass:(Class)a3;
- (id)_init;
- (id)description;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation HDWorkoutStatisticsPredicate

- (id)description
{
  quantityType = self->_quantityType;
  v4 = MEMORY[0x277CCACA8];
  column = self->_column;
  comparisonType = self->_comparisonType;
  v7 = HDSQLOperatorForComparisonType();
  v8 = [v4 stringWithFormat:@"<data_type=%@ and %@ %@ %@", quantityType, column, v7, self->_quantity];

  return v8;
}

- (id)SQLForEntityClass:(Class)a3
{
  comparisonType = self->_comparisonType;
  v27 = HDSQLOperatorForComparisonType();
  v6 = [(objc_class *)a3 isEqual:objc_opt_class()];
  v7 = MEMORY[0x277CCACA8];
  if (v6)
  {
    v8 = +[(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity];
    v9 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
    v10 = [(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity disambiguatedSQLForProperty:0x283BF4B08];
    v11 = [(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity disambiguatedSQLForProperty:0x283BF4B28];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKQuantityType code](self->_quantityType, "code")}];
    column = self->_column;
    v14 = v9;
    v15 = [v7 stringWithFormat:@"(EXISTS (SELECT 1 FROM %@ WHERE %@=%@ AND %@=%@ AND %@%@?))", v8, v9, v10, v11, v12, column, v27];
  }

  else
  {
    v26 = +[(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity];
    v25 = +[(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity];
    v16 = *MEMORY[0x277D10A40];
    v24 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
    v11 = [(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity disambiguatedSQLForProperty:0x283BF4B08];
    v12 = [-[objc_class entityClassForEnumeration](a3 "entityClassForEnumeration")];
    v17 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:@"owner_id"];
    [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:@"is_primary_activity"];
    v18 = v23 = v7;
    v19 = [(HDSQLiteSchemaEntity *)HDWorkoutStatisticsEntity disambiguatedSQLForProperty:0x283BF4B28];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKQuantityType code](self->_quantityType, "code")}];
    v8 = v26;
    v21 = self->_column;
    v10 = v24;
    v14 = v25;
    v15 = [v23 stringWithFormat:@"(EXISTS (SELECT 1 FROM %@ INNER JOIN %@ ON %@=%@ WHERE %@=%@ AND %@ AND %@=%@ AND %@%@?))", v26, v25, v24, v11, v12, v17, v18, v19, v20, v21, v27];
  }

  return v15;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  quantity = self->_quantity;
  v7 = [(HKQuantityType *)self->_quantityType canonicalUnit];
  [(HKQuantity *)quantity doubleValueForUnit:v7];
  v9 = v8;

  sqlite3_bind_double(a3, *a4, v9);
  ++*a4;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HDWorkoutStatisticsPredicate;
  return [(HDWorkoutStatisticsPredicate *)&v3 init];
}

+ (id)_predicateForColumn:(id)a3 quantity:(id)a4 quantityType:(id)a5 operatorType:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[a1 alloc] _init];
  v13 = v12[1];
  v12[1] = v9;
  v14 = v9;

  v15 = v12[2];
  v12[2] = v10;
  v16 = v10;

  v17 = v12[3];
  v12[3] = v11;

  v12[4] = HDSQLiteComparisonTypeForPredicateOperator();

  return v12;
}

@end