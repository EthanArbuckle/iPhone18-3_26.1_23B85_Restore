@interface MCMResultQuery
- (BOOL)_compileContainerDataForIndex:(unint64_t)index container:(container_object_s *)container infos:(id)infos tokens:(id)tokens error:(id *)error;
- (BOOL)encodeResultOntoReply:(id)reply;
- (BOOL)extensionsPolicyUsesProxiedClient;
- (BOOL)extensionsUseProxiedClient;
- (BOOL)includeCreator;
- (BOOL)includeInfo;
- (BOOL)includePath;
- (BOOL)includeUserManagedAssetsRelPath;
- (BOOL)issuedAnyExtensions;
- (BOOL)legacyExtensionPolicy;
- (BOOL)legacyPersonaPolicy;
- (MCMClientIdentity)clientIdentity;
- (MCMResultQuery)initWithContainers:(id)containers clientIdentity:(id)identity sandboxExtensionType:(unint64_t)type includePath:(BOOL)path includeInfo:(BOOL)info legacyPersonaPolicy:(BOOL)policy legacyExtensionPolicy:(BOOL)extensionPolicy includeUserManagedAssetsRelPath:(BOOL)self0 includeCreator:(BOOL)self1 extensionsUseProxiedClient:(BOOL)self2 extensionsPolicyUsesProxiedClient:(BOOL)self3 generation:(unint64_t)self4 part:(unint64_t)self5 partDomain:(id)self6;
- (NSArray)containers;
- (NSString)partDomain;
- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity;
- (unint64_t)generation;
- (unint64_t)part;
- (unint64_t)sandboxExtensionType;
- (void)setIssuedAnyExtensions:(BOOL)extensions;
@end

@implementation MCMResultQuery

