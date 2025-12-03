@interface _EFSQLAliasedExpression
- (NSString)ef_SQLExpression;
- (_EFSQLAliasedExpression)initWithExpression:(id)expression alias:(id)alias;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation _EFSQLAliasedExpression

- (_EFSQLAliasedExpression)initWithExpression:(id)expression alias:(id)alias
{
  expressionCopy = expression;
  aliasCopy = alias;
  v14.receiver = self;
  v14.super_class = _EFSQLAliasedExpression;
  v9 = [(_EFSQLAliasedExpression *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expression, expression);
    v11 = [aliasCopy copy];
    alias = v10->_alias;
    v10->_alias = v11;
  }

  return v10;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(_EFSQLAliasedExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  ef_SQLIsolatedExpression = [(EFSQLValueExpressable *)self->_expression ef_SQLIsolatedExpression];
  [ef_SQLIsolatedExpression ef_renderSQLExpressionInto:intoCopy];

  [intoCopy appendFormat:@" AS %@", self->_alias];
}

@end