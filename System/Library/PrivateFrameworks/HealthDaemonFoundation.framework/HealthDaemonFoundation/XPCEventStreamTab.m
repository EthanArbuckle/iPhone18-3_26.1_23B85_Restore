@interface XPCEventStreamTab
- (NSObject)object;
- (XPCEventStreamTab)initWithStream:(id)a3 object:(id)a4 queue:(id)a5 handler:(id)a6;
@end

@implementation XPCEventStreamTab

- (XPCEventStreamTab)initWithStream:(id)a3 object:(id)a4 queue:(id)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = XPCEventStreamTab;
  v15 = [(XPCEventStreamTab *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_stream, a3);
    objc_storeWeak(&v16->_object, v12);
    objc_storeStrong(&v16->_queue, a5);
    v17 = _Block_copy(v14);
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