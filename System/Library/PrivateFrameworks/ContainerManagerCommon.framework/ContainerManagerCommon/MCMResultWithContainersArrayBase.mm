@interface MCMResultWithContainersArrayBase
- (BOOL)encodeResultOntoReply:(id)a3;
- (BOOL)includeCreator;
- (BOOL)includeInfo;
- (BOOL)includePath;
- (BOOL)includeUserManagedAssetsRelPath;
- (BOOL)skipSandboxExtensions;
- (MCMClientIdentity)clientIdentity;
- (MCMResultWithContainersArrayBase)initWithContainerPaths:(id)a3 containerIdentities:(id)a4 includePath:(BOOL)a5 clientIdentity:(id)a6 skipSandboxExtensions:(BOOL)a7;
- (MCMResultWithContainersArrayBase)initWithContainers:(id)a3 includePath:(BOOL)a4 includeInfo:(BOOL)a5 includeUserManagedAssetsRelPath:(BOOL)a6 includeCreator:(BOOL)a7 clientIdentity:(id)a8 skipSandboxExtensions:(BOOL)a9;
- (NSArray)containerIdentities;
- (NSArray)containerPaths;
- (NSArray)containers;
- (id)_tokenForContainerPath:(id)a3 containerIdentity:(id)a4;
- (void)_encodeContainerIdentitiesAndPathsOnXPCContainers:(id)a3;
- (void)_encodeContainersOnXPCContainers:(id)a3;
@end

@implementation MCMResultWithContainersArrayBase

