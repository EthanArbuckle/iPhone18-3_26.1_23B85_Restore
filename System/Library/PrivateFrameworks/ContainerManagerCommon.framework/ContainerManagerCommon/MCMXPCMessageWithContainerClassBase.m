@interface MCMXPCMessageWithContainerClassBase
- (MCMContainerConfiguration)containerConfig;
- (MCMXPCMessageWithContainerClassBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageWithContainerClassBase

- (unsigned)disposition
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMXPCMessageWithContainerClassBase;
  v3 = [(MCMXPCMessageBase *)&v7 disposition];
  if (v3 == 1)
  {
    v4 = [(MCMXPCMessageWithContainerClassBase *)self containerConfig];
    v3 = [v4 disposition];
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (MCMContainerConfiguration)containerConfig
{
  result = self->_containerConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithContainerClassBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v21.receiver = self;
  v21.super_class = MCMXPCMessageWithContainerClassBase;
  v9 = [(MCMXPCMessageBase *)&v21 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    v10 = v9;
    xpc_dictionary_get_uint64(v8, "ContainerClass");
    v11 = container_class_normalized();
    v12 = [(MCMXPCMessageBase *)v10 context];
    v13 = [v12 globalConfiguration];
    v14 = [v13 staticConfig];
    v15 = [v14 configForContainerClass:v11];
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
  if (a5)
  {
    *a5 = v18;
  }

LABEL_10:

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

@end