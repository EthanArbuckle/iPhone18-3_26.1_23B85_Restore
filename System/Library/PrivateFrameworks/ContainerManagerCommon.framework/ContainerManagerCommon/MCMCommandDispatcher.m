@interface MCMCommandDispatcher
- (Class)_commandClassFromXPCMessage:(id)a3 context:(id)a4 error:(id *)a5;
- (MCMCommandDispatcher)init;
- (NSMutableDictionary)messageToCommandClassMap;
- (id)_commandFromCommandClass:(Class)a3 message:(id)a4 context:(id)a5 reply:(id)a6 error:(id *)a7;
- (id)_ifNeededRelayMessage:(id)a3 context:(id)a4;
- (id)_messageFromCommandClass:(Class)a3 xpcMessage:(id)a4 context:(id)a5 error:(id *)a6;
- (void)dispatchMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (void)registerCommandClass:(Class)a3;
@end

@implementation MCMCommandDispatcher

- (NSMutableDictionary)messageToCommandClassMap
{
  result = self->_messageToCommandClassMap;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_ifNeededRelayMessage:(id)a3 context:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 disposition];
  if (v7 == 2)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = [v5 command];
      _os_log_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEFAULT, "Relaying [%llu] to daemon.", &v17, 0xCu);
    }

    v13 = [MCMCommand relayToPrivilegedDaemonMessage:v5 context:v6];
  }

  else
  {
    if (v7 != 1)
    {
      v10 = [MCMError alloc];
      v11 = 72;
      goto LABEL_9;
    }

    v8 = containermanager_copy_global_configuration();
    v9 = [v8 runmode];

    if (v9 == 3)
    {
      v10 = [MCMError alloc];
      v11 = 100;
LABEL_9:
      v14 = [(MCMError *)v10 initWithErrorType:v11 category:3];
      v13 = [[MCMResultBase alloc] initWithError:v14];

      goto LABEL_11;
    }

    v13 = 0;
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_commandFromCommandClass:(Class)a3 message:(id)a4 context:(id)a5 reply:(id)a6 error:(id *)a7
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [[(objc_class *)a3 alloc] initWithMessage:v13 context:v12 reply:v11];

  if (a7 && !v14)
  {
    *a7 = [[MCMError alloc] initWithErrorType:38 category:3];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_messageFromCommandClass:(Class)a3 xpcMessage:(id)a4 context:(id)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v20[0] = 1;
  v11 = [(objc_class *)a3 incomingMessageClass];
  if (v11)
  {
    v12 = [v11 xpcMessageFromXPCObject:v9 context:v10 error:v20];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      goto LABEL_9;
    }

    v15 = [MCMError alloc];
    v16 = v20[0];
    v17 = 3;
  }

  else
  {
    v15 = [MCMError alloc];
    v16 = 40;
    v17 = 4;
  }

  v14 = [(MCMError *)v15 initWithErrorType:v16 category:v17];
  if (a6)
  {
    v14 = v14;
    v13 = 0;
    *a6 = v14;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (Class)_commandClassFromXPCMessage:(id)a3 context:(id)a4 error:(id *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(a3, "Command");
  v8 = [(MCMCommandDispatcher *)self messageToCommandClassMap];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (a5 && !v10)
  {
    *a5 = [[MCMError alloc] initWithErrorType:72 category:3];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)dispatchMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 resultPromise];
  v24[0] = 0;
  v12 = [(MCMCommandDispatcher *)self _commandClassFromXPCMessage:v8 context:v9 error:v24];
  v13 = v24[0];
  v14 = v13;
  if (v12)
  {
    v23 = v13;
    v15 = [(MCMCommandDispatcher *)self _messageFromCommandClass:v12 xpcMessage:v8 context:v9 error:&v23];
    v16 = v23;

    if (v15)
    {
      v17 = [(MCMCommandDispatcher *)self _ifNeededRelayMessage:v15 context:v9];
      if (!v17)
      {
        v22 = v16;
        v20 = [(MCMCommandDispatcher *)self _commandFromCommandClass:v12 message:v15 context:v9 reply:v10 error:&v22];
        v14 = v22;

        if (v20)
        {
          if (([(MCMResultBase *)v20 preflightClientAllowed]& 1) == 0)
          {
            v16 = +[MCMError notEntitled];

            v21 = [[MCMResultBase alloc] initWithError:v16];
            [v11 completeWithResult:v21];

            goto LABEL_7;
          }

          [(MCMResultBase *)v20 execute];
        }

        else
        {
          v20 = [[MCMResultBase alloc] initWithError:v14];
          [v11 completeWithResult:v20];
        }

        goto LABEL_8;
      }

      v18 = v17;
      [v11 completeWithResult:v17];
    }

    else
    {
      v15 = [[MCMResultBase alloc] initWithError:v16];
      [v11 completeWithResult:v15];
    }

LABEL_7:
    v14 = v16;
    goto LABEL_8;
  }

  v15 = [[MCMResultBase alloc] initWithError:v13];
  [v11 completeWithResult:v15];
LABEL_8:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)registerCommandClass:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = [(MCMCommandDispatcher *)self messageToCommandClassMap];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[objc_class command](a3, "command")}];
  [v6 setObject:a3 forKeyedSubscript:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (MCMCommandDispatcher)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMCommandDispatcher;
  v2 = [(MCMCommandDispatcher *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    messageToCommandClassMap = v2->_messageToCommandClassMap;
    v2->_messageToCommandClassMap = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

@end