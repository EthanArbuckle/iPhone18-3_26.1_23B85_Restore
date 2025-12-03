@interface _HDSQLiteComparisonPredicateCoalesce
- (BOOL)isCompatibleWithPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (_HDSQLiteComparisonPredicateCoalesce)initWithProperties:(id)properties value:(id)value comparisonType:(int64_t)type;
- (id)SQLForEntityClass:(Class)class;
- (id)SQLJoinClausesForEntityClass:(Class)class;
- (id)description;
- (unint64_t)hash;
@end

@implementation _HDSQLiteComparisonPredicateCoalesce

- (_HDSQLiteComparisonPredicateCoalesce)initWithProperties:(id)properties value:(id)value comparisonType:(int64_t)type
{
  propertiesCopy = properties;
  v13.receiver = self;
  v13.super_class = _HDSQLiteComparisonPredicateCoalesce;
  v9 = [(HDSQLiteComparisonPredicate *)&v13 initWithProperty:0 value:value comparisonType:type];
  if (v9)
  {
    v10 = [propertiesCopy copy];
    properties = v9->_properties;
    v9->_properties = v10;
  }

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _HDSQLiteComparisonPredicateCoalesce;
  v3 = [(HDSQLiteComparisonPredicate *)&v7 hash];
  properties = [(_HDSQLiteComparisonPredicateCoalesce *)self properties];
  v5 = [properties hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _HDSQLiteComparisonPredicateCoalesce;
  if (![(HDSQLiteComparisonPredicate *)&v9 isEqual:equalCopy])
  {
    goto LABEL_5;
  }

  properties = self->_properties;
  v6 = equalCopy[5];
  if (properties == v6)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [(NSArray *)properties isEqual:?];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (id)SQLJoinClausesForEntityClass:(Class)class
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_properties count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_properties;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(objc_class *)class joinClausesForProperty:*(*(&v14 + 1) + 8 * i), v14];
          [v5 unionSet:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isCompatibleWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = _HDSQLiteComparisonPredicateCoalesce;
  if (![(HDSQLiteComparisonPredicate *)&v9 isCompatibleWithPredicate:predicateCopy])
  {
    goto LABEL_5;
  }

  properties = self->_properties;
  v6 = predicateCopy[5];
  if (properties == v6)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [(NSArray *)properties isEqual:?];
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
  properties = self->_properties;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58___HDSQLiteComparisonPredicateCoalesce_SQLForEntityClass___block_invoke;
  v11[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8lu32l8;
  v11[4] = class;
  v5 = [(NSArray *)properties hk_map:v11];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = MEMORY[0x277CCACA8];
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"(COALESCE(%@) %@ ?)", v6, _comparisonTypeString];

  return v9;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  [(NSArray *)self->_properties componentsJoinedByString:@", "];
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_1_6();
  _comparisonTypeString = [(HDSQLiteComparisonPredicate *)v5 _comparisonTypeString];
  [(HDSQLiteComparisonPredicate *)self value];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_9();
  v7 = [v4 stringWithFormat:@"<(%@) %@ %@>"];

  return v7;
}

@end