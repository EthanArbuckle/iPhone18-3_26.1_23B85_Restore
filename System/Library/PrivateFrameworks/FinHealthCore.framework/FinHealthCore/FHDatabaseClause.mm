@interface FHDatabaseClause
- (FHDatabaseClause)initWithQuoteWrapOption:(id)option fieldName:(id)name expression:(id)expression quoteWrapExpression:(BOOL)wrapExpression;
- (id)description;
- (id)shortDescription;
@end

@implementation FHDatabaseClause

- (FHDatabaseClause)initWithQuoteWrapOption:(id)option fieldName:(id)name expression:(id)expression quoteWrapExpression:(BOOL)wrapExpression
{
  optionCopy = option;
  nameCopy = name;
  expressionCopy = expression;
  v25.receiver = self;
  v25.super_class = FHDatabaseClause;
  v13 = [(FHDatabaseClause *)&v25 init];
  if (v13)
  {
    v14 = [optionCopy copy];
    comparisonOperator = v13->_comparisonOperator;
    v13->_comparisonOperator = v14;

    v16 = [nameCopy copy];
    lowercaseString = [v16 lowercaseString];
    fieldName = v13->_fieldName;
    v13->_fieldName = lowercaseString;

    if (wrapExpression)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [expressionCopy copy];
      v21 = [v19 stringWithFormat:@"'%@'", v20];
      expression = v13->_expression;
      v13->_expression = v21;
    }

    else
    {
      v23 = [expressionCopy copy];
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