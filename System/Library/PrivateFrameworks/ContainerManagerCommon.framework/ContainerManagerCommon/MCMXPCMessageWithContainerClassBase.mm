@interface MCMXPCMessageWithContainerClassBase
- (MCMContainerConfiguration)containerConfig;
- (MCMXPCMessageWithContainerClassBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageWithContainerClassBase

- (unsigned)disposition
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMXPCMessageWithContainerClassBase;
  disposition = [(MCMXPCMessageBase *)&v7 disposition];
  if (disposition == 1)
  {
    containerConfig = [(MCMXPCMessageWithContainerClassBase *)self containerConfig];
    disposition = [containerConfig disposition];
  }

  v5 = *MEMORY[0x1E69E9840];
  return disposition;
}

- (MCMContainerConfiguration)containerConfig
{
  result = self->_containerConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithContainerClassBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v22 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = MCMXPCMessageWithContainerClassBase;
  v9 = [(MCMXPCMessageBase *)&v21 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v10 = v9;
    xpc_dictionary_get_uint64(objectCopy, "ContainerClass");
    v11 = container_class_normalized();
    context = [(MCMXPCMessageBase *)v10 context];
    globalConfiguration = [context globalConfiguration];
    staticConfig = [globalConfiguration staticConfig];
    v15 = [staticConfig configForContainerClass:v11];
    containerConfig = v10->_containerConfig;
    v10->_containerConfig = v15;

    v17 = v10->_containerConfig;
    if (v17)
    {
      if ([(MCMContainerConfiguration *)v17 supportedOnPlatform])
      {
        goto LABEL_10;
      }

      v18 = 72;
    }

    else
    {
      v18 = 20;
    }
  }

  else
  {
    v18 = 1;
  }

  v10 = 0;
  if (error)
  {
    *error = v18;
  }

LABEL_10:

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

@end