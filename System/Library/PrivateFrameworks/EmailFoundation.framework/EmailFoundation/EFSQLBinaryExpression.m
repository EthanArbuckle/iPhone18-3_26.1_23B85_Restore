@interface EFSQLBinaryExpression
- (EFSQLBinaryExpression)initWithLeft:(id)a3 operator:(unint64_t)a4 right:(id)a5;
- (NSString)ef_SQLExpression;
- (__CFString)_binaryStringForOperator:(__CFString *)result;
- (void)ef_renderSQLExpressionInto:(id)a3;
- (void)setColumnExpression:(id)a3;
@end

@implementation EFSQLBinaryExpression

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLBinaryExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (EFSQLBinaryExpression)initWithLeft:(id)a3 operator:(unint64_t)a4 right:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EFSQLBinaryExpression;
  v11 = [(EFSQLBinaryExpression *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_left, a3);
    objc_storeStrong(&v12->_right, a5);
    v12->_binaryOperator = a4;
  }

  return v12;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v5 = a3;
  [(EFSQLExpressable *)self->_left ef_renderSQLExpressionInto:?];
  v4 = [(EFSQLBinaryExpression *)self _binaryStringForOperator:?];
  [v5 appendString:v4];

  [(EFSQLExpressable *)self->_right ef_renderSQLExpressionInto:v5];
}

- (void)setColumnExpression:(id)a3
{
  v5 = a3;
  v4 = [(EFSQLBinaryExpression *)self left];
  [v4 setColumnExpression:v5];
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