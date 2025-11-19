@interface EFSQLSelectStatement
- (EFSQLSelectStatement)initWithResult:(id)a3 table:(id)a4;
- (EFSQLSelectStatement)initWithResultColumn:(id)a3 table:(id)a4;
- (EFSQLSelectStatement)initWithTable:(id)a3;
- (NSString)queryString;
- (id)join:(id)a3 alias:(id)a4 on:(id)a5;
- (id)join:(id)a3 alias:(id)a4 sourceColumn:(id)a5 targetColumn:(id)a6;
- (id)join:(id)a3 on:(id)a4;
- (id)join:(id)a3 sourceColumn:(id)a4 targetColumn:(id)a5;
- (id)leftOuterJoin:(id)a3 alias:(id)a4 on:(id)a5;
- (id)leftOuterJoin:(id)a3 alias:(id)a4 sourceColumn:(id)a5 targetColumn:(id)a6;
- (id)leftOuterJoin:(id)a3 on:(id)a4;
- (id)leftOuterJoin:(id)a3 sourceColumn:(id)a4 targetColumn:(id)a5;
- (void)addResult:(id)a3 alias:(id)a4;
- (void)addResultColumn:(id)a3;
- (void)addResultColumn:(id)a3 alias:(id)a4;
- (void)addResultColumn:(id)a3 fromTable:(id)a4 alias:(id)a5;
- (void)ef_renderSQLExpressionInto:(id)a3;
- (void)groupByColumn:(id)a3;
- (void)groupByColumn:(id)a3 fromTable:(id)a4;
- (void)orderByColumn:(id)a3 fromTable:(id)a4 ascending:(BOOL)a5;
@end

@implementation EFSQLSelectStatement

- (NSString)queryString
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLSelectStatement *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (EFSQLSelectStatement)initWithTable:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EFSQLSelectStatement;
  v5 = [(EFSQLSelectStatement *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (EFSQLSelectStatement)initWithResult:(id)a3 table:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EFSQLSelectStatement *)self initWithTable:v7];
  v9 = v8;
  if (v8)
  {
    [(NSMutableArray *)v8->_results addObject:v6];
  }

  return v9;
}

- (EFSQLSelectStatement)initWithResultColumn:(id)a3 table:(id)a4
{
  v6 = a4;
  v7 = [EFSQLColumnExpression table:v6 column:a3];
  v8 = [(EFSQLSelectStatement *)self initWithResult:v7 table:v6];

  return v8;
}

- (void)addResult:(id)a3 alias:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [[_EFSQLAliasedExpression alloc] initWithExpression:v9 alias:v6];

    v9 = v7;
  }

  v8 = [(EFSQLSelectStatement *)self results];
  [v8 addObject:v9];
}

- (void)addResultColumn:(id)a3
{
  v5 = a3;
  v4 = [(EFSQLSelectStatement *)self tableName];
  [(EFSQLSelectStatement *)self addResultColumn:v5 fromTable:v4];
}

- (void)addResultColumn:(id)a3 alias:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(EFSQLSelectStatement *)self tableName];
  [(EFSQLSelectStatement *)self addResultColumn:v8 fromTable:v7 alias:v6];
}

- (void)addResultColumn:(id)a3 fromTable:(id)a4 alias:(id)a5
{
  v9 = a5;
  v8 = [EFSQLColumnExpression table:a4 column:a3];
  [(EFSQLSelectStatement *)self addResult:v8 alias:v9];
}

- (id)join:(id)a3 on:(id)a4
{
  v4 = [(EFSQLSelectStatement *)self join:a3 alias:0 on:a4];

  return v4;
}

- (id)leftOuterJoin:(id)a3 on:(id)a4
{
  v4 = [(EFSQLSelectStatement *)self leftOuterJoin:a3 alias:0 on:a4];

  return v4;
}

