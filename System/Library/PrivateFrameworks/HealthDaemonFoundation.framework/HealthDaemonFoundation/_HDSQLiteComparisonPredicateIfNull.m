@interface _HDSQLiteComparisonPredicateIfNull
- (BOOL)isEqual:(id)a3;
- (_HDSQLiteComparisonPredicateIfNull)initWithProperty:(id)a3 ifPropertyIsNullValue:(id)a4 value:(id)a5 comparisonType:(int64_t)a6;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation _HDSQLiteComparisonPredicateIfNull

- (_HDSQLiteComparisonPredicateIfNull)initWithProperty:(id)a3 ifPropertyIsNullValue:(id)a4 value:(id)a5 comparisonType:(int64_t)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = _HDSQLiteComparisonPredicateIfNull;
  v11 = [(HDSQLiteComparisonPredicate *)&v15 initWithProperty:a3 value:a5 comparisonType:a6];
  if (v11)
  {
    if ([v10 conformsToProtocol:&unk_286387240])
    {
      v12 = [v10 copy];
    }

    else
    {
      v12 = v10;
    }

    ifPropertyIsNullValue = v11->_ifPropertyIsNullValue;
    v11->_ifPropertyIsNullValue = v12;
  }

  return v11;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  _BindValueToStatement(self->_ifPropertyIsNullValue, a3, a4);
  v7 = [(HDSQLiteComparisonPredicate *)self value];
  _BindValueToStatement(v7, a3, a4);
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _HDSQLiteComparisonPredicateIfNull;
  v3 = [(HDSQLiteComparisonPredicate *)&v7 hash];
  v4 = [(_HDSQLiteComparisonPredicateIfNull *)self ifPropertyIsNullValue];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HDSQLiteComparisonPredicateIfNull;
  if (![(HDSQLiteComparisonPredicate *)&v9 isEqual:v4])
  {
    goto LABEL_5;
  }

  ifPropertyIsNullValue = self->_ifPropertyIsNullValue;
  v6 = v4[5];
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

- (id)SQLForEntityClass:(Class)a3
{
  [(HDSQLitePropertyPredicate *)self property];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_1_6() disambiguatedSQLForProperty:v3];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v8 = [v6 stringWithFormat:@"(IFNULL(%@, ?) %@ ?)", v5, v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDSQLitePropertyPredicate *)self property];
  ifPropertyIsNullValue = self->_ifPropertyIsNullValue;
  v6 = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v7 = [(HDSQLiteComparisonPredicate *)self value];
  v8 = [v3 stringWithFormat:@"<(%@, %@) %@ %@>", v4, ifPropertyIsNullValue, v6, v7];

  return v8;
}

@end