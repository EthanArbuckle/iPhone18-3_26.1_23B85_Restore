@interface _FBSDisplayLayoutServiceAssertion
- (FBSDisplayLayout)currentLayout;
- (_FBSDisplayLayoutServiceAssertion)initWithEndpoint:(id)endpoint qos:(char)qos observer:(id)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _FBSDisplayLayoutServiceAssertion

- (FBSDisplayLayout)currentLayout
{
  os_unfair_lock_lock(&self->_lock);
  currentLayout = [(_FBSDisplayLayoutService *)self->_lock_service currentLayout];
  os_unfair_lock_unlock(&self->_lock);

  return currentLayout;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_service = self->_lock_service;
  if (lock_service)
  {
    [(_FBSDisplayLayoutService *)lock_service removeObserverForKey:self];
    [_FBSDisplayLayoutEndpointServices _checkinService:self->_lock_service];
    v4 = self->_lock_service;
    self->_lock_service = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(_FBSDisplayLayoutServiceAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _FBSDisplayLayoutServiceAssertion;
  [(_FBSDisplayLayoutServiceAssertion *)&v3 dealloc];
}

- (_FBSDisplayLayoutServiceAssertion)initWithEndpoint:(id)endpoint qos:(char)qos observer:(id)observer
{
  qosCopy = qos;
  endpointCopy = endpoint;
  observerCopy = observer;
  v15.receiver = self;
  v15.super_class = _FBSDisplayLayoutServiceAssertion;
  v10 = [(_FBSDisplayLayoutServiceAssertion *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = [_FBSDisplayLayoutEndpointServices _checkoutServiceWithEndpoint:endpointCopy qos:qosCopy];
    lock_service = v11->_lock_service;
    v11->_lock_service = v12;

    if (observerCopy)
    {
      [(_FBSDisplayLayoutService *)v11->_lock_service addObserver:observerCopy forKey:v11];
    }
  }

  return v11;
}

@end