@interface MCMCommandSetTestLock
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)enable;
- (BOOL)preflightClientAllowed;
- (MCMCommandSetTestLock)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMXPCMessage)message;
- (unint64_t)requestedLocks;
- (void)execute;
@end

@implementation MCMCommandSetTestLock

- (MCMXPCMessage)message
{
  result = self->_message;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)enable
{
  result = self->_enable;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)requestedLocks
{
  result = self->_requestedLocks;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = containermanager_copy_global_configuration();
  isInternalImage = [v4 isInternalImage];

  if (isInternalImage)
  {
    v6 = containermanager_copy_global_configuration();
    if ([v6 runmode] != 2)
    {
      v7 = containermanager_copy_global_configuration();
      if ([v7 runmode] != 3)
      {
        v19 = containermanager_copy_global_configuration();
        runmode = [v19 runmode];

        if (runmode != 4)
        {
          v10 = 0;
LABEL_7:
          requestedLocks = [(MCMCommandSetTestLock *)self requestedLocks];
          enable = [(MCMCommandSetTestLock *)self enable];
          v13 = requestedLocks != 15 || enable;
          if (requestedLocks != 15 || enable)
          {
            if (requestedLocks < 0xF)
            {
              v21 = (1 << requestedLocks);
              v22 = execute_gLocksEnabled & v21;
              if (enable)
              {
                if (!v22)
                {
                  execute_gLocksEnabled |= v21;
                  v23 = +[MCMTestLocks sharedInstance];
                  v15 = 1;
                  [v23 setEnabled:1];

                  v24 = +[MCMTestLocks sharedInstance];
                  [v24 acquireLock:requestedLocks];

                  v14 = 0;
                  goto LABEL_26;
                }
              }

              else if (v22)
              {
                v25 = requestedLocks >= 2 ? ~v21 : -4;
                execute_gLocksEnabled &= v25;
                v26 = +[MCMTestLocks sharedInstance];
                [v26 releaseLock:requestedLocks];

                if (!execute_gLocksEnabled)
                {
                  v27 = +[MCMTestLocks sharedInstance];
                  [v27 setEnabled:0];
                }
              }

              v14 = 0;
              v15 = 1;
              goto LABEL_26;
            }

            v14 = [[MCMError alloc] initWithErrorType:38 category:3];
            v15 = 0;
          }

          else
          {
            v18 = +[MCMTestLocks sharedInstance];
            [v18 setEnabled:0];

            v15 = 0;
            v14 = 0;
            execute_gLocksEnabled = 0;
          }

LABEL_26:
          v17 = v15 | !v13;
          goto LABEL_27;
        }

LABEL_6:
        message = [(MCMCommandSetTestLock *)self message];
        context = [(MCMCommand *)self context];
        v10 = [MCMCommand relayToPrivilegedDaemonMessage:message context:context];

        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v33) = 0;
    _os_log_fault_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_FAULT, "Unsupported call to set lock!", &v33, 2u);
  }

  v14 = +[MCMError unsupported];
  v10 = 0;
  v17 = 0;
LABEL_27:
  v28 = container_log_handle_for_category();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v33 = 138412290;
    v34 = v14;
    _os_log_debug_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_DEBUG, "Set test locks; error = %@", &v33, 0xCu);
  }

  if (v17)
  {
    if (v10)
    {
      v29 = v10;
    }

    else
    {
      v29 = objc_opt_new();
    }
  }

  else
  {
    v29 = [[MCMResultBase alloc] initWithError:v14];
  }

  v30 = v29;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v30];

  objc_autoreleasePoolPop(v3);
  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToTest = [clientIdentity isAllowedToTest];

  v5 = *MEMORY[0x1E69E9840];
  return isAllowedToTest;
}

- (MCMCommandSetTestLock)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MCMCommandSetTestLock;
  v10 = [(MCMCommand *)&v13 initWithMessage:messageCopy context:context reply:reply];
  if (v10)
  {
    v10->_requestedLocks = [messageCopy requestedLocks];
    v10->_enable = [messageCopy enable];
    objc_storeStrong(&v10->_message, message);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 31;
}

@end