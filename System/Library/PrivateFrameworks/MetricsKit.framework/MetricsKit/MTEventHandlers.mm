@interface MTEventHandlers
- (Class)baseDataProviderClass;
- (MTBaseEventDataProvider)base;
- (NSMutableDictionary)registrations;
- (id)objectForKeyedSubscript:(id)a3;
- (void)registerEventHandlerName:(id)a3 eventData:(id)a4;
- (void)registerEventHandlerName:(id)a3 eventHandlerClass:(Class)a4 eventData:(id)a5;
@end

@implementation MTEventHandlers

- (NSMutableDictionary)registrations
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_registrations)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    registrations = v2->_registrations;
    v2->_registrations = v3;

    [(MTEventHandlers *)v2 registerDefaultEventHandlers];
  }

  objc_sync_exit(v2);

  v5 = v2->_registrations;

  return v5;
}

- (Class)baseDataProviderClass
{
  v8 = MTConfigurationError(101, @"Required method 'baseDataProviderClass' is not implemented on '%@'", v2, v3, v4, v5, v6, v7, self);

  return objc_opt_class();
}

- (MTBaseEventDataProvider)base
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_base)
  {
    v3 = objc_alloc([(MTEventHandlers *)v2 baseDataProviderClass]);
    v4 = [(MTObject *)v2 metricsKit];
    v5 = [v3 initWithMetricsKit:v4];
    base = v2->_base;
    v2->_base = v5;
  }

  objc_sync_exit(v2);

  v7 = v2->_base;

  return v7;
}

- (void)registerEventHandlerName:(id)a3 eventHandlerClass:(Class)a4 eventData:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [MTEventHandlerRegistration alloc];
  v11 = [(MTObject *)self metricsKit];
  v12 = [(MTEventHandlerRegistration *)v10 initWithMetricsKit:v11 name:v8 class:a4 eventData:v9];

  v13 = self;
  objc_sync_enter(v13);
  v14 = [(MTEventHandlers *)v13 registrations];
  v15 = [v14 objectForKeyedSubscript:v8];

  if (v15)
  {
    v16 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_258F4B000, v16, OS_LOG_TYPE_DEBUG, "MetricsKit: registerEventHandlerName: Event handler named %@ is already registered. The previous event handler will be replaced.", &v19, 0xCu);
    }
  }

  v17 = [(MTEventHandlers *)v13 registrations];
  [v17 setObject:v12 forKeyedSubscript:v8];

  objc_sync_exit(v13);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerEventHandlerName:(id)a3 eventData:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MTEventHandlers *)self registerEventHandlerName:v7 eventHandlerClass:objc_opt_class() eventData:v6];
}

- (id)objectForKeyedSubscript:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTEventHandlers *)v5 registrations];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);
  if (!v7 || ([v7 eventHandler], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_258F4B000, v9, OS_LOG_TYPE_DEBUG, "MetricsKit: Event handler named %@ has not been registered. Use registerEventHandlerName to register it first.", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

@end