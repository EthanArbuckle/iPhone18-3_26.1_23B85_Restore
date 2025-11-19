@interface XPCConnectionInfo
- (XPCConnectionInfo)initWithXPCConnection:(id)a3;
@end

@implementation XPCConnectionInfo

- (XPCConnectionInfo)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = XPCConnectionInfo;
  v6 = [(XPCConnectionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_XPCConnection, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

@end