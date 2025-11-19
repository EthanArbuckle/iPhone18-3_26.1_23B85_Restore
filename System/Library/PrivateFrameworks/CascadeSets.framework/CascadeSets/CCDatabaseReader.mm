@interface CCDatabaseReader
+ (id)readerForDatabaseAtURL:(id)a3 accessAssertion:(id)a4;
- (BOOL)_commitAndCloseReadTransactionIfExists:(id *)a3;
- (BOOL)_openAndBeginReadTransactionIfNotExists:(id *)a3;
- (BOOL)enumerateRecordResultsOfSelect:(id)a3 recordClass:(Class)a4 error:(id *)a5 usingBlock:(id)a6;
- (BOOL)enumerateRowResultsOfSelect:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)firstResultOfSelect:(id)a3 outNumberValue:(id *)a4 error:(id *)a5;
- (CCDatabaseReader)init;
- (CCDatabaseReader)initWithConnection:(id)a3;
- (id)enumeratorForRowResultsOfSelect:(id)a3 error:(id *)a4;
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

+ (id)readerForDatabaseAtURL:(id)a3 accessAssertion:(id)a4
{
  v4 = [CCDatabaseConnection readOnlyConnectionToDatabaseAtURL:a3 accessAssertion:a4];
  v5 = [objc_alloc(objc_opt_class()) initWithConnection:v4];

  return v5;
}

- (CCDatabaseReader)initWithConnection:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CCDatabaseReader;
  v6 = [(CCDatabaseReader *)&v11 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_connection, a3), !v7->_connection))
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

- (BOOL)_openAndBeginReadTransactionIfNotExists:(id *)a3
{
  if (self->_inTransaction)
  {
    return 1;
  }

  else
  {
    if ([(CCDatabaseConnection *)self->_connection openWithError:?]&& [(CCDatabaseConnection *)self->_connection beginTransactionWithError:a3])
    {
      self->_inTransaction = 1;
    }

    return self->_inTransaction;
  }
}

- (BOOL)_commitAndCloseReadTransactionIfExists:(id *)a3
{
  if (self->_inTransaction)
  {
    if ([(CCDatabaseConnection *)self->_connection commitTransactionWithError:?]&& [(CCDatabaseConnection *)self->_connection closeWithError:a3])
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

- (BOOL)firstResultOfSelect:(id)a3 outNumberValue:(id *)a4 error:(id *)a5
{
  v8 = a3;
  if ([(CCDatabaseReader *)self _openAndBeginReadTransactionIfNotExists:a5])
  {
    v9 = [(CCDatabaseConnection *)self->_connection firstResultOfSelect:v8 outNumberValue:a4 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)enumerateRecordResultsOfSelect:(id)a3 recordClass:(Class)a4 error:(id *)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  if ([(CCDatabaseReader *)self _openAndBeginReadTransactionIfNotExists:a5])
  {
    v12 = [(CCDatabaseConnection *)self->_connection enumerateRecordResultsOfSelect:v10 recordClass:a4 error:a5 usingBlock:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)enumerateRowResultsOfSelect:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(CCDatabaseReader *)self _openAndBeginReadTransactionIfNotExists:a4])
  {
    v10 = [(CCDatabaseConnection *)self->_connection enumerateRowResultsOfSelect:v8 error:a4 usingBlock:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)enumeratorForRowResultsOfSelect:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CCDatabaseReader *)self _openAndBeginReadTransactionIfNotExists:a4])
  {
    v7 = [(CCDatabaseConnection *)self->_connection enumeratorForRowResultsOfSelect:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end