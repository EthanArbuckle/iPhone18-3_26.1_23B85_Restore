@interface BMResourceContainerManager
+ (id)sharedInstance;
- (BMResourceContainerManager)init;
- (id)_enforceCurrentPersonaIsUserPersona:(id *)persona;
- (id)_standardDataVaultContainerForResource:(id)resource;
- (id)descriptorsFromConfigurationForSetResource:(id)resource;
- (id)openContainerForResource:(id)resource mode:(unint64_t)mode error:(id *)error;
- (id)syncPolicyFromConfigurationForSetResource:(id)resource;
- (unint64_t)serviceDomainFromConfigurationForSetResource:(id)resource;
@end

@implementation BMResourceContainerManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[BMResourceContainerManager sharedInstance];
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __44__BMResourceContainerManager_sharedInstance__block_invoke()
{
  sharedInstance_manager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BMResourceContainerManager)init
{
  v3.receiver = self;
  v3.super_class = BMResourceContainerManager;
  return [(BMResourceContainerManager *)&v3 init];
}

- (id)openContainerForResource:(id)resource mode:(unint64_t)mode error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  v9 = +[BMPersonaUtilities currentPersonaIdentifierLoggingDescription];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = BMAccessModePrintableDescription(mode);
    if (v9)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" current persona: %@", v9];
    }

    else
    {
      v13 = &stru_1F20E2850;
    }

    *buf = 138413058;
    v25 = v11;
    v26 = 2112;
    v27 = resourceCopy;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_DEFAULT, "%@ received container request for resource: %@ with access mode: %@%@", buf, 0x2Au);
    if (v9)
    {
    }
  }

  v14 = [(BMResourceContainerManager *)self routeContainerRequestForResource:resourceCopy mode:mode];
  v15 = __biome_log_for_category(6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = BMResourceContainerTypeDescription(v14);
    *buf = 138412546;
    v25 = v16;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_1AC15D000, v15, OS_LOG_TYPE_DEFAULT, "%@ routing request to %@ container", buf, 0x16u);
  }

  switch(v14)
  {
    case 3:
      v19 = [(BMResourceContainerManager *)self _userVaultContainerForCurrentPersona:error];
      goto LABEL_16;
    case 2:
      v19 = [(BMResourceContainerManager *)self _vanillaContainerForCurrentPersona:error];
      goto LABEL_16;
    case 1:
      v19 = [(BMResourceContainerManager *)self _standardDataVaultContainerForResource:resourceCopy];
LABEL_16:
      v20 = v19;
      goto LABEL_17;
  }

  if (error)
  {
    v23 = __biome_log_for_category(6);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [BMResourceContainerManager openContainerForResource:v14 mode:? error:?];
    }

    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMAccessErrorDomain" code:10 userInfo:0];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_17:

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_standardDataVaultContainerForResource:(id)resource
{
  v3 = BMServiceDomainForResource(resource);
  v4 = MEMORY[0x1E695DFF8];
  v5 = [BMPaths biomeDirectoryForDomain:v3];
  v6 = [v4 fileURLWithPath:v5];

  v7 = [[BMResourceContainer alloc] initWithURL:v6];

  return v7;
}

- (id)_enforceCurrentPersonaIsUserPersona:(id *)persona
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = +[BMPersonaUtilities currentPersonaIdentifier];
  if ([BMPersonaUtilities isUserPersonaIdentifier:v4])
  {
    v5 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = +[BMPersonaUtilities currentPersonaIdentifierLoggingDescription];
    v8 = [v6 stringWithFormat:@"Cannot lookup persona-based container with non-user persona: %@", v7];

    v9 = __biome_log_for_category(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMResourceContainerManager _enforceCurrentPersonaIsUserPersona:];
    }

    if (persona)
    {
      v10 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A278];
      v15[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *persona = [v10 errorWithDomain:@"BMAccessErrorDomain" code:10 userInfo:v11];
    }

    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)descriptorsFromConfigurationForSetResource:(id)resource
{
  name = [resource name];
  v4 = BMResourceDescriptorsLookupFromConfigurationForSet(name);

  return v4;
}

- (id)syncPolicyFromConfigurationForSetResource:(id)resource
{
  name = [resource name];
  v4 = BMResourceSyncPolicyLookupFromConfigurationForSet(name);

  return v4;
}

- (unint64_t)serviceDomainFromConfigurationForSetResource:(id)resource
{
  name = [resource name];
  v4 = BMServiceDomainLookupFromConfigurationForSet(name);

  return v4;
}

- (void)openContainerForResource:(uint64_t)a1 mode:(unsigned __int8)a2 error:.cold.1(uint64_t a1, unsigned __int8 a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v11 = BMResourceContainerTypeDescription(a2);
  OUTLINED_FUNCTION_0_2(&dword_1AC15D000, v4, v5, "%@ Unexpected route: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_enforceCurrentPersonaIsUserPersona:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_2(&dword_1AC15D000, v1, v2, "%@ %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

@end