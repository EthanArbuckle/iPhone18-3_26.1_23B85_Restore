@interface EFSQLColumnValueSource
- (EFSQLColumnValueSource)initWithColumn:(id)a3 sourceTableAlias:(id)a4 columnAlias:(id)a5;
- (id)comparisonExpressionForValue:(id)a3 predicateOperator:(unint64_t)a4;
@end

@implementation EFSQLColumnValueSource

- (EFSQLColumnValueSource)initWithColumn:(id)a3 sourceTableAlias:(id)a4 columnAlias:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v8 table];
    v11 = [v12 name];
  }

  v13 = [v8 table];
  v14 = [v13 name];
  v21.receiver = self;
  v21.super_class = EFSQLColumnValueSource;
  v15 = [(EFSQLValueSource *)&v21 initWithTableName:v14 selectResultAlias:v10];

  if (v15)
  {
    v16 = [EFSQLColumnExpression alloc];
    v17 = [v8 name];
    v18 = [(EFSQLColumnExpression *)v16 initWithName:v17 table:v11];
    columnExpression = v15->_columnExpression;
    v15->_columnExpression = v18;

    objc_storeStrong(&v15->_columnAlias, a5);
  }

  return v15;
}

- (id)comparisonExpressionForValue:(id)a3 predicateOperator:(unint64_t)a4
{
  v4 = [(EFSQLColumnExpression *)self->_columnExpression expressionForPredicateOperatorType:a4 constantValue:a3];

  return v4;
}

@end