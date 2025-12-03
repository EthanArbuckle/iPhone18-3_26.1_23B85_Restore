@interface CCDatabaseInsertBuilder
- (BOOL)_setError:(id *)error withCode:(int64_t)code;
- (CCDatabaseInsertBuilder)initWithTableName:(id)name columnNames:(id)names;
- (id)buildWithError:(id *)error;
- (void)setColumnValues:(id)values;
- (void)setReturningColumns:(id)columns;
@end

@implementation CCDatabaseInsertBuilder

- (CCDatabaseInsertBuilder)initWithTableName:(id)name columnNames:(id)names
{
  namesCopy = names;
  v14.receiver = self;
  v14.super_class = CCDatabaseInsertBuilder;
  v7 = [(CCDatabaseCommandBuilder *)&v14 initWithTableName:name];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [namesCopy count];
  v7->_numberOfColumns = v8;
  if (v8)
  {
    v9 = [namesCopy copy];
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

- (id)buildWithError:(id *)error
{
  numberOfColumns = self->_numberOfColumns;
  if (numberOfColumns == [(NSArray *)self->_columnValues count])
  {
    tableName = [(CCDatabaseCommandBuilder *)self tableName];
    v7 = [CCSQLCommandGenerator insertCommandStringWithTableName:tableName columnNames:self->_columnNames returningColumns:self->_returningColumns onConflict:self->_onConflict];

    v8 = [(CCDatabaseCommand *)[CCDatabaseInsert alloc] initWithCommandString:v7 parameters:self->_columnValues];
  }

  else
  {
    [(CCDatabaseInsertBuilder *)self _setError:error withCode:1];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseInsertBuilder buildWithError:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (void)setColumnValues:(id)values
{
  v4 = [values copy];
  columnValues = self->_columnValues;
  self->_columnValues = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setReturningColumns:(id)columns
{
  v4 = [columns copy];
  returningColumns = self->_returningColumns;
  self->_returningColumns = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)_setError:(id *)error withCode:(int64_t)code
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.DatabaseInsert" code:code userInfo:0];
  }

  return error != 0;
}

@end