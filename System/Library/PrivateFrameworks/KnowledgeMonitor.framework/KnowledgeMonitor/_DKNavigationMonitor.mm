@interface _DKNavigationMonitor
- (id)shutdownHandler;
- (void)deactivate;
- (void)dealloc;
- (void)didSetNavigating;
- (void)setNavigating:(BOOL)navigating;
- (void)setShutdownHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation _DKNavigationMonitor

- (void)setShutdownHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___DKNavigationMonitor_setShutdownHandler___block_invoke;
  v8[3] = &unk_27856F1A0;
  v5 = handlerCopy;
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
  keyPathForNavigationStatus = [MEMORY[0x277CFE338] keyPathForNavigationStatus];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_navigating];
  userContext = [MEMORY[0x277CFE318] userContext];
  [userContext setObject:v3 forKeyedSubscript:keyPathForNavigationStatus];

  source = self->_source;
  v6 = objc_alloc(MEMORY[0x277CF1308]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_navigating];
  v8 = [v6 initWithStarting:v7];
  [(BMSource *)source sendEvent:v8];
}

- (void)setNavigating:(BOOL)navigating
{
  if (self->_enabled && self->_navigating != navigating)
  {
    self->_navigating = navigating;
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
    uTF8String = [@"com.apple.GeoServices.navigation.started" UTF8String];
    queue = [(_DKMonitor *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __29___DKNavigationMonitor_start__block_invoke;
    handler[3] = &unk_27856F408;
    handler[4] = self;
    notify_register_dispatch(uTF8String, &self->_startedToken, queue, handler);

    self->_stoppedToken = -1;
    uTF8String2 = [@"com.apple.GeoServices.navigation.stopped" UTF8String];
    queue2 = [(_DKMonitor *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29___DKNavigationMonitor_start__block_invoke_2;
    v9[3] = &unk_27856F408;
    v9[4] = self;
    notify_register_dispatch(uTF8String2, &self->_stoppedToken, queue2, v9);

    queue3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29___DKNavigationMonitor_start__block_invoke_3;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue3, block);
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