@interface IDSPeerIDManagerEndpointQueryListener
- (IDSPeerIDManagerEndpointQueryListener)initWithQueryCompletionBlock:(id)block queue:(id)queue;
@end

@implementation IDSPeerIDManagerEndpointQueryListener

- (IDSPeerIDManagerEndpointQueryListener)initWithQueryCompletionBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = IDSPeerIDManagerEndpointQueryListener;
  v8 = [(IDSPeerIDManagerEndpointQueryListener *)&v12 init];
  if (v8)
  {
    v9 = objc_retainBlock(blockCopy);
    queryCompletionBlock = v8->_queryCompletionBlock;
    v8->_queryCompletionBlock = v9;

    objc_storeStrong(&v8->_queue, queue);
  }

  return v8;
}

@end