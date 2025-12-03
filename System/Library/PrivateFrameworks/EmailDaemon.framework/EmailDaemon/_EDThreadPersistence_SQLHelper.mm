@interface _EDThreadPersistence_SQLHelper
- (BOOL)executeSQL:(id)l errorHandler:(id)handler;
- (BOOL)executeSQL:(id)l indexBindings:(id)bindings errorHandler:(id)handler;
- (BOOL)executeSelectSQL:(id)l bindings:(id)bindings errorHandler:(id)handler rowHandler:(id)rowHandler;
- (_EDThreadPersistence_SQLHelper)initWithCache:(id)cache;
- (int64_t)executeUpdateSQL:(id)l bindings:(id)bindings errorHandler:(id)handler;
- (int64_t)executeUpsertSQL:(id)l bindings:(id)bindings errorHandler:(id)handler;
@end

@implementation _EDThreadPersistence_SQLHelper

- (_EDThreadPersistence_SQLHelper)initWithCache:(id)cache
{
  cacheCopy = cache;
  v10.receiver = self;
  v10.super_class = _EDThreadPersistence_SQLHelper;
  v6 = [(_EDThreadPersistence_SQLHelper *)&v10 init];
  if (v6)
  {
    connection = [cacheCopy connection];
    connection = v6->_connection;
    v6->_connection = connection;

    objc_storeStrong(&v6->_cache, cache);
  }

  return v6;
}

- (int64_t)executeUpdateSQL:(id)l bindings:(id)bindings errorHandler:(id)handler
{
  lCopy = l;
  bindingsCopy = bindings;
  handlerCopy = handler;
  cache = [(_EDThreadPersistence_SQLHelper *)self cache];
  v12 = [cache preparedStatementForQueryString:lCopy];

  if (!v12)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeUpdateSQL:bindings:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1347, "statement");
  }

  v19 = 0;
  v13 = createBindingsDictionary();
  bindingsCopy[2](bindingsCopy, v13);
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
    handlerCopy[2](handlerCopy, v15);
    v16 = 0;
  }

  return v16;
}

- (int64_t)executeUpsertSQL:(id)l bindings:(id)bindings errorHandler:(id)handler
{
  lCopy = l;
  bindingsCopy = bindings;
  handlerCopy = handler;
  cache = [(_EDThreadPersistence_SQLHelper *)self cache];
  v12 = [cache preparedStatementForQueryString:lCopy];

  if (!v12)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeUpsertSQL:bindings:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1365, "statement");
  }

  connection = [(_EDThreadPersistence_SQLHelper *)self connection];
  [connection clearLastInsertedDatabaseID];

  connection2 = [(_EDThreadPersistence_SQLHelper *)self connection];
  if ([connection2 lastInsertedDatabaseID])
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeUpsertSQL:bindings:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1370, "self.connection.lastInsertedDatabaseID == 0");
  }

  v22 = 0;
  v15 = createBindingsDictionary();
  bindingsCopy[2](bindingsCopy, v15);
  v21 = 0;
  v16 = [v12 executeWithNamedBindings:v15 rowsChanged:&v22 error:&v21];
  v17 = v21;
  if (v16)
  {
    connection3 = [(_EDThreadPersistence_SQLHelper *)self connection];
    lastInsertedDatabaseID = [connection3 lastInsertedDatabaseID];
  }

  else
  {
    handlerCopy[2](handlerCopy, v17);
    lastInsertedDatabaseID = *MEMORY[0x1E699A728];
  }

  return lastInsertedDatabaseID;
}

- (BOOL)executeSelectSQL:(id)l bindings:(id)bindings errorHandler:(id)handler rowHandler:(id)rowHandler
{
  lCopy = l;
  bindingsCopy = bindings;
  handlerCopy = handler;
  rowHandlerCopy = rowHandler;
  cache = [(_EDThreadPersistence_SQLHelper *)self cache];
  v15 = [cache preparedStatementForQueryString:lCopy];

  if (!v15)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeSelectSQL:bindings:errorHandler:rowHandler:]", "EDThreadPersistence_ThreadMessages.m", 1387, "statement");
  }

  v16 = createBindingsDictionary();
  bindingsCopy[2](bindingsCopy, v16);
  v20 = 0;
  v17 = [v15 executeWithNamedBindings:v16 usingBlock:rowHandlerCopy error:&v20];
  v18 = v20;
  if ((v17 & 1) == 0)
  {
    handlerCopy[2](handlerCopy, v18);
  }

  return v17;
}

- (BOOL)executeSQL:(id)l indexBindings:(id)bindings errorHandler:(id)handler
{
  lCopy = l;
  bindingsCopy = bindings;
  handlerCopy = handler;
  cache = [(_EDThreadPersistence_SQLHelper *)self cache];
  v12 = [cache preparedStatementForQueryString:lCopy];

  if (!v12)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeSQL:indexBindings:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1402, "statement");
  }

  v16 = 0;
  v13 = [v12 executeWithIndexedBindings:bindingsCopy usingBlock:&__block_literal_global_468_1 error:&v16];
  v14 = v16;
  if ((v13 & 1) == 0)
  {
    handlerCopy[2](handlerCopy, v14);
  }

  return v13;
}

- (BOOL)executeSQL:(id)l errorHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  cache = [(_EDThreadPersistence_SQLHelper *)self cache];
  v9 = [cache preparedStatementForQueryString:lCopy];

  if (!v9)
  {
    __assert_rtn("[_EDThreadPersistence_SQLHelper executeSQL:errorHandler:]", "EDThreadPersistence_ThreadMessages.m", 1413, "statement");
  }

  v13 = 0;
  v10 = [v9 executeUsingBlock:&__block_literal_global_470_0 error:&v13];
  v11 = v13;
  if ((v10 & 1) == 0)
  {
    handlerCopy[2](handlerCopy, v11);
  }

  return v10;
}

@end