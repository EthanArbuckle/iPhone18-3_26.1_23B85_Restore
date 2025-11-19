@interface CRKIdentifiedProviderRegistry
+ (id)sharedInstance;
- (CRKIdentifiedProviderRegistry)init;
- (void)registerIdentifiedProvider:(id)a3;
@end

@implementation CRKIdentifiedProviderRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CRKIdentifiedProviderRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_sRegistry;

  return v2;
}

uint64_t __47__CRKIdentifiedProviderRegistry_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedInstance_sRegistry;
  sharedInstance_sRegistry = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (CRKIdentifiedProviderRegistry)init
{
  v6.receiver = self;
  v6.super_class = CRKIdentifiedProviderRegistry;
  v2 = [(CRKIdentifiedProviderRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
    identifiedProviders = v2->_identifiedProviders;
    v2->_identifiedProviders = v3;
  }

  return v2;
}

- (void)registerIdentifiedProvider:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(NSMutableOrderedSet *)self->_identifiedProviders containsObject:v4]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_identifiedProviders addObject:v4];
    v5 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_243247000, v5, OS_LOG_TYPE_INFO, "Registered provider with CardKit: %@", &v6, 0xCu);
    }
  }
}

@end