@interface CHSKeepAliveService
- (CHSKeepAliveService)init;
- (CHSKeepAliveService)initWithConnection:(id)connection;
- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)identifier reason:(id)reason error:(id *)error;
@end

@implementation CHSKeepAliveService

- (CHSKeepAliveService)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSKeepAliveService *)self initWithConnection:v3];

  return v4;
}

- (CHSKeepAliveService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CHSKeepAliveService;
  v6 = [(CHSKeepAliveService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)identifier reason:(id)reason error:(id *)error
{
  v5 = [(CHSChronoServicesConnection *)self->_connection acquireKeepAliveAssertionForExtensionBundleIdentifier:identifier reason:reason error:error];

  return v5;
}

@end