@interface EFSQLNotExpression
- (EFSQLNotExpression)initWithExpression:(id)expression;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation EFSQLNotExpression

- (EFSQLNotExpression)initWithExpression:(id)expression
{
  expressionCopy = expression;
  v9.receiver = self;
  v9.super_class = EFSQLNotExpression;
  v6 = [(EFSQLNotExpression *)&v9 init];
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
  [(EFSQLNotExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  objc_msgSend(intoCopy, "appendString:", @"NOT (");
  [(EFSQLValueExpressable *)self->_expression ef_renderSQLExpressionInto:intoCopy];
  [intoCopy appendString:@""]);
}

@end