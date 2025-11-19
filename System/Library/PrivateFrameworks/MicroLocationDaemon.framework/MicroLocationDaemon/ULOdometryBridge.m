@interface ULOdometryBridge
- (ULOdometryBridge)initWithQueue:(id)a3 delegate:(id)a4;
- (ULOdometryDelegate)delegate;
- (void)startBackgroundUpdates;
- (void)stopBackgroundUpdates;
@end

@implementation ULOdometryBridge

- (ULOdometryBridge)initWithQueue:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277CC1D08] isBackgroundAvailable])
  {
    v12.receiver = self;
    v12.super_class = ULOdometryBridge;
    v8 = [(ULOdometryBridge *)&v12 init];
    dispatch_assert_queue_V2(v6);
    if (v8)
    {
      [(ULOdometryBridge *)v8 setQueue:v6];
      [(ULOdometryBridge *)v8 setDelegate:v7];
    }

    self = v8;
    v9 = self;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryBridge initWithQueue:delegate:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "requested odometry, but background updates are unavailable", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)startBackgroundUpdates
{
  objc_initWeak(&location, self);
  v3 = [(ULOdometryBridge *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(ULOdometryBridge *)self backgroudUpdatesRunning])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryBridge startBackgroundUpdates];
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "odometry updates requested but already running, ignoring request", buf, 2u);
    }
  }

  else
  {
    v5 = [(ULOdometryBridge *)self odometryManager];

    if (!v5)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULOdometryBridge startBackgroundUpdates];
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "starting odometry manager", buf, 2u);
      }

      v7 = objc_alloc_init(MEMORY[0x277CC1D08]);
      [(ULOdometryBridge *)self setOdometryManager:v7];
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryBridge startBackgroundUpdates];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "requesting odometry updates", buf, 2u);
    }

    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v10 = [(ULOdometryBridge *)self queue];
    [v9 setUnderlyingQueue:v10];

    v11 = [(ULOdometryBridge *)self odometryManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__ULOdometryBridge_startBackgroundUpdates__block_invoke;
    v13[3] = &unk_2798D4F60;
    objc_copyWeak(&v14, &location);
    [v11 startBackgroundUpdatesUsingReferenceFrame:8 toQueue:v9 withHandler:v13];

    [(ULOdometryBridge *)self setBackgroudUpdatesRunning:1];
    v12 = [(ULOdometryBridge *)self delegate];
    [v12 didReceiveOdometryProviderStateIsAvailable:1];

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __42__ULOdometryBridge_startBackgroundUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    dispatch_assert_queue_V2(v8);

    v9 = [ULOdometryState alloc];
    v10 = [MEMORY[0x277D28868] deviceClass];
    v11 = [v16 deltaPositionX];
    v12 = [v16 deltaPositionY];
    v13 = [v16 deltaPositionZ];
    [v16 timestamp];
    v14 = [(ULOdometryState *)v9 initWithDeviceIdentifier:v10 deltaPositionX:v11 deltaPositionY:v12 deltaPositionZ:v13 timestamp:?];

    v15 = [v7 delegate];
    [v15 didReceiveOdometryUpdate:v14 withError:v5];
  }
}

- (void)stopBackgroundUpdates
{
  v3 = [(ULOdometryBridge *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(ULOdometryBridge *)self backgroudUpdatesRunning])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryBridge initWithQueue:delegate:];
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "stopping odometry updates", v8, 2u);
    }

    v5 = [(ULOdometryBridge *)self odometryManager];
    [v5 stopBackgroundUpdates];

    [(ULOdometryBridge *)self setOdometryManager:0];
    [(ULOdometryBridge *)self setBackgroudUpdatesRunning:0];
    v6 = [(ULOdometryBridge *)self delegate];
    [v6 didReceiveOdometryProviderStateIsAvailable:0];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryBridge initWithQueue:delegate:];
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "requested to stop odometry updates but already stopped, ignoring request", buf, 2u);
    }
  }
}

- (ULOdometryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end