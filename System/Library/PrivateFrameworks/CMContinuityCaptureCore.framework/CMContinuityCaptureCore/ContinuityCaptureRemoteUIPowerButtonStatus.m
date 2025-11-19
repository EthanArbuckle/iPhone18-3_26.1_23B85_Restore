@interface ContinuityCaptureRemoteUIPowerButtonStatus
+ (id)sharedInstance;
+ (void)invalidate;
- (ContinuityCaptureRemoteUIPowerButtonStatus)initWithQueue:(id)a3;
- (void)invalidate;
- (void)setupPowerButtonMonitor;
@end

@implementation ContinuityCaptureRemoteUIPowerButtonStatus

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[ContinuityCaptureRemoteUIPowerButtonStatus sharedInstance];
  }

  v3 = _powerButtonStatus;

  return v3;
}

uint64_t __60__ContinuityCaptureRemoteUIPowerButtonStatus_sharedInstance__block_invoke()
{
  v0 = [ContinuityCaptureRemoteUIPowerButtonStatus alloc];
  _powerButtonStatus = [(ContinuityCaptureRemoteUIPowerButtonStatus *)v0 initWithQueue:MEMORY[0x277D85CD0]];

  return MEMORY[0x2821F96F8]();
}

+ (void)invalidate
{
  if (([_powerButtonStatus invalidated] & 1) == 0)
  {
    [_powerButtonStatus invalidate];
    v2 = _powerButtonStatus;

    [v2 setInvalidated:1];
  }
}

- (void)invalidate
{
  hidEventSystemClient = self->_hidEventSystemClient;
  if (hidEventSystemClient)
  {
    [(HIDEventSystemClient *)hidEventSystemClient cancel];
  }
}

- (ContinuityCaptureRemoteUIPowerButtonStatus)initWithQueue:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ContinuityCaptureRemoteUIPowerButtonStatus;
  v6 = [(ContinuityCaptureRemoteUIPowerButtonStatus *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(ContinuityCaptureButtonPressTracker);
    hidButtonTracker = v7->_hidButtonTracker;
    v7->_hidButtonTracker = v8;

    objc_initWeak(&location, v7);
    queue = v7->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__ContinuityCaptureRemoteUIPowerButtonStatus_initWithQueue___block_invoke;
    v12[3] = &unk_278D5C080;
    objc_copyWeak(&v13, &location);
    dispatch_async(queue, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __60__ContinuityCaptureRemoteUIPowerButtonStatus_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setupPowerButtonMonitor];
    WeakRetained = v2;
  }
}

- (void)setupPowerButtonMonitor
{
  objc_initWeak(&location, self);
  if (!self->_hidEventSystemClient)
  {
    v3 = [objc_alloc(MEMORY[0x277D0EEF0]) initWithType:1];
    hidEventSystemClient = self->_hidEventSystemClient;
    self->_hidEventSystemClient = v3;

    if (self->_hidEventSystemClient)
    {
      v5 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_hidEventSystemClient;
        *buf = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ hidEventSystemClient: %@", buf, 0x16u);
      }

      [(HIDEventSystemClient *)self->_hidEventSystemClient setMatching:&unk_2854ECD60];
      v7 = self->_hidEventSystemClient;
      v8 = dispatch_get_global_queue(0, 0);
      [(HIDEventSystemClient *)v7 setDispatchQueue:v8];

      v9 = self->_hidEventSystemClient;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __69__ContinuityCaptureRemoteUIPowerButtonStatus_setupPowerButtonMonitor__block_invoke;
      v11[3] = &unk_278D5CE78;
      objc_copyWeak(&v12, &location);
      [(HIDEventSystemClient *)v9 setEventHandler:v11];
      [(HIDEventSystemClient *)self->_hidEventSystemClient activate];
      objc_destroyWeak(&v12);
    }

    else
    {
      v10 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = self;
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ hidEventSystemClient failure ", buf, 0xCu);
      }
    }
  }

  objc_destroyWeak(&location);
}

void __69__ContinuityCaptureRemoteUIPowerButtonStatus_setupPowerButtonMonitor__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 type] == 3)
  {
    v5 = [v4 integerValueForField:196608];
    v6 = [v4 integerValueForField:196609];
    v7 = [v4 integerValueForField:196610];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v9 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_loadWeakRetained((a1 + 32));
        *buf = 138413314;
        v15 = v10;
        v16 = 1024;
        v17 = [v4 type];
        v18 = 2048;
        v19 = v5;
        v20 = 2048;
        v21 = v6;
        v22 = 2048;
        v23 = v7;
        _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ type: %d uP: %ld u: %ld down: %ld", buf, 0x30u);
      }

      if (v5 == 12)
      {
        v11 = WeakRetained[1];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__ContinuityCaptureRemoteUIPowerButtonStatus_setupPowerButtonMonitor__block_invoke_40;
        block[3] = &unk_278D5CE50;
        objc_copyWeak(v13, (a1 + 32));
        v13[1] = v6;
        v13[2] = v7;
        dispatch_async(v11, block);
        objc_destroyWeak(v13);
      }
    }
  }
}

void __69__ContinuityCaptureRemoteUIPowerButtonStatus_setupPowerButtonMonitor__block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      v5 = *(WeakRetained + 3);
      v7 = 138412546;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ Processing consumer HID event, _hidPowerButtonTracker %{public}@", &v7, 0x16u);
    }

    [*(WeakRetained + 3) registerCordPress:*(a1 + 40) down:*(a1 + 48) != 0];
    v6 = !*(a1 + 48) && *(a1 + 40) == 48 && ([*(WeakRetained + 3) valid] & 1) != 0;
    [WeakRetained willChangeValueForKey:@"powerButtonPressed"];
    *(WeakRetained + 32) = v6;
    [WeakRetained didChangeValueForKey:@"powerButtonPressed"];
    if (!*(a1 + 48) && *(a1 + 40) == 48)
    {
      [*(WeakRetained + 3) clear];
    }
  }
}

@end