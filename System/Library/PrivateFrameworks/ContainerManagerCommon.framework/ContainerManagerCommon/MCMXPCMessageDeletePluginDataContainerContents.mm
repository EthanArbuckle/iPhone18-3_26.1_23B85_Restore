@interface MCMXPCMessageDeletePluginDataContainerContents
- (MCMXPCMessageDeletePluginDataContainerContents)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageDeletePluginDataContainerContents

- (unsigned)disposition
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMXPCMessageDeletePluginDataContainerContents;
  v2 = [(MCMXPCMessageWithContainerBase *)&v6 disposition];
  if (v2 == 1)
  {
    v3 = containermanager_copy_global_configuration();
    v2 = [v3 dispositionForContainerClass:4];
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (MCMXPCMessageDeletePluginDataContainerContents)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  xpc_dictionary_set_uint64(v9, "ContainerClass", 4uLL);
  v13.receiver = self;
  v13.super_class = MCMXPCMessageDeletePluginDataContainerContents;
  v10 = [(MCMXPCMessageWithContainerBase *)&v13 initWithXPCObject:v9 context:v8 error:a5];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end