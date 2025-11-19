@interface _HDSQLiteComparisonPredicateSubquery
- (BOOL)isEqual:(id)a3;
- (_HDSQLiteComparisonPredicateSubquery)initWithProperty:(id)a3 comparisonType:(int64_t)a4 subqueryDescriptor:(id)a5 subqueryProperties:(id)a6;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _HDSQLiteComparisonPredicateSubquery

- (_HDSQLiteComparisonPredicateSubquery)initWithProperty:(id)a3 comparisonType:(int64_t)a4 subqueryDescriptor:(id)a5 subqueryProperties:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277CBEB68];
  v13 = a3;
  v14 = [v12 null];
  v21.receiver = self;
  v21.super_class = _HDSQLiteComparisonPredicateSubquery;
  v15 = [(HDSQLiteComparisonPredicate *)&v21 initWithProperty:v13 value:v14 comparisonType:a4];

  if (v15)
  {
    v16 = [v10 copy];
    subqueryDescriptor = v15->_subqueryDescriptor;
    v15->_subqueryDescriptor = v16;

    v18 = [v11 copy];
    subqueryProperties = v15->_subqueryProperties;
    v15->_subqueryProperties = v18;
  }

  return v15;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = _HDSQLiteComparisonPredicateSubquery;
  v3 = [(HDSQLiteComparisonPredicate *)&v9 hash];
  v4 = [(_HDSQLiteComparisonPredicateSubquery *)self subqueryDescriptor];
  v5 = [v4 hash];
  v6 = [(_HDSQLiteComparisonPredicateSubquery *)self subqueryProperties];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _HDSQLiteComparisonPredicateSubquery;
  if (![(HDSQLiteComparisonPredicate *)&v11 isEqual:v4])
  {
    goto LABEL_8;
  }

  subqueryDescriptor = self->_subqueryDescriptor;
  v6 = v4[5];
  if (subqueryDescriptor != v6 && (!v6 || ![(HDSQLiteQueryDescriptor *)subqueryDescriptor isEqual:?]))
  {
    goto LABEL_8;
  }

  subqueryProperties = self->_subqueryProperties;
  v8 = v4[6];
  if (subqueryProperties == v8)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (v8)
  {
    v9 = [(NSArray *)subqueryProperties isEqual:?];
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  [(HDSQLitePropertyPredicate *)self property];
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_1_6();
  v6 = [(HDSQLiteComparisonPredicate *)v5 _comparisonTypeString];
  [(HDSQLiteQueryDescriptor *)self->_subqueryDescriptor selectSQLForProperties:self->_subqueryProperties];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_9();
  v7 = [v4 stringWithFormat:@"<%@ %@ (%@)>"];

  return v7;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = MEMORY[0x277CCACA8];
  [(objc_class *)a3 disambiguatedSQLForProperty:self->super.super._property];
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_1_6();
  v7 = [(HDSQLiteComparisonPredicate *)v6 _comparisonTypeString];
  [(HDSQLiteQueryDescriptor *)self->_subqueryDescriptor selectSQLForProperties:self->_subqueryProperties];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_9();
  v8 = [v5 stringWithFormat:@"(%@ %@ (%@))"];

  return v8;
}

@end