@interface _EDThreadPersistence_StatementCache
- (_EDThreadPersistence_StatementCache)initWithConnection:(id)a3;
- (id)preparedStatementForQueryString:(id)a3;
@end

@implementation _EDThreadPersistence_StatementCache

- (_EDThreadPersistence_StatementCache)initWithConnection:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _EDThreadPersistence_StatementCache;
  v6 = [(_EDThreadPersistence_StatementCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    preparedStatements = v7->_preparedStatements;
    v7->_preparedStatements = v8;
  }

  return v7;
}

- (id)preparedStatementForQueryString:(id)a3
{
  v4 = a3;
  v5 = [(_EDThreadPersistence_StatementCache *)self preparedStatements];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(_EDThreadPersistence_StatementCache *)self connection];
    v6 = [v7 preparedStatementForQueryString:v4];

    if (!v6)
    {
      __assert_rtn("[_EDThreadPersistence_StatementCache preparedStatementForQueryString:]", "EDThreadPersistence_ThreadMessages.m", 1267, "statement");
    }

    v8 = [(_EDThreadPersistence_StatementCache *)self preparedStatements];
    [v8 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

@end