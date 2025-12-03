@interface CLIntersiloProxyToRecipient
- (CLIntersiloProxyToRecipient)initWithUninitializedPeer:(id)peer;
@end

@implementation CLIntersiloProxyToRecipient

- (CLIntersiloProxyToRecipient)initWithUninitializedPeer:(id)peer
{
  peerCopy = peer;
  v9.receiver = self;
  v9.super_class = CLIntersiloProxyToRecipient;
  v6 = [(CLIntersiloProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peer, peer);
  }

  return v7;
}

@end