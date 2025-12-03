@interface NADWorkspaceConnection
- (NADWorkspaceConnection)initWithApplicationStore:(id)store;
@end

@implementation NADWorkspaceConnection

- (NADWorkspaceConnection)initWithApplicationStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = NADWorkspaceConnection;
  v6 = [(NADWorkspaceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationStore, store);
  }

  return v7;
}

@end