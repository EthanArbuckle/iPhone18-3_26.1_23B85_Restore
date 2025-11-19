@interface FHDatabaseClauseBuilder
- (FHDatabaseClauseBuilder)init;
- (void)addBetweenClauseWithFieldName:(id)a3 lowerBound:(unint64_t)a4 upperBound:(unint64_t)a5;
- (void)addDateClause:(id)a3 fieldName:(id)a4 expression:(id)a5;
- (void)addDecimalNumberClause:(id)a3 fieldName:(id)a4 expression:(id)a5;
- (void)addDoubleClause:(id)a3 fieldName:(id)a4 expression:(double)a5;
- (void)addInClause:(id)a3 fieldName:(id)a4 expressions:(id)a5;
- (void)addIntegerClause:(id)a3 fieldName:(id)a4 expression:(int64_t)a5;
- (void)addIsNull:(id)a3;
- (void)addNumberClause:(id)a3 fieldName:(id)a4 expression:(id)a5;
- (void)addStringClause:(id)a3 fieldName:(id)a4 expression:(id)a5;
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

- (void)addStringClause:(id)a3 fieldName:(id)a4 expression:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[FHDatabaseClause alloc] initWithQuoteWrapOption:v10 fieldName:v9 expression:v8 quoteWrapExpression:1];

  [(NSMutableArray *)self->_clauseStack addObject:v11];
}

- (void)addDoubleClause:(id)a3 fieldName:(id)a4 expression:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [FHDatabaseClause alloc];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&a5];
  v12 = [(FHDatabaseClause *)v10 initWithQuoteWrapOption:v9 fieldName:v8 expression:v11 quoteWrapExpression:0];

  [(NSMutableArray *)self->_clauseStack addObject:v12];
}

- (void)addIntegerClause:(id)a3 fieldName:(id)a4 expression:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [FHDatabaseClause alloc];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a5];
  v12 = [(FHDatabaseClause *)v10 initWithQuoteWrapOption:v9 fieldName:v8 expression:v11 quoteWrapExpression:0];

  [(NSMutableArray *)self->_clauseStack addObject:v12];
}

- (void)addDecimalNumberClause:(id)a3 fieldName:(id)a4 expression:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FHDatabaseClause alloc];
  v12 = [v8 stringValue];

  v13 = [(FHDatabaseClause *)v11 initWithQuoteWrapOption:v10 fieldName:v9 expression:v12 quoteWrapExpression:0];
  [(NSMutableArray *)self->_clauseStack addObject:v13];
}

- (void)addNumberClause:(id)a3 fieldName:(id)a4 expression:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FHDatabaseClause alloc];
  v12 = [v8 stringValue];

  v13 = [(FHDatabaseClause *)v11 initWithQuoteWrapOption:v10 fieldName:v9 expression:v12 quoteWrapExpression:0];
  [(NSMutableArray *)self->_clauseStack addObject:v13];
}

- (void)addDateClause:(id)a3 fieldName:(id)a4 expression:(id)a5
{
  v8 = a4;
  v9 = a3;
  [a5 timeIntervalSinceReferenceDate];
  [(FHDatabaseClauseBuilder *)self addDoubleClause:v9 fieldName:v8 expression:?];
}

- (void)addInClause:(id)a3 fieldName:(id)a4 expressions:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (([v15 isEqualToString:@"IN"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"NOT IN"))
  {
    v10 = [FHDatabaseClause alloc];
    v11 = MEMORY[0x277CCACA8];
    v12 = [v9 componentsJoinedByString:{@", "}];
    v13 = [v11 stringWithFormat:@"(%@)", v12];
    v14 = [(FHDatabaseClause *)v10 initWithQuoteWrapOption:v15 fieldName:v8 expression:v13 quoteWrapExpression:0];

    [(NSMutableArray *)self->_clauseStack addObject:v14];
  }
}

- (void)addBetweenClauseWithFieldName:(id)a3 lowerBound:(unint64_t)a4 upperBound:(unint64_t)a5
{
  v8 = a3;
  v9 = [FHDatabaseClause alloc];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu AND %lu", a4, a5];
  v11 = [(FHDatabaseClause *)v9 initWithQuoteWrapOption:@"BETWEEN" fieldName:v8 expression:v10 quoteWrapExpression:0];

  [(NSMutableArray *)self->_clauseStack addObject:v11];
}

- (void)addIsNull:(id)a3
{
  v4 = a3;
  v5 = [[FHDatabaseClause alloc] initWithQuoteWrapOption:@"IS" fieldName:v4 expression:@"NULL" quoteWrapExpression:0];

  [(NSMutableArray *)self->_clauseStack addObject:v5];
}

@end