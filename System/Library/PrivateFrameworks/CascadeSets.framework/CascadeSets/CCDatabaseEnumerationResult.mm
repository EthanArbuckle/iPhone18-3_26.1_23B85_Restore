@interface CCDatabaseEnumerationResult
- (CCDatabaseEnumerationResult)init;
- (CCDatabaseEnumerationResult)initWithStatement:(id)statement database:(id)database command:(id)command error:(id)error;
- (id)nextRow;
- (void)dealloc;
@end

@implementation CCDatabaseEnumerationResult

- (CCDatabaseEnumerationResult)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseEnumerationResult)initWithStatement:(id)statement database:(id)database command:(id)command error:(id)error
{
  statementCopy = statement;
  databaseCopy = database;
  commandCopy = command;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = CCDatabaseEnumerationResult;
  v15 = [(CCDatabaseEnumerationResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_database, database);
    objc_storeStrong(&v16->_command, command);
    objc_storeStrong(&v16->_statement, statement);
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

- (void)dealloc
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_reset([(CCSQLitePreparedStatement *)statement stmt]);
  }

  v4.receiver = self;
  v4.super_class = CCDatabaseEnumerationResult;
  [(CCDatabaseEnumerationResult *)&v4 dealloc];
}

- (id)nextRow
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (self->_error)
  {
    goto LABEL_2;
  }

  statement = self->_statement;
  if (statement)
  {
    stmt = [(CCSQLitePreparedStatement *)statement stmt];
    v7 = sqlite3_step(stmt);
    if (v7 == 101)
    {
      sqlite3_reset(stmt);
      v9 = self->_statement;
      self->_statement = 0;
    }

    else
    {
      v8 = v7;
      if (v7 == 100)
      {
        statement = self->_statement;
        goto LABEL_3;
      }

      lastExtendedErrorCode = [(CCSQLiteDatabase *)self->_database lastExtendedErrorCode];
      command = self->_command;
      v12 = _errorDescriptionForCommand();
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20[0] = self->_command;
      v14 = *MEMORY[0x1E696AA08];
      v19[0] = @"command";
      v19[1] = v14;
      v15 = _createSQLiteAPIErrorFromResultCode(v8, lastExtendedErrorCode);
      v19[2] = *MEMORY[0x1E696A578];
      v20[1] = v15;
      v20[2] = v12;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
      v17 = [v13 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v16];
      error = self->_error;
      self->_error = v17;
    }

LABEL_2:
    statement = 0;
  }

LABEL_3:
  v3 = *MEMORY[0x1E69E9840];

  return statement;
}

@end