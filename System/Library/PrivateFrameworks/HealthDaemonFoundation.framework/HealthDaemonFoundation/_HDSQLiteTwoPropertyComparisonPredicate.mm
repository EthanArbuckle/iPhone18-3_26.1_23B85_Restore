@interface _HDSQLiteTwoPropertyComparisonPredicate
- (_HDSQLiteTwoPropertyComparisonPredicate)initWithProperty:(id)property comparisonType:(int64_t)type otherProperty:(id)otherProperty;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
@end

@implementation _HDSQLiteTwoPropertyComparisonPredicate

- (_HDSQLiteTwoPropertyComparisonPredicate)initWithProperty:(id)property comparisonType:(int64_t)type otherProperty:(id)otherProperty
{
  v6.receiver = self;
  v6.super_class = _HDSQLiteTwoPropertyComparisonPredicate;
  return [(HDSQLiteComparisonPredicate *)&v6 initWithProperty:property value:otherProperty comparisonType:type];
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  [(HDSQLitePropertyPredicate *)self property];
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_1_6();
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)v5 _comparisonTypeString];
  [(_HDSQLiteTwoPropertyComparisonPredicate *)self otherProperty];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_9();
  v7 = [v4 stringWithFormat:@"<%@ %@ %@>"];

  return v7;
}

- (id)SQLForEntityClass:(Class)class
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:self->super.super._property];
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  otherProperty = [(_HDSQLiteTwoPropertyComparisonPredicate *)self otherProperty];
  v9 = [(objc_class *)class disambiguatedSQLForProperty:otherProperty];
  v10 = [v5 stringWithFormat:@"(%@ %@ %@)", v6, _comparisonTypeString, v9];

  return v10;
}

@end