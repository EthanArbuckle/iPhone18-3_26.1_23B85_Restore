@interface EFSQLOrExpression
+ (id)combined:(id)combined;
- (EFSQLOrExpression)initWithExpressions:(id)expressions;
- (NSString)ef_SQLExpression;
@end

@implementation EFSQLOrExpression

+ (id)combined:(id)combined
{
  combinedCopy = combined;
  if ([combinedCopy count] == 1)
  {
    firstObject = [combinedCopy firstObject];
  }

  else
  {
    firstObject = [[EFSQLOrExpression alloc] initWithExpressions:combinedCopy];
  }

  v5 = firstObject;

  return v5;
}

- (EFSQLOrExpression)initWithExpressions:(id)expressions
{
  expressionsCopy = expressions;
  v9.receiver = self;
  v9.super_class = EFSQLOrExpression;
  v6 = [(EFSQLOrExpression *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expressions, expressions);
  }

  return v7;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLOrExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

@end