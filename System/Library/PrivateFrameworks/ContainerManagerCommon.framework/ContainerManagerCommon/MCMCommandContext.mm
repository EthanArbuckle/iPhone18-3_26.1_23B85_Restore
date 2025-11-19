@interface MCMCommandContext
+ (id)privileged;
+ (id)privilegedWithUserIdentity:(id)a3 userIdentityCache:(id)a4;
- (MCMClientFactory)clientFactory;
- (MCMClientIdentity)clientIdentity;
- (MCMCommandContext)initWithClientIdentity:(id)a3 containerCache:(id)a4 containerFactory:(id)a5 userIdentityCache:(id)a6 clientFactory:(id)a7 kernelPersonaID:(unsigned int)a8 globalConfiguration:(id)a9 classIterator:(id)a10;
- (MCMContainerCache)containerCache;
- (MCMContainerClassUserIdentityIterator)classIterator;
- (MCMContainerFactory)containerFactory;
- (MCMGlobalConfiguration)globalConfiguration;
- (MCMUserIdentityCache)userIdentityCache;
- (unsigned)kernelPersonaID;
@end

@implementation MCMCommandContext

- (unsigned)kernelPersonaID
{
  result = self->_kernelPersonaID;
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

- (MCMGlobalConfiguration)globalConfiguration
{
  result = self->_globalConfiguration;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerFactory)containerFactory
{
  result = self->_containerFactory;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerCache)containerCache
{
  result = self->_containerCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerClassUserIdentityIterator)classIterator
{
  result = self->_classIterator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMClientFactory)clientFactory
{
  result = self->_clientFactory;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMCommandContext)initWithClientIdentity:(id)a3 containerCache:(id)a4 containerFactory:(id)a5 userIdentityCache:(id)a6 clientFactory:(id)a7 kernelPersonaID:(unsigned int)a8 globalConfiguration:(id)a9 classIterator:(id)a10
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v16 = a9;
  v17 = a10;
  v28.receiver = self;
  v28.super_class = MCMCommandContext;
  v18 = [(MCMCommandContext *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientIdentity, a3);
    objc_storeStrong(&v19->_containerCache, a4);
    objc_storeStrong(&v19->_containerFactory, a5);
    objc_storeStrong(&v19->_userIdentityCache, a6);
    objc_storeStrong(&v19->_clientFactory, a7);
    v19->_kernelPersonaID = a8;
    objc_storeStrong(&v19->_globalConfiguration, a9);
    objc_storeStrong(&v19->_classIterator, a10);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)privilegedWithUserIdentity:(id)a3 userIdentityCache:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MCMClientIdentity anonymousPrivilegedClientIdentityWithUserIdentity:a3];
  v7 = [MCMContainerFactory alloc];
  v8 = [(MCMContainerFactory *)v7 initWithContainerCache:gContainerCache clientIdentity:v6 userIdentityCache:v5];
  v9 = [MCMContainerClassIterator alloc];
  v10 = containermanager_copy_global_configuration();
  v11 = [v10 staticConfig];
  v12 = [(MCMContainerClassIterator *)v9 initWithStaticConfig:v11 userIdentityCache:v5];

  v13 = [MCMCommandContext alloc];
  v14 = gContainerCache;
  v15 = containermanager_copy_global_configuration();
  v16 = [(MCMCommandContext *)v13 initWithClientIdentity:v6 containerCache:v14 containerFactory:v8 userIdentityCache:v5 clientFactory:0 kernelPersonaID:0 globalConfiguration:v15 classIterator:v12];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)privileged
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MCMCommandContext_privileged__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a1;
  if (privileged_token != -1)
  {
    dispatch_once(&privileged_token, v5);
  }

  v2 = privileged_privilegedContext;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void __31__MCMCommandContext_privileged__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = +[MCMUserIdentitySharedCache sharedInstance];
  v2 = *(a1 + 32);
  v3 = [v7 defaultUserIdentity];
  v4 = [v2 privilegedWithUserIdentity:v3 userIdentityCache:v7];
  v5 = privileged_privilegedContext;
  privileged_privilegedContext = v4;

  v6 = *MEMORY[0x1E69E9840];
}

@end