@interface MCMCommandDispatcher
- (Class)_commandClassFromXPCMessage:(id)message context:(id)context error:(id *)error;
- (MCMCommandDispatcher)init;
- (NSMutableDictionary)messageToCommandClassMap;
- (id)_commandFromCommandClass:(Class)class message:(id)message context:(id)context reply:(id)reply error:(id *)error;
- (id)_ifNeededRelayMessage:(id)message context:(id)context;
- (id)_messageFromCommandClass:(Class)class xpcMessage:(id)message context:(id)context error:(id *)error;
- (void)dispatchMessage:(id)message context:(id)context reply:(id)reply;
- (void)registerCommandClass:(Class)class;
@end

@implementation MCMCommandDispatcher

- (NSMutableDictionary)messageToCommandClassMap
{
  result = self->_messageToCommandClassMap;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_ifNeededRelayMessage:(id)message context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  disposition = [messageCopy disposition];
  if (disposition == 2)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      command = [messageCopy command];
      _os_log_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEFAULT, "Relaying [%llu] to daemon.", &v17, 0xCu);
    }

    v13 = [MCMCommand relayToPrivilegedDaemonMessage:messageCopy context:contextCopy];
  }

  else
  {
    if (disposition != 1)
    {
      v10 = [MCMError alloc];
      v11 = 72;
      goto LABEL_9;
    }

    v8 = containermanager_copy_global_configuration();
    runmode = [v8 runmode];

    if (runmode == 3)
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

- (id)_commandFromCommandClass:(Class)class message:(id)message context:(id)context reply:(id)reply error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  contextCopy = context;
  messageCopy = message;
  v14 = [[(objc_class *)class alloc] initWithMessage:messageCopy context:contextCopy reply:replyCopy];

  if (error && !v14)
  {
    *error = [[MCMError alloc] initWithErrorType:38 category:3];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_messageFromCommandClass:(Class)class xpcMessage:(id)message context:(id)context error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  v20[0] = 1;
  incomingMessageClass = [(objc_class *)class incomingMessageClass];
  if (incomingMessageClass)
  {
    v12 = [incomingMessageClass xpcMessageFromXPCObject:messageCopy context:contextCopy error:v20];
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
  if (error)
  {
    v14 = v14;
    v13 = 0;
    *error = v14;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (Class)_commandClassFromXPCMessage:(id)message context:(id)context error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(message, "Command");
  messageToCommandClassMap = [(MCMCommandDispatcher *)self messageToCommandClassMap];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v10 = [messageToCommandClassMap objectForKeyedSubscript:v9];

  if (error && !v10)
  {
    *error = [[MCMError alloc] initWithErrorType:72 category:3];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)dispatchMessage:(id)message context:(id)context reply:(id)reply
{
  v24[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  replyCopy = reply;
  resultPromise = [replyCopy resultPromise];
  v24[0] = 0;
  v12 = [(MCMCommandDispatcher *)self _commandClassFromXPCMessage:messageCopy context:contextCopy error:v24];
  v13 = v24[0];
  v14 = v13;
  if (v12)
  {
    v23 = v13;
    v15 = [(MCMCommandDispatcher *)self _messageFromCommandClass:v12 xpcMessage:messageCopy context:contextCopy error:&v23];
    v16 = v23;

    if (v15)
    {
      v17 = [(MCMCommandDispatcher *)self _ifNeededRelayMessage:v15 context:contextCopy];
      if (!v17)
      {
        v22 = v16;
        v20 = [(MCMCommandDispatcher *)self _commandFromCommandClass:v12 message:v15 context:contextCopy reply:replyCopy error:&v22];
        v14 = v22;

        if (v20)
        {
          if (([(MCMResultBase *)v20 preflightClientAllowed]& 1) == 0)
          {
            v16 = +[MCMError notEntitled];

            v21 = [[MCMResultBase alloc] initWithError:v16];
            [resultPromise completeWithResult:v21];

            goto LABEL_7;
          }

          [(MCMResultBase *)v20 execute];
        }

        else
        {
          v20 = [[MCMResultBase alloc] initWithError:v14];
          [resultPromise completeWithResult:v20];
        }

        goto LABEL_8;
      }

      v18 = v17;
      [resultPromise completeWithResult:v17];
    }

    else
    {
      v15 = [[MCMResultBase alloc] initWithError:v16];
      [resultPromise completeWithResult:v15];
    }

LABEL_7:
    v14 = v16;
    goto LABEL_8;
  }

  v15 = [[MCMResultBase alloc] initWithError:v13];
  [resultPromise completeWithResult:v15];
LABEL_8:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)registerCommandClass:(Class)class
{
  v7 = *MEMORY[0x1E69E9840];
  messageToCommandClassMap = [(MCMCommandDispatcher *)self messageToCommandClassMap];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[objc_class command](class, "command")}];
  [messageToCommandClassMap setObject:class forKeyedSubscript:v4];

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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    messageToCommandClassMap = v2->_messageToCommandClassMap;
    v2->_messageToCommandClassMap = dictionary;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

@end