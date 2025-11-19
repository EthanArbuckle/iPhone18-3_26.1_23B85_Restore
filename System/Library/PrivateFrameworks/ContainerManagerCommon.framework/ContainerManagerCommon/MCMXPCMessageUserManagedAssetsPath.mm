@interface MCMXPCMessageUserManagedAssetsPath
- (BOOL)createIfNecessary;
- (BOOL)isRelative;
- (MCMXPCMessageUserManagedAssetsPath)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
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

- (MCMXPCMessageUserManagedAssetsPath)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  xpc_dictionary_set_uint64(v8, "ContainerClass", 2uLL);
  v13.receiver = self;
  v13.super_class = MCMXPCMessageUserManagedAssetsPath;
  v10 = [(MCMXPCMessageWithContainerBase *)&v13 initWithXPCObject:v8 context:v9 error:a5];

  if (v10)
  {
    v10->_relative = xpc_dictionary_get_BOOL(v8, "IsRelative");
    v10->_createIfNecessary = xpc_dictionary_get_BOOL(v8, "CreateIfNecessary");
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end