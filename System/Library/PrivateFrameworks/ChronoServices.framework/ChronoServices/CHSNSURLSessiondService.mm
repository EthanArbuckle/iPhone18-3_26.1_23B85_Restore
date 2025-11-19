@interface CHSNSURLSessiondService
- (CHSNSURLSessiondService)init;
- (CHSNSURLSessiondService)initWithConnection:(id)a3;
- (id)URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)a3 info:(id)a4;
@end

@implementation CHSNSURLSessiondService

- (CHSNSURLSessiondService)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSNSURLSessiondService *)self initWithConnection:v3];

  return v4;
}

- (CHSNSURLSessiondService)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSNSURLSessiondService;
  v6 = [(CHSNSURLSessiondService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (id)URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)a3 info:(id)a4
{
  v4 = [(CHSChronoServicesConnection *)self->_connection _URLSessionDidCompleteForExtensionWithBundleIdentifier:a3 info:a4];

  return v4;
}

@end