@interface MTEventHandlers
- (Class)baseDataProviderClass;
- (MTBaseEventDataProvider)base;
- (NSMutableDictionary)registrations;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)registerEventHandlerName:(id)name eventData:(id)data;
- (void)registerEventHandlerName:(id)name eventHandlerClass:(Class)class eventData:(id)data;
@end

@implementation MTEventHandlers

- (NSMutableDictionary)registrations
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_registrations)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    registrations = selfCopy->_registrations;
    selfCopy->_registrations = dictionary;

    [(MTEventHandlers *)selfCopy registerDefaultEventHandlers];
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_registrations;

  return v5;
}

- (Class)baseDataProviderClass
{
  v8 = MTConfigurationError(101, @"Required method 'baseDataProviderClass' is not implemented on '%@'", v2, v3, v4, v5, v6, v7, self);

  return objc_opt_class();
}

- (MTBaseEventDataProvider)base
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_base)
  {
    v3 = objc_alloc([(MTEventHandlers *)selfCopy baseDataProviderClass]);
    metricsKit = [(MTObject *)selfCopy metricsKit];
    v5 = [v3 initWithMetricsKit:metricsKit];
    base = selfCopy->_base;
    selfCopy->_base = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_base;

  return v7;
}

- (void)registerEventHandlerName:(id)name eventHandlerClass:(Class)class eventData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dataCopy = data;
  v10 = [MTEventHandlerRegistration alloc];
  metricsKit = [(MTObject *)self metricsKit];
  v12 = [(MTEventHandlerRegistration *)v10 initWithMetricsKit:metricsKit name:nameCopy class:class eventData:dataCopy];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  registrations = [(MTEventHandlers *)selfCopy registrations];
  v15 = [registrations objectForKeyedSubscript:nameCopy];

  if (v15)
  {
    v16 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      v20 = nameCopy;
      _os_log_impl(&dword_258F4B000, v16, OS_LOG_TYPE_DEBUG, "MetricsKit: registerEventHandlerName: Event handler named %@ is already registered. The previous event handler will be replaced.", &v19, 0xCu);
    }
  }

  registrations2 = [(MTEventHandlers *)selfCopy registrations];
  [registrations2 setObject:v12 forKeyedSubscript:nameCopy];

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerEventHandlerName:(id)name eventData:(id)data
{
  dataCopy = data;
  nameCopy = name;
  [(MTEventHandlers *)self registerEventHandlerName:nameCopy eventHandlerClass:objc_opt_class() eventData:dataCopy];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v14 = *MEMORY[0x277D85DE8];
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  registrations = [(MTEventHandlers *)selfCopy registrations];
  v7 = [registrations objectForKeyedSubscript:subscriptCopy];

  objc_sync_exit(selfCopy);
  if (!v7 || ([v7 eventHandler], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = subscriptCopy;
      _os_log_impl(&dword_258F4B000, v9, OS_LOG_TYPE_DEBUG, "MetricsKit: Event handler named %@ has not been registered. Use registerEventHandlerName to register it first.", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

@end