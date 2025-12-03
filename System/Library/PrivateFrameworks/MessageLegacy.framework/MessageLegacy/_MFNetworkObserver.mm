@interface _MFNetworkObserver
- (_MFNetworkObserver)initWithBlock:(id)block queue:(id)queue;
@end

@implementation _MFNetworkObserver

- (_MFNetworkObserver)initWithBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = _MFNetworkObserver;
  v8 = [(_MFNetworkObserver *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(blockCopy);
    block = v8->_block;
    v8->_block = v9;

    objc_storeStrong(&v8->_queue, queue);
  }

  return v8;
}

@end