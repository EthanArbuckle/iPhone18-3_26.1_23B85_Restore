@interface ML3BulkStatementExecutionOperation
- (BOOL)_execute:(id *)a3;
- (BOOL)_executeStatements:(id)a3 onConnection:(id)a4 withError:(id *)a5;
@end

@implementation ML3BulkStatementExecutionOperation

- (BOOL)_executeStatements:(id)a3 onConnection:(id)a4 withError:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v23 = a5;
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
        v17 = [v15 parameters];
        v24 = 0;
        v18 = [v9 executeUpdate:v16 withParameters:v17 error:&v24];
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
          if (v23)
          {
            v21 = v19;
            *v23 = v19;
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

- (BOOL)_execute:(id *)a3
{
  v12[4] = *MEMORY[0x277D85DE8];
  v5 = [(ML3DatabaseOperation *)self attributes];
  v6 = [v5 objectForKey:@"MLDatabaseOperationAttributeStatementsKey"];
  v7 = [(ML3DatabaseOperation *)self transaction];
  v8 = [v7 connection];

  v12[0] = 0;
  LOBYTE(v7) = [(ML3BulkStatementExecutionOperation *)self _executeStatements:v6 onConnection:v8 withError:v12];
  v9 = v12[0];

  v10 = v9;
  *a3 = v9;

  return v7;
}

@end