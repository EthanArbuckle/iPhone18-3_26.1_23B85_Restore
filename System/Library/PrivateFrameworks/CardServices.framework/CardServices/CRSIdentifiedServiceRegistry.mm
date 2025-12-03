@interface CRSIdentifiedServiceRegistry
+ (id)sharedInstance;
- (CRSIdentifiedServiceRegistry)init;
- (void)registerIdentifiedService:(id)service;
@end

@implementation CRSIdentifiedServiceRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CRSIdentifiedServiceRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sRegistry;

  return v2;
}

uint64_t __46__CRSIdentifiedServiceRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sRegistry = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (CRSIdentifiedServiceRegistry)init
{
  v6.receiver = self;
  v6.super_class = CRSIdentifiedServiceRegistry;
  v2 = [(CRSIdentifiedServiceRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
    identifiedServices = v2->_identifiedServices;
    v2->_identifiedServices = v3;
  }

  return v2;
}

- (void)registerIdentifiedService:(id)service
{
  v9 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  if (([(NSMutableOrderedSet *)self->_identifiedServices containsObject:serviceCopy]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_identifiedServices addObject:serviceCopy];
    v5 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = serviceCopy;
      _os_log_impl(&dword_243268000, v5, OS_LOG_TYPE_INFO, "Registered service with CardServices: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end