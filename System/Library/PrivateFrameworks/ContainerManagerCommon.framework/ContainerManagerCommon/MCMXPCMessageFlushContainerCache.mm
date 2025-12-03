@interface MCMXPCMessageFlushContainerCache
- (BOOL)transient;
- (MCMXPCMessageFlushContainerCache)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageFlushContainerCache

- (BOOL)transient
{
  result = self->_transient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageFlushContainerCache)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageFlushContainerCache;
  v9 = [(MCMXPCMessageWithContainerClassBase *)&v12 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_transient = xpc_dictionary_get_BOOL(objectCopy, "Transient");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end