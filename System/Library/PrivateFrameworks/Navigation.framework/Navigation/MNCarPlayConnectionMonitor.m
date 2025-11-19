@interface MNCarPlayConnectionMonitor
+ (MNCarPlayConnectionMonitor)sharedInstance;
- (BOOL)isConnectedSynchronous;
- (MNCarPlayConnectionMonitor)init;
- (void)dealloc;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation MNCarPlayConnectionMonitor

+ (MNCarPlayConnectionMonitor)sharedInstance
{
  if (sharedInstance_onceToken_11923 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_11923, &__block_literal_global_11924);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = MNGetMNCarPlayConnectionMonitorLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay session disconnected.", v5, 2u);
  }

  self->_isConnected = 0;
}

- (void)sessionDidConnect:(id)a3
{
  v4 = MNGetMNCarPlayConnectionMonitorLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay session connected.", v5, 2u);
  }

  self->_isConnected = 1;
}

- (BOOL)isConnectedSynchronous
{
  if (self->_shouldWait)
  {
    [(CARSessionStatus *)self->_carSessionStatus waitForSessionInitialization];
    self->_shouldWait = 0;
  }

  return self->_isConnected;
}

- (void)dealloc
{
  [(CARSessionStatus *)self->_carSessionStatus removeSessionObserver:self];
  carSessionStatus = self->_carSessionStatus;
  self->_carSessionStatus = 0;

  v4.receiver = self;
  v4.super_class = MNCarPlayConnectionMonitor;
  [(MNCarPlayConnectionMonitor *)&v4 dealloc];
}

- (MNCarPlayConnectionMonitor)init
{
  v9.receiver = self;
  v9.super_class = MNCarPlayConnectionMonitor;
  v2 = [(MNCarPlayConnectionMonitor *)&v9 init];
  if (v2)
  {
    v3 = MNGetMNCarPlayConnectionMonitorLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "CarPlay connection monitor started.", v8, 2u);
    }

    v2->_isConnected = 0;
    v4 = objc_alloc_init(MEMORY[0x1E6993960]);
    carSessionStatus = v2->_carSessionStatus;
    v2->_carSessionStatus = v4;

    [(CARSessionStatus *)v2->_carSessionStatus addSessionObserver:v2];
    v6 = v2;
  }

  return v2;
}

void __44__MNCarPlayConnectionMonitor_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

@end