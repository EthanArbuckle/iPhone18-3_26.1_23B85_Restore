@interface HMINotifydObserver
- (BOOL)start;
- (HMINotifydObserver)initWithNotificationName:(const char *)a3 andQueue:(id)a4 andCallback:(id)a5;
- (void)dealloc;
- (void)publishInitialValue;
- (void)publishValueForToken:(int)a3;
@end

@implementation HMINotifydObserver

- (HMINotifydObserver)initWithNotificationName:(const char *)a3 andQueue:(id)a4 andCallback:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HMINotifydObserver;
  v11 = [(HMINotifydObserver *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, a4);
    v13 = MEMORY[0x2318CB8E0](v10);
    callback = v12->_callback;
    v12->_callback = v13;

    v12->_notificationName = a3;
    v12->_token = -1;
  }

  return v12;
}

- (BOOL)start
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMINotifydObserver *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMINotifydObserver *)self token]== -1)
  {
    *buf = -1;
    v9 = [(HMINotifydObserver *)self notificationName];
    v10 = [(HMINotifydObserver *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__HMINotifydObserver_start__block_invoke;
    handler[3] = &unk_278755440;
    handler[4] = self;
    v11 = notify_register_dispatch(v9, buf, v10, handler);

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
    v5 = self;
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

- (void)publishValueForToken:(int)a3
{
  v5 = [(HMINotifydObserver *)self queue];
  dispatch_assert_queue_V2(v5);

  state64 = 0;
  if (!notify_get_state(a3, &state64))
  {
    v6 = [(HMINotifydObserver *)self callback];
    (v6)[2](v6, self, state64);
  }
}

- (void)publishInitialValue
{
  v3 = [(HMINotifydObserver *)self queue];
  dispatch_assert_queue_V2(v3);

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