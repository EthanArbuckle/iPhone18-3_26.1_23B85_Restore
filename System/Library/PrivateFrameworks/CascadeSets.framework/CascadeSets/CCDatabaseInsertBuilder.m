@interface CCDatabaseInsertBuilder
- (BOOL)_setError:(id *)a3 withCode:(int64_t)a4;
- (CCDatabaseInsertBuilder)initWithTableName:(id)a3 columnNames:(id)a4;
- (id)buildWithError:(id *)a3;
- (void)setColumnValues:(id)a3;
- (void)setReturningColumns:(id)a3;
@end

@implementation CCDatabaseInsertBuilder

- (CCDatabaseInsertBuilder)initWithTableName:(id)a3 columnNames:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = CCDatabaseInsertBuilder;
  v7 = [(CCDatabaseCommandBuilder *)&v14 initWithTableName:a3];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [v6 count];
  v7->_numberOfColumns = v8;
  if (v8)
  {
    v9 = [v6 copy];
    columnNames = v7->_columnNames;
    v7->_columnNames = v9;

LABEL_4:
    v11 = v7;
    goto LABEL_8;
  }

  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseInsertBuilder initWithTableName:v12 columnNames:?];
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)buildWithError:(id *)a3
{
  numberOfColumns = self->_numberOfColumns;
  if (numberOfColumns == [(NSArray *)self->_columnValues count])
  {
    v6 = [(CCDatabaseCommandBuilder *)self tableName];
    v7 = [CCSQLCommandGenerator insertCommandStringWithTableName:v6 columnNames:self->_columnNames returningColumns:self->_returningColumns onConflict:self->_onConflict];

    v8 = [(CCDatabaseCommand *)[CCDatabaseInsert alloc] initWithCommandString:v7 parameters:self->_columnValues];
  }

  else
  {
    [(CCDatabaseInsertBuilder *)self _setError:a3 withCode:1];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseInsertBuilder buildWithError:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (void)setColumnValues:(id)a3
{
  v4 = [a3 copy];
  columnValues = self->_columnValues;
  self->_columnValues = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setReturningColumns:(id)a3
{
  v4 = [a3 copy];
  returningColumns = self->_returningColumns;
  self->_returningColumns = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)_setError:(id *)a3 withCode:(int64_t)a4
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.DatabaseInsert" code:a4 userInfo:0];
  }

  return a3 != 0;
}

@end