@interface AXHAListenerHelper
- (AXHAListenerHelper)initWithListenerAddress:(id)a3;
- (void)dealloc;
@end

@implementation AXHAListenerHelper

- (AXHAListenerHelper)initWithListenerAddress:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXHAListenerHelper;
  v6 = [(AXHAListenerHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listenerAddress, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[AXHAServer sharedInstance];
  [v3 unregisterUpdateListenerHash:self->_listenerAddress];

  v4.receiver = self;
  v4.super_class = AXHAListenerHelper;
  [(AXHAListenerHelper *)&v4 dealloc];
}

@end