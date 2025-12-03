@interface IDSDXPCPinnedIdentity
- (IDSDXPCPinnedIdentity)initWithQueue:(id)queue connection:(id)connection;
- (IDSDXPCPinnedIdentity)initWithQueue:(id)queue connection:(id)connection pinnedIdentityController:(id)controller;
@end

@implementation IDSDXPCPinnedIdentity

- (IDSDXPCPinnedIdentity)initWithQueue:(id)queue connection:(id)connection
{
  connectionCopy = connection;
  queueCopy = queue;
  v8 = +[IDSPinnedIdentityController sharedInstance];
  v9 = [(IDSDXPCPinnedIdentity *)self initWithQueue:queueCopy connection:connectionCopy pinnedIdentityController:v8];

  return v9;
}

- (IDSDXPCPinnedIdentity)initWithQueue:(id)queue connection:(id)connection pinnedIdentityController:(id)controller
{
  queueCopy = queue;
  connectionCopy = connection;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = IDSDXPCPinnedIdentity;
  v12 = [(IDSDXPCPinnedIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_connection, connection);
    objc_storeStrong(&v13->_pinnedIdentityController, controller);
  }

  return v13;
}

@end