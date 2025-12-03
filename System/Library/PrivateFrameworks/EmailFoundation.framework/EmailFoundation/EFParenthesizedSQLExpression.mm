@interface EFParenthesizedSQLExpression
+ (id)parenthesizedValueCollectionExpressable:(id)expressable;
+ (id)parenthesizedValueExpressable:(id)expressable;
- (EFParenthesizedSQLExpression)initWithExpressable:(id)expressable;
- (id)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)into;
- (void)ef_renderSQLExpressionInto:(id)into conjoiner:(id)conjoiner;
@end

@implementation EFParenthesizedSQLExpression

+ (id)parenthesizedValueExpressable:(id)expressable
{
  expressableCopy = expressable;
  v5 = [[self alloc] initWithExpressable:expressableCopy];

  return v5;
}

+ (id)parenthesizedValueCollectionExpressable:(id)expressable
{
  expressableCopy = expressable;
  v5 = [[self alloc] initWithExpressable:expressableCopy];

  return v5;
}

- (EFParenthesizedSQLExpression)initWithExpressable:(id)expressable
{
  expressableCopy = expressable;
  v9.receiver = self;
  v9.super_class = EFParenthesizedSQLExpression;
  v6 = [(EFParenthesizedSQLExpression *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expressable, expressable);
  }

  return v7;
}

- (id)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFParenthesizedSQLExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  objc_msgSend(intoCopy, "appendString:", @"(");
  [self->_expressable ef_renderSQLExpressionInto:intoCopy];
  [intoCopy appendString:@""]);
}

- (void)ef_renderSQLExpressionInto:(id)into conjoiner:(id)conjoiner
{
  intoCopy = into;
  conjoinerCopy = conjoiner;
  objc_msgSend(intoCopy, "appendString:", @"(");
  [self->_expressable ef_renderSQLExpressionInto:intoCopy conjoiner:conjoinerCopy];
  [intoCopy appendString:@""]);
}

@end