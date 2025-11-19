@interface CHSKeepAliveService
- (CHSKeepAliveService)init;
- (CHSKeepAliveService)initWithConnection:(id)a3;
- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)a3 reason:(id)a4 error:(id *)a5;
@end

@implementation CHSKeepAliveService

- (CHSKeepAliveService)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSKeepAliveService *)self initWithConnection:v3];

  return v4;
}

- (CHSKeepAliveService)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSKeepAliveService;
  v6 = [(CHSKeepAliveService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)a3 reason:(id)a4 error:(id *)a5
{
  v5 = [(CHSChronoServicesConnection *)self->_connection acquireKeepAliveAssertionForExtensionBundleIdentifier:a3 reason:a4 error:a5];

  return v5;
}

@end