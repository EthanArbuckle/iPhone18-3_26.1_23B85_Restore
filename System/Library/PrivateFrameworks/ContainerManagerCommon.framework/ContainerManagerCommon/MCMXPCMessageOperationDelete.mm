@interface MCMXPCMessageOperationDelete
- (BOOL)waitForDiskSpaceReclaim;
- (MCMXPCMessageOperationDelete)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageOperationDelete

- (BOOL)waitForDiskSpaceReclaim
{
  result = self->_waitForDiskSpaceReclaim;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageOperationDelete)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageOperationDelete;
  v9 = [(MCMXPCMessageWithConcreteContainersArrayBase *)&v12 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_waitForDiskSpaceReclaim = xpc_dictionary_get_uint64(objectCopy, "Flags") & 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end