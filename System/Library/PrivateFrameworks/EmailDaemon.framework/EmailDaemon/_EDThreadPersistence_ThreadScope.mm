@interface _EDThreadPersistence_ThreadScope
- (BOOL)_dropTemporaryView;
- (BOOL)_ensureTempScopeView;
- (BOOL)createMessagesWithThreadObjectID:(id)a3 wrappedMessages:(id)a4 threadMessages:(id *)a5;
- (_EDThreadPersistence_ThreadScope)initWithCache:(id)a3 messagePersistence:(id)a4 threadScopeDatabaseID:(int64_t)a5 threadScopeExpression:(id)a6;
@end

@implementation _EDThreadPersistence_ThreadScope

- (_EDThreadPersistence_ThreadScope)initWithCache:(id)a3 messagePersistence:(id)a4 threadScopeDatabaseID:(int64_t)a5 threadScopeExpression:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = _EDThreadPersistence_ThreadScope;
  v13 = [(_EDThreadPersistence_ThreadScope *)&v17 init];
  if (v13)
  {
    v14 = [[_EDThreadPersistence_SQLHelper alloc] initWithCache:v10];
    sqlHelper = v13->_sqlHelper;
    v13->_sqlHelper = v14;

    objc_storeStrong(&v13->_messagePersistence, a4);
    v13->_threadScopeDatabaseID = a5;
    objc_storeStrong(&v13->_threadScopeExpression, a6);
  }

  return v13;
}

- (BOOL)createMessagesWithThreadObjectID:(id)a3 wrappedMessages:(id)a4 threadMessages:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(_EDThreadPersistence_ThreadScope *)self _ensureTempScopeView];
  v11 = !v10;
  if (!a5)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v12 = [_EDThreadPersistence_ThreadMessages alloc];
    v13 = [(_EDThreadPersistence_ThreadScope *)self sqlHelper];
    v14 = [(_EDThreadPersistence_ThreadScope *)self messagePersistence];
    *a5 = [(_EDThreadPersistence_ThreadMessages *)v12 initWithSQLHelper:v13 messagePersistence:v14 threadScopeDatabaseID:[(_EDThreadPersistence_ThreadScope *)self threadScopeDatabaseID] threadObjectID:v8 wrappedMessages:v9];
  }

  return v10;
}

- (BOOL)_ensureTempScopeView
{
  v2 = 1;
  if (!self->_didCreateTempScopeView)
  {
    self->_didCreateTempScopeView = 1;
    v4 = objc_autoreleasePoolPush();
    if ([(_EDThreadPersistence_ThreadScope *)self _dropTemporaryView])
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [(_EDThreadPersistence_ThreadScope *)self threadScopeExpression];
      v7 = [v6 ef_SQLExpression];
      v8 = [v5 stringWithFormat:@"CREATE TEMP VIEW temp_thread_scope_message AS SELECT * FROM messages WHERE %@", v7];;

      v9 = [(_EDThreadPersistence_ThreadScope *)self sqlHelper];
      v10 = [v9 connection];
      v2 = [v10 executeStatementString:v8 errorMessage:@"CREATE TEMP VIEW"];

      if ((v2 & 1) == 0)
      {
        v11 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [_EDThreadPersistence_ThreadScope _ensureTempScopeView];
        }
      }
    }

    else
    {
      v2 = 0;
    }

    objc_autoreleasePoolPop(v4);
  }

  return v2;
}

- (BOOL)_dropTemporaryView
{
  v2 = [(_EDThreadPersistence_ThreadScope *)self sqlHelper];
  v3 = [v2 connection];
  v4 = [v3 executeStatementString:@"DROP VIEW IF EXISTS temp_thread_scope_message;" errorMessage:@"DROP TEMP VIEW"];

  if ((v4 & 1) == 0)
  {
    v5 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_EDThreadPersistence_ThreadScope _dropTemporaryView];
    }
  }

  return v4;
}

@end