- (NSArray)containers
{
  result = self->_containers;
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

- (unint64_t)part
{
  result = self->_part;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)partDomain
{
  result = self->_partDomain;
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

- (BOOL)extensionsPolicyUsesProxiedClient
{
  result = self->_extensionsPolicyUsesProxiedClient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)legacyExtensionPolicy
{
  result = self->_legacyExtensionPolicy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)extensionsUseProxiedClient
{
  result = self->_extensionsUseProxiedClient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)sandboxExtensionType
{
  result = self->_sandboxExtensionType;
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

- (BOOL)includeUserManagedAssetsRelPath
{
  result = self->_includeUserManagedAssetsRelPath;
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

- (BOOL)issuedAnyExtensions
{
  result = self->_issuedAnyExtensions;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)generation
{
  result = self->_generation;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setIssuedAnyExtensions:(BOOL)extensions
{
  v4 = *MEMORY[0x1E69E9840];
  self->_issuedAnyExtensions = extensions;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)legacyPersonaPolicy
{
  result = self->_legacyPersonaPolicy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMResultQuery)initWithContainers:(id)containers clientIdentity:(id)identity sandboxExtensionType:(unint64_t)type includePath:(BOOL)path includeInfo:(BOOL)info legacyPersonaPolicy:(BOOL)policy legacyExtensionPolicy:(BOOL)extensionPolicy includeUserManagedAssetsRelPath:(BOOL)self0 includeCreator:(BOOL)self1 extensionsUseProxiedClient:(BOOL)self2 extensionsPolicyUsesProxiedClient:(BOOL)self3 generation:(unint64_t)self4 part:(unint64_t)self5 partDomain:(id)self6
{
  v31 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  identityCopy = identity;
  domainCopy = domain;
  v30.receiver = self;
  v30.super_class = MCMResultQuery;
  v25 = [(MCMResultBase *)&v30 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_containers, containers);
    objc_storeStrong(&v26->_clientIdentity, identity);
    v26->_sandboxExtensionType = type;
    v26->_includePath = path;
    v26->_includeInfo = info;
    v26->_legacyPersonaPolicy = policy;
    v26->_legacyExtensionPolicy = extensionPolicy;
    v26->_includeUserManagedAssetsRelPath = relPath;
    v26->_includeCreator = creator;
    v26->_extensionsUseProxiedClient = client;
    *&v26->_extensionsPolicyUsesProxiedClient = proxiedClient;
    v26->_generation = generation;
    v26->_part = part;
    objc_storeStrong(&v26->_partDomain, domain);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v34.receiver = self;
  v34.super_class = MCMResultQuery;
  v5 = [(MCMResultBase *)&v34 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];
    v7 = error == 0;

    if (v7)
    {
      containers = [(MCMResultQuery *)self containers];
      v9 = [containers count];

      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v11 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
      if ([(MCMResultQuery *)self includeInfo])
      {
        v12 = xpc_array_create(0, 0);
      }

      else
      {
        v12 = 0;
      }

      v13 = xpc_array_create(0, 0);
      if (v9)
      {
        v14 = 0;
        v15 = v11;
        do
        {
          [(MCMResultQuery *)self _compileContainerDataForIndex:v14++ container:v15 infos:v12 tokens:v13 error:0];
          v15 += 8;
        }

        while (v9 != v14);
      }

      if (v12)
      {
        xpc_dictionary_set_value(replyCopy, "ReplyContainerInfos", v12);
      }

      if (v13)
      {
        xpc_dictionary_set_value(replyCopy, "ReplyContainerTokens", v13);
      }

      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      [(MCMResultQuery *)self includePath];
      [(MCMResultQuery *)self includeUserManagedAssetsRelPath];
      [(MCMResultQuery *)self includeCreator];
      v29 = MEMORY[0x1E69E9820];
      v16 = container_frozenset_create();
      v17 = v31[3];
      if (v17)
      {
        v18 = dispatch_data_create(v16, v17, 0, *MEMORY[0x1E69E9660]);
        v19 = xpc_data_create_with_dispatch_data(v18);
        xpc_dictionary_set_value(replyCopy, "ReplyContainerSet", v19);
      }

      container_frozenset_destroy();
      container_free_array_of_containers();
      v20 = [(MCMResultQuery *)self includeInfo:v29];
      includePath = [(MCMResultQuery *)self includePath];
      includeUserManagedAssetsRelPath = [(MCMResultQuery *)self includeUserManagedAssetsRelPath];
      includeCreator = [(MCMResultQuery *)self includeCreator];
      v24 = 2;
      if (!v20)
      {
        v24 = 0;
      }

      v25 = v24 | includePath;
      if (includeUserManagedAssetsRelPath)
      {
        v25 |= 4uLL;
      }

      if (includeCreator)
      {
        v26 = v25 | 0x20;
      }

      else
      {
        v26 = v25;
      }

      if ([(MCMResultQuery *)self issuedAnyExtensions])
      {
        if ([(MCMResultQuery *)self extensionsUseProxiedClient])
        {
          v26 |= 0x10uLL;
        }

        else
        {
          v26 |= 8uLL;
        }
      }

      xpc_dictionary_set_uint64(replyCopy, "ReplyFlags", v26);
      xpc_dictionary_set_uint64(replyCopy, "ReplyGeneration", [(MCMResultQuery *)self generation]);
      _Block_object_dispose(&v30, 8);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

mach_vm_address_t __40__MCMResultQuery_encodeResultOntoReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  address = 0;
  v3 = (a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  v4 = mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, v3, 1);
  if (v4)
  {
    v5 = v4;
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v11 = "[MCMResultQuery encodeResultOntoReply:]_block_invoke";
      v12 = 2048;
      v13 = v3 >> 10;
      v14 = 1024;
      v15 = v5;
      _os_log_fault_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_FAULT, "%s: mach_vm_allocate() failed to allocate %llu KB: %d", buf, 0x1Cu);
    }

    result = 0;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = v3;
    result = address;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity
{
  v16 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  pathCopy = path;
  clientIdentity = [(MCMResultQuery *)self clientIdentity];
  if (![(MCMResultQuery *)self extensionsPolicyUsesProxiedClient])
  {
    proximateClient = [clientIdentity proximateClient];

    clientIdentity = proximateClient;
  }

  v10 = [[MCMSandboxExtension alloc] initWithClientIdentity:clientIdentity containerPath:pathCopy containerIdentity:identityCopy];

  if (v10)
  {
    [(MCMSandboxExtension *)v10 setUseLegacyExtensionPolicy:[(MCMResultQuery *)self legacyExtensionPolicy]];
    [(MCMSandboxExtension *)v10 setUseProxiedClientForTarget:[(MCMResultQuery *)self extensionsUseProxiedClient]];
    [(MCMSandboxExtension *)v10 setType:[(MCMResultQuery *)self sandboxExtensionType]];
    part = [(MCMResultQuery *)self part];
    partDomain = [(MCMResultQuery *)self partDomain];
    v13 = [(MCMSandboxExtension *)v10 tokenForPart:part partDomain:partDomain error:0];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_compileContainerDataForIndex:(unint64_t)index container:(container_object_s *)container infos:(id)infos tokens:(id)tokens error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  tokensCopy = tokens;
  containers = [(MCMResultQuery *)self containers];
  v15 = [containers objectAtIndexedSubscript:index];

  v45 = 0;
  v16 = [v15 createLibsystemContainerWithError:&v45];
  v17 = v45;
  *container = v16;
  if (!v16)
  {
    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v47 = "[MCMResultQuery _compileContainerDataForIndex:container:infos:tokens:error:]";
      v48 = 2112;
      v49 = v17;
      _os_log_fault_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_FAULT, "%s: failed to create container: %@", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v43 = tokensCopy;
  if (infosCopy)
  {
    if (![v15 conformsToProtocol:&unk_1F5A81C70] || (objc_msgSend(v15, "info"), v18 = objc_claimAutoreleasedReturnValue(), v19 = _CFXPCCreateXPCObjectFromCFObject(), v18, !v19))
    {
      v19 = xpc_null_create();
    }

    xpc_array_append_value(infosCopy, v19);
  }

  containerPath = [v15 containerPath];
  part = [(MCMResultQuery *)self part];
  partDomain = [(MCMResultQuery *)self partDomain];
  v44 = v17;
  v23 = [containerPath urlForPart:part partDomain:partDomain error:&v44];
  v24 = v44;

  if (!v23)
  {
    v17 = v24;
    tokensCopy = v43;
    if (!error)
    {
LABEL_29:
      v38 = 0;
      v23 = 0;
      goto LABEL_30;
    }

LABEL_27:
    v40 = v17;
    v38 = 0;
    v23 = 0;
    *error = v17;
LABEL_30:
    v24 = v17;
    goto LABEL_31;
  }

  tokensCopy = v43;
  if (v43)
  {
    containerPath2 = [v15 containerPath];
    containerIdentity = [v15 containerIdentity];
    v27 = [(MCMResultQuery *)self _tokenForContainerPath:containerPath2 containerIdentity:containerIdentity];

    if (!v27 || (-[MCMResultQuery setIssuedAnyExtensions:](self, "setIssuedAnyExtensions:", 1), (v28 = xpc_string_create([v27 UTF8String])) == 0))
    {
      v28 = xpc_null_create();
    }

    v29 = v28;
    xpc_array_append_value(v43, v28);
  }

  v30 = *container;
  [v23 fileSystemRepresentation];
  container_object_set_path();
  if ([v15 conformsToProtocol:&unk_1F5A81C70])
  {
    v31 = v15;
    if ([(MCMResultQuery *)self includeUserManagedAssetsRelPath])
    {
      userManagedAssetsDirName = [v31 userManagedAssetsDirName];
      if (userManagedAssetsDirName)
      {
        v33 = [@"Library" stringByAppendingPathComponent:userManagedAssetsDirName];
        v34 = *container;
        [v33 fileSystemRepresentation];
        tokensCopy = v43;
        container_object_set_user_managed_assets_relative_path();
      }
    }

    if ([(MCMResultQuery *)self includeCreator])
    {
      creator = [v31 creator];
      v36 = creator;
      if (creator)
      {
        v37 = *container;
        [creator UTF8String];
        container_object_set_creator_codesign_identifier();
      }
    }
  }

  v38 = 1;
LABEL_31:

  v41 = *MEMORY[0x1E69E9840];
  return v38;
}

@end