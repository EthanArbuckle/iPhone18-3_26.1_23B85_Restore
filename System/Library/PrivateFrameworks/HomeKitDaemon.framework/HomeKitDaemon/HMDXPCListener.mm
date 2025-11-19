@interface HMDXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (HMDXPCListener)initWithXPCListener:(id)a3;
- (HMDXPCListenerDelegate)delegate;
- (OS_dispatch_queue)queue;
- (void)setQueue:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HMDXPCListener

- (HMDXPCListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x277CD1F30];
  v6 = a4;
  v7 = [[v5 alloc] initWithXPCConnection:v6];

  v8 = [(HMDXPCListener *)self delegate];
  LOBYTE(self) = [v8 listener:self shouldAcceptNewConnection:v7];

  return self;
}

- (void)stop
{
  v2 = [(HMDXPCListener *)self xpcListener];
  [v2 suspend];
}

- (void)start
{
  v3 = [(HMDXPCListener *)self xpcListener];
  [v3 setDelegate:self];

  v4 = [(HMDXPCListener *)self xpcListener];
  [v4 resume];
}

- (void)setQueue:(id)a3
{
  v4 = a3;
  v5 = [(HMDXPCListener *)self xpcListener];
  [v5 _setQueue:v4];
}

- (OS_dispatch_queue)queue
{
  v2 = [(HMDXPCListener *)self xpcListener];
  v3 = [v2 _queue];

  return v3;
}

- (HMDXPCListener)initWithXPCListener:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v15.receiver = self;
    v15.super_class = HMDXPCListener;
    v7 = [(HMDXPCListener *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_xpcListener, a3);
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