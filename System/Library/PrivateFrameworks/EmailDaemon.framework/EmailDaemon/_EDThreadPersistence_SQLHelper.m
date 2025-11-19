@interface _EDThreadPersistence_SQLHelper
- (BOOL)executeSQL:(id)a3 errorHandler:(id)a4;
- (BOOL)executeSQL:(id)a3 indexBindings:(id)a4 errorHandler:(id)a5;
- (BOOL)executeSelectSQL:(id)a3 bindings:(id)a4 errorHandler:(id)a5 rowHandler:(id)a6;
- (_EDThreadPersistence_SQLHelper)initWithCache:(id)a3;
- (int64_t)executeUpdateSQL:(id)a3 bindings:(id)a4 errorHandler:(id)a5;
- (int64_t)executeUpsertSQL:(id)a3 bindings:(id)a4 errorHandler:(id)a5;
@end

@implementation _EDThreadPersistence_SQLHelper

- (_EDThreadPersistence_SQLHelper)initWithCache:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _EDThreadPersistence_SQLHelper;
  v6 = [(_EDThreadPersistence_SQLHelper *)&v10 init];
  if (v6)
  {
    v7 = [v5 connection];
    connection = v6->_connection;
    v6->_connection = v7;

    objc_storeStrong(&v6->_cache, a3);
  }

  return v6;
}

- (int64_t)executeUpdateSQL:(id)a3 bindings:(id)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_EDThreadPersistence_SQLHelper *)self cache];
  v12 = [v11 preparedStatementForQueryString:v8];

  if (!v12)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeUpdateSQL:bindings:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1347, "statement");
  }

  v19 = 0;
  v13 = createBindingsDictionary();
  v9[2](v9, v13);
  v18 = 0;
  v14 = [v12 executeWithNamedBindings:v13 rowsChanged:&v19 error:&v18];
  v15 = v18;
  if (v14)
  {
    if (v19)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v10[2](v10, v15);
    v16 = 0;
  }

  return v16;
}

- (int64_t)executeUpsertSQL:(id)a3 bindings:(id)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_EDThreadPersistence_SQLHelper *)self cache];
  v12 = [v11 preparedStatementForQueryString:v8];

  if (!v12)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeUpsertSQL:bindings:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1365, "statement");
  }

  v13 = [(_EDThreadPersistence_SQLHelper *)self connection];
  [v13 clearLastInsertedDatabaseID];

  v14 = [(_EDThreadPersistence_SQLHelper *)self connection];
  if ([v14 lastInsertedDatabaseID])
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeUpsertSQL:bindings:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1370, "self.connection.lastInsertedDatabaseID == 0");
  }

  v22 = 0;
  v15 = createBindingsDictionary();
  v9[2](v9, v15);
  v21 = 0;
  v16 = [v12 executeWithNamedBindings:v15 rowsChanged:&v22 error:&v21];
  v17 = v21;
  if (v16)
  {
    v18 = [(_EDThreadPersistence_SQLHelper *)self connection];
    v19 = [v18 lastInsertedDatabaseID];
  }

  else
  {
    v10[2](v10, v17);
    v19 = *MEMORY[0x1E699A728];
  }

  return v19;
}

- (BOOL)executeSelectSQL:(id)a3 bindings:(id)a4 errorHandler:(id)a5 rowHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_EDThreadPersistence_SQLHelper *)self cache];
  v15 = [v14 preparedStatementForQueryString:v10];

  if (!v15)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeSelectSQL:bindings:errorHandler:rowHandler:]", "EDThreadPersistence_ThreadMessages.m", 1387, "statement");
  }

  v16 = createBindingsDictionary();
  v11[2](v11, v16);
  v20 = 0;
  v17 = [v15 executeWithNamedBindings:v16 usingBlock:v13 error:&v20];
  v18 = v20;
  if ((v17 & 1) == 0)
  {
    v12[2](v12, v18);
  }

  return v17;
}

- (BOOL)executeSQL:(id)a3 indexBindings:(id)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_EDThreadPersistence_SQLHelper *)self cache];
  v12 = [v11 preparedStatementForQueryString:v8];

  if (!v12)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeSQL:indexBindings:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1402, "statement");
  }

  v16 = 0;
  v13 = [v12 executeWithIndexedBindings:v9 usingBlock:&__block_literal_global_468_1 error:&v16];
  v14 = v16;
  if ((v13 & 1) == 0)
  {
    v10[2](v10, v14);
  }

  return v13;
}

- (BOOL)executeSQL:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_EDThreadPersistence_SQLHelper *)self cache];
  v9 = [v8 preparedStatementForQueryString:v6];

  if (!v9)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeSQL:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1413, "statement");
  }

  v13 = 0;
  v10 = [v9 executeUsingBlock:&__block_literal_global_470_0 error:&v13];
  v11 = v13;
  if ((v10 & 1) == 0)
  {
    v7[2](v7, v11);
  }

  return v10;
}

@end