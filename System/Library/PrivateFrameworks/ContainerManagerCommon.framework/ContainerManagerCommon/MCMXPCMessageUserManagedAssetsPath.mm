@interface MCMXPCMessageUserManagedAssetsPath
- (BOOL)createIfNecessary;
- (BOOL)isRelative;
- (MCMXPCMessageUserManagedAssetsPath)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageUserManagedAssetsPath

- (BOOL)createIfNecessary
{
  result = self->_createIfNecessary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isRelative
{
  result = self->_relative;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageUserManagedAssetsPath)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v14 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  xpc_dictionary_set_uint64(objectCopy, "ContainerClass", 2uLL);
  v13.receiver = self;
  v13.super_class = MCMXPCMessageUserManagedAssetsPath;
  v10 = [(MCMXPCMessageWithContainerBase *)&v13 initWithXPCObject:objectCopy context:contextCopy error:error];

  if (v10)
  {
    v10->_relative = xpc_dictionary_get_BOOL(objectCopy, "IsRelative");
    v10->_createIfNecessary = xpc_dictionary_get_BOOL(objectCopy, "CreateIfNecessary");
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end