- (BOOL)skipSandboxExtensions
{
  result = self->_skipSandboxExtensions;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMClientIdentity)clientIdentity
{
  result = self->_clientIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includeCreator
{
  result = self->_includeCreator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includeUserManagedAssetsRelPath
{
  result = self->_includeUserManagedAssetsRelPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includeInfo
{
  result = self->_includeInfo;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includePath
{
  result = self->_includePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)containers
{
  result = self->_containers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)containerIdentities
{
  result = self->_containerIdentities;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)containerPaths
{
  result = self->_containerPaths;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_tokenForContainerPath:(id)a3 containerIdentity:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [MCMSandboxExtension alloc];
  v9 = [(MCMResultWithContainersArrayBase *)self clientIdentity];
  v10 = [(MCMSandboxExtension *)v8 initWithClientIdentity:v9 containerPath:v7 containerIdentity:v6];

  if (v10)
  {
    [(MCMSandboxExtension *)v10 setUseLegacyExtensionPolicy:1];
    [(MCMSandboxExtension *)v10 setUseProxiedClientForTarget:1];
    v11 = [(MCMSandboxExtension *)v10 tokenForPart:0 partDomain:0 error:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_encodeContainerIdentitiesAndPathsOnXPCContainers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  xarray = a3;
  v4 = [(MCMResultWithContainersArrayBase *)self containerIdentities];

  if (v4)
  {
    v5 = [(MCMResultWithContainersArrayBase *)self containerIdentities];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [(MCMResultWithContainersArrayBase *)self containerIdentities];
        v9 = [v8 objectAtIndexedSubscript:v7];

        v10 = [(MCMResultWithContainersArrayBase *)self containerPaths];
        v11 = [v10 objectAtIndexedSubscript:v7];

        v12 = xpc_dictionary_create(0, 0, 0);
        v13 = 0;
        if (![(MCMResultWithContainersArrayBase *)self skipSandboxExtensions])
        {
          v13 = [(MCMResultWithContainersArrayBase *)self _tokenForContainerPath:v11 containerIdentity:v9];
        }

        v14 = [MCMResultWithContainerBase alloc];
        v15 = [v9 uuid];
        v16 = [(MCMResultWithContainerBase *)v14 initWithContainerPath:v11 containerIdentity:v9 uuid:v15 sandboxToken:v13 includePath:[(MCMResultWithContainersArrayBase *)self includePath]];

        [(MCMResultWithContainerBase *)v16 encodeResultOntoReply:v12];
        xpc_array_append_value(xarray, v12);

        ++v7;
        v17 = [(MCMResultWithContainersArrayBase *)self containerIdentities];
        v18 = [v17 count];
      }

      while (v7 < v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_encodeContainersOnXPCContainers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  xarray = a3;
  v4 = [(MCMResultWithContainersArrayBase *)self containers];

  if (v4)
  {
    v5 = [(MCMResultWithContainersArrayBase *)self containers];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [(MCMResultWithContainersArrayBase *)self containers];
        v9 = [v8 objectAtIndexedSubscript:v7];

        v10 = xpc_dictionary_create(0, 0, 0);
        v11 = 0;
        if (![(MCMResultWithContainersArrayBase *)self skipSandboxExtensions])
        {
          v12 = [v9 containerPath];
          v13 = [v9 containerIdentity];
          v11 = [(MCMResultWithContainersArrayBase *)self _tokenForContainerPath:v12 containerIdentity:v13];
        }

        v14 = [[MCMResultWithContainerBase alloc] initWithMetadata:v9 sandboxToken:v11 includePath:[(MCMResultWithContainersArrayBase *)self includePath] includeInfo:[(MCMResultWithContainersArrayBase *)self includeInfo] includeUserManagedAssetsRelPath:[(MCMResultWithContainersArrayBase *)self includeUserManagedAssetsRelPath] includeCreator:[(MCMResultWithContainersArrayBase *)self includeCreator]];
        [(MCMResultWithContainerBase *)v14 encodeResultOntoReply:v10];
        xpc_array_append_value(xarray, v10);

        ++v7;
        v15 = [(MCMResultWithContainersArrayBase *)self containers];
        v16 = [v15 count];
      }

      while (v7 < v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (MCMResultWithContainersArrayBase)initWithContainers:(id)a3 includePath:(BOOL)a4 includeInfo:(BOOL)a5 includeUserManagedAssetsRelPath:(BOOL)a6 includeCreator:(BOOL)a7 clientIdentity:(id)a8 skipSandboxExtensions:(BOOL)a9
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = MCMResultWithContainersArrayBase;
  v18 = [(MCMResultBase *)&v24 init];
  v19 = v18;
  if (v18)
  {
    containerPaths = v18->_containerPaths;
    v18->_containerPaths = 0;

    containerIdentities = v19->_containerIdentities;
    v19->_containerIdentities = 0;

    objc_storeStrong(&v19->_containers, a3);
    v19->_includePath = a4;
    v19->_includeInfo = a5;
    v19->_includeUserManagedAssetsRelPath = a6;
    v19->_includeCreator = a7;
    objc_storeStrong(&v19->_clientIdentity, a8);
    v19->_skipSandboxExtensions = a9;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (MCMResultWithContainersArrayBase)initWithContainerPaths:(id)a3 containerIdentities:(id)a4 includePath:(BOOL)a5 clientIdentity:(id)a6 skipSandboxExtensions:(BOOL)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v21.receiver = self;
  v21.super_class = MCMResultWithContainersArrayBase;
  v16 = [(MCMResultBase *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_containerPaths, a3);
    objc_storeStrong(&v17->_containerIdentities, a4);
    containers = v17->_containers;
    v17->_containers = 0;

    v17->_includePath = a5;
    v17->_includeInfo = 0;
    v17->_includeUserManagedAssetsRelPath = 0;
    v17->_includeCreator = 0;
    objc_storeStrong(&v17->_clientIdentity, a6);
    v17->_skipSandboxExtensions = a7;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MCMResultWithContainersArrayBase;
  v5 = [(MCMResultBase *)&v10 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      v7 = xpc_array_create(0, 0);
      [(MCMResultWithContainersArrayBase *)self _encodeContainersOnXPCContainers:v7];
      [(MCMResultWithContainersArrayBase *)self _encodeContainerIdentitiesAndPathsOnXPCContainers:v7];
      xpc_dictionary_set_value(v4, "ReplyContainersArray", v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

@end