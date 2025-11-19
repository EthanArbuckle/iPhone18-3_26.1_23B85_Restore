@interface EFParenthesizedSQLExpression
+ (id)parenthesizedValueCollectionExpressable:(id)a3;
+ (id)parenthesizedValueExpressable:(id)a3;
- (EFParenthesizedSQLExpression)initWithExpressable:(id)a3;
- (id)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)a3;
- (void)ef_renderSQLExpressionInto:(id)a3 conjoiner:(id)a4;
@end

@implementation EFParenthesizedSQLExpression

+ (id)parenthesizedValueExpressable:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithExpressable:v4];

  return v5;
}

+ (id)parenthesizedValueCollectionExpressable:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithExpressable:v4];

  return v5;
}

- (EFParenthesizedSQLExpression)initWithExpressable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EFParenthesizedSQLExpression;
  v6 = [(EFParenthesizedSQLExpression *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expressable, a3);
  }

  return v7;
}

- (id)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFParenthesizedSQLExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v4 = a3;
  objc_msgSend(v4, "appendString:", @"(");
  [self->_expressable ef_renderSQLExpressionInto:v4];
  [v4 appendString:@""]);
}

- (void)ef_renderSQLExpressionInto:(id)a3 conjoiner:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_msgSend(v7, "appendString:", @"(");
  [self->_expressable ef_renderSQLExpressionInto:v7 conjoiner:v6];
  [v7 appendString:@""]);
}

@end