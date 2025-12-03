@interface HMDXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (HMDXPCListener)initWithXPCListener:(id)listener;
- (HMDXPCListenerDelegate)delegate;
- (OS_dispatch_queue)queue;
- (void)setQueue:(id)queue;
- (void)start;
- (void)stop;
@end

@implementation HMDXPCListener

- (HMDXPCListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CD1F30];
  connectionCopy = connection;
  v7 = [[v5 alloc] initWithXPCConnection:connectionCopy];

  delegate = [(HMDXPCListener *)self delegate];
  LOBYTE(self) = [delegate listener:self shouldAcceptNewConnection:v7];

  return self;
}

- (void)stop
{
  xpcListener = [(HMDXPCListener *)self xpcListener];
  [xpcListener suspend];
}

- (void)start
{
  xpcListener = [(HMDXPCListener *)self xpcListener];
  [xpcListener setDelegate:self];

  xpcListener2 = [(HMDXPCListener *)self xpcListener];
  [xpcListener2 resume];
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  xpcListener = [(HMDXPCListener *)self xpcListener];
  [xpcListener _setQueue:queueCopy];
}

- (OS_dispatch_queue)queue
{
  xpcListener = [(HMDXPCListener *)self xpcListener];
  _queue = [xpcListener _queue];

  return _queue;
}

- (HMDXPCListener)initWithXPCListener:(id)listener
{
  listenerCopy = listener;
  if (listenerCopy)
  {
    v6 = listenerCopy;
    v15.receiver = self;
    v15.super_class = HMDXPCListener;
    v7 = [(HMDXPCListener *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_xpcListener, listener);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMDBackgroundOperationManagerCurrentDeviceStateDataSource *)v10 timerWithTimeInterval:v11 options:v14 label:v12, v13];
  }
}

@end