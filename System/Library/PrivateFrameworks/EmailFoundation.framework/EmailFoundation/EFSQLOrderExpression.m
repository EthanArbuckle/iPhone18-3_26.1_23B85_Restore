@interface EFSQLOrderExpression
- (EFSQLOrderExpression)initWithExpression:(id)a3 ascending:(BOOL)a4;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation EFSQLOrderExpression

- (EFSQLOrderExpression)initWithExpression:(id)a3 ascending:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = EFSQLOrderExpression;
  v8 = [(EFSQLOrderExpression *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_expression, a3);
    v9->_isAscending = a4;
  }

  return v9;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLOrderExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v5 = a3;
  [(EFSQLExpressable *)self->_expression ef_renderSQLExpressionInto:?];
  if (self->_isAscending)
  {
    v4 = @" ASC";
  }

  else
  {
    v4 = @" DESC";
  }

  [v5 appendString:v4];
}

@end