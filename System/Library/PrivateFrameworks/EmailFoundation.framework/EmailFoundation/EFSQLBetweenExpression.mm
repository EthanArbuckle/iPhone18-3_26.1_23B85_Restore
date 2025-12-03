@interface EFSQLBetweenExpression
- (EFSQLBetweenExpression)initWithLeft:(id)left firstValue:(id)value secondValue:(id)secondValue between:(BOOL)between;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)into;
- (void)setColumnExpression:(id)expression;
@end

@implementation EFSQLBetweenExpression

- (EFSQLBetweenExpression)initWithLeft:(id)left firstValue:(id)value secondValue:(id)secondValue between:(BOOL)between
{
  leftCopy = left;
  v15.receiver = self;
  v15.super_class = EFSQLBetweenExpression;
  v12 = [(EFPair *)&v15 initWithFirst:value second:secondValue];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_left, left);
    v13->_between = between;
  }

  return v13;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLBetweenExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  left = [(EFSQLBetweenExpression *)self left];
  [left ef_renderSQLExpressionInto:intoCopy];

  if (self->_between)
  {
    v5 = @" BETWEEN ";
  }

  else
  {
    v5 = @" NOT BETWEEN ";
  }

  [intoCopy appendString:v5];
  first = [(EFPair *)self first];
  [first ef_renderSQLExpressionInto:intoCopy];

  [intoCopy appendString:@" AND "];
  second = [(EFPair *)self second];
  [second ef_renderSQLExpressionInto:intoCopy];
}

- (void)setColumnExpression:(id)expression
{
  expressionCopy = expression;
  left = [(EFSQLBetweenExpression *)self left];
  [left setColumnExpression:expressionCopy];
}

@end