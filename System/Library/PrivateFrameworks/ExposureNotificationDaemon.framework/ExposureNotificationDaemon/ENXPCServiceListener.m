@interface ENXPCServiceListener
+ (id)sharedServiceListener;
- (OS_xpc_object)xpcEndpoint;
- (id)_init;
- (id)initAnonymousListener;
- (void)activate;
- (void)invalidate;
- (void)main;
- (void)xpcConnectionAccept:(id)a3;
- (void)xpcListenerEvent:(id)a3;
@end

@implementation ENXPCServiceListener

+ (id)sharedServiceListener
{
  if (sharedServiceListener_once != -1)
  {
    +[ENXPCServiceListener sharedServiceListener];
  }

  v3 = sharedServiceListener_sharedListener;

  return v3;
}

void __45__ENXPCServiceListener_sharedServiceListener__block_invoke()
{
  v0 = [[ENXPCServiceListener alloc] _init];
  v1 = sharedServiceListener_sharedListener;
  sharedServiceListener_sharedListener = v0;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = ENXPCServiceListener;
  v2 = [(ENXPCServiceListener *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;
  }

  return v2;
}

- (id)initAnonymousListener
{
  v2 = [(ENXPCServiceListener *)self _init];
  v3 = v2;
  if (v2)
  {
    v4 = xpc_connection_create(0, v2[3]);
    v5 = v3[2];
    v3[2] = v4;
  }

  return v3;
}

- (void)activate
{
  v3 = self->_xpcListener;
  if (v3)
  {
    v4 = v3;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__ENXPCServiceListener_activate__block_invoke;
    handler[3] = &unk_278FD10A8;
    handler[4] = self;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_activate(v4);
  }

  else
  {
    v5 = [ENXPCServiceListener activate];
    __32__ENXPCServiceListener_activate__block_invoke(v5, v6);
  }
}

- (void)main
{
  if (gLogCategory_ENXPCServiceConnection <= 50 && (gLogCategory_ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  xpc_main(SharedServiceConnectionHandler);
}

- (void)xpcConnectionAccept:(id)a3
{
  v8 = a3;
  xpc_connection_get_pid(v8);
  if (gLogCategory_ENXPCServiceConnection <= 20 && (gLogCategory_ENXPCServiceConnection != -1 || _LogCategory_Initialize()))
  {
    [ENXPCServiceListener xpcConnectionAccept:];
  }

  v4 = [ENXPCServiceConnection connectionWithXPCConnection:v8 serviceListener:self dispatchQueue:self->_dispatchQueue];
  connections = self->_connections;
  if (!connections)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB50]);
    v7 = self->_connections;
    self->_connections = v6;

    connections = self->_connections;
  }

  [(NSMutableSet *)connections addObject:v4];
  [v4 activate];
}

- (OS_xpc_object)xpcEndpoint
{
  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    xpcListener = xpc_endpoint_create(xpcListener);
    v2 = vars8;
  }

  return xpcListener;
}

- (void)xpcListenerEvent:(id)a3
{
  v7 = a3;
  if (MEMORY[0x24C214BB0]() == MEMORY[0x277D86450])
  {
    [(ENXPCServiceListener *)self xpcConnectionAccept:v7];
    goto LABEL_8;
  }

  v4 = v7;
  if (v7 == MEMORY[0x277D863F8])
  {
    if (gLogCategory_ENXPCServiceConnection <= 30)
    {
      if (gLogCategory_ENXPCServiceConnection != -1 || (v6 = _LogCategory_Initialize(), v4 = v7, v6))
      {
        [ENXPCServiceListener xpcListenerEvent:];
        goto LABEL_8;
      }
    }
  }

  else if (gLogCategory__ENXPCServiceConnection <= 90)
  {
    if (gLogCategory__ENXPCServiceConnection != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      [ENXPCServiceListener xpcListenerEvent:];
LABEL_8:
      v4 = v7;
    }
  }
}

- (void)invalidate
{
  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    v5 = xpcListener;
    xpc_connection_cancel(v5);
    v4 = self->_xpcListener;
    self->_xpcListener = 0;
  }
}

- (void)xpcConnectionAccept:.cold.1()
{
  v0 = CUPrintPID();
  LogPrintF_safe();
}

- (void)xpcListenerEvent:.cold.1()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

@end