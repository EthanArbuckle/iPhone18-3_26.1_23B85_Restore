@interface PDSDaemonRemoteVendor
- (PDSDaemonRemoteVendor)initWithQueue:(id)queue daemonListenerVendor:(id)vendor;
- (id)_remoteForSync:(BOOL)sync;
- (id)_remoteInternalForSync:(BOOL)sync;
@end

@implementation PDSDaemonRemoteVendor

- (PDSDaemonRemoteVendor)initWithQueue:(id)queue daemonListenerVendor:(id)vendor
{
  queueCopy = queue;
  vendorCopy = vendor;
  v9 = vendorCopy;
  if (queueCopy)
  {
    if (vendorCopy)
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
    objc_storeStrong(&v10->_queue, queue);
    objc_storeStrong(&v11->_daemonListenerVendor, vendor);
  }

  return v11;
}

- (id)_remoteInternalForSync:(BOOL)sync
{
  v4 = !sync;
  remoteInternalListener = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteInternalListener];
  v6 = [PDSQueueProxy alloc];
  queue = [(PDSDaemonRemoteVendor *)self queue];
  v8 = [(PDSQueueProxy *)v6 initWithTarget:remoteInternalListener queue:queue mode:v4];

  return v8;
}

- (id)_remoteForSync:(BOOL)sync
{
  v4 = !sync;
  remoteListenerForAllClientIDs = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteListenerForAllClientIDs];
  v6 = [PDSQueueProxy alloc];
  queue = [(PDSDaemonRemoteVendor *)self queue];
  v8 = [(PDSQueueProxy *)v6 initWithTarget:remoteListenerForAllClientIDs queue:queue mode:v4];

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