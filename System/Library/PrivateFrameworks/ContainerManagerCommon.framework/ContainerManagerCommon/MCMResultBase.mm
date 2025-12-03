@interface MCMResultBase
- (BOOL)encodeResultOntoReply:(id)reply;
- (BOOL)isCacheable;
- (MCMError)error;
- (MCMResultBase)init;
- (MCMResultBase)initWithError:(id)error;
- (NSArray)warnings;
- (id)_encodeError:(id)error;
- (void)_attachWarnings:(id)warnings;
- (void)setCacheable:(BOOL)cacheable;
@end

@implementation MCMResultBase

- (MCMError)error
{
  result = self->_error;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isCacheable
{
  result = self->_cacheable;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMResultBase)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMResultBase;
  v2 = [(MCMResultBase *)&v7 init];
  v3 = v2;
  if (v2)
  {
    error = v2->_error;
    v2->_error = 0;

    v3->_cacheable = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSArray)warnings
{
  result = self->_warnings;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCacheable:(BOOL)cacheable
{
  v4 = *MEMORY[0x1E69E9840];
  self->_cacheable = cacheable;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_attachWarnings:(id)warnings
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_warnings = &self->_warnings;

  objc_storeStrong(p_warnings, warnings);
}

- (id)_encodeError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = xpc_dictionary_create(0, 0, 0);
  [errorCopy category];
  [errorCopy type];
  path = [errorCopy path];
  [path fileSystemRepresentation];
  [errorCopy POSIXerrno];
  message = [errorCopy message];

  [message UTF8String];
  container_error_create_with_message();

  container_xpc_encode_error();
  container_error_free();
  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  error = [(MCMResultBase *)self error];

  if (error)
  {
    error2 = [(MCMResultBase *)self error];
    v7 = [(MCMResultBase *)self _encodeError:error2];

    xpc_dictionary_set_value(replyCopy, "ReplyErrorExtended", v7);
  }

  warnings = [(MCMResultBase *)self warnings];
  if (warnings)
  {
    v9 = warnings;
    warnings2 = [(MCMResultBase *)self warnings];
    v11 = [warnings2 count];

    if (v11)
    {
      v12 = xpc_array_create(0, 0);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      warnings3 = [(MCMResultBase *)self warnings];
      v14 = [warnings3 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          v17 = 0;
          do
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(warnings3);
            }

            v18 = [(MCMResultBase *)self _encodeError:*(*(&v22 + 1) + 8 * v17)];
            xpc_array_append_value(v12, v18);

            ++v17;
          }

          while (v15 != v17);
          v15 = [warnings3 countByEnumeratingWithState:&v22 objects:v21 count:16];
        }

        while (v15);
      }

      xpc_dictionary_set_value(replyCopy, "ReplyWarnings", v12);
    }
  }

  xpc_dictionary_set_BOOL(replyCopy, "ReplyCacheable", [(MCMResultBase *)self isCacheable]);

  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

- (MCMResultBase)initWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = MCMResultBase;
  v6 = [(MCMResultBase *)&v14 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (errorCopy)
  {
    objc_storeStrong(&v6->_error, error);
    warnings = v7->_warnings;
    v7->_warnings = 0;

    v7->_cacheable = 1;
LABEL_4:

    v9 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  uTF8String = [v12 UTF8String];
  v15 = 136315138;
  v16 = uTF8String;
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

@end