@interface FigNSXPCConnection
- (void)blockUntilInvalidateHandlerHasBeenCalled;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation FigNSXPCConnection

- (void)resume
{
  if (!self->_connectionRunningGroup)
  {
    v3 = dispatch_group_create();
    self->_connectionRunningGroup = v3;
    dispatch_group_enter(v3);
  }

  v4.receiver = self;
  v4.super_class = FigNSXPCConnection;
  [(FigNSXPCConnection *)&v4 resume];
}

- (void)setInvalidationHandler:(id)a3
{
  if (a3)
  {
    [(FigNSXPCConnection *)&v4 setInvalidationHandler:v5, v3.receiver, v3.super_class, self, FigNSXPCConnection, MEMORY[0x1E69E9820], 3221225472, __45__FigNSXPCConnection_setInvalidationHandler___block_invoke, &unk_1E79907D8, self, a3];
  }

  else
  {
    [(FigNSXPCConnection *)&v3 setInvalidationHandler:0, self, FigNSXPCConnection, v4.receiver, v4.super_class, v5[0], v5[1], v5[2], v5[3], v5[4], v5[5]];
  }
}

void __45__FigNSXPCConnection_setInvalidationHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 160);

  dispatch_group_leave(v2);
}

- (void)blockUntilInvalidateHandlerHasBeenCalled
{
  connectionRunningGroup = self->_connectionRunningGroup;
  if (connectionRunningGroup)
  {
    dispatch_group_wait(connectionRunningGroup, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = FigNSXPCConnection;
  [(FigNSXPCConnection *)&v3 invalidate];
  self->_explicitlyInvalidated = 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigNSXPCConnection;
  [(FigNSXPCConnection *)&v3 dealloc];
}

@end