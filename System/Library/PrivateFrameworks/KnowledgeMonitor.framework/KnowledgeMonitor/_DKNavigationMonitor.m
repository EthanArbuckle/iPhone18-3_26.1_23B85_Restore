@interface _DKNavigationMonitor
- (id)shutdownHandler;
- (void)deactivate;
- (void)dealloc;
- (void)didSetNavigating;
- (void)setNavigating:(BOOL)a3;
- (void)setShutdownHandler:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation _DKNavigationMonitor

- (void)setShutdownHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___DKNavigationMonitor_setShutdownHandler___block_invoke;
  v8[3] = &unk_27856F1A0;
  v5 = v4;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [v8 copy];
  shutdownHandler = self->_shutdownHandler;
  self->_shutdownHandler = v6;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)shutdownHandler
{
  v2 = MEMORY[0x22AA6AF50](self->_shutdownHandler, a2);

  return v2;
}

- (void)dealloc
{
  [(_DKNavigationMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKNavigationMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)didSetNavigating
{
  v9 = [MEMORY[0x277CFE338] keyPathForNavigationStatus];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_navigating];
  v4 = [MEMORY[0x277CFE318] userContext];
  [v4 setObject:v3 forKeyedSubscript:v9];

  source = self->_source;
  v6 = objc_alloc(MEMORY[0x277CF1308]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_navigating];
  v8 = [v6 initWithStarting:v7];
  [(BMSource *)source sendEvent:v8];
}

- (void)setNavigating:(BOOL)a3
{
  if (self->_enabled && self->_navigating != a3)
  {
    self->_navigating = a3;
    [(_DKNavigationMonitor *)self didSetNavigating];
  }
}

- (void)start
{
  v11.receiver = self;
  v11.super_class = _DKNavigationMonitor;
  if ([(_DKMonitor *)&v11 instantMonitorNeedsActivation])
  {
    self->_enabled = 1;
    self->_startedToken = -1;
    v3 = [@"com.apple.GeoServices.navigation.started" UTF8String];
    v4 = [(_DKMonitor *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __29___DKNavigationMonitor_start__block_invoke;
    handler[3] = &unk_27856F408;
    handler[4] = self;
    notify_register_dispatch(v3, &self->_startedToken, v4, handler);

    self->_stoppedToken = -1;
    v5 = [@"com.apple.GeoServices.navigation.stopped" UTF8String];
    v6 = [(_DKMonitor *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29___DKNavigationMonitor_start__block_invoke_2;
    v9[3] = &unk_27856F408;
    v9[4] = self;
    notify_register_dispatch(v5, &self->_stoppedToken, v6, v9);

    v7 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29___DKNavigationMonitor_start__block_invoke_3;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v7, block);
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKNavigationMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKNavigationMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  self->_enabled = 0;
  startedToken = self->_startedToken;
  if (startedToken)
  {
    notify_cancel(startedToken);
    self->_startedToken = -1;
  }

  stoppedToken = self->_stoppedToken;
  if (stoppedToken)
  {
    notify_cancel(stoppedToken);
    self->_stoppedToken = -1;
  }
}

@end