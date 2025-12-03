@interface MCMXPCMessageWithContainerBase
- (MCMContainerIdentity)containerIdentity;
- (MCMXPCMessageWithContainerBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (id)containerIdentityFromXPCObject:(id)object context:(id)context error:(unint64_t *)error;
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
  disposition = [(MCMXPCMessageBase *)&v7 disposition];
  if (disposition == 1)
  {
    containerIdentity = [(MCMXPCMessageWithContainerBase *)self containerIdentity];
    disposition = [containerIdentity disposition];
  }

  v5 = *MEMORY[0x1E69E9840];
  return disposition;
}

- (id)containerIdentityFromXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v33[0] = 1;
  clientIdentity = [contextCopy clientIdentity];
  uint64 = xpc_dictionary_get_uint64(objectCopy, "Platform");
  codeSignInfo = [clientIdentity codeSignInfo];
  identifier = [codeSignInfo identifier];
  v14 = [(MCMXPCMessageBase *)self identifierFromXPCObject:objectCopy elseClientIdentifier:identifier];

  if (!v14)
  {
    v22 = 0;
    v25 = 0;
    v18 = 0;
    v23 = 0;
    v26 = 18;
    goto LABEL_10;
  }

  v15 = xpc_dictionary_get_uint64(objectCopy, "ContainerClass");
  globalConfiguration = [contextCopy globalConfiguration];
  staticConfig = [globalConfiguration staticConfig];
  v18 = [staticConfig configForContainerClass:v15];

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
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v31 = uint64;
  v30 = xpc_dictionary_get_BOOL(objectCopy, "Transient");
  v19 = objc_opt_class();
  userIdentityCache = [contextCopy userIdentityCache];
  warnings = [(MCMXPCMessageBase *)self warnings];
  v32 = 0;
  v22 = [v19 legacyUserIdentityForIdentifier:v14 targetUserIdentity:0 containerConfig:v18 clientIdentity:clientIdentity userIdentityCache:userIdentityCache warnings:warnings error:&v32];
  v23 = v32;

  if (v22)
  {
    userIdentityCache2 = [contextCopy userIdentityCache];
    v25 = [MCMContainerIdentity containerIdentityWithUserIdentity:v22 identifier:v14 containerConfig:v18 platform:v31 transient:v30 userIdentityCache:userIdentityCache2 error:v33];

    if (!error)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v25 = 0;
    v33[0] = [v23 type];
    if (!error)
    {
      goto LABEL_13;
    }
  }

LABEL_11:
  if (!v25)
  {
    *error = v33[0];
  }

LABEL_13:
  v27 = v25;

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (MCMXPCMessageWithContainerBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = MCMXPCMessageWithContainerBase;
  v10 = [(MCMXPCMessageBase *)&v16 initWithXPCObject:objectCopy context:contextCopy error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [(MCMXPCMessageWithContainerBase *)v10 containerIdentityFromXPCObject:objectCopy context:contextCopy error:error];
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