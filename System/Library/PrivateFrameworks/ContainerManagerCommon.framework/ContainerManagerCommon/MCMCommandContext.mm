@interface MCMCommandContext
+ (id)privileged;
+ (id)privilegedWithUserIdentity:(id)identity userIdentityCache:(id)cache;
- (MCMClientFactory)clientFactory;
- (MCMClientIdentity)clientIdentity;
- (MCMCommandContext)initWithClientIdentity:(id)identity containerCache:(id)cache containerFactory:(id)factory userIdentityCache:(id)identityCache clientFactory:(id)clientFactory kernelPersonaID:(unsigned int)d globalConfiguration:(id)configuration classIterator:(id)self0;
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

- (MCMCommandContext)initWithClientIdentity:(id)identity containerCache:(id)cache containerFactory:(id)factory userIdentityCache:(id)identityCache clientFactory:(id)clientFactory kernelPersonaID:(unsigned int)d globalConfiguration:(id)configuration classIterator:(id)self0
{
  v29 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  cacheCopy = cache;
  factoryCopy = factory;
  identityCacheCopy = identityCache;
  clientFactoryCopy = clientFactory;
  configurationCopy = configuration;
  iteratorCopy = iterator;
  v28.receiver = self;
  v28.super_class = MCMCommandContext;
  v18 = [(MCMCommandContext *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientIdentity, identity);
    objc_storeStrong(&v19->_containerCache, cache);
    objc_storeStrong(&v19->_containerFactory, factory);
    objc_storeStrong(&v19->_userIdentityCache, identityCache);
    objc_storeStrong(&v19->_clientFactory, clientFactory);
    v19->_kernelPersonaID = d;
    objc_storeStrong(&v19->_globalConfiguration, configuration);
    objc_storeStrong(&v19->_classIterator, iterator);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)privilegedWithUserIdentity:(id)identity userIdentityCache:(id)cache
{
  v19 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v6 = [MCMClientIdentity anonymousPrivilegedClientIdentityWithUserIdentity:identity];
  v7 = [MCMContainerFactory alloc];
  v8 = [(MCMContainerFactory *)v7 initWithContainerCache:gContainerCache clientIdentity:v6 userIdentityCache:cacheCopy];
  v9 = [MCMContainerClassIterator alloc];
  v10 = containermanager_copy_global_configuration();
  staticConfig = [v10 staticConfig];
  v12 = [(MCMContainerClassIterator *)v9 initWithStaticConfig:staticConfig userIdentityCache:cacheCopy];

  v13 = [MCMCommandContext alloc];
  v14 = gContainerCache;
  v15 = containermanager_copy_global_configuration();
  v16 = [(MCMCommandContext *)v13 initWithClientIdentity:v6 containerCache:v14 containerFactory:v8 userIdentityCache:cacheCopy clientFactory:0 kernelPersonaID:0 globalConfiguration:v15 classIterator:v12];

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
  v5[4] = self;
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