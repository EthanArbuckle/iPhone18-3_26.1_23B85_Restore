@interface EFSQLColumnValueSource
- (EFSQLColumnValueSource)initWithColumn:(id)column sourceTableAlias:(id)alias columnAlias:(id)columnAlias;
- (id)comparisonExpressionForValue:(id)value predicateOperator:(unint64_t)operator;
@end

@implementation EFSQLColumnValueSource

- (EFSQLColumnValueSource)initWithColumn:(id)column sourceTableAlias:(id)alias columnAlias:(id)columnAlias
{
  columnCopy = column;
  aliasCopy = alias;
  columnAliasCopy = columnAlias;
  if (aliasCopy)
  {
    name = aliasCopy;
  }

  else
  {
    table = [columnCopy table];
    name = [table name];
  }

  table2 = [columnCopy table];
  name2 = [table2 name];
  v21.receiver = self;
  v21.super_class = EFSQLColumnValueSource;
  v15 = [(EFSQLValueSource *)&v21 initWithTableName:name2 selectResultAlias:columnAliasCopy];

  if (v15)
  {
    v16 = [EFSQLColumnExpression alloc];
    name3 = [columnCopy name];
    v18 = [(EFSQLColumnExpression *)v16 initWithName:name3 table:name];
    columnExpression = v15->_columnExpression;
    v15->_columnExpression = v18;

    objc_storeStrong(&v15->_columnAlias, columnAlias);
  }

  return v15;
}

- (id)comparisonExpressionForValue:(id)value predicateOperator:(unint64_t)operator
{
  v4 = [(EFSQLColumnExpression *)self->_columnExpression expressionForPredicateOperatorType:operator constantValue:value];

  return v4;
}

@end