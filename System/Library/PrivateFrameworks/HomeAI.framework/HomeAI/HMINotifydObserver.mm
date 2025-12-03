@interface HMINotifydObserver
- (BOOL)start;
- (HMINotifydObserver)initWithNotificationName:(const char *)name andQueue:(id)queue andCallback:(id)callback;
- (void)dealloc;
- (void)publishInitialValue;
- (void)publishValueForToken:(int)token;
@end

@implementation HMINotifydObserver

- (HMINotifydObserver)initWithNotificationName:(const char *)name andQueue:(id)queue andCallback:(id)callback
{
  queueCopy = queue;
  callbackCopy = callback;
  v16.receiver = self;
  v16.super_class = HMINotifydObserver;
  v11 = [(HMINotifydObserver *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v13 = MEMORY[0x2318CB8E0](callbackCopy);
    callback = v12->_callback;
    v12->_callback = v13;

    v12->_notificationName = name;
    v12->_token = -1;
  }

  return v12;
}

- (BOOL)start
{
  v16 = *MEMORY[0x277D85DE8];
  queue = [(HMINotifydObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMINotifydObserver *)self token]== -1)
  {
    *buf = -1;
    notificationName = [(HMINotifydObserver *)self notificationName];
    queue2 = [(HMINotifydObserver *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__HMINotifydObserver_start__block_invoke;
    handler[3] = &unk_278755440;
    handler[4] = self;
    v11 = notify_register_dispatch(notificationName, buf, queue2, handler);

    v8 = v11 == 0;
    if (!v11)
    {
      [(HMINotifydObserver *)self publishInitialValue];
      [(HMINotifydObserver *)self setToken:*buf];
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_ERROR, "%{public}@Already started listening for the notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    return 0;
  }

  return v8;
}

- (void)publishValueForToken:(int)token
{
  queue = [(HMINotifydObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    callback = [(HMINotifydObserver *)self callback];
    (callback)[2](callback, self, state64);
  }
}

- (void)publishInitialValue
{
  queue = [(HMINotifydObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  out_token = -1;
  if (!notify_register_check([(HMINotifydObserver *)self notificationName], &out_token))
  {
    [(HMINotifydObserver *)self publishValueForToken:out_token];
    notify_cancel(out_token);
  }
}

- (void)dealloc
{
  token = self->_token;
  if (token != -1)
  {
    notify_cancel(token);
  }

  v4.receiver = self;
  v4.super_class = HMINotifydObserver;
  [(HMINotifydObserver *)&v4 dealloc];
}

@end