@interface IDSConnectionContext
- (IDSConnectionContext)initWithReadHandler:(id)a3;
@end

@implementation IDSConnectionContext

- (IDSConnectionContext)initWithReadHandler:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IDSConnectionContext;
  v5 = [(IDSConnectionContext *)&v13 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    readHandler = v5->_readHandler;
    v5->_readHandler = v6;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_retainBlock(v5->_readHandler);
    *buf = 134218240;
    v15 = v9;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "initWithReadHandler: readHandler: %p, self: %p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v11 = objc_retainBlock(v5->_readHandler);
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v12 = objc_retainBlock(v5->_readHandler);
        _IDSLogV();
      }
    }
  }

  return v5;
}

@end