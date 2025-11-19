@interface _EFSQLJoinExpression
- (EFSQLSelectStatement)select;
- (NSString)ef_SQLExpression;
- (_EFSQLJoinExpression)initWithSelect:(id)a3 tableName:(id)a4 tableAlias:(id)a5 joinConstraint:(id)a6 isLeftOuter:(BOOL)a7;
- (id)join:(id)a3 alias:(id)a4 on:(id)a5;
- (id)join:(id)a3 alias:(id)a4 sourceColumn:(id)a5 targetColumn:(id)a6;
- (id)join:(id)a3 on:(id)a4;
- (id)join:(id)a3 sourceColumn:(id)a4 targetColumn:(id)a5;
- (id)leftOuterJoin:(id)a3 alias:(id)a4 on:(id)a5;
- (id)leftOuterJoin:(id)a3 alias:(id)a4 sourceColumn:(id)a5 targetColumn:(id)a6;
- (id)leftOuterJoin:(id)a3 on:(id)a4;
- (id)leftOuterJoin:(id)a3 sourceColumn:(id)a4 targetColumn:(id)a5;
- (void)addResultColumn:(id)a3 alias:(id)a4;
- (void)ef_renderSQLExpressionInto:(id)a3;
- (void)groupByColumn:(id)a3;
@end

@implementation _EFSQLJoinExpression

- (EFSQLSelectStatement)select
{
  WeakRetained = objc_loadWeakRetained(&self->_select);

  return WeakRetained;
}

- (_EFSQLJoinExpression)initWithSelect:(id)a3 tableName:(id)a4 tableAlias:(id)a5 joinConstraint:(id)a6 isLeftOuter:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v23.receiver = self;
  v23.super_class = _EFSQLJoinExpression;
  v16 = [(_EFSQLJoinExpression *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_select, v12);
    v18 = [v13 copy];
    tableName = v17->_tableName;
    v17->_tableName = v18;

    v20 = [v14 copy];
    tableAlias = v17->_tableAlias;
    v17->_tableAlias = v20;

    objc_storeStrong(&v17->_joinConstraint, a6);
    v17->_isLeftOuter = a7;
  }

  return v17;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(_EFSQLJoinExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v4 = a3;
  if (self->_isLeftOuter)
  {
    v5 = @" LEFT OUTER JOIN ";
  }

  else
  {
    v5 = @" JOIN ";
  }

  v6 = v4;
  [v4 appendString:v5];
  [v6 appendString:self->_tableName];
  if (self->_tableAlias)
  {
    [v6 appendFormat:@" AS %@", self->_tableAlias];
  }

  [v6 appendString:@" ON "];
  [(EFSQLExpressable *)self->_joinConstraint ef_renderSQLExpressionInto:v6];
}

- (id)join:(id)a3 on:(id)a4
{
  v4 = [(_EFSQLJoinExpression *)self join:a3 alias:0 on:a4];

  return v4;
}

- (id)leftOuterJoin:(id)a3 on:(id)a4
{
  v4 = [(_EFSQLJoinExpression *)self leftOuterJoin:a3 alias:0 on:a4];

  return v4;
}

- (id)join:(id)a3 alias:(id)a4 on:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_EFSQLJoinExpression *)self select];
  v12 = [v11 join:v8 alias:v9 on:v10];

  return v12;
}

- (id)leftOuterJoin:(id)a3 alias:(id)a4 on:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_EFSQLJoinExpression *)self select];
  v12 = [v11 leftOuterJoin:v8 alias:v9 on:v10];

  return v12;
}

- (id)join:(id)a3 sourceColumn:(id)a4 targetColumn:(id)a5
{
  v5 = [(_EFSQLJoinExpression *)self join:a3 alias:0 sourceColumn:a4 targetColumn:a5];

  return v5;
}

- (id)leftOuterJoin:(id)a3 sourceColumn:(id)a4 targetColumn:(id)a5
{
  v5 = [(_EFSQLJoinExpression *)self leftOuterJoin:a3 alias:0 sourceColumn:a4 targetColumn:a5];

  return v5;
}

- (id)join:(id)a3 alias:(id)a4 sourceColumn:(id)a5 targetColumn:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_EFSQLJoinExpression *)self tableAlias];
  v15 = v14;
  if (!v14)
  {
    v15 = [(_EFSQLJoinExpression *)self tableName];
  }

  v16 = [EFSQLColumnExpression table:v15 column:v12];
  if (!v14)
  {
  }

  if (v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v10;
  }

  v18 = [EFSQLColumnExpression table:v17 column:v13];
  v19 = [v16 equalTo:v18];
  v20 = [(_EFSQLJoinExpression *)self join:v10 alias:v11 on:v19];

  return v20;
}

- (id)leftOuterJoin:(id)a3 alias:(id)a4 sourceColumn:(id)a5 targetColumn:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_EFSQLJoinExpression *)self tableAlias];
  v15 = v14;
  if (!v14)
  {
    v15 = [(_EFSQLJoinExpression *)self tableName];
  }

  v16 = [EFSQLColumnExpression table:v15 column:v12];
  if (!v14)
  {
  }

  if (v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v10;
  }

  v18 = [EFSQLColumnExpression table:v17 column:v13];
  v19 = [v16 equalTo:v18];
  v20 = [(_EFSQLJoinExpression *)self leftOuterJoin:v10 alias:v11 on:v19];

  return v20;
}

- (void)addResultColumn:(id)a3 alias:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(_EFSQLJoinExpression *)self select];
  v8 = [(_EFSQLJoinExpression *)self tableAlias];
  v9 = v8;
  if (!v8)
  {
    v9 = [(_EFSQLJoinExpression *)self tableName];
  }

  [v7 addResultColumn:v10 fromTable:v9 alias:v6];
  if (!v8)
  {
  }
}

- (void)groupByColumn:(id)a3
{
  v7 = a3;
  v4 = [(_EFSQLJoinExpression *)self select];
  v5 = [(_EFSQLJoinExpression *)self tableAlias];
  v6 = v5;
  if (!v5)
  {
    v6 = [(_EFSQLJoinExpression *)self tableName];
  }

  [v4 groupByColumn:v7 fromTable:v6];
  if (!v5)
  {
  }
}

@end