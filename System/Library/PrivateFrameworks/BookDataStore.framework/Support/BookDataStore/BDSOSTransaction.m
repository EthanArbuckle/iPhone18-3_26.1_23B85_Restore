@interface BDSOSTransaction
- (BDSOSTransaction)initWithTransactionName:(const char *)a3;
- (BDSOSTransactionDelegate)delegate;
- (void)dealloc;
- (void)endTransaction;
- (void)transactionNeedsMoreTime;
@end

@implementation BDSOSTransaction

- (void)endTransaction
{
  if (self->_osTransaction)
  {
    v3 = os_transaction_copy_description();
    v4 = sub_100002660();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446466;
      v10 = v3;
      v11 = 2048;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Transaction]: Ending transaction %{public}s(%p)", &v9, 0x16u);
    }

    v5 = [(BDSOSTransaction *)self delegate];

    if (v5)
    {
      v6 = [(BDSOSTransaction *)self delegate];
      [v6 transactionWillEndWithName:v3];
    }

    if (v3)
    {
      free(v3);
    }
  }

  else
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Transaction]: EndTransaction was called but transaction was already nil.(%p)", &v9, 0xCu);
    }
  }

  osTransaction = self->_osTransaction;
  self->_osTransaction = 0;
}

- (BDSOSTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  if (self->_osTransaction)
  {
    v3 = os_transaction_copy_description();
    v4 = sub_100002660();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v9 = v3;
      v10 = 2048;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Transaction]: Ending transaction %{public}s(%p)", buf, 0x16u);
    }

    v5 = [(BDSOSTransaction *)self delegate];

    if (v5)
    {
      v6 = [(BDSOSTransaction *)self delegate];
      [v6 transactionWillEndWithName:v3];
    }

    if (v3)
    {
      free(v3);
    }
  }

  v7.receiver = self;
  v7.super_class = BDSOSTransaction;
  [(BDSOSTransaction *)&v7 dealloc];
}

- (BDSOSTransaction)initWithTransactionName:(const char *)a3
{
  v9.receiver = self;
  v9.super_class = BDSOSTransaction;
  v4 = [(BDSOSTransaction *)&v9 init];
  if (v4)
  {
    v5 = os_transaction_create();
    osTransaction = v4->_osTransaction;
    v4->_osTransaction = v5;

    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v11 = a3;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Transaction]: Created transaction %{public}s(%p)", buf, 0x16u);
    }
  }

  return v4;
}

- (void)transactionNeedsMoreTime
{
  if (self->_osTransaction)
  {
    v3 = os_transaction_copy_description();
    v4 = sub_100002660();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = v3;
      v9 = 2048;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Transaction]: Transaction needs more time %{public}s(%p)", &v7, 0x16u);
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
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Transaction]: transactionNeedsMoreTime was called but transaction was already nil.(%p)", &v7, 0xCu);
    }
  }
}

@end