- (id)join:(id)a3 alias:(id)a4 on:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(EFSQLSelectStatement *)self tableName];

  if (!v12)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EFSQLSelectStatement.m" lineNumber:115 description:@"Can't JOIN on a SELECT without a base table"];
  }

  v13 = [[_EFSQLJoinExpression alloc] initWithSelect:self tableName:v9 tableAlias:v10 joinConstraint:v11 isLeftOuter:0];
  v14 = [(EFSQLSelectStatement *)self joinExpressions];
  [v14 addObject:v13];

  return v13;
}

- (id)leftOuterJoin:(id)a3 alias:(id)a4 on:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(EFSQLSelectStatement *)self tableName];

  if (!v12)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EFSQLSelectStatement.m" lineNumber:122 description:@"Can't JOIN on a SELECT without a base table"];
  }

  v13 = [[_EFSQLJoinExpression alloc] initWithSelect:self tableName:v9 tableAlias:v10 joinConstraint:v11 isLeftOuter:1];
  v14 = [(EFSQLSelectStatement *)self joinExpressions];
  [v14 addObject:v13];

  return v13;
}

- (id)join:(id)a3 sourceColumn:(id)a4 targetColumn:(id)a5
{
  v5 = [(EFSQLSelectStatement *)self join:a3 alias:0 sourceColumn:a4 targetColumn:a5];

  return v5;
}

- (id)leftOuterJoin:(id)a3 sourceColumn:(id)a4 targetColumn:(id)a5
{
  v5 = [(EFSQLSelectStatement *)self leftOuterJoin:a3 alias:0 sourceColumn:a4 targetColumn:a5];

  return v5;
}

- (id)join:(id)a3 alias:(id)a4 sourceColumn:(id)a5 targetColumn:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(EFSQLSelectStatement *)self tableName];
  v15 = [EFSQLColumnExpression table:v14 column:v12];

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v10;
  }

  v17 = [EFSQLColumnExpression table:v16 column:v13];
  v18 = [v15 equalTo:v17];
  v19 = [(EFSQLSelectStatement *)self join:v10 alias:v11 on:v18];

  return v19;
}

- (id)leftOuterJoin:(id)a3 alias:(id)a4 sourceColumn:(id)a5 targetColumn:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(EFSQLSelectStatement *)self tableName];
  v15 = [EFSQLColumnExpression table:v14 column:v12];

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v10;
  }

  v17 = [EFSQLColumnExpression table:v16 column:v13];
  v18 = [v15 equalTo:v17];
  v19 = [(EFSQLSelectStatement *)self leftOuterJoin:v10 alias:v11 on:v18];

  return v19;
}

- (void)groupByColumn:(id)a3
{
  v5 = a3;
  v4 = [(EFSQLSelectStatement *)self tableName];
  [(EFSQLSelectStatement *)self groupByColumn:v5 fromTable:v4];
}

- (void)groupByColumn:(id)a3 fromTable:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [EFSQLColumnExpression table:v7 column:v6];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(EFSQLSelectStatement *)self setGroupExpressions:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)orderByColumn:(id)a3 fromTable:(id)a4 ascending:(BOOL)a5
{
  v6 = [EFSQLColumnExpression table:a4 column:a3];
  [EFSQLSelectStatement orderBy:"orderBy:ascending:" ascending:?];
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v4 = a3;
  [v4 appendString:@"SELECT "];
  if ([(NSMutableArray *)self->_results count])
  {
    if (self->_distinct)
    {
      [v4 appendString:@"DISTINCT "];
    }

    [(NSMutableArray *)self->_results ef_renderSQLExpressionInto:v4];
  }

  else
  {
    [v4 appendString:@"NULL"];
  }

  if (self->_tableName)
  {
    [v4 appendFormat:@" FROM %@", self->_tableName];
  }

  joinExpressions = self->_joinExpressions;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__EFSQLSelectStatement_ef_renderSQLExpressionInto___block_invoke;
  v10 = &unk_1E8249FF8;
  v6 = v4;
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