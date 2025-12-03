@interface EFSQLOrderExpression
- (EFSQLOrderExpression)initWithExpression:(id)expression ascending:(BOOL)ascending;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation EFSQLOrderExpression

- (EFSQLOrderExpression)initWithExpression:(id)expression ascending:(BOOL)ascending
{
  expressionCopy = expression;
  v11.receiver = self;
  v11.super_class = EFSQLOrderExpression;
  v8 = [(EFSQLOrderExpression *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_expression, expression);
    v9->_isAscending = ascending;
  }

  return v9;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLOrderExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  [(EFSQLExpressable *)self->_expression ef_renderSQLExpressionInto:?];
  if (self->_isAscending)
  {
    v4 = @" ASC";
  }

  else
  {
    v4 = @" DESC";
  }

  [intoCopy appendString:v4];
}

@end