@interface CLIntersiloProxyToInitiator
- (CLIntersiloProxy)peer;
- (CLIntersiloProxyToInitiator)initWithDelegateObject:(id)a3 delegateSilo:(id)a4 uninitializedPeer:(id)a5;
@end

@implementation CLIntersiloProxyToInitiator

- (CLIntersiloProxy)peer
{
  WeakRetained = objc_loadWeakRetained(&self->_peer);

  return WeakRetained;
}

- (CLIntersiloProxyToInitiator)initWithDelegateObject:(id)a3 delegateSilo:(id)a4 uninitializedPeer:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = CLIntersiloProxyToInitiator;
  v9 = [(CLIntersiloProxy *)&v12 initWithDelegateObject:a3 delegateSilo:a4];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_peer, v8);
  }

  return v10;
}

@end