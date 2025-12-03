@interface _EDThreadPersistence_ThreadScope
- (BOOL)_dropTemporaryView;
- (BOOL)_ensureTempScopeView;
- (BOOL)createMessagesWithThreadObjectID:(id)d wrappedMessages:(id)messages threadMessages:(id *)threadMessages;
- (_EDThreadPersistence_ThreadScope)initWithCache:(id)cache messagePersistence:(id)persistence threadScopeDatabaseID:(int64_t)d threadScopeExpression:(id)expression;
@end

@implementation _EDThreadPersistence_ThreadScope

- (_EDThreadPersistence_ThreadScope)initWithCache:(id)cache messagePersistence:(id)persistence threadScopeDatabaseID:(int64_t)d threadScopeExpression:(id)expression
{
  cacheCopy = cache;
  persistenceCopy = persistence;
  expressionCopy = expression;
  v17.receiver = self;
  v17.super_class = _EDThreadPersistence_ThreadScope;
  v13 = [(_EDThreadPersistence_ThreadScope *)&v17 init];
  if (v13)
  {
    v14 = [[_EDThreadPersistence_SQLHelper alloc] initWithCache:cacheCopy];
    sqlHelper = v13->_sqlHelper;
    v13->_sqlHelper = v14;

    objc_storeStrong(&v13->_messagePersistence, persistence);
    v13->_threadScopeDatabaseID = d;
    objc_storeStrong(&v13->_threadScopeExpression, expression);
  }

  return v13;
}

- (BOOL)createMessagesWithThreadObjectID:(id)d wrappedMessages:(id)messages threadMessages:(id *)threadMessages
{
  dCopy = d;
  messagesCopy = messages;
  _ensureTempScopeView = [(_EDThreadPersistence_ThreadScope *)self _ensureTempScopeView];
  v11 = !_ensureTempScopeView;
  if (!threadMessages)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v12 = [_EDThreadPersistence_ThreadMessages alloc];
    sqlHelper = [(_EDThreadPersistence_ThreadScope *)self sqlHelper];
    messagePersistence = [(_EDThreadPersistence_ThreadScope *)self messagePersistence];
    *threadMessages = [(_EDThreadPersistence_ThreadMessages *)v12 initWithSQLHelper:sqlHelper messagePersistence:messagePersistence threadScopeDatabaseID:[(_EDThreadPersistence_ThreadScope *)self threadScopeDatabaseID] threadObjectID:dCopy wrappedMessages:messagesCopy];
  }

  return _ensureTempScopeView;
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
      threadScopeExpression = [(_EDThreadPersistence_ThreadScope *)self threadScopeExpression];
      ef_SQLExpression = [threadScopeExpression ef_SQLExpression];
      v8 = [v5 stringWithFormat:@"CREATE TEMP VIEW temp_thread_scope_message AS SELECT * FROM messages WHERE %@", ef_SQLExpression];;

      sqlHelper = [(_EDThreadPersistence_ThreadScope *)self sqlHelper];
      connection = [sqlHelper connection];
      v2 = [connection executeStatementString:v8 errorMessage:@"CREATE TEMP VIEW"];

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
  sqlHelper = [(_EDThreadPersistence_ThreadScope *)self sqlHelper];
  connection = [sqlHelper connection];
  v4 = [connection executeStatementString:@"DROP VIEW IF EXISTS temp_thread_scope_message;" errorMessage:@"DROP TEMP VIEW"];

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