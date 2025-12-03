@interface _HDSQLiteComparisonPredicateSubquery
- (BOOL)isEqual:(id)equal;
- (_HDSQLiteComparisonPredicateSubquery)initWithProperty:(id)property comparisonType:(int64_t)type subqueryDescriptor:(id)descriptor subqueryProperties:(id)properties;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (unint64_t)hash;
@end

@implementation _HDSQLiteComparisonPredicateSubquery

- (_HDSQLiteComparisonPredicateSubquery)initWithProperty:(id)property comparisonType:(int64_t)type subqueryDescriptor:(id)descriptor subqueryProperties:(id)properties
{
  descriptorCopy = descriptor;
  propertiesCopy = properties;
  v12 = MEMORY[0x277CBEB68];
  propertyCopy = property;
  null = [v12 null];
  v21.receiver = self;
  v21.super_class = _HDSQLiteComparisonPredicateSubquery;
  v15 = [(HDSQLiteComparisonPredicate *)&v21 initWithProperty:propertyCopy value:null comparisonType:type];

  if (v15)
  {
    v16 = [descriptorCopy copy];
    subqueryDescriptor = v15->_subqueryDescriptor;
    v15->_subqueryDescriptor = v16;

    v18 = [propertiesCopy copy];
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
  subqueryDescriptor = [(_HDSQLiteComparisonPredicateSubquery *)self subqueryDescriptor];
  v5 = [subqueryDescriptor hash];
  subqueryProperties = [(_HDSQLiteComparisonPredicateSubquery *)self subqueryProperties];
  v7 = v5 ^ [subqueryProperties hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _HDSQLiteComparisonPredicateSubquery;
  if (![(HDSQLiteComparisonPredicate *)&v11 isEqual:equalCopy])
  {
    goto LABEL_8;
  }

  subqueryDescriptor = self->_subqueryDescriptor;
  v6 = equalCopy[5];
  if (subqueryDescriptor != v6 && (!v6 || ![(HDSQLiteQueryDescriptor *)subqueryDescriptor isEqual:?]))
  {
    goto LABEL_8;
  }

  subqueryProperties = self->_subqueryProperties;
  v8 = equalCopy[6];
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
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)v5 _comparisonTypeString];
  [(HDSQLiteQueryDescriptor *)self->_subqueryDescriptor selectSQLForProperties:self->_subqueryProperties];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_9();
  v7 = [v4 stringWithFormat:@"<%@ %@ (%@)>"];

  return v7;
}

- (id)SQLForEntityClass:(Class)class
{
  v5 = MEMORY[0x277CCACA8];
  [(objc_class *)class disambiguatedSQLForProperty:self->super.super._property];
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_1_6();
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)v6 _comparisonTypeString];
  [(HDSQLiteQueryDescriptor *)self->_subqueryDescriptor selectSQLForProperties:self->_subqueryProperties];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_9();
  v8 = [v5 stringWithFormat:@"(%@ %@ (%@))"];

  return v8;
}

@end