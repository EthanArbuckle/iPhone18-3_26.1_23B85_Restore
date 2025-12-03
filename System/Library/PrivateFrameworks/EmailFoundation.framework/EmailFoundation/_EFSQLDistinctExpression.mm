@interface _EFSQLDistinctExpression
- (NSString)ef_SQLExpression;
- (_EFSQLDistinctExpression)initWithExpression:(id)expression;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation _EFSQLDistinctExpression

- (_EFSQLDistinctExpression)initWithExpression:(id)expression
{
  expressionCopy = expression;
  v9.receiver = self;
  v9.super_class = _EFSQLDistinctExpression;
  v6 = [(_EFSQLDistinctExpression *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expression, expression);
  }

  return v7;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(_EFSQLDistinctExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  [intoCopy appendString:@"DISTINCT "];
  [(EFSQLExpressable *)self->_expression ef_renderSQLExpressionInto:intoCopy];
}

@end