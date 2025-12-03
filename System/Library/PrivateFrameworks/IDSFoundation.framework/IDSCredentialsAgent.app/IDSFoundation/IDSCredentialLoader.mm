@interface IDSCredentialLoader
- (IDSCredentialLoader)initWithCommand:(id)command completionBlock:(id)block;
@end

@implementation IDSCredentialLoader

- (IDSCredentialLoader)initWithCommand:(id)command completionBlock:(id)block
{
  commandCopy = command;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = IDSCredentialLoader;
  v8 = [(IDSCredentialLoader *)&v16 init];
  if (v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = commandCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating loader with command: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v15 = commandCopy;
      _IDSLogV();
    }

    v10 = [blockCopy copy];
    block = v8->_block;
    v8->_block = v10;

    v12 = +[NSString stringGUID];
    uniqueID = v8->_uniqueID;
    v8->_uniqueID = v12;
  }

  return v8;
}

@end