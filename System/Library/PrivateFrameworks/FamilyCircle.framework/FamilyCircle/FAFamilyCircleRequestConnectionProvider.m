@interface FAFamilyCircleRequestConnectionProvider
@end

@implementation FAFamilyCircleRequestConnectionProvider

uint64_t __58___FAFamilyCircleRequestConnectionProvider_sharedInstance__block_invoke()
{
  sharedInstance_sProvider = objc_alloc_init(_FAFamilyCircleRequestConnectionProvider);

  return MEMORY[0x1EEE66BB8]();
}

void __88___FAFamilyCircleRequestConnectionProvider_createResumedConnectionWithFactory_provider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained connectionWasInterrupted:*(*(*(a1 + 32) + 8) + 40)];
}

void __88___FAFamilyCircleRequestConnectionProvider_createResumedConnectionWithFactory_provider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained connectionWasInvalidated:*(*(*(a1 + 32) + 8) + 40)];
}

@end