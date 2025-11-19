@interface COCoordinationServiceClient
- (BOOL)isEqual:(id)a3;
- (COCoordinationServiceClient)initWithConnection:(id)a3;
- (NSString)clientBundleIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)_withLock:(id)a3;
@end

@implementation COCoordinationServiceClient

- (COCoordinationServiceClient)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = COCoordinationServiceClient;
  v6 = [(COCoordinationServiceClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      connection = self->_connection;
      v6 = [(COCoordinationServiceClient *)v4 connection];
      v7 = connection == v6;
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
  v2 = [(COCoordinationServiceClient *)self connection];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COCoordinationServiceClient *)self connection];
  v7 = [v3 stringWithFormat:@"<%@: %p, connection = %p>", v5, self, v6];

  return v7;
}

- (NSString)clientBundleIdentifier
{
  v2 = [(COCoordinationServiceClient *)self connection];
  v3 = [v2 co_ClientBundleIdentifier];

  return v3;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

@end