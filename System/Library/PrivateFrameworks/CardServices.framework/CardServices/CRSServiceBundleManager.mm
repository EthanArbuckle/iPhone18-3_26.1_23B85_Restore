@interface CRSServiceBundleManager
@end

@implementation CRSServiceBundleManager

uint64_t __42___CRSServiceBundleManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sServiceBundleManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

void __60___CRSServiceBundleManager_getServiceBundlesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t __60___CRSServiceBundleManager_getServiceBundlesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end