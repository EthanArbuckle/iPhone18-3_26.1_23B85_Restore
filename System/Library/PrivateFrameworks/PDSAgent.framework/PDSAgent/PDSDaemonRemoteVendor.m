@interface PDSDaemonRemoteVendor
- (PDSDaemonRemoteVendor)initWithQueue:(id)a3 daemonListenerVendor:(id)a4;
- (id)_remoteForSync:(BOOL)a3;
- (id)_remoteInternalForSync:(BOOL)a3;
@end

@implementation PDSDaemonRemoteVendor

- (PDSDaemonRemoteVendor)initWithQueue:(id)a3 daemonListenerVendor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSDaemonRemoteVendor initWithQueue:daemonListenerVendor:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PDSDaemonRemoteVendor initWithQueue:daemonListenerVendor:];
LABEL_3:
  v13.receiver = self;
  v13.super_class = PDSDaemonRemoteVendor;
  v10 = [(PDSDaemonRemoteVendor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a3);
    objc_storeStrong(&v11->_daemonListenerVendor, a4);
  }

  return v11;
}

- (id)_remoteInternalForSync:(BOOL)a3
{
  v4 = !a3;
  v5 = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteInternalListener];
  v6 = [PDSQueueProxy alloc];
  v7 = [(PDSDaemonRemoteVendor *)self queue];
  v8 = [(PDSQueueProxy *)v6 initWithTarget:v5 queue:v7 mode:v4];

  return v8;
}

- (id)_remoteForSync:(BOOL)a3
{
  v4 = !a3;
  v5 = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteListenerForAllClientIDs];
  v6 = [PDSQueueProxy alloc];
  v7 = [(PDSDaemonRemoteVendor *)self queue];
  v8 = [(PDSQueueProxy *)v6 initWithTarget:v5 queue:v7 mode:v4];

  return v8;
}

- (void)initWithQueue:daemonListenerVendor:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:daemonListenerVendor:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"daemonListenerVendor" object:? file:? lineNumber:? description:?];
}

@end