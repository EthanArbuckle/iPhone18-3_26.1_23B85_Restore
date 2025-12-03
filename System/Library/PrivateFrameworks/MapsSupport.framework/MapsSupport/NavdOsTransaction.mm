@interface NavdOsTransaction
- (NavdOsTransaction)initWithTransactionName:(const char *)name;
- (void)dealloc;
- (void)endTransaction;
@end

@implementation NavdOsTransaction

- (NavdOsTransaction)initWithTransactionName:(const char *)name
{
  v9.receiver = self;
  v9.super_class = NavdOsTransaction;
  v4 = [(NavdOsTransaction *)&v9 init];
  if (v4)
  {
    v5 = os_transaction_create();
    osTransaction = v4->_osTransaction;
    v4->_osTransaction = v5;

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136380931;
      nameCopy = name;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Created transaction %{private}s(%p)", buf, 0x16u);
    }
  }

  return v4;
}

- (void)endTransaction
{
  v3 = GEOFindOrCreateLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    if (self->_osTransaction)
    {
      v5 = os_transaction_copy_description();
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136380931;
        selfCopy2 = v5;
        v11 = 2048;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Ending transaction %{private}s(%p)", &v9, 0x16u);
      }

      if (v5)
      {
        free(v5);
      }
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = 134217984;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "EndTransaction was called but transaction was already nil.(%p)", &v9, 0xCu);
      }
    }
  }

  osTransaction = self->_osTransaction;
  self->_osTransaction = 0;
}

- (void)dealloc
{
  if (self->_osTransaction)
  {
    v3 = GEOFindOrCreateLog();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      osTransaction = self->_osTransaction;
      v6 = os_transaction_copy_description();
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136380931;
        v10 = v6;
        v11 = 2048;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Ending transaction %{private}s(%p)", buf, 0x16u);
      }

      if (v6)
      {
        free(v6);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = NavdOsTransaction;
  [(NavdOsTransaction *)&v8 dealloc];
}

@end