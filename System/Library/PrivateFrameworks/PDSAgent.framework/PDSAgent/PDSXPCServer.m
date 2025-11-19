@interface PDSXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSArray)connectedClients;
- (PDSXPCServer)initWithServiceName:(id)a3 listenerVendor:(id)a4 interfaceVendor:(id)a5 daemonListenerVendor:(id)a6 queue:(id)a7 workloop:(id)a8;
@end

@implementation PDSXPCServer

- (PDSXPCServer)initWithServiceName:(id)a3 listenerVendor:(id)a4 interfaceVendor:(id)a5 daemonListenerVendor:(id)a6 queue:(id)a7 workloop:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSXPCServer initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:];
    if (v15)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  [PDSXPCServer initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:];
  if (v16)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [PDSXPCServer initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:];
  if (v17)
  {
LABEL_5:
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_14:
    [PDSXPCServer initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:];
    if (v19)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  [PDSXPCServer initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:];
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v19)
  {
    goto LABEL_7;
  }

LABEL_15:
  [PDSXPCServer initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:];
LABEL_7:
  v25.receiver = self;
  v25.super_class = PDSXPCServer;
  v20 = [(PDSXPCServer *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_workloop, a8);
    objc_storeStrong(&v21->_daemonListenerVendor, a6);
    objc_storeStrong(&v21->_interfaceVendor, a5);
    v22 = [v15 listenerForMachService:v14];
    XPCListener = v21->_XPCListener;
    v21->_XPCListener = v22;

    [(PDSXPCListener *)v21->_XPCListener _setQueue:v18];
    [(PDSXPCListener *)v21->_XPCListener setDelegate:v21];
  }

  return v21;
}

- (NSArray)connectedClients
{
  v2 = [(NSMutableArray *)self->_XPCClients copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:*MEMORY[0x277D37B08]];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
    {
      goto LABEL_8;
    }
  }

  v9 = [v7 valueForEntitlement:*MEMORY[0x277D37AF8]];
  if (!v9)
  {
    v14 = pds_defaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PDSXPCServer listener:v7 shouldAcceptNewConnection:v14];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = pds_defaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(PDSXPCServer *)v7 listener:v9 shouldAcceptNewConnection:v14];
      }

LABEL_17:
      v16 = 0;
      goto LABEL_18;
    }
  }

LABEL_8:
  if (!self->_XPCClients)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    XPCClients = self->_XPCClients;
    self->_XPCClients = v10;
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create_with_target_V2("com.apple.pds.xpc.clientqueue", v12, self->_workloop);

  v13 = [[PDSXPCClient alloc] initWithConnection:v7 interfaceVendor:self->_interfaceVendor daemonListenerVendor:self->_daemonListenerVendor queue:v9];
  [(NSMutableArray *)self->_XPCClients addObject:v13];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__PDSXPCServer_listener_shouldAcceptNewConnection___block_invoke;
  v19[3] = &unk_2799F82C8;
  objc_copyWeak(&v21, &location);
  v14 = v13;
  v20 = v14;
  [v7 setInvalidationHandler:v19];
  v15 = pds_defaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_25DED8000, v15, OS_LOG_TYPE_DEFAULT, "Allowing PDS Client connection {newConnection: %@}", buf, 0xCu);
  }

  [v14 resume];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  v16 = 1;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __51__PDSXPCServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v3 = pds_defaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_25DED8000, v3, OS_LOG_TYPE_DEFAULT, "PDS Client went invalid {client: %@}", &v7, 0xCu);
    }

    v5 = [WeakRetained XPCClients];
    [v5 removeObject:*(a1 + 32)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"serviceName" object:? file:? lineNumber:? description:?];
}

- (void)initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"listenerVendor" object:? file:? lineNumber:? description:?];
}

- (void)initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"interfaceVendor" object:? file:? lineNumber:? description:?];
}

- (void)initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"daemonListenerVendor" object:? file:? lineNumber:? description:?];
}

- (void)initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:.cold.5()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithServiceName:listenerVendor:interfaceVendor:daemonListenerVendor:queue:workloop:.cold.6()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"workloop" object:? file:? lineNumber:? description:?];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25DED8000, log, OS_LOG_TYPE_ERROR, "PDS Client connection has invalid entitlement type -- rejecting {clientIDEntitlement: %@, newConnection: %@}", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25DED8000, a2, OS_LOG_TYPE_ERROR, "PDS Client connection missing entitlement -- rejecting {newConnection: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end