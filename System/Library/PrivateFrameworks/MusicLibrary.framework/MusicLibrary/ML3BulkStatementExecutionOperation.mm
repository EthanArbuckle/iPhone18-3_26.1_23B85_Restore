@interface ML3BulkStatementExecutionOperation
- (BOOL)_execute:(id *)_execute;
- (BOOL)_executeStatements:(id)statements onConnection:(id)connection withError:(id *)error;
@end

@implementation ML3BulkStatementExecutionOperation

- (BOOL)_executeStatements:(id)statements onConnection:(id)connection withError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  statementsCopy = statements;
  connectionCopy = connection;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = statementsCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    errorCopy = error;
    v13 = *v26;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 sql];
        parameters = [v15 parameters];
        v24 = 0;
        v18 = [connectionCopy executeUpdate:v16 withParameters:parameters error:&v24];
        v19 = v24;

        if (v18)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (!v20)
        {
          if (errorCopy)
          {
            v21 = v19;
            *errorCopy = v19;
          }

          goto LABEL_19;
        }

        if (([(ML3BulkStatementExecutionOperation *)self isCancelled]& 1) != 0)
        {
          v19 = 0;
          LOBYTE(v18) = 0;
          goto LABEL_19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v19 = 0;
      LOBYTE(v18) = 1;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
    LOBYTE(v18) = 1;
  }

LABEL_19:

  return v18;
}

- (BOOL)_execute:(id *)_execute
{
  v12[4] = *MEMORY[0x277D85DE8];
  attributes = [(ML3DatabaseOperation *)self attributes];
  v6 = [attributes objectForKey:@"MLDatabaseOperationAttributeStatementsKey"];
  transaction = [(ML3DatabaseOperation *)self transaction];
  connection = [transaction connection];

  v12[0] = 0;
  LOBYTE(transaction) = [(ML3BulkStatementExecutionOperation *)self _executeStatements:v6 onConnection:connection withError:v12];
  v9 = v12[0];

  v10 = v9;
  *_execute = v9;

  return transaction;
}

@end