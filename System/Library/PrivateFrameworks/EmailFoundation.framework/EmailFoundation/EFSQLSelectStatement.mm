@interface EFSQLSelectStatement
- (EFSQLSelectStatement)initWithResult:(id)result table:(id)table;
- (EFSQLSelectStatement)initWithResultColumn:(id)column table:(id)table;
- (EFSQLSelectStatement)initWithTable:(id)table;
- (NSString)queryString;
- (id)join:(id)join alias:(id)alias on:(id)on;
- (id)join:(id)join alias:(id)alias sourceColumn:(id)column targetColumn:(id)targetColumn;
- (id)join:(id)join on:(id)on;
- (id)join:(id)join sourceColumn:(id)column targetColumn:(id)targetColumn;
- (id)leftOuterJoin:(id)join alias:(id)alias on:(id)on;
- (id)leftOuterJoin:(id)join alias:(id)alias sourceColumn:(id)column targetColumn:(id)targetColumn;
- (id)leftOuterJoin:(id)join on:(id)on;
- (id)leftOuterJoin:(id)join sourceColumn:(id)column targetColumn:(id)targetColumn;
- (void)addResult:(id)result alias:(id)alias;
- (void)addResultColumn:(id)column;
- (void)addResultColumn:(id)column alias:(id)alias;
- (void)addResultColumn:(id)column fromTable:(id)table alias:(id)alias;
- (void)ef_renderSQLExpressionInto:(id)into;
- (void)groupByColumn:(id)column;
- (void)groupByColumn:(id)column fromTable:(id)table;
- (void)orderByColumn:(id)column fromTable:(id)table ascending:(BOOL)ascending;
@end

@implementation EFSQLSelectStatement

- (NSString)queryString
{
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLSelectStatement *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (EFSQLSelectStatement)initWithTable:(id)table
{
  tableCopy = table;
  v15.receiver = self;
  v15.super_class = EFSQLSelectStatement;
  v5 = [(EFSQLSelectStatement *)&v15 init];
  if (v5)
  {
    v6 = [tableCopy copy];
    tableName = v5->_tableName;
    v5->_tableName = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v5->_results;
    v5->_results = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    joinExpressions = v5->_joinExpressions;
    v5->_joinExpressions = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    orderExpressions = v5->_orderExpressions;
    v5->_orderExpressions = v12;
  }

  return v5;
}

- (EFSQLSelectStatement)initWithResult:(id)result table:(id)table
{
  resultCopy = result;
  tableCopy = table;
  v8 = [(EFSQLSelectStatement *)self initWithTable:tableCopy];
  v9 = v8;
  if (v8)
  {
    [(NSMutableArray *)v8->_results addObject:resultCopy];
  }

  return v9;
}

- (EFSQLSelectStatement)initWithResultColumn:(id)column table:(id)table
{
  tableCopy = table;
  v7 = [EFSQLColumnExpression table:tableCopy column:column];
  v8 = [(EFSQLSelectStatement *)self initWithResult:v7 table:tableCopy];

  return v8;
}

- (void)addResult:(id)result alias:(id)alias
{
  resultCopy = result;
  aliasCopy = alias;
  if (aliasCopy)
  {
    v7 = [[_EFSQLAliasedExpression alloc] initWithExpression:resultCopy alias:aliasCopy];

    resultCopy = v7;
  }

  results = [(EFSQLSelectStatement *)self results];
  [results addObject:resultCopy];
}

- (void)addResultColumn:(id)column
{
  columnCopy = column;
  tableName = [(EFSQLSelectStatement *)self tableName];
  [(EFSQLSelectStatement *)self addResultColumn:columnCopy fromTable:tableName];
}

- (void)addResultColumn:(id)column alias:(id)alias
{
  columnCopy = column;
  aliasCopy = alias;
  tableName = [(EFSQLSelectStatement *)self tableName];
  [(EFSQLSelectStatement *)self addResultColumn:columnCopy fromTable:tableName alias:aliasCopy];
}

- (void)addResultColumn:(id)column fromTable:(id)table alias:(id)alias
{
  aliasCopy = alias;
  v8 = [EFSQLColumnExpression table:table column:column];
  [(EFSQLSelectStatement *)self addResult:v8 alias:aliasCopy];
}

- (id)join:(id)join on:(id)on
{
  v4 = [(EFSQLSelectStatement *)self join:join alias:0 on:on];

  return v4;
}

- (id)leftOuterJoin:(id)join on:(id)on
{
  v4 = [(EFSQLSelectStatement *)self leftOuterJoin:join alias:0 on:on];

  return v4;
}

- (id)join:(id)join alias:(id)alias on:(id)on
{
  joinCopy = join;
  aliasCopy = alias;
  onCopy = on;
  tableName = [(EFSQLSelectStatement *)self tableName];

  if (!tableName)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLSelectStatement.m" lineNumber:115 description:@"Can't JOIN on a SELECT without a base table"];
  }

  v13 = [[_EFSQLJoinExpression alloc] initWithSelect:self tableName:joinCopy tableAlias:aliasCopy joinConstraint:onCopy isLeftOuter:0];
  joinExpressions = [(EFSQLSelectStatement *)self joinExpressions];
  [joinExpressions addObject:v13];

  return v13;
}

