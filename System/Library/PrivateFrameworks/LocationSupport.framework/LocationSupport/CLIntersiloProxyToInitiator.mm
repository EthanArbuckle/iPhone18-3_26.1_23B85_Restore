@interface CLIntersiloProxyToInitiator
- (CLIntersiloProxy)peer;
- (CLIntersiloProxyToInitiator)initWithDelegateObject:(id)object delegateSilo:(id)silo uninitializedPeer:(id)peer;
@end

@implementation CLIntersiloProxyToInitiator

- (CLIntersiloProxy)peer
{
  WeakRetained = objc_loadWeakRetained(&self->_peer);

  return WeakRetained;
}

- (CLIntersiloProxyToInitiator)initWithDelegateObject:(id)object delegateSilo:(id)silo uninitializedPeer:(id)peer
{
  peerCopy = peer;
  v12.receiver = self;
  v12.super_class = CLIntersiloProxyToInitiator;
  v9 = [(CLIntersiloProxy *)&v12 initWithDelegateObject:object delegateSilo:silo];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_peer, peerCopy);
  }

  return v10;
}

@end