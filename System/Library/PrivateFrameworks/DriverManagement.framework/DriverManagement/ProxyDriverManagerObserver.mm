@interface ProxyDriverManagerObserver
- (ProxyDriverManagerObserver)initWithObserver:(id)observer;
@end

@implementation ProxyDriverManagerObserver

- (ProxyDriverManagerObserver)initWithObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = ProxyDriverManagerObserver;
  v6 = [(ProxyDriverManagerObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observer, observer);
  }

  return v7;
}

@end