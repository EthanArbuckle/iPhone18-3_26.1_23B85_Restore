@interface CMFNotificationObserver
- (CMFNotificationObserver)initWithName:(id)name queue:(id)queue callback:(id)callback;
- (void)dealloc;
@end

@implementation CMFNotificationObserver

- (CMFNotificationObserver)initWithName:(id)name queue:(id)queue callback:(id)callback
{
  nameCopy = name;
  queueCopy = queue;
  callbackCopy = callback;
  v22.receiver = self;
  v22.super_class = CMFNotificationObserver;
  v11 = [(CMFNotificationObserver *)&v22 init];
  if (v11)
  {
    v12 = MEMORY[0x245D4C7E0](callbackCopy);
    callback = v11->_callback;
    v11->_callback = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    objc_storeStrong(&v11->_queue, queue);
    v11->_token = 0;
    objc_initWeak(&location, v11);
    uTF8String = [(NSString *)v11->_name UTF8String];
    queue = v11->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__CMFNotificationObserver_initWithName_queue_callback___block_invoke;
    v19[3] = &unk_278DE6E38;
    objc_copyWeak(&v20, &location);
    notify_register_dispatch(uTF8String, &v11->_token, queue, v19);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __55__CMFNotificationObserver_initWithName_queue_callback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained callback];
    v2[2]();

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = CMFNotificationObserver;
  [(CMFNotificationObserver *)&v3 dealloc];
}

@end