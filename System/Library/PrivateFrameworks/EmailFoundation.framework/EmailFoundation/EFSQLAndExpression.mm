@interface EFSQLAndExpression
+ (id)combined:(id)combined;
- (EFSQLAndExpression)initWithExpressions:(id)expressions;
- (NSString)ef_SQLExpression;
@end

@implementation EFSQLAndExpression

+ (id)combined:(id)combined
{
  combinedCopy = combined;
  if ([combinedCopy count] == 1)
  {
    firstObject = [combinedCopy firstObject];
  }

  else
  {
    firstObject = [[EFSQLAndExpression alloc] initWithExpressions:combinedCopy];
  }

  v5 = firstObject;

  return v5;
}

- (EFSQLAndExpression)initWithExpressions:(id)expressions
{
  expressionsCopy = expressions;
  v9.receiver = self;
  v9.super_class = EFSQLAndExpression;
  v6 = [(EFSQLAndExpression *)&v9 init];
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
  [(EFSQLAndExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

@end