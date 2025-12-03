@interface AXHAListenerHelper
- (AXHAListenerHelper)initWithListenerAddress:(id)address;
- (void)dealloc;
@end

@implementation AXHAListenerHelper

- (AXHAListenerHelper)initWithListenerAddress:(id)address
{
  addressCopy = address;
  v9.receiver = self;
  v9.super_class = AXHAListenerHelper;
  v6 = [(AXHAListenerHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listenerAddress, address);
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