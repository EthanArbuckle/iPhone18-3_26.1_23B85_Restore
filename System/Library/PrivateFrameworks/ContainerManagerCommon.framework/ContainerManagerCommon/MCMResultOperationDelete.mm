@interface MCMResultOperationDelete
- (BOOL)encodeResultOntoReply:(id)a3;
- (OS_xpc_object)xpcToMerge;
- (void)mergeWithXPCResult:(id)a3;
- (void)setXpcToMerge:(id)a3;
@end

@implementation MCMResultOperationDelete

- (void)setXpcToMerge:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_xpcToMerge = &self->_xpcToMerge;

  objc_storeStrong(p_xpcToMerge, a3);
}

- (OS_xpc_object)xpcToMerge
{
  result = self->_xpcToMerge;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MCMResultOperationDelete;
  v5 = [(MCMResultWithContainersArrayBase *)&v15 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];
    if (!v6)
    {
      v9 = [(MCMResultOperationDelete *)self xpcToMerge];

      if (!v9)
      {
        goto LABEL_4;
      }

      v10 = [(MCMResultOperationDelete *)self xpcToMerge];
      v6 = xpc_dictionary_get_array(v10, "ReplyContainersArray");

      if (v6 && MEMORY[0x1E12D4840](v6) == MEMORY[0x1E69E9E50])
      {
        v11 = xpc_dictionary_get_array(v4, "ReplyContainersArray");
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __50__MCMResultOperationDelete_encodeResultOntoReply___block_invoke;
        v13[3] = &unk_1E86B0908;
        v14 = v11;
        v12 = v11;
        xpc_array_apply(v6, v13);
      }
    }
  }

LABEL_4:

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __50__MCMResultOperationDelete_encodeResultOntoReply___block_invoke(uint64_t a1, int a2, xpc_object_t value)
{
  v5 = *MEMORY[0x1E69E9840];
  xpc_array_append_value(*(a1 + 32), value);
  v3 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)mergeWithXPCResult:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMResultOperationDelete *)self setXpcToMerge:a3];
}

@end