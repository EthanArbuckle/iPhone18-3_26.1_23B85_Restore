@interface FHDatabaseClauseBuilder
- (FHDatabaseClauseBuilder)init;
- (void)addBetweenClauseWithFieldName:(id)name lowerBound:(unint64_t)bound upperBound:(unint64_t)upperBound;
- (void)addDateClause:(id)clause fieldName:(id)name expression:(id)expression;
- (void)addDecimalNumberClause:(id)clause fieldName:(id)name expression:(id)expression;
- (void)addDoubleClause:(id)clause fieldName:(id)name expression:(double)expression;
- (void)addInClause:(id)clause fieldName:(id)name expressions:(id)expressions;
- (void)addIntegerClause:(id)clause fieldName:(id)name expression:(int64_t)expression;
- (void)addIsNull:(id)null;
- (void)addNumberClause:(id)clause fieldName:(id)name expression:(id)expression;
- (void)addStringClause:(id)clause fieldName:(id)name expression:(id)expression;
@end

@implementation FHDatabaseClauseBuilder

- (FHDatabaseClauseBuilder)init
{
  v6.receiver = self;
  v6.super_class = FHDatabaseClauseBuilder;
  v2 = [(FHDatabaseClauseBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    clauseStack = v2->_clauseStack;
    v2->_clauseStack = v3;
  }

  return v2;
}

- (void)addStringClause:(id)clause fieldName:(id)name expression:(id)expression
{
  expressionCopy = expression;
  nameCopy = name;
  clauseCopy = clause;
  v11 = [[FHDatabaseClause alloc] initWithQuoteWrapOption:clauseCopy fieldName:nameCopy expression:expressionCopy quoteWrapExpression:1];

  [(NSMutableArray *)self->_clauseStack addObject:v11];
}

- (void)addDoubleClause:(id)clause fieldName:(id)name expression:(double)expression
{
  nameCopy = name;
  clauseCopy = clause;
  v10 = [FHDatabaseClause alloc];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&expression];
  v12 = [(FHDatabaseClause *)v10 initWithQuoteWrapOption:clauseCopy fieldName:nameCopy expression:v11 quoteWrapExpression:0];

  [(NSMutableArray *)self->_clauseStack addObject:v12];
}

- (void)addIntegerClause:(id)clause fieldName:(id)name expression:(int64_t)expression
{
  nameCopy = name;
  clauseCopy = clause;
  v10 = [FHDatabaseClause alloc];
  expression = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", expression];
  v12 = [(FHDatabaseClause *)v10 initWithQuoteWrapOption:clauseCopy fieldName:nameCopy expression:expression quoteWrapExpression:0];

  [(NSMutableArray *)self->_clauseStack addObject:v12];
}

- (void)addDecimalNumberClause:(id)clause fieldName:(id)name expression:(id)expression
{
  expressionCopy = expression;
  nameCopy = name;
  clauseCopy = clause;
  v11 = [FHDatabaseClause alloc];
  stringValue = [expressionCopy stringValue];

  v13 = [(FHDatabaseClause *)v11 initWithQuoteWrapOption:clauseCopy fieldName:nameCopy expression:stringValue quoteWrapExpression:0];
  [(NSMutableArray *)self->_clauseStack addObject:v13];
}

- (void)addNumberClause:(id)clause fieldName:(id)name expression:(id)expression
{
  expressionCopy = expression;
  nameCopy = name;
  clauseCopy = clause;
  v11 = [FHDatabaseClause alloc];
  stringValue = [expressionCopy stringValue];

  v13 = [(FHDatabaseClause *)v11 initWithQuoteWrapOption:clauseCopy fieldName:nameCopy expression:stringValue quoteWrapExpression:0];
  [(NSMutableArray *)self->_clauseStack addObject:v13];
}

- (void)addDateClause:(id)clause fieldName:(id)name expression:(id)expression
{
  nameCopy = name;
  clauseCopy = clause;
  [expression timeIntervalSinceReferenceDate];
  [(FHDatabaseClauseBuilder *)self addDoubleClause:clauseCopy fieldName:nameCopy expression:?];
}

- (void)addInClause:(id)clause fieldName:(id)name expressions:(id)expressions
{
  clauseCopy = clause;
  nameCopy = name;
  expressionsCopy = expressions;
  if (([clauseCopy isEqualToString:@"IN"] & 1) != 0 || objc_msgSend(clauseCopy, "isEqualToString:", @"NOT IN"))
  {
    v10 = [FHDatabaseClause alloc];
    v11 = MEMORY[0x277CCACA8];
    v12 = [expressionsCopy componentsJoinedByString:{@", "}];
    v13 = [v11 stringWithFormat:@"(%@)", v12];
    v14 = [(FHDatabaseClause *)v10 initWithQuoteWrapOption:clauseCopy fieldName:nameCopy expression:v13 quoteWrapExpression:0];

    [(NSMutableArray *)self->_clauseStack addObject:v14];
  }
}

- (void)addBetweenClauseWithFieldName:(id)name lowerBound:(unint64_t)bound upperBound:(unint64_t)upperBound
{
  nameCopy = name;
  v9 = [FHDatabaseClause alloc];
  upperBound = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu AND %lu", bound, upperBound];
  v11 = [(FHDatabaseClause *)v9 initWithQuoteWrapOption:@"BETWEEN" fieldName:nameCopy expression:upperBound quoteWrapExpression:0];

  [(NSMutableArray *)self->_clauseStack addObject:v11];
}

- (void)addIsNull:(id)null
{
  nullCopy = null;
  v5 = [[FHDatabaseClause alloc] initWithQuoteWrapOption:@"IS" fieldName:nullCopy expression:@"NULL" quoteWrapExpression:0];

  [(NSMutableArray *)self->_clauseStack addObject:v5];
}

@end