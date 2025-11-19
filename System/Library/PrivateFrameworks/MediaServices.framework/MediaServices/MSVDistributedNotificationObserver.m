@interface MSVDistributedNotificationObserver
+ (id)observerWithDistributedName:(id)a3 localName:(id)a4 queue:(id)a5;
- (MSVDistributedNotificationObserver)init;
- (MSVDistributedNotificationObserver)initWithDistributedName:(id)a3 localName:(id)a4 queue:(id)a5;
- (MSVDistributedNotificationObserverDelegate)delegate;
- (void)_handleDistributedNotificationWithNotifyToken:(int)a3;
- (void)dealloc;
@end

@implementation MSVDistributedNotificationObserver

- (MSVDistributedNotificationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleDistributedNotificationWithNotifyToken:(int)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained observerShouldForwardDistributedNotification:self])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = [(MSVDistributedNotificationObserver *)self userInfoForLocalNotification];
    [v4 postNotificationName:self->_localName object:self userInfo:v5];
  }
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = MSVDistributedNotificationObserver;
  [(MSVDistributedNotificationObserver *)&v3 dealloc];
}

- (MSVDistributedNotificationObserver)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = NSStringFromSelector(a2);
  v6 = NSStringFromSelector(sel_initWithDistributedName_localName_queue_);
  [v3 raise:v4 format:{@"%@ is invalid. Use %@ instead.", v5, v6}];

  return 0;
}

- (MSVDistributedNotificationObserver)initWithDistributedName:(id)a3 localName:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = MSVDistributedNotificationObserver;
  v11 = [(MSVDistributedNotificationObserver *)&v30 init];
  if (v11)
  {
    v12 = [v8 copy];
    distributedName = v11->_distributedName;
    v11->_distributedName = v12;

    v14 = [v9 copy];
    localName = v11->_localName;
    v11->_localName = v14;

    if (v10)
    {
      v16 = v10;
      queue = v11->_queue;
      v11->_queue = v16;
    }

    else
    {
      v18 = MEMORY[0x1E69E96A0];
      v19 = MEMORY[0x1E69E96A0];
      queue = v11->_queue;
      v11->_queue = v18;
    }

    objc_initWeak(&location, v11);
    v20 = [(NSString *)v11->_distributedName UTF8String];
    v21 = v11->_queue;
    handler = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __78__MSVDistributedNotificationObserver_initWithDistributedName_localName_queue___block_invoke;
    v27 = &unk_1E79817A0;
    objc_copyWeak(&v28, &location);
    v22 = notify_register_dispatch(v20, &v11->_notifyToken, v21, &handler);
    if (v22)
    {
      NSLog(&cfstr_ErrorRegisteri.isa, v11->_distributedName, v22, handler, v25, v26, v27);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __78__MSVDistributedNotificationObserver_initWithDistributedName_localName_queue___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _handleDistributedNotificationWithNotifyToken:a2];
    WeakRetained = v4;
  }
}

+ (id)observerWithDistributedName:(id)a3 localName:(id)a4 queue:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithDistributedName:v9 localName:v8 queue:v7];

  return v10;
}

@end