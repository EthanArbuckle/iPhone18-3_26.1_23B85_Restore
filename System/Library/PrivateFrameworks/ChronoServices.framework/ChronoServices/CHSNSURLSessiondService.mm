@interface CHSNSURLSessiondService
- (CHSNSURLSessiondService)init;
- (CHSNSURLSessiondService)initWithConnection:(id)connection;
- (id)URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)identifier info:(id)info;
@end

@implementation CHSNSURLSessiondService

- (CHSNSURLSessiondService)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSNSURLSessiondService *)self initWithConnection:v3];

  return v4;
}

- (CHSNSURLSessiondService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CHSNSURLSessiondService;
  v6 = [(CHSNSURLSessiondService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (id)URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)identifier info:(id)info
{
  v4 = [(CHSChronoServicesConnection *)self->_connection _URLSessionDidCompleteForExtensionWithBundleIdentifier:identifier info:info];

  return v4;
}

@end