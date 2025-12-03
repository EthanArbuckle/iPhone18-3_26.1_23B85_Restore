@interface FSListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)initUsingInterface:(id)interface clientClass:(Class)class queue:(id)queue andProxy:(id)proxy;
@end

@implementation FSListener

- (id)initUsingInterface:(id)interface clientClass:(Class)class queue:(id)queue andProxy:(id)proxy
{
  interfaceCopy = interface;
  queueCopy = queue;
  proxyCopy = proxy;
  v24.receiver = self;
  v24.super_class = FSListener;
  v14 = [(FSListener *)&v24 init];
  if (v14)
  {
    if (class && interfaceCopy && proxyCopy && ([interfaceCopy protocol], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[objc_class conformsToProtocol:](class, "conformsToProtocol:", v15), v15, (v16 & 1) != 0))
    {
      if (([(objc_class *)class conformsToProtocol:&unk_285E05EE8]& 1) != 0)
      {
        anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
        listener = v14->_listener;
        v14->_listener = anonymousListener;

        [(NSXPCListener *)v14->_listener setDelegate:v14];
        [(NSXPCListener *)v14->_listener resume];
        objc_storeStrong(&v14->_interface, interface);
        objc_storeStrong(&v14->_clientClass, class);
        objc_storeStrong(&v14->_proxy, proxy);
        objc_storeStrong(&v14->_queue, queue);
        goto LABEL_8;
      }

      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE658];
      v22 = @"Attempt to create listener using proxy object which does not conform to FSConnectorMaker";
    }

    else
    {
      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE658];
      v22 = @"Attempt to create listener using proxy object which does not conform to exported protocol";
    }

    v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
    objc_exception_throw(v23);
  }

LABEL_8:

  return v14;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A929000, v6, OS_LOG_TYPE_INFO, "handling incoming connection", v8, 2u);
  }

  [connectionCopy setExportedInterface:self->_interface];
  [connectionCopy setExportedObject:self->_proxy];
  if (self->_queue)
  {
    [connectionCopy _setQueue:?];
  }

  [connectionCopy resume];

  return 1;
}

@end