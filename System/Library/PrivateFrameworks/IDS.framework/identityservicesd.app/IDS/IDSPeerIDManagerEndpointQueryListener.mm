@interface IDSPeerIDManagerEndpointQueryListener
- (IDSPeerIDManagerEndpointQueryListener)initWithQueryCompletionBlock:(id)a3 queue:(id)a4;
@end

@implementation IDSPeerIDManagerEndpointQueryListener

- (IDSPeerIDManagerEndpointQueryListener)initWithQueryCompletionBlock:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IDSPeerIDManagerEndpointQueryListener;
  v8 = [(IDSPeerIDManagerEndpointQueryListener *)&v12 init];
  if (v8)
  {
    v9 = objc_retainBlock(v6);
    queryCompletionBlock = v8->_queryCompletionBlock;
    v8->_queryCompletionBlock = v9;

    objc_storeStrong(&v8->_queue, a4);
  }

  return v8;
}

@end