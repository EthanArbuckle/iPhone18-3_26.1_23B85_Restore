@interface _EFSQLAliasedExpression
- (NSString)ef_SQLExpression;
- (_EFSQLAliasedExpression)initWithExpression:(id)a3 alias:(id)a4;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation _EFSQLAliasedExpression

- (_EFSQLAliasedExpression)initWithExpression:(id)a3 alias:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _EFSQLAliasedExpression;
  v9 = [(_EFSQLAliasedExpression *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expression, a3);
    v11 = [v8 copy];
    alias = v10->_alias;
    v10->_alias = v11;
  }

  return v10;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(_EFSQLAliasedExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v5 = a3;
  v4 = [(EFSQLValueExpressable *)self->_expression ef_SQLIsolatedExpression];
  [v4 ef_renderSQLExpressionInto:v5];

  [v5 appendFormat:@" AS %@", self->_alias];
}

@end