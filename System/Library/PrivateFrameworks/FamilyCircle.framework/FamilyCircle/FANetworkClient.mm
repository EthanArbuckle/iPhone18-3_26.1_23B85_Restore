@interface FANetworkClient
- (FANetworkClient)initWithNetworkService:(id)service;
@end

@implementation FANetworkClient

- (FANetworkClient)initWithNetworkService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = FANetworkClient;
  v6 = [(FANetworkClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkService, service);
  }

  return v7;
}

@end