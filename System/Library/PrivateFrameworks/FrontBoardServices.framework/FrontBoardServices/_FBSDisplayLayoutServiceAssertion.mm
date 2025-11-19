@interface _FBSDisplayLayoutServiceAssertion
- (FBSDisplayLayout)currentLayout;
- (_FBSDisplayLayoutServiceAssertion)initWithEndpoint:(id)a3 qos:(char)a4 observer:(id)a5;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _FBSDisplayLayoutServiceAssertion

- (FBSDisplayLayout)currentLayout
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_FBSDisplayLayoutService *)self->_lock_service currentLayout];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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

- (_FBSDisplayLayoutServiceAssertion)initWithEndpoint:(id)a3 qos:(char)a4 observer:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = _FBSDisplayLayoutServiceAssertion;
  v10 = [(_FBSDisplayLayoutServiceAssertion *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = [_FBSDisplayLayoutEndpointServices _checkoutServiceWithEndpoint:v8 qos:v6];
    lock_service = v11->_lock_service;
    v11->_lock_service = v12;

    if (v9)
    {
      [(_FBSDisplayLayoutService *)v11->_lock_service addObserver:v9 forKey:v11];
    }
  }

  return v11;
}

@end