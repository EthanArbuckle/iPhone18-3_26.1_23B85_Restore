@interface IDSDaemonResponseHandler
- (IDSDaemonResponseHandler)initWithBlock:(id)block queue:(id)queue isSync:(BOOL)sync;
@end

@implementation IDSDaemonResponseHandler

- (IDSDaemonResponseHandler)initWithBlock:(id)block queue:(id)queue isSync:(BOOL)sync
{
  blockCopy = block;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = IDSDaemonResponseHandler;
  v10 = [(IDSDaemonResponseHandler *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
    v12 = [blockCopy copy];
    block = v11->_block;
    v11->_block = v12;

    v11->_isSync = sync;
  }

  return v11;
}

@end