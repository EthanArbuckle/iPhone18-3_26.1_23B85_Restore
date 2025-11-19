@interface CCSQLitePreparedStatement
- (CCSQLitePreparedStatement)init;
- (CCSQLitePreparedStatement)initWithStmt:(sqlite3_stmt *)a3;
- (id)dataValueAtColumnIndex:(unint64_t)a3;
- (id)numberValueAtColumnIndex:(unint64_t)a3;
- (id)stringValueAtColumnIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation CCSQLitePreparedStatement

- (void)dealloc
{
  stmt = self->_stmt;
  if (stmt)
  {
    sqlite3_finalize(stmt);
    self->_stmt = 0;
  }

  v4.receiver = self;
  v4.super_class = CCSQLitePreparedStatement;
  [(CCSQLitePreparedStatement *)&v4 dealloc];
}

- (CCSQLitePreparedStatement)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLitePreparedStatement)initWithStmt:(sqlite3_stmt *)a3
{
  v7.receiver = self;
  v7.super_class = CCSQLitePreparedStatement;
  v4 = [(CCSQLitePreparedStatement *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_stmt = a3;
    v4->_count = sqlite3_column_count(a3);
  }

  return v5;
}

- (id)stringValueAtColumnIndex:(unint64_t)a3
{
  v3 = _columnValueFromSQLiteStatement(self->_stmt, a3);
  v4 = CCDatabaseValueAsString(v3);

  return v4;
}

- (id)numberValueAtColumnIndex:(unint64_t)a3
{
  v3 = _columnValueFromSQLiteStatement(self->_stmt, a3);
  v4 = CCDatabaseValueAsNumber(v3);

  return v4;
}

- (id)dataValueAtColumnIndex:(unint64_t)a3
{
  v3 = _columnValueFromSQLiteStatement(self->_stmt, a3);
  v4 = CCDatabaseValueAsData(v3);

  return v4;
}

@end