@interface _HDSQLiteComparisonPredicateIfNull
- (BOOL)isEqual:(id)equal;
- (_HDSQLiteComparisonPredicateIfNull)initWithProperty:(id)property ifPropertyIsNullValue:(id)value value:(id)a5 comparisonType:(int64_t)type;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation _HDSQLiteComparisonPredicateIfNull

- (_HDSQLiteComparisonPredicateIfNull)initWithProperty:(id)property ifPropertyIsNullValue:(id)value value:(id)a5 comparisonType:(int64_t)type
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = _HDSQLiteComparisonPredicateIfNull;
  v11 = [(HDSQLiteComparisonPredicate *)&v15 initWithProperty:property value:a5 comparisonType:type];
  if (v11)
  {
    if ([valueCopy conformsToProtocol:&unk_286387240])
    {
      v12 = [valueCopy copy];
    }

    else
    {
      v12 = valueCopy;
    }

    ifPropertyIsNullValue = v11->_ifPropertyIsNullValue;
    v11->_ifPropertyIsNullValue = v12;
  }

  return v11;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  _BindValueToStatement(self->_ifPropertyIsNullValue, statement, index);
  value = [(HDSQLiteComparisonPredicate *)self value];
  _BindValueToStatement(value, statement, index);
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _HDSQLiteComparisonPredicateIfNull;
  v3 = [(HDSQLiteComparisonPredicate *)&v7 hash];
  ifPropertyIsNullValue = [(_HDSQLiteComparisonPredicateIfNull *)self ifPropertyIsNullValue];
  v5 = [ifPropertyIsNullValue hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _HDSQLiteComparisonPredicateIfNull;
  if (![(HDSQLiteComparisonPredicate *)&v9 isEqual:equalCopy])
  {
    goto LABEL_5;
  }

  ifPropertyIsNullValue = self->_ifPropertyIsNullValue;
  v6 = equalCopy[5];
  if (ifPropertyIsNullValue == v6)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [ifPropertyIsNullValue isEqual:?];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (id)SQLForEntityClass:(Class)class
{
  [(HDSQLitePropertyPredicate *)self property];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_1_6() disambiguatedSQLForProperty:v3];

  v6 = MEMORY[0x277CCACA8];
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v8 = [v6 stringWithFormat:@"(IFNULL(%@, ?) %@ ?)", v5, _comparisonTypeString];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  property = [(HDSQLitePropertyPredicate *)self property];
  ifPropertyIsNullValue = self->_ifPropertyIsNullValue;
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  value = [(HDSQLiteComparisonPredicate *)self value];
  v8 = [v3 stringWithFormat:@"<(%@, %@) %@ %@>", property, ifPropertyIsNullValue, _comparisonTypeString, value];

  return v8;
}

@end