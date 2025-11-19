@interface MCMXPCMessageWithContainerBase
- (MCMContainerIdentity)containerIdentity;
- (MCMXPCMessageWithContainerBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (id)containerIdentityFromXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageWithContainerBase

- (MCMContainerIdentity)containerIdentity
{
  result = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)disposition
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMXPCMessageWithContainerBase;
  v3 = [(MCMXPCMessageBase *)&v7 disposition];
  if (v3 == 1)
  {
    v4 = [(MCMXPCMessageWithContainerBase *)self containerIdentity];
    v3 = [v4 disposition];
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)containerIdentityFromXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v33[0] = 1;
  v10 = [v9 clientIdentity];
  uint64 = xpc_dictionary_get_uint64(v8, "Platform");
  v12 = [v10 codeSignInfo];
  v13 = [v12 identifier];
  v14 = [(MCMXPCMessageBase *)self identifierFromXPCObject:v8 elseClientIdentifier:v13];

  if (!v14)
  {
    v22 = 0;
    v25 = 0;
    v18 = 0;
    v23 = 0;
    v26 = 18;
    goto LABEL_10;
  }

  v15 = xpc_dictionary_get_uint64(v8, "ContainerClass");
  v16 = [v9 globalConfiguration];
  v17 = [v16 staticConfig];
  v18 = [v17 configForContainerClass:v15];

  if (!v18)
  {
    v22 = 0;
    v25 = 0;
    v23 = 0;
    v26 = 20;
    goto LABEL_10;
  }

  if (([v18 supportedOnPlatform] & 1) == 0)
  {
    v22 = 0;
    v25 = 0;
    v23 = 0;
    v26 = 72;
LABEL_10:
    v33[0] = v26;
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v31 = uint64;
  v30 = xpc_dictionary_get_BOOL(v8, "Transient");
  v19 = objc_opt_class();
  v20 = [v9 userIdentityCache];
  v21 = [(MCMXPCMessageBase *)self warnings];
  v32 = 0;
  v22 = [v19 legacyUserIdentityForIdentifier:v14 targetUserIdentity:0 containerConfig:v18 clientIdentity:v10 userIdentityCache:v20 warnings:v21 error:&v32];
  v23 = v32;

  if (v22)
  {
    v24 = [v9 userIdentityCache];
    v25 = [MCMContainerIdentity containerIdentityWithUserIdentity:v22 identifier:v14 containerConfig:v18 platform:v31 transient:v30 userIdentityCache:v24 error:v33];

    if (!a5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v25 = 0;
    v33[0] = [v23 type];
    if (!a5)
    {
      goto LABEL_13;
    }
  }

LABEL_11:
  if (!v25)
  {
    *a5 = v33[0];
  }

LABEL_13:
  v27 = v25;

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (MCMXPCMessageWithContainerBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = MCMXPCMessageWithContainerBase;
  v10 = [(MCMXPCMessageBase *)&v16 initWithXPCObject:v8 context:v9 error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [(MCMXPCMessageWithContainerBase *)v10 containerIdentityFromXPCObject:v8 context:v9 error:a5];
    containerIdentity = v11->_containerIdentity;
    v11->_containerIdentity = v12;

    if (!v11->_containerIdentity)
    {

      v11 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

@end