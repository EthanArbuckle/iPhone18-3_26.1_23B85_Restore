@interface _EFSQLJoinExpression
- (EFSQLSelectStatement)select;
- (NSString)ef_SQLExpression;
- (_EFSQLJoinExpression)initWithSelect:(id)select tableName:(id)name tableAlias:(id)alias joinConstraint:(id)constraint isLeftOuter:(BOOL)outer;
- (id)join:(id)join alias:(id)alias on:(id)on;
- (id)join:(id)join alias:(id)alias sourceColumn:(id)column targetColumn:(id)targetColumn;
- (id)join:(id)join on:(id)on;
- (id)join:(id)join sourceColumn:(id)column targetColumn:(id)targetColumn;
- (id)leftOuterJoin:(id)join alias:(id)alias on:(id)on;
- (id)leftOuterJoin:(id)join alias:(id)alias sourceColumn:(id)column targetColumn:(id)targetColumn;
- (id)leftOuterJoin:(id)join on:(id)on;
- (id)leftOuterJoin:(id)join sourceColumn:(id)column targetColumn:(id)targetColumn;
- (void)addResultColumn:(id)column alias:(id)alias;
- (void)ef_renderSQLExpressionInto:(id)into;
- (void)groupByColumn:(id)column;
@end

@implementation _EFSQLJoinExpression

- (EFSQLSelectStatement)select
{
  WeakRetained = objc_loadWeakRetained(&self->_select);

  return WeakRetained;
}

- (_EFSQLJoinExpression)initWithSelect:(id)select tableName:(id)name tableAlias:(id)alias joinConstraint:(id)constraint isLeftOuter:(BOOL)outer
{
  selectCopy = select;
  nameCopy = name;
  aliasCopy = alias;
  constraintCopy = constraint;
  v23.receiver = self;
  v23.super_class = _EFSQLJoinExpression;
  v16 = [(_EFSQLJoinExpression *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_select, selectCopy);
    v18 = [nameCopy copy];
    tableName = v17->_tableName;
    v17->_tableName = v18;

    v20 = [aliasCopy copy];
    tableAlias = v17->_tableAlias;
    v17->_tableAlias = v20;

    objc_storeStrong(&v17->_joinConstraint, constraint);
    v17->_isLeftOuter = outer;
  }

  return v17;
}

- (NSString)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [(_EFSQLJoinExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  if (self->_isLeftOuter)
  {
    v5 = @" LEFT OUTER JOIN ";
  }

  else
  {
    v5 = @" JOIN ";
  }

  v6 = intoCopy;
  [intoCopy appendString:v5];
  [v6 appendString:self->_tableName];
  if (self->_tableAlias)
  {
    [v6 appendFormat:@" AS %@", self->_tableAlias];
  }

  [v6 appendString:@" ON "];
  [(EFSQLExpressable *)self->_joinConstraint ef_renderSQLExpressionInto:v6];
}

- (id)join:(id)join on:(id)on
{
  v4 = [(_EFSQLJoinExpression *)self join:join alias:0 on:on];

  return v4;
}

- (id)leftOuterJoin:(id)join on:(id)on
{
  v4 = [(_EFSQLJoinExpression *)self leftOuterJoin:join alias:0 on:on];

  return v4;
}

- (id)join:(id)join alias:(id)alias on:(id)on
{
  joinCopy = join;
  aliasCopy = alias;
  onCopy = on;
  select = [(_EFSQLJoinExpression *)self select];
  v12 = [select join:joinCopy alias:aliasCopy on:onCopy];

  return v12;
}

- (id)leftOuterJoin:(id)join alias:(id)alias on:(id)on
{
  joinCopy = join;
  aliasCopy = alias;
  onCopy = on;
  select = [(_EFSQLJoinExpression *)self select];
  v12 = [select leftOuterJoin:joinCopy alias:aliasCopy on:onCopy];

  return v12;
}

- (id)join:(id)join sourceColumn:(id)column targetColumn:(id)targetColumn
{
  v5 = [(_EFSQLJoinExpression *)self join:join alias:0 sourceColumn:column targetColumn:targetColumn];

  return v5;
}

- (id)leftOuterJoin:(id)join sourceColumn:(id)column targetColumn:(id)targetColumn
{
  v5 = [(_EFSQLJoinExpression *)self leftOuterJoin:join alias:0 sourceColumn:column targetColumn:targetColumn];

  return v5;
}

- (id)join:(id)join alias:(id)alias sourceColumn:(id)column targetColumn:(id)targetColumn
{
  joinCopy = join;
  aliasCopy = alias;
  columnCopy = column;
  targetColumnCopy = targetColumn;
  tableAlias = [(_EFSQLJoinExpression *)self tableAlias];
  tableName = tableAlias;
  if (!tableAlias)
  {
    tableName = [(_EFSQLJoinExpression *)self tableName];
  }

  v16 = [EFSQLColumnExpression table:tableName column:columnCopy];
  if (!tableAlias)
  {
  }

  if (aliasCopy)
  {
    v17 = aliasCopy;
  }

  else
  {
    v17 = joinCopy;
  }

  v18 = [EFSQLColumnExpression table:v17 column:targetColumnCopy];
  v19 = [v16 equalTo:v18];
  v20 = [(_EFSQLJoinExpression *)self join:joinCopy alias:aliasCopy on:v19];

  return v20;
}

- (id)leftOuterJoin:(id)join alias:(id)alias sourceColumn:(id)column targetColumn:(id)targetColumn
{
  joinCopy = join;
  aliasCopy = alias;
  columnCopy = column;
  targetColumnCopy = targetColumn;
  tableAlias = [(_EFSQLJoinExpression *)self tableAlias];
  tableName = tableAlias;
  if (!tableAlias)
  {
    tableName = [(_EFSQLJoinExpression *)self tableName];
  }

  v16 = [EFSQLColumnExpression table:tableName column:columnCopy];
  if (!tableAlias)
  {
  }

  if (aliasCopy)
  {
    v17 = aliasCopy;
  }

  else
  {
    v17 = joinCopy;
  }

  v18 = [EFSQLColumnExpression table:v17 column:targetColumnCopy];
  v19 = [v16 equalTo:v18];
  v20 = [(_EFSQLJoinExpression *)self leftOuterJoin:joinCopy alias:aliasCopy on:v19];

  return v20;
}

- (void)addResultColumn:(id)column alias:(id)alias
{
  columnCopy = column;
  aliasCopy = alias;
  select = [(_EFSQLJoinExpression *)self select];
  tableAlias = [(_EFSQLJoinExpression *)self tableAlias];
  tableName = tableAlias;
  if (!tableAlias)
  {
    tableName = [(_EFSQLJoinExpression *)self tableName];
  }

  [select addResultColumn:columnCopy fromTable:tableName alias:aliasCopy];
  if (!tableAlias)
  {
  }
}

- (void)groupByColumn:(id)column
{
  columnCopy = column;
  select = [(_EFSQLJoinExpression *)self select];
  tableAlias = [(_EFSQLJoinExpression *)self tableAlias];
  tableName = tableAlias;
  if (!tableAlias)
  {
    tableName = [(_EFSQLJoinExpression *)self tableName];
  }

  [select groupByColumn:columnCopy fromTable:tableName];
  if (!tableAlias)
  {
  }
}

@end