@interface XPCConnectionInfo
- (XPCConnectionInfo)initWithXPCConnection:(id)connection;
@end

@implementation XPCConnectionInfo

- (XPCConnectionInfo)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = XPCConnectionInfo;
  v6 = [(XPCConnectionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (connectionCopy)
    {
      objc_storeStrong(&v6->_XPCConnection, connection);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

@end