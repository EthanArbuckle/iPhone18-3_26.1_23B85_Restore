@interface BDSOSTransaction
- (BDSOSTransaction)initWithTransactionName:(const char *)name;
- (BDSOSTransactionDelegate)delegate;
- (void)dealloc;
- (void)endTransaction;
- (void)transactionNeedsMoreTime;
@end

@implementation BDSOSTransaction

- (BDSOSTransaction)initWithTransactionName:(const char *)name
{
  v15 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = BDSOSTransaction;
  v4 = [(BDSOSTransaction *)&v10 init];
  if (v4)
  {
    v5 = os_transaction_create();
    osTransaction = v4->_osTransaction;
    v4->_osTransaction = v5;

    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      nameCopy = name;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "[Transaction]: Created transaction %{public}s(%p)", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)transactionNeedsMoreTime
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_osTransaction)
  {
    v3 = os_transaction_copy_description();
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      selfCopy2 = v3;
      v10 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "[Transaction]: Transaction needs more time %{public}s(%p)", &v8, 0x16u);
    }

    osTransaction = self->_osTransaction;
    os_transaction_needs_more_time();
    if (v3)
    {
      free(v3);
    }
  }

  else
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "[Transaction]: transactionNeedsMoreTime was called but transaction was already nil.(%p)", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)endTransaction
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_osTransaction)
  {
    v3 = os_transaction_copy_description();
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      selfCopy2 = v3;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "[Transaction]: Ending transaction %{public}s(%p)", &v10, 0x16u);
    }

    delegate = [(BDSOSTransaction *)self delegate];

    if (delegate)
    {
      delegate2 = [(BDSOSTransaction *)self delegate];
      [delegate2 transactionWillEndWithName:v3];
    }

    if (v3)
    {
      free(v3);
    }
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "[Transaction]: EndTransaction was called but transaction was already nil.(%p)", &v10, 0xCu);
    }
  }

  osTransaction = self->_osTransaction;
  self->_osTransaction = 0;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_osTransaction)
  {
    v3 = os_transaction_copy_description();
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v10 = v3;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "[Transaction]: Ending transaction %{public}s(%p)", buf, 0x16u);
    }

    delegate = [(BDSOSTransaction *)self delegate];

    if (delegate)
    {
      delegate2 = [(BDSOSTransaction *)self delegate];
      [delegate2 transactionWillEndWithName:v3];
    }

    if (v3)
    {
      free(v3);
    }
  }

  v8.receiver = self;
  v8.super_class = BDSOSTransaction;
  [(BDSOSTransaction *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (BDSOSTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end