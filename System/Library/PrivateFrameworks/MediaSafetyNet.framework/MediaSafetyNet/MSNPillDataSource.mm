@interface MSNPillDataSource
- (MSNPillDataSource)initWithConnection:(id)connection identifiers:(id)identifiers;
- (NSXPCConnection)connection;
@end

@implementation MSNPillDataSource

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (MSNPillDataSource)initWithConnection:(id)connection identifiers:(id)identifiers
{
  connectionCopy = connection;
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = MSNPillDataSource;
  v8 = [(MSNPillDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeStrong(&v9->_identifiers, identifiers);
  }

  return v9;
}

@end