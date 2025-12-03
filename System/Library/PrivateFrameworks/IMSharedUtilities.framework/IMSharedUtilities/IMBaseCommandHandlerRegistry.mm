@interface IMBaseCommandHandlerRegistry
- (BOOL)hasHandlerForCommand:(id)command;
- (BOOL)hasLockdownHandlerForCommand:(id)command;
- (IMBaseCommandHandlerRegistry)init;
- (NSDictionary)handlers;
- (id)handlerForCommand:(id)command;
- (id)noopHandlerForCommand:(id)command;
- (void)setLockdownHandler:(id)handler forCommand:(id)command;
- (void)setPassThroughLockdownHandlerForCommand:(id)command;
- (void)setStandardHandler:(id)handler forCommand:(id)command;
@end

@implementation IMBaseCommandHandlerRegistry

- (NSDictionary)handlers
{
  isLockedDown = [(IMBaseCommandHandlerRegistry *)self isLockedDown];
  v4 = 8;
  if (isLockedDown)
  {
    v4 = 16;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (IMBaseCommandHandlerRegistry)init
{
  v8.receiver = self;
  v8.super_class = IMBaseCommandHandlerRegistry;
  v2 = [(IMBaseCommandHandlerRegistry *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    standardHandlers = v2->_standardHandlers;
    v2->_standardHandlers = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    lockdownHandlers = v2->_lockdownHandlers;
    v2->_lockdownHandlers = dictionary2;
  }

  return v2;
}

- (id)noopHandlerForCommand:(id)command
{
  v10 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v4 = IMLogHandleForCategory("IMBaseCommandHandlerRegistry");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412290;
    v9 = v6;
    _os_log_error_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_ERROR, "noopHandler is a required override for %@", &v8, 0xCu);
  }

  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"noopHandler is a required override for IMBaseCommandHandlerRegistry" userInfo:0];
  objc_exception_throw(v7);
}

- (BOOL)hasHandlerForCommand:(id)command
{
  v3 = [(NSMutableDictionary *)self->_standardHandlers objectForKeyedSubscript:command];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasLockdownHandlerForCommand:(id)command
{
  v3 = [(NSMutableDictionary *)self->_lockdownHandlers objectForKeyedSubscript:command];
  v4 = v3 != 0;

  return v4;
}

- (void)setLockdownHandler:(id)handler forCommand:(id)command
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  commandCopy = command;
  v8 = [(IMBaseCommandHandlerRegistry *)self canAddCommand:commandCopy];
  v9 = IMLogHandleForCategory("IMBaseCommandHandlerRegistry");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = 138412546;
      v16 = commandCopy;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "lockdown handler for command '%@' in %@: ADDED", &v15, 0x16u);
    }

    v9 = [handlerCopy copy];
    [(NSMutableDictionary *)self->_lockdownHandlers setObject:v9 forKeyedSubscript:commandCopy];
  }

  else if (v10)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = 138412546;
    v16 = commandCopy;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "lockdown handler for command '%@' in %@: NOT ADDED (Command not ready for Blastdoor)", &v15, 0x16u);
  }
}

- (void)setPassThroughLockdownHandlerForCommand:(id)command
{
  v17 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  if ([(IMBaseCommandHandlerRegistry *)self canAddCommand:commandCopy])
  {
    v5 = [(NSMutableDictionary *)self->_standardHandlers objectForKeyedSubscript:commandCopy];
    v6 = IMLogHandleForCategory("IMBaseCommandHandlerRegistry");
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v13 = 138412546;
        v14 = commandCopy;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "lockdown passThrough handler for command '%@' in %@: ADDED", &v13, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C1BD4(commandCopy, self, v7);
      }

      v5 = [(IMBaseCommandHandlerRegistry *)self noopHandlerForCommand:commandCopy];
    }

    v12 = [v5 copy];
    [(NSMutableDictionary *)self->_lockdownHandlers setObject:v12 forKeyedSubscript:commandCopy];
  }

  else
  {
    v5 = IMLogHandleForCategory("IMBaseCommandHandlerRegistry");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412546;
      v14 = commandCopy;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "lockdown passThrought handler for command '%@' in %@: NOT ADDED (Command not ready for Blastdoor)", &v13, 0x16u);
    }
  }
}

- (void)setStandardHandler:(id)handler forCommand:(id)command
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  commandCopy = command;
  if (![(IMBaseCommandHandlerRegistry *)self canAddCommand:commandCopy])
  {
    v14 = IMLogHandleForCategory("IMBaseCommandHandlerRegistry");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v16 = NSStringFromClass(v18);
      v19 = 138412546;
      v20 = commandCopy;
      v21 = 2112;
      v22 = v16;
      v17 = "handler for command '%@' in %@: NOT ADDED (Command not ready for Blastdoor)";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = [handlerCopy copy];
  [(NSMutableDictionary *)self->_standardHandlers setObject:v8 forKeyedSubscript:commandCopy];

  v9 = IMLogHandleForCategory("IMBaseCommandHandlerRegistry");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v19 = 138412546;
    v20 = commandCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "blastdoor handler for command '%@' in %@: ADDED", &v19, 0x16u);
  }

  if ([(IMBaseCommandHandlerRegistry *)self isLockedDown])
  {
    v12 = [(IMBaseCommandHandlerRegistry *)self noopHandlerForCommand:commandCopy];
    v13 = [v12 copy];
    [(NSMutableDictionary *)self->_lockdownHandlers setObject:v13 forKeyedSubscript:commandCopy];

    v14 = IMLogHandleForCategory("IMBaseCommandHandlerRegistry");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v19 = 138412546;
      v20 = commandCopy;
      v21 = 2112;
      v22 = v16;
      v17 = "added noop lockdown handler for command '%@' in %@";
LABEL_9:
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, v17, &v19, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)handlerForCommand:(id)command
{
  commandCopy = command;
  handlers = [(IMBaseCommandHandlerRegistry *)self handlers];
  v6 = [handlers objectForKeyedSubscript:commandCopy];

  return v6;
}

@end