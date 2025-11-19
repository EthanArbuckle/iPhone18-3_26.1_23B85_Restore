@interface MCMCommand
+ (Class)incomingMessageClass;
+ (id)relayToPrivilegedDaemonMessage:(id)a3 context:(id)a4;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommand)initWithContext:(id)a3 resultPromise:(id)a4;
- (MCMCommand)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMCommandContext)context;
- (MCMReply)reply;
- (MCMResultPromise)resultPromise;
- (NSMutableArray)warnings;
- (void)execute;
- (void)recordWarning:(id)a3;
@end

@implementation MCMCommand

- (MCMCommandContext)context
{
  result = self->_context;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMResultPromise)resultPromise
{
  result = self->_resultPromise;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSMutableArray)warnings
{
  result = self->_warnings;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMReply)reply
{
  result = self->_reply;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)recordWarning:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = [(MCMCommand *)self warnings];
  [v6 addObject:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)execute
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 raise:v3 format:{@"%@ was called on the base class %@", v4, v6}];

  __break(1u);
}

- (BOOL)preflightClientAllowed
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

- (MCMCommand)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v9 resultPromise];
  v12 = [(MCMCommand *)self initWithContext:v10 resultPromise:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_reply, a5);
    warnings = v12->_warnings;
    v14 = [v8 warnings];
    [(NSMutableArray *)warnings addObjectsFromArray:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (MCMCommand)initWithContext:(id)a3 resultPromise:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MCMCommand;
  v9 = [(MCMCommand *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    v11 = [v8 warnings];
    warnings = v10->_warnings;
    v10->_warnings = v11;

    objc_storeStrong(&v10->_resultPromise, a4);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)relayToPrivilegedDaemonMessage:(id)a3 context:(id)a4
{
  buf[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  container_xpc_set_use_shared_connection();
  v7 = [v6 clientIdentity];

  [v7 createLibsystemClient];
  v8 = container_client_copy_encoded_xpc_object();
  if (v8)
  {
    v9 = [v5 xpcObject];
    xpc_dictionary_set_value(v9, "ProxyForClient", v8);

    buf[0] = 0;
    v10 = [v5 xpcObject];
    v11 = container_xpc_send_sync_message();

    if (v11)
    {
      v12 = [[MCMResultRelay alloc] initWithXPCReplyFromRelay:v11];
    }

    else
    {
      v14 = [[MCMError alloc] initWithLibsystemError:buf[0]];
      v12 = [(MCMResultBase *)[MCMResultRelay alloc] initWithError:v14];
    }

    container_error_free();
  }

  else
  {
    v11 = [[MCMError alloc] initWithErrorType:1 category:2];
    v12 = [[MCMResultBase alloc] initWithError:v11];
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = 1;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Could not serialize client for proxy; error = %llu", buf, 0xCu);
    }
  }

  container_free_client();
  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (Class)incomingMessageClass
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 raise:v3 format:{@"%@ was called on the base class %@", v4, v6}];

  __break(1u);
  return result;
}

+ (unint64_t)command
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 raise:v3 format:{@"%@ was called on the base class %@", v4, v6}];

  __break(1u);
  return result;
}

@end