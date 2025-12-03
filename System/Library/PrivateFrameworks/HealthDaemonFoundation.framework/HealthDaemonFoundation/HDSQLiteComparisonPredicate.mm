@interface HDSQLiteComparisonPredicate
+ (id)predicateWithCoalescedProperties:(id)properties value:(id)value comparisonType:(int64_t)type;
+ (id)predicateWithProperty:(id)property beginsWithString:(id)string;
+ (id)predicateWithProperty:(id)property comparisonType:(int64_t)type otherProperty:(id)otherProperty;
+ (id)predicateWithProperty:(id)property comparisonType:(int64_t)type subqueryDescriptor:(id)descriptor subqueryProperties:(id)properties;
+ (id)predicateWithProperty:(id)property containsString:(id)string;
+ (id)predicateWithProperty:(id)property endsWithString:(id)string;
+ (id)predicateWithProperty:(id)property ifNullValue:(id)value value:(id)a5 comparisonType:(int64_t)type;
+ (id)predicateWithProperty:(id)property likePattern:(id)pattern;
+ (id)predicateWithProperty:(id)property likeValue:(id)value escapeCharacter:(id)character;
+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type;
- (BOOL)isCompatibleWithPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (HDSQLiteComparisonPredicate)initWithProperty:(id)property value:(id)value comparisonType:(int64_t)type influenceIndexUsage:(BOOL)usage;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (uint64_t)_comparisonTypeString;
@end

@implementation HDSQLiteComparisonPredicate

- (uint64_t)_comparisonTypeString
{
  if (self)
  {
    self = HDSQLOperatorForComparisonType(self[2]);
    v1 = vars8;
  }

  return self;
}

+ (id)predicateWithProperty:(id)property likeValue:(id)value escapeCharacter:(id)character
{
  characterCopy = character;
  valueCopy = value;
  propertyCopy = property;
  v10 = [[_HDSQLiteComparisonPredicateLikeWithEscape alloc] initWithProperty:propertyCopy value:valueCopy escapeCharacter:characterCopy];

  return v10;
}

+ (id)predicateWithProperty:(id)property likePattern:(id)pattern
{
  propertyCopy = property;
  patternCopy = pattern;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v8 = [patternCopy length];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___StringEscapingGlobPatternsForLikePredicate_block_invoke;
  v15 = &unk_2796BE150;
  v17 = v18;
  v9 = v7;
  v16 = v9;
  [patternCopy enumerateSubstringsInRange:0 options:v8 usingBlock:{2, &v12}];

  _Block_object_dispose(v18, 8);
  v10 = [HDSQLiteComparisonPredicate predicateWithProperty:propertyCopy likeValue:v9 escapeCharacter:@"~", v12, v13, v14, v15];

  return v10;
}

+ (id)predicateWithProperty:(id)property beginsWithString:(id)string
{
  v5 = MEMORY[0x277CCACA8];
  propertyCopy = property;
  v7 = _StringEscapingSpecialCharactersForLikePredicate(string);
  v8 = [v5 stringWithFormat:@"%@%%", v7];

  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:propertyCopy likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)property endsWithString:(id)string
{
  v5 = MEMORY[0x277CCACA8];
  propertyCopy = property;
  v7 = _StringEscapingSpecialCharactersForLikePredicate(string);
  v8 = [v5 stringWithFormat:@"%%%@", v7];

  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:propertyCopy likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)property containsString:(id)string
{
  v5 = MEMORY[0x277CCACA8];
  propertyCopy = property;
  v7 = _StringEscapingSpecialCharactersForLikePredicate(string);
  v8 = [v5 stringWithFormat:@"%%%@%%", v7];

  v9 = [HDSQLiteComparisonPredicate predicateWithProperty:propertyCopy likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type
{
  valueCopy = value;
  propertyCopy = property;
  v9 = [objc_alloc(objc_opt_class()) initWithProperty:propertyCopy value:valueCopy comparisonType:type];

  return v9;
}

+ (id)predicateWithProperty:(id)property ifNullValue:(id)value value:(id)a5 comparisonType:(int64_t)type
{
  v9 = a5;
  valueCopy = value;
  propertyCopy = property;
  v12 = [[_HDSQLiteComparisonPredicateIfNull alloc] initWithProperty:propertyCopy ifPropertyIsNullValue:valueCopy value:v9 comparisonType:type];

  return v12;
}

+ (id)predicateWithCoalescedProperties:(id)properties value:(id)value comparisonType:(int64_t)type
{
  valueCopy = value;
  propertiesCopy = properties;
  v9 = [[_HDSQLiteComparisonPredicateCoalesce alloc] initWithProperties:propertiesCopy value:valueCopy comparisonType:type];

  return v9;
}

+ (id)predicateWithProperty:(id)property comparisonType:(int64_t)type subqueryDescriptor:(id)descriptor subqueryProperties:(id)properties
{
  propertiesCopy = properties;
  descriptorCopy = descriptor;
  propertyCopy = property;
  v12 = [[_HDSQLiteComparisonPredicateSubquery alloc] initWithProperty:propertyCopy comparisonType:type subqueryDescriptor:descriptorCopy subqueryProperties:propertiesCopy];

  return v12;
}

+ (id)predicateWithProperty:(id)property comparisonType:(int64_t)type otherProperty:(id)otherProperty
{
  otherPropertyCopy = otherProperty;
  propertyCopy = property;
  v9 = [[_HDSQLiteTwoPropertyComparisonPredicate alloc] initWithProperty:propertyCopy comparisonType:type otherProperty:otherPropertyCopy];

  return v9;
}

- (HDSQLiteComparisonPredicate)initWithProperty:(id)property value:(id)value comparisonType:(int64_t)type influenceIndexUsage:(BOOL)usage
{
  propertyCopy = property;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = HDSQLiteComparisonPredicate;
  v12 = [(HDSQLiteComparisonPredicate *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_comparisonType = type;
    v14 = [propertyCopy copy];
    property = v13->super._property;
    v13->super._property = v14;

    v13->_influenceIndexUsage = usage;
    if ([valueCopy conformsToProtocol:&unk_286387240])
    {
      v16 = [valueCopy copy];
    }

    else
    {
      v16 = valueCopy;
    }

    value = v13->_value;
    v13->_value = v16;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = HDSQLiteComparisonPredicate;
  v7 = [(HDSQLitePropertyPredicate *)&v9 isEqual:equalCopy]&& self->_comparisonType == equalCopy[2] && ((value = self->_value, v6 = equalCopy[3], value == v6) || v6 && [value isEqual:?]) && self->_influenceIndexUsage == *(equalCopy + 32);

  return v7;
}

- (id)SQLForEntityClass:(Class)class
{
  property = [(HDSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];

  v7 = MEMORY[0x277CCACA8];
  if (self->_influenceIndexUsage)
  {
    v8 = &stru_28637B800;
  }

  else
  {
    v8 = @"+";
  }

  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v10 = [v7 stringWithFormat:@"(%@%@ %@ ?)", v8, v6, _comparisonTypeString];

  return v10;
}

- (BOOL)isCompatibleWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7.receiver = self;
  v7.super_class = HDSQLiteComparisonPredicate;
  if ([(HDSQLitePropertyPredicate *)&v7 isCompatibleWithPredicate:predicateCopy])
  {
    v5 = self->_comparisonType == predicateCopy[2];
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
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v7 = [v3 stringWithFormat:@"<%@%@ %@ %@>", v4, property, _comparisonTypeString, self->_value];

  return v7;
}

@end