@interface MCMResultRelay
- (BOOL)encodeResultOntoReply:(id)a3;
- (MCMResultRelay)initWithXPCReplyFromRelay:(id)a3;
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

- (BOOL)encodeResultOntoReply:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MCMResultRelay;
  v5 = [(MCMResultBase *)&v12 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      v7 = [(MCMResultRelay *)self xpcReplyFromRelay];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40__MCMResultRelay_encodeResultOntoReply___block_invoke;
      v10[3] = &unk_1E86B0F18;
      v11 = v4;
      xpc_dictionary_apply(v7, v10);
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

- (MCMResultRelay)initWithXPCReplyFromRelay:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MCMResultRelay;
  v6 = [(MCMResultBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcReplyFromRelay, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end