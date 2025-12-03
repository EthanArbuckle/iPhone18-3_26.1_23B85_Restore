@interface PDSXPCClient
- (BOOL)_hasToolEntitlement;
- (PDSXPCClient)initWithConnection:(id)connection interfaceVendor:(id)vendor daemonListenerVendor:(id)listenerVendor queue:(id)queue;
- (id)_connectionEntitledClientIDs;
- (void)connectInternalWithCompletion:(id)completion;
- (void)connectWithClientID:(id)d completion:(id)completion;
@end

@implementation PDSXPCClient

- (PDSXPCClient)initWithConnection:(id)connection interfaceVendor:(id)vendor daemonListenerVendor:(id)listenerVendor queue:(id)queue
{
  connectionCopy = connection;
  vendorCopy = vendor;
  listenerVendorCopy = listenerVendor;
  queueCopy = queue;
  if (connectionCopy)
  {
    if (vendorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSXPCClient initWithConnection:interfaceVendor:daemonListenerVendor:queue:];
    if (vendorCopy)
    {
LABEL_3:
      if (listenerVendorCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [PDSXPCClient initWithConnection:interfaceVendor:daemonListenerVendor:queue:];
      if (queueCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [PDSXPCClient initWithConnection:interfaceVendor:daemonListenerVendor:queue:];
  if (!listenerVendorCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (queueCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  [PDSXPCClient initWithConnection:interfaceVendor:daemonListenerVendor:queue:];
LABEL_5:
  v19.receiver = self;
  v19.super_class = PDSXPCClient;
  v15 = [(PDSXPCClient *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_daemonListenerVendor, listenerVendor);
    objc_storeStrong(&v16->_queue, queue);
    objc_storeStrong(&v16->_connection, connection);
    [connectionCopy _setQueue:queueCopy];
    v17 = [MEMORY[0x277D37AE0] handShakeInterfaceFromVendor:vendorCopy];
    [connectionCopy setExportedInterface:v17];

    [connectionCopy setExportedObject:v16];
  }

  return v16;
}

- (id)_connectionEntitledClientIDs
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [(PDSXPCDaemonConnection *)self->_connection valueForEntitlement:*MEMORY[0x277D37AF8]];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18[0] = v2;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
LABEL_4:
      v4 = v3;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_17;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v3 = v5;
      goto LABEL_4;
    }

LABEL_17:
    v4 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

LABEL_18:

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_hasToolEntitlement
{
  v2 = [(PDSXPCDaemonConnection *)self->_connection valueForEntitlement:*MEMORY[0x277D37B08]];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)connectWithClientID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(PDSXPCClient *)self _hasToolEntitlement])
  {
    remoteListenerForAllClientIDs = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteListenerForAllClientIDs];
    [(PDSXPCClient *)self setDaemonListener:remoteListenerForAllClientIDs];

    daemonListener = [(PDSXPCClient *)self daemonListener];
    completionCopy[2](completionCopy, daemonListener, 0);
    goto LABEL_10;
  }

  daemonListener = [(PDSXPCClient *)self _connectionEntitledClientIDs];
  if (![daemonListener count])
  {
    v11 = -301;
LABEL_8:
    daemonListener2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:v11 userInfo:0];
    (completionCopy)[2](completionCopy, 0, daemonListener2);
    goto LABEL_9;
  }

  if (![daemonListener containsObject:dCopy])
  {
    v11 = -302;
    goto LABEL_8;
  }

  v9 = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteListenerForClientIDs:daemonListener];
  [(PDSXPCClient *)self setDaemonListener:v9];

  daemonListener2 = [(PDSXPCClient *)self daemonListener];
  completionCopy[2](completionCopy, daemonListener2, 0);
LABEL_9:

LABEL_10:
}

- (void)connectInternalWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PDSXPCClient *)self _hasToolEntitlement])
  {
    remoteInternalListener = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteInternalListener];
    completionCopy[2](completionCopy, remoteInternalListener, 0);
  }

  else
  {
    remoteInternalListener = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-304 userInfo:0];
    (completionCopy)[2](completionCopy, 0, remoteInternalListener);
  }
}

- (void)initWithConnection:interfaceVendor:daemonListenerVendor:queue:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"connection" object:? file:? lineNumber:? description:?];
}

- (void)initWithConnection:interfaceVendor:daemonListenerVendor:queue:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"interfaceVendor" object:? file:? lineNumber:? description:?];
}

- (void)initWithConnection:interfaceVendor:daemonListenerVendor:queue:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"daemonListenerVendor" object:? file:? lineNumber:? description:?];
}

- (void)initWithConnection:interfaceVendor:daemonListenerVendor:queue:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

@end