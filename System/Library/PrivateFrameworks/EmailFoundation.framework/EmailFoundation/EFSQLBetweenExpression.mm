@interface EFSQLBetweenExpression
- (EFSQLBetweenExpression)initWithLeft:(id)a3 firstValue:(id)a4 secondValue:(id)a5 between:(BOOL)a6;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)a3;
- (void)setColumnExpression:(id)a3;
@end

@implementation EFSQLBetweenExpression

- (EFSQLBetweenExpression)initWithLeft:(id)a3 firstValue:(id)a4 secondValue:(id)a5 between:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = EFSQLBetweenExpression;
  v12 = [(EFPair *)&v15 initWithFirst:a4 second:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_left, a3);
    v13->_between = a6;
  }

  return v13;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLBetweenExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v8 = a3;
  v4 = [(EFSQLBetweenExpression *)self left];
  [v4 ef_renderSQLExpressionInto:v8];

  if (self->_between)
  {
    v5 = @" BETWEEN ";
  }

  else
  {
    v5 = @" NOT BETWEEN ";
  }

  [v8 appendString:v5];
  v6 = [(EFPair *)self first];
  [v6 ef_renderSQLExpressionInto:v8];

  [v8 appendString:@" AND "];
  v7 = [(EFPair *)self second];
  [v7 ef_renderSQLExpressionInto:v8];
}

- (void)setColumnExpression:(id)a3
{
  v5 = a3;
  v4 = [(EFSQLBetweenExpression *)self left];
  [v4 setColumnExpression:v5];
}

@end