@interface _DKInCarMonitor
- (void)deactivate;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation _DKInCarMonitor

- (void)dealloc
{
  [(_DKInCarMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKInCarMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  v11.receiver = self;
  v11.super_class = _DKInCarMonitor;
  if ([(_DKMonitor *)&v11 instantMonitorNeedsActivation])
  {
    self->_enabled = 1;
    uTF8String = [@"com.apple.locationd.vehicle.connected" UTF8String];
    queue = [(_DKMonitor *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24___DKInCarMonitor_start__block_invoke;
    handler[3] = &unk_27856F408;
    handler[4] = self;
    notify_register_dispatch(uTF8String, &self->_connectedToken, queue, handler);

    uTF8String2 = [@"com.apple.locationd.vehicle.disconnected" UTF8String];
    queue2 = [(_DKMonitor *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __24___DKInCarMonitor_start__block_invoke_2;
    v9[3] = &unk_27856F408;
    v9[4] = self;
    notify_register_dispatch(uTF8String2, &self->_disconnectedToken, queue2, v9);

    queue3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24___DKInCarMonitor_start__block_invoke_3;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue3, block);
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKInCarMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKInCarMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  self->_enabled = 0;
  connectedToken = self->_connectedToken;
  if (connectedToken)
  {
    notify_cancel(connectedToken);
  }

  disconnectedToken = self->_disconnectedToken;
  if (disconnectedToken)
  {

    notify_cancel(disconnectedToken);
  }
}

@end