@interface IDSDXPCPinnedIdentity
- (IDSDXPCPinnedIdentity)initWithQueue:(id)a3 connection:(id)a4;
- (IDSDXPCPinnedIdentity)initWithQueue:(id)a3 connection:(id)a4 pinnedIdentityController:(id)a5;
@end

@implementation IDSDXPCPinnedIdentity

- (IDSDXPCPinnedIdentity)initWithQueue:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IDSPinnedIdentityController sharedInstance];
  v9 = [(IDSDXPCPinnedIdentity *)self initWithQueue:v7 connection:v6 pinnedIdentityController:v8];

  return v9;
}

- (IDSDXPCPinnedIdentity)initWithQueue:(id)a3 connection:(id)a4 pinnedIdentityController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSDXPCPinnedIdentity;
  v12 = [(IDSDXPCPinnedIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    objc_storeStrong(&v13->_connection, a4);
    objc_storeStrong(&v13->_pinnedIdentityController, a5);
  }

  return v13;
}

@end