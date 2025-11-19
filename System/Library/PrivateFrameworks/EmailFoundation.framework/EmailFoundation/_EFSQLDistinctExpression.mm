@interface _EFSQLDistinctExpression
- (NSString)ef_SQLExpression;
- (_EFSQLDistinctExpression)initWithExpression:(id)a3;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation _EFSQLDistinctExpression

- (_EFSQLDistinctExpression)initWithExpression:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _EFSQLDistinctExpression;
  v6 = [(_EFSQLDistinctExpression *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expression, a3);
  }

  return v7;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(_EFSQLDistinctExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v4 = a3;
  [v4 appendString:@"DISTINCT "];
  [(EFSQLExpressable *)self->_expression ef_renderSQLExpressionInto:v4];
}

@end