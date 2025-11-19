@interface PDSXPCClient
- (BOOL)_hasToolEntitlement;
- (PDSXPCClient)initWithConnection:(id)a3 interfaceVendor:(id)a4 daemonListenerVendor:(id)a5 queue:(id)a6;
- (id)_connectionEntitledClientIDs;
- (void)connectInternalWithCompletion:(id)a3;
- (void)connectWithClientID:(id)a3 completion:(id)a4;
@end

@implementation PDSXPCClient

- (PDSXPCClient)initWithConnection:(id)a3 interfaceVendor:(id)a4 daemonListenerVendor:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSXPCClient initWithConnection:interfaceVendor:daemonListenerVendor:queue:];
    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_10:
      [PDSXPCClient initWithConnection:interfaceVendor:daemonListenerVendor:queue:];
      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [PDSXPCClient initWithConnection:interfaceVendor:daemonListenerVendor:queue:];
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v14)
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
    objc_storeStrong(&v15->_daemonListenerVendor, a5);
    objc_storeStrong(&v16->_queue, a6);
    objc_storeStrong(&v16->_connection, a3);
    [v11 _setQueue:v14];
    v17 = [MEMORY[0x277D37AE0] handShakeInterfaceFromVendor:v12];
    [v11 setExportedInterface:v17];

    [v11 setExportedObject:v16];
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
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)connectWithClientID:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([(PDSXPCClient *)self _hasToolEntitlement])
  {
    v7 = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteListenerForAllClientIDs];
    [(PDSXPCClient *)self setDaemonListener:v7];

    v8 = [(PDSXPCClient *)self daemonListener];
    v6[2](v6, v8, 0);
    goto LABEL_10;
  }

  v8 = [(PDSXPCClient *)self _connectionEntitledClientIDs];
  if (![v8 count])
  {
    v11 = -301;
LABEL_8:
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:v11 userInfo:0];
    (v6)[2](v6, 0, v10);
    goto LABEL_9;
  }

  if (![v8 containsObject:v12])
  {
    v11 = -302;
    goto LABEL_8;
  }

  v9 = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteListenerForClientIDs:v8];
  [(PDSXPCClient *)self setDaemonListener:v9];

  v10 = [(PDSXPCClient *)self daemonListener];
  v6[2](v6, v10, 0);
LABEL_9:

LABEL_10:
}

- (void)connectInternalWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PDSXPCClient *)self _hasToolEntitlement])
  {
    v5 = [(PDSDaemonListenerVendor *)self->_daemonListenerVendor remoteInternalListener];
    v4[2](v4, v5, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-304 userInfo:0];
    (v4)[2](v4, 0, v5);
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