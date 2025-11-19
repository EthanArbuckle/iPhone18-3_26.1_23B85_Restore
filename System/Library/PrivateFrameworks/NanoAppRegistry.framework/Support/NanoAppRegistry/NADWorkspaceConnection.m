@interface NADWorkspaceConnection
- (NADWorkspaceConnection)initWithApplicationStore:(id)a3;
@end

@implementation NADWorkspaceConnection

- (NADWorkspaceConnection)initWithApplicationStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NADWorkspaceConnection;
  v6 = [(NADWorkspaceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationStore, a3);
  }

  return v7;
}

@end