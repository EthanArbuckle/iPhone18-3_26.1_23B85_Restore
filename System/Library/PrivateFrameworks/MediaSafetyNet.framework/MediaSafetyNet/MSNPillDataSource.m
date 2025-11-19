@interface MSNPillDataSource
- (MSNPillDataSource)initWithConnection:(id)a3 identifiers:(id)a4;
- (NSXPCConnection)connection;
@end

@implementation MSNPillDataSource

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (MSNPillDataSource)initWithConnection:(id)a3 identifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MSNPillDataSource;
  v8 = [(MSNPillDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, v6);
    objc_storeStrong(&v9->_identifiers, a4);
  }

  return v9;
}

@end