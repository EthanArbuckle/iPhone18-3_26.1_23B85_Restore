@interface EFSQLBinaryExpression
- (EFSQLBinaryExpression)initWithLeft:(id)left operator:(unint64_t)operator right:(id)right;
- (NSString)ef_SQLExpression;
- (__CFString)_binaryStringForOperator:(__CFString *)result;
- (void)ef_renderSQLExpressionInto:(id)into;
- (void)setColumnExpression:(id)expression;
@end

@implementation EFSQLBinaryExpression

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLBinaryExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (EFSQLBinaryExpression)initWithLeft:(id)left operator:(unint64_t)operator right:(id)right
{
  leftCopy = left;
  rightCopy = right;
  v14.receiver = self;
  v14.super_class = EFSQLBinaryExpression;
  v11 = [(EFSQLBinaryExpression *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_left, left);
    objc_storeStrong(&v12->_right, right);
    v12->_binaryOperator = operator;
  }

  return v12;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  [(EFSQLExpressable *)self->_left ef_renderSQLExpressionInto:?];
  v4 = [(EFSQLBinaryExpression *)self _binaryStringForOperator:?];
  [intoCopy appendString:v4];

  [(EFSQLExpressable *)self->_right ef_renderSQLExpressionInto:intoCopy];
}

- (void)setColumnExpression:(id)expression
{
  expressionCopy = expression;
  left = [(EFSQLBinaryExpression *)self left];
  [left setColumnExpression:expressionCopy];
}

- (__CFString)_binaryStringForOperator:(__CFString *)result
{
  if (result)
  {
    if ((a2 - 1) > 0xF)
    {
      return @" = ";
    }

    else
    {
      return off_1E8249AF8[a2 - 1];
    }
  }

  return result;
}

@end