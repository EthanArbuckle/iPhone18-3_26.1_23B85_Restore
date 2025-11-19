@interface BLOSTransaction
- (BLOSTransaction)initWithTransactionName:(const char *)a3;
- (void)dealloc;
- (void)endTransaction;
@end

@implementation BLOSTransaction

- (BLOSTransaction)initWithTransactionName:(const char *)a3
{
  v9.receiver = self;
  v9.super_class = BLOSTransaction;
  v4 = [(BLOSTransaction *)&v9 init];
  if (v4)
  {
    v5 = os_transaction_create();
    osTransaction = v4->_osTransaction;
    v4->_osTransaction = v5;

    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v11 = a3;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[Transaction]: Created transaction %{public}s(%p)", buf, 0x16u);
    }
  }

  return v4;
}

- (void)endTransaction
{
  if (self->_osTransaction)
  {
    v3 = os_transaction_copy_description();
    v4 = BLServiceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136446466;
      v8 = v3;
      v9 = 2048;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[Transaction]: Ending transaction %{public}s(%p)", &v7, 0x16u);
    }

    if (v3)
    {
      free(v3);
    }
  }

  else
  {
    v5 = BLServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Transaction]: EndTransaction was called but transaction was already nil.(%p)", &v7, 0xCu);
    }
  }

  osTransaction = self->_osTransaction;
  self->_osTransaction = 0;
}

- (void)dealloc
{
  if (self->_osTransaction)
  {
    v3 = os_transaction_copy_description();
    v4 = BLServiceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v7 = v3;
      v8 = 2048;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[Transaction]: Ending transaction %{public}s(%p)", buf, 0x16u);
    }

    if (v3)
    {
      free(v3);
    }
  }

  v5.receiver = self;
  v5.super_class = BLOSTransaction;
  [(BLOSTransaction *)&v5 dealloc];
}

@end