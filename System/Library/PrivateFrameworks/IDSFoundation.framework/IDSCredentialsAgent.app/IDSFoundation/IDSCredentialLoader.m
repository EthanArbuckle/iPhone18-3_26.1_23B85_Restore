@interface IDSCredentialLoader
- (IDSCredentialLoader)initWithCommand:(id)a3 completionBlock:(id)a4;
@end

@implementation IDSCredentialLoader

- (IDSCredentialLoader)initWithCommand:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = IDSCredentialLoader;
  v8 = [(IDSCredentialLoader *)&v16 init];
  if (v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating loader with command: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v15 = v6;
      _IDSLogV();
    }

    v10 = [v7 copy];
    block = v8->_block;
    v8->_block = v10;

    v12 = +[NSString stringGUID];
    uniqueID = v8->_uniqueID;
    v8->_uniqueID = v12;
  }

  return v8;
}

@end