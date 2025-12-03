@interface MCMXPCMessageDeletePluginDataContainerContents
- (MCMXPCMessageDeletePluginDataContainerContents)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageDeletePluginDataContainerContents

- (unsigned)disposition
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMXPCMessageDeletePluginDataContainerContents;
  disposition = [(MCMXPCMessageWithContainerBase *)&v6 disposition];
  if (disposition == 1)
  {
    v3 = containermanager_copy_global_configuration();
    disposition = [v3 dispositionForContainerClass:4];
  }

  v4 = *MEMORY[0x1E69E9840];
  return disposition;
}

- (MCMXPCMessageDeletePluginDataContainerContents)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  objectCopy = object;
  xpc_dictionary_set_uint64(objectCopy, "ContainerClass", 4uLL);
  v13.receiver = self;
  v13.super_class = MCMXPCMessageDeletePluginDataContainerContents;
  v10 = [(MCMXPCMessageWithContainerBase *)&v13 initWithXPCObject:objectCopy context:contextCopy error:error];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end