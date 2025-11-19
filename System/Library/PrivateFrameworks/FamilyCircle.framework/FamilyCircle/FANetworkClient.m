@interface FANetworkClient
- (FANetworkClient)initWithNetworkService:(id)a3;
@end

@implementation FANetworkClient

- (FANetworkClient)initWithNetworkService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FANetworkClient;
  v6 = [(FANetworkClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkService, a3);
  }

  return v7;
}

@end