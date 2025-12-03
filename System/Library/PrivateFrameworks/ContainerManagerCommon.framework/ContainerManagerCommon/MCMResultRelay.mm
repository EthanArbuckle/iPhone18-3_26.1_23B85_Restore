@interface MCMResultRelay
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultRelay)initWithXPCReplyFromRelay:(id)relay;
- (OS_xpc_object)xpcReplyFromRelay;
@end

@implementation MCMResultRelay

- (OS_xpc_object)xpcReplyFromRelay
{
  result = self->_xpcReplyFromRelay;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v13 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12.receiver = self;
  v12.super_class = MCMResultRelay;
  v5 = [(MCMResultBase *)&v12 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      xpcReplyFromRelay = [(MCMResultRelay *)self xpcReplyFromRelay];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40__MCMResultRelay_encodeResultOntoReply___block_invoke;
      v10[3] = &unk_1E86B0F18;
      v11 = replyCopy;
      xpc_dictionary_apply(xpcReplyFromRelay, v10);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __40__MCMResultRelay_encodeResultOntoReply___block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  xpc_dictionary_set_value(*(a1 + 32), a2, a3);
  v3 = *MEMORY[0x1E69E9840];
  return 1;
}

- (MCMResultRelay)initWithXPCReplyFromRelay:(id)relay
{
  v11 = *MEMORY[0x1E69E9840];
  relayCopy = relay;
  v10.receiver = self;
  v10.super_class = MCMResultRelay;
  v6 = [(MCMResultBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcReplyFromRelay, relay);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end