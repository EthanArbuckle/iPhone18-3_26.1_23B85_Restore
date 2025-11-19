@interface ProxyDriverManagerObserver
- (ProxyDriverManagerObserver)initWithObserver:(id)a3;
@end

@implementation ProxyDriverManagerObserver

- (ProxyDriverManagerObserver)initWithObserver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ProxyDriverManagerObserver;
  v6 = [(ProxyDriverManagerObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observer, a3);
  }

  return v7;
}

@end