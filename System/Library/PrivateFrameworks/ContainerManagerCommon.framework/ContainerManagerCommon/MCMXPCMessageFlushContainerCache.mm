@interface MCMXPCMessageFlushContainerCache
- (BOOL)transient;
- (MCMXPCMessageFlushContainerCache)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
@end

@implementation MCMXPCMessageFlushContainerCache

- (BOOL)transient
{
  result = self->_transient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageFlushContainerCache)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageFlushContainerCache;
  v9 = [(MCMXPCMessageWithContainerClassBase *)&v12 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    v9->_transient = xpc_dictionary_get_BOOL(v8, "Transient");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end