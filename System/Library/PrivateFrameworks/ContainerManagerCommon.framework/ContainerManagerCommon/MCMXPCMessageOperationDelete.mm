@interface MCMXPCMessageOperationDelete
- (BOOL)waitForDiskSpaceReclaim;
- (MCMXPCMessageOperationDelete)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
@end

@implementation MCMXPCMessageOperationDelete

- (BOOL)waitForDiskSpaceReclaim
{
  result = self->_waitForDiskSpaceReclaim;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageOperationDelete)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageOperationDelete;
  v9 = [(MCMXPCMessageWithConcreteContainersArrayBase *)&v12 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    v9->_waitForDiskSpaceReclaim = xpc_dictionary_get_uint64(v8, "Flags") & 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end