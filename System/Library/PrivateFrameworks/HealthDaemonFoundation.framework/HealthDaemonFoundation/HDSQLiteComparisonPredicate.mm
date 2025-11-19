@interface HDSQLiteComparisonPredicate
+ (id)predicateWithCoalescedProperties:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
+ (id)predicateWithProperty:(id)a3 beginsWithString:(id)a4;
+ (id)predicateWithProperty:(id)a3 comparisonType:(int64_t)a4 otherProperty:(id)a5;
+ (id)predicateWithProperty:(id)a3 comparisonType:(int64_t)a4 subqueryDescriptor:(id)a5 subqueryProperties:(id)a6;
+ (id)predicateWithProperty:(id)a3 containsString:(id)a4;
+ (id)predicateWithProperty:(id)a3 endsWithString:(id)a4;
+ (id)predicateWithProperty:(id)a3 ifNullValue:(id)a4 value:(id)a5 comparisonType:(int64_t)a6;
+ (id)predicateWithProperty:(id)a3 likePattern:(id)a4;
+ (id)predicateWithProperty:(id)a3 likeValue:(id)a4 escapeCharacter:(id)a5;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isCompatibleWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HDSQLiteComparisonPredicate)initWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5 influenceIndexUsage:(BOOL)a6;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
- (uint64_t)_comparisonTypeString;
@end

@implementation HDSQLiteComparisonPredicate

- (uint64_t)_comparisonTypeString
{
  if (a1)
  {
    a1 = HDSQLOperatorForComparisonType(a1[2]);
    v1 = vars8;
  }

  return a1;
}

+ (id)predicateWithProperty:(id)a3 likeValue:(id)a4 escapeCharacter:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_HDSQLiteComparisonPredicateLikeWithEscape alloc] initWithProperty:v9 value:v8 escapeCharacter:v7];

  return v10;
}

+ (id)predicateWithProperty:(id)a3 likePattern:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v8 = [v6 length];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___StringEscapingGlobPatternsForLikePredicate_block_invoke;
  v15 = &unk_2796BE150;
  v17 = v18;
  v9 = v7;
  v16 = v9;
  [v6 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, &v12}];

  _Block_object_dispose(v18, 8);
  v10 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 likeValue:v9 escapeCharacter:@"~", v12, v13, v14, v15];

  return v10;
}

+ (id)predicateWithProperty:(id)a3 beginsWithString:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = _StringEscapingSpecialCharactersForLikePredicate(a4);
  v8 = [v5 stringWithFormat:@"%@%%", v7];

  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v6 likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 endsWithString:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = _StringEscapingSpecialCharactersForLikePredicate(a4);
  v8 = [v5 stringWithFormat:@"%%%@", v7];

  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v6 likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 containsString:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = _StringEscapingSpecialCharactersForLikePredicate(a4);
  v8 = [v5 stringWithFormat:@"%%%@%%", v7];

  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:v6 likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithProperty:v8 value:v7 comparisonType:a5];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 ifNullValue:(id)a4 value:(id)a5 comparisonType:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[_HDSQLiteComparisonPredicateIfNull alloc] initWithProperty:v11 ifPropertyIsNullValue:v10 value:v9 comparisonType:a6];

  return v12;
}

+ (id)predicateWithCoalescedProperties:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[_HDSQLiteComparisonPredicateCoalesce alloc] initWithProperties:v8 value:v7 comparisonType:a5];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 comparisonType:(int64_t)a4 subqueryDescriptor:(id)a5 subqueryProperties:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[_HDSQLiteComparisonPredicateSubquery alloc] initWithProperty:v11 comparisonType:a4 subqueryDescriptor:v10 subqueryProperties:v9];

  return v12;
}

+ (id)predicateWithProperty:(id)a3 comparisonType:(int64_t)a4 otherProperty:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[_HDSQLiteTwoPropertyComparisonPredicate alloc] initWithProperty:v8 comparisonType:a4 otherProperty:v7];

  return v9;
}

- (HDSQLiteComparisonPredicate)initWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5 influenceIndexUsage:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v19.receiver = self;
  v19.super_class = HDSQLiteComparisonPredicate;
  v12 = [(HDSQLiteComparisonPredicate *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_comparisonType = a5;
    v14 = [v10 copy];
    property = v13->super._property;
    v13->super._property = v14;

    v13->_influenceIndexUsage = a6;
    if ([v11 conformsToProtocol:&unk_286387240])
    {
      v16 = [v11 copy];
    }

    else
    {
      v16 = v11;
    }

    value = v13->_value;
    v13->_value = v16;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSQLiteComparisonPredicate;
  v7 = [(HDSQLitePropertyPredicate *)&v9 isEqual:v4]&& self->_comparisonType == v4[2] && ((value = self->_value, v6 = v4[3], value == v6) || v6 && [value isEqual:?]) && self->_influenceIndexUsage == *(v4 + 32);

  return v7;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = [(HDSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)a3 disambiguatedSQLForProperty:v5];

  v7 = MEMORY[0x277CCACA8];
  if (self->_influenceIndexUsage)
  {
    v8 = &stru_28637B800;
  }

  else
  {
    v8 = @"+";
  }

  v9 = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v10 = [v7 stringWithFormat:@"(%@%@ %@ ?)", v8, v6, v9];

  return v10;
}

- (BOOL)isCompatibleWithPredicate:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HDSQLiteComparisonPredicate;
  if ([(HDSQLitePropertyPredicate *)&v7 isCompatibleWithPredicate:v4])
  {
    v5 = self->_comparisonType == v4[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_influenceIndexUsage)
  {
    v4 = &stru_28637B800;
  }

  else
  {
    v4 = @"+";
  }

  property = self->super._property;
  v6 = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v7 = [v3 stringWithFormat:@"<%@%@ %@ %@>", v4, property, v6, self->_value];

  return v7;
}

@end