@interface MSVDistributedNotificationObserver
+ (id)observerWithDistributedName:(id)name localName:(id)localName queue:(id)queue;
- (MSVDistributedNotificationObserver)init;
- (MSVDistributedNotificationObserver)initWithDistributedName:(id)name localName:(id)localName queue:(id)queue;
- (MSVDistributedNotificationObserverDelegate)delegate;
- (void)_handleDistributedNotificationWithNotifyToken:(int)token;
- (void)dealloc;
@end

@implementation MSVDistributedNotificationObserver

- (MSVDistributedNotificationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleDistributedNotificationWithNotifyToken:(int)token
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained observerShouldForwardDistributedNotification:self])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    userInfoForLocalNotification = [(MSVDistributedNotificationObserver *)self userInfoForLocalNotification];
    [defaultCenter postNotificationName:self->_localName object:self userInfo:userInfoForLocalNotification];
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

- (MSVDistributedNotificationObserver)initWithDistributedName:(id)name localName:(id)localName queue:(id)queue
{
  nameCopy = name;
  localNameCopy = localName;
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = MSVDistributedNotificationObserver;
  v11 = [(MSVDistributedNotificationObserver *)&v30 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    distributedName = v11->_distributedName;
    v11->_distributedName = v12;

    v14 = [localNameCopy copy];
    localName = v11->_localName;
    v11->_localName = v14;

    if (queueCopy)
    {
      v16 = queueCopy;
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
    uTF8String = [(NSString *)v11->_distributedName UTF8String];
    v21 = v11->_queue;
    handler = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __78__MSVDistributedNotificationObserver_initWithDistributedName_localName_queue___block_invoke;
    v27 = &unk_1E79817A0;
    objc_copyWeak(&v28, &location);
    v22 = notify_register_dispatch(uTF8String, &v11->_notifyToken, v21, &handler);
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

+ (id)observerWithDistributedName:(id)name localName:(id)localName queue:(id)queue
{
  queueCopy = queue;
  localNameCopy = localName;
  nameCopy = name;
  v10 = [objc_alloc(objc_opt_class()) initWithDistributedName:nameCopy localName:localNameCopy queue:queueCopy];

  return v10;
}

@end