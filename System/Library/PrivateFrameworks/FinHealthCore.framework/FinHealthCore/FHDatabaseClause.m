@interface FHDatabaseClause
- (FHDatabaseClause)initWithQuoteWrapOption:(id)a3 fieldName:(id)a4 expression:(id)a5 quoteWrapExpression:(BOOL)a6;
- (id)description;
- (id)shortDescription;
@end

@implementation FHDatabaseClause

- (FHDatabaseClause)initWithQuoteWrapOption:(id)a3 fieldName:(id)a4 expression:(id)a5 quoteWrapExpression:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25.receiver = self;
  v25.super_class = FHDatabaseClause;
  v13 = [(FHDatabaseClause *)&v25 init];
  if (v13)
  {
    v14 = [v10 copy];
    comparisonOperator = v13->_comparisonOperator;
    v13->_comparisonOperator = v14;

    v16 = [v11 copy];
    v17 = [v16 lowercaseString];
    fieldName = v13->_fieldName;
    v13->_fieldName = v17;

    if (a6)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v12 copy];
      v21 = [v19 stringWithFormat:@"'%@'", v20];
      expression = v13->_expression;
      v13->_expression = v21;
    }

    else
    {
      v23 = [v12 copy];
      v20 = v13->_expression;
      v13->_expression = v23;
    }
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"fieldName: '%@'; ", self->_fieldName];
  [v3 appendFormat:@"comparisonOperator: '%@'; ", self->_comparisonOperator];
  [v3 appendFormat:@"expression: '%@'; ", self->_expression];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)shortDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  comparisonOperator = self->_comparisonOperator;
  [v3 appendFormat:@"%@ %@ %@", self->_fieldName, comparisonOperator, self->_expression];
  v5 = [v3 copy];

  return v5;
}

@end