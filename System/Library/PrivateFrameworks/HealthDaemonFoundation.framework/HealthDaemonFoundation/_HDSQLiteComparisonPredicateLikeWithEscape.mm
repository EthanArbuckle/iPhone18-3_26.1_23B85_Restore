@interface _HDSQLiteComparisonPredicateLikeWithEscape
- (_HDSQLiteComparisonPredicateLikeWithEscape)initWithProperty:(id)property value:(id)value escapeCharacter:(id)character;
- (id)SQLForEntityClass:(Class)class;
@end

@implementation _HDSQLiteComparisonPredicateLikeWithEscape

- (_HDSQLiteComparisonPredicateLikeWithEscape)initWithProperty:(id)property value:(id)value escapeCharacter:(id)character
{
  characterCopy = character;
  v13.receiver = self;
  v13.super_class = _HDSQLiteComparisonPredicateLikeWithEscape;
  v10 = [(HDSQLiteComparisonPredicate *)&v13 initWithProperty:property value:value comparisonType:8];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_escapeCharacter, character);
  }

  return v11;
}

- (id)SQLForEntityClass:(Class)class
{
  property = [(HDSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ LIKE ? ESCAPE '%@')", v6, self->_escapeCharacter];

  return v7;
}

@end