@interface CMContinuityCaptureThermalMonitor
+ (id)sharedInstance;
+ (void)invalidate;
- (BOOL)invalidated;
- (BOOL)setupNotification;
- (CMContinuityCaptureThermalMonitor)initWithQueue:(id)a3;
- (void)_thermalNotification:(unint64_t)a3;
- (void)invalidate;
- (void)setInvalidated:(BOOL)a3;
@end

@implementation CMContinuityCaptureThermalMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CMContinuityCaptureThermalMonitor sharedInstance];
  }

  v3 = _thermalMonitor;

  return v3;
}

void __51__CMContinuityCaptureThermalMonitor_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureThermalMonitor alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.continuitycapture.thermalmonitor", v4);
  v2 = [(CMContinuityCaptureThermalMonitor *)v0 initWithQueue:v1];
  v3 = _thermalMonitor;
  _thermalMonitor = v2;
}

- (BOOL)invalidated
{
  v2 = self;
  objc_sync_enter(v2);
  invalidated = v2->_invalidated;
  objc_sync_exit(v2);

  return invalidated;
}

- (void)setInvalidated:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_invalidated = a3;
  objc_sync_exit(obj);
}

+ (void)invalidate
{
  if (([_thermalMonitor invalidated] & 1) == 0)
  {
    [_thermalMonitor invalidate];
    v2 = _thermalMonitor;

    [v2 setInvalidated:1];
  }
}

- (void)invalidate
{
  if (notify_is_valid_token(self->_registrationToken))
  {
    registrationToken = self->_registrationToken;

    notify_cancel(registrationToken);
  }
}

- (BOOL)setupNotification
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CMContinuityCaptureThermalMonitor_setupNotification__block_invoke;
  v6[3] = &unk_278D5D2C8;
  objc_copyWeak(&v7, &location);
  v3 = MEMORY[0x245D12020](v6);
  v4 = notify_register_dispatch(*MEMORY[0x277D85E40], &self->_registrationToken, self->_queue, v3);
  if (!v4)
  {
    v3[2](v3, self->_registrationToken);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return v4 == 0;
}

void __54__CMContinuityCaptureThermalMonitor_setupNotification__block_invoke(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state)
  {
    v6 = state;
    v7 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__CMContinuityCaptureThermalMonitor_setupNotification__block_invoke_cold_1(v6, v7);
    }

    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v9 = *(WeakRetained + 3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CMContinuityCaptureThermalMonitor_setupNotification__block_invoke_3;
    block[3] = &unk_278D5D2A0;
    objc_copyWeak(v11, (a1 + 32));
    v11[1] = state64;
    dispatch_async(v9, block);
    objc_destroyWeak(v11);
LABEL_6:
  }

  objc_autoreleasePoolPop(v4);
}

void __54__CMContinuityCaptureThermalMonitor_setupNotification__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _thermalNotification:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_thermalNotification:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = 3;
  v6 = a3 ^ 1;
  if (a3 >= 2)
  {
    v6 = 2;
  }

  if (a3 <= 4)
  {
    v5 = v6;
  }

  if (a3 <= 9)
  {
    v7 = v5;
  }

  else
  {
    v7 = 4;
  }

  if (v7 != self->_thermalLevel)
  {
    [(CMContinuityCaptureThermalMonitor *)self willChangeValueForKey:@"thermalLevel"];
    self->_thermalLevel = v7;

    [(CMContinuityCaptureThermalMonitor *)self didChangeValueForKey:@"thermalLevel"];
  }
}

- (CMContinuityCaptureThermalMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CMContinuityCaptureThermalMonitor;
  v6 = [(CMContinuityCaptureThermalMonitor *)&v12 init];
  v7 = v6;
  if (!v6)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_queue, a3);
  v7->_registrationToken = -1;
  if (![(CMContinuityCaptureThermalMonitor *)v7 setupNotification])
  {
    v10 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_242545000, v10, OS_LOG_TYPE_ERROR, "Unable to setup thermal monitor", v11, 2u);
    }

    goto LABEL_8;
  }

  v8 = v7;
LABEL_4:

  return v8;
}

void __54__CMContinuityCaptureThermalMonitor_setupNotification__block_invoke_cold_1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "Unable to get notification state: %d", v2, 8u);
}

@end