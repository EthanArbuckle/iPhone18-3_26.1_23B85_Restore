@interface FSListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)initUsingInterface:(id)a3 clientClass:(Class)a4 queue:(id)a5 andProxy:(id)a6;
@end

@implementation FSListener

- (id)initUsingInterface:(id)a3 clientClass:(Class)a4 queue:(id)a5 andProxy:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = FSListener;
  v14 = [(FSListener *)&v24 init];
  if (v14)
  {
    if (a4 && v11 && v13 && ([v11 protocol], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[objc_class conformsToProtocol:](a4, "conformsToProtocol:", v15), v15, (v16 & 1) != 0))
    {
      if (([(objc_class *)a4 conformsToProtocol:&unk_285E05EE8]& 1) != 0)
      {
        v17 = [MEMORY[0x277CCAE98] anonymousListener];
        listener = v14->_listener;
        v14->_listener = v17;

        [(NSXPCListener *)v14->_listener setDelegate:v14];
        [(NSXPCListener *)v14->_listener resume];
        objc_storeStrong(&v14->_interface, a3);
        objc_storeStrong(&v14->_clientClass, a4);
        objc_storeStrong(&v14->_proxy, a6);
        objc_storeStrong(&v14->_queue, a5);
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A929000, v6, OS_LOG_TYPE_INFO, "handling incoming connection", v8, 2u);
  }

  [v5 setExportedInterface:self->_interface];
  [v5 setExportedObject:self->_proxy];
  if (self->_queue)
  {
    [v5 _setQueue:?];
  }

  [v5 resume];

  return 1;
}

@end