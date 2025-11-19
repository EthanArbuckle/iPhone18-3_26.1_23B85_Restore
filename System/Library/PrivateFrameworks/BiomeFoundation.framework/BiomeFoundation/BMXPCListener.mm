@interface BMXPCListener
+ (id)anonymousListenerWithQueue:(id)a3;
+ (id)serviceListener;
- (BMXPCListener)initWithMachServiceName:(id)a3 queue:(id)a4;
- (BMXPCListenerDelegate)delegate;
- (NSXPCListenerEndpoint)endpoint;
- (id)_eventHandler;
- (id)_initWithType:(unint64_t)a3 connection:(id)a4 queue:(id)a5;
- (void)_handleConnection:(id)a3;
- (void)activate;
- (void)invalidate;
- (void)setQueue:(id)a3;
@end

@implementation BMXPCListener

+ (id)serviceListener
{
  if (serviceListener_onceToken != -1)
  {
    +[BMXPCListener serviceListener];
  }

  v3 = serviceListener_serviceListener;

  return v3;
}

- (BMXPCListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __30__BMXPCListener__eventHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1AC5ADDC0]() == MEMORY[0x1E69E9E68])
  {
    [*(a1 + 32) _handleConnection:v3];
  }
}

- (NSXPCListenerEndpoint)endpoint
{
  if (self->_type)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    v4 = xpc_endpoint_create(self->_listener);
    [v3 _setEndpoint:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)anonymousListenerWithQueue:(id)a3
{
  v3 = a3;
  v4 = xpc_connection_create(0, v3);
  v5 = [[BMXPCListener alloc] _initWithType:1 connection:v4 queue:v3];

  return v5;
}

uint64_t __32__BMXPCListener_serviceListener__block_invoke()
{
  v0 = [BMXPCListener alloc];
  serviceListener_serviceListener = [(BMXPCListener *)v0 _initWithType:0 connection:0 queue:MEMORY[0x1E69E96A0]];

  return MEMORY[0x1EEE66BB8]();
}

- (BMXPCListener)initWithMachServiceName:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  mach_service = xpc_connection_create_mach_service([a3 UTF8String], v8, 1uLL);
  v10 = [[BMXPCListener alloc] _initWithType:2 connection:mach_service queue:v8];

  return v10;
}

- (id)_initWithType:(unint64_t)a3 connection:(id)a4 queue:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = BMXPCListener;
  v11 = [(BMXPCListener *)&v16 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_queue, a5);
    if (v9)
    {
      objc_storeStrong(p_isa + 2, a4);
      v13 = p_isa[2];
      v14 = [p_isa _eventHandler];
      xpc_connection_set_event_handler(v13, v14);
    }
  }

  return p_isa;
}

- (id)_eventHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__BMXPCListener__eventHandler__block_invoke;
  v4[3] = &unk_1E796B188;
  v4[4] = self;
  v2 = MEMORY[0x1AC5AD7D0](v4, a2);

  return v2;
}

- (void)_handleConnection:(id)a3
{
  v3 = self;
  v5 = [MEMORY[0x1E696B0B8] bm_connectionWithPeer:a3 queue:self->_queue];
  v4 = [(BMXPCListener *)v3 delegate];
  LOBYTE(v3) = [v4 listener:v3 shouldAcceptNewConnection:v5];

  if ((v3 & 1) == 0)
  {
    [v5 invalidate];
  }
}

- (void)setQueue:(id)a3
{
  targetq = a3;
  objc_storeStrong(&self->_queue, a3);
  if (self->_type)
  {
    xpc_connection_set_target_queue(self->_listener, targetq);
  }
}

- (void)activate
{
  if (!self->_type)
  {
    xpc_main(bm_service_connection_handler);
  }

  listener = self->_listener;

  xpc_connection_activate(listener);
}

- (void)invalidate
{
  if (self->_type)
  {
    xpc_connection_cancel(self->_listener);
  }
}

@end