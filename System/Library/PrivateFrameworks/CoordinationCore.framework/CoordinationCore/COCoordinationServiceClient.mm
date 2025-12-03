@interface COCoordinationServiceClient
- (BOOL)isEqual:(id)equal;
- (COCoordinationServiceClient)initWithConnection:(id)connection;
- (NSString)clientBundleIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)_withLock:(id)lock;
@end

@implementation COCoordinationServiceClient

- (COCoordinationServiceClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = COCoordinationServiceClient;
  v6 = [(COCoordinationServiceClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      connection = self->_connection;
      connection = [(COCoordinationServiceClient *)equalCopy connection];
      v7 = connection == connection;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  connection = [(COCoordinationServiceClient *)self connection];
  v3 = [connection hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  connection = [(COCoordinationServiceClient *)self connection];
  v7 = [v3 stringWithFormat:@"<%@: %p, connection = %p>", v5, self, connection];

  return v7;
}

- (NSString)clientBundleIdentifier
{
  connection = [(COCoordinationServiceClient *)self connection];
  co_ClientBundleIdentifier = [connection co_ClientBundleIdentifier];

  return co_ClientBundleIdentifier;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

@end