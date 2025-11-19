@interface CADLocalXPCConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (CADLocalXPCConnection)initWithRemoteObject:(id)a3;
- (int)processIdentifier;
- (void)invalidate;
- (void)resume;
@end

@implementation CADLocalXPCConnection

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  if (_auditTokenForCurrentProcess_onceToken != -1)
  {
    [CADLocalXPCConnection auditToken];
  }

  v4 = unk_27D0C5168;
  *retstr->var0 = _auditTokenForCurrentProcess_token;
  *&retstr->var0[4] = v4;
  return self;
}

- (int)processIdentifier
{
  if (_processIdentifierForCurrentProcess_onceToken != -1)
  {
    [CADLocalXPCConnection processIdentifier];
  }

  return _processIdentifierForCurrentProcess_pid;
}

- (void)resume
{
  if (self->_state)
  {
    v3 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_FAULT))
    {
      [(CADLocalXPCConnection *)v3 resume];
    }
  }

  else
  {
    self->_state = 1;
    queue = self->_queue;

    dispatch_resume(queue);
  }
}

- (void)invalidate
{
  self->_state = 2;
  v3 = [(CADLocalXPCConnection *)self invalidationHandler];

  if (v3)
  {
    v4 = [(CADLocalXPCConnection *)self invalidationHandler];
    v4[2]();
  }
}

- (CADLocalXPCConnection)initWithRemoteObject:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CADLocalXPCConnection;
  v6 = [(CADLocalXPCConnection *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteObject, a3);
    v7->_state = 0;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("CADLocalXPCConnectionQueue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    dispatch_suspend(v7->_queue);
  }

  return v7;
}

@end