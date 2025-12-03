@interface EFSQLBitExpression
+ (id)and:(id)and with:(id)with;
+ (id)leftShift:(id)shift by:(id)by;
+ (id)or:(id)or with:(id)with;
+ (id)rightShift:(id)shift by:(id)by;
- (EFSQLBitExpression)initWithLeft:(id)left bitwiseOperator:(unint64_t)operator right:(id)right;
- (NSString)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:(id)into;
- (void)setColumnExpression:(id)expression;
@end

@implementation EFSQLBitExpression

+ (id)leftShift:(id)shift by:(id)by
{
  shiftCopy = shift;
  byCopy = by;
  v8 = [[self alloc] initWithLeft:shiftCopy bitwiseOperator:2 right:byCopy];

  return v8;
}

+ (id)rightShift:(id)shift by:(id)by
{
  shiftCopy = shift;
  byCopy = by;
  v8 = [[self alloc] initWithLeft:shiftCopy bitwiseOperator:3 right:byCopy];

  return v8;
}

+ (id)and:(id)and with:(id)with
{
  andCopy = and;
  withCopy = with;
  v8 = [[self alloc] initWithLeft:andCopy bitwiseOperator:0 right:withCopy];

  return v8;
}

+ (id)or:(id)or with:(id)with
{
  orCopy = or;
  withCopy = with;
  v8 = [[self alloc] initWithLeft:orCopy bitwiseOperator:1 right:withCopy];

  return v8;
}

- (EFSQLBitExpression)initWithLeft:(id)left bitwiseOperator:(unint64_t)operator right:(id)right
{
  leftCopy = left;
  rightCopy = right;
  v14.receiver = self;
  v14.super_class = EFSQLBitExpression;
  v11 = [(EFSQLBitExpression *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_left, left);
    v12->_bitwiseOperator = operator;
    objc_storeStrong(&v12->_right, right);
  }

  return v12;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLBitExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  objc_msgSend(intoCopy, "appendString:", @"(");
  [(EFSQLExpressable *)self->_left ef_renderSQLExpressionInto:intoCopy];
  v4 = self->_bitwiseOperator - 1;
  if (v4 > 2)
  {
    v5 = @" & ";
  }

  else
  {
    v5 = off_1E8249B78[v4];
  }

  [intoCopy appendString:v5];
  [(EFSQLExpressable *)self->_right ef_renderSQLExpressionInto:intoCopy];
  [intoCopy appendString:@""]);
}

- (void)setColumnExpression:(id)expression
{
  expressionCopy = expression;
  left = [(EFSQLBitExpression *)self left];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    left2 = [(EFSQLBitExpression *)self left];
    [left2 setColumnExpression:expressionCopy];
  }

  else
  {
    [(EFSQLBitExpression *)self setLeft:expressionCopy];
  }
}

@end