@interface _EDThreadPersistence_StatementCache
- (_EDThreadPersistence_StatementCache)initWithConnection:(id)connection;
- (id)preparedStatementForQueryString:(id)string;
@end

@implementation _EDThreadPersistence_StatementCache

- (_EDThreadPersistence_StatementCache)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = _EDThreadPersistence_StatementCache;
  v6 = [(_EDThreadPersistence_StatementCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    preparedStatements = v7->_preparedStatements;
    v7->_preparedStatements = dictionary;
  }

  return v7;
}

- (id)preparedStatementForQueryString:(id)string
{
  stringCopy = string;
  preparedStatements = [(_EDThreadPersistence_StatementCache *)self preparedStatements];
  v6 = [preparedStatements objectForKeyedSubscript:stringCopy];

  if (!v6)
  {
    connection = [(_EDThreadPersistence_StatementCache *)self connection];
    v6 = [connection preparedStatementForQueryString:stringCopy];

    if (!v6)
    {
      __assert_rtn("[_EDThreadPersistence_StatementCache preparedStatementForQueryString:]", "EDThreadPersistence_ThreadMessages.m", 1267, "statement");
    }

    preparedStatements2 = [(_EDThreadPersistence_StatementCache *)self preparedStatements];
    [preparedStatements2 setObject:v6 forKeyedSubscript:stringCopy];
  }

  return v6;
}

@end