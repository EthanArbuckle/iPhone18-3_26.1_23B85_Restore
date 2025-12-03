@interface EFSQLUpsertStatement
- (BOOL)isEmpty;
- (EFSQLInsertStatementValue)insertValue;
- (EFSQLUpdateStatementValue)updateValue;
- (EFSQLUpsertStatement)initWithTable:(id)table conflictTarget:(id)target;
- (EFSQLValueExpressable)whereClause;
- (NSString)queryString;
- (id)excludedColumnExpressionForColumnName:(id)name;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)enumerateBindingNamesAndValuesUsingBlock:(id)block;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setWhereClause:(id)clause;
@end

@implementation EFSQLUpsertStatement

- (EFSQLUpsertStatement)initWithTable:(id)table conflictTarget:(id)target
{
  tableCopy = table;
  targetCopy = target;
  v16.receiver = self;
  v16.super_class = EFSQLUpsertStatement;
  v8 = [(EFSQLUpsertStatement *)&v16 init];
  if (v8)
  {
    v9 = [[EFSQLInsertStatement alloc] initWithTable:tableCopy];
    insertStatement = v8->_insertStatement;
    v8->_insertStatement = v9;

    v11 = [[EFSQLUpdateStatement alloc] initWithTable:tableCopy];
    updateStatement = v8->_updateStatement;
    v8->_updateStatement = v11;

    v13 = [targetCopy copy];
    conflictTarget = v8->_conflictTarget;
    v8->_conflictTarget = v13;
  }

  return v8;
}

- (NSString)queryString
{
  if (self)
  {
    conflictTarget = self->_conflictTarget;
  }

  else
  {
    conflictTarget = 0;
  }

  v5 = conflictTarget;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35__EFSQLUpsertStatement_queryString__block_invoke;
  v18[3] = &unk_1E824A128;
  v18[4] = self;
  v6 = [(NSArray *)v5 ef_all:v18];

  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLUpsertStatement.m" lineNumber:81 description:@"Must have insertion values for all conflict target columns"];
  }

  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (self)
  {
    insertStatement = self->_insertStatement;
  }

  else
  {
    insertStatement = 0;
  }

  [(EFSQLInsertStatement *)insertStatement renderStatementWithNamedBindingsInto:v7];
  objc_msgSend(v7, "appendString:", @" ON CONFLICT (");
  v9 = self->_conflictTarget;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __35__EFSQLUpsertStatement_queryString__block_invoke_2;
  v16 = &unk_1E8249D08;
  v10 = v7;
  v17 = v10;
  [(NSArray *)v9 enumerateObjectsUsingBlock:&v13];
  [v10 appendString:@" DO "], v13, v14, v15, v16);
  [(EFSQLUpdateStatement *)self->_updateStatement renderStatementForUpsertInto:v10];

  return v10;
}

void __35__EFSQLUpsertStatement_queryString__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v5];
}

- (EFSQLInsertStatementValue)insertValue
{
  if (self)
  {
    self = self->_insertStatement;
  }

  return self;
}

- (EFSQLUpdateStatementValue)updateValue
{
  if (self)
  {
    self = self->_updateStatement;
  }

  return self;
}

- (EFSQLValueExpressable)whereClause
{
  if (self)
  {
    self = self->_updateStatement;
  }

  whereClause = [(EFSQLUpsertStatement *)self whereClause];

  return whereClause;
}

- (void)setWhereClause:(id)clause
{
  clauseCopy = clause;
  if (self)
  {
    updateStatement = self->_updateStatement;
  }

  else
  {
    updateStatement = 0;
  }

  v6 = clauseCopy;
  [(EFSQLUpdateStatement *)updateStatement setWhereClause:clauseCopy];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  if (self)
  {
    insertStatement = self->_insertStatement;
  }

  else
  {
    insertStatement = 0;
  }

  v6 = [(EFSQLInsertStatement *)insertStatement objectForKeyedSubscript:subscriptCopy];

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  if (self)
  {
    insertStatement = self->_insertStatement;
  }

  else
  {
    insertStatement = 0;
  }

  [(EFSQLInsertStatement *)insertStatement setObject:objectCopy forKeyedSubscript:subscriptCopy];
  if (self)
  {
    conflictTarget = self->_conflictTarget;
  }

  else
  {
    conflictTarget = 0;
  }

  if (![(NSArray *)conflictTarget containsObject:subscriptCopy])
  {
    v9 = [(EFSQLUpsertStatement *)self excludedColumnExpressionForColumnName:subscriptCopy];
    if (self)
    {
      updateStatement = self->_updateStatement;
    }

    else
    {
      updateStatement = 0;
    }

    [(EFSQLUpdateStatement *)updateStatement setObject:v9 forKeyedSubscript:subscriptCopy];
  }
}

- (void)enumerateBindingNamesAndValuesUsingBlock:(id)block
{
  blockCopy = block;
  if (self)
  {
    insertStatement = self->_insertStatement;
  }

  else
  {
    insertStatement = 0;
  }

  v7 = blockCopy;
  [(EFSQLInsertStatement *)insertStatement enumerateBindingNamesAndValuesUsingBlock:blockCopy];
  if (self)
  {
    updateStatement = self->_updateStatement;
  }

  else
  {
    updateStatement = 0;
  }

  [(EFSQLUpdateStatement *)updateStatement enumerateBindingNamesAndValuesUsingBlock:v7];
}

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_insertStatement;
  }

  return [(EFSQLUpsertStatement *)self isEmpty];
}

BOOL __35__EFSQLUpsertStatement_queryString__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKeyedSubscript:v3];
  v7 = v6 != 0;

  return v7;
}

- (id)excludedColumnExpressionForColumnName:(id)name
{
  nameCopy = name;
  if (self)
  {
    insertStatement = self->_insertStatement;
  }

  else
  {
    insertStatement = 0;
  }

  v7 = [(EFSQLInsertStatement *)insertStatement objectForKeyedSubscript:nameCopy];

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLUpsertStatement.m" lineNumber:101 description:@"Cannot generate excluded expression for column that was not inserted"];
  }

  v8 = [EFSQLColumnExpression table:@"excluded" column:nameCopy];

  return v8;
}

@end