- (id)leftOuterJoin:(id)join alias:(id)alias on:(id)on
{
  joinCopy = join;
  aliasCopy = alias;
  onCopy = on;
  tableName = [(EFSQLSelectStatement *)self tableName];

  if (!tableName)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLSelectStatement.m" lineNumber:122 description:@"Can't JOIN on a SELECT without a base table"];
  }

  v13 = [[_EFSQLJoinExpression alloc] initWithSelect:self tableName:joinCopy tableAlias:aliasCopy joinConstraint:onCopy isLeftOuter:1];
  joinExpressions = [(EFSQLSelectStatement *)self joinExpressions];
  [joinExpressions addObject:v13];

  return v13;
}

- (id)join:(id)join sourceColumn:(id)column targetColumn:(id)targetColumn
{
  v5 = [(EFSQLSelectStatement *)self join:join alias:0 sourceColumn:column targetColumn:targetColumn];

  return v5;
}

- (id)leftOuterJoin:(id)join sourceColumn:(id)column targetColumn:(id)targetColumn
{
  v5 = [(EFSQLSelectStatement *)self leftOuterJoin:join alias:0 sourceColumn:column targetColumn:targetColumn];

  return v5;
}

- (id)join:(id)join alias:(id)alias sourceColumn:(id)column targetColumn:(id)targetColumn
{
  joinCopy = join;
  aliasCopy = alias;
  columnCopy = column;
  targetColumnCopy = targetColumn;
  tableName = [(EFSQLSelectStatement *)self tableName];
  v15 = [EFSQLColumnExpression table:tableName column:columnCopy];

  if (aliasCopy)
  {
    v16 = aliasCopy;
  }

  else
  {
    v16 = joinCopy;
  }

  v17 = [EFSQLColumnExpression table:v16 column:targetColumnCopy];
  v18 = [v15 equalTo:v17];
  v19 = [(EFSQLSelectStatement *)self join:joinCopy alias:aliasCopy on:v18];

  return v19;
}

- (id)leftOuterJoin:(id)join alias:(id)alias sourceColumn:(id)column targetColumn:(id)targetColumn
{
  joinCopy = join;
  aliasCopy = alias;
  columnCopy = column;
  targetColumnCopy = targetColumn;
  tableName = [(EFSQLSelectStatement *)self tableName];
  v15 = [EFSQLColumnExpression table:tableName column:columnCopy];

  if (aliasCopy)
  {
    v16 = aliasCopy;
  }

  else
  {
    v16 = joinCopy;
  }

  v17 = [EFSQLColumnExpression table:v16 column:targetColumnCopy];
  v18 = [v15 equalTo:v17];
  v19 = [(EFSQLSelectStatement *)self leftOuterJoin:joinCopy alias:aliasCopy on:v18];

  return v19;
}

- (void)groupByColumn:(id)column
{
  columnCopy = column;
  tableName = [(EFSQLSelectStatement *)self tableName];
  [(EFSQLSelectStatement *)self groupByColumn:columnCopy fromTable:tableName];
}

- (void)groupByColumn:(id)column fromTable:(id)table
{
  v11[1] = *MEMORY[0x1E69E9840];
  columnCopy = column;
  tableCopy = table;
  v8 = [EFSQLColumnExpression table:tableCopy column:columnCopy];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(EFSQLSelectStatement *)self setGroupExpressions:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)orderByColumn:(id)column fromTable:(id)table ascending:(BOOL)ascending
{
  v6 = [EFSQLColumnExpression table:table column:column];
  [EFSQLSelectStatement orderBy:"orderBy:ascending:" ascending:?];
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  [intoCopy appendString:@"SELECT "];
  if ([(NSMutableArray *)self->_results count])
  {
    if (self->_distinct)
    {
      [intoCopy appendString:@"DISTINCT "];
    }

    [(NSMutableArray *)self->_results ef_renderSQLExpressionInto:intoCopy];
  }

  else
  {
    [intoCopy appendString:@"NULL"];
  }

  if (self->_tableName)
  {
    [intoCopy appendFormat:@" FROM %@", self->_tableName];
  }

  joinExpressions = self->_joinExpressions;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__EFSQLSelectStatement_ef_renderSQLExpressionInto___block_invoke;
  v10 = &unk_1E8249FF8;
  v6 = intoCopy;
  v11 = v6;
  [(NSMutableArray *)joinExpressions enumerateObjectsUsingBlock:&v7];
  if (self->_where)
  {
    [v6 appendString:@" WHERE "];
    [(EFSQLValueExpressable *)self->_where ef_renderSQLExpressionInto:v6];
  }

  if ([(NSArray *)self->_groupExpressions count])
  {
    [v6 appendString:@" GROUP BY "];
    [(NSArray *)self->_groupExpressions ef_renderSQLExpressionInto:v6];
  }

  if ([(NSMutableArray *)self->_orderExpressions count])
  {
    [v6 appendString:@" ORDER BY "];
    [(NSMutableArray *)self->_orderExpressions ef_renderSQLExpressionInto:v6];
  }

  if (self->_limit)
  {
    [v6 appendFormat:@" LIMIT %llu", self->_limit, v7, v8, v9, v10];
  }
}

@end