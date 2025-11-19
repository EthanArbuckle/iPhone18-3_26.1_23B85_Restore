@interface ML3DatabaseStatement
- (BOOL)isBusy;
- (ML3DatabaseStatement)initWithSQLiteStatement:(sqlite3_stmt *)a3 SQL:(id)a4;
- (NSString)sql;
- (id)description;
- (int)clearBindings;
- (int)finalizeStatement;
- (int)reset;
- (int)step;
- (void)bindBytes:(const void *)a3 length:(int)a4 forParameterAtPosition:(int)a5;
- (void)bindBytesNoCopy:(const void *)a3 length:(int)a4 forParameterAtPosition:(int)a5;
- (void)bindUTF8String:(const char *)a3 forParameterAtPosition:(int)a4;
- (void)bindUTF8StringNoCopy:(const char *)a3 forParameterAtPosition:(int)a4;
- (void)bindUTF8StringNoCopy:(const char *)a3 length:(int)a4 forParameterAtPosition:(int)a5;
- (void)bindValue:(id)a3 forParameterAtPosition:(int)a4;
- (void)bindValuesForParameterNames:(id)a3;
- (void)bindValuesInArray:(id)a3;
- (void)dealloc;
@end

@implementation ML3DatabaseStatement

- (NSString)sql
{
  sql = self->_sql;
  if (!sql)
  {
    sqliteStatement = self->_sqliteStatement;
    if (sqliteStatement)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_sql(sqliteStatement)];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 copy];
    v7 = self->_sql;
    self->_sql = v6;

    sql = self->_sql;
  }

  return sql;
}

- (int)reset
{
  sqliteStatement = self->_sqliteStatement;
  if (sqliteStatement)
  {
    LODWORD(sqliteStatement) = sqlite3_reset(sqliteStatement);
  }

  self->_isExecuting = 0;
  return sqliteStatement;
}

- (int)step
{
  sqliteStatement = self->_sqliteStatement;
  if (sqliteStatement || ([MEMORY[0x277CCA890] currentHandler], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"ML3DatabaseStatement.m", 68, @"attempt to step database statement that has already been finalized"), v5, (sqliteStatement = self->_sqliteStatement) != 0))
  {
    LODWORD(sqliteStatement) = sqlite3_step(sqliteStatement);
  }

  self->_isExecuting = 1;
  return sqliteStatement;
}

- (void)bindValuesInArray:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__ML3DatabaseStatement_bindValuesInArray___block_invoke;
  v3[3] = &unk_278765D38;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (void)bindValuesForParameterNames:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__ML3DatabaseStatement_bindValuesForParameterNames___block_invoke;
  v3[3] = &unk_278765440;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

void __52__ML3DatabaseStatement_bindValuesForParameterNames___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v8 = a3;
  v6 = [v5 stringWithFormat:@":%@", a2];
  v7 = [v6 UTF8String];

  [*(a1 + 32) bindValue:v8 forParameterAtPosition:{sqlite3_bind_parameter_index(*(*(a1 + 32) + 24), v7)}];
}

- (void)bindValue:(id)a3 forParameterAtPosition:(int)a4
{
  if (a3)
  {
    [a3 ml_bindToSQLiteStatement:self->_sqliteStatement atPosition:*&a4];
  }

  else
  {
    sqlite3_bind_null(self->_sqliteStatement, a4);
  }
}

- (void)bindUTF8StringNoCopy:(const char *)a3 length:(int)a4 forParameterAtPosition:(int)a5
{
  sqliteStatement = self->_sqliteStatement;
  if (!a3)
  {
    a3 = "";
  }

  sqlite3_bind_text(sqliteStatement, a5, a3, a4, 0);
}

- (void)bindUTF8StringNoCopy:(const char *)a3 forParameterAtPosition:(int)a4
{
  sqliteStatement = self->_sqliteStatement;
  if (!a3)
  {
    a3 = "";
  }

  sqlite3_bind_text(sqliteStatement, a4, a3, -1, 0);
}

- (void)bindUTF8String:(const char *)a3 forParameterAtPosition:(int)a4
{
  sqliteStatement = self->_sqliteStatement;
  if (!a3)
  {
    a3 = "";
  }

  sqlite3_bind_text(sqliteStatement, a4, a3, -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)bindBytesNoCopy:(const void *)a3 length:(int)a4 forParameterAtPosition:(int)a5
{
  sqliteStatement = self->_sqliteStatement;
  if (!a3)
  {
    a3 = "";
  }

  sqlite3_bind_blob(sqliteStatement, a5, a3, a4, 0);
}

- (void)bindBytes:(const void *)a3 length:(int)a4 forParameterAtPosition:(int)a5
{
  sqliteStatement = self->_sqliteStatement;
  if (!a3)
  {
    a3 = "";
  }

  sqlite3_bind_blob(sqliteStatement, a5, a3, a4, 0xFFFFFFFFFFFFFFFFLL);
}

- (int)clearBindings
{
  sqliteStatement = self->_sqliteStatement;
  if (sqliteStatement)
  {
    LODWORD(sqliteStatement) = sqlite3_clear_bindings(sqliteStatement);
  }

  return sqliteStatement;
}

- (BOOL)isBusy
{
  sqliteStatement = self->_sqliteStatement;
  if (sqliteStatement)
  {
    LOBYTE(sqliteStatement) = sqlite3_stmt_busy(sqliteStatement) != 0;
  }

  return sqliteStatement;
}

- (int)finalizeStatement
{
  sqliteStatement = self->_sqliteStatement;
  if (sqliteStatement)
  {
    LODWORD(sqliteStatement) = sqlite3_finalize(sqliteStatement);
    self->_sqliteStatement = 0;
  }

  self->_isExecuting = 0;
  return sqliteStatement;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ML3DatabaseStatement;
  v4 = [(ML3DatabaseStatement *)&v9 description];
  v5 = [(ML3DatabaseStatement *)self isExecuting];
  v6 = [(ML3DatabaseStatement *)self sql];
  v7 = [v3 stringWithFormat:@"%@ executing=%d, sql='%@'", v4, v5, v6];

  return v7;
}

- (void)dealloc
{
  if (self->_sqliteStatement)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"ML3DatabaseStatement.m" lineNumber:38 description:{@"%@ %p has a dangling SQLite resource. (%p) A connection should have free'd this resource.", objc_opt_class(), self, self->_sqliteStatement}];
  }

  v5.receiver = self;
  v5.super_class = ML3DatabaseStatement;
  [(ML3DatabaseStatement *)&v5 dealloc];
}

- (ML3DatabaseStatement)initWithSQLiteStatement:(sqlite3_stmt *)a3 SQL:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v14.receiver = self;
    v14.super_class = ML3DatabaseStatement;
    v7 = [(ML3DatabaseStatement *)&v14 init];
    v8 = v7;
    if (v7)
    {
      v7->_sqliteStatement = a3;
      v9 = [v6 copy];
      sql = v8->_sql;
      v8->_sql = v9;

      v8->_isExecuting = 0;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v12 = [MLException exceptionWithName:*MEMORY[0x277CBE658] reason:@"attempt to create a database statement without an underlying sqlite3_stmt" userInfo:0];
    [v12 raise];

    v11 = 0;
  }

  return v11;
}

@end