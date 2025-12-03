@interface MCMResultOperationDelete
- (BOOL)encodeResultOntoReply:(id)reply;
- (OS_xpc_object)xpcToMerge;
- (void)mergeWithXPCResult:(id)result;
- (void)setXpcToMerge:(id)merge;
@end

@implementation MCMResultOperationDelete

- (void)setXpcToMerge:(id)merge
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_xpcToMerge = &self->_xpcToMerge;

  objc_storeStrong(p_xpcToMerge, merge);
}

- (OS_xpc_object)xpcToMerge
{
  result = self->_xpcToMerge;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v15.receiver = self;
  v15.super_class = MCMResultOperationDelete;
  v5 = [(MCMResultWithContainersArrayBase *)&v15 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];
    if (!error)
    {
      xpcToMerge = [(MCMResultOperationDelete *)self xpcToMerge];

      if (!xpcToMerge)
      {
        goto LABEL_4;
      }

      xpcToMerge2 = [(MCMResultOperationDelete *)self xpcToMerge];
      error = xpc_dictionary_get_array(xpcToMerge2, "ReplyContainersArray");

      if (error && MEMORY[0x1E12D4840](error) == MEMORY[0x1E69E9E50])
      {
        v11 = xpc_dictionary_get_array(replyCopy, "ReplyContainersArray");
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __50__MCMResultOperationDelete_encodeResultOntoReply___block_invoke;
        v13[3] = &unk_1E86B0908;
        v14 = v11;
        v12 = v11;
        xpc_array_apply(error, v13);
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

- (void)mergeWithXPCResult:(id)result
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMResultOperationDelete *)self setXpcToMerge:result];
}

@end