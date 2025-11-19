@interface EFSQLAndExpression
+ (id)combined:(id)a3;
- (EFSQLAndExpression)initWithExpressions:(id)a3;
- (NSString)ef_SQLExpression;
@end

@implementation EFSQLAndExpression

+ (id)combined:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = [[EFSQLAndExpression alloc] initWithExpressions:v3];
  }

  v5 = v4;

  return v5;
}

- (EFSQLAndExpression)initWithExpressions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EFSQLAndExpression;
  v6 = [(EFSQLAndExpression *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expressions, a3);
  }

  return v7;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLAndExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

@end