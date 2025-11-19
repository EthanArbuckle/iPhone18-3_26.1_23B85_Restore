@interface CRKProviderBundleManager
@end

@implementation CRKProviderBundleManager

uint64_t __43___CRKProviderBundleManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sProviderBundleManager;
  sharedInstance_sProviderBundleManager = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

void __62___CRKProviderBundleManager_getProviderBundlesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v5)
    {
      (*(v6 + 16))(v6, 0, v5);
    }

    else
    {
      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
      v8 = [v9 filteredSetUsingPredicate:v7];

      (*(*(a1 + 32) + 16))();
    }
  }
}

uint64_t __62___CRKProviderBundleManager_getProviderBundlesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end