@interface IDSService
@end

@implementation IDSService

void __55__IDSService_MRAdditions__mr_sharedIDSCompanionService__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69A48A8]);
  v3 = *(a1 + 32);
  v6 = [objc_opt_class() mr_companionServiceName];
  v4 = [v2 initWithService:v6];
  v5 = mr_sharedIDSCompanionService___service;
  mr_sharedIDSCompanionService___service = v4;
}

void __46__IDSService_MRAdditions__mr_sharedIDSService__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69A48A8]);
  v3 = *(a1 + 32);
  v6 = [objc_opt_class() mr_serviceName];
  v4 = [v2 initWithService:v6];
  v5 = mr_sharedIDSService___service;
  mr_sharedIDSService___service = v4;
}

@end