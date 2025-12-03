@interface XPCEventStreamTab
- (NSObject)object;
- (XPCEventStreamTab)initWithStream:(id)stream object:(id)object queue:(id)queue handler:(id)handler;
@end

@implementation XPCEventStreamTab

- (XPCEventStreamTab)initWithStream:(id)stream object:(id)object queue:(id)queue handler:(id)handler
{
  streamCopy = stream;
  objectCopy = object;
  queueCopy = queue;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = XPCEventStreamTab;
  v15 = [(XPCEventStreamTab *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_stream, stream);
    objc_storeWeak(&v16->_object, objectCopy);
    objc_storeStrong(&v16->_queue, queue);
    v17 = _Block_copy(handlerCopy);
    handler = v16->_handler;
    v16->_handler = v17;
  }

  return v16;
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end