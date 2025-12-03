@interface MCMXPCMessageWithConcreteContainerBase
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (MCMXPCMessageWithConcreteContainerBase)initWithConcreteContainer:(id)container context:(id)context;
- (MCMXPCMessageWithConcreteContainerBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageWithConcreteContainerBase

- (BOOL)includedCreator
{
  result = self->_includedCreator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedUserManagedAssetsPath
{
  result = self->_includedUserManagedAssetsPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedInfo
{
  result = self->_includedInfo;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedPath
{
  result = self->_includedPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMConcreteContainerIdentity)concreteContainerIdentity
{
  result = self->_concreteContainerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)disposition
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMXPCMessageWithConcreteContainerBase;
  disposition = [(MCMXPCMessageBase *)&v7 disposition];
  if (disposition == 1)
  {
    concreteContainerIdentity = [(MCMXPCMessageWithConcreteContainerBase *)self concreteContainerIdentity];
    disposition = [concreteContainerIdentity disposition];
  }

  v5 = *MEMORY[0x1E69E9840];
  return disposition;
}

- (MCMXPCMessageWithConcreteContainerBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v23[0] = 1;
  v22.receiver = self;
  v22.super_class = MCMXPCMessageWithConcreteContainerBase;
  v10 = [(MCMXPCMessageBase *)&v22 initWithXPCObject:objectCopy context:contextCopy error:v23];
  if (v10)
  {
    v11 = xpc_dictionary_get_dictionary(objectCopy, "Container");
    v12 = container_xpc_decode_container_object();
    if (v12)
    {
      v13 = [MCMConcreteContainerIdentityForLibsystem alloc];
      clientIdentity = [contextCopy clientIdentity];
      userIdentity = [clientIdentity userIdentity];
      userIdentityCache = [contextCopy userIdentityCache];
      v17 = [(MCMConcreteContainerIdentityForLibsystem *)v13 initWithLibsystemContainer:v12 defaultUserIdentity:userIdentity userIdentityCache:userIdentityCache error:v23];
      concreteContainerIdentity = v10->_concreteContainerIdentity;
      v10->_concreteContainerIdentity = v17;

      if (v10->_concreteContainerIdentity)
      {
        v10->_includedPath = container_get_path() != 0;
        v19 = container_get_info();
        v10->_includedInfo = v19 != 0;

        v10->_includedUserManagedAssetsPath = container_get_user_managed_assets_relative_path() != 0;
        v10->_includedCreator = container_get_creator_codesign_identifier() != 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v23[0] != 1)
  {

    v10 = 0;
    if (error)
    {
      *error = v23[0];
    }
  }

  MEMORY[0x1E12D3190](v12);

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MCMXPCMessageWithConcreteContainerBase)initWithConcreteContainer:(id)container context:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageWithConcreteContainerBase;
  v8 = [(MCMXPCMessageBase *)&v12 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_concreteContainerIdentity, container);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end