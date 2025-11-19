@interface _HDSQLiteTwoPropertyComparisonPredicate
- (_HDSQLiteTwoPropertyComparisonPredicate)initWithProperty:(id)a3 comparisonType:(int64_t)a4 otherProperty:(id)a5;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
@end

@implementation _HDSQLiteTwoPropertyComparisonPredicate

- (_HDSQLiteTwoPropertyComparisonPredicate)initWithProperty:(id)a3 comparisonType:(int64_t)a4 otherProperty:(id)a5
{
  v6.receiver = self;
  v6.super_class = _HDSQLiteTwoPropertyComparisonPredicate;
  return [(HDSQLiteComparisonPredicate *)&v6 initWithProperty:a3 value:a5 comparisonType:a4];
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  [(HDSQLitePropertyPredicate *)self property];
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_1_6();
  v6 = [(HDSQLiteComparisonPredicate *)v5 _comparisonTypeString];
  [(_HDSQLiteTwoPropertyComparisonPredicate *)self otherProperty];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_9();
  v7 = [v4 stringWithFormat:@"<%@ %@ %@>"];

  return v7;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [(objc_class *)a3 disambiguatedSQLForProperty:self->super.super._property];
  v7 = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v8 = [(_HDSQLiteTwoPropertyComparisonPredicate *)self otherProperty];
  v9 = [(objc_class *)a3 disambiguatedSQLForProperty:v8];
  v10 = [v5 stringWithFormat:@"(%@ %@ %@)", v6, v7, v9];

  return v10;
}

@end