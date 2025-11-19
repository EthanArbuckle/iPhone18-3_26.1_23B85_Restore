@interface EFSQLNotExpression
- (EFSQLNotExpression)initWithExpression:(id)a3;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation EFSQLNotExpression

- (EFSQLNotExpression)initWithExpression:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EFSQLNotExpression;
  v6 = [(EFSQLNotExpression *)&v9 init];
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
  [(EFSQLNotExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v4 = a3;
  objc_msgSend(v4, "appendString:", @"NOT (");
  [(EFSQLValueExpressable *)self->_expression ef_renderSQLExpressionInto:v4];
  [v4 appendString:@""]);
}

@end