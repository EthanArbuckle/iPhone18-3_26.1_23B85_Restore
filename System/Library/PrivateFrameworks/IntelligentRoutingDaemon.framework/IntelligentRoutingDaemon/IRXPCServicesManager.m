@interface IRXPCServicesManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IRXPCServicesManager)init;
- (void)_createServices;
- (void)_setupXPCListeners;
- (void)startServices;
@end

@implementation IRXPCServicesManager

- (IRXPCServicesManager)init
{
  v7.receiver = self;
  v7.super_class = IRXPCServicesManager;
  v2 = [(IRXPCServicesManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.intelligentroutingd.xpcQueue", v3);
    xpcQueue = v2->_xpcQueue;
    v2->_xpcQueue = v4;

    [(IRXPCServicesManager *)v2 _createServices];
    [(IRXPCServicesManager *)v2 _setupXPCListeners];
  }

  return v2;
}

- (void)startServices
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_listeners;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    v7 = MEMORY[0x277D21260];
    *&v4 = 138412290;
    v14 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          v12 = [v9 serviceName];
          *buf = v14;
          v20 = v12;
          _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_DEFAULT, "[IRXPCServicesManager] resuming listener for mach service: %@", buf, 0xCu);
        }

        [v9 resume];
        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_createServices
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  machServices = self->_machServices;
  self->_machServices = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  listeners = self->_listeners;
  self->_listeners = v5;

  v7 = [IRRecommendationService serviceWithQueue:self->_xpcQueue];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 machServicesNames];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    v13 = MEMORY[0x277D21260];
    *&v10 = 138412290;
    v18 = v10;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v24 = v15;
          _os_log_impl(&dword_25543D000, v16, OS_LOG_TYPE_DEFAULT, "[IRXPCServicesManager] creating recommendation mach service with name: %@", buf, 0xCu);
        }

        [(NSMutableDictionary *)self->_machServices setObject:v7 forKey:v15, v18];
        ++v14;
      }

      while (v11 != v14);
      v11 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_setupXPCListeners
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D21260];
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "[IRXPCServicesManager] setting up XPC listeners", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_machServices allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v10;
          _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_DEFAULT, "[IRXPCServicesManager] setting up XPC listener for mach service: %@", buf, 0xCu);
        }

        v12 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v10];
        [v12 setDelegate:self];
        [(NSMutableArray *)self->_listeners addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D21260];
  v9 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEFAULT, "[IRXPCServicesManager] listener shouldAcceptNewConnection. Connection: %@", &v17, 0xCu);
  }

  machServices = self->_machServices;
  v11 = [v7 serviceName];
  v12 = [(NSMutableDictionary *)machServices objectForKey:v11];

  if (v12)
  {
    v13 = [v12 shouldAcceptNewConnection:v7];
  }

  else
  {
    v14 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [IRXPCServicesManager listener:v14 shouldAcceptNewConnection:v7];
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(void *)a2 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 serviceName];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_25543D000, v3, OS_LOG_TYPE_ERROR, "[ErrorId - Service listener  error] [IRXPCServicesManager] no service listening for %@, connection: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end