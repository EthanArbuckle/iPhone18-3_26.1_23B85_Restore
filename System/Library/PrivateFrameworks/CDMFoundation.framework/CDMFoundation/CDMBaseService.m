@interface CDMBaseService
- (CDMBaseService)initWithConfig:(id)a3;
- (NSSet)supportedCommands;
- (NSString)serviceName;
- (id)createErrorWithCode:(int64_t)a3 description:(id)a4;
- (id)createSetupResponseCommand;
- (void)addObserver:(id)a3;
- (void)handleCommand:(id)a3 withCallback:(id)a4;
- (void)publish:(id)a3;
- (void)removeObserver:(id)a3;
- (void)request:(id)a3 withCallback:(id)a4;
@end

@implementation CDMBaseService

- (NSSet)supportedCommands
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMSetupRequestCommand];
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (NSString)serviceName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)createSetupResponseCommand
{
  v3 = [CDMSetupResponseCommand alloc];
  v4 = [(CDMBaseService *)self serviceState];
  v5 = [(CDMBaseService *)self serviceName];
  v6 = [(CDMSetupResponseCommand *)v3 initWithServiceState:v4 serviceName:v5];

  return v6;
}

- (id)createErrorWithCode:(int64_t)a3 description:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = a4;
  v8 = [(CDMBaseService *)self serviceName];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v6 errorWithDomain:v8 code:a3 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)request:(id)a3 withCallback:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 commandName];
    *buf = 136315394;
    v23 = "[CDMBaseService request:withCallback:]";
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(NSHashTable *)self->_observers allObjects];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 smService:self didPublishRequest:v6 withResponseCallback:v7];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)publish:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 commandName];
    *buf = 136315394;
    v20 = "[CDMBaseService publish:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(NSHashTable *)self->_observers allObjects];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 smService:self didPublishCommand:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleCommand:(id)a3 withCallback:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(CDMBaseService *)self createSetupResponseCommand];
    v7[2](v7, v8, 0);
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 commandName];
      v11 = 136315394;
      v12 = "[CDMBaseService handleCommand:withCallback:]";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Unhandled Command: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers removeObject:v4];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  if (![(NSHashTable *)observers containsObject:v4])
  {
    [(NSHashTable *)self->_observers addObject:v8];
  }
}

- (CDMBaseService)initWithConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMBaseService;
  v6 = [(CDMBaseService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_serviceState = 0;
    objc_storeStrong(&v6->_config, a3);
  }

  return v7;
}

@end