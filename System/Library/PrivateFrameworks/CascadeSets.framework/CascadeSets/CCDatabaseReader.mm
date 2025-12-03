@interface CCDatabaseReader
+ (id)readerForDatabaseAtURL:(id)l accessAssertion:(id)assertion;
- (BOOL)_commitAndCloseReadTransactionIfExists:(id *)exists;
- (BOOL)_openAndBeginReadTransactionIfNotExists:(id *)exists;
- (BOOL)enumerateRecordResultsOfSelect:(id)select recordClass:(Class)class error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateRowResultsOfSelect:(id)select error:(id *)error usingBlock:(id)block;
- (BOOL)firstResultOfSelect:(id)select outNumberValue:(id *)value error:(id *)error;
- (CCDatabaseReader)init;
- (CCDatabaseReader)initWithConnection:(id)connection;
- (id)enumeratorForRowResultsOfSelect:(id)select error:(id *)error;
- (void)dealloc;
@end

@implementation CCDatabaseReader

- (void)dealloc
{
  [(CCDatabaseReader *)self reset:0];
  v3.receiver = self;
  v3.super_class = CCDatabaseReader;
  [(CCDatabaseReader *)&v3 dealloc];
}

- (CCDatabaseReader)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)readerForDatabaseAtURL:(id)l accessAssertion:(id)assertion
{
  v4 = [CCDatabaseConnection readOnlyConnectionToDatabaseAtURL:l accessAssertion:assertion];
  v5 = [objc_alloc(objc_opt_class()) initWithConnection:v4];

  return v5;
}

- (CCDatabaseReader)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = CCDatabaseReader;
  v6 = [(CCDatabaseReader *)&v11 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_connection, connection), !v7->_connection))
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseReader initWithConnection:v9];
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (BOOL)_openAndBeginReadTransactionIfNotExists:(id *)exists
{
  if (self->_inTransaction)
  {
    return 1;
  }

  else
  {
    if ([(CCDatabaseConnection *)self->_connection openWithError:?]&& [(CCDatabaseConnection *)self->_connection beginTransactionWithError:exists])
    {
      self->_inTransaction = 1;
    }

    return self->_inTransaction;
  }
}

- (BOOL)_commitAndCloseReadTransactionIfExists:(id *)exists
{
  if (self->_inTransaction)
  {
    if ([(CCDatabaseConnection *)self->_connection commitTransactionWithError:?]&& [(CCDatabaseConnection *)self->_connection closeWithError:exists])
    {
      self->_inTransaction = 0;
    }

    return !self->_inTransaction;
  }

  else
  {
    return 1;
  }
}

- (BOOL)firstResultOfSelect:(id)select outNumberValue:(id *)value error:(id *)error
{
  selectCopy = select;
  if ([(CCDatabaseReader *)self _openAndBeginReadTransactionIfNotExists:error])
  {
    v9 = [(CCDatabaseConnection *)self->_connection firstResultOfSelect:selectCopy outNumberValue:value error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)enumerateRecordResultsOfSelect:(id)select recordClass:(Class)class error:(id *)error usingBlock:(id)block
{
  selectCopy = select;
  blockCopy = block;
  if ([(CCDatabaseReader *)self _openAndBeginReadTransactionIfNotExists:error])
  {
    v12 = [(CCDatabaseConnection *)self->_connection enumerateRecordResultsOfSelect:selectCopy recordClass:class error:error usingBlock:blockCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)enumerateRowResultsOfSelect:(id)select error:(id *)error usingBlock:(id)block
{
  selectCopy = select;
  blockCopy = block;
  if ([(CCDatabaseReader *)self _openAndBeginReadTransactionIfNotExists:error])
  {
    v10 = [(CCDatabaseConnection *)self->_connection enumerateRowResultsOfSelect:selectCopy error:error usingBlock:blockCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)enumeratorForRowResultsOfSelect:(id)select error:(id *)error
{
  selectCopy = select;
  if ([(CCDatabaseReader *)self _openAndBeginReadTransactionIfNotExists:error])
  {
    v7 = [(CCDatabaseConnection *)self->_connection enumeratorForRowResultsOfSelect:selectCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end