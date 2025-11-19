@interface HDWorkoutActivityPredicate
+ (id)predicateForSubPredicate:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
@end

@implementation HDWorkoutActivityPredicate

+ (id)predicateForSubPredicate:(id)a3
{
  v3 = a3;
  v4 = [HDWorkoutActivityPredicate alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = HDWorkoutActivityPredicate;
    v5 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5[1];
  v5[1] = v3;

  return v5;
}

- (id)SQLForEntityClass:(Class)a3
{
  v3 = [(HDSQLitePredicate *)self->_subPredicate SQLForEntityClass:objc_opt_class()];
  v14 = MEMORY[0x277CCACA8];
  v4 = +[(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity];
  v5 = *MEMORY[0x277D10A40];
  v6 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
  v7 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:@"owner_id"];
  v8 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:@"is_primary_activity"];
  v9 = +[(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity];
  v10 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:v5];
  v11 = [(HDSQLiteSchemaEntity *)HDWorkoutActivityEntity disambiguatedSQLForProperty:@"owner_id"];
  v12 = [v14 stringWithFormat:@"(EXISTS (SELECT 1 FROM %@ WHERE %@ = %@ AND (%@) AND (%@ = 0 OR (SELECT COUNT(*) FROM %@ WHERE %@ = %@) = 1)))", v4, v6, v7, v3, v8, v9, v10, v11];

  return v12;
